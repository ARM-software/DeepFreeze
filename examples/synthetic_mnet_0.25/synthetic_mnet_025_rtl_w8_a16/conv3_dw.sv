module conv3_dw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [2304-1:0] input_act,
    output logic [256-1:0] output_act,
    output logic ready
);

logic [2304-1:0] input_act_ff;
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

logic [143:0] input_fmap_0;
assign input_fmap_0 = input_act_ff[143:0];
logic [143:0] input_fmap_1;
assign input_fmap_1 = input_act_ff[287:144];
logic [143:0] input_fmap_2;
assign input_fmap_2 = input_act_ff[431:288];
logic [143:0] input_fmap_3;
assign input_fmap_3 = input_act_ff[575:432];
logic [143:0] input_fmap_4;
assign input_fmap_4 = input_act_ff[719:576];
logic [143:0] input_fmap_5;
assign input_fmap_5 = input_act_ff[863:720];
logic [143:0] input_fmap_6;
assign input_fmap_6 = input_act_ff[1007:864];
logic [143:0] input_fmap_7;
assign input_fmap_7 = input_act_ff[1151:1008];
logic [143:0] input_fmap_8;
assign input_fmap_8 = input_act_ff[1295:1152];
logic [143:0] input_fmap_9;
assign input_fmap_9 = input_act_ff[1439:1296];
logic [143:0] input_fmap_10;
assign input_fmap_10 = input_act_ff[1583:1440];
logic [143:0] input_fmap_11;
assign input_fmap_11 = input_act_ff[1727:1584];
logic [143:0] input_fmap_12;
assign input_fmap_12 = input_act_ff[1871:1728];
logic [143:0] input_fmap_13;
assign input_fmap_13 = input_act_ff[2015:1872];
logic [143:0] input_fmap_14;
assign input_fmap_14 = input_act_ff[2159:2016];
logic [143:0] input_fmap_15;
assign input_fmap_15 = input_act_ff[2303:2160];

