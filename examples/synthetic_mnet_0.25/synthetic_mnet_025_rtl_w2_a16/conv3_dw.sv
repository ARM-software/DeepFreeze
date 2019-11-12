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
	 2'sd 1 * $signed(input_fmap_0[15:0]) +
	 2'sd 1 * $signed(input_fmap_0[31:16]) +
	 2'sd 1 * $signed(input_fmap_0[47:32]) +
	 2'sd 1 * $signed(input_fmap_0[63:48]) +
	 2'sd 1 * $signed(input_fmap_0[79:64]) +
	 2'sd 1 * $signed(input_fmap_0[95:80]) +
	 2'sd 1 * $signed(input_fmap_0[111:96]) +
	 3'sd 2 * $signed(input_fmap_0[127:112]) +
	 2'sd 1 * $signed(input_fmap_0[143:128]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 3'sd 2 * $signed(input_fmap_1[31:16]) +
	 3'sd 2 * $signed(input_fmap_1[47:32]) +
	 2'sd 1 * $signed(input_fmap_1[63:48]) +
	 2'sd 1 * $signed(input_fmap_1[95:80]) +
	 2'sd 1 * $signed(input_fmap_1[111:96]) +
	 2'sd 1 * $signed(input_fmap_1[143:128]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 3'sd 2 * $signed(input_fmap_2[47:32]) +
	 2'sd 1 * $signed(input_fmap_2[63:48]) +
	 3'sd 2 * $signed(input_fmap_2[79:64]) +
	 2'sd 1 * $signed(input_fmap_2[111:96]) +
	 2'sd 1 * $signed(input_fmap_2[127:112]) +
	 3'sd 2 * $signed(input_fmap_2[143:128]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 2'sd 1 * $signed(input_fmap_3[15:0]) +
	 2'sd 1 * $signed(input_fmap_3[47:32]) +
	 2'sd 1 * $signed(input_fmap_3[63:48]) +
	 2'sd 1 * $signed(input_fmap_3[79:64]) +
	 2'sd 1 * $signed(input_fmap_3[95:80]) +
	 2'sd 1 * $signed(input_fmap_3[111:96]) +
	 2'sd 1 * $signed(input_fmap_3[127:112]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 2'sd 1 * $signed(input_fmap_4[15:0]) +
	 3'sd 2 * $signed(input_fmap_4[31:16]) +
	 2'sd 1 * $signed(input_fmap_4[47:32]) +
	 3'sd 2 * $signed(input_fmap_4[63:48]) +
	 3'sd 2 * $signed(input_fmap_4[79:64]) +
	 2'sd 1 * $signed(input_fmap_4[95:80]) +
	 3'sd 2 * $signed(input_fmap_4[111:96]) +
	 2'sd 1 * $signed(input_fmap_4[127:112]) +
	 2'sd 1 * $signed(input_fmap_4[143:128]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 2'sd 1 * $signed(input_fmap_5[15:0]) +
	 2'sd 1 * $signed(input_fmap_5[31:16]) +
	 2'sd 1 * $signed(input_fmap_5[63:48]) +
	 2'sd 1 * $signed(input_fmap_5[79:64]) +
	 2'sd 1 * $signed(input_fmap_5[95:80]) +
	 2'sd 1 * $signed(input_fmap_5[127:112]) +
	 3'sd 2 * $signed(input_fmap_5[143:128]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 2'sd 1 * $signed(input_fmap_6[15:0]) +
	 2'sd 1 * $signed(input_fmap_6[31:16]) +
	 3'sd 2 * $signed(input_fmap_6[47:32]) +
	 2'sd 1 * $signed(input_fmap_6[63:48]) +
	 2'sd 1 * $signed(input_fmap_6[95:80]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 2'sd 1 * $signed(input_fmap_7[15:0]) +
	 3'sd 2 * $signed(input_fmap_7[31:16]) +
	 2'sd 1 * $signed(input_fmap_7[47:32]) +
	 2'sd 1 * $signed(input_fmap_7[63:48]) +
	 3'sd 2 * $signed(input_fmap_7[79:64]) +
	 2'sd 1 * $signed(input_fmap_7[95:80]) +
	 2'sd 1 * $signed(input_fmap_7[111:96]) +
	 2'sd 1 * $signed(input_fmap_7[127:112]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 2'sd 1 * $signed(input_fmap_8[15:0]) +
	 2'sd 1 * $signed(input_fmap_8[31:16]) +
	 2'sd 1 * $signed(input_fmap_8[47:32]) +
	 2'sd 1 * $signed(input_fmap_8[63:48]) +
	 3'sd 2 * $signed(input_fmap_8[79:64]) +
	 3'sd 2 * $signed(input_fmap_8[95:80]) +
	 3'sd 2 * $signed(input_fmap_8[111:96]) +
	 2'sd 1 * $signed(input_fmap_8[127:112]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 3'sd 2 * $signed(input_fmap_9[15:0]) +
	 2'sd 1 * $signed(input_fmap_9[31:16]) +
	 3'sd 2 * $signed(input_fmap_9[79:64]) +
	 2'sd 1 * $signed(input_fmap_9[95:80]) +
	 2'sd 1 * $signed(input_fmap_9[111:96]) +
	 2'sd 1 * $signed(input_fmap_9[127:112]) +
	 3'sd 2 * $signed(input_fmap_9[143:128]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 2'sd 1 * $signed(input_fmap_10[15:0]) +
	 2'sd 1 * $signed(input_fmap_10[31:16]) +
	 3'sd 2 * $signed(input_fmap_10[79:64]) +
	 2'sd 1 * $signed(input_fmap_10[95:80]) +
	 3'sd 2 * $signed(input_fmap_10[111:96]) +
	 3'sd 2 * $signed(input_fmap_10[143:128]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 2'sd 1 * $signed(input_fmap_11[15:0]) +
	 2'sd 1 * $signed(input_fmap_11[31:16]) +
	 3'sd 2 * $signed(input_fmap_11[47:32]) +
	 3'sd 2 * $signed(input_fmap_11[79:64]) +
	 2'sd 1 * $signed(input_fmap_11[127:112]) +
	 2'sd 1 * $signed(input_fmap_11[143:128]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 2'sd 1 * $signed(input_fmap_12[31:16]) +
	 2'sd 1 * $signed(input_fmap_12[47:32]) +
	 2'sd 1 * $signed(input_fmap_12[63:48]) +
	 2'sd 1 * $signed(input_fmap_12[95:80]) +
	 3'sd 2 * $signed(input_fmap_12[111:96]) +
	 2'sd 1 * $signed(input_fmap_12[143:128]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 2'sd 1 * $signed(input_fmap_13[15:0]) +
	 2'sd 1 * $signed(input_fmap_13[31:16]) +
	 2'sd 1 * $signed(input_fmap_13[47:32]) +
	 3'sd 2 * $signed(input_fmap_13[63:48]) +
	 2'sd 1 * $signed(input_fmap_13[79:64]) +
	 2'sd 1 * $signed(input_fmap_13[95:80]) +
	 2'sd 1 * $signed(input_fmap_13[111:96]) +
	 2'sd 1 * $signed(input_fmap_13[127:112]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 2'sd 1 * $signed(input_fmap_14[15:0]) +
	 2'sd 1 * $signed(input_fmap_14[31:16]) +
	 3'sd 2 * $signed(input_fmap_14[47:32]) +
	 3'sd 2 * $signed(input_fmap_14[63:48]) +
	 2'sd 1 * $signed(input_fmap_14[79:64]) +
	 2'sd 1 * $signed(input_fmap_14[95:80]) +
	 2'sd 1 * $signed(input_fmap_14[111:96]) +
	 2'sd 1 * $signed(input_fmap_14[127:112]) +
	 3'sd 2 * $signed(input_fmap_14[143:128]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 2'sd 1 * $signed(input_fmap_15[63:48]) +
	 2'sd 1 * $signed(input_fmap_15[79:64]) +
	 2'sd 1 * $signed(input_fmap_15[95:80]) +
	 2'sd 1 * $signed(input_fmap_15[127:112]) +
	 3'sd 2 * $signed(input_fmap_15[143:128]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 2'd1;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 2'd1;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 2'd1;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 3'd2;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 2'd1;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 2'd1;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 2'd1;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 2'd1;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 2'd1;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 2'd1;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 2'd1;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 2'd1;

