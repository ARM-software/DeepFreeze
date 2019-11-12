module avg_pool_2d
#(
    parameter NBITS = 32,
    parameter NFMAPS = 32,
    parameter KER_SIZE = 2
)
(
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [NBITS*KER_SIZE*KER_SIZE*NFMAPS-1:0] input_act,
    output logic [NBITS*NFMAPS-1:0] output_act,
    output logic ready
);

logic [NBITS*KER_SIZE*KER_SIZE*NFMAPS-1:0] input_act_ff;
always_ff @(posedge clk or negedge rstn) begin
    if (rstn == 0) begin
        input_act_ff <= '0;
        ready <= '0;
    end
    else begin
        input_act_ff <= input_act;
        ready <= valid;
    end
end

genvar i;
generate
    for (i = 0; i < NFMAPS; i++) begin
        avg_pool_2d_slice #(
            .NBITS (NBITS),
            .KER_SIZE (KER_SIZE)
        ) avg_pool_2d_slice_inst (
            .input_act (input_act_ff[(i+1)*NBITS*KER_SIZE*KER_SIZE-1:(i*NBITS*KER_SIZE*KER_SIZE)]),
            .output_act (output_act[(i+1)*NBITS-1:(i*NBITS)])
        );
    end
endgenerate

endmodule

// TODO: only works for kernel size of 2x2
// NOTE: result of +-XXX.5 always rounded down
module avg_pool_2d_slice
#(
    parameter NBITS = 32,
    parameter KER_SIZE = 2
)
(
    input logic [NBITS*KER_SIZE*KER_SIZE-1:0] input_act,
    output logic [NBITS-1:0] output_act
);

logic [NBITS-1:0] sum;

always_comb begin
    sum =
        $signed(input_act[1*NBITS-1:0*NBITS]) +
        $signed(input_act[2*NBITS-1:1*NBITS]) +
        $signed(input_act[3*NBITS-1:2*NBITS]) +
        $signed(input_act[4*NBITS-1:3*NBITS]);
    output_act = $signed(sum) / 4;
end

endmodule
