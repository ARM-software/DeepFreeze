module max_pool_2d
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
        max_pool_2d_slice #(
            .NBITS (NBITS),
            .KER_SIZE_X (KER_SIZE_X),
            .KER_SIZE_Y (KER_SIZE_Y)
        ) max_pool_2d_slice_inst (
            .input_act (input_act[(i+1)*NBITS*KER_SIZE_X*KER_SIZE_Y-1:(i*NBITS*KER_SIZE_X*KER_SIZE_Y)]),
            .output_act (output_act[(i+1)*NBITS-1:(i*NBITS)])
            );
    end
endgenerate

endmodule


// TODO: only works for kernel size of 2x2
module max_pool_2d_slice
#(
    parameter NBITS = 32,
    parameter KER_SIZE_X = 2,
    parameter KER_SIZE_Y = 2
)

(
    input logic [NBITS*KER_SIZE_X*KER_SIZE_Y-1:0] input_act,
    output logic [NBITS-1:0] output_act
);

logic [NBITS-1:0] max1, max2;

always_comb begin
    max1 = ($signed(input_act[1*NBITS-1:0*NBITS]) > $signed(input_act[2*NBITS-1:1*NBITS])) ? input_act[1*NBITS-1:0*NBITS] : input_act[2*NBITS-1:1*NBITS];
    max2 = ($signed(input_act[3*NBITS-1:2*NBITS]) > $signed(input_act[4*NBITS-1:3*NBITS])) ? input_act[3*NBITS-1:2*NBITS] : input_act[4*NBITS-1:3*NBITS];
    output_act = ($signed(max1) > $signed(max2)) ? max1 : max2;
end

/*
(
    input logic [NBITS*KER_SIZE_X*KER_SIZE_Y-1:0] input_act_slice,
    output logic [NBITS-1:0] local_max
);

genvar i;
generate
  assign local_max = input_act_slice[NBITS-1:0];  // start with the first input as max
  // now loop through all the other inputs comparing with max
    for(i=1; i<(KER_SIZE_X*KER_SIZE_Y); i=i+1) begin
        if ($signed(input_act_slice[(i+1)*NBITS-1:0]) > $signed(local_max))
            local_max = input_act_slice[(i+1)*NBITS-1:0];
    end
endgenerate
*/

endmodule
