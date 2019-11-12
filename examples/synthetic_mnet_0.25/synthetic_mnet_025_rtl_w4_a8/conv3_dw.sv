module conv3_dw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [1152-1:0] input_act,
    output logic [128-1:0] output_act,
    output logic ready
);

logic [1152-1:0] input_act_ff;
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

logic [71:0] input_fmap_0;
assign input_fmap_0 = input_act_ff[71:0];
logic [71:0] input_fmap_1;
assign input_fmap_1 = input_act_ff[143:72];
logic [71:0] input_fmap_2;
assign input_fmap_2 = input_act_ff[215:144];
logic [71:0] input_fmap_3;
assign input_fmap_3 = input_act_ff[287:216];
logic [71:0] input_fmap_4;
assign input_fmap_4 = input_act_ff[359:288];
logic [71:0] input_fmap_5;
assign input_fmap_5 = input_act_ff[431:360];
logic [71:0] input_fmap_6;
assign input_fmap_6 = input_act_ff[503:432];
logic [71:0] input_fmap_7;
assign input_fmap_7 = input_act_ff[575:504];
logic [71:0] input_fmap_8;
assign input_fmap_8 = input_act_ff[647:576];
logic [71:0] input_fmap_9;
assign input_fmap_9 = input_act_ff[719:648];
logic [71:0] input_fmap_10;
assign input_fmap_10 = input_act_ff[791:720];
logic [71:0] input_fmap_11;
assign input_fmap_11 = input_act_ff[863:792];
logic [71:0] input_fmap_12;
assign input_fmap_12 = input_act_ff[935:864];
logic [71:0] input_fmap_13;
assign input_fmap_13 = input_act_ff[1007:936];
logic [71:0] input_fmap_14;
assign input_fmap_14 = input_act_ff[1079:1008];
logic [71:0] input_fmap_15;
assign input_fmap_15 = input_act_ff[1151:1080];

