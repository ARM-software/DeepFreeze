module conv5_dw (
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
logic [71:0] input_fmap_16;
assign input_fmap_16 = input_act_ff[1223:1152];
logic [71:0] input_fmap_17;
assign input_fmap_17 = input_act_ff[1295:1224];
logic [71:0] input_fmap_18;
assign input_fmap_18 = input_act_ff[1367:1296];
logic [71:0] input_fmap_19;
assign input_fmap_19 = input_act_ff[1439:1368];
logic [71:0] input_fmap_20;
assign input_fmap_20 = input_act_ff[1511:1440];
logic [71:0] input_fmap_21;
assign input_fmap_21 = input_act_ff[1583:1512];
logic [71:0] input_fmap_22;
assign input_fmap_22 = input_act_ff[1655:1584];
logic [71:0] input_fmap_23;
assign input_fmap_23 = input_act_ff[1727:1656];
logic [71:0] input_fmap_24;
assign input_fmap_24 = input_act_ff[1799:1728];
logic [71:0] input_fmap_25;
assign input_fmap_25 = input_act_ff[1871:1800];
logic [71:0] input_fmap_26;
assign input_fmap_26 = input_act_ff[1943:1872];
logic [71:0] input_fmap_27;
assign input_fmap_27 = input_act_ff[2015:1944];
logic [71:0] input_fmap_28;
assign input_fmap_28 = input_act_ff[2087:2016];
logic [71:0] input_fmap_29;
assign input_fmap_29 = input_act_ff[2159:2088];
logic [71:0] input_fmap_30;
assign input_fmap_30 = input_act_ff[2231:2160];
logic [71:0] input_fmap_31;
assign input_fmap_31 = input_act_ff[2303:2232];

logic signed [31:0] dw_conv_mac_0;
assign dw_conv_mac_0 = 
	 7'sd 47 * $signed(input_fmap_0[7:0]) +
	 8'sd 84 * $signed(input_fmap_0[15:8]) +
	 6'sd 19 * $signed(input_fmap_0[23:16]) +
	 6'sd 30 * $signed(input_fmap_0[31:24]) +
	 8'sd 124 * $signed(input_fmap_0[39:32]) +
	 8'sd 121 * $signed(input_fmap_0[47:40]) +
	 7'sd 34 * $signed(input_fmap_0[55:48]) +
	 8'sd 68 * $signed(input_fmap_0[63:56]) +
	 5'sd 10 * $signed(input_fmap_0[71:64]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 8'sd 116 * $signed(input_fmap_1[7:0]) +
	 8'sd 110 * $signed(input_fmap_1[15:8]) +
	 8'sd 105 * $signed(input_fmap_1[23:16]) +
	 6'sd 23 * $signed(input_fmap_1[31:24]) +
	 8'sd 96 * $signed(input_fmap_1[39:32]) +
	 7'sd 40 * $signed(input_fmap_1[47:40]) +
	 7'sd 63 * $signed(input_fmap_1[55:48]) +
	 8'sd 77 * $signed(input_fmap_1[63:56]) +
	 8'sd 67 * $signed(input_fmap_1[71:64]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 7'sd 58 * $signed(input_fmap_2[7:0]) +
	 6'sd 16 * $signed(input_fmap_2[15:8]) +
	 8'sd 79 * $signed(input_fmap_2[23:16]) +
	 8'sd 122 * $signed(input_fmap_2[31:24]) +
	 7'sd 34 * $signed(input_fmap_2[39:32]) +
	 6'sd 22 * $signed(input_fmap_2[47:40]) +
	 8'sd 90 * $signed(input_fmap_2[55:48]) +
	 8'sd 114 * $signed(input_fmap_2[63:56]) +
	 6'sd 22 * $signed(input_fmap_2[71:64]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 8'sd 124 * $signed(input_fmap_3[7:0]) +
	 7'sd 49 * $signed(input_fmap_3[15:8]) +
	 7'sd 53 * $signed(input_fmap_3[23:16]) +
	 8'sd 89 * $signed(input_fmap_3[31:24]) +
	 7'sd 61 * $signed(input_fmap_3[39:32]) +
	 8'sd 106 * $signed(input_fmap_3[47:40]) +
	 8'sd 92 * $signed(input_fmap_3[55:48]) +
	 7'sd 42 * $signed(input_fmap_3[63:56]) +
	 7'sd 44 * $signed(input_fmap_3[71:64]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 6'sd 22 * $signed(input_fmap_4[7:0]) +
	 6'sd 28 * $signed(input_fmap_4[15:8]) +
	 2'sd 1 * $signed(input_fmap_4[23:16]) +
	 8'sd 95 * $signed(input_fmap_4[31:24]) +
	 8'sd 79 * $signed(input_fmap_4[39:32]) +
	 8'sd 72 * $signed(input_fmap_4[47:40]) +
	 6'sd 22 * $signed(input_fmap_4[55:48]) +
	 7'sd 56 * $signed(input_fmap_4[63:56]) +
	 8'sd 122 * $signed(input_fmap_4[71:64]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 8'sd 111 * $signed(input_fmap_5[7:0]) +
	 8'sd 123 * $signed(input_fmap_5[15:8]) +
	 8'sd 87 * $signed(input_fmap_5[23:16]) +
	 6'sd 30 * $signed(input_fmap_5[31:24]) +
	 9'sd 128 * $signed(input_fmap_5[39:32]) +
	 8'sd 111 * $signed(input_fmap_5[47:40]) +
	 8'sd 112 * $signed(input_fmap_5[55:48]) +
	 8'sd 109 * $signed(input_fmap_5[63:56]) +
	 8'sd 127 * $signed(input_fmap_5[71:64]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 7'sd 60 * $signed(input_fmap_6[7:0]) +
	 9'sd 128 * $signed(input_fmap_6[15:8]) +
	 7'sd 41 * $signed(input_fmap_6[23:16]) +
	 8'sd 74 * $signed(input_fmap_6[31:24]) +
	 6'sd 29 * $signed(input_fmap_6[39:32]) +
	 8'sd 114 * $signed(input_fmap_6[47:40]) +
	 7'sd 41 * $signed(input_fmap_6[55:48]) +
	 8'sd 121 * $signed(input_fmap_6[71:64]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 7'sd 48 * $signed(input_fmap_7[7:0]) +
	 8'sd 72 * $signed(input_fmap_7[15:8]) +
	 7'sd 51 * $signed(input_fmap_7[23:16]) +
	 7'sd 50 * $signed(input_fmap_7[31:24]) +
	 8'sd 69 * $signed(input_fmap_7[39:32]) +
	 8'sd 91 * $signed(input_fmap_7[47:40]) +
	 6'sd 16 * $signed(input_fmap_7[55:48]) +
	 8'sd 103 * $signed(input_fmap_7[63:56]) +
	 8'sd 108 * $signed(input_fmap_7[71:64]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 5'sd 13 * $signed(input_fmap_8[7:0]) +
	 7'sd 40 * $signed(input_fmap_8[15:8]) +
	 8'sd 125 * $signed(input_fmap_8[23:16]) +
	 8'sd 73 * $signed(input_fmap_8[31:24]) +
	 8'sd 103 * $signed(input_fmap_8[39:32]) +
	 8'sd 125 * $signed(input_fmap_8[47:40]) +
	 7'sd 49 * $signed(input_fmap_8[55:48]) +
	 8'sd 86 * $signed(input_fmap_8[63:56]) +
	 8'sd 97 * $signed(input_fmap_8[71:64]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 8'sd 97 * $signed(input_fmap_9[7:0]) +
	 8'sd 75 * $signed(input_fmap_9[15:8]) +
	 7'sd 46 * $signed(input_fmap_9[23:16]) +
	 6'sd 31 * $signed(input_fmap_9[31:24]) +
	 6'sd 17 * $signed(input_fmap_9[39:32]) +
	 7'sd 57 * $signed(input_fmap_9[47:40]) +
	 8'sd 123 * $signed(input_fmap_9[55:48]) +
	 6'sd 26 * $signed(input_fmap_9[63:56]) +
	 8'sd 79 * $signed(input_fmap_9[71:64]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 5'sd 13 * $signed(input_fmap_10[7:0]) +
	 4'sd 7 * $signed(input_fmap_10[15:8]) +
	 7'sd 62 * $signed(input_fmap_10[23:16]) +
	 8'sd 92 * $signed(input_fmap_10[31:24]) +
	 8'sd 126 * $signed(input_fmap_10[39:32]) +
	 8'sd 90 * $signed(input_fmap_10[47:40]) +
	 7'sd 51 * $signed(input_fmap_10[55:48]) +
	 8'sd 99 * $signed(input_fmap_10[63:56]) +
	 7'sd 60 * $signed(input_fmap_10[71:64]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 5'sd 11 * $signed(input_fmap_11[7:0]) +
	 6'sd 27 * $signed(input_fmap_11[15:8]) +
	 8'sd 84 * $signed(input_fmap_11[23:16]) +
	 8'sd 107 * $signed(input_fmap_11[31:24]) +
	 8'sd 71 * $signed(input_fmap_11[39:32]) +
	 6'sd 23 * $signed(input_fmap_11[47:40]) +
	 7'sd 60 * $signed(input_fmap_11[55:48]) +
	 7'sd 57 * $signed(input_fmap_11[63:56]) +
	 7'sd 34 * $signed(input_fmap_11[71:64]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 8'sd 64 * $signed(input_fmap_12[7:0]) +
	 5'sd 13 * $signed(input_fmap_12[15:8]) +
	 7'sd 43 * $signed(input_fmap_12[23:16]) +
	 7'sd 35 * $signed(input_fmap_12[31:24]) +
	 8'sd 84 * $signed(input_fmap_12[39:32]) +
	 8'sd 75 * $signed(input_fmap_12[47:40]) +
	 7'sd 46 * $signed(input_fmap_12[55:48]) +
	 7'sd 46 * $signed(input_fmap_12[63:56]) +
	 8'sd 82 * $signed(input_fmap_12[71:64]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 7'sd 58 * $signed(input_fmap_13[7:0]) +
	 8'sd 76 * $signed(input_fmap_13[15:8]) +
	 6'sd 30 * $signed(input_fmap_13[23:16]) +
	 6'sd 23 * $signed(input_fmap_13[31:24]) +
	 8'sd 118 * $signed(input_fmap_13[39:32]) +
	 7'sd 52 * $signed(input_fmap_13[47:40]) +
	 7'sd 32 * $signed(input_fmap_13[55:48]) +
	 8'sd 81 * $signed(input_fmap_13[63:56]) +
	 6'sd 31 * $signed(input_fmap_13[71:64]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 8'sd 88 * $signed(input_fmap_14[7:0]) +
	 8'sd 111 * $signed(input_fmap_14[15:8]) +
	 8'sd 100 * $signed(input_fmap_14[23:16]) +
	 8'sd 109 * $signed(input_fmap_14[31:24]) +
	 4'sd 6 * $signed(input_fmap_14[39:32]) +
	 6'sd 20 * $signed(input_fmap_14[47:40]) +
	 7'sd 44 * $signed(input_fmap_14[55:48]) +
	 7'sd 40 * $signed(input_fmap_14[63:56]) +
	 7'sd 35 * $signed(input_fmap_14[71:64]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 6'sd 25 * $signed(input_fmap_15[7:0]) +
	 5'sd 11 * $signed(input_fmap_15[15:8]) +
	 5'sd 15 * $signed(input_fmap_15[23:16]) +
	 8'sd 89 * $signed(input_fmap_15[31:24]) +
	 7'sd 63 * $signed(input_fmap_15[39:32]) +
	 7'sd 58 * $signed(input_fmap_15[47:40]) +
	 7'sd 45 * $signed(input_fmap_15[55:48]) +
	 8'sd 116 * $signed(input_fmap_15[63:56]) +
	 5'sd 10 * $signed(input_fmap_15[71:64]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 4'sd 5 * $signed(input_fmap_16[7:0]) +
	 5'sd 12 * $signed(input_fmap_16[15:8]) +
	 8'sd 103 * $signed(input_fmap_16[23:16]) +
	 7'sd 57 * $signed(input_fmap_16[31:24]) +
	 4'sd 5 * $signed(input_fmap_16[39:32]) +
	 8'sd 73 * $signed(input_fmap_16[47:40]) +
	 9'sd 128 * $signed(input_fmap_16[55:48]) +
	 6'sd 24 * $signed(input_fmap_16[63:56]) +
	 4'sd 6 * $signed(input_fmap_16[71:64]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 8'sd 127 * $signed(input_fmap_17[7:0]) +
	 8'sd 69 * $signed(input_fmap_17[15:8]) +
	 7'sd 40 * $signed(input_fmap_17[23:16]) +
	 8'sd 126 * $signed(input_fmap_17[31:24]) +
	 8'sd 79 * $signed(input_fmap_17[39:32]) +
	 8'sd 124 * $signed(input_fmap_17[47:40]) +
	 8'sd 122 * $signed(input_fmap_17[55:48]) +
	 8'sd 64 * $signed(input_fmap_17[63:56]) +
	 8'sd 90 * $signed(input_fmap_17[71:64]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 8'sd 76 * $signed(input_fmap_18[7:0]) +
	 8'sd 96 * $signed(input_fmap_18[15:8]) +
	 8'sd 94 * $signed(input_fmap_18[23:16]) +
	 7'sd 33 * $signed(input_fmap_18[31:24]) +
	 7'sd 45 * $signed(input_fmap_18[39:32]) +
	 7'sd 48 * $signed(input_fmap_18[47:40]) +
	 8'sd 103 * $signed(input_fmap_18[55:48]) +
	 8'sd 93 * $signed(input_fmap_18[63:56]) +
	 8'sd 81 * $signed(input_fmap_18[71:64]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 8'sd 119 * $signed(input_fmap_19[7:0]) +
	 8'sd 81 * $signed(input_fmap_19[15:8]) +
	 7'sd 48 * $signed(input_fmap_19[23:16]) +
	 6'sd 26 * $signed(input_fmap_19[31:24]) +
	 8'sd 111 * $signed(input_fmap_19[39:32]) +
	 8'sd 110 * $signed(input_fmap_19[47:40]) +
	 7'sd 49 * $signed(input_fmap_19[55:48]) +
	 6'sd 20 * $signed(input_fmap_19[63:56]) +
	 8'sd 108 * $signed(input_fmap_19[71:64]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 7'sd 57 * $signed(input_fmap_20[7:0]) +
	 7'sd 33 * $signed(input_fmap_20[15:8]) +
	 8'sd 126 * $signed(input_fmap_20[23:16]) +
	 8'sd 87 * $signed(input_fmap_20[31:24]) +
	 6'sd 16 * $signed(input_fmap_20[39:32]) +
	 8'sd 92 * $signed(input_fmap_20[47:40]) +
	 8'sd 103 * $signed(input_fmap_20[55:48]) +
	 7'sd 33 * $signed(input_fmap_20[63:56]) +
	 8'sd 72 * $signed(input_fmap_20[71:64]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 7'sd 55 * $signed(input_fmap_21[7:0]) +
	 7'sd 40 * $signed(input_fmap_21[15:8]) +
	 2'sd 1 * $signed(input_fmap_21[23:16]) +
	 6'sd 24 * $signed(input_fmap_21[31:24]) +
	 7'sd 38 * $signed(input_fmap_21[39:32]) +
	 8'sd 75 * $signed(input_fmap_21[47:40]) +
	 8'sd 122 * $signed(input_fmap_21[55:48]) +
	 5'sd 10 * $signed(input_fmap_21[63:56]) +
	 8'sd 68 * $signed(input_fmap_21[71:64]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 6'sd 17 * $signed(input_fmap_22[7:0]) +
	 8'sd 65 * $signed(input_fmap_22[15:8]) +
	 8'sd 98 * $signed(input_fmap_22[23:16]) +
	 8'sd 105 * $signed(input_fmap_22[31:24]) +
	 8'sd 74 * $signed(input_fmap_22[39:32]) +
	 8'sd 114 * $signed(input_fmap_22[47:40]) +
	 8'sd 120 * $signed(input_fmap_22[55:48]) +
	 7'sd 35 * $signed(input_fmap_22[63:56]) +
	 6'sd 16 * $signed(input_fmap_22[71:64]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 8'sd 116 * $signed(input_fmap_23[7:0]) +
	 8'sd 106 * $signed(input_fmap_23[15:8]) +
	 7'sd 32 * $signed(input_fmap_23[23:16]) +
	 8'sd 87 * $signed(input_fmap_23[31:24]) +
	 8'sd 69 * $signed(input_fmap_23[39:32]) +
	 5'sd 8 * $signed(input_fmap_23[47:40]) +
	 8'sd 125 * $signed(input_fmap_23[55:48]) +
	 5'sd 9 * $signed(input_fmap_23[63:56]) +
	 8'sd 82 * $signed(input_fmap_23[71:64]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 6'sd 16 * $signed(input_fmap_24[7:0]) +
	 5'sd 11 * $signed(input_fmap_24[15:8]) +
	 8'sd 68 * $signed(input_fmap_24[23:16]) +
	 8'sd 114 * $signed(input_fmap_24[31:24]) +
	 6'sd 28 * $signed(input_fmap_24[39:32]) +
	 7'sd 36 * $signed(input_fmap_24[47:40]) +
	 7'sd 63 * $signed(input_fmap_24[55:48]) +
	 8'sd 67 * $signed(input_fmap_24[63:56]) +
	 8'sd 87 * $signed(input_fmap_24[71:64]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 7'sd 50 * $signed(input_fmap_25[7:0]) +
	 8'sd 64 * $signed(input_fmap_25[15:8]) +
	 8'sd 100 * $signed(input_fmap_25[23:16]) +
	 5'sd 15 * $signed(input_fmap_25[31:24]) +
	 8'sd 87 * $signed(input_fmap_25[39:32]) +
	 7'sd 36 * $signed(input_fmap_25[47:40]) +
	 8'sd 85 * $signed(input_fmap_25[55:48]) +
	 8'sd 101 * $signed(input_fmap_25[63:56]) +
	 8'sd 111 * $signed(input_fmap_25[71:64]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 4'sd 5 * $signed(input_fmap_26[7:0]) +
	 8'sd 77 * $signed(input_fmap_26[15:8]) +
	 4'sd 6 * $signed(input_fmap_26[23:16]) +
	 8'sd 93 * $signed(input_fmap_26[31:24]) +
	 3'sd 2 * $signed(input_fmap_26[39:32]) +
	 7'sd 57 * $signed(input_fmap_26[47:40]) +
	 8'sd 105 * $signed(input_fmap_26[55:48]) +
	 7'sd 60 * $signed(input_fmap_26[63:56]) +
	 8'sd 117 * $signed(input_fmap_26[71:64]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 8'sd 93 * $signed(input_fmap_27[7:0]) +
	 8'sd 113 * $signed(input_fmap_27[15:8]) +
	 8'sd 81 * $signed(input_fmap_27[23:16]) +
	 6'sd 21 * $signed(input_fmap_27[31:24]) +
	 7'sd 59 * $signed(input_fmap_27[39:32]) +
	 8'sd 111 * $signed(input_fmap_27[47:40]) +
	 7'sd 51 * $signed(input_fmap_27[55:48]) +
	 8'sd 96 * $signed(input_fmap_27[63:56]) +
	 8'sd 92 * $signed(input_fmap_27[71:64]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 8'sd 66 * $signed(input_fmap_28[7:0]) +
	 8'sd 106 * $signed(input_fmap_28[15:8]) +
	 8'sd 75 * $signed(input_fmap_28[23:16]) +
	 7'sd 39 * $signed(input_fmap_28[31:24]) +
	 8'sd 68 * $signed(input_fmap_28[39:32]) +
	 8'sd 69 * $signed(input_fmap_28[47:40]) +
	 8'sd 96 * $signed(input_fmap_28[55:48]) +
	 8'sd 113 * $signed(input_fmap_28[63:56]) +
	 7'sd 44 * $signed(input_fmap_28[71:64]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 7'sd 50 * $signed(input_fmap_29[7:0]) +
	 5'sd 11 * $signed(input_fmap_29[15:8]) +
	 5'sd 13 * $signed(input_fmap_29[23:16]) +
	 8'sd 71 * $signed(input_fmap_29[31:24]) +
	 8'sd 76 * $signed(input_fmap_29[39:32]) +
	 8'sd 110 * $signed(input_fmap_29[47:40]) +
	 8'sd 126 * $signed(input_fmap_29[55:48]) +
	 8'sd 72 * $signed(input_fmap_29[63:56]) +
	 4'sd 4 * $signed(input_fmap_29[71:64]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 8'sd 83 * $signed(input_fmap_30[7:0]) +
	 8'sd 92 * $signed(input_fmap_30[15:8]) +
	 8'sd 92 * $signed(input_fmap_30[23:16]) +
	 8'sd 102 * $signed(input_fmap_30[31:24]) +
	 8'sd 68 * $signed(input_fmap_30[39:32]) +
	 8'sd 104 * $signed(input_fmap_30[47:40]) +
	 6'sd 30 * $signed(input_fmap_30[55:48]) +
	 6'sd 30 * $signed(input_fmap_30[63:56]) +
	 5'sd 10 * $signed(input_fmap_30[71:64]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 8'sd 112 * $signed(input_fmap_31[7:0]) +
	 3'sd 2 * $signed(input_fmap_31[15:8]) +
	 8'sd 83 * $signed(input_fmap_31[23:16]) +
	 7'sd 39 * $signed(input_fmap_31[31:24]) +
	 8'sd 97 * $signed(input_fmap_31[39:32]) +
	 7'sd 37 * $signed(input_fmap_31[47:40]) +
	 2'sd 1 * $signed(input_fmap_31[55:48]) +
	 8'sd 73 * $signed(input_fmap_31[63:56]) +
	 8'sd 112 * $signed(input_fmap_31[71:64]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 7'd50;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 7'd48;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 7'd32;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 6'd21;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 6'd26;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 8'd75;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 8'd71;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 7'd33;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 7'd45;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 7'd56;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 8'd119;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 7'd34;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 8'd118;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 8'd98;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 7'd58;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 7'd34;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 8'd76;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 8'd86;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18 + 6'd29;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 7'd43;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 7'd62;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21 + 5'd14;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22 + 6'd25;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 8'd122;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24 + 8'd99;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25 + 4'd4;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 7'd49;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 7'd37;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28 + 8'd126;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 8'd83;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 8'd65;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 8'd87;

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
logic [7:0] relu_16;
assign relu_16[7:0] = (bias_add_16[31]==0) ? ((bias_add_16<3'd6) ? {{bias_add_16[31],bias_add_16[13:7]}} :'d6) : '0;
logic [7:0] relu_17;
assign relu_17[7:0] = (bias_add_17[31]==0) ? ((bias_add_17<3'd6) ? {{bias_add_17[31],bias_add_17[13:7]}} :'d6) : '0;
logic [7:0] relu_18;
assign relu_18[7:0] = (bias_add_18[31]==0) ? ((bias_add_18<3'd6) ? {{bias_add_18[31],bias_add_18[13:7]}} :'d6) : '0;
logic [7:0] relu_19;
assign relu_19[7:0] = (bias_add_19[31]==0) ? ((bias_add_19<3'd6) ? {{bias_add_19[31],bias_add_19[13:7]}} :'d6) : '0;
logic [7:0] relu_20;
assign relu_20[7:0] = (bias_add_20[31]==0) ? ((bias_add_20<3'd6) ? {{bias_add_20[31],bias_add_20[13:7]}} :'d6) : '0;
logic [7:0] relu_21;
assign relu_21[7:0] = (bias_add_21[31]==0) ? ((bias_add_21<3'd6) ? {{bias_add_21[31],bias_add_21[13:7]}} :'d6) : '0;
logic [7:0] relu_22;
assign relu_22[7:0] = (bias_add_22[31]==0) ? ((bias_add_22<3'd6) ? {{bias_add_22[31],bias_add_22[13:7]}} :'d6) : '0;
logic [7:0] relu_23;
assign relu_23[7:0] = (bias_add_23[31]==0) ? ((bias_add_23<3'd6) ? {{bias_add_23[31],bias_add_23[13:7]}} :'d6) : '0;
logic [7:0] relu_24;
assign relu_24[7:0] = (bias_add_24[31]==0) ? ((bias_add_24<3'd6) ? {{bias_add_24[31],bias_add_24[13:7]}} :'d6) : '0;
logic [7:0] relu_25;
assign relu_25[7:0] = (bias_add_25[31]==0) ? ((bias_add_25<3'd6) ? {{bias_add_25[31],bias_add_25[13:7]}} :'d6) : '0;
logic [7:0] relu_26;
assign relu_26[7:0] = (bias_add_26[31]==0) ? ((bias_add_26<3'd6) ? {{bias_add_26[31],bias_add_26[13:7]}} :'d6) : '0;
logic [7:0] relu_27;
assign relu_27[7:0] = (bias_add_27[31]==0) ? ((bias_add_27<3'd6) ? {{bias_add_27[31],bias_add_27[13:7]}} :'d6) : '0;
logic [7:0] relu_28;
assign relu_28[7:0] = (bias_add_28[31]==0) ? ((bias_add_28<3'd6) ? {{bias_add_28[31],bias_add_28[13:7]}} :'d6) : '0;
logic [7:0] relu_29;
assign relu_29[7:0] = (bias_add_29[31]==0) ? ((bias_add_29<3'd6) ? {{bias_add_29[31],bias_add_29[13:7]}} :'d6) : '0;
logic [7:0] relu_30;
assign relu_30[7:0] = (bias_add_30[31]==0) ? ((bias_add_30<3'd6) ? {{bias_add_30[31],bias_add_30[13:7]}} :'d6) : '0;
logic [7:0] relu_31;
assign relu_31[7:0] = (bias_add_31[31]==0) ? ((bias_add_31<3'd6) ? {{bias_add_31[31],bias_add_31[13:7]}} :'d6) : '0;

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
