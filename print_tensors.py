import tensorflow as tf

def get_tf_graph_from_meta(meta_graph_filepath):
    tf.train.import_meta_graph(meta_graph_filepath)
    return tf.compat.v1.get_default_graph()


def get_tf_graph_from_pb(frozen_model_filepath):
    with tf.io.gfile.GFile(frozen_model_filepath, 'rb') as f:
        graph_def = tf.compat.v1.GraphDef()
        graph_def.ParseFromString(f.read())
    tf.compat.v1.import_graph_def(graph_def, name='')
    return tf.compat.v1.get_default_graph()


graph = get_tf_graph_from_pb("/home/mobilenet_v1_20ms.pb")
op = graph.get_operation_by_name("net_output")
while len(op.inputs) > 0:
    tensor = op.inputs[0]
    print(tensor.name, tensor.shape)
    op = tensor.op