logic signed [31:0] dw_conv_mac_0;
assign dw_conv_mac_0 = 
	 3'sd 2 * $signed(input_fmap_0[7:0]) +
	 4'sd 6 * $signed(input_fmap_0[15:8]) +
	 4'sd 6 * $signed(input_fmap_0[23:16]) +
	 3'sd 3 * $signed(input_fmap_0[31:24]) +
	 3'sd 2 * $signed(input_fmap_0[39:32]) +
	 3'sd 3 * $signed(input_fmap_0[47:40]) +
	 3'sd 3 * $signed(input_fmap_0[55:48]) +
	 4'sd 7 * $signed(input_fmap_0[63:56]) +
	 3'sd 2 * $signed(input_fmap_0[71:64]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 4'sd 6 * $signed(input_fmap_1[15:8]) +
	 4'sd 6 * $signed(input_fmap_1[23:16]) +
	 3'sd 2 * $signed(input_fmap_1[31:24]) +
	 3'sd 2 * $signed(input_fmap_1[39:32]) +
	 4'sd 4 * $signed(input_fmap_1[47:40]) +
	 3'sd 2 * $signed(input_fmap_1[55:48]) +
	 2'sd 1 * $signed(input_fmap_1[63:56]) +
	 3'sd 2 * $signed(input_fmap_1[71:64]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 3'sd 2 * $signed(input_fmap_2[7:0]) +
	 2'sd 1 * $signed(input_fmap_2[15:8]) +
	 4'sd 7 * $signed(input_fmap_2[23:16]) +
	 4'sd 4 * $signed(input_fmap_2[31:24]) +
	 5'sd 8 * $signed(input_fmap_2[39:32]) +
	 4'sd 4 * $signed(input_fmap_2[55:48]) +
	 4'sd 4 * $signed(input_fmap_2[63:56]) +
	 4'sd 6 * $signed(input_fmap_2[71:64]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 4'sd 4 * $signed(input_fmap_3[7:0]) +
	 3'sd 2 * $signed(input_fmap_3[15:8]) +
	 3'sd 2 * $signed(input_fmap_3[23:16]) +
	 4'sd 5 * $signed(input_fmap_3[31:24]) +
	 4'sd 6 * $signed(input_fmap_3[39:32]) +
	 3'sd 3 * $signed(input_fmap_3[47:40]) +
	 4'sd 6 * $signed(input_fmap_3[55:48]) +
	 4'sd 5 * $signed(input_fmap_3[63:56]) +
	 2'sd 1 * $signed(input_fmap_3[71:64]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 4'sd 5 * $signed(input_fmap_4[7:0]) +
	 4'sd 6 * $signed(input_fmap_4[15:8]) +
	 3'sd 3 * $signed(input_fmap_4[23:16]) +
	 5'sd 8 * $signed(input_fmap_4[31:24]) +
	 4'sd 7 * $signed(input_fmap_4[39:32]) +
	 4'sd 6 * $signed(input_fmap_4[47:40]) +
	 4'sd 7 * $signed(input_fmap_4[55:48]) +
	 4'sd 5 * $signed(input_fmap_4[63:56]) +
	 3'sd 3 * $signed(input_fmap_4[71:64]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 4'sd 5 * $signed(input_fmap_5[7:0]) +
	 4'sd 4 * $signed(input_fmap_5[15:8]) +
	 2'sd 1 * $signed(input_fmap_5[23:16]) +
	 3'sd 3 * $signed(input_fmap_5[31:24]) +
	 4'sd 4 * $signed(input_fmap_5[39:32]) +
	 3'sd 3 * $signed(input_fmap_5[47:40]) +
	 3'sd 3 * $signed(input_fmap_5[63:56]) +
	 4'sd 6 * $signed(input_fmap_5[71:64]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 4'sd 5 * $signed(input_fmap_6[7:0]) +
	 3'sd 3 * $signed(input_fmap_6[15:8]) +
	 4'sd 6 * $signed(input_fmap_6[23:16]) +
	 3'sd 3 * $signed(input_fmap_6[31:24]) +
	 2'sd 1 * $signed(input_fmap_6[39:32]) +
	 4'sd 4 * $signed(input_fmap_6[47:40]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 3'sd 3 * $signed(input_fmap_7[7:0]) +
	 4'sd 7 * $signed(input_fmap_7[15:8]) +
	 3'sd 3 * $signed(input_fmap_7[23:16]) +
	 4'sd 4 * $signed(input_fmap_7[31:24]) +
	 5'sd 8 * $signed(input_fmap_7[39:32]) +
	 3'sd 2 * $signed(input_fmap_7[47:40]) +
	 3'sd 3 * $signed(input_fmap_7[55:48]) +
	 3'sd 2 * $signed(input_fmap_7[63:56]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 3'sd 3 * $signed(input_fmap_8[7:0]) +
	 3'sd 2 * $signed(input_fmap_8[15:8]) +
	 4'sd 5 * $signed(input_fmap_8[23:16]) +
	 4'sd 4 * $signed(input_fmap_8[31:24]) +
	 4'sd 7 * $signed(input_fmap_8[39:32]) +
	 5'sd 8 * $signed(input_fmap_8[47:40]) +
	 4'sd 6 * $signed(input_fmap_8[55:48]) +
	 3'sd 3 * $signed(input_fmap_8[63:56]) +
	 2'sd 1 * $signed(input_fmap_8[71:64]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 4'sd 7 * $signed(input_fmap_9[7:0]) +
	 4'sd 6 * $signed(input_fmap_9[15:8]) +
	 3'sd 2 * $signed(input_fmap_9[23:16]) +
	 2'sd 1 * $signed(input_fmap_9[31:24]) +
	 4'sd 7 * $signed(input_fmap_9[39:32]) +
	 4'sd 5 * $signed(input_fmap_9[47:40]) +
	 4'sd 5 * $signed(input_fmap_9[55:48]) +
	 3'sd 3 * $signed(input_fmap_9[63:56]) +
	 5'sd 8 * $signed(input_fmap_9[71:64]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 4'sd 4 * $signed(input_fmap_10[7:0]) +
	 3'sd 3 * $signed(input_fmap_10[15:8]) +
	 2'sd 1 * $signed(input_fmap_10[23:16]) +
	 3'sd 2 * $signed(input_fmap_10[31:24]) +
	 4'sd 7 * $signed(input_fmap_10[39:32]) +
	 3'sd 3 * $signed(input_fmap_10[47:40]) +
	 4'sd 7 * $signed(input_fmap_10[55:48]) +
	 4'sd 6 * $signed(input_fmap_10[71:64]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 4'sd 4 * $signed(input_fmap_11[7:0]) +
	 4'sd 6 * $signed(input_fmap_11[15:8]) +
	 4'sd 6 * $signed(input_fmap_11[23:16]) +
	 2'sd 1 * $signed(input_fmap_11[31:24]) +
	 4'sd 7 * $signed(input_fmap_11[39:32]) +
	 3'sd 2 * $signed(input_fmap_11[47:40]) +
	 2'sd 1 * $signed(input_fmap_11[55:48]) +
	 4'sd 6 * $signed(input_fmap_11[63:56]) +
	 3'sd 2 * $signed(input_fmap_11[71:64]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 3'sd 2 * $signed(input_fmap_12[15:8]) +
	 4'sd 4 * $signed(input_fmap_12[23:16]) +
	 4'sd 6 * $signed(input_fmap_12[31:24]) +
	 3'sd 2 * $signed(input_fmap_12[39:32]) +
	 3'sd 3 * $signed(input_fmap_12[47:40]) +
	 4'sd 6 * $signed(input_fmap_12[55:48]) +
	 3'sd 2 * $signed(input_fmap_12[63:56]) +
	 3'sd 3 * $signed(input_fmap_12[71:64]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 4'sd 4 * $signed(input_fmap_13[7:0]) +
	 4'sd 6 * $signed(input_fmap_13[15:8]) +
	 3'sd 3 * $signed(input_fmap_13[23:16]) +
	 4'sd 7 * $signed(input_fmap_13[31:24]) +
	 3'sd 3 * $signed(input_fmap_13[39:32]) +
	 3'sd 3 * $signed(input_fmap_13[47:40]) +
	 4'sd 5 * $signed(input_fmap_13[55:48]) +
	 3'sd 2 * $signed(input_fmap_13[63:56]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 4'sd 6 * $signed(input_fmap_14[7:0]) +
	 4'sd 4 * $signed(input_fmap_14[15:8]) +
	 5'sd 8 * $signed(input_fmap_14[23:16]) +
	 4'sd 6 * $signed(input_fmap_14[31:24]) +
	 3'sd 3 * $signed(input_fmap_14[39:32]) +
	 4'sd 6 * $signed(input_fmap_14[47:40]) +
	 3'sd 3 * $signed(input_fmap_14[55:48]) +
	 4'sd 4 * $signed(input_fmap_14[63:56]) +
	 4'sd 7 * $signed(input_fmap_14[71:64]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 2'sd 1 * $signed(input_fmap_15[7:0]) +
	 2'sd 1 * $signed(input_fmap_15[15:8]) +
	 3'sd 3 * $signed(input_fmap_15[31:24]) +
	 3'sd 2 * $signed(input_fmap_15[39:32]) +
	 4'sd 4 * $signed(input_fmap_15[47:40]) +
	 3'sd 2 * $signed(input_fmap_15[55:48]) +
	 4'sd 5 * $signed(input_fmap_15[63:56]) +
	 4'sd 7 * $signed(input_fmap_15[71:64]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 4'd6;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 4'd5;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 3'd3;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 4'd7;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 3'd3;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 3'd3;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 4'd6;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 2'd1;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 4'd4;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 2'd1;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 4'd6;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 3'd3;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 2'd1;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 4'd6;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 4'd5;

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
