#!/usr/bin/env python

"""
Author: Patrick Hansen
Project: FixyNN
"""

import os

TEMPLATE_DIRECTORY = os.path.join(os.path.dirname(__file__), "templates/")

LAYER_MODULE_HEADER_TEMPLATE      = os.path.join(TEMPLATE_DIRECTORY, "layer_module_header.txt")
TRAINABLE_LAYER_INSTANCE_TEMPLATE = os.path.join(TEMPLATE_DIRECTORY, "trainable_layer_instance.txt")
POOLING_LAYER_INSTANCE_TEMPLATE   = os.path.join(TEMPLATE_DIRECTORY, "pooling_layer_instance.txt")
BUFFER_INSTANCE_TEMPLATE          = os.path.join(TEMPLATE_DIRECTORY, "buffer_instance.txt")
MAIN_MODULE_HEADER_TEMPLATE       = os.path.join(TEMPLATE_DIRECTORY, "main_module_header.txt")
MAIN_MODULE_OUTPUT_TEMPLATE       = os.path.join(TEMPLATE_DIRECTORY, "main_module_output.txt")
TESTBENCH_TEMPLATE                = os.path.join(TEMPLATE_DIRECTORY, "tb.txt")

def read_and_fill_template(filename, variable_map):
    with open(filename, "r") as f:
        template_lines = f.readlines()
    filled_lines = []
    for line in template_lines:
        for (old, new) in variable_map:
            if isinstance(new, int):
                new = str(new)
            line = line.replace(old, new)
        filled_lines.append(line)
    return filled_lines