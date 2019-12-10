#!/usr/bin/env python

"""
Author: Patrick Hansen
Project: FixyNN
"""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import argparse
import numpy as np

from graph import *

"""
Units:
    area = mm^2
    power = W
    energy = nJ
    frequency = MHz
    latency = us
"""

class PPAModeler():
	def __init__(self, data_format):
					self.a_nbits = data_format["a_nint"] + data_format["a_nfrac"]
					self.w_nbits = data_format["w_nint"] + data_format["w_nfrac"]
					self.w_nfrac =  data_format["w_nfrac"]
					
					self.fixed_base_mult_area = 2.05E-07
					self.fixed_base_sram_area = 1.62E-06
					self.fixed_base_reg_area = 1.62E-06
					self.fixed_base_mult_power = 5.79E-08
					self.fixed_base_sram_power = 4.00E-07
					self.fixed_base_reg_power = 4.00E-07
					self.fixed_frequency_MHz = 810
					
					self.prog_area = 3.3
					self.prog_power = 0.891
					self.prog_tops = 4
					self.prog_tops_w = self.prog_tops / self.prog_power
					self.dram_energy = 1.20E-10 * 10**9 # per byte read/write
					
					self.num_fixed_layers = 0
					self.fixed_layer_names = []
					self.fixed_layer_num_ops = []
					self.fixed_layer_num_input_act = []
					self.fixed_layer_num_output_act = []
					self.fixed_layer_num_weights = []
					self.fixed_layer_num_nonzero = []
					self.fixed_layer_mac_area = []
					self.fixed_layer_sram_area = []
					self.fixed_layer_reg_area = []
					self.fixed_layer_mac_power = []
					self.fixed_layer_sram_power = []
					self.fixed_layer_reg_power = []
					self.fixed_layer_cycles = []
					
					self.num_prog_layers = 0
					self.prog_layer_names = []
					self.prog_layer_num_ops = []
					self.prog_layer_num_input_act = []
					self.prog_layer_num_output_act = []
					self.prog_layer_num_weights = []
					self.prog_layer_num_nonzero = []
					self.prog_layer_latency = []
	
	def __get_num_weights(self, layer):
			if layer.op_type == DEPTHWISE_SEPARABLE_CONV_2D:
					return np.prod(layer.weights[0].shape) + np.prod(layer.weights[1].shape)
			elif layer.op_type in LAYER_TYPES_TRAINABLE:
					return np.prod(layer.weights.shape)
			else:
					return 0
	
	def __get_num_nonzero_weights(self, layer):
					# temp = []
	
					if layer.op_type == DEPTHWISE_SEPARABLE_CONV_2D:
							fixed_wts = np.round(layer.weights* (2**self.w_nfrac)).astype('int')
							# if(layer.name == 'conv13_pw'):
									# for i in xrange (0,127):
											# temp.append(np.size(np.where( fixed_wts[0,0,:,i] > 0 )))
									
							return np.count_nonzero(fixed_wts[0]) + np.count_nonzero(fixed_wts[1])
					elif layer.op_type in LAYER_TYPES_TRAINABLE:
							fixed_wts = np.round(layer.weights* (2**self.w_nfrac)).astype('int')
							# if(layer.name == 'conv13_pw'):
									# for i in xrange (0,127):
											# temp.append(np.size(np.where( fixed_wts[0,0,:,i] > 0 )))
									
							return np.count_nonzero(fixed_wts)
					else:
							return 0
	
	def __get_num_input_pixels(self, layer):
			if layer.op_type in LAYER_TYPES_2D or layer.op_type == FLATTEN:
					return layer.input_shapes[0][1] * layer.input_shapes[0][2]
			else:
					return None
	
	def __get_num_ops(self, layer):
			if layer.op_type == DENSE:
					return 2 * self.__get_num_weights(layer)
			elif layer.op_type in LAYER_TYPES_TRAINABLE:
					
	
					return 2 * self.__get_num_weights(layer) * self.__get_num_input_pixels(layer)
			else:
					return 0
	
	def add_fixed_layer(self, layer):
			# Model MAC array
			if layer.op_type in LAYER_TYPES_TRAINABLE:
					mac_bits = self.__get_num_nonzero_weights(layer) * self.a_nbits * self.w_nbits
					mac_area = mac_bits * self.fixed_base_mult_area
					mac_power = mac_bits * self.fixed_base_mult_power
			else:
					mac_area = mac_power = 0
	
			# Model line-buffer
			if layer.op_type in LAYER_TYPES_2D:
					sram_size_x = layer.input_shapes[0][1] * layer.kernel_size[0]
					sram_size_y = layer.kernel_size[1]
					num_sram_bits = sram_size_x * sram_size_y * self.a_nbits
					sram_area = num_sram_bits * self.fixed_base_sram_area
					sram_power = num_sram_bits * self.fixed_base_sram_power
	
					num_input_fmaps = layer.input_shapes[0][3]
					num_inputs_per_fmap = np.prod(layer.kernel_size)
					num_inputs = num_input_fmaps * num_inputs_per_fmap
					reg_buf_bits = num_inputs * self.a_nbits
					reg_area = reg_buf_bits * self.fixed_base_reg_area
					reg_power = reg_buf_bits * self.fixed_base_reg_power
	
					num_cycles = self.__get_num_input_pixels(layer)
			else:
					sram_area = sram_power = reg_area = reg_power = 0
					num_cycles = 1
	
			self.num_fixed_layers += 1
			self.fixed_layer_names.append(layer.name)
			self.fixed_layer_num_ops.append(self.__get_num_ops(layer))
			self.fixed_layer_num_input_act.append(np.prod(layer.input_shapes[0][1:]))
			self.fixed_layer_num_output_act.append(np.prod(layer.output_shape[1:]))
			self.fixed_layer_num_weights.append(self.__get_num_weights(layer))
			self.fixed_layer_num_nonzero.append(self.__get_num_nonzero_weights(layer))
			self.fixed_layer_mac_area.append(mac_area)
			self.fixed_layer_sram_area.append(sram_area)
			self.fixed_layer_reg_area.append(reg_area)
			self.fixed_layer_mac_power.append(mac_power)
			self.fixed_layer_sram_power.append(sram_power)
			self.fixed_layer_reg_power.append(reg_power)
			self.fixed_layer_cycles.append(num_cycles)
	
	def add_prog_layer(self, layer):
			if layer.op_type in LAYER_TYPES_TRAINABLE:
					latency = self.__get_num_ops(layer) / self.prog_tops * 1e-6
			else:
					latency = 0
	
			self.num_prog_layers += 1
			self.prog_layer_names.append(layer.name)
			self.fixed_layer_num_ops.append(self.__get_num_ops(layer))
			self.fixed_layer_num_input_act.append(np.prod(layer.input_shapes[0][1:]))
			self.fixed_layer_num_output_act.append(np.prod(layer.output_shape[1:]))
			self.fixed_layer_num_weights.append(self.__get_num_weights(layer))
			self.fixed_layer_num_nonzero.append(self.__get_num_nonzero_weights(layer))
			self.prog_layer_latency.append(latency)
	
	def print(self, verbose=False):
			def print_ppa(string):
					print("PPA MODEL: %s" % string)
	
			if verbose:
					for i in range(self.num_fixed_layers):
													print_ppa("Fixed layer: %s" % self.fixed_layer_names[i])
													print_ppa("Num ops: %d" % self.fixed_layer_num_ops[i])
													print_ppa("Num input act: %d" % self.fixed_layer_num_input_act[i])
													print_ppa("Num output act: %d" % self.fixed_layer_num_output_act[i])
													print_ppa("Num weights: %d" % self.fixed_layer_num_weights[i])
													print_ppa("Num nonzero weights: %d" % self.fixed_layer_num_nonzero[i])
													print_ppa("MAC area: {:.3f}".format(self.fixed_layer_mac_area[i]))
													print_ppa("SRAM area: {:.3f}".format(self.fixed_layer_sram_area[i]))
													print_ppa("Register area: {:.3f}".format(self.fixed_layer_reg_area[i]))
													print_ppa("MAC power: {:.3f}".format(self.fixed_layer_mac_power[i]))
													print_ppa("SRAM power: {:.3f}".format(self.fixed_layer_sram_power[i]))
													print_ppa("Register power: {:.3f}".format(self.fixed_layer_reg_power[i]))
													print_ppa("cycles: %d\n" % self.fixed_layer_cycles[i])
													print_ppa("layer: %s, sparsity: %.2f" % (self.fixed_layer_names[i],1-(self.fixed_layer_num_nonzero[i]/(self.fixed_layer_num_weights[i]+0.000000000001))))
	
					for i in range(self.num_prog_layers):
							print_ppa("Programmable layer: %s" % self.prog_layer_names[i])
							print_ppa("Num ops: %d" % self.prog_layer_num_ops[i])
							print_ppa("Num input act: %d" % self.prog_layer_num_ops[i])
							print_ppa("Num output act: %d" % self.prog_layer_num_input_act[i])
							print_ppa("Num weights: %d" % self.prog_layer_num_output_act[i])
							print_ppa("Num nonzero weights: %d" % self.prog_layer_num_nonzero[i])
							print_ppa("Latency: {:.3f}\n".format(self.prog_layer_latency[i]))
	
	
			tot_ops = sum(self.fixed_layer_num_ops[:-1])
			tot_params = sum(self.fixed_layer_num_weights[:-1])
			fixed_area = sum(self.fixed_layer_mac_area) + \
									sum(self.fixed_layer_sram_area) + \
									sum(self.fixed_layer_reg_area)
			fixed_power = sum(self.fixed_layer_mac_power) + \
										sum(self.fixed_layer_sram_power) + \
										sum(self.fixed_layer_reg_power)
			fixed_time = max(self.fixed_layer_cycles) / self.fixed_frequency_MHz # Layers executed in parallel
	
			prog_time = sum(self.prog_layer_latency) # Layers executed serially
	
			hybrid_area = fixed_area + self.prog_area
			hybrid_time = max(fixed_time, prog_time) # Fixed and prog in parallel
			hybrid_tops = tot_ops / hybrid_time * 1e-6
			if prog_time > fixed_time:
					hybrid_power = fixed_power*fixed_time/prog_time + self.prog_power
			else:
					hybrid_power = fixed_power + self.prog_power*prog_time/fixed_time
			hybrid_tops_per_watt = hybrid_tops / hybrid_power
			hybrid_tops_per_area = hybrid_tops / hybrid_area
	
	
			print_ppa("Hybrid power: {:.3f} W".format(hybrid_power))
			print_ppa("Hybrid area: {:.3f} mm^2".format(hybrid_area))
			print_ppa("Hybrid tops: {:.3f}".format(hybrid_tops))
			print_ppa("Hybrid tops/w: {:.3f}".format(hybrid_tops_per_watt))
			print_ppa("Hybrid tops/mm^2: {:.3f}\n".format(hybrid_tops_per_area))
			print_ppa("Total operations: {:.3f} M".format(tot_ops/1000000))
			print_ppa("Total params: {:.3f} M".format(tot_params/1000000))
	
	
