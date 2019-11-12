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
	 7'sd 37 * $signed(input_fmap_0[7:0]) +
	 8'sd 94 * $signed(input_fmap_0[15:8]) +
	 8'sd 92 * $signed(input_fmap_0[23:16]) +
	 7'sd 41 * $signed(input_fmap_0[31:24]) +
	 7'sd 39 * $signed(input_fmap_0[39:32]) +
	 7'sd 54 * $signed(input_fmap_0[47:40]) +
	 7'sd 43 * $signed(input_fmap_0[55:48]) +
	 8'sd 104 * $signed(input_fmap_0[63:56]) +
	 7'sd 33 * $signed(input_fmap_0[71:64]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 3'sd 2 * $signed(input_fmap_1[7:0]) +
	 8'sd 97 * $signed(input_fmap_1[15:8]) +
	 8'sd 100 * $signed(input_fmap_1[23:16]) +
	 7'sd 33 * $signed(input_fmap_1[31:24]) +
	 6'sd 27 * $signed(input_fmap_1[39:32]) +
	 7'sd 59 * $signed(input_fmap_1[47:40]) +
	 7'sd 38 * $signed(input_fmap_1[55:48]) +
	 6'sd 24 * $signed(input_fmap_1[63:56]) +
	 7'sd 32 * $signed(input_fmap_1[71:64]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 6'sd 31 * $signed(input_fmap_2[7:0]) +
	 6'sd 20 * $signed(input_fmap_2[15:8]) +
	 8'sd 117 * $signed(input_fmap_2[23:16]) +
	 8'sd 71 * $signed(input_fmap_2[31:24]) +
	 8'sd 122 * $signed(input_fmap_2[39:32]) +
	 3'sd 3 * $signed(input_fmap_2[47:40]) +
	 8'sd 69 * $signed(input_fmap_2[55:48]) +
	 7'sd 63 * $signed(input_fmap_2[63:56]) +
	 8'sd 104 * $signed(input_fmap_2[71:64]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 8'sd 64 * $signed(input_fmap_3[7:0]) +
	 6'sd 28 * $signed(input_fmap_3[15:8]) +
	 7'sd 38 * $signed(input_fmap_3[23:16]) +
	 8'sd 85 * $signed(input_fmap_3[31:24]) +
	 8'sd 89 * $signed(input_fmap_3[39:32]) +
	 7'sd 43 * $signed(input_fmap_3[47:40]) +
	 8'sd 94 * $signed(input_fmap_3[55:48]) +
	 8'sd 86 * $signed(input_fmap_3[63:56]) +
	 5'sd 9 * $signed(input_fmap_3[71:64]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 8'sd 77 * $signed(input_fmap_4[7:0]) +
	 8'sd 104 * $signed(input_fmap_4[15:8]) +
	 7'sd 52 * $signed(input_fmap_4[23:16]) +
	 8'sd 124 * $signed(input_fmap_4[31:24]) +
	 8'sd 119 * $signed(input_fmap_4[39:32]) +
	 8'sd 88 * $signed(input_fmap_4[47:40]) +
	 8'sd 114 * $signed(input_fmap_4[55:48]) +
	 8'sd 79 * $signed(input_fmap_4[63:56]) +
	 7'sd 54 * $signed(input_fmap_4[71:64]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 8'sd 86 * $signed(input_fmap_5[7:0]) +
	 8'sd 66 * $signed(input_fmap_5[15:8]) +
	 5'sd 10 * $signed(input_fmap_5[23:16]) +
	 7'sd 47 * $signed(input_fmap_5[31:24]) +
	 7'sd 56 * $signed(input_fmap_5[39:32]) +
	 7'sd 44 * $signed(input_fmap_5[47:40]) +
	 5'sd 8 * $signed(input_fmap_5[55:48]) +
	 7'sd 54 * $signed(input_fmap_5[63:56]) +
	 8'sd 102 * $signed(input_fmap_5[71:64]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 8'sd 72 * $signed(input_fmap_6[7:0]) +
	 7'sd 44 * $signed(input_fmap_6[15:8]) +
	 8'sd 102 * $signed(input_fmap_6[23:16]) +
	 7'sd 49 * $signed(input_fmap_6[31:24]) +
	 5'sd 11 * $signed(input_fmap_6[39:32]) +
	 8'sd 72 * $signed(input_fmap_6[47:40]) +
	 3'sd 3 * $signed(input_fmap_6[55:48]) +
	 4'sd 5 * $signed(input_fmap_6[63:56]) +
	 4'sd 6 * $signed(input_fmap_6[71:64]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 7'sd 56 * $signed(input_fmap_7[7:0]) +
	 8'sd 115 * $signed(input_fmap_7[15:8]) +
	 7'sd 43 * $signed(input_fmap_7[23:16]) +
	 8'sd 69 * $signed(input_fmap_7[31:24]) +
	 8'sd 121 * $signed(input_fmap_7[39:32]) +
	 7'sd 37 * $signed(input_fmap_7[47:40]) +
	 7'sd 54 * $signed(input_fmap_7[55:48]) +
	 7'sd 39 * $signed(input_fmap_7[63:56]) +
	 3'sd 3 * $signed(input_fmap_7[71:64]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 7'sd 42 * $signed(input_fmap_8[7:0]) +
	 7'sd 39 * $signed(input_fmap_8[15:8]) +
	 8'sd 76 * $signed(input_fmap_8[23:16]) +
	 8'sd 65 * $signed(input_fmap_8[31:24]) +
	 8'sd 105 * $signed(input_fmap_8[39:32]) +
	 8'sd 127 * $signed(input_fmap_8[47:40]) +
	 8'sd 98 * $signed(input_fmap_8[55:48]) +
	 7'sd 51 * $signed(input_fmap_8[63:56]) +
	 6'sd 18 * $signed(input_fmap_8[71:64]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 8'sd 108 * $signed(input_fmap_9[7:0]) +
	 8'sd 93 * $signed(input_fmap_9[15:8]) +
	 6'sd 30 * $signed(input_fmap_9[23:16]) +
	 6'sd 24 * $signed(input_fmap_9[31:24]) +
	 8'sd 106 * $signed(input_fmap_9[39:32]) +
	 8'sd 86 * $signed(input_fmap_9[47:40]) +
	 8'sd 76 * $signed(input_fmap_9[55:48]) +
	 7'sd 41 * $signed(input_fmap_9[63:56]) +
	 8'sd 123 * $signed(input_fmap_9[71:64]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 7'sd 60 * $signed(input_fmap_10[7:0]) +
	 7'sd 40 * $signed(input_fmap_10[15:8]) +
	 6'sd 23 * $signed(input_fmap_10[23:16]) +
	 6'sd 25 * $signed(input_fmap_10[31:24]) +
	 8'sd 117 * $signed(input_fmap_10[39:32]) +
	 7'sd 44 * $signed(input_fmap_10[47:40]) +
	 8'sd 116 * $signed(input_fmap_10[55:48]) +
	 3'sd 3 * $signed(input_fmap_10[63:56]) +
	 8'sd 101 * $signed(input_fmap_10[71:64]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 7'sd 61 * $signed(input_fmap_11[7:0]) +
	 8'sd 89 * $signed(input_fmap_11[15:8]) +
	 8'sd 98 * $signed(input_fmap_11[23:16]) +
	 6'sd 19 * $signed(input_fmap_11[31:24]) +
	 8'sd 110 * $signed(input_fmap_11[39:32]) +
	 6'sd 25 * $signed(input_fmap_11[47:40]) +
	 5'sd 11 * $signed(input_fmap_11[55:48]) +
	 8'sd 95 * $signed(input_fmap_11[63:56]) +
	 7'sd 35 * $signed(input_fmap_11[71:64]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 3'sd 3 * $signed(input_fmap_12[7:0]) +
	 7'sd 35 * $signed(input_fmap_12[15:8]) +
	 7'sd 59 * $signed(input_fmap_12[23:16]) +
	 8'sd 91 * $signed(input_fmap_12[31:24]) +
	 6'sd 31 * $signed(input_fmap_12[39:32]) +
	 7'sd 44 * $signed(input_fmap_12[47:40]) +
	 8'sd 103 * $signed(input_fmap_12[55:48]) +
	 6'sd 28 * $signed(input_fmap_12[63:56]) +
	 7'sd 48 * $signed(input_fmap_12[71:64]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 7'sd 58 * $signed(input_fmap_13[7:0]) +
	 8'sd 95 * $signed(input_fmap_13[15:8]) +
	 7'sd 50 * $signed(input_fmap_13[23:16]) +
	 8'sd 109 * $signed(input_fmap_13[31:24]) +
	 7'sd 49 * $signed(input_fmap_13[39:32]) +
	 7'sd 46 * $signed(input_fmap_13[47:40]) +
	 8'sd 78 * $signed(input_fmap_13[55:48]) +
	 7'sd 33 * $signed(input_fmap_13[63:56]) +
	 3'sd 3 * $signed(input_fmap_13[71:64]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 8'sd 90 * $signed(input_fmap_14[7:0]) +
	 8'sd 66 * $signed(input_fmap_14[15:8]) +
	 8'sd 127 * $signed(input_fmap_14[23:16]) +
	 8'sd 97 * $signed(input_fmap_14[31:24]) +
	 7'sd 47 * $signed(input_fmap_14[39:32]) +
	 8'sd 93 * $signed(input_fmap_14[47:40]) +
	 7'sd 44 * $signed(input_fmap_14[55:48]) +
	 8'sd 67 * $signed(input_fmap_14[63:56]) +
	 8'sd 119 * $signed(input_fmap_14[71:64]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 6'sd 17 * $signed(input_fmap_15[7:0]) +
	 6'sd 19 * $signed(input_fmap_15[15:8]) +
	 4'sd 5 * $signed(input_fmap_15[23:16]) +
	 7'sd 44 * $signed(input_fmap_15[31:24]) +
	 7'sd 35 * $signed(input_fmap_15[39:32]) +
	 7'sd 62 * $signed(input_fmap_15[47:40]) +
	 6'sd 31 * $signed(input_fmap_15[55:48]) +
	 8'sd 80 * $signed(input_fmap_15[63:56]) +
	 8'sd 108 * $signed(input_fmap_15[71:64]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 8'd91;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 8'd73;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 7'd44;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 8'd108;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 7'd44;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 7'd44;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 8'd95;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 5'd12;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 7'd59;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 5'd15;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 8'd93;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 7'd48;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 4'd7;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 5'd13;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 8'd93;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 8'd79;

