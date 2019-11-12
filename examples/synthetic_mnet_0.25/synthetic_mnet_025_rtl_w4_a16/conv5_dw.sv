module conv5_dw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [4608-1:0] input_act,
    output logic [512-1:0] output_act,
    output logic ready
);

logic [4608-1:0] input_act_ff;
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
logic [143:0] input_fmap_16;
assign input_fmap_16 = input_act_ff[2447:2304];
logic [143:0] input_fmap_17;
assign input_fmap_17 = input_act_ff[2591:2448];
logic [143:0] input_fmap_18;
assign input_fmap_18 = input_act_ff[2735:2592];
logic [143:0] input_fmap_19;
assign input_fmap_19 = input_act_ff[2879:2736];
logic [143:0] input_fmap_20;
assign input_fmap_20 = input_act_ff[3023:2880];
logic [143:0] input_fmap_21;
assign input_fmap_21 = input_act_ff[3167:3024];
logic [143:0] input_fmap_22;
assign input_fmap_22 = input_act_ff[3311:3168];
logic [143:0] input_fmap_23;
assign input_fmap_23 = input_act_ff[3455:3312];
logic [143:0] input_fmap_24;
assign input_fmap_24 = input_act_ff[3599:3456];
logic [143:0] input_fmap_25;
assign input_fmap_25 = input_act_ff[3743:3600];
logic [143:0] input_fmap_26;
assign input_fmap_26 = input_act_ff[3887:3744];
logic [143:0] input_fmap_27;
assign input_fmap_27 = input_act_ff[4031:3888];
logic [143:0] input_fmap_28;
assign input_fmap_28 = input_act_ff[4175:4032];
logic [143:0] input_fmap_29;
assign input_fmap_29 = input_act_ff[4319:4176];
logic [143:0] input_fmap_30;
assign input_fmap_30 = input_act_ff[4463:4320];
logic [143:0] input_fmap_31;
assign input_fmap_31 = input_act_ff[4607:4464];

