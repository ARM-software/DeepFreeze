module conv4_dw (
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
	 16'sd 22502 * $signed(input_fmap_0[7:0]) +
	 15'sd 14050 * $signed(input_fmap_0[15:8]) +
	 16'sd 31177 * $signed(input_fmap_0[23:16]) +
	 14'sd 4769 * $signed(input_fmap_0[31:24]) +
	 16'sd 25408 * $signed(input_fmap_0[39:32]) +
	 16'sd 24212 * $signed(input_fmap_0[47:40]) +
	 16'sd 28707 * $signed(input_fmap_0[55:48]) +
	 15'sd 10588 * $signed(input_fmap_0[63:56]) +
	 16'sd 19486 * $signed(input_fmap_0[71:64]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 16'sd 28683 * $signed(input_fmap_1[7:0]) +
	 16'sd 31470 * $signed(input_fmap_1[15:8]) +
	 15'sd 11994 * $signed(input_fmap_1[23:16]) +
	 16'sd 16762 * $signed(input_fmap_1[31:24]) +
	 16'sd 19441 * $signed(input_fmap_1[39:32]) +
	 15'sd 16129 * $signed(input_fmap_1[47:40]) +
	 15'sd 8640 * $signed(input_fmap_1[55:48]) +
	 14'sd 8024 * $signed(input_fmap_1[63:56]) +
	 16'sd 19163 * $signed(input_fmap_1[71:64]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 15'sd 10017 * $signed(input_fmap_2[7:0]) +
	 16'sd 32260 * $signed(input_fmap_2[15:8]) +
	 16'sd 23913 * $signed(input_fmap_2[23:16]) +
	 15'sd 12894 * $signed(input_fmap_2[31:24]) +
	 16'sd 30133 * $signed(input_fmap_2[39:32]) +
	 16'sd 29872 * $signed(input_fmap_2[47:40]) +
	 14'sd 5161 * $signed(input_fmap_2[55:48]) +
	 14'sd 4279 * $signed(input_fmap_2[63:56]) +
	 16'sd 25603 * $signed(input_fmap_2[71:64]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 16'sd 19955 * $signed(input_fmap_3[7:0]) +
	 12'sd 1304 * $signed(input_fmap_3[15:8]) +
	 16'sd 22901 * $signed(input_fmap_3[23:16]) +
	 14'sd 5355 * $signed(input_fmap_3[31:24]) +
	 13'sd 3627 * $signed(input_fmap_3[39:32]) +
	 16'sd 21656 * $signed(input_fmap_3[47:40]) +
	 13'sd 2802 * $signed(input_fmap_3[55:48]) +
	 13'sd 2726 * $signed(input_fmap_3[63:56]) +
	 15'sd 12018 * $signed(input_fmap_3[71:64]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 16'sd 24337 * $signed(input_fmap_4[7:0]) +
	 16'sd 21655 * $signed(input_fmap_4[15:8]) +
	 16'sd 28104 * $signed(input_fmap_4[23:16]) +
	 16'sd 22486 * $signed(input_fmap_4[31:24]) +
	 16'sd 27355 * $signed(input_fmap_4[39:32]) +
	 13'sd 3107 * $signed(input_fmap_4[47:40]) +
	 13'sd 2421 * $signed(input_fmap_4[55:48]) +
	 15'sd 11044 * $signed(input_fmap_4[63:56]) +
	 14'sd 5014 * $signed(input_fmap_4[71:64]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 16'sd 31235 * $signed(input_fmap_5[7:0]) +
	 16'sd 25501 * $signed(input_fmap_5[15:8]) +
	 16'sd 25962 * $signed(input_fmap_5[23:16]) +
	 15'sd 12375 * $signed(input_fmap_5[31:24]) +
	 15'sd 14249 * $signed(input_fmap_5[39:32]) +
	 15'sd 10909 * $signed(input_fmap_5[47:40]) +
	 13'sd 3326 * $signed(input_fmap_5[55:48]) +
	 14'sd 6070 * $signed(input_fmap_5[63:56]) +
	 15'sd 9241 * $signed(input_fmap_5[71:64]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 16'sd 20291 * $signed(input_fmap_6[7:0]) +
	 14'sd 4688 * $signed(input_fmap_6[15:8]) +
	 16'sd 16727 * $signed(input_fmap_6[23:16]) +
	 13'sd 2897 * $signed(input_fmap_6[31:24]) +
	 16'sd 25104 * $signed(input_fmap_6[39:32]) +
	 15'sd 15706 * $signed(input_fmap_6[47:40]) +
	 16'sd 17964 * $signed(input_fmap_6[55:48]) +
	 15'sd 8475 * $signed(input_fmap_6[63:56]) +
	 15'sd 14220 * $signed(input_fmap_6[71:64]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 16'sd 26055 * $signed(input_fmap_7[7:0]) +
	 15'sd 14108 * $signed(input_fmap_7[15:8]) +
	 13'sd 3706 * $signed(input_fmap_7[23:16]) +
	 16'sd 27276 * $signed(input_fmap_7[31:24]) +
	 14'sd 6326 * $signed(input_fmap_7[39:32]) +
	 16'sd 20339 * $signed(input_fmap_7[47:40]) +
	 15'sd 13794 * $signed(input_fmap_7[55:48]) +
	 14'sd 5079 * $signed(input_fmap_7[63:56]) +
	 15'sd 16202 * $signed(input_fmap_7[71:64]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 12'sd 1703 * $signed(input_fmap_8[7:0]) +
	 12'sd 1167 * $signed(input_fmap_8[15:8]) +
	 16'sd 29915 * $signed(input_fmap_8[23:16]) +
	 16'sd 32511 * $signed(input_fmap_8[31:24]) +
	 16'sd 17184 * $signed(input_fmap_8[39:32]) +
	 16'sd 31706 * $signed(input_fmap_8[47:40]) +
	 16'sd 19309 * $signed(input_fmap_8[55:48]) +
	 16'sd 31140 * $signed(input_fmap_8[63:56]) +
	 15'sd 11559 * $signed(input_fmap_8[71:64]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 16'sd 20721 * $signed(input_fmap_9[7:0]) +
	 13'sd 3664 * $signed(input_fmap_9[15:8]) +
	 16'sd 21696 * $signed(input_fmap_9[23:16]) +
	 13'sd 2716 * $signed(input_fmap_9[31:24]) +
	 10'sd 345 * $signed(input_fmap_9[39:32]) +
	 15'sd 10769 * $signed(input_fmap_9[47:40]) +
	 16'sd 18929 * $signed(input_fmap_9[55:48]) +
	 14'sd 7301 * $signed(input_fmap_9[63:56]) +
	 15'sd 12466 * $signed(input_fmap_9[71:64]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 16'sd 25204 * $signed(input_fmap_10[7:0]) +
	 15'sd 10180 * $signed(input_fmap_10[15:8]) +
	 12'sd 1231 * $signed(input_fmap_10[23:16]) +
	 16'sd 32222 * $signed(input_fmap_10[31:24]) +
	 15'sd 8400 * $signed(input_fmap_10[39:32]) +
	 16'sd 26415 * $signed(input_fmap_10[47:40]) +
	 15'sd 13727 * $signed(input_fmap_10[55:48]) +
	 15'sd 13471 * $signed(input_fmap_10[63:56]) +
	 16'sd 27817 * $signed(input_fmap_10[71:64]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 9'sd 229 * $signed(input_fmap_11[7:0]) +
	 16'sd 30743 * $signed(input_fmap_11[15:8]) +
	 16'sd 30578 * $signed(input_fmap_11[23:16]) +
	 15'sd 14877 * $signed(input_fmap_11[31:24]) +
	 15'sd 9500 * $signed(input_fmap_11[39:32]) +
	 12'sd 1573 * $signed(input_fmap_11[47:40]) +
	 13'sd 2930 * $signed(input_fmap_11[55:48]) +
	 14'sd 6126 * $signed(input_fmap_11[63:56]) +
	 16'sd 30131 * $signed(input_fmap_11[71:64]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 16'sd 25765 * $signed(input_fmap_12[7:0]) +
	 15'sd 11427 * $signed(input_fmap_12[15:8]) +
	 15'sd 11404 * $signed(input_fmap_12[23:16]) +
	 15'sd 12930 * $signed(input_fmap_12[31:24]) +
	 15'sd 10263 * $signed(input_fmap_12[39:32]) +
	 15'sd 10456 * $signed(input_fmap_12[47:40]) +
	 16'sd 25819 * $signed(input_fmap_12[55:48]) +
	 15'sd 15282 * $signed(input_fmap_12[63:56]) +
	 14'sd 4395 * $signed(input_fmap_12[71:64]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 12'sd 1390 * $signed(input_fmap_13[7:0]) +
	 14'sd 6916 * $signed(input_fmap_13[15:8]) +
	 16'sd 23986 * $signed(input_fmap_13[23:16]) +
	 15'sd 10036 * $signed(input_fmap_13[31:24]) +
	 10'sd 488 * $signed(input_fmap_13[39:32]) +
	 15'sd 12653 * $signed(input_fmap_13[47:40]) +
	 15'sd 9160 * $signed(input_fmap_13[55:48]) +
	 15'sd 13504 * $signed(input_fmap_13[63:56]) +
	 15'sd 8494 * $signed(input_fmap_13[71:64]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 16'sd 19183 * $signed(input_fmap_14[7:0]) +
	 15'sd 8912 * $signed(input_fmap_14[15:8]) +
	 14'sd 5336 * $signed(input_fmap_14[23:16]) +
	 15'sd 8358 * $signed(input_fmap_14[31:24]) +
	 15'sd 12499 * $signed(input_fmap_14[39:32]) +
	 16'sd 29401 * $signed(input_fmap_14[47:40]) +
	 16'sd 16895 * $signed(input_fmap_14[55:48]) +
	 16'sd 26874 * $signed(input_fmap_14[63:56]) +
	 16'sd 29568 * $signed(input_fmap_14[71:64]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 16'sd 16553 * $signed(input_fmap_15[7:0]) +
	 16'sd 17842 * $signed(input_fmap_15[15:8]) +
	 15'sd 15304 * $signed(input_fmap_15[23:16]) +
	 14'sd 6033 * $signed(input_fmap_15[31:24]) +
	 16'sd 19434 * $signed(input_fmap_15[39:32]) +
	 14'sd 6363 * $signed(input_fmap_15[47:40]) +
	 14'sd 5332 * $signed(input_fmap_15[55:48]) +
	 15'sd 15806 * $signed(input_fmap_15[63:56]) +
	 16'sd 28750 * $signed(input_fmap_15[71:64]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 16'sd 21893 * $signed(input_fmap_16[7:0]) +
	 16'sd 23586 * $signed(input_fmap_16[15:8]) +
	 16'sd 25876 * $signed(input_fmap_16[23:16]) +
	 14'sd 7496 * $signed(input_fmap_16[31:24]) +
	 13'sd 2988 * $signed(input_fmap_16[39:32]) +
	 14'sd 4464 * $signed(input_fmap_16[47:40]) +
	 12'sd 1519 * $signed(input_fmap_16[55:48]) +
	 14'sd 6335 * $signed(input_fmap_16[63:56]) +
	 16'sd 21349 * $signed(input_fmap_16[71:64]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 14'sd 5349 * $signed(input_fmap_17[7:0]) +
	 16'sd 30344 * $signed(input_fmap_17[15:8]) +
	 15'sd 15654 * $signed(input_fmap_17[23:16]) +
	 14'sd 5108 * $signed(input_fmap_17[31:24]) +
	 12'sd 1586 * $signed(input_fmap_17[39:32]) +
	 16'sd 24002 * $signed(input_fmap_17[47:40]) +
	 16'sd 29569 * $signed(input_fmap_17[55:48]) +
	 16'sd 21621 * $signed(input_fmap_17[63:56]) +
	 16'sd 16746 * $signed(input_fmap_17[71:64]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 13'sd 2133 * $signed(input_fmap_18[7:0]) +
	 14'sd 6740 * $signed(input_fmap_18[15:8]) +
	 16'sd 17482 * $signed(input_fmap_18[23:16]) +
	 12'sd 1931 * $signed(input_fmap_18[31:24]) +
	 16'sd 27872 * $signed(input_fmap_18[39:32]) +
	 14'sd 7462 * $signed(input_fmap_18[47:40]) +
	 16'sd 24800 * $signed(input_fmap_18[55:48]) +
	 15'sd 12467 * $signed(input_fmap_18[63:56]) +
	 15'sd 15842 * $signed(input_fmap_18[71:64]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 14'sd 7769 * $signed(input_fmap_19[7:0]) +
	 15'sd 9220 * $signed(input_fmap_19[15:8]) +
	 16'sd 24117 * $signed(input_fmap_19[23:16]) +
	 16'sd 29847 * $signed(input_fmap_19[31:24]) +
	 16'sd 26918 * $signed(input_fmap_19[39:32]) +
	 16'sd 28732 * $signed(input_fmap_19[47:40]) +
	 12'sd 1779 * $signed(input_fmap_19[55:48]) +
	 14'sd 5449 * $signed(input_fmap_19[63:56]) +
	 14'sd 8148 * $signed(input_fmap_19[71:64]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 16'sd 21052 * $signed(input_fmap_20[7:0]) +
	 16'sd 19864 * $signed(input_fmap_20[15:8]) +
	 15'sd 13557 * $signed(input_fmap_20[23:16]) +
	 15'sd 11304 * $signed(input_fmap_20[31:24]) +
	 16'sd 26237 * $signed(input_fmap_20[39:32]) +
	 16'sd 25824 * $signed(input_fmap_20[47:40]) +
	 14'sd 7496 * $signed(input_fmap_20[55:48]) +
	 14'sd 7924 * $signed(input_fmap_20[63:56]) +
	 16'sd 31293 * $signed(input_fmap_20[71:64]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 14'sd 4695 * $signed(input_fmap_21[7:0]) +
	 14'sd 5898 * $signed(input_fmap_21[15:8]) +
	 13'sd 2277 * $signed(input_fmap_21[23:16]) +
	 13'sd 2444 * $signed(input_fmap_21[31:24]) +
	 16'sd 17416 * $signed(input_fmap_21[39:32]) +
	 16'sd 28669 * $signed(input_fmap_21[47:40]) +
	 16'sd 31229 * $signed(input_fmap_21[55:48]) +
	 13'sd 2784 * $signed(input_fmap_21[63:56]) +
	 15'sd 16155 * $signed(input_fmap_21[71:64]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 16'sd 22421 * $signed(input_fmap_22[7:0]) +
	 16'sd 16954 * $signed(input_fmap_22[15:8]) +
	 12'sd 1156 * $signed(input_fmap_22[23:16]) +
	 16'sd 28626 * $signed(input_fmap_22[31:24]) +
	 16'sd 32081 * $signed(input_fmap_22[39:32]) +
	 16'sd 22166 * $signed(input_fmap_22[47:40]) +
	 16'sd 25993 * $signed(input_fmap_22[55:48]) +
	 16'sd 22349 * $signed(input_fmap_22[63:56]) +
	 15'sd 9364 * $signed(input_fmap_22[71:64]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 15'sd 12546 * $signed(input_fmap_23[7:0]) +
	 16'sd 21314 * $signed(input_fmap_23[15:8]) +
	 14'sd 7500 * $signed(input_fmap_23[23:16]) +
	 14'sd 6252 * $signed(input_fmap_23[31:24]) +
	 16'sd 28390 * $signed(input_fmap_23[39:32]) +
	 16'sd 21628 * $signed(input_fmap_23[47:40]) +
	 10'sd 347 * $signed(input_fmap_23[55:48]) +
	 14'sd 6098 * $signed(input_fmap_23[63:56]) +
	 16'sd 29763 * $signed(input_fmap_23[71:64]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 16'sd 25238 * $signed(input_fmap_24[7:0]) +
	 16'sd 26382 * $signed(input_fmap_24[15:8]) +
	 16'sd 27470 * $signed(input_fmap_24[23:16]) +
	 15'sd 11567 * $signed(input_fmap_24[31:24]) +
	 15'sd 12242 * $signed(input_fmap_24[39:32]) +
	 16'sd 18241 * $signed(input_fmap_24[47:40]) +
	 14'sd 5073 * $signed(input_fmap_24[55:48]) +
	 16'sd 18436 * $signed(input_fmap_24[63:56]) +
	 15'sd 14785 * $signed(input_fmap_24[71:64]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 15'sd 10926 * $signed(input_fmap_25[7:0]) +
	 14'sd 5992 * $signed(input_fmap_25[15:8]) +
	 16'sd 27030 * $signed(input_fmap_25[23:16]) +
	 16'sd 31021 * $signed(input_fmap_25[31:24]) +
	 16'sd 30513 * $signed(input_fmap_25[39:32]) +
	 14'sd 5088 * $signed(input_fmap_25[47:40]) +
	 15'sd 8261 * $signed(input_fmap_25[55:48]) +
	 15'sd 8489 * $signed(input_fmap_25[63:56]) +
	 16'sd 23817 * $signed(input_fmap_25[71:64]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 16'sd 20121 * $signed(input_fmap_26[7:0]) +
	 16'sd 24266 * $signed(input_fmap_26[15:8]) +
	 16'sd 28104 * $signed(input_fmap_26[23:16]) +
	 16'sd 21996 * $signed(input_fmap_26[31:24]) +
	 15'sd 8632 * $signed(input_fmap_26[39:32]) +
	 16'sd 29004 * $signed(input_fmap_26[47:40]) +
	 15'sd 11786 * $signed(input_fmap_26[55:48]) +
	 8'sd 98 * $signed(input_fmap_26[63:56]) +
	 16'sd 16932 * $signed(input_fmap_26[71:64]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 16'sd 32545 * $signed(input_fmap_27[7:0]) +
	 16'sd 29040 * $signed(input_fmap_27[15:8]) +
	 16'sd 30731 * $signed(input_fmap_27[23:16]) +
	 16'sd 26602 * $signed(input_fmap_27[31:24]) +
	 16'sd 29473 * $signed(input_fmap_27[39:32]) +
	 15'sd 12466 * $signed(input_fmap_27[47:40]) +
	 16'sd 23777 * $signed(input_fmap_27[55:48]) +
	 15'sd 12454 * $signed(input_fmap_27[63:56]) +
	 15'sd 12741 * $signed(input_fmap_27[71:64]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 16'sd 17840 * $signed(input_fmap_28[7:0]) +
	 13'sd 3499 * $signed(input_fmap_28[15:8]) +
	 16'sd 25980 * $signed(input_fmap_28[23:16]) +
	 15'sd 12662 * $signed(input_fmap_28[31:24]) +
	 16'sd 28164 * $signed(input_fmap_28[39:32]) +
	 15'sd 11739 * $signed(input_fmap_28[47:40]) +
	 15'sd 8449 * $signed(input_fmap_28[55:48]) +
	 14'sd 4730 * $signed(input_fmap_28[63:56]) +
	 16'sd 24295 * $signed(input_fmap_28[71:64]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 16'sd 16855 * $signed(input_fmap_29[7:0]) +
	 14'sd 8109 * $signed(input_fmap_29[15:8]) +
	 16'sd 30092 * $signed(input_fmap_29[23:16]) +
	 16'sd 18650 * $signed(input_fmap_29[31:24]) +
	 14'sd 7401 * $signed(input_fmap_29[39:32]) +
	 11'sd 856 * $signed(input_fmap_29[47:40]) +
	 16'sd 32658 * $signed(input_fmap_29[55:48]) +
	 15'sd 12212 * $signed(input_fmap_29[63:56]) +
	 15'sd 8769 * $signed(input_fmap_29[71:64]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 15'sd 8255 * $signed(input_fmap_30[7:0]) +
	 16'sd 18965 * $signed(input_fmap_30[15:8]) +
	 16'sd 29711 * $signed(input_fmap_30[23:16]) +
	 16'sd 26983 * $signed(input_fmap_30[31:24]) +
	 16'sd 27963 * $signed(input_fmap_30[39:32]) +
	 14'sd 5396 * $signed(input_fmap_30[47:40]) +
	 16'sd 29002 * $signed(input_fmap_30[55:48]) +
	 14'sd 5027 * $signed(input_fmap_30[63:56]) +
	 15'sd 13631 * $signed(input_fmap_30[71:64]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 12'sd 1681 * $signed(input_fmap_31[7:0]) +
	 16'sd 19897 * $signed(input_fmap_31[15:8]) +
	 13'sd 2595 * $signed(input_fmap_31[23:16]) +
	 16'sd 32041 * $signed(input_fmap_31[31:24]) +
	 13'sd 2789 * $signed(input_fmap_31[39:32]) +
	 15'sd 15685 * $signed(input_fmap_31[47:40]) +
	 15'sd 10442 * $signed(input_fmap_31[55:48]) +
	 15'sd 10473 * $signed(input_fmap_31[63:56]) +
	 16'sd 29625 * $signed(input_fmap_31[71:64]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 14'd7891;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 16'd17651;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 14'd6164;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 16'd26344;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 15'd15947;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 15'd9246;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 15'd13163;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 16'd26835;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 16'd23165;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 16'd20423;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 11'd544;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 16'd31734;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 16'd23445;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 13'd3823;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 15'd15267;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 16'd20242;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 16'd31370;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 16'd32571;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18 + 13'd2450;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 16'd23759;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 16'd27881;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21 + 15'd9043;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22 + 16'd19490;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 16'd17030;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24 + 15'd14881;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25 + 16'd31155;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 16'd29094;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 15'd15568;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28 + 12'd1793;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 14'd7782;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 15'd11395;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 14'd7695;

logic [7:0] relu_0;
assign relu_0[7:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[21:15]}} :'d6) : '0;
logic [7:0] relu_1;
assign relu_1[7:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[21:15]}} :'d6) : '0;
logic [7:0] relu_2;
assign relu_2[7:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[21:15]}} :'d6) : '0;
logic [7:0] relu_3;
assign relu_3[7:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[21:15]}} :'d6) : '0;
logic [7:0] relu_4;
assign relu_4[7:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[21:15]}} :'d6) : '0;
logic [7:0] relu_5;
assign relu_5[7:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[21:15]}} :'d6) : '0;
logic [7:0] relu_6;
assign relu_6[7:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[21:15]}} :'d6) : '0;
logic [7:0] relu_7;
assign relu_7[7:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[21:15]}} :'d6) : '0;
logic [7:0] relu_8;
assign relu_8[7:0] = (bias_add_8[31]==0) ? ((bias_add_8<3'd6) ? {{bias_add_8[31],bias_add_8[21:15]}} :'d6) : '0;
logic [7:0] relu_9;
assign relu_9[7:0] = (bias_add_9[31]==0) ? ((bias_add_9<3'd6) ? {{bias_add_9[31],bias_add_9[21:15]}} :'d6) : '0;
logic [7:0] relu_10;
assign relu_10[7:0] = (bias_add_10[31]==0) ? ((bias_add_10<3'd6) ? {{bias_add_10[31],bias_add_10[21:15]}} :'d6) : '0;
logic [7:0] relu_11;
assign relu_11[7:0] = (bias_add_11[31]==0) ? ((bias_add_11<3'd6) ? {{bias_add_11[31],bias_add_11[21:15]}} :'d6) : '0;
logic [7:0] relu_12;
assign relu_12[7:0] = (bias_add_12[31]==0) ? ((bias_add_12<3'd6) ? {{bias_add_12[31],bias_add_12[21:15]}} :'d6) : '0;
logic [7:0] relu_13;
assign relu_13[7:0] = (bias_add_13[31]==0) ? ((bias_add_13<3'd6) ? {{bias_add_13[31],bias_add_13[21:15]}} :'d6) : '0;
logic [7:0] relu_14;
assign relu_14[7:0] = (bias_add_14[31]==0) ? ((bias_add_14<3'd6) ? {{bias_add_14[31],bias_add_14[21:15]}} :'d6) : '0;
logic [7:0] relu_15;
assign relu_15[7:0] = (bias_add_15[31]==0) ? ((bias_add_15<3'd6) ? {{bias_add_15[31],bias_add_15[21:15]}} :'d6) : '0;
logic [7:0] relu_16;
assign relu_16[7:0] = (bias_add_16[31]==0) ? ((bias_add_16<3'd6) ? {{bias_add_16[31],bias_add_16[21:15]}} :'d6) : '0;
logic [7:0] relu_17;
assign relu_17[7:0] = (bias_add_17[31]==0) ? ((bias_add_17<3'd6) ? {{bias_add_17[31],bias_add_17[21:15]}} :'d6) : '0;
logic [7:0] relu_18;
assign relu_18[7:0] = (bias_add_18[31]==0) ? ((bias_add_18<3'd6) ? {{bias_add_18[31],bias_add_18[21:15]}} :'d6) : '0;
logic [7:0] relu_19;
assign relu_19[7:0] = (bias_add_19[31]==0) ? ((bias_add_19<3'd6) ? {{bias_add_19[31],bias_add_19[21:15]}} :'d6) : '0;
logic [7:0] relu_20;
assign relu_20[7:0] = (bias_add_20[31]==0) ? ((bias_add_20<3'd6) ? {{bias_add_20[31],bias_add_20[21:15]}} :'d6) : '0;
logic [7:0] relu_21;
assign relu_21[7:0] = (bias_add_21[31]==0) ? ((bias_add_21<3'd6) ? {{bias_add_21[31],bias_add_21[21:15]}} :'d6) : '0;
logic [7:0] relu_22;
assign relu_22[7:0] = (bias_add_22[31]==0) ? ((bias_add_22<3'd6) ? {{bias_add_22[31],bias_add_22[21:15]}} :'d6) : '0;
logic [7:0] relu_23;
assign relu_23[7:0] = (bias_add_23[31]==0) ? ((bias_add_23<3'd6) ? {{bias_add_23[31],bias_add_23[21:15]}} :'d6) : '0;
logic [7:0] relu_24;
assign relu_24[7:0] = (bias_add_24[31]==0) ? ((bias_add_24<3'd6) ? {{bias_add_24[31],bias_add_24[21:15]}} :'d6) : '0;
logic [7:0] relu_25;
assign relu_25[7:0] = (bias_add_25[31]==0) ? ((bias_add_25<3'd6) ? {{bias_add_25[31],bias_add_25[21:15]}} :'d6) : '0;
logic [7:0] relu_26;
assign relu_26[7:0] = (bias_add_26[31]==0) ? ((bias_add_26<3'd6) ? {{bias_add_26[31],bias_add_26[21:15]}} :'d6) : '0;
logic [7:0] relu_27;
assign relu_27[7:0] = (bias_add_27[31]==0) ? ((bias_add_27<3'd6) ? {{bias_add_27[31],bias_add_27[21:15]}} :'d6) : '0;
logic [7:0] relu_28;
assign relu_28[7:0] = (bias_add_28[31]==0) ? ((bias_add_28<3'd6) ? {{bias_add_28[31],bias_add_28[21:15]}} :'d6) : '0;
logic [7:0] relu_29;
assign relu_29[7:0] = (bias_add_29[31]==0) ? ((bias_add_29<3'd6) ? {{bias_add_29[31],bias_add_29[21:15]}} :'d6) : '0;
logic [7:0] relu_30;
assign relu_30[7:0] = (bias_add_30[31]==0) ? ((bias_add_30<3'd6) ? {{bias_add_30[31],bias_add_30[21:15]}} :'d6) : '0;
logic [7:0] relu_31;
assign relu_31[7:0] = (bias_add_31[31]==0) ? ((bias_add_31<3'd6) ? {{bias_add_31[31],bias_add_31[21:15]}} :'d6) : '0;

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
