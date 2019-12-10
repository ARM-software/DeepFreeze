#!/usr/bin/env python

"""
Author: Patrick Hansen
Project: FixyNN

Defines Graph and Layer classes used for intermediate representation
"""
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import numpy as np
import tensorflow as tf
import json

DEPTHWISE_SEPARABLE_CONV_2D = "ds_conv_2d"
DEPTHWISE_CONV_2D = "dw_conv_2d"
CONV_2D = "conv_2d"
DENSE = "dense"
MAX_POOL_2D = "max_pool_2d"
AVG_POOL_2D = "avg_pool_2d"
FLATTEN = "flatten"

LAYER_TYPES_CONV = [DEPTHWISE_SEPARABLE_CONV_2D, DEPTHWISE_CONV_2D, CONV_2D]
LAYER_TYPES_POOL = [MAX_POOL_2D, AVG_POOL_2D]
LAYER_TYPES_2D = LAYER_TYPES_CONV + LAYER_TYPES_POOL
LAYER_TYPES_TRAINABLE = LAYER_TYPES_CONV + [DENSE]

RELU = "Relu"
RELU6 = "Relu6"
SOFTMAX = None
SIGMOID = None
TANH = None

ACTIVATION_FUNCTIONS = [RELU, RELU6, SOFTMAX, SIGMOID, TANH]


def get_tf_graph_from_meta(meta_graph_filepath):
	tf.train.import_meta_graph(meta_graph_filepath)
	return tf.get_default_graph()

def get_tf_graph_from_pb(frozen_model_filepath):
    with tf.io.gfile.GFile(frozen_model_filepath, 'rb') as f:
        graph_def = tf.compat.v1.GraphDef()
        graph_def.ParseFromString(f.read())
    tf.compat.v1.import_graph_def(graph_def, name='')
    return tf.compat.v1.get_default_graph()

def get_endpoints(endpoints_filepath, graph):
	with open(endpoints_filepath, "r") as f:
			endpoints_by_name = json.load(f)
	endpoints = {k: graph.get_tensor_by_name(v) for k, v in endpoints_by_name.iteritems()}
	return endpoints

def get_layer_name(tensor, endpoints):
	"""Find the name given to the endpoint corresponding to node"""
	for name, _tensor in endpoints.iteritems():
			if tensor == _tensor:
					return name
	return None
	
	
def get_tensor_shape(tensor):
	"""Returns the tensor shape as a ist of ints/None"""
	shape = []
	for size in tensor.shape:
			try:
					shape.append(int(size))
			except:
					shape.append(None)
	return shape

def get_variable_from_graph(graph, ckpt, variable):
    """Extract the value of a variable from a checkpoint"""
    with tf.Session(graph=graph) as sess:
        if ckpt:
        	tf.train.Saver().restore(sess, ckpt)
        return sess.run(variable)


class Graph():
	def __init__(self, name):
			self.name = name
			self.layers = []
			self.removed_layer_names = []
	
	def __str__(self):
			result = "GRAPH: %s\n" % self.name
			ordered = self.get_ordered_layers()
			ordered_names = [layer.name for layer in ordered]
			result += "\tlayers: %s\n" % " -> ".join(ordered_names)
			for layer in ordered:
					result +=  "\t" +str(layer).replace("\n", "\n\t") + "\n"
			return result
	
	def add_layer(self, layer):
			connections = layer.input_names + layer.output_names
			for layer_name in self.removed_layer_names:
					if layer_name in layer.input_names:
							layer.input_names.remove(layer_name)
					if layer_name in layer.output_names:
							layer.output_names.remove(layer_name)
			self.layers.append(layer)
	
	def remove_layer(self, layer):
			layer_name = layer.name
			if layer in self.layers:
					self.layers.remove(layer)
			for layer in self.layers:
					if layer_name in layer.input_names:
							layer.input_names.remove(layer_name)
					if layer_name in layer.output_names:
							layer.output_names.remove(layer_name)
			self.removed_layer_names.append(layer_name)
	
	def find_layer(self, name):
			for layer in self.layers:
					if layer.name == name:
							return layer
			return None
	
	def get_input_layer(self):
			for layer in self.layers:
					if not layer.input_names:
							return layer
			return None
	
	def get_output_layer(self):
			for layer in self.layers:
					if not layer.output_names:
							return layer
			return None
	
	def get_next_layer(self, cur_layer):
			if cur_layer and cur_layer.output_names:
					next_layer_name = cur_layer.output_names[0] # TODO: enable branching
					next_layer = self.find_layer(next_layer_name)
					return next_layer
			else:
					return None
	
	def get_previous_layer(self, cur_layer):
			if cur_layer and cur_layer.input_names:
					previous_layer_name = cur_layer.input_names[0] # TODO: enable branching
					previous_layer = self.find_layer(previous_layer_name)
					return previous_layer
			else:
					return None
	
	def get_ordered_layers(self):
			ordered = []
			cur_layer = self.get_input_layer()
			while cur_layer:
					ordered += [cur_layer]
					cur_layer = self.get_next_layer(cur_layer)
			return ordered
	
	