logic [15:0] relu_0;
assign relu_0[15:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[15:1]}} :'d6) : '0;
logic [15:0] relu_1;
assign relu_1[15:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[15:1]}} :'d6) : '0;
logic [15:0] relu_2;
assign relu_2[15:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[15:1]}} :'d6) : '0;
logic [15:0] relu_3;
assign relu_3[15:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[15:1]}} :'d6) : '0;
logic [15:0] relu_4;
assign relu_4[15:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[15:1]}} :'d6) : '0;
logic [15:0] relu_5;
assign relu_5[15:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[15:1]}} :'d6) : '0;
logic [15:0] relu_6;
assign relu_6[15:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[15:1]}} :'d6) : '0;
logic [15:0] relu_7;
assign relu_7[15:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[15:1]}} :'d6) : '0;
logic [15:0] relu_8;
assign relu_8[15:0] = (bias_add_8[31]==0) ? ((bias_add_8<3'd6) ? {{bias_add_8[31],bias_add_8[15:1]}} :'d6) : '0;
logic [15:0] relu_9;
assign relu_9[15:0] = (bias_add_9[31]==0) ? ((bias_add_9<3'd6) ? {{bias_add_9[31],bias_add_9[15:1]}} :'d6) : '0;
logic [15:0] relu_10;
assign relu_10[15:0] = (bias_add_10[31]==0) ? ((bias_add_10<3'd6) ? {{bias_add_10[31],bias_add_10[15:1]}} :'d6) : '0;
logic [15:0] relu_11;
assign relu_11[15:0] = (bias_add_11[31]==0) ? ((bias_add_11<3'd6) ? {{bias_add_11[31],bias_add_11[15:1]}} :'d6) : '0;
logic [15:0] relu_12;
assign relu_12[15:0] = (bias_add_12[31]==0) ? ((bias_add_12<3'd6) ? {{bias_add_12[31],bias_add_12[15:1]}} :'d6) : '0;
logic [15:0] relu_13;
assign relu_13[15:0] = (bias_add_13[31]==0) ? ((bias_add_13<3'd6) ? {{bias_add_13[31],bias_add_13[15:1]}} :'d6) : '0;
logic [15:0] relu_14;
assign relu_14[15:0] = (bias_add_14[31]==0) ? ((bias_add_14<3'd6) ? {{bias_add_14[31],bias_add_14[15:1]}} :'d6) : '0;
logic [15:0] relu_15;
assign relu_15[15:0] = (bias_add_15[31]==0) ? ((bias_add_15<3'd6) ? {{bias_add_15[31],bias_add_15[15:1]}} :'d6) : '0;

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