logic signed [31:0] dw_conv_mac_0;
assign dw_conv_mac_0 = 
	 7'sd 37 * $signed(input_fmap_0[15:0]) +
	 8'sd 94 * $signed(input_fmap_0[31:16]) +
	 8'sd 92 * $signed(input_fmap_0[47:32]) +
	 7'sd 41 * $signed(input_fmap_0[63:48]) +
	 7'sd 39 * $signed(input_fmap_0[79:64]) +
	 7'sd 54 * $signed(input_fmap_0[95:80]) +
	 7'sd 43 * $signed(input_fmap_0[111:96]) +
	 8'sd 104 * $signed(input_fmap_0[127:112]) +
	 7'sd 33 * $signed(input_fmap_0[143:128]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 3'sd 2 * $signed(input_fmap_1[15:0]) +
	 8'sd 97 * $signed(input_fmap_1[31:16]) +
	 8'sd 100 * $signed(input_fmap_1[47:32]) +
	 7'sd 33 * $signed(input_fmap_1[63:48]) +
	 6'sd 27 * $signed(input_fmap_1[79:64]) +
	 7'sd 59 * $signed(input_fmap_1[95:80]) +
	 7'sd 38 * $signed(input_fmap_1[111:96]) +
	 6'sd 24 * $signed(input_fmap_1[127:112]) +
	 7'sd 32 * $signed(input_fmap_1[143:128]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 6'sd 31 * $signed(input_fmap_2[15:0]) +
	 6'sd 20 * $signed(input_fmap_2[31:16]) +
	 8'sd 117 * $signed(input_fmap_2[47:32]) +
	 8'sd 71 * $signed(input_fmap_2[63:48]) +
	 8'sd 122 * $signed(input_fmap_2[79:64]) +
	 3'sd 3 * $signed(input_fmap_2[95:80]) +
	 8'sd 69 * $signed(input_fmap_2[111:96]) +
	 7'sd 63 * $signed(input_fmap_2[127:112]) +
	 8'sd 104 * $signed(input_fmap_2[143:128]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 8'sd 64 * $signed(input_fmap_3[15:0]) +
	 6'sd 28 * $signed(input_fmap_3[31:16]) +
	 7'sd 38 * $signed(input_fmap_3[47:32]) +
	 8'sd 85 * $signed(input_fmap_3[63:48]) +
	 8'sd 89 * $signed(input_fmap_3[79:64]) +
	 7'sd 43 * $signed(input_fmap_3[95:80]) +
	 8'sd 94 * $signed(input_fmap_3[111:96]) +
	 8'sd 86 * $signed(input_fmap_3[127:112]) +
	 5'sd 9 * $signed(input_fmap_3[143:128]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 8'sd 77 * $signed(input_fmap_4[15:0]) +
	 8'sd 104 * $signed(input_fmap_4[31:16]) +
	 7'sd 52 * $signed(input_fmap_4[47:32]) +
	 8'sd 124 * $signed(input_fmap_4[63:48]) +
	 8'sd 119 * $signed(input_fmap_4[79:64]) +
	 8'sd 88 * $signed(input_fmap_4[95:80]) +
	 8'sd 114 * $signed(input_fmap_4[111:96]) +
	 8'sd 79 * $signed(input_fmap_4[127:112]) +
	 7'sd 54 * $signed(input_fmap_4[143:128]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 8'sd 86 * $signed(input_fmap_5[15:0]) +
	 8'sd 66 * $signed(input_fmap_5[31:16]) +
	 5'sd 10 * $signed(input_fmap_5[47:32]) +
	 7'sd 47 * $signed(input_fmap_5[63:48]) +
	 7'sd 56 * $signed(input_fmap_5[79:64]) +
	 7'sd 44 * $signed(input_fmap_5[95:80]) +
	 5'sd 8 * $signed(input_fmap_5[111:96]) +
	 7'sd 54 * $signed(input_fmap_5[127:112]) +
	 8'sd 102 * $signed(input_fmap_5[143:128]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 8'sd 72 * $signed(input_fmap_6[15:0]) +
	 7'sd 44 * $signed(input_fmap_6[31:16]) +
	 8'sd 102 * $signed(input_fmap_6[47:32]) +
	 7'sd 49 * $signed(input_fmap_6[63:48]) +
	 5'sd 11 * $signed(input_fmap_6[79:64]) +
	 8'sd 72 * $signed(input_fmap_6[95:80]) +
	 3'sd 3 * $signed(input_fmap_6[111:96]) +
	 4'sd 5 * $signed(input_fmap_6[127:112]) +
	 4'sd 6 * $signed(input_fmap_6[143:128]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 7'sd 56 * $signed(input_fmap_7[15:0]) +
	 8'sd 115 * $signed(input_fmap_7[31:16]) +
	 7'sd 43 * $signed(input_fmap_7[47:32]) +
	 8'sd 69 * $signed(input_fmap_7[63:48]) +
	 8'sd 121 * $signed(input_fmap_7[79:64]) +
	 7'sd 37 * $signed(input_fmap_7[95:80]) +
	 7'sd 54 * $signed(input_fmap_7[111:96]) +
	 7'sd 39 * $signed(input_fmap_7[127:112]) +
	 3'sd 3 * $signed(input_fmap_7[143:128]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 7'sd 42 * $signed(input_fmap_8[15:0]) +
	 7'sd 39 * $signed(input_fmap_8[31:16]) +
	 8'sd 76 * $signed(input_fmap_8[47:32]) +
	 8'sd 65 * $signed(input_fmap_8[63:48]) +
	 8'sd 105 * $signed(input_fmap_8[79:64]) +
	 8'sd 127 * $signed(input_fmap_8[95:80]) +
	 8'sd 98 * $signed(input_fmap_8[111:96]) +
	 7'sd 51 * $signed(input_fmap_8[127:112]) +
	 6'sd 18 * $signed(input_fmap_8[143:128]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 8'sd 108 * $signed(input_fmap_9[15:0]) +
	 8'sd 93 * $signed(input_fmap_9[31:16]) +
	 6'sd 30 * $signed(input_fmap_9[47:32]) +
	 6'sd 24 * $signed(input_fmap_9[63:48]) +
	 8'sd 106 * $signed(input_fmap_9[79:64]) +
	 8'sd 86 * $signed(input_fmap_9[95:80]) +
	 8'sd 76 * $signed(input_fmap_9[111:96]) +
	 7'sd 41 * $signed(input_fmap_9[127:112]) +
	 8'sd 123 * $signed(input_fmap_9[143:128]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 7'sd 60 * $signed(input_fmap_10[15:0]) +
	 7'sd 40 * $signed(input_fmap_10[31:16]) +
	 6'sd 23 * $signed(input_fmap_10[47:32]) +
	 6'sd 25 * $signed(input_fmap_10[63:48]) +
	 8'sd 117 * $signed(input_fmap_10[79:64]) +
	 7'sd 44 * $signed(input_fmap_10[95:80]) +
	 8'sd 116 * $signed(input_fmap_10[111:96]) +
	 3'sd 3 * $signed(input_fmap_10[127:112]) +
	 8'sd 101 * $signed(input_fmap_10[143:128]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 7'sd 61 * $signed(input_fmap_11[15:0]) +
	 8'sd 89 * $signed(input_fmap_11[31:16]) +
	 8'sd 98 * $signed(input_fmap_11[47:32]) +
	 6'sd 19 * $signed(input_fmap_11[63:48]) +
	 8'sd 110 * $signed(input_fmap_11[79:64]) +
	 6'sd 25 * $signed(input_fmap_11[95:80]) +
	 5'sd 11 * $signed(input_fmap_11[111:96]) +
	 8'sd 95 * $signed(input_fmap_11[127:112]) +
	 7'sd 35 * $signed(input_fmap_11[143:128]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 3'sd 3 * $signed(input_fmap_12[15:0]) +
	 7'sd 35 * $signed(input_fmap_12[31:16]) +
	 7'sd 59 * $signed(input_fmap_12[47:32]) +
	 8'sd 91 * $signed(input_fmap_12[63:48]) +
	 6'sd 31 * $signed(input_fmap_12[79:64]) +
	 7'sd 44 * $signed(input_fmap_12[95:80]) +
	 8'sd 103 * $signed(input_fmap_12[111:96]) +
	 6'sd 28 * $signed(input_fmap_12[127:112]) +
	 7'sd 48 * $signed(input_fmap_12[143:128]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 7'sd 58 * $signed(input_fmap_13[15:0]) +
	 8'sd 95 * $signed(input_fmap_13[31:16]) +
	 7'sd 50 * $signed(input_fmap_13[47:32]) +
	 8'sd 109 * $signed(input_fmap_13[63:48]) +
	 7'sd 49 * $signed(input_fmap_13[79:64]) +
	 7'sd 46 * $signed(input_fmap_13[95:80]) +
	 8'sd 78 * $signed(input_fmap_13[111:96]) +
	 7'sd 33 * $signed(input_fmap_13[127:112]) +
	 3'sd 3 * $signed(input_fmap_13[143:128]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 8'sd 90 * $signed(input_fmap_14[15:0]) +
	 8'sd 66 * $signed(input_fmap_14[31:16]) +
	 8'sd 127 * $signed(input_fmap_14[47:32]) +
	 8'sd 97 * $signed(input_fmap_14[63:48]) +
	 7'sd 47 * $signed(input_fmap_14[79:64]) +
	 8'sd 93 * $signed(input_fmap_14[95:80]) +
	 7'sd 44 * $signed(input_fmap_14[111:96]) +
	 8'sd 67 * $signed(input_fmap_14[127:112]) +
	 8'sd 119 * $signed(input_fmap_14[143:128]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 6'sd 17 * $signed(input_fmap_15[15:0]) +
	 6'sd 19 * $signed(input_fmap_15[31:16]) +
	 4'sd 5 * $signed(input_fmap_15[47:32]) +
	 7'sd 44 * $signed(input_fmap_15[63:48]) +
	 7'sd 35 * $signed(input_fmap_15[79:64]) +
	 7'sd 62 * $signed(input_fmap_15[95:80]) +
	 6'sd 31 * $signed(input_fmap_15[111:96]) +
	 8'sd 80 * $signed(input_fmap_15[127:112]) +
	 8'sd 108 * $signed(input_fmap_15[143:128]);

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

