#!/usr/bin/env python

"""
Author: Patrick Hansen
Project: FixyNN

Contains FixyVerilogGenerator class definition
"""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import argparse
import numpy as np
import os

from graph import *
from template_reader import *

MODULES_DIRECTORY = os.path.join(os.path.dirname(__file__), "modules/")

def saturate(x, nint, nfrac):
    """Clip a value to the range of representable fixed-point values"""
    nbits = nint + nfrac
    max_val = (2 ** (nbits - 1) - 1) / float(2 ** nfrac)
    min_val = - (2 ** (nbits - 1)) / float(2 ** nfrac)
    x_sat = np.clip(x, min_val, max_val)
    return x_sat

def float_to_fixed(x, nint, nfrac):
    """Map a floating-point number to the nearest fixed-point number"""
    x_sat = saturate(x, nint, nfrac)
    x_fixed = int(round(x * (2 ** nfrac)))
    return x_fixed


class VerilogGenerator():

    def __init__(self, name, data_format, output_dir, input_layer, output_layer):
        self.name = name
        self.output_dir = output_dir

        self.a_nint = data_format["a_nint"]
        self.w_nint = data_format["w_nint"]
        self.b_nint = data_format["b_nint"]
        self.a_nfrac = data_format["a_nfrac"]
        self.w_nfrac = data_format["w_nfrac"]
        self.b_nfrac = data_format["b_nfrac"]
        self.a_nbits = self.a_nint + self.a_nfrac
        self.w_nbits = self.w_nint + self.w_nfrac
        self.b_nbits = self.b_nint + self.b_nfrac
        self.accumulator_nbits = 32

        self.modules = []

        # Names of current signals
        self.layer_act_signal_name = None
        self.main_act_signal_name = None
        self.main_valid_signal_name = None

        self.main_module_filepath = os.path.join(self.output_dir, "top.sv")
        self.__gen_main_module_header(input_layer, output_layer)
    
    def __gen_layer_module_header(self, f, module_name, num_inputs, num_outputs):
        variable_map = [
            ("MODULE_NAME", module_name),
            ("INPUT_ACT_NBITS", num_inputs * self.a_nbits),
            ("OUTPUT_ACT_NBITS", num_outputs * self.a_nbits),
        ]
        lines = read_and_fill_template(LAYER_MODULE_HEADER_TEMPLATE, variable_map)
        f.writelines(lines)
        self.layer_act_signal_name = "input_act_ff"
        
    def __gen_input_fmap_signals(self, f, num_input_fmaps, num_inputs_per_fmap):
        """Write verilog to create feature map signals for 2D layers"""
        num_bits_per_input_fmap = num_inputs_per_fmap * self.a_nbits

        for cur_input_fmap in range(num_input_fmaps):
            input_fmap_name = "input_fmap_%d" % cur_input_fmap
            input_act_idx_low = num_bits_per_input_fmap * cur_input_fmap
            input_act_idx_high = input_act_idx_low + num_bits_per_input_fmap
            f.write("logic [%d:0] %s;\n" % (num_bits_per_input_fmap-1, input_fmap_name))
            f.write("assign %s = %s[%d:%d];\n" % (input_fmap_name, self.layer_act_signal_name,
                                                input_act_idx_high-1, input_act_idx_low))
        f.write("\n")

        self.layer_act_signal_name = "input_fmap"

    def __gen_dense_mac_array(self, f, weights):
        """Write verilog to create an array of MAC units for a dense layer"""
        num_inputs = weights.shape[0]
        num_outputs = weights.shape[1]

        for cur_output in range(num_outputs):
            output_name = "dense_mac_{}".format(cur_output)
            f.write("logic signed [%d:0] %s;\n" % (self.accumulator_nbits-1, output_name))
            f.write("assign %s = \n" % output_name)
            assigned = False
            for cur_input in range(num_inputs):
                weight = float_to_fixed(weights[cur_input, cur_output],
                            self.w_nint, self.w_nfrac)
                if weight == 0:
                    continue
                elif weight < 0:
                    sign = "-"
                else:
                    sign = " "
                weight_nbits = abs(weight).bit_length() + 1
                input_act_idx_low = cur_input * self.a_nbits
                input_act_idx_high = input_act_idx_low + self.a_nbits
                f.write("\t%s%d'sd %d * $signed(%s[%d:%d]) +\n" % (
                        sign, weight_nbits, abs(weight), self.layer_act_signal_name, 
                        input_act_idx_high-1, input_act_idx_low))
                assigned = True
            f.seek(-3, 1) # Format end of mac
            if not assigned:
                f.write("= %d'sd 0" % self.accumulator_nbits)
            f.write(";\n\n")

        self.layer_act_signal_name = "dense_mac"

    def __gen_conv2d_mac_array(self, f, weights):
        """Write verilog to implement a traditional convolution"""
        num_rows = weights.shape[0]
        num_cols = weights.shape[1]
        num_fmaps = weights.shape[2]
        num_outputs = weights.shape[3]

        for cur_output in range(num_outputs):
            output_name = "conv_mac_%s" % cur_output
            f.write("logic signed [%d:0] %s;\n" % (self.accumulator_nbits-1, output_name))
            f.write("assign %s = \n" % output_name)
            assigned = False
            for cur_fmap in range(num_fmaps):
                input_name = "%s_%d" % (self.layer_act_signal_name, cur_fmap)
                for cur_row in range(num_rows):
                    for cur_col in range(num_cols):
                        weight = float_to_fixed(
                                weights[cur_row, cur_col, cur_fmap, cur_output],
                                self.w_nint, self.w_nfrac) # TODO: clean
                        if weight == 0:
                            continue
                        elif weight < 0:
                            sign = "-"
                        else:
                            sign = " "
                        weight_nbits = abs(weight).bit_length() + 1
                        fmap_idx_low = (cur_row*num_cols + cur_col) * self.a_nbits
                        fmap_idx_high = fmap_idx_low + self.a_nbits
                        f.write("\t%s%d'sd %d * $signed(%s[%d:%d]) +\n" % (
                                sign, weight_nbits, abs(weight), input_name,
                                fmap_idx_high-1, fmap_idx_low))
                        assigned = True
            f.seek(-3, 1) # Format end of mac
            if not assigned:
                f.write("= %d'sd 0" % self.accumulator_nbits)
            f.write(";\n\n")
        
        self.layer_act_signal_name = "conv_mac"

    def __gen_depthwise_conv2d_mac_array(self, f, weights):
        """Write verilog to implement a depthwise convolution"""
        num_rows = weights.shape[0]
        num_cols = weights.shape[1]
        num_fmaps = weights.shape[2]

        for cur_fmap in range(num_fmaps):
            input_name = "%s_%d" % (self.layer_act_signal_name, cur_fmap)
            output_name = "dw_conv_mac_%d" % cur_fmap
            f.write("logic signed [%d:0] %s;\n" % (self.accumulator_nbits-1, output_name))
            f.write("assign %s = \n" % output_name)
            assigned = False
            for cur_row in range(num_rows):
                for cur_col in range(num_cols):
                    weight = float_to_fixed(weights[cur_row, cur_col, cur_fmap],
                            self.w_nint, self.w_nfrac)
                    if weight == 0:
                        continue
                    elif weight < 0:
                        sign = "-"
                    else:
                        sign = " "
                    weight_nbits = abs(weight).bit_length() + 1
                    fmap_idx_low = (cur_row*num_cols + cur_col) * self.a_nbits
                    fmap_idx_high = fmap_idx_low + self.a_nbits
                    f.write("\t%s%d'sd %d * $signed(%s[%d:%d]) +\n" % (
                            sign, weight_nbits, abs(weight), input_name,
                            fmap_idx_high-1, fmap_idx_low))
                    assigned = True
            f.seek(-3, 1) # Format end of mac
            if not assigned:
                self.f.write("= %d'sd 0" % self.accumulator_nbits)
            f.write(";\n\n")

        self.layer_act_signal_name = "dw_conv_mac"

    def __gen_bias_add_array(self, f, biases):
        """Generate an array of bias additions for a layer module"""
        num_outputs = biases.shape[0]

        for cur_output in range(num_outputs):
            input_name = "%s_%d" % (self.layer_act_signal_name, cur_output)
            output_name = "bias_add_%d" % cur_output
            f.write("logic [%d:0] %s;\n" % (self.accumulator_nbits-1, output_name))
            f.write("assign %s = %s" % (output_name, input_name))
            bias = float_to_fixed(biases[cur_output], self.b_nint, self.b_nfrac) \
                    * (1 << self.a_nfrac)
            bias_nbits = abs(bias).bit_length() + 1
            if bias == 0:
                f.write(";\n")
            elif bias < 0:
                f.write(" - %d'd%d;\n" % (bias_nbits, abs(bias)))
            else:
                f.write(" + %d'd%d;\n" % (bias_nbits, abs(bias)))
        f.write("\n")

        self.layer_act_signal_name = "bias_add"

    def __gen_batch_norm_array():
        pass # TODO

    def __gen_relu_array(self, f, num_outputs):
        """Generate an array of ReLU operations for a layer module"""
        input_idx_low = self.w_nfrac
        input_idx_high = input_idx_low + self.a_nbits - 1

        for cur_output in range(num_outputs):
            input_name = "%s_%d" % (self.layer_act_signal_name, cur_output)
            output_name = "relu_%d" % (cur_output)
            f.write("logic [%d:0] %s;\n" % (self.a_nbits-1, output_name))
            f.write("assign %s[%d:0] = (%s[%d]==0) ? {{%s[%d],%s[%d:%d]}} : '0;\n" % (
                    output_name, self.a_nbits-1,
                    input_name, self.accumulator_nbits-1,
                    input_name, self.accumulator_nbits-1,
                    input_name, input_idx_high-1, input_idx_low))
        f.write("\n")

        self.layer_act_signal_name = "relu"

    def __gen_layer_module_output(self, f, num_outputs):
        """Write verilog to generate the output signal for a layer module"""
        f.write("assign output_act = {\n")
        for cur_output in reversed(range(num_outputs)):
            input_name = "%s_%d" % (self.layer_act_signal_name, cur_output)
            f.write("\t%s,\n" % (input_name))
        f.seek(-2, 1)
        f.write("\n};\n\n")
        f.write("endmodule\n")

    def __gen_main_module_header(self, input_layer, output_layer):
        if input_layer.op_type in LAYER_TYPES_2D:
            num_input_fmaps = input_layer.input_shapes[0][-1]
            num_inputs_per_fmap = np.prod(input_layer.kernel_size)
            num_inputs = num_input_fmaps * num_inputs_per_fmap
        else:
            num_inputs = input_layer.input_shapes[0][-1]
        num_outputs = output_layer.output_shape[-1]

        variable_map = [
            ("MODULE_NAME", self.name),
            ("INPUT_ACT_NBITS", num_inputs * self.a_nbits),
            ("OUTPUT_ACT_NBITS", num_outputs * self.a_nbits),
        ]
        lines = read_and_fill_template(LAYER_MODULE_HEADER_TEMPLATE, variable_map)
        with open(self.main_module_filepath, "w") as f:
            f.writelines(lines)        
        self.main_act_signal_name = "input_act_ff"
        self.main_valid_signal_name = "valid_ff"

    def __gen_main_module_output_signals(self):
        variable_map = [
            ("OUTPUT_ACT_NAME", self.main_act_signal_name),
            ("OUTPUT_VALID_NAME", self.main_valid_signal_name),
        ]
        lines = read_and_fill_template(MAIN_MODULE_OUTPUT_TEMPLATE, variable_map)
        with open(self.main_module_filepath, "a") as f:
            f.writelines(lines)        

    def __gen_buffer_instance(self, layer):
        num_input_fmaps = layer.input_shapes[0][-1]
        num_inputs_per_fmap = np.prod(layer.kernel_size)
        num_inputs = num_input_fmaps * num_inputs_per_fmap
        output_act_name = "%s_buf_act" % layer.name
        output_valid_name = "%s_buf_valid" % layer.name
        variable_map = [
            ("MODULE_NAME", layer.name),
            ("INPUT_VALID_NAME", self.main_valid_signal_name),
            ("INPUT_ACT_NAME", self.main_act_signal_name),
            ("OUTPUT_VALID_NAME", output_valid_name),
            ("OUTPUT_ACT_NAME", output_act_name),
            ("OUTPUT_ACT_NBITS", num_inputs * self.a_nbits),
            ("KERNEL_SIZE", layer.kernel_size[0]),
            ("ACT_NBITS", self.a_nbits),
            ("NUM_INPUT_FMAPS", layer.input_shapes[0][-1]),
            ("STRIDES", layer.strides[0]),
            ("NUM_WORDS", layer.input_shapes[0][1]),
            ("ADDRESS_WIDTH", layer.input_shapes[0][1].bit_length())
        ]

        lines = read_and_fill_template(BUFFER_INSTANCE_TEMPLATE, variable_map)
        with open(self.main_module_filepath, "a") as f:
            f.writelines(lines)

        self.main_act_signal_name = output_act_name
        self.main_valid_signal_name = output_valid_name

    def __gen_layer_instance(self, layer):
        output_act_name = "%s_act" % layer.name
        output_valid_name = "%s_valid" % layer.name 
        variable_map = [
            ("MODULE_NAME", layer.name),
            ("INPUT_ACT_NAME", self.main_act_signal_name),
            ("INPUT_VALID_NAME", self.main_valid_signal_name),
            ("OUTPUT_ACT_NAME", output_act_name),
            ("OUTPUT_VALID_NAME", output_valid_name),
            ("OUTPUT_ACT_NBITS", layer.output_shape[-1] * self.a_nbits)
        ]

        if layer.op_type in LAYER_TYPES_TRAINABLE:
            lines = read_and_fill_template(TRAINABLE_LAYER_INSTANCE_TEMPLATE, variable_map)
        elif layer.op_type in [MAX_POOL_2D, AVG_POOL_2D]:
            variable_map += [
                ("OP_TYPE", layer.op_type),
                ("ACT_NBITS", self.a_nbits),
                ("NUM_INPUT_FMAPS", layer.input_shapes[0][-1]),
                ("KERNEL_SIZE", layer.kernel_size[0])
            ]
            lines = read_and_fill_template(POOLING_LAYER_INSTANCE_TEMPLATE, variable_map)
        elif layer.op_type == FLATTEN:
            lines = [""]
            pass # TODO

        with open(self.main_module_filepath, "a") as f:
            f.writelines(lines)
        self.main_act_signal_name = output_act_name
        self.main_valid_signal_name = output_valid_name

    def __gen_layer_module(self, layer):
        if layer.op_type in LAYER_TYPES_2D:
            num_input_fmaps = layer.input_shapes[0][-1]
            num_inputs_per_fmap = np.prod(layer.kernel_size)
            num_inputs = num_input_fmaps * num_inputs_per_fmap
        else:
            num_inputs = layer.input_shapes[0][-1]
        num_outputs = layer.output_shape[-1]

        module_filepath = os.path.join(self.output_dir, "%s.sv" % layer.name)
        with open(module_filepath, "w") as f:
            self.__gen_layer_module_header(f, layer.name, num_inputs, num_outputs)

            if layer.op_type in LAYER_TYPES_2D:
                self.__gen_input_fmap_signals(f, num_input_fmaps, num_inputs_per_fmap)

            if layer.op_type == DENSE:
                self.__gen_dense_mac_array(f, layer.weights)
            elif layer.op_type == CONV_2D:
                self.__gen_conv2d_mac_array(f, layer.weights)
            elif layer.op_type == DEPTHWISE_CONV_2D:
                self.__gen_depthwise_conv2d_mac_array(f, layer.weights)
            elif layer.op_type == DEPTHWISE_SEPARABLE_CONV_2D:
                self.__gen_depthwise_conv2d_mac_array(f, layer.weights[0])
                self.__gen_conv2d_mac_array(f, layer.weights[1])

            if layer.has_relu:
                self.__gen_relu_array(f, num_outputs)

            self.__gen_layer_module_output(f, num_outputs)

    def __copy_module(self, module):
        module_filename = "%s.sv" % module
        module_filepath = os.path.join(MODULES_DIRECTORY, module_filename)
        with open(module_filepath, "r") as f:
            lines = f.readlines()
        new_module_filepath = os.path.join(self.output_dir, module_filename)
        with open(new_module_filepath, "w") as f:
            f.writelines(lines)
        self.modules.append(module)

    def add_layer(self, layer):
        if layer.op_type in LAYER_TYPES_TRAINABLE:
            self.__gen_layer_module(layer)
        elif layer.op_type not in self.modules:
            self.__copy_module(layer.op_type)

        if layer.op_type in LAYER_TYPES_2D:
            if "buffer_main" not in self.modules:
                self.__copy_module("buffer_main")
                self.__copy_module("line_buffer_array")
                self.__copy_module("line_buffer_controller")
                self.__copy_module("sram_array")
                self.__copy_module("sram_controller")
            self.__gen_buffer_instance(layer)
        self.__gen_layer_instance(layer)

    def close(self):
        self.__gen_main_module_output_signals()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--model_name", type=str, required=True)
    parser.add_argument("--meta_filepath", type=str, required=True)
    parser.add_argument("--checkpoint_filepath", type=str, required=True)
    parser.add_argument("--endpoints_filepath", type=str, required=True)
    parser.add_argument("--data_format_filepath", type=str, required=True)
    parser.add_argument("--output_directory", type=str, required=True)
    FLAGS = parser.parse_args()

    graph = parse_tf_graph(FLAGS.model_name, FLAGS.endpoints_filepath,
                           FLAGS.meta_filepath, FLAGS.checkpoint_filepath,
                           only_2d=True)
    with open(FLAGS.data_format_filepath, "r") as f:
        data_format = json.load(f)

    layer = graph.get_input_layer()
    output_layer = graph.get_output_layer()
    vgen = VerilogGenerator(graph.name, data_format, FLAGS.output_directory,
                            input_layer=layer, output_layer=output_layer)
    while layer:
        vgen.add_layer(layer)
        layer = graph.get_next_layer(layer)
    vgen.close()
    
