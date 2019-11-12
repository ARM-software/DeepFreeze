module conv2_pw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [64-1:0] input_act,
    output logic [128-1:0] output_act,
    output logic ready
);

logic [64-1:0] input_act_ff;
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

logic [7:0] input_fmap_0;
assign input_fmap_0 = input_act_ff[7:0];
logic [7:0] input_fmap_1;
assign input_fmap_1 = input_act_ff[15:8];
logic [7:0] input_fmap_2;
assign input_fmap_2 = input_act_ff[23:16];
logic [7:0] input_fmap_3;
assign input_fmap_3 = input_act_ff[31:24];
logic [7:0] input_fmap_4;
assign input_fmap_4 = input_act_ff[39:32];
logic [7:0] input_fmap_5;
assign input_fmap_5 = input_act_ff[47:40];
logic [7:0] input_fmap_6;
assign input_fmap_6 = input_act_ff[55:48];
logic [7:0] input_fmap_7;
assign input_fmap_7 = input_act_ff[63:56];

logic signed [31:0] conv_mac_0;
assign conv_mac_0 = 
	( 4'sd 4) * $signed(input_fmap_0[7:0]) +
	( 4'sd 5) * $signed(input_fmap_1[7:0]) +
	( 4'sd 4) * $signed(input_fmap_2[7:0]) +
	( 4'sd 6) * $signed(input_fmap_3[7:0]) +
	( 4'sd 7) * $signed(input_fmap_4[7:0]) +
	( 4'sd 4) * $signed(input_fmap_5[7:0]) +
	( 5'sd 8) * $signed(input_fmap_6[7:0]) +
	( 5'sd 8) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 4'sd 7) * $signed(input_fmap_0[7:0]) +
	( 4'sd 4) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 4'sd 4) * $signed(input_fmap_5[7:0]) +
	( 5'sd 8) * $signed(input_fmap_6[7:0]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 4'sd 5) * $signed(input_fmap_1[7:0]) +
	( 4'sd 7) * $signed(input_fmap_2[7:0]) +
	( 4'sd 6) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 4'sd 7) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 4'sd 4) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 5'sd 8) * $signed(input_fmap_2[7:0]) +
	( 4'sd 4) * $signed(input_fmap_3[7:0]) +
	( 3'sd 3) * $signed(input_fmap_4[7:0]) +
	( 5'sd 8) * $signed(input_fmap_5[7:0]) +
	( 4'sd 5) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 3) * $signed(input_fmap_1[7:0]) +
	( 4'sd 7) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 4'sd 7) * $signed(input_fmap_4[7:0]) +
	( 3'sd 3) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 3'sd 3) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 4'sd 7) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 4'sd 6) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 4'sd 5) * $signed(input_fmap_5[7:0]) +
	( 4'sd 7) * $signed(input_fmap_6[7:0]) +
	( 4'sd 6) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 4'sd 7) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 3'sd 3) * $signed(input_fmap_4[7:0]) +
	( 4'sd 6) * $signed(input_fmap_5[7:0]) +
	( 4'sd 4) * $signed(input_fmap_6[7:0]) +
	( 4'sd 5) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 4'sd 4) * $signed(input_fmap_0[7:0]) +
	( 4'sd 6) * $signed(input_fmap_1[7:0]) +
	( 4'sd 6) * $signed(input_fmap_2[7:0]) +
	( 4'sd 4) * $signed(input_fmap_3[7:0]) +
	( 5'sd 8) * $signed(input_fmap_4[7:0]) +
	( 4'sd 5) * $signed(input_fmap_5[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_8;
assign conv_mac_8 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 4'sd 7) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 4'sd 6) * $signed(input_fmap_3[7:0]) +
	( 3'sd 3) * $signed(input_fmap_4[7:0]) +
	( 3'sd 3) * $signed(input_fmap_5[7:0]) +
	( 4'sd 7) * $signed(input_fmap_6[7:0]) +
	( 4'sd 6) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_9;
assign conv_mac_9 = 
	( 4'sd 4) * $signed(input_fmap_0[7:0]) +
	( 3'sd 3) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 4'sd 5) * $signed(input_fmap_4[7:0]) +
	( 3'sd 3) * $signed(input_fmap_5[7:0]) +
	( 4'sd 6) * $signed(input_fmap_6[7:0]) +
	( 4'sd 6) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_10;
assign conv_mac_10 = 
	( 4'sd 6) * $signed(input_fmap_0[7:0]) +
	( 4'sd 5) * $signed(input_fmap_1[7:0]) +
	( 4'sd 6) * $signed(input_fmap_2[7:0]) +
	( 4'sd 5) * $signed(input_fmap_3[7:0]) +
	( 4'sd 7) * $signed(input_fmap_4[7:0]) +
	( 4'sd 5) * $signed(input_fmap_5[7:0]) +
	( 4'sd 4) * $signed(input_fmap_6[7:0]) +
	( 4'sd 6) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_11;
assign conv_mac_11 = 
	( 4'sd 7) * $signed(input_fmap_1[7:0]) +
	( 3'sd 3) * $signed(input_fmap_2[7:0]) +
	( 4'sd 7) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 5'sd 8) * $signed(input_fmap_6[7:0]) +
	( 3'sd 3) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_12;
assign conv_mac_12 = 
	( 3'sd 3) * $signed(input_fmap_0[7:0]) +
	( 4'sd 5) * $signed(input_fmap_1[7:0]) +
	( 3'sd 3) * $signed(input_fmap_2[7:0]) +
	( 4'sd 7) * $signed(input_fmap_3[7:0]) +
	( 5'sd 8) * $signed(input_fmap_4[7:0]) +
	( 4'sd 7) * $signed(input_fmap_5[7:0]) +
	( 4'sd 7) * $signed(input_fmap_6[7:0]) +
	( 5'sd 8) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_13;
assign conv_mac_13 = 
	( 5'sd 8) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 3'sd 3) * $signed(input_fmap_2[7:0]) +
	( 4'sd 5) * $signed(input_fmap_3[7:0]) +
	( 4'sd 7) * $signed(input_fmap_4[7:0]) +
	( 4'sd 5) * $signed(input_fmap_5[7:0]) +
	( 4'sd 6) * $signed(input_fmap_6[7:0]) +
	( 4'sd 6) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_14;
assign conv_mac_14 = 
	( 4'sd 5) * $signed(input_fmap_0[7:0]) +
	( 4'sd 7) * $signed(input_fmap_1[7:0]) +
	( 4'sd 5) * $signed(input_fmap_2[7:0]) +
	( 4'sd 6) * $signed(input_fmap_3[7:0]) +
	( 4'sd 5) * $signed(input_fmap_4[7:0]) +
	( 4'sd 4) * $signed(input_fmap_5[7:0]) +
	( 3'sd 3) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_15;
assign conv_mac_15 = 
	( 3'sd 3) * $signed(input_fmap_0[7:0]) +
	( 4'sd 4) * $signed(input_fmap_1[7:0]) +
	( 5'sd 8) * $signed(input_fmap_2[7:0]) +
	( 4'sd 7) * $signed(input_fmap_3[7:0]) +
	( 5'sd 8) * $signed(input_fmap_4[7:0]) +
	( 4'sd 5) * $signed(input_fmap_5[7:0]) +
	( 4'sd 4) * $signed(input_fmap_7[7:0]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 3'd2;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1 + 2'd1;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 3'd3;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3 + 4'd6;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4 + 4'd4;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5 + 4'd7;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6 + 4'd5;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7 + 4'd5;
logic [31:0] bias_add_8;
assign bias_add_8 = conv_mac_8;
logic [31:0] bias_add_9;
assign bias_add_9 = conv_mac_9 + 4'd7;
logic [31:0] bias_add_10;
assign bias_add_10 = conv_mac_10;
logic [31:0] bias_add_11;
assign bias_add_11 = conv_mac_11 + 3'd2;
logic [31:0] bias_add_12;
assign bias_add_12 = conv_mac_12 + 4'd5;
logic [31:0] bias_add_13;
assign bias_add_13 = conv_mac_13 + 4'd5;
logic [31:0] bias_add_14;
assign bias_add_14 = conv_mac_14 + 3'd2;
logic [31:0] bias_add_15;
assign bias_add_15 = conv_mac_15;

logic [7:0] relu_0;
assign relu_0[7:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[9:3]}} :'d6) : '0;
logic [7:0] relu_1;
assign relu_1[7:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[9:3]}} :'d6) : '0;
logic [7:0] relu_2;
assign relu_2[7:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[9:3]}} :'d6) : '0;
logic [7:0] relu_3;
assign relu_3[7:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[9:3]}} :'d6) : '0;
logic [7:0] relu_4;
assign relu_4[7:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[9:3]}} :'d6) : '0;
logic [7:0] relu_5;
assign relu_5[7:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[9:3]}} :'d6) : '0;
logic [7:0] relu_6;
assign relu_6[7:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[9:3]}} :'d6) : '0;
logic [7:0] relu_7;
assign relu_7[7:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[9:3]}} :'d6) : '0;
logic [7:0] relu_8;
assign relu_8[7:0] = (bias_add_8[31]==0) ? ((bias_add_8<3'd6) ? {{bias_add_8[31],bias_add_8[9:3]}} :'d6) : '0;
logic [7:0] relu_9;
assign relu_9[7:0] = (bias_add_9[31]==0) ? ((bias_add_9<3'd6) ? {{bias_add_9[31],bias_add_9[9:3]}} :'d6) : '0;
logic [7:0] relu_10;
assign relu_10[7:0] = (bias_add_10[31]==0) ? ((bias_add_10<3'd6) ? {{bias_add_10[31],bias_add_10[9:3]}} :'d6) : '0;
logic [7:0] relu_11;
assign relu_11[7:0] = (bias_add_11[31]==0) ? ((bias_add_11<3'd6) ? {{bias_add_11[31],bias_add_11[9:3]}} :'d6) : '0;
logic [7:0] relu_12;
assign relu_12[7:0] = (bias_add_12[31]==0) ? ((bias_add_12<3'd6) ? {{bias_add_12[31],bias_add_12[9:3]}} :'d6) : '0;
logic [7:0] relu_13;
assign relu_13[7:0] = (bias_add_13[31]==0) ? ((bias_add_13<3'd6) ? {{bias_add_13[31],bias_add_13[9:3]}} :'d6) : '0;
logic [7:0] relu_14;
assign relu_14[7:0] = (bias_add_14[31]==0) ? ((bias_add_14<3'd6) ? {{bias_add_14[31],bias_add_14[9:3]}} :'d6) : '0;
logic [7:0] relu_15;
assign relu_15[7:0] = (bias_add_15[31]==0) ? ((bias_add_15<3'd6) ? {{bias_add_15[31],bias_add_15[9:3]}} :'d6) : '0;

assign output_act = {
	relu_15,
	relu_14,
	relu_13,
	relu_12,
	relu_11,
	relu_10,
	relu_9,
	relu_8,
	relu_7,
	relu_6,
	relu_5,
	relu_4,
	relu_3,
	relu_2,
	relu_1,
	relu_0
};

endmodule
