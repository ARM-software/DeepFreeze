module top (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [48-1:0] input_act,
    output logic [4096-1:0] output_act,
    output logic ready
);

logic valid_ff;
logic [48-1:0] input_act_ff;
always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        valid_ff       <= '0;
        input_act_ff   <= '0;
    end
    else begin
        valid_ff       <= valid;
        input_act_ff   <= input_act;
    end
end

logic conv1_buf_valid;
logic [432-1:0] conv1_buf_act;
buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (16),
    .NFMAPS (3),
    .STRIDE (1),
    .PAD (1),
    .NW (224),
    .AW (8)
) conv1_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (valid_ff),
    .D (input_act_ff),
    .Q (conv1_buf_act),
    .ready (conv1_buf_valid)
);

logic conv1_valid;
logic [128-1:0] conv1_act;
conv1 conv1_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv1_buf_valid),
    .input_act (conv1_buf_act),
    .output_act (conv1_act),
    .ready (conv1_valid)
);

logic conv2_dw_buf_valid;
logic [1152-1:0] conv2_dw_buf_act;
buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (16),
    .NFMAPS (8),
    .STRIDE (1),
    .PAD (1),
    .NW (224),
    .AW (8)
) conv2_dw_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv1_valid),
    .D (conv1_act),
    .Q (conv2_dw_buf_act),
    .ready (conv2_dw_buf_valid)
);

logic conv2_dw_valid;
logic [128-1:0] conv2_dw_act;
conv2_dw conv2_dw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv2_dw_buf_valid),
    .input_act (conv2_dw_buf_act),
    .output_act (conv2_dw_act),
    .ready (conv2_dw_valid)
);

logic conv2_pw_buf_valid;
logic [128-1:0] conv2_pw_buf_act;

assign conv2_pw_buf_act = conv2_dw_act;
assign conv2_pw_buf_valid = conv2_dw_valid ;

logic conv2_pw_valid;
logic [256-1:0] conv2_pw_act;
conv2_pw conv2_pw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv2_pw_buf_valid),
    .input_act (conv2_pw_buf_act),
    .output_act (conv2_pw_act),
    .ready (conv2_pw_valid)
);

logic conv3_dw_buf_valid;
logic [2304-1:0] conv3_dw_buf_act;
buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (16),
    .NFMAPS (16),
    .STRIDE (2),
    .PAD (1),
    .NW (224),
    .AW (8)
) conv3_dw_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv2_pw_valid),
    .D (conv2_pw_act),
    .Q (conv3_dw_buf_act),
    .ready (conv3_dw_buf_valid)
);

logic conv3_dw_valid;
logic [256-1:0] conv3_dw_act;
conv3_dw conv3_dw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv3_dw_buf_valid),
    .input_act (conv3_dw_buf_act),
    .output_act (conv3_dw_act),
    .ready (conv3_dw_valid)
);

logic conv3_pw_buf_valid;
logic [256-1:0] conv3_pw_buf_act;

assign conv3_pw_buf_act = conv3_dw_act;
assign conv3_pw_buf_valid = conv3_dw_valid ;

logic conv3_pw_valid;
logic [512-1:0] conv3_pw_act;
conv3_pw conv3_pw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv3_pw_buf_valid),
    .input_act (conv3_pw_buf_act),
    .output_act (conv3_pw_act),
    .ready (conv3_pw_valid)
);

logic conv4_dw_buf_valid;
logic [4608-1:0] conv4_dw_buf_act;
buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (16),
    .NFMAPS (32),
    .STRIDE (1),
    .PAD (1),
    .NW (112),
    .AW (7)
) conv4_dw_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv3_pw_valid),
    .D (conv3_pw_act),
    .Q (conv4_dw_buf_act),
    .ready (conv4_dw_buf_valid)
);

logic conv4_dw_valid;
logic [512-1:0] conv4_dw_act;
conv4_dw conv4_dw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv4_dw_buf_valid),
    .input_act (conv4_dw_buf_act),
    .output_act (conv4_dw_act),
    .ready (conv4_dw_valid)
);

logic conv4_pw_buf_valid;
logic [512-1:0] conv4_pw_buf_act;

assign conv4_pw_buf_act = conv4_dw_act;
assign conv4_pw_buf_valid = conv4_dw_valid ;

logic conv4_pw_valid;
logic [512-1:0] conv4_pw_act;
conv4_pw conv4_pw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv4_pw_buf_valid),
    .input_act (conv4_pw_buf_act),
    .output_act (conv4_pw_act),
    .ready (conv4_pw_valid)
);

