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
	 15'sd 11956 * $signed(input_fmap_0[15:0]) +
	 16'sd 21509 * $signed(input_fmap_0[31:16]) +
	 14'sd 4988 * $signed(input_fmap_0[47:32]) +
	 14'sd 7576 * $signed(input_fmap_0[63:48]) +
	 16'sd 31839 * $signed(input_fmap_0[79:64]) +
	 16'sd 31084 * $signed(input_fmap_0[95:80]) +
	 15'sd 8786 * $signed(input_fmap_0[111:96]) +
	 16'sd 17281 * $signed(input_fmap_0[127:112]) +
	 13'sd 2592 * $signed(input_fmap_0[143:128]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 16'sd 29594 * $signed(input_fmap_1[15:0]) +
	 16'sd 28232 * $signed(input_fmap_1[31:16]) +
	 16'sd 26844 * $signed(input_fmap_1[47:32]) +
	 14'sd 5830 * $signed(input_fmap_1[63:48]) +
	 16'sd 24616 * $signed(input_fmap_1[79:64]) +
	 15'sd 10294 * $signed(input_fmap_1[95:80]) +
	 15'sd 16152 * $signed(input_fmap_1[111:96]) +
	 16'sd 19706 * $signed(input_fmap_1[127:112]) +
	 16'sd 17049 * $signed(input_fmap_1[143:128]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 15'sd 14931 * $signed(input_fmap_2[15:0]) +
	 13'sd 3986 * $signed(input_fmap_2[31:16]) +
	 16'sd 20216 * $signed(input_fmap_2[47:32]) +
	 16'sd 31145 * $signed(input_fmap_2[63:48]) +
	 15'sd 8803 * $signed(input_fmap_2[79:64]) +
	 14'sd 5517 * $signed(input_fmap_2[95:80]) +
	 16'sd 23129 * $signed(input_fmap_2[111:96]) +
	 16'sd 29058 * $signed(input_fmap_2[127:112]) +
	 14'sd 5746 * $signed(input_fmap_2[143:128]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 16'sd 31651 * $signed(input_fmap_3[15:0]) +
	 15'sd 12552 * $signed(input_fmap_3[31:16]) +
	 15'sd 13457 * $signed(input_fmap_3[47:32]) +
	 16'sd 22732 * $signed(input_fmap_3[63:48]) +
	 15'sd 15555 * $signed(input_fmap_3[79:64]) +
	 16'sd 27065 * $signed(input_fmap_3[95:80]) +
	 16'sd 23543 * $signed(input_fmap_3[111:96]) +
	 15'sd 10715 * $signed(input_fmap_3[127:112]) +
	 15'sd 11237 * $signed(input_fmap_3[143:128]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 14'sd 5662 * $signed(input_fmap_4[15:0]) +
	 14'sd 7159 * $signed(input_fmap_4[31:16]) +
	 9'sd 136 * $signed(input_fmap_4[47:32]) +
	 16'sd 24279 * $signed(input_fmap_4[63:48]) +
	 16'sd 20177 * $signed(input_fmap_4[79:64]) +
	 16'sd 18509 * $signed(input_fmap_4[95:80]) +
	 14'sd 5558 * $signed(input_fmap_4[111:96]) +
	 15'sd 14394 * $signed(input_fmap_4[127:112]) +
	 16'sd 31176 * $signed(input_fmap_4[143:128]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 16'sd 28466 * $signed(input_fmap_5[15:0]) +
	 16'sd 31412 * $signed(input_fmap_5[31:16]) +
	 16'sd 22159 * $signed(input_fmap_5[47:32]) +
	 14'sd 7728 * $signed(input_fmap_5[63:48]) +
	 16'sd 32752 * $signed(input_fmap_5[79:64]) +
	 16'sd 28426 * $signed(input_fmap_5[95:80]) +
	 16'sd 28734 * $signed(input_fmap_5[111:96]) +
	 16'sd 27993 * $signed(input_fmap_5[127:112]) +
	 16'sd 32470 * $signed(input_fmap_5[143:128]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 15'sd 15414 * $signed(input_fmap_6[15:0]) +
	 16'sd 32700 * $signed(input_fmap_6[31:16]) +
	 15'sd 10482 * $signed(input_fmap_6[47:32]) +
	 16'sd 18891 * $signed(input_fmap_6[63:48]) +
	 14'sd 7464 * $signed(input_fmap_6[79:64]) +
	 16'sd 29226 * $signed(input_fmap_6[95:80]) +
	 15'sd 10586 * $signed(input_fmap_6[111:96]) +
	 7'sd 42 * $signed(input_fmap_6[127:112]) +
	 16'sd 30879 * $signed(input_fmap_6[143:128]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 15'sd 12176 * $signed(input_fmap_7[15:0]) +
	 16'sd 18322 * $signed(input_fmap_7[31:16]) +
	 15'sd 13024 * $signed(input_fmap_7[47:32]) +
	 15'sd 12923 * $signed(input_fmap_7[63:48]) +
	 16'sd 17579 * $signed(input_fmap_7[79:64]) +
	 16'sd 23337 * $signed(input_fmap_7[95:80]) +
	 14'sd 4212 * $signed(input_fmap_7[111:96]) +
	 16'sd 26320 * $signed(input_fmap_7[127:112]) +
	 16'sd 27666 * $signed(input_fmap_7[143:128]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 13'sd 3429 * $signed(input_fmap_8[15:0]) +
	 15'sd 10134 * $signed(input_fmap_8[31:16]) +
	 16'sd 31919 * $signed(input_fmap_8[47:32]) +
	 16'sd 18773 * $signed(input_fmap_8[63:48]) +
	 16'sd 26289 * $signed(input_fmap_8[79:64]) +
	 16'sd 32101 * $signed(input_fmap_8[95:80]) +
	 15'sd 12654 * $signed(input_fmap_8[111:96]) +
	 16'sd 22112 * $signed(input_fmap_8[127:112]) +
	 16'sd 24918 * $signed(input_fmap_8[143:128]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 16'sd 24818 * $signed(input_fmap_9[15:0]) +
	 16'sd 19306 * $signed(input_fmap_9[31:16]) +
	 15'sd 11677 * $signed(input_fmap_9[47:32]) +
	 14'sd 7831 * $signed(input_fmap_9[63:48]) +
	 14'sd 4360 * $signed(input_fmap_9[79:64]) +
	 15'sd 14497 * $signed(input_fmap_9[95:80]) +
	 16'sd 31586 * $signed(input_fmap_9[111:96]) +
	 14'sd 6569 * $signed(input_fmap_9[127:112]) +
	 16'sd 20108 * $signed(input_fmap_9[143:128]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 13'sd 3249 * $signed(input_fmap_10[15:0]) +
	 12'sd 1722 * $signed(input_fmap_10[31:16]) +
	 15'sd 15848 * $signed(input_fmap_10[47:32]) +
	 16'sd 23443 * $signed(input_fmap_10[63:48]) +
	 16'sd 32215 * $signed(input_fmap_10[79:64]) +
	 16'sd 23053 * $signed(input_fmap_10[95:80]) +
	 15'sd 13024 * $signed(input_fmap_10[111:96]) +
	 16'sd 25286 * $signed(input_fmap_10[127:112]) +
	 15'sd 15476 * $signed(input_fmap_10[143:128]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 13'sd 2809 * $signed(input_fmap_11[15:0]) +
	 14'sd 6945 * $signed(input_fmap_11[31:16]) +
	 16'sd 21393 * $signed(input_fmap_11[47:32]) +
	 16'sd 27401 * $signed(input_fmap_11[63:48]) +
	 16'sd 18168 * $signed(input_fmap_11[79:64]) +
	 14'sd 5762 * $signed(input_fmap_11[95:80]) +
	 15'sd 15459 * $signed(input_fmap_11[111:96]) +
	 15'sd 14570 * $signed(input_fmap_11[127:112]) +
	 15'sd 8646 * $signed(input_fmap_11[143:128]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 15'sd 16376 * $signed(input_fmap_12[15:0]) +
	 13'sd 3214 * $signed(input_fmap_12[31:16]) +
	 15'sd 11107 * $signed(input_fmap_12[47:32]) +
	 15'sd 9043 * $signed(input_fmap_12[63:48]) +
	 16'sd 21596 * $signed(input_fmap_12[79:64]) +
	 16'sd 19136 * $signed(input_fmap_12[95:80]) +
	 15'sd 11657 * $signed(input_fmap_12[111:96]) +
	 15'sd 11841 * $signed(input_fmap_12[127:112]) +
	 16'sd 21047 * $signed(input_fmap_12[143:128]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 15'sd 14922 * $signed(input_fmap_13[15:0]) +
	 16'sd 19536 * $signed(input_fmap_13[31:16]) +
	 14'sd 7807 * $signed(input_fmap_13[47:32]) +
	 14'sd 6007 * $signed(input_fmap_13[63:48]) +
	 16'sd 30129 * $signed(input_fmap_13[79:64]) +
	 15'sd 13384 * $signed(input_fmap_13[95:80]) +
	 15'sd 8264 * $signed(input_fmap_13[111:96]) +
	 16'sd 20756 * $signed(input_fmap_13[127:112]) +
	 14'sd 7891 * $signed(input_fmap_13[143:128]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 16'sd 22498 * $signed(input_fmap_14[15:0]) +
	 16'sd 28337 * $signed(input_fmap_14[31:16]) +
	 16'sd 25497 * $signed(input_fmap_14[47:32]) +
	 16'sd 27888 * $signed(input_fmap_14[63:48]) +
	 12'sd 1504 * $signed(input_fmap_14[79:64]) +
	 14'sd 5000 * $signed(input_fmap_14[95:80]) +
	 15'sd 11164 * $signed(input_fmap_14[111:96]) +
	 15'sd 10210 * $signed(input_fmap_14[127:112]) +
	 15'sd 9048 * $signed(input_fmap_14[143:128]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 14'sd 6380 * $signed(input_fmap_15[15:0]) +
	 13'sd 2853 * $signed(input_fmap_15[31:16]) +
	 13'sd 3944 * $signed(input_fmap_15[47:32]) +
	 16'sd 22684 * $signed(input_fmap_15[63:48]) +
	 15'sd 16024 * $signed(input_fmap_15[79:64]) +
	 15'sd 14876 * $signed(input_fmap_15[95:80]) +
	 15'sd 11637 * $signed(input_fmap_15[111:96]) +
	 16'sd 29748 * $signed(input_fmap_15[127:112]) +
	 13'sd 2683 * $signed(input_fmap_15[143:128]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 12'sd 1375 * $signed(input_fmap_16[15:0]) +
	 13'sd 3148 * $signed(input_fmap_16[31:16]) +
	 16'sd 26313 * $signed(input_fmap_16[47:32]) +
	 15'sd 14475 * $signed(input_fmap_16[63:48]) +
	 12'sd 1187 * $signed(input_fmap_16[79:64]) +
	 16'sd 18582 * $signed(input_fmap_16[95:80]) +
	 16'sd 32647 * $signed(input_fmap_16[111:96]) +
	 14'sd 6182 * $signed(input_fmap_16[127:112]) +
	 12'sd 1496 * $signed(input_fmap_16[143:128]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 16'sd 32411 * $signed(input_fmap_17[15:0]) +
	 16'sd 17640 * $signed(input_fmap_17[31:16]) +
	 15'sd 10167 * $signed(input_fmap_17[47:32]) +
	 16'sd 32191 * $signed(input_fmap_17[63:48]) +
	 16'sd 20131 * $signed(input_fmap_17[79:64]) +
	 16'sd 31621 * $signed(input_fmap_17[95:80]) +
	 16'sd 31197 * $signed(input_fmap_17[111:96]) +
	 15'sd 16294 * $signed(input_fmap_17[127:112]) +
	 16'sd 22953 * $signed(input_fmap_17[143:128]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 16'sd 19438 * $signed(input_fmap_18[15:0]) +
	 16'sd 24585 * $signed(input_fmap_18[31:16]) +
	 16'sd 24138 * $signed(input_fmap_18[47:32]) +
	 15'sd 8400 * $signed(input_fmap_18[63:48]) +
	 15'sd 11605 * $signed(input_fmap_18[79:64]) +
	 15'sd 12378 * $signed(input_fmap_18[95:80]) +
	 16'sd 26304 * $signed(input_fmap_18[111:96]) +
	 16'sd 23861 * $signed(input_fmap_18[127:112]) +
	 16'sd 20777 * $signed(input_fmap_18[143:128]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 16'sd 30392 * $signed(input_fmap_19[15:0]) +
	 16'sd 20806 * $signed(input_fmap_19[31:16]) +
	 15'sd 12313 * $signed(input_fmap_19[47:32]) +
	 14'sd 6534 * $signed(input_fmap_19[63:48]) +
	 16'sd 28449 * $signed(input_fmap_19[79:64]) +
	 16'sd 28285 * $signed(input_fmap_19[95:80]) +
	 15'sd 12496 * $signed(input_fmap_19[111:96]) +
	 14'sd 5120 * $signed(input_fmap_19[127:112]) +
	 16'sd 27662 * $signed(input_fmap_19[143:128]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 15'sd 14712 * $signed(input_fmap_20[15:0]) +
	 15'sd 8433 * $signed(input_fmap_20[31:16]) +
	 16'sd 32382 * $signed(input_fmap_20[47:32]) +
	 16'sd 22208 * $signed(input_fmap_20[63:48]) +
	 14'sd 4129 * $signed(input_fmap_20[79:64]) +
	 16'sd 23623 * $signed(input_fmap_20[95:80]) +
	 16'sd 26437 * $signed(input_fmap_20[111:96]) +
	 15'sd 8393 * $signed(input_fmap_20[127:112]) +
	 16'sd 18348 * $signed(input_fmap_20[143:128]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 15'sd 13990 * $signed(input_fmap_21[15:0]) +
	 15'sd 10119 * $signed(input_fmap_21[31:16]) +
	 10'sd 346 * $signed(input_fmap_21[47:32]) +
	 14'sd 6183 * $signed(input_fmap_21[63:48]) +
	 15'sd 9778 * $signed(input_fmap_21[79:64]) +
	 16'sd 19109 * $signed(input_fmap_21[95:80]) +
	 16'sd 31119 * $signed(input_fmap_21[111:96]) +
	 13'sd 2441 * $signed(input_fmap_21[127:112]) +
	 16'sd 17295 * $signed(input_fmap_21[143:128]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 14'sd 4253 * $signed(input_fmap_22[15:0]) +
	 16'sd 16711 * $signed(input_fmap_22[31:16]) +
	 16'sd 25164 * $signed(input_fmap_22[47:32]) +
	 16'sd 26945 * $signed(input_fmap_22[63:48]) +
	 16'sd 18839 * $signed(input_fmap_22[79:64]) +
	 16'sd 29122 * $signed(input_fmap_22[95:80]) +
	 16'sd 30665 * $signed(input_fmap_22[111:96]) +
	 15'sd 9015 * $signed(input_fmap_22[127:112]) +
	 13'sd 4077 * $signed(input_fmap_22[143:128]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 16'sd 29585 * $signed(input_fmap_23[15:0]) +
	 16'sd 27228 * $signed(input_fmap_23[31:16]) +
	 15'sd 8197 * $signed(input_fmap_23[47:32]) +
	 16'sd 22241 * $signed(input_fmap_23[63:48]) +
	 16'sd 17693 * $signed(input_fmap_23[79:64]) +
	 12'sd 1982 * $signed(input_fmap_23[95:80]) +
	 16'sd 32000 * $signed(input_fmap_23[111:96]) +
	 13'sd 2208 * $signed(input_fmap_23[127:112]) +
	 16'sd 21049 * $signed(input_fmap_23[143:128]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 13'sd 4000 * $signed(input_fmap_24[15:0]) +
	 13'sd 2886 * $signed(input_fmap_24[31:16]) +
	 16'sd 17327 * $signed(input_fmap_24[47:32]) +
	 16'sd 29068 * $signed(input_fmap_24[63:48]) +
	 14'sd 7061 * $signed(input_fmap_24[79:64]) +
	 15'sd 9110 * $signed(input_fmap_24[95:80]) +
	 15'sd 16140 * $signed(input_fmap_24[111:96]) +
	 16'sd 17034 * $signed(input_fmap_24[127:112]) +
	 16'sd 22316 * $signed(input_fmap_24[143:128]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 15'sd 12782 * $signed(input_fmap_25[15:0]) +
	 16'sd 16510 * $signed(input_fmap_25[31:16]) +
	 16'sd 25506 * $signed(input_fmap_25[47:32]) +
	 13'sd 3923 * $signed(input_fmap_25[63:48]) +
	 16'sd 22354 * $signed(input_fmap_25[79:64]) +
	 15'sd 9103 * $signed(input_fmap_25[95:80]) +
	 16'sd 21747 * $signed(input_fmap_25[111:96]) +
	 16'sd 25891 * $signed(input_fmap_25[127:112]) +
	 16'sd 28312 * $signed(input_fmap_25[143:128]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 12'sd 1385 * $signed(input_fmap_26[15:0]) +
	 16'sd 19718 * $signed(input_fmap_26[31:16]) +
	 12'sd 1597 * $signed(input_fmap_26[47:32]) +
	 16'sd 23841 * $signed(input_fmap_26[63:48]) +
	 11'sd 611 * $signed(input_fmap_26[79:64]) +
	 15'sd 14509 * $signed(input_fmap_26[95:80]) +
	 16'sd 26925 * $signed(input_fmap_26[111:96]) +
	 15'sd 15452 * $signed(input_fmap_26[127:112]) +
	 16'sd 29938 * $signed(input_fmap_26[143:128]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 16'sd 23772 * $signed(input_fmap_27[15:0]) +
	 16'sd 28924 * $signed(input_fmap_27[31:16]) +
	 16'sd 20641 * $signed(input_fmap_27[47:32]) +
	 14'sd 5401 * $signed(input_fmap_27[63:48]) +
	 15'sd 15121 * $signed(input_fmap_27[79:64]) +
	 16'sd 28519 * $signed(input_fmap_27[95:80]) +
	 15'sd 13184 * $signed(input_fmap_27[111:96]) +
	 16'sd 24554 * $signed(input_fmap_27[127:112]) +
	 16'sd 23544 * $signed(input_fmap_27[143:128]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 16'sd 16936 * $signed(input_fmap_28[15:0]) +
	 16'sd 27251 * $signed(input_fmap_28[31:16]) +
	 16'sd 19215 * $signed(input_fmap_28[47:32]) +
	 15'sd 10023 * $signed(input_fmap_28[63:48]) +
	 16'sd 17535 * $signed(input_fmap_28[79:64]) +
	 16'sd 17638 * $signed(input_fmap_28[95:80]) +
	 16'sd 24479 * $signed(input_fmap_28[111:96]) +
	 16'sd 29016 * $signed(input_fmap_28[127:112]) +
	 15'sd 11166 * $signed(input_fmap_28[143:128]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 15'sd 12847 * $signed(input_fmap_29[15:0]) +
	 13'sd 2916 * $signed(input_fmap_29[31:16]) +
	 13'sd 3275 * $signed(input_fmap_29[47:32]) +
	 16'sd 18084 * $signed(input_fmap_29[63:48]) +
	 16'sd 19372 * $signed(input_fmap_29[79:64]) +
	 16'sd 28217 * $signed(input_fmap_29[95:80]) +
	 16'sd 32183 * $signed(input_fmap_29[111:96]) +
	 16'sd 18306 * $signed(input_fmap_29[127:112]) +
	 11'sd 995 * $signed(input_fmap_29[143:128]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 16'sd 21140 * $signed(input_fmap_30[15:0]) +
	 16'sd 23465 * $signed(input_fmap_30[31:16]) +
	 16'sd 23503 * $signed(input_fmap_30[47:32]) +
	 16'sd 26160 * $signed(input_fmap_30[63:48]) +
	 16'sd 17320 * $signed(input_fmap_30[79:64]) +
	 16'sd 26679 * $signed(input_fmap_30[95:80]) +
	 14'sd 7778 * $signed(input_fmap_30[111:96]) +
	 14'sd 7641 * $signed(input_fmap_30[127:112]) +
	 13'sd 2656 * $signed(input_fmap_30[143:128]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 16'sd 28663 * $signed(input_fmap_31[15:0]) +
	 10'sd 470 * $signed(input_fmap_31[31:16]) +
	 16'sd 21278 * $signed(input_fmap_31[47:32]) +
	 15'sd 10039 * $signed(input_fmap_31[63:48]) +
	 16'sd 24804 * $signed(input_fmap_31[79:64]) +
	 15'sd 9590 * $signed(input_fmap_31[95:80]) +
	 9'sd 153 * $signed(input_fmap_31[111:96]) +
	 16'sd 18623 * $signed(input_fmap_31[127:112]) +
	 16'sd 28707 * $signed(input_fmap_31[143:128]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 15'd12686;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 15'd12301;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 14'd8151;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 14'd5317;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 14'd6655;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 16'd19188;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 16'd18245;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 15'd8376;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 15'd11431;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 15'd14250;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 16'd30351;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 15'd8712;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 16'd30185;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 16'd25023;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 15'd14931;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 15'd8723;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 16'd19550;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 16'd21896;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18 + 14'd7518;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 15'd11070;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 15'd15969;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21 + 13'd3622;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22 + 14'd6486;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 16'd31285;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24 + 16'd25286;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25 + 11'd986;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 15'd12487;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 15'd9454;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28 + 16'd32234;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 16'd21301;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 16'd16529;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 16'd22300;

