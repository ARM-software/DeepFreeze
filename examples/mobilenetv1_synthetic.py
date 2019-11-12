#!/usr/bin/env python

"""
Generates a mobilenet model with synthetic weights.
Designed to be consumed by DeepFreeze.
Output model does not have BN layers.
"""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import argparse
import json
import tensorflow as tf
import numpy as np
import os

slim = tf.contrib.slim

def parse_tf_shape(tf_shape):
    shape = []
    for size in tf_shape:
        try:
            shape.append(int(size))
        except:
            shape.append(None)
    return shape

def gen_matrix(shape):
	
	# return np.random.normal(0,0.5,size=shape)
	return np.random.random(size=shape)
	
def main(output_dir, input_dim=224, depth_multiplier=1.0):
    assert(input_dim % 32 == 0)
    assert(depth_multiplier > 0.0 and depth_multiplier <= 1.0)

    # Generate tf graph with mobilenet network
    depth = lambda x: int(x * depth_multiplier)
    pool_size = input_dim / 32
    endpoints = {}
    g = tf.Graph()
    with g.as_default():
        with slim.arg_scope([slim.conv2d, slim.separable_conv2d],
                padding="SAME", activation_fn=tf.nn.relu6):
            input = tf.placeholder(tf.float32, shape=(1, input_dim, input_dim, 3))
            net = endpoints["conv1"] = slim.conv2d(input, depth(32), kernel_size=[3,3], stride=1)
            net = endpoints["conv2_dw"] = slim.separable_conv2d(net, num_outputs=None, kernel_size=[3,3], stride=1)
            net = endpoints["conv2_pw"] = slim.conv2d(net, depth(64), kernel_size=[1,1], stride=1)
            net = endpoints["conv3_dw"] = slim.separable_conv2d(net, num_outputs=None, kernel_size=[3,3], stride=2)
            net = endpoints["conv3_pw"] = slim.conv2d(net, depth(128), kernel_size=[1,1], stride=1)
            net = endpoints["conv4_dw"] = slim.separable_conv2d(net, num_outputs=None, kernel_size=[3,3], stride=1)
            net = endpoints["conv4_pw"] = slim.conv2d(net, depth(128), kernel_size=[1,1], stride=1)
            net = endpoints["conv5_dw"] = slim.separable_conv2d(net, num_outputs=None, kernel_size=[3,3], stride=2)
            net = endpoints["conv5_pw"] = slim.conv2d(net, depth(256), kernel_size=[1,1], stride=1)
            net = endpoints["conv6_dw"] = slim.separable_conv2d(net, num_outputs=None, kernel_size=[3,3], stride=1)
            net = endpoints["conv6_pw"] = slim.conv2d(net, depth(256), kernel_size=[1,1], stride=1)
            net = endpoints["conv7_dw"] = slim.separable_conv2d(net, num_outputs=None, kernel_size=[3,3], stride=2)
            net = endpoints["conv7_pw"] = slim.conv2d(net, depth(512), kernel_size=[1,1], stride=1)
            net = endpoints["conv8_dw"] = slim.separable_conv2d(net, num_outputs=None, kernel_size=[3,3], stride=1)
            net = endpoints["conv8_pw"] = slim.conv2d(net, depth(512), kernel_size=[1,1], stride=1)
            net = endpoints["conv9_dw"] = slim.separable_conv2d(net, num_outputs=None, kernel_size=[3,3], stride=1)
            net = endpoints["conv9_pw"] = slim.conv2d(net, depth(512), kernel_size=[1,1], stride=1)
            net = endpoints["conv10_dw"] = slim.separable_conv2d(net, num_outputs=None, kernel_size=[3,3], stride=1)
            net = endpoints["conv10_pw"] = slim.conv2d(net, depth(512), kernel_size=[1,1], stride=1)
            net = endpoints["conv11_dw"] = slim.separable_conv2d(net, num_outputs=None, kernel_size=[3,3], stride=1)
            net = endpoints["conv11_pw"] = slim.conv2d(net, depth(512), kernel_size=[1,1], stride=1)
            net = endpoints["conv12_dw"] = slim.separable_conv2d(net, num_outputs=None, kernel_size=[3,3], stride=1)
            net = endpoints["conv12_pw"] = slim.conv2d(net, depth(512), kernel_size=[1,1], stride=1)
            net = endpoints["conv13_dw"] = slim.separable_conv2d(net, num_outputs=None, kernel_size=[3,3], stride=2)
            net = endpoints["conv13_pw"] = slim.conv2d(net, depth(1024), kernel_size=[1,1], stride=1)
            net = endpoints["conv14_dw"] = slim.separable_conv2d(net, num_outputs=None, kernel_size=[3,3], stride=1)
            net = endpoints["conv14_pw"] = slim.conv2d(net, depth(1024), kernel_size=[1,1], stride=1)
            output = endpoints["avg_pool"] = slim.avg_pool2d(net, kernel_size=[pool_size,pool_size])

    # save endpoints
    endpoints_by_name = {k: v.name for k,v in endpoints.iteritems()}
    endpoints_filepath = os.path.join(output_dir, "endpoints.json")
    with open(endpoints_filepath, "w") as f:
        json.dump(endpoints_by_name, f, indent=4, separators=(',', ': '))

    # Set weights and save model
    with tf.Session(graph=g) as sess:
        for var in tf.trainable_variables():
            shape = parse_tf_shape(var.get_shape())
            matrix = gen_matrix(shape)
						import pdb; pdb.set_trace()
            sess.run(var.assign(matrix))
        checkpoint_filepath = os.path.join(output_dir, "mobilenet.ckpt")
        tf.train.Saver().save(sess, checkpoint_filepath)

    return

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("output_dir", type=str)
    parser.add_argument("--input_dim", type=int, default=224)
    parser.add_argument("--depth_multiplier", type=float, default=1.0)
    args = parser.parse_args()

    main(args.output_dir, args.input_dim, args.depth_multiplier)