logic [7:0] relu_0;
assign relu_0[7:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[13:7]}} :'d6) : '0;
logic [7:0] relu_1;
assign relu_1[7:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[13:7]}} :'d6) : '0;
logic [7:0] relu_2;
assign relu_2[7:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[13:7]}} :'d6) : '0;
logic [7:0] relu_3;
assign relu_3[7:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[13:7]}} :'d6) : '0;
logic [7:0] relu_4;
assign relu_4[7:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[13:7]}} :'d6) : '0;
logic [7:0] relu_5;
assign relu_5[7:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[13:7]}} :'d6) : '0;
logic [7:0] relu_6;
assign relu_6[7:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[13:7]}} :'d6) : '0;
logic [7:0] relu_7;
assign relu_7[7:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[13:7]}} :'d6) : '0;
logic [7:0] relu_8;
assign relu_8[7:0] = (bias_add_8[31]==0) ? ((bias_add_8<3'd6) ? {{bias_add_8[31],bias_add_8[13:7]}} :'d6) : '0;
logic [7:0] relu_9;
assign relu_9[7:0] = (bias_add_9[31]==0) ? ((bias_add_9<3'd6) ? {{bias_add_9[31],bias_add_9[13:7]}} :'d6) : '0;
logic [7:0] relu_10;
assign relu_10[7:0] = (bias_add_10[31]==0) ? ((bias_add_10<3'd6) ? {{bias_add_10[31],bias_add_10[13:7]}} :'d6) : '0;
logic [7:0] relu_11;
assign relu_11[7:0] = (bias_add_11[31]==0) ? ((bias_add_11<3'd6) ? {{bias_add_11[31],bias_add_11[13:7]}} :'d6) : '0;
logic [7:0] relu_12;
assign relu_12[7:0] = (bias_add_12[31]==0) ? ((bias_add_12<3'd6) ? {{bias_add_12[31],bias_add_12[13:7]}} :'d6) : '0;
logic [7:0] relu_13;
assign relu_13[7:0] = (bias_add_13[31]==0) ? ((bias_add_13<3'd6) ? {{bias_add_13[31],bias_add_13[13:7]}} :'d6) : '0;
logic [7:0] relu_14;
assign relu_14[7:0] = (bias_add_14[31]==0) ? ((bias_add_14<3'd6) ? {{bias_add_14[31],bias_add_14[13:7]}} :'d6) : '0;
logic [7:0] relu_15;
assign relu_15[7:0] = (bias_add_15[31]==0) ? ((bias_add_15<3'd6) ? {{bias_add_15[31],bias_add_15[13:7]}} :'d6) : '0;

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