logic [15:0] relu_0;
assign relu_0[15:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[29:15]}} :'d6) : '0;
logic [15:0] relu_1;
assign relu_1[15:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[29:15]}} :'d6) : '0;
logic [15:0] relu_2;
assign relu_2[15:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[29:15]}} :'d6) : '0;
logic [15:0] relu_3;
assign relu_3[15:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[29:15]}} :'d6) : '0;
logic [15:0] relu_4;
assign relu_4[15:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[29:15]}} :'d6) : '0;
logic [15:0] relu_5;
assign relu_5[15:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[29:15]}} :'d6) : '0;
logic [15:0] relu_6;
assign relu_6[15:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[29:15]}} :'d6) : '0;
logic [15:0] relu_7;
assign relu_7[15:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[29:15]}} :'d6) : '0;
logic [15:0] relu_8;
assign relu_8[15:0] = (bias_add_8[31]==0) ? ((bias_add_8<3'd6) ? {{bias_add_8[31],bias_add_8[29:15]}} :'d6) : '0;
logic [15:0] relu_9;
assign relu_9[15:0] = (bias_add_9[31]==0) ? ((bias_add_9<3'd6) ? {{bias_add_9[31],bias_add_9[29:15]}} :'d6) : '0;
logic [15:0] relu_10;
assign relu_10[15:0] = (bias_add_10[31]==0) ? ((bias_add_10<3'd6) ? {{bias_add_10[31],bias_add_10[29:15]}} :'d6) : '0;
logic [15:0] relu_11;
assign relu_11[15:0] = (bias_add_11[31]==0) ? ((bias_add_11<3'd6) ? {{bias_add_11[31],bias_add_11[29:15]}} :'d6) : '0;
logic [15:0] relu_12;
assign relu_12[15:0] = (bias_add_12[31]==0) ? ((bias_add_12<3'd6) ? {{bias_add_12[31],bias_add_12[29:15]}} :'d6) : '0;
logic [15:0] relu_13;
assign relu_13[15:0] = (bias_add_13[31]==0) ? ((bias_add_13<3'd6) ? {{bias_add_13[31],bias_add_13[29:15]}} :'d6) : '0;
logic [15:0] relu_14;
assign relu_14[15:0] = (bias_add_14[31]==0) ? ((bias_add_14<3'd6) ? {{bias_add_14[31],bias_add_14[29:15]}} :'d6) : '0;
logic [15:0] relu_15;
assign relu_15[15:0] = (bias_add_15[31]==0) ? ((bias_add_15<3'd6) ? {{bias_add_15[31],bias_add_15[29:15]}} :'d6) : '0;
logic [15:0] relu_16;
assign relu_16[15:0] = (bias_add_16[31]==0) ? ((bias_add_16<3'd6) ? {{bias_add_16[31],bias_add_16[29:15]}} :'d6) : '0;
logic [15:0] relu_17;
assign relu_17[15:0] = (bias_add_17[31]==0) ? ((bias_add_17<3'd6) ? {{bias_add_17[31],bias_add_17[29:15]}} :'d6) : '0;
logic [15:0] relu_18;
assign relu_18[15:0] = (bias_add_18[31]==0) ? ((bias_add_18<3'd6) ? {{bias_add_18[31],bias_add_18[29:15]}} :'d6) : '0;
logic [15:0] relu_19;
assign relu_19[15:0] = (bias_add_19[31]==0) ? ((bias_add_19<3'd6) ? {{bias_add_19[31],bias_add_19[29:15]}} :'d6) : '0;
logic [15:0] relu_20;
assign relu_20[15:0] = (bias_add_20[31]==0) ? ((bias_add_20<3'd6) ? {{bias_add_20[31],bias_add_20[29:15]}} :'d6) : '0;
logic [15:0] relu_21;
assign relu_21[15:0] = (bias_add_21[31]==0) ? ((bias_add_21<3'd6) ? {{bias_add_21[31],bias_add_21[29:15]}} :'d6) : '0;
logic [15:0] relu_22;
assign relu_22[15:0] = (bias_add_22[31]==0) ? ((bias_add_22<3'd6) ? {{bias_add_22[31],bias_add_22[29:15]}} :'d6) : '0;
logic [15:0] relu_23;
assign relu_23[15:0] = (bias_add_23[31]==0) ? ((bias_add_23<3'd6) ? {{bias_add_23[31],bias_add_23[29:15]}} :'d6) : '0;
logic [15:0] relu_24;
assign relu_24[15:0] = (bias_add_24[31]==0) ? ((bias_add_24<3'd6) ? {{bias_add_24[31],bias_add_24[29:15]}} :'d6) : '0;
logic [15:0] relu_25;
assign relu_25[15:0] = (bias_add_25[31]==0) ? ((bias_add_25<3'd6) ? {{bias_add_25[31],bias_add_25[29:15]}} :'d6) : '0;
logic [15:0] relu_26;
assign relu_26[15:0] = (bias_add_26[31]==0) ? ((bias_add_26<3'd6) ? {{bias_add_26[31],bias_add_26[29:15]}} :'d6) : '0;
logic [15:0] relu_27;
assign relu_27[15:0] = (bias_add_27[31]==0) ? ((bias_add_27<3'd6) ? {{bias_add_27[31],bias_add_27[29:15]}} :'d6) : '0;
logic [15:0] relu_28;
assign relu_28[15:0] = (bias_add_28[31]==0) ? ((bias_add_28<3'd6) ? {{bias_add_28[31],bias_add_28[29:15]}} :'d6) : '0;
logic [15:0] relu_29;
assign relu_29[15:0] = (bias_add_29[31]==0) ? ((bias_add_29<3'd6) ? {{bias_add_29[31],bias_add_29[29:15]}} :'d6) : '0;
logic [15:0] relu_30;
assign relu_30[15:0] = (bias_add_30[31]==0) ? ((bias_add_30<3'd6) ? {{bias_add_30[31],bias_add_30[29:15]}} :'d6) : '0;
logic [15:0] relu_31;
assign relu_31[15:0] = (bias_add_31[31]==0) ? ((bias_add_31<3'd6) ? {{bias_add_31[31],bias_add_31[29:15]}} :'d6) : '0;

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