logic [15:0] relu_0;
assign relu_0[15:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[21:7]}} :'d6) : '0;
logic [15:0] relu_1;
assign relu_1[15:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[21:7]}} :'d6) : '0;
logic [15:0] relu_2;
assign relu_2[15:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[21:7]}} :'d6) : '0;
logic [15:0] relu_3;
assign relu_3[15:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[21:7]}} :'d6) : '0;
logic [15:0] relu_4;
assign relu_4[15:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[21:7]}} :'d6) : '0;
logic [15:0] relu_5;
assign relu_5[15:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[21:7]}} :'d6) : '0;
logic [15:0] relu_6;
assign relu_6[15:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[21:7]}} :'d6) : '0;
logic [15:0] relu_7;
assign relu_7[15:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[21:7]}} :'d6) : '0;
logic [15:0] relu_8;
assign relu_8[15:0] = (bias_add_8[31]==0) ? ((bias_add_8<3'd6) ? {{bias_add_8[31],bias_add_8[21:7]}} :'d6) : '0;
logic [15:0] relu_9;
assign relu_9[15:0] = (bias_add_9[31]==0) ? ((bias_add_9<3'd6) ? {{bias_add_9[31],bias_add_9[21:7]}} :'d6) : '0;
logic [15:0] relu_10;
assign relu_10[15:0] = (bias_add_10[31]==0) ? ((bias_add_10<3'd6) ? {{bias_add_10[31],bias_add_10[21:7]}} :'d6) : '0;
logic [15:0] relu_11;
assign relu_11[15:0] = (bias_add_11[31]==0) ? ((bias_add_11<3'd6) ? {{bias_add_11[31],bias_add_11[21:7]}} :'d6) : '0;
logic [15:0] relu_12;
assign relu_12[15:0] = (bias_add_12[31]==0) ? ((bias_add_12<3'd6) ? {{bias_add_12[31],bias_add_12[21:7]}} :'d6) : '0;
logic [15:0] relu_13;
assign relu_13[15:0] = (bias_add_13[31]==0) ? ((bias_add_13<3'd6) ? {{bias_add_13[31],bias_add_13[21:7]}} :'d6) : '0;
logic [15:0] relu_14;
assign relu_14[15:0] = (bias_add_14[31]==0) ? ((bias_add_14<3'd6) ? {{bias_add_14[31],bias_add_14[21:7]}} :'d6) : '0;
logic [15:0] relu_15;
assign relu_15[15:0] = (bias_add_15[31]==0) ? ((bias_add_15<3'd6) ? {{bias_add_15[31],bias_add_15[21:7]}} :'d6) : '0;

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
