module line_buffer_array_k7
#(
    parameter KER_SIZE = 7,
    parameter BITWIDTH = 8,
    parameter AW       = 8,
    parameter PAD      = 1
)
(
    input logic clk,
    input logic rstn,
    input logic [BITWIDTH*KER_SIZE-1:0] pixel_in,
    input logic [3-1:0] col_ptr,
    input logic [3-1:0] init_col_ptr,
    input logic [KER_SIZE-1:0] left_pad_mask,
    input logic [KER_SIZE-1:0] right_pad_mask,
    output logic [BITWIDTH*KER_SIZE*KER_SIZE-1:0] pixel_out   
);

// wires
logic [KER_SIZE*BITWIDTH-1:0] pixel_col [KER_SIZE-1:0];
logic [KER_SIZE*BITWIDTH-1:0] pixel_row [KER_SIZE-1:0];
logic [KER_SIZE*BITWIDTH-1:0] padded_pixel_row [KER_SIZE-1:0];
logic [KER_SIZE*BITWIDTH-1:0] left_padded_pixel_col [KER_SIZE-1:0];
logic [KER_SIZE*BITWIDTH-1:0] right_padded_pixel_col [KER_SIZE-1:0];
logic [KER_SIZE*KER_SIZE*BITWIDTH-1:0] pixel_out_wire;
logic [KER_SIZE*KER_SIZE*BITWIDTH-1:0] stored_pixel_out;
logic ready;

logic [8-1:0] global_col_ptr;
logic ready_reg;

// reg array
genvar i,j;
generate
for (i = 0; i < KER_SIZE; i++) begin
    d_flop #(
        .BITWIDTH (BITWIDTH*KER_SIZE)
    ) reg_inst (
        .clk (clk),
        .rstn (rstn),
        .valid (col_ptr == i),
        .D (pixel_in),
        .Q (pixel_col[i])
    ); // each d_flop stores a column of data