if __name__ == "__main__":
	parser = argparse.ArgumentParser()
	parser.add_argument("--model_name", type=str, required=True)
	parser.add_argument("--meta_filepath", type=str, default=None)
	parser.add_argument("--checkpoint_filepath", type=str, default=None)
	parser.add_argument("--pb_filepath", type=str, default=None)
	parser.add_argument("--endpoints_filepath", type=str, required=True)
	parser.add_argument("--data_format_filepath", type=str, required=True)
	parser.add_argument("--num_fixed_layers", type=int, default=None)
	parser.add_argument("--verbose", action='store_true')
	FLAGS = parser.parse_args()
	
	graph = parse_tf_graph(FLAGS.model_name, FLAGS.endpoints_filepath,
			FLAGS.meta_filepath, FLAGS.checkpoint_filepath, FLAGS.pb_filepath)
	with open(FLAGS.data_format_filepath, "r") as f:
			data_format = json.load(f)
	
	model = PPAModeler(data_format)
	
	# Add fixed layers to model
	layer = graph.get_input_layer()
	count = 0
	while layer:
			model.add_fixed_layer(layer)
			layer = graph.get_next_layer(layer)
			count += 1
			if FLAGS.num_fixed_layers is not None and count >= FLAGS.num_fixed_layers:
					break
	
	# Add programmable layers to model
	while layer:
			model.add_prog_layer(layer)
			layer = graph.get_next_layer(layer)
	
	model.print(FLAGS.verbose)
    