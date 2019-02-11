module avg_pool_2d
#(
    parameter NBITS = 32,
    parameter NFMAPS = 32,
    parameter KER_SIZE_X = 2,
    parameter KER_SIZE_Y = 2
)
(
    input logic [NBITS*KER_SIZE_X*KER_SIZE_Y*NFMAPS-1:0] input_act,
    output logic [NBITS*NFMAPS-1:0] output_act
);

genvar i;
generate
    for (i = 0; i < NFMAPS; i++) begin
        avg_pool_2d_slice #(
            .NBITS(NBITS),
            .KER_SIZE_X(KER_SIZE_X),
            .KER_SIZE_Y(KER_SIZE_Y)
        ) avg_pool_2d_slice_inst (
            .input_act(input_act[(i+1)*NBITS*KER_SIZE_X*KER_SIZE_Y-1:(i*NBITS*KER_SIZE_X*KER_SIZE_Y)]),
            .output_act(output_act[(i+1)*NBITS-1:(i*NBITS)])
        );
    end
endgenerate

endmodule

// TODO: only works for kernel size of 2x2
// NOTE: result of +-XXX.5 always rounded down
module avg_pool_2d_slice
#(
    parameter NBITS = 32,
    parameter KER_SIZE_X = 2,
    parameter KER_SIZE_Y = 2
)
(
    input logic [NBITS*KER_SIZE_X*KER_SIZE_Y-1:0] input_act,
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