logic signed [31:0] dw_conv_mac_0;
assign dw_conv_mac_0 = 
	 3'sd 3 * $signed(input_fmap_0[15:0]) +
	 4'sd 5 * $signed(input_fmap_0[31:16]) +
	 2'sd 1 * $signed(input_fmap_0[47:32]) +
	 3'sd 2 * $signed(input_fmap_0[63:48]) +
	 5'sd 8 * $signed(input_fmap_0[79:64]) +
	 5'sd 8 * $signed(input_fmap_0[95:80]) +
	 3'sd 2 * $signed(input_fmap_0[111:96]) +
	 4'sd 4 * $signed(input_fmap_0[127:112]) +
	 2'sd 1 * $signed(input_fmap_0[143:128]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 4'sd 7 * $signed(input_fmap_1[15:0]) +
	 4'sd 7 * $signed(input_fmap_1[31:16]) +
	 4'sd 7 * $signed(input_fmap_1[47:32]) +
	 2'sd 1 * $signed(input_fmap_1[63:48]) +
	 4'sd 6 * $signed(input_fmap_1[79:64]) +
	 3'sd 3 * $signed(input_fmap_1[95:80]) +
	 4'sd 4 * $signed(input_fmap_1[111:96]) +
	 4'sd 5 * $signed(input_fmap_1[127:112]) +
	 4'sd 4 * $signed(input_fmap_1[143:128]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 4'sd 4 * $signed(input_fmap_2[15:0]) +
	 2'sd 1 * $signed(input_fmap_2[31:16]) +
	 4'sd 5 * $signed(input_fmap_2[47:32]) +
	 5'sd 8 * $signed(input_fmap_2[63:48]) +
	 3'sd 2 * $signed(input_fmap_2[79:64]) +
	 2'sd 1 * $signed(input_fmap_2[95:80]) +
	 4'sd 6 * $signed(input_fmap_2[111:96]) +
	 4'sd 7 * $signed(input_fmap_2[127:112]) +
	 2'sd 1 * $signed(input_fmap_2[143:128]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 5'sd 8 * $signed(input_fmap_3[15:0]) +
	 3'sd 3 * $signed(input_fmap_3[31:16]) +
	 3'sd 3 * $signed(input_fmap_3[47:32]) +
	 4'sd 6 * $signed(input_fmap_3[63:48]) +
	 4'sd 4 * $signed(input_fmap_3[79:64]) +
	 4'sd 7 * $signed(input_fmap_3[95:80]) +
	 4'sd 6 * $signed(input_fmap_3[111:96]) +
	 3'sd 3 * $signed(input_fmap_3[127:112]) +
	 3'sd 3 * $signed(input_fmap_3[143:128]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 2'sd 1 * $signed(input_fmap_4[15:0]) +
	 3'sd 2 * $signed(input_fmap_4[31:16]) +
	 4'sd 6 * $signed(input_fmap_4[63:48]) +
	 4'sd 5 * $signed(input_fmap_4[79:64]) +
	 4'sd 5 * $signed(input_fmap_4[95:80]) +
	 2'sd 1 * $signed(input_fmap_4[111:96]) +
	 4'sd 4 * $signed(input_fmap_4[127:112]) +
	 5'sd 8 * $signed(input_fmap_4[143:128]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 4'sd 7 * $signed(input_fmap_5[15:0]) +
	 5'sd 8 * $signed(input_fmap_5[31:16]) +
	 4'sd 5 * $signed(input_fmap_5[47:32]) +
	 3'sd 2 * $signed(input_fmap_5[63:48]) +
	 5'sd 8 * $signed(input_fmap_5[79:64]) +
	 4'sd 7 * $signed(input_fmap_5[95:80]) +
	 4'sd 7 * $signed(input_fmap_5[111:96]) +
	 4'sd 7 * $signed(input_fmap_5[127:112]) +
	 5'sd 8 * $signed(input_fmap_5[143:128]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 4'sd 4 * $signed(input_fmap_6[15:0]) +
	 5'sd 8 * $signed(input_fmap_6[31:16]) +
	 3'sd 3 * $signed(input_fmap_6[47:32]) +
	 4'sd 5 * $signed(input_fmap_6[63:48]) +
	 3'sd 2 * $signed(input_fmap_6[79:64]) +
	 4'sd 7 * $signed(input_fmap_6[95:80]) +
	 3'sd 3 * $signed(input_fmap_6[111:96]) +
	 5'sd 8 * $signed(input_fmap_6[143:128]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 3'sd 3 * $signed(input_fmap_7[15:0]) +
	 4'sd 4 * $signed(input_fmap_7[31:16]) +
	 3'sd 3 * $signed(input_fmap_7[47:32]) +
	 3'sd 3 * $signed(input_fmap_7[63:48]) +
	 4'sd 4 * $signed(input_fmap_7[79:64]) +
	 4'sd 6 * $signed(input_fmap_7[95:80]) +
	 2'sd 1 * $signed(input_fmap_7[111:96]) +
	 4'sd 6 * $signed(input_fmap_7[127:112]) +
	 4'sd 7 * $signed(input_fmap_7[143:128]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 2'sd 1 * $signed(input_fmap_8[15:0]) +
	 3'sd 2 * $signed(input_fmap_8[31:16]) +
	 5'sd 8 * $signed(input_fmap_8[47:32]) +
	 4'sd 5 * $signed(input_fmap_8[63:48]) +
	 4'sd 6 * $signed(input_fmap_8[79:64]) +
	 5'sd 8 * $signed(input_fmap_8[95:80]) +
	 3'sd 3 * $signed(input_fmap_8[111:96]) +
	 4'sd 5 * $signed(input_fmap_8[127:112]) +
	 4'sd 6 * $signed(input_fmap_8[143:128]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 4'sd 6 * $signed(input_fmap_9[15:0]) +
	 4'sd 5 * $signed(input_fmap_9[31:16]) +
	 3'sd 3 * $signed(input_fmap_9[47:32]) +
	 3'sd 2 * $signed(input_fmap_9[63:48]) +
	 2'sd 1 * $signed(input_fmap_9[79:64]) +
	 4'sd 4 * $signed(input_fmap_9[95:80]) +
	 5'sd 8 * $signed(input_fmap_9[111:96]) +
	 3'sd 2 * $signed(input_fmap_9[127:112]) +
	 4'sd 5 * $signed(input_fmap_9[143:128]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 2'sd 1 * $signed(input_fmap_10[15:0]) +
	 4'sd 4 * $signed(input_fmap_10[47:32]) +
	 4'sd 6 * $signed(input_fmap_10[63:48]) +
	 5'sd 8 * $signed(input_fmap_10[79:64]) +
	 4'sd 6 * $signed(input_fmap_10[95:80]) +
	 3'sd 3 * $signed(input_fmap_10[111:96]) +
	 4'sd 6 * $signed(input_fmap_10[127:112]) +
	 4'sd 4 * $signed(input_fmap_10[143:128]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 2'sd 1 * $signed(input_fmap_11[15:0]) +
	 3'sd 2 * $signed(input_fmap_11[31:16]) +
	 4'sd 5 * $signed(input_fmap_11[47:32]) +
	 4'sd 7 * $signed(input_fmap_11[63:48]) +
	 4'sd 4 * $signed(input_fmap_11[79:64]) +
	 2'sd 1 * $signed(input_fmap_11[95:80]) +
	 4'sd 4 * $signed(input_fmap_11[111:96]) +
	 4'sd 4 * $signed(input_fmap_11[127:112]) +
	 3'sd 2 * $signed(input_fmap_11[143:128]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 4'sd 4 * $signed(input_fmap_12[15:0]) +
	 2'sd 1 * $signed(input_fmap_12[31:16]) +
	 3'sd 3 * $signed(input_fmap_12[47:32]) +
	 3'sd 2 * $signed(input_fmap_12[63:48]) +
	 4'sd 5 * $signed(input_fmap_12[79:64]) +
	 4'sd 5 * $signed(input_fmap_12[95:80]) +
	 3'sd 3 * $signed(input_fmap_12[111:96]) +
	 3'sd 3 * $signed(input_fmap_12[127:112]) +
	 4'sd 5 * $signed(input_fmap_12[143:128]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 4'sd 4 * $signed(input_fmap_13[15:0]) +
	 4'sd 5 * $signed(input_fmap_13[31:16]) +
	 3'sd 2 * $signed(input_fmap_13[47:32]) +
	 2'sd 1 * $signed(input_fmap_13[63:48]) +
	 4'sd 7 * $signed(input_fmap_13[79:64]) +
	 3'sd 3 * $signed(input_fmap_13[95:80]) +
	 3'sd 2 * $signed(input_fmap_13[111:96]) +
	 4'sd 5 * $signed(input_fmap_13[127:112]) +
	 3'sd 2 * $signed(input_fmap_13[143:128]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 4'sd 5 * $signed(input_fmap_14[15:0]) +
	 4'sd 7 * $signed(input_fmap_14[31:16]) +
	 4'sd 6 * $signed(input_fmap_14[47:32]) +
	 4'sd 7 * $signed(input_fmap_14[63:48]) +
	 2'sd 1 * $signed(input_fmap_14[95:80]) +
	 3'sd 3 * $signed(input_fmap_14[111:96]) +
	 3'sd 2 * $signed(input_fmap_14[127:112]) +
	 3'sd 2 * $signed(input_fmap_14[143:128]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 3'sd 2 * $signed(input_fmap_15[15:0]) +
	 2'sd 1 * $signed(input_fmap_15[31:16]) +
	 2'sd 1 * $signed(input_fmap_15[47:32]) +
	 4'sd 6 * $signed(input_fmap_15[63:48]) +
	 4'sd 4 * $signed(input_fmap_15[79:64]) +
	 4'sd 4 * $signed(input_fmap_15[95:80]) +
	 3'sd 3 * $signed(input_fmap_15[111:96]) +
	 4'sd 7 * $signed(input_fmap_15[127:112]) +
	 2'sd 1 * $signed(input_fmap_15[143:128]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 2'sd 1 * $signed(input_fmap_16[31:16]) +
	 4'sd 6 * $signed(input_fmap_16[47:32]) +
	 4'sd 4 * $signed(input_fmap_16[63:48]) +
	 4'sd 5 * $signed(input_fmap_16[95:80]) +
	 5'sd 8 * $signed(input_fmap_16[111:96]) +
	 3'sd 2 * $signed(input_fmap_16[127:112]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 5'sd 8 * $signed(input_fmap_17[15:0]) +
	 4'sd 4 * $signed(input_fmap_17[31:16]) +
	 3'sd 2 * $signed(input_fmap_17[47:32]) +
	 5'sd 8 * $signed(input_fmap_17[63:48]) +
	 4'sd 5 * $signed(input_fmap_17[79:64]) +
	 5'sd 8 * $signed(input_fmap_17[95:80]) +
	 5'sd 8 * $signed(input_fmap_17[111:96]) +
	 4'sd 4 * $signed(input_fmap_17[127:112]) +
	 4'sd 6 * $signed(input_fmap_17[143:128]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 4'sd 5 * $signed(input_fmap_18[15:0]) +
	 4'sd 6 * $signed(input_fmap_18[31:16]) +
	 4'sd 6 * $signed(input_fmap_18[47:32]) +
	 3'sd 2 * $signed(input_fmap_18[63:48]) +
	 3'sd 3 * $signed(input_fmap_18[79:64]) +
	 3'sd 3 * $signed(input_fmap_18[95:80]) +
	 4'sd 6 * $signed(input_fmap_18[111:96]) +
	 4'sd 6 * $signed(input_fmap_18[127:112]) +
	 4'sd 5 * $signed(input_fmap_18[143:128]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 4'sd 7 * $signed(input_fmap_19[15:0]) +
	 4'sd 5 * $signed(input_fmap_19[31:16]) +
	 3'sd 3 * $signed(input_fmap_19[47:32]) +
	 3'sd 2 * $signed(input_fmap_19[63:48]) +
	 4'sd 7 * $signed(input_fmap_19[79:64]) +
	 4'sd 7 * $signed(input_fmap_19[95:80]) +
	 3'sd 3 * $signed(input_fmap_19[111:96]) +
	 2'sd 1 * $signed(input_fmap_19[127:112]) +
	 4'sd 7 * $signed(input_fmap_19[143:128]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 4'sd 4 * $signed(input_fmap_20[15:0]) +
	 3'sd 2 * $signed(input_fmap_20[31:16]) +
	 5'sd 8 * $signed(input_fmap_20[47:32]) +
	 4'sd 5 * $signed(input_fmap_20[63:48]) +
	 2'sd 1 * $signed(input_fmap_20[79:64]) +
	 4'sd 6 * $signed(input_fmap_20[95:80]) +
	 4'sd 6 * $signed(input_fmap_20[111:96]) +
	 3'sd 2 * $signed(input_fmap_20[127:112]) +
	 4'sd 4 * $signed(input_fmap_20[143:128]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 3'sd 3 * $signed(input_fmap_21[15:0]) +
	 3'sd 2 * $signed(input_fmap_21[31:16]) +
	 3'sd 2 * $signed(input_fmap_21[63:48]) +
	 3'sd 2 * $signed(input_fmap_21[79:64]) +
	 4'sd 5 * $signed(input_fmap_21[95:80]) +
	 5'sd 8 * $signed(input_fmap_21[111:96]) +
	 2'sd 1 * $signed(input_fmap_21[127:112]) +
	 4'sd 4 * $signed(input_fmap_21[143:128]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 2'sd 1 * $signed(input_fmap_22[15:0]) +
	 4'sd 4 * $signed(input_fmap_22[31:16]) +
	 4'sd 6 * $signed(input_fmap_22[47:32]) +
	 4'sd 7 * $signed(input_fmap_22[63:48]) +
	 4'sd 5 * $signed(input_fmap_22[79:64]) +
	 4'sd 7 * $signed(input_fmap_22[95:80]) +
	 4'sd 7 * $signed(input_fmap_22[111:96]) +
	 3'sd 2 * $signed(input_fmap_22[127:112]) +
	 2'sd 1 * $signed(input_fmap_22[143:128]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 4'sd 7 * $signed(input_fmap_23[15:0]) +
	 4'sd 7 * $signed(input_fmap_23[31:16]) +
	 3'sd 2 * $signed(input_fmap_23[47:32]) +
	 4'sd 5 * $signed(input_fmap_23[63:48]) +
	 4'sd 4 * $signed(input_fmap_23[79:64]) +
	 5'sd 8 * $signed(input_fmap_23[111:96]) +
	 2'sd 1 * $signed(input_fmap_23[127:112]) +
	 4'sd 5 * $signed(input_fmap_23[143:128]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 2'sd 1 * $signed(input_fmap_24[15:0]) +
	 2'sd 1 * $signed(input_fmap_24[31:16]) +
	 4'sd 4 * $signed(input_fmap_24[47:32]) +
	 4'sd 7 * $signed(input_fmap_24[63:48]) +
	 3'sd 2 * $signed(input_fmap_24[79:64]) +
	 3'sd 2 * $signed(input_fmap_24[95:80]) +
	 4'sd 4 * $signed(input_fmap_24[111:96]) +
	 4'sd 4 * $signed(input_fmap_24[127:112]) +
	 4'sd 5 * $signed(input_fmap_24[143:128]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 3'sd 3 * $signed(input_fmap_25[15:0]) +
	 4'sd 4 * $signed(input_fmap_25[31:16]) +
	 4'sd 6 * $signed(input_fmap_25[47:32]) +
	 2'sd 1 * $signed(input_fmap_25[63:48]) +
	 4'sd 5 * $signed(input_fmap_25[79:64]) +
	 3'sd 2 * $signed(input_fmap_25[95:80]) +
	 4'sd 5 * $signed(input_fmap_25[111:96]) +
	 4'sd 6 * $signed(input_fmap_25[127:112]) +
	 4'sd 7 * $signed(input_fmap_25[143:128]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 4'sd 5 * $signed(input_fmap_26[31:16]) +
	 4'sd 6 * $signed(input_fmap_26[63:48]) +
	 4'sd 4 * $signed(input_fmap_26[95:80]) +
	 4'sd 7 * $signed(input_fmap_26[111:96]) +
	 4'sd 4 * $signed(input_fmap_26[127:112]) +
	 4'sd 7 * $signed(input_fmap_26[143:128]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 4'sd 6 * $signed(input_fmap_27[15:0]) +
	 4'sd 7 * $signed(input_fmap_27[31:16]) +
	 4'sd 5 * $signed(input_fmap_27[47:32]) +
	 2'sd 1 * $signed(input_fmap_27[63:48]) +
	 4'sd 4 * $signed(input_fmap_27[79:64]) +
	 4'sd 7 * $signed(input_fmap_27[95:80]) +
	 3'sd 3 * $signed(input_fmap_27[111:96]) +
	 4'sd 6 * $signed(input_fmap_27[127:112]) +
	 4'sd 6 * $signed(input_fmap_27[143:128]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 4'sd 4 * $signed(input_fmap_28[15:0]) +
	 4'sd 7 * $signed(input_fmap_28[31:16]) +
	 4'sd 5 * $signed(input_fmap_28[47:32]) +
	 3'sd 2 * $signed(input_fmap_28[63:48]) +
	 4'sd 4 * $signed(input_fmap_28[79:64]) +
	 4'sd 4 * $signed(input_fmap_28[95:80]) +
	 4'sd 6 * $signed(input_fmap_28[111:96]) +
	 4'sd 7 * $signed(input_fmap_28[127:112]) +
	 3'sd 3 * $signed(input_fmap_28[143:128]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 3'sd 3 * $signed(input_fmap_29[15:0]) +
	 2'sd 1 * $signed(input_fmap_29[31:16]) +
	 2'sd 1 * $signed(input_fmap_29[47:32]) +
	 4'sd 4 * $signed(input_fmap_29[63:48]) +
	 4'sd 5 * $signed(input_fmap_29[79:64]) +
	 4'sd 7 * $signed(input_fmap_29[95:80]) +
	 5'sd 8 * $signed(input_fmap_29[111:96]) +
	 4'sd 4 * $signed(input_fmap_29[127:112]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 4'sd 5 * $signed(input_fmap_30[15:0]) +
	 4'sd 6 * $signed(input_fmap_30[31:16]) +
	 4'sd 6 * $signed(input_fmap_30[47:32]) +
	 4'sd 6 * $signed(input_fmap_30[63:48]) +
	 4'sd 4 * $signed(input_fmap_30[79:64]) +
	 4'sd 7 * $signed(input_fmap_30[95:80]) +
	 3'sd 2 * $signed(input_fmap_30[111:96]) +
	 3'sd 2 * $signed(input_fmap_30[127:112]) +
	 2'sd 1 * $signed(input_fmap_30[143:128]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 4'sd 7 * $signed(input_fmap_31[15:0]) +
	 4'sd 5 * $signed(input_fmap_31[47:32]) +
	 3'sd 2 * $signed(input_fmap_31[63:48]) +
	 4'sd 6 * $signed(input_fmap_31[79:64]) +
	 3'sd 2 * $signed(input_fmap_31[95:80]) +
	 4'sd 5 * $signed(input_fmap_31[127:112]) +
	 4'sd 7 * $signed(input_fmap_31[143:128]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 3'd3;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 3'd3;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 3'd2;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 2'd1;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 3'd2;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 4'd5;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 4'd4;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 3'd2;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 3'd3;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 3'd3;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 4'd7;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 3'd2;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 4'd7;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 4'd6;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 4'd4;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 3'd2;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 4'd5;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 4'd5;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18 + 3'd2;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 3'd3;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 4'd4;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21 + 2'd1;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22 + 3'd2;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 5'd8;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24 + 4'd6;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 3'd3;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 3'd2;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28 + 5'd8;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 4'd5;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 4'd4;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 4'd5;