logic conv5_dw_buf_valid;
logic [4608-1:0] conv5_dw_buf_act;
buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (16),
    .NFMAPS (32),
    .STRIDE (2),
    .PAD (1),
    .NW (112),
    .AW (7)
) conv5_dw_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv4_pw_valid),
    .D (conv4_pw_act),
    .Q (conv5_dw_buf_act),
    .ready (conv5_dw_buf_valid)
);

logic conv5_dw_valid;
logic [512-1:0] conv5_dw_act;
conv5_dw conv5_dw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv5_dw_buf_valid),
    .input_act (conv5_dw_buf_act),
    .output_act (conv5_dw_act),
    .ready (conv5_dw_valid)
);

logic conv5_pw_buf_valid;
logic [512-1:0] conv5_pw_buf_act;

assign conv5_pw_buf_act = conv5_dw_act;
assign conv5_pw_buf_valid = conv5_dw_valid ;

logic conv5_pw_valid;
logic [1024-1:0] conv5_pw_act;
conv5_pw conv5_pw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv5_pw_buf_valid),
    .input_act (conv5_pw_buf_act),
    .output_act (conv5_pw_act),
    .ready (conv5_pw_valid)
);

logic conv6_dw_buf_valid;
logic [9216-1:0] conv6_dw_buf_act;
buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (16),
    .NFMAPS (64),
    .STRIDE (1),
    .PAD (1),
    .NW (56),
    .AW (6)
) conv6_dw_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv5_pw_valid),
    .D (conv5_pw_act),
    .Q (conv6_dw_buf_act),
    .ready (conv6_dw_buf_valid)
);

logic conv6_dw_valid;
logic [1024-1:0] conv6_dw_act;
conv6_dw conv6_dw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv6_dw_buf_valid),
    .input_act (conv6_dw_buf_act),
    .output_act (conv6_dw_act),
    .ready (conv6_dw_valid)
);

logic conv6_pw_buf_valid;
logic [1024-1:0] conv6_pw_buf_act;

assign conv6_pw_buf_act = conv6_dw_act;
assign conv6_pw_buf_valid = conv6_dw_valid ;

logic conv6_pw_valid;
logic [1024-1:0] conv6_pw_act;
conv6_pw conv6_pw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv6_pw_buf_valid),
    .input_act (conv6_pw_buf_act),
    .output_act (conv6_pw_act),
    .ready (conv6_pw_valid)
);

logic conv7_dw_buf_valid;
logic [9216-1:0] conv7_dw_buf_act;
buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (16),
    .NFMAPS (64),
    .STRIDE (2),
    .PAD (1),
    .NW (56),
    .AW (6)
) conv7_dw_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv6_pw_valid),
    .D (conv6_pw_act),
    .Q (conv7_dw_buf_act),
    .ready (conv7_dw_buf_valid)
);

logic conv7_dw_valid;
logic [1024-1:0] conv7_dw_act;
conv7_dw conv7_dw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv7_dw_buf_valid),
    .input_act (conv7_dw_buf_act),
    .output_act (conv7_dw_act),
    .ready (conv7_dw_valid)
);

logic conv7_pw_buf_valid;
logic [1024-1:0] conv7_pw_buf_act;

assign conv7_pw_buf_act = conv7_dw_act;
assign conv7_pw_buf_valid = conv7_dw_valid ;

logic conv7_pw_valid;
logic [2048-1:0] conv7_pw_act;
conv7_pw conv7_pw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv7_pw_buf_valid),
    .input_act (conv7_pw_buf_act),
    .output_act (conv7_pw_act),
    .ready (conv7_pw_valid)
);

logic conv8_dw_buf_valid;
logic [18432-1:0] conv8_dw_buf_act;
buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (16),
    .NFMAPS (128),
    .STRIDE (1),
    .PAD (1),
    .NW (28),
    .AW (5)
) conv8_dw_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv7_pw_valid),
    .D (conv7_pw_act),
    .Q (conv8_dw_buf_act),
    .ready (conv8_dw_buf_valid)
);

logic conv8_dw_valid;
logic [2048-1:0] conv8_dw_act;
conv8_dw conv8_dw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv8_dw_buf_valid),
    .input_act (conv8_dw_buf_act),
    .output_act (conv8_dw_act),
    .ready (conv8_dw_valid)
);