class Layer():
	def __init__(self, name, endpoints, graph, ckpt):
		self._endpoints = endpoints
		self._tensor = self._endpoints[name]
		self._layer_ops = self.__get_layer_ops()
		
		self.name = name
		self.op_type = self.__get_op_type()
		self.adder_pipeline = 1 # with pipeline
		self.bram_mult =1 # no bram multipliers
		self.adder_tree = 1 # with adder_tree
		self.input_names = self.__get_input_layer_names()
		self.output_names = self.__get_output_layer_names()
		self.input_shapes = self.__get_input_shapes()
		self.output_shape = self.__get_output_shape()
		
		if self.op_type in LAYER_TYPES_TRAINABLE:
			self.weights = self.__get_weights(graph, ckpt)
			
			self.bias = self.__get_bias(graph, ckpt)
			
		if self.op_type in LAYER_TYPES_2D:
				self.kernel_size = self.__get_kernel_size()
				self.strides = self.__get_strides()
				self.padding = self.__get_padding()
		
		self.activation_function = self.__get_activation_function()
		
		
	def __str__(self):
			result = "LAYER: %s\n" % self.name
			result += "\top type: %s\n" % self.op_type
			result += "\tinputs: %s\n" % self.input_names
			result += "\toutputs: %s\n" % self.output_names
			result += "\tinput shapes: %s\n" % self.input_shapes
			result += "\toutput shape: %s\n" % self.output_shape
			result += "\tactivation function: %s\n" % self.activation_function
			if self.op_type in LAYER_TYPES_TRAINABLE:
					if self.op_type == DEPTHWISE_SEPARABLE_CONV_2D:
							result += "\tdepthwise weights shape: %s\n" % (self.weights[0].shape,)
							result += "\tpointwise weights shape: %s\n" % (self.weights[1].shape,)
					else:
							result += "\tweights shape: %s\n" % (self.weights.shape,)
					result += "\tbias shape: %s\n" % (self.bias.shape,)
			if self.op_type in LAYER_TYPES_2D:
					result += "\tkernel size: %s\n" % (self.kernel_size,)
					result += "\tstrides: %s\n" % (self.strides,)
					result += "\tpadding: %s" % self.padding
			return result
	
	def __get_input_layer_names(self, tensor=None):
			"""Return a list of all layer names that are direct inputs to this layer"""
			if tensor == None:
					tensor = self._tensor
			inputs = []
			for inp in tensor.op.inputs:
					if inp in self._endpoints.values():
							inputs += [get_layer_name(inp, self._endpoints)]
					else:
							inputs += self.__get_input_layer_names(inp)
			return list(set(inputs))
	
	def __get_output_layer_names(self):
			"""Return a list of all layer names that are direct outputs of this layer"""
			outputs = []
			for name, tensor in self._endpoints.iteritems():
					if self.name in self.__get_input_layer_names(tensor):
							outputs += [name]
			return outputs
	
	def __get_layer_ops(self, tensor=None):
			"""Return all list of all ops in this layer"""
			if tensor == None:
					tensor = self._tensor
			layer_ops = [tensor.op]
			for inp in tensor.op.inputs:
					if not inp in self._endpoints.values():
							layer_ops += self.__get_layer_ops(inp)
			return list(set(layer_ops))
	
	def __get_op_type(self):
			"""Determine the operation type of this layer"""
			layer_ops_types = [op.type for op in self._layer_ops]
			if "DepthwiseConv2dNative" in layer_ops_types and \
							"Conv2D" in layer_ops_types:
					return DEPTHWISE_SEPARABLE_CONV_2D
			elif "DepthwiseConv2dNative" in layer_ops_types:
					return DEPTHWISE_CONV_2D
			elif "Conv2D" in layer_ops_types:
					return CONV_2D
			elif "MatMul" in layer_ops_types:
					return DENSE
			elif "MaxPool" in layer_ops_types:
					return MAX_POOL_2D
			elif "AvgPool" in layer_ops_types:
					return AVG_POOL_2D
			elif "Reshape" in layer_ops_types:
					return FLATTEN
			else:
					raise Exception("Could not match layer with a known op type")
	
	def __get_ops_by_type(self, op_type):
			if op_type == None:
					return None
	
			ops = []
			for op in self._layer_ops:
					if op.type == op_type:
							ops.append(op)
			return ops
	
	def __get_input_shapes(self):
			"""Return a list of all input activation tensor shapes to node"""
			if not self.input_names:
					tensor = self._tensor
					while tensor.op.inputs:
							shape = get_tensor_shape(tensor)
							tensor = tensor.op.inputs[0]
							if not get_tensor_shape(tensor) or \
											(self.op_type in LAYER_TYPES_2D and len(get_tensor_shape(tensor)) != 4):
									return [shape]
					return [get_tensor_shape(tensor)]
			else:
					return [get_tensor_shape(self._endpoints[x]) for x in self.input_names]
	
	def __get_output_shape(self):
			return get_tensor_shape(self._tensor)
	
	def __get_weights(self, graph, ckpt):
		"""Extract weight parameters from a layer"""
		# import pdb;pdb.set_trace()
		if self.op_type == DEPTHWISE_SEPARABLE_CONV_2D:
				depthwise_weights = self.__get_ops_by_type("DepthwiseConv2dNative")[0].inputs[1]
				pointwise_weights = self.__get_ops_by_type("Conv2D")[0].inputs[1]
				return [
						get_variable_from_graph(graph, ckpt, depthwise_weights),
						get_variable_from_graph(graph, ckpt, pointwise_weights)
				]
		elif self.op_type == DEPTHWISE_CONV_2D:
				weights = self.__get_ops_by_type("DepthwiseConv2dNative")[0].inputs[1]
				return get_variable_from_graph(graph, ckpt, weights)
		elif self.op_type == CONV_2D:
				weights = self.__get_ops_by_type("Conv2D")[0].inputs[1]
				return get_variable_from_graph(graph, ckpt, weights)
		elif self.op_type == DENSE:
				weights = self.__get_ops_by_type("MatMul")[0].inputs[1]
				return get_variable_from_graph(graph, ckpt, weights)
		else:
				raise Exception("No weights found in layer: %s" % self.name)
	
	def __get_bias(self, graph, ckpt):
			"""Extract bias parameters from a layer"""
			bias = None
			bias_add_ops = self.__get_ops_by_type("BiasAdd")
			add_ops = self.__get_ops_by_type("Add")
			if bias_add_ops:
					assert(len(bias_add_ops) == 1)
					bias = bias_add_ops[0].inputs[1]
			if add_ops:
					for op in add_ops:
							if "bias" in op.inputs[1].name.lower():
									bias = op.inputs[1]
			
			if bias == None:
					return np.zeros((self.output_shape[-1]))
			else:
					return get_variable_from_graph(graph, ckpt, bias)
	
	def __get_batch_norm(self, graph, ckpt):
			pass # TODO
	
	def __get_2d_op(self):
			"""Returns the desired 2d op for the given layer type"""
			if self.op_type in [DEPTHWISE_SEPARABLE_CONV_2D, DEPTHWISE_CONV_2D]:
					return self.__get_ops_by_type("DepthwiseConv2dNative")[0]
			elif self.op_type == CONV_2D:
					return self.__get_ops_by_type("Conv2D")[0]
			elif self.op_type == MAX_POOL_2D:
					return self.__get_ops_by_type("MaxPool")[0]
			elif self.op_type == AVG_POOL_2D:
					return self.__get_ops_by_type("AvgPool")[0]
			else:
					raise Exception("No 2d operations in layer: %s" % self.name)
	
	def __get_kernel_size(self):
			if self.op_type == DEPTHWISE_SEPARABLE_CONV_2D:
					return self.weights[0].shape[0:2]
			elif self.op_type in [DEPTHWISE_CONV_2D, CONV_2D]:
					return self.weights.shape[0:2]
			elif self.op_type in [MAX_POOL_2D, AVG_POOL_2D]:
					op = self.__get_2d_op()
					kernel_size = op.get_attr("ksize")
					return (int(kernel_size[1]), int(kernel_size[2]))
			else:
					raise Exception("No kernel size for layer: %s" % self.name)
	
	def __get_strides(self):
			op = self.__get_2d_op()
			strides = op.get_attr("strides")
			return (int(strides[1]), int(strides[2]))
	
	def __get_padding(self):
			op = self.__get_2d_op()
			padding = op.get_attr("padding")
			return (padding)
	
	def __get_activation_function(self):
			for fn in ACTIVATION_FUNCTIONS:
					if self.__get_ops_by_type(fn):
							return fn
			return None
	
	
def parse_tf_graph(
    model_name, endpoints_filepath, meta_filepath, checkpoint_filepath, pb_filepath,
    input_layer_name=None, output_layer_name=None
):
	"""Parses a Tensorflow model into an intermediate representation"""
	if pb_filepath is None:
		assert(meta_filepath and checkpoint_filepath)
		tf_graph = get_tf_graph_from_meta(meta_filepath)
	else:
		tf_graph = get_tf_graph_from_pb(pb_filepath)

	endpoints = get_endpoints(endpoints_filepath, tf_graph)
	
	graph = Graph(model_name)

	
	for layer_name in endpoints.keys():	
		layer = Layer(layer_name, endpoints, tf_graph, checkpoint_filepath)
		graph.add_layer(layer)
	
	
	if input_layer_name is not None:
		layer = graph.get_input_layer()
		while layer.name != input_layer_name:
			graph.remove_layer(layer)
			layer = graph.get_input_layer()
	if output_layer_name is not None:
		layer = graph.get_output_layer()
		while layer.name != output_layer_name:
			graph.remove_layer(layer)
			layer = graph.get_output_layer()
	
	print(graph)
	
	return graph