logic [15:0] relu_0;
assign relu_0[15:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[17:3]}} :'d6) : '0;
logic [15:0] relu_1;
assign relu_1[15:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[17:3]}} :'d6) : '0;
logic [15:0] relu_2;
assign relu_2[15:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[17:3]}} :'d6) : '0;
logic [15:0] relu_3;
assign relu_3[15:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[17:3]}} :'d6) : '0;
logic [15:0] relu_4;
assign relu_4[15:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[17:3]}} :'d6) : '0;
logic [15:0] relu_5;
assign relu_5[15:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[17:3]}} :'d6) : '0;
logic [15:0] relu_6;
assign relu_6[15:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[17:3]}} :'d6) : '0;
logic [15:0] relu_7;
assign relu_7[15:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[17:3]}} :'d6) : '0;
logic [15:0] relu_8;
assign relu_8[15:0] = (bias_add_8[31]==0) ? ((bias_add_8<3'd6) ? {{bias_add_8[31],bias_add_8[17:3]}} :'d6) : '0;
logic [15:0] relu_9;
assign relu_9[15:0] = (bias_add_9[31]==0) ? ((bias_add_9<3'd6) ? {{bias_add_9[31],bias_add_9[17:3]}} :'d6) : '0;
logic [15:0] relu_10;
assign relu_10[15:0] = (bias_add_10[31]==0) ? ((bias_add_10<3'd6) ? {{bias_add_10[31],bias_add_10[17:3]}} :'d6) : '0;
logic [15:0] relu_11;
assign relu_11[15:0] = (bias_add_11[31]==0) ? ((bias_add_11<3'd6) ? {{bias_add_11[31],bias_add_11[17:3]}} :'d6) : '0;
logic [15:0] relu_12;
assign relu_12[15:0] = (bias_add_12[31]==0) ? ((bias_add_12<3'd6) ? {{bias_add_12[31],bias_add_12[17:3]}} :'d6) : '0;
logic [15:0] relu_13;
assign relu_13[15:0] = (bias_add_13[31]==0) ? ((bias_add_13<3'd6) ? {{bias_add_13[31],bias_add_13[17:3]}} :'d6) : '0;
logic [15:0] relu_14;
assign relu_14[15:0] = (bias_add_14[31]==0) ? ((bias_add_14<3'd6) ? {{bias_add_14[31],bias_add_14[17:3]}} :'d6) : '0;
logic [15:0] relu_15;
assign relu_15[15:0] = (bias_add_15[31]==0) ? ((bias_add_15<3'd6) ? {{bias_add_15[31],bias_add_15[17:3]}} :'d6) : '0;
logic [15:0] relu_16;
assign relu_16[15:0] = (bias_add_16[31]==0) ? ((bias_add_16<3'd6) ? {{bias_add_16[31],bias_add_16[17:3]}} :'d6) : '0;
logic [15:0] relu_17;
assign relu_17[15:0] = (bias_add_17[31]==0) ? ((bias_add_17<3'd6) ? {{bias_add_17[31],bias_add_17[17:3]}} :'d6) : '0;
logic [15:0] relu_18;
assign relu_18[15:0] = (bias_add_18[31]==0) ? ((bias_add_18<3'd6) ? {{bias_add_18[31],bias_add_18[17:3]}} :'d6) : '0;
logic [15:0] relu_19;
assign relu_19[15:0] = (bias_add_19[31]==0) ? ((bias_add_19<3'd6) ? {{bias_add_19[31],bias_add_19[17:3]}} :'d6) : '0;
logic [15:0] relu_20;
assign relu_20[15:0] = (bias_add_20[31]==0) ? ((bias_add_20<3'd6) ? {{bias_add_20[31],bias_add_20[17:3]}} :'d6) : '0;
logic [15:0] relu_21;
assign relu_21[15:0] = (bias_add_21[31]==0) ? ((bias_add_21<3'd6) ? {{bias_add_21[31],bias_add_21[17:3]}} :'d6) : '0;
logic [15:0] relu_22;
assign relu_22[15:0] = (bias_add_22[31]==0) ? ((bias_add_22<3'd6) ? {{bias_add_22[31],bias_add_22[17:3]}} :'d6) : '0;
logic [15:0] relu_23;
assign relu_23[15:0] = (bias_add_23[31]==0) ? ((bias_add_23<3'd6) ? {{bias_add_23[31],bias_add_23[17:3]}} :'d6) : '0;
logic [15:0] relu_24;
assign relu_24[15:0] = (bias_add_24[31]==0) ? ((bias_add_24<3'd6) ? {{bias_add_24[31],bias_add_24[17:3]}} :'d6) : '0;
logic [15:0] relu_25;
assign relu_25[15:0] = (bias_add_25[31]==0) ? ((bias_add_25<3'd6) ? {{bias_add_25[31],bias_add_25[17:3]}} :'d6) : '0;
logic [15:0] relu_26;
assign relu_26[15:0] = (bias_add_26[31]==0) ? ((bias_add_26<3'd6) ? {{bias_add_26[31],bias_add_26[17:3]}} :'d6) : '0;
logic [15:0] relu_27;
assign relu_27[15:0] = (bias_add_27[31]==0) ? ((bias_add_27<3'd6) ? {{bias_add_27[31],bias_add_27[17:3]}} :'d6) : '0;
logic [15:0] relu_28;
assign relu_28[15:0] = (bias_add_28[31]==0) ? ((bias_add_28<3'd6) ? {{bias_add_28[31],bias_add_28[17:3]}} :'d6) : '0;
logic [15:0] relu_29;
assign relu_29[15:0] = (bias_add_29[31]==0) ? ((bias_add_29<3'd6) ? {{bias_add_29[31],bias_add_29[17:3]}} :'d6) : '0;
logic [15:0] relu_30;
assign relu_30[15:0] = (bias_add_30[31]==0) ? ((bias_add_30<3'd6) ? {{bias_add_30[31],bias_add_30[17:3]}} :'d6) : '0;
logic [15:0] relu_31;
assign relu_31[15:0] = (bias_add_31[31]==0) ? ((bias_add_31<3'd6) ? {{bias_add_31[31],bias_add_31[17:3]}} :'d6) : '0;

assign output_act = {
	relu_31,
	relu_30,
	relu_29,
	relu_28,
	relu_27,
	relu_26,
	relu_25,
	relu_24,
	relu_23,
	relu_22,
	relu_21,
	relu_20,
	relu_19,
	relu_18,
	relu_17,
	relu_16,
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