assign left_padded_pixel_col[i] = (left_pad_mask[i]==1)? {KER_SIZE*BITWIDTH{1'b0}} : pixel_col[i];//left padding

end
endgenerate

// reshape
always_comb begin
    case (1'b1)
(col_ptr == 'd4): pixel_out_wire = {pixel_in[7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[3][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[2][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[1][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[0][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[6][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[5][7*BITWIDTH-1:6*BITWIDTH],
                                    pixel_in[6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[3][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[2][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[1][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[0][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[6][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[5][6*BITWIDTH-1:5*BITWIDTH],
                                    pixel_in[5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[3][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[2][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[1][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[0][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[6][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[5][5*BITWIDTH-1:4*BITWIDTH],
                                    pixel_in[4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[3][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[2][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[1][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[0][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[6][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[5][4*BITWIDTH-1:3*BITWIDTH],
                                    pixel_in[3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[3][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[2][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[1][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[0][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[6][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[5][3*BITWIDTH-1:2*BITWIDTH],
                                    pixel_in[2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[3][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[2][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[1][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[0][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[6][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[5][2*BITWIDTH-1:1*BITWIDTH],
                                    pixel_in[1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[3][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[2][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[1][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[0][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[6][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[5][1*BITWIDTH-1:0*BITWIDTH]};
                                    
(col_ptr == 'd3): pixel_out_wire =  {pixel_in[7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[2][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[1][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[0][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[6][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[5][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[4][7*BITWIDTH-1:6*BITWIDTH],
                                    pixel_in[6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[2][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[1][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[0][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[6][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[5][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[4][6*BITWIDTH-1:5*BITWIDTH],
                                    pixel_in[5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[2][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[1][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[0][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[6][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[5][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[4][5*BITWIDTH-1:4*BITWIDTH],
                                    pixel_in[4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[2][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[1][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[0][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[6][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[5][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[4][4*BITWIDTH-1:3*BITWIDTH],
                                    pixel_in[3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[2][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[1][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[0][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[6][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[5][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[4][3*BITWIDTH-1:2*BITWIDTH],
                                    pixel_in[2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[2][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[1][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[0][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[6][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[5][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[4][2*BITWIDTH-1:1*BITWIDTH],
                                    pixel_in[1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[2][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[1][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[0][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[6][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[5][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[4][1*BITWIDTH-1:0*BITWIDTH]};
                                    
(col_ptr == 'd2): pixel_out_wire =  {pixel_in[7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[1][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[0][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[6][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[5][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[4][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[3][7*BITWIDTH-1:6*BITWIDTH],
                                    pixel_in[6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[1][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[0][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[6][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[5][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[4][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[3][6*BITWIDTH-1:5*BITWIDTH],
                                    pixel_in[5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[1][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[0][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[6][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[5][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[4][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[3][5*BITWIDTH-1:4*BITWIDTH],
                                    pixel_in[4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[1][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[0][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[6][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[5][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[4][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[3][4*BITWIDTH-1:3*BITWIDTH],
                                    pixel_in[3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[1][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[0][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[6][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[5][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[4][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[3][3*BITWIDTH-1:2*BITWIDTH],
                                    pixel_in[2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[1][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[0][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[6][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[5][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[4][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[3][2*BITWIDTH-1:1*BITWIDTH],
                                    pixel_in[1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[1][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[0][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[6][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[5][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[4][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[3][1*BITWIDTH-1:0*BITWIDTH]};   
                                    
(col_ptr == 'd1): pixel_out_wire =  {pixel_in[7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[0][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[6][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[5][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[4][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[3][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[2][7*BITWIDTH-1:6*BITWIDTH],
                                    pixel_in[6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[0][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[6][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[5][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[4][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[3][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[2][6*BITWIDTH-1:5*BITWIDTH],
                                    pixel_in[5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[0][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[6][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[5][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[4][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[3][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[2][5*BITWIDTH-1:4*BITWIDTH],
                                    pixel_in[4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[0][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[6][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[5][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[4][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[3][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[2][4*BITWIDTH-1:3*BITWIDTH],
                                    pixel_in[3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[0][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[6][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[5][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[4][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[3][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[2][3*BITWIDTH-1:2*BITWIDTH],
                                    pixel_in[2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[0][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[6][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[5][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[4][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[3][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[2][2*BITWIDTH-1:1*BITWIDTH],
                                    pixel_in[1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[0][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[6][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[5][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[4][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[3][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[2][1*BITWIDTH-1:0*BITWIDTH]}; 
                                    
(col_ptr == 'd0): pixel_out_wire =  {pixel_in[7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[6][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[5][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[4][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[3][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[2][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[1][7*BITWIDTH-1:6*BITWIDTH],
                                    pixel_in[6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[6][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[5][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[4][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[3][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[2][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[1][6*BITWIDTH-1:5*BITWIDTH],
                                    pixel_in[5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[6][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[5][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[4][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[3][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[2][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[1][5*BITWIDTH-1:4*BITWIDTH],
                                    pixel_in[4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[6][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[5][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[4][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[3][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[2][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[1][4*BITWIDTH-1:3*BITWIDTH],
                                    pixel_in[3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[6][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[5][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[4][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[3][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[2][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[1][3*BITWIDTH-1:2*BITWIDTH],
                                    pixel_in[2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[6][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[5][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[4][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[3][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[2][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[1][2*BITWIDTH-1:1*BITWIDTH],
                                    pixel_in[1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[6][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[5][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[4][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[3][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[2][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[1][1*BITWIDTH-1:0*BITWIDTH]};

(col_ptr == 'd5): pixel_out_wire = {pixel_in[7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[4][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[3][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[2][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[1][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[0][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[6][7*BITWIDTH-1:6*BITWIDTH],
                                    pixel_in[6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[4][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[3][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[2][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[1][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[0][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[6][6*BITWIDTH-1:5*BITWIDTH],
                                    pixel_in[5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[4][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[3][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[2][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[1][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[0][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[6][5*BITWIDTH-1:4*BITWIDTH],
                                    pixel_in[4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[4][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[3][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[2][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[1][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[0][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[6][4*BITWIDTH-1:3*BITWIDTH],
                                    pixel_in[3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[4][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[3][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[2][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[1][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[0][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[6][3*BITWIDTH-1:2*BITWIDTH],
                                    pixel_in[2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[4][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[3][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[2][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[1][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[0][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[6][2*BITWIDTH-1:1*BITWIDTH],
                                    pixel_in[1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[4][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[3][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[2][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[1][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[0][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[6][1*BITWIDTH-1:0*BITWIDTH]};

(col_ptr == 'd6): pixel_out_wire = {pixel_in[7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[5][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[4][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[3][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[2][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[1][7*BITWIDTH-1:6*BITWIDTH],left_padded_pixel_col[0][7*BITWIDTH-1:6*BITWIDTH],
                                    pixel_in[6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[5][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[4][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[3][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[2][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[1][6*BITWIDTH-1:5*BITWIDTH],left_padded_pixel_col[0][6*BITWIDTH-1:5*BITWIDTH],
                                    pixel_in[5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[5][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[4][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[3][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[2][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[1][5*BITWIDTH-1:4*BITWIDTH],left_padded_pixel_col[0][5*BITWIDTH-1:4*BITWIDTH],
                                    pixel_in[4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[5][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[4][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[3][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[2][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[1][4*BITWIDTH-1:3*BITWIDTH],left_padded_pixel_col[0][4*BITWIDTH-1:3*BITWIDTH],
                                    pixel_in[3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[5][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[4][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[3][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[2][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[1][3*BITWIDTH-1:2*BITWIDTH],left_padded_pixel_col[0][3*BITWIDTH-1:2*BITWIDTH],
                                    pixel_in[2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[5][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[4][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[3][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[2][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[1][2*BITWIDTH-1:1*BITWIDTH],left_padded_pixel_col[0][2*BITWIDTH-1:1*BITWIDTH],
                                    pixel_in[1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[5][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[4][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[3][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[2][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[1][1*BITWIDTH-1:0*BITWIDTH],left_padded_pixel_col[0][1*BITWIDTH-1:0*BITWIDTH]};
        default:          pixel_out_wire = '0;
    endcase
end



// output flop
always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        stored_pixel_out <= '0;
    end
    else if (ready) begin
        stored_pixel_out <= pixel_out_wire;
    end
    else begin
        stored_pixel_out <= stored_pixel_out;
    end
end

generate
	for (i = 0; i < KER_SIZE ; i++) begin
		assign pixel_row[i] = stored_pixel_out[KER_SIZE*BITWIDTH*i+:KER_SIZE*BITWIDTH];
		assign pixel_out[KER_SIZE*BITWIDTH*i+:KER_SIZE*BITWIDTH] = padded_pixel_row[i];
	end
endgenerate

generate
	for (i = 0; i < KER_SIZE ; i++) 
	for (j = 0; j < KER_SIZE ; j++) 
		assign padded_pixel_row[i][BITWIDTH*j+:BITWIDTH] = right_pad_mask[j] ?{BITWIDTH{1'b0}}:pixel_row[i][BITWIDTH*j+:BITWIDTH];
endgenerate


assign ready =  init_col_ptr == KER_SIZE-1;

endmodule

module line_buffer_array_k5
#(
    parameter KER_SIZE = 5,
    parameter BITWIDTH = 8,
    parameter AW       = 8,
    parameter PAD      = 1
)
(
    input logic clk,
    input logic rstn,
    input logic [BITWIDTH*KER_SIZE-1:0] pixel_in,
    input logic [3-1:0] col_ptr,
    input logic [3-1:0] init_col_ptr,
    input logic [KER_SIZE-1:0] left_pad_mask,
    input logic [KER_SIZE-1:0] right_pad_mask,
    output logic [BITWIDTH*KER_SIZE*KER_SIZE-1:0] pixel_out   
);

// wires
logic [KER_SIZE*BITWIDTH-1:0] pixel_col [KER_SIZE-1:0];
logic [KER_SIZE*BITWIDTH-1:0] pixel_row [KER_SIZE-1:0];
logic [KER_SIZE*BITWIDTH-1:0] padded_pixel_row [KER_SIZE-1:0];
logic [KER_SIZE*BITWIDTH-1:0] left_padded_pixel_col [KER_SIZE-1:0];
logic [KER_SIZE*BITWIDTH-1:0] right_padded_pixel_col [KER_SIZE-1:0];
logic [KER_SIZE*KER_SIZE*BITWIDTH-1:0] pixel_out_wire;
logic [KER_SIZE*KER_SIZE*BITWIDTH-1:0] stored_pixel_out;
logic ready;

logic [8-1:0] global_col_ptr;
logic ready_reg;

// reg array
genvar i,j;
generate
for (i = 0; i < KER_SIZE; i++) begin
    d_flop #(
        .BITWIDTH (BITWIDTH*KER_SIZE)
    ) reg_inst (
        .clk (clk),
        .rstn (rstn),
        .valid (col_ptr == i),
        .D (pixel_in),
        .Q (pixel_col[i])
    ); // each d_flop stores a column of data

assign left_padded_pixel_col[i] = (left_pad_mask[i]==1)? {KER_SIZE*BITWIDTH{1'b0}} : pixel_col[i];//left padding

end
endgenerate

// reshape
always_comb begin
    case (1'b1)
        (col_ptr == 'd0): pixel_out_wire = {pixel_in[5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[4][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[3][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[2][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[1][5*BITWIDTH-1:4*BITWIDTH],		pixel_in[4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[4][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[3][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[2][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[1][4*BITWIDTH-1:3*BITWIDTH],		pixel_in[3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[4][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[3][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[2][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[1][3*BITWIDTH-1:2*BITWIDTH],		pixel_in[2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[4][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[3][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[2][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[1][2*BITWIDTH-1:BITWIDTH],		pixel_in[BITWIDTH-1:0],		left_padded_pixel_col[4][BITWIDTH-1:0],		left_padded_pixel_col[3][BITWIDTH-1:0],		left_padded_pixel_col[2][BITWIDTH-1:0],		left_padded_pixel_col[1][BITWIDTH-1:0]};
        (col_ptr == 'd1): pixel_out_wire = {pixel_in[5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[0][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[4][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[3][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[2][5*BITWIDTH-1:4*BITWIDTH],		pixel_in[4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[0][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[4][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[3][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[2][4*BITWIDTH-1:3*BITWIDTH],		pixel_in[3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[0][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[4][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[3][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[2][3*BITWIDTH-1:2*BITWIDTH],		pixel_in[2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[0][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[4][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[3][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[2][2*BITWIDTH-1:BITWIDTH],		pixel_in[BITWIDTH-1:0],		left_padded_pixel_col[0][BITWIDTH-1:0],		left_padded_pixel_col[4][BITWIDTH-1:0],		left_padded_pixel_col[3][BITWIDTH-1:0],		left_padded_pixel_col[2][BITWIDTH-1:0]};
        (col_ptr == 'd2): pixel_out_wire = {pixel_in[5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[1][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[0][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[4][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[3][5*BITWIDTH-1:4*BITWIDTH],		pixel_in[4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[1][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[0][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[4][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[3][4*BITWIDTH-1:3*BITWIDTH],		pixel_in[3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[1][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[0][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[4][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[3][3*BITWIDTH-1:2*BITWIDTH],		pixel_in[2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[1][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[0][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[4][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[3][2*BITWIDTH-1:BITWIDTH],		pixel_in[BITWIDTH-1:0],		left_padded_pixel_col[1][BITWIDTH-1:0],		left_padded_pixel_col[0][BITWIDTH-1:0],		left_padded_pixel_col[4][BITWIDTH-1:0],		left_padded_pixel_col[3][BITWIDTH-1:0]};
        (col_ptr == 'd3): pixel_out_wire = {pixel_in[5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[2][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[1][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[0][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[4][5*BITWIDTH-1:4*BITWIDTH],		pixel_in[4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[2][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[1][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[0][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[4][4*BITWIDTH-1:3*BITWIDTH],		pixel_in[3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[2][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[1][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[0][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[4][3*BITWIDTH-1:2*BITWIDTH],		pixel_in[2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[2][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[1][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[0][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[4][2*BITWIDTH-1:BITWIDTH],		pixel_in[BITWIDTH-1:0],		left_padded_pixel_col[2][BITWIDTH-1:0],		left_padded_pixel_col[1][BITWIDTH-1:0],		left_padded_pixel_col[0][BITWIDTH-1:0],		left_padded_pixel_col[4][BITWIDTH-1:0]};
        (col_ptr == 'd4): pixel_out_wire = {pixel_in[5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[3][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[2][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[1][5*BITWIDTH-1:4*BITWIDTH],		left_padded_pixel_col[0][5*BITWIDTH-1:4*BITWIDTH],		pixel_in[4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[3][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[2][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[1][4*BITWIDTH-1:3*BITWIDTH],		left_padded_pixel_col[0][4*BITWIDTH-1:3*BITWIDTH],		pixel_in[3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[3][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[2][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[1][3*BITWIDTH-1:2*BITWIDTH],		left_padded_pixel_col[0][3*BITWIDTH-1:2*BITWIDTH],		pixel_in[2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[3][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[2][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[1][2*BITWIDTH-1:BITWIDTH],		left_padded_pixel_col[0][2*BITWIDTH-1:BITWIDTH],		pixel_in[BITWIDTH-1:0],		left_padded_pixel_col[3][BITWIDTH-1:0],		left_padded_pixel_col[2][BITWIDTH-1:0],		left_padded_pixel_col[1][BITWIDTH-1:0],		left_padded_pixel_col[0][BITWIDTH-1:0]};
        default:          pixel_out_wire = '0;
    endcase
end



// output flop
always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        stored_pixel_out <= '0;
    end
    else if (ready) begin
        stored_pixel_out <= pixel_out_wire;
    end
    else begin
        stored_pixel_out <= stored_pixel_out;
    end
end

generate
	for (i = 0; i < KER_SIZE ; i++) begin
		assign pixel_row[i] = stored_pixel_out[KER_SIZE*BITWIDTH*i+:KER_SIZE*BITWIDTH];
		assign pixel_out[KER_SIZE*BITWIDTH*i+:KER_SIZE*BITWIDTH] = padded_pixel_row[i];
	end
endgenerate

generate
	for (i = 0; i < KER_SIZE ; i++) 
	for (j = 0; j < KER_SIZE ; j++) 
		assign padded_pixel_row[i][BITWIDTH*j+:BITWIDTH] = right_pad_mask[j] ?{BITWIDTH{1'b0}}:pixel_row[i][BITWIDTH*j+:BITWIDTH];
endgenerate


assign ready =  init_col_ptr == KER_SIZE-1;

endmodule

module line_buffer_array_k3
#(
    parameter   KER_SIZE    = 3,
    parameter BITWIDTH  = 8,
    parameter AW                = 8,
		parameter PAD = 1								 
)
(
    input logic clk,
    input logic rstn,
    input logic [BITWIDTH*KER_SIZE-1:0] pixel_in,
    input logic [3-1:0] col_ptr,
    input logic [3-1:0] init_col_ptr,
		input logic [KER_SIZE-1:0] left_pad_mask,																				 
		input logic [KER_SIZE-1:0] right_pad_mask,																					
    output logic [BITWIDTH*KER_SIZE*KER_SIZE-1:0] pixel_out   
);

// wires
logic [KER_SIZE*BITWIDTH-1:0] pixel_col [KER_SIZE-1:0];
logic [KER_SIZE*BITWIDTH-1:0] pixel_row [KER_SIZE-1:0];
logic [KER_SIZE*BITWIDTH-1:0] padded_pixel_row [KER_SIZE-1:0];
logic [KER_SIZE*BITWIDTH-1:0] left_padded_pixel_col [KER_SIZE-1:0];
logic [KER_SIZE*BITWIDTH-1:0] right_padded_pixel_col [KER_SIZE-1:0];
logic [KER_SIZE*KER_SIZE*BITWIDTH-1:0] pixel_out_wire;
logic [KER_SIZE*KER_SIZE*BITWIDTH-1:0] stored_pixel_out;
logic ready;

logic [8-1:0] global_col_ptr;
logic ready_reg;													 
// reg array
genvar i,j;
generate
for (i = 0; i < KER_SIZE; i++) begin
    d_flop #(
        .BITWIDTH (BITWIDTH*KER_SIZE)
    ) reg_inst (
        .clk (clk),
        .rstn (rstn),
        .valid (col_ptr == i),
        .D (pixel_in),
        .Q (pixel_col[i])
    ); // each d_flop stores a column of data

assign left_padded_pixel_col[i] = (left_pad_mask[i]==1)? {KER_SIZE*BITWIDTH{1'b0}} : pixel_col[i];//left padding

end
endgenerate

// reshape
always_comb begin
    case (1'b1)
			(col_ptr == 'd0): pixel_out_wire = {pixel_in[3*BITWIDTH-1:2*BITWIDTH],																															left_padded_pixel_col[2][3*BITWIDTH-1:2*BITWIDTH],												left_padded_pixel_col[1][3*BITWIDTH-1:2*BITWIDTH],												pixel_in[2*BITWIDTH-1:BITWIDTH],												left_padded_pixel_col[2][2*BITWIDTH-1:BITWIDTH],												left_padded_pixel_col[1][2*BITWIDTH-1:BITWIDTH],												pixel_in[BITWIDTH-1:0],												left_padded_pixel_col[2][BITWIDTH-1:0],												left_padded_pixel_col[1][BITWIDTH-1:0]};
			(col_ptr == 'd1): pixel_out_wire = {pixel_in[3*BITWIDTH-1:2*BITWIDTH],												left_padded_pixel_col[0][3*BITWIDTH-1:2*BITWIDTH],												left_padded_pixel_col[2][3*BITWIDTH-1:2*BITWIDTH],												pixel_in[2*BITWIDTH-1:BITWIDTH],												left_padded_pixel_col[0][2*BITWIDTH-1:BITWIDTH],												left_padded_pixel_col[2][2*BITWIDTH-1:BITWIDTH],												pixel_in[BITWIDTH-1:0],												left_padded_pixel_col[0][BITWIDTH-1:0],												left_padded_pixel_col[2][BITWIDTH-1:0]};
			(col_ptr == 'd2): pixel_out_wire = {pixel_in[3*BITWIDTH-1:2*BITWIDTH],												left_padded_pixel_col[1][3*BITWIDTH-1:2*BITWIDTH],												left_padded_pixel_col[0][3*BITWIDTH-1:2*BITWIDTH],												pixel_in[2*BITWIDTH-1:BITWIDTH],												left_padded_pixel_col[1][2*BITWIDTH-1:BITWIDTH],												left_padded_pixel_col[0][2*BITWIDTH-1:BITWIDTH],												pixel_in[BITWIDTH-1:0],												left_padded_pixel_col[1][BITWIDTH-1:0],												left_padded_pixel_col[0][BITWIDTH-1:0]};        
			default:          									pixel_out_wire = '0;
    endcase
end

// output flop
always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        stored_pixel_out <= '0;
    end
    else if (ready) begin
        stored_pixel_out <= pixel_out_wire;
    end
    else begin
        stored_pixel_out <= stored_pixel_out;
    end
end

generate
	for (i = 0; i < KER_SIZE ; i++) begin
		assign pixel_row[i] = stored_pixel_out[KER_SIZE*BITWIDTH*i+:KER_SIZE*BITWIDTH];
		assign pixel_out[KER_SIZE*BITWIDTH*i+:KER_SIZE*BITWIDTH] = padded_pixel_row[i];
	end
endgenerate

generate
	for (i = 0; i < KER_SIZE ; i++) 
	for (j = 0; j < KER_SIZE ; j++) 
		assign padded_pixel_row[i][BITWIDTH*j+:BITWIDTH] = right_pad_mask[j] ?{BITWIDTH{1'b0}}:pixel_row[i][BITWIDTH*j+:BITWIDTH];
endgenerate


assign ready =  init_col_ptr == KER_SIZE-1;

endmodule

module line_buffer_array_k2
#(
    parameter KER_SIZE = 3,
    parameter BITWIDTH = 8,
    parameter AW = 8
)
(
    input logic clk,
    input logic rstn,
    input logic [BITWIDTH*KER_SIZE-1:0] pixel_in,
    input logic [3-1:0] col_ptr,
    input logic [3-1:0] init_col_ptr,
    output logic [BITWIDTH*KER_SIZE*KER_SIZE-1:0] pixel_out
);

// wires
logic [KER_SIZE*BITWIDTH-1:0] pixel_col [KER_SIZE-1:0];
logic [KER_SIZE*KER_SIZE*BITWIDTH-1:0] pixel_out_wire;
logic ready;

// reg array
genvar i;
generate
for (i=0;i<KER_SIZE;i++) begin
    d_flop #(
        .BITWIDTH (BITWIDTH*KER_SIZE)
    ) reg_inst (
        .clk (clk),
        .rstn (rstn),
        .valid (col_ptr == i),
        .D (pixel_in),
        .Q (pixel_col[i])
    ); // each d_flop stores a column of data
end
endgenerate

// reshape
always_comb begin
    case (1'b1)
        (col_ptr == 'd0): pixel_out_wire = {pixel_in[2*BITWIDTH-1:BITWIDTH],pixel_col[1][2*BITWIDTH-1:BITWIDTH],pixel_in[BITWIDTH-1:0],pixel_col[1][BITWIDTH-1:0]};
        (col_ptr == 'd1): pixel_out_wire = {pixel_in[2*BITWIDTH-1:BITWIDTH],pixel_col[0][2*BITWIDTH-1:BITWIDTH],pixel_in[BITWIDTH-1:0],pixel_col[0][BITWIDTH-1:0]};
        default:          pixel_out_wire = '0;
    endcase
end

// output flop
always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        pixel_out <= '0;
    end
    else if (ready) begin
        pixel_out <= pixel_out_wire;
    end
    else begin
        pixel_out <= pixel_out;
    end
end

assign ready = (init_col_ptr == KER_SIZE-1);

endmodule

// d_flop
module d_flop
#(
    parameter BITWIDTH = 8
)
(
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [BITWIDTH-1:0] D,
    output logic [BITWIDTH-1:0] Q
);

always_ff @(posedge clk or negedge rstn) begin
    if (rstn == 0) begin
        Q <= '0;
    end
    else if (valid == 1) begin
        Q <= D;
    end
    else begin
        Q <= Q;
    end     
end

endmodule