logic conv8_pw_buf_valid;
logic [2048-1:0] conv8_pw_buf_act;

assign conv8_pw_buf_act = conv8_dw_act;
assign conv8_pw_buf_valid = conv8_dw_valid ;

logic conv8_pw_valid;
logic [2048-1:0] conv8_pw_act;
conv8_pw conv8_pw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv8_pw_buf_valid),
    .input_act (conv8_pw_buf_act),
    .output_act (conv8_pw_act),
    .ready (conv8_pw_valid)
);

logic conv9_dw_buf_valid;
logic [18432-1:0] conv9_dw_buf_act;
buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (16),
    .NFMAPS (128),
    .STRIDE (1),
    .PAD (1),
    .NW (28),
    .AW (5)
) conv9_dw_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv8_pw_valid),
    .D (conv8_pw_act),
    .Q (conv9_dw_buf_act),
    .ready (conv9_dw_buf_valid)
);

logic conv9_dw_valid;
logic [2048-1:0] conv9_dw_act;
conv9_dw conv9_dw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv9_dw_buf_valid),
    .input_act (conv9_dw_buf_act),
    .output_act (conv9_dw_act),
    .ready (conv9_dw_valid)
);

logic conv9_pw_buf_valid;
logic [2048-1:0] conv9_pw_buf_act;

assign conv9_pw_buf_act = conv9_dw_act;
assign conv9_pw_buf_valid = conv9_dw_valid ;

logic conv9_pw_valid;
logic [2048-1:0] conv9_pw_act;
conv9_pw conv9_pw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv9_pw_buf_valid),
    .input_act (conv9_pw_buf_act),
    .output_act (conv9_pw_act),
    .ready (conv9_pw_valid)
);

logic conv10_dw_buf_valid;
logic [18432-1:0] conv10_dw_buf_act;
buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (16),
    .NFMAPS (128),
    .STRIDE (1),
    .PAD (1),
    .NW (28),
    .AW (5)
) conv10_dw_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv9_pw_valid),
    .D (conv9_pw_act),
    .Q (conv10_dw_buf_act),
    .ready (conv10_dw_buf_valid)
);

logic conv10_dw_valid;
logic [2048-1:0] conv10_dw_act;
conv10_dw conv10_dw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv10_dw_buf_valid),
    .input_act (conv10_dw_buf_act),
    .output_act (conv10_dw_act),
    .ready (conv10_dw_valid)
);

logic conv10_pw_buf_valid;
logic [2048-1:0] conv10_pw_buf_act;

assign conv10_pw_buf_act = conv10_dw_act;
assign conv10_pw_buf_valid = conv10_dw_valid ;

logic conv10_pw_valid;
logic [2048-1:0] conv10_pw_act;
conv10_pw conv10_pw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv10_pw_buf_valid),
    .input_act (conv10_pw_buf_act),
    .output_act (conv10_pw_act),
    .ready (conv10_pw_valid)
);

logic conv11_dw_buf_valid;
logic [18432-1:0] conv11_dw_buf_act;
buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (16),
    .NFMAPS (128),
    .STRIDE (1),
    .PAD (1),
    .NW (28),
    .AW (5)
) conv11_dw_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv10_pw_valid),
    .D (conv10_pw_act),
    .Q (conv11_dw_buf_act),
    .ready (conv11_dw_buf_valid)
);

logic conv11_dw_valid;
logic [2048-1:0] conv11_dw_act;
conv11_dw conv11_dw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv11_dw_buf_valid),
    .input_act (conv11_dw_buf_act),
    .output_act (conv11_dw_act),
    .ready (conv11_dw_valid)
);

logic conv11_pw_buf_valid;
logic [2048-1:0] conv11_pw_buf_act;

assign conv11_pw_buf_act = conv11_dw_act;
assign conv11_pw_buf_valid = conv11_dw_valid ;

logic conv11_pw_valid;
logic [2048-1:0] conv11_pw_act;
conv11_pw conv11_pw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv11_pw_buf_valid),
    .input_act (conv11_pw_buf_act),
    .output_act (conv11_pw_act),
    .ready (conv11_pw_valid)
);

logic conv12_dw_buf_valid;
logic [18432-1:0] conv12_dw_buf_act;
buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (16),
    .NFMAPS (128),
    .STRIDE (1),
    .PAD (1),
    .NW (28),
    .AW (5)
) conv12_dw_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv11_pw_valid),
    .D (conv11_pw_act),
    .Q (conv12_dw_buf_act),
    .ready (conv12_dw_buf_valid)
);

