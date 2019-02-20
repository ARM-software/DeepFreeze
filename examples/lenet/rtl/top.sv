module top (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic flush,
    input logic [16-1:0] input_act,
    output logic [256-1:0] output_act,
    output logic ready
);

logic valid_ff;
logic flush_ff;
logic [16-1:0] input_act_ff;
always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        valid_ff       <= '0;
        flush_ff       <= '0;
        input_act_ff   <= '0;
    end
    else begin
        valid_ff       <= valid;
        flush_ff       <= flush;
        input_act_ff   <= input_act;
    end
end

logic conv1_buf_valid;
logic [400-1:0] conv1_buf_act;
buffer_main #(
    .KER_SIZE (5),
    .BITWIDTH (16),
    .NFMAPS (1),
    .STRIDE (1),
    .NW (32),
    .AW (6)
) conv1_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (valid_ff),
    .flush (flush_ff),
    .D (input_act_ff),
    .Q (conv1_buf_act),
    .ready (conv1_buf_valid)
);

logic conv1_valid;
logic [96-1:0] conv1_act;
conv1 conv1_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv1_buf_valid),
    .input_act (conv1_buf_act),
    .output_act (conv1_act),
    .ready (conv1_valid)
);

logic pool1_buf_valid;
logic [384-1:0] pool1_buf_act;
buffer_main #(
    .KER_SIZE (2),
    .BITWIDTH (16),
    .NFMAPS (6),
    .STRIDE (2),
    .NW (28),
    .AW (5)
) pool1_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv1_valid),
    .flush (flush_ff),
    .D (conv1_act),
    .Q (pool1_buf_act),
    .ready (pool1_buf_valid)
);

logic pool1_valid;
logic [96-1:0] pool1_act;
max_pool_2d #(
    .NBITS (16),
    .NFMAPS (6),
    .KER_SIZE (2)
) pool1_instance (
    .clk (clk),
    .rstn (rstn),
    .valid (pool1_buf_valid),
    .input_act (pool1_buf_act),
    .output_act (pool1_act),
    .ready (pool1_valid)
);

logic conv2_buf_valid;
logic [2400-1:0] conv2_buf_act;
buffer_main #(
    .KER_SIZE (5),
    .BITWIDTH (16),
    .NFMAPS (6),
    .STRIDE (1),
    .NW (14),
    .AW (4)
) conv2_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (pool1_valid),
    .flush (flush_ff),
    .D (pool1_act),
    .Q (conv2_buf_act),
    .ready (conv2_buf_valid)
);

logic conv2_valid;
logic [256-1:0] conv2_act;
conv2 conv2_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv2_buf_valid),
    .input_act (conv2_buf_act),
    .output_act (conv2_act),
    .ready (conv2_valid)
);

logic pool2_buf_valid;
logic [1024-1:0] pool2_buf_act;
buffer_main #(
    .KER_SIZE (2),
    .BITWIDTH (16),
    .NFMAPS (16),
    .STRIDE (2),
    .NW (10),
    .AW (4)
) pool2_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv2_valid),
    .flush (flush_ff),
    .D (conv2_act),
    .Q (pool2_buf_act),
    .ready (pool2_buf_valid)
);

logic pool2_valid;
logic [256-1:0] pool2_act;
max_pool_2d #(
    .NBITS (16),
    .NFMAPS (16),
    .KER_SIZE (2)
) pool2_instance (
    .clk (clk),
    .rstn (rstn),
    .valid (pool2_buf_valid),
    .input_act (pool2_buf_act),
    .output_act (pool2_act),
    .ready (pool2_valid)
);

always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        output_act <= '0;
        ready      <= '0;
    end
    else begin
        output_act <= pool2_act;
        ready      <= pool2_valid;
    end
end

endmodule