module top (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic flush,
    input logic [16-1:0] input_act,
    output logic [96-1:0] output_act,
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

always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        output_act <= '0;
        ready      <= '0;
    end
    else begin
        output_act <= conv1_act;
        ready      <= conv1_valid;
    end
end

endmodule