logic conv12_dw_valid;
logic [2048-1:0] conv12_dw_act;
conv12_dw conv12_dw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv12_dw_buf_valid),
    .input_act (conv12_dw_buf_act),
    .output_act (conv12_dw_act),
    .ready (conv12_dw_valid)
);

logic conv12_pw_buf_valid;
logic [2048-1:0] conv12_pw_buf_act;

assign conv12_pw_buf_act = conv12_dw_act;
assign conv12_pw_buf_valid = conv12_dw_valid ;

logic conv12_pw_valid;
logic [2048-1:0] conv12_pw_act;
conv12_pw conv12_pw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv12_pw_buf_valid),
    .input_act (conv12_pw_buf_act),
    .output_act (conv12_pw_act),
    .ready (conv12_pw_valid)
);

logic conv13_dw_buf_valid;
logic [18432-1:0] conv13_dw_buf_act;
buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (16),
    .NFMAPS (128),
    .STRIDE (2),
    .PAD (1),
    .NW (28),
    .AW (5)
) conv13_dw_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv12_pw_valid),
    .D (conv12_pw_act),
    .Q (conv13_dw_buf_act),
    .ready (conv13_dw_buf_valid)
);

logic conv13_dw_valid;
logic [2048-1:0] conv13_dw_act;
conv13_dw conv13_dw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv13_dw_buf_valid),
    .input_act (conv13_dw_buf_act),
    .output_act (conv13_dw_act),
    .ready (conv13_dw_valid)
);

logic conv13_pw_buf_valid;
logic [2048-1:0] conv13_pw_buf_act;

assign conv13_pw_buf_act = conv13_dw_act;
assign conv13_pw_buf_valid = conv13_dw_valid ;

logic conv13_pw_valid;
logic [4096-1:0] conv13_pw_act;
conv13_pw conv13_pw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv13_pw_buf_valid),
    .input_act (conv13_pw_buf_act),
    .output_act (conv13_pw_act),
    .ready (conv13_pw_valid)
);

logic conv14_dw_buf_valid;
logic [36864-1:0] conv14_dw_buf_act;
buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (16),
    .NFMAPS (256),
    .STRIDE (1),
    .PAD (1),
    .NW (14),
    .AW (4)
) conv14_dw_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv13_pw_valid),
    .D (conv13_pw_act),
    .Q (conv14_dw_buf_act),
    .ready (conv14_dw_buf_valid)
);

logic conv14_dw_valid;
logic [4096-1:0] conv14_dw_act;
conv14_dw conv14_dw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv14_dw_buf_valid),
    .input_act (conv14_dw_buf_act),
    .output_act (conv14_dw_act),
    .ready (conv14_dw_valid)
);

logic conv14_pw_buf_valid;
logic [4096-1:0] conv14_pw_buf_act;

assign conv14_pw_buf_act = conv14_dw_act;
assign conv14_pw_buf_valid = conv14_dw_valid ;

logic conv14_pw_valid;
logic [4096-1:0] conv14_pw_act;
conv14_pw conv14_pw_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv14_pw_buf_valid),
    .input_act (conv14_pw_buf_act),
    .output_act (conv14_pw_act),
    .ready (conv14_pw_valid)
);

logic avg_pool_buf_valid;
logic [200704-1:0] avg_pool_buf_act;
buffer_main #(
    .KER_SIZE (7),
    .BITWIDTH (16),
    .NFMAPS (256),
    .STRIDE (2),
    .PAD (0),
    .NW (14),
    .AW (4)
) avg_pool_buf_inst (
    .clk (clk),
    .rstn (rstn),
    .valid (conv14_pw_valid),
    .D (conv14_pw_act),
    .Q (avg_pool_buf_act),
    .ready (avg_pool_buf_valid)
);

logic avg_pool_valid;
logic [4096-1:0] avg_pool_act;
avg_pool_2d #(
    .NBITS (16),
    .NFMAPS (256),
    .KER_SIZE (7)
) avg_pool_instance (
    .clk (clk),
    .rstn (rstn),
    .valid (avg_pool_buf_valid),
    .input_act (avg_pool_buf_act),
    .output_act (avg_pool_act),
    .ready (avg_pool_valid)
);

always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        output_act <= '0;
        ready      <= '0;
    end
    else begin
        output_act <= avg_pool_act;
        ready      <= avg_pool_valid;
    end
end

endmodule