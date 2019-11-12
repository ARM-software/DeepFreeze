module conv6_dw (
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
logic [71:0] input_fmap_32;
assign input_fmap_32 = input_act_ff[2375:2304];
logic [71:0] input_fmap_33;
assign input_fmap_33 = input_act_ff[2447:2376];
logic [71:0] input_fmap_34;
assign input_fmap_34 = input_act_ff[2519:2448];
logic [71:0] input_fmap_35;
assign input_fmap_35 = input_act_ff[2591:2520];
logic [71:0] input_fmap_36;
assign input_fmap_36 = input_act_ff[2663:2592];
logic [71:0] input_fmap_37;
assign input_fmap_37 = input_act_ff[2735:2664];
logic [71:0] input_fmap_38;
assign input_fmap_38 = input_act_ff[2807:2736];
logic [71:0] input_fmap_39;
assign input_fmap_39 = input_act_ff[2879:2808];
logic [71:0] input_fmap_40;
assign input_fmap_40 = input_act_ff[2951:2880];
logic [71:0] input_fmap_41;
assign input_fmap_41 = input_act_ff[3023:2952];
logic [71:0] input_fmap_42;
assign input_fmap_42 = input_act_ff[3095:3024];
logic [71:0] input_fmap_43;
assign input_fmap_43 = input_act_ff[3167:3096];
logic [71:0] input_fmap_44;
assign input_fmap_44 = input_act_ff[3239:3168];
logic [71:0] input_fmap_45;
assign input_fmap_45 = input_act_ff[3311:3240];
logic [71:0] input_fmap_46;
assign input_fmap_46 = input_act_ff[3383:3312];
logic [71:0] input_fmap_47;
assign input_fmap_47 = input_act_ff[3455:3384];
logic [71:0] input_fmap_48;
assign input_fmap_48 = input_act_ff[3527:3456];
logic [71:0] input_fmap_49;
assign input_fmap_49 = input_act_ff[3599:3528];
logic [71:0] input_fmap_50;
assign input_fmap_50 = input_act_ff[3671:3600];
logic [71:0] input_fmap_51;
assign input_fmap_51 = input_act_ff[3743:3672];
logic [71:0] input_fmap_52;
assign input_fmap_52 = input_act_ff[3815:3744];
logic [71:0] input_fmap_53;
assign input_fmap_53 = input_act_ff[3887:3816];
logic [71:0] input_fmap_54;
assign input_fmap_54 = input_act_ff[3959:3888];
logic [71:0] input_fmap_55;
assign input_fmap_55 = input_act_ff[4031:3960];
logic [71:0] input_fmap_56;
assign input_fmap_56 = input_act_ff[4103:4032];
logic [71:0] input_fmap_57;
assign input_fmap_57 = input_act_ff[4175:4104];
logic [71:0] input_fmap_58;
assign input_fmap_58 = input_act_ff[4247:4176];
logic [71:0] input_fmap_59;
assign input_fmap_59 = input_act_ff[4319:4248];
logic [71:0] input_fmap_60;
assign input_fmap_60 = input_act_ff[4391:4320];
logic [71:0] input_fmap_61;
assign input_fmap_61 = input_act_ff[4463:4392];
logic [71:0] input_fmap_62;
assign input_fmap_62 = input_act_ff[4535:4464];
logic [71:0] input_fmap_63;
assign input_fmap_63 = input_act_ff[4607:4536];

logic signed [31:0] dw_conv_mac_0;
assign dw_conv_mac_0 = 
	 16'sd 25322 * $signed(input_fmap_0[7:0]) +
	 16'sd 28443 * $signed(input_fmap_0[15:8]) +
	 15'sd 8280 * $signed(input_fmap_0[23:16]) +
	 15'sd 13828 * $signed(input_fmap_0[31:24]) +
	 8'sd 72 * $signed(input_fmap_0[39:32]) +
	 15'sd 9532 * $signed(input_fmap_0[47:40]) +
	 16'sd 31870 * $signed(input_fmap_0[55:48]) +
	 16'sd 30734 * $signed(input_fmap_0[63:56]) +
	 13'sd 3081 * $signed(input_fmap_0[71:64]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 14'sd 5873 * $signed(input_fmap_1[7:0]) +
	 16'sd 29867 * $signed(input_fmap_1[15:8]) +
	 16'sd 24543 * $signed(input_fmap_1[23:16]) +
	 15'sd 11064 * $signed(input_fmap_1[31:24]) +
	 16'sd 22992 * $signed(input_fmap_1[39:32]) +
	 16'sd 28058 * $signed(input_fmap_1[47:40]) +
	 15'sd 10515 * $signed(input_fmap_1[55:48]) +
	 15'sd 14060 * $signed(input_fmap_1[63:56]) +
	 16'sd 26682 * $signed(input_fmap_1[71:64]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 14'sd 6731 * $signed(input_fmap_2[7:0]) +
	 9'sd 183 * $signed(input_fmap_2[15:8]) +
	 16'sd 27552 * $signed(input_fmap_2[23:16]) +
	 16'sd 24388 * $signed(input_fmap_2[31:24]) +
	 15'sd 9981 * $signed(input_fmap_2[39:32]) +
	 13'sd 2819 * $signed(input_fmap_2[47:40]) +
	 11'sd 532 * $signed(input_fmap_2[55:48]) +
	 12'sd 1854 * $signed(input_fmap_2[63:56]) +
	 15'sd 14328 * $signed(input_fmap_2[71:64]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 14'sd 6039 * $signed(input_fmap_3[7:0]) +
	 15'sd 11456 * $signed(input_fmap_3[15:8]) +
	 16'sd 23526 * $signed(input_fmap_3[23:16]) +
	 16'sd 23860 * $signed(input_fmap_3[31:24]) +
	 15'sd 15492 * $signed(input_fmap_3[39:32]) +
	 16'sd 19070 * $signed(input_fmap_3[47:40]) +
	 15'sd 15832 * $signed(input_fmap_3[55:48]) +
	 16'sd 21078 * $signed(input_fmap_3[63:56]) +
	 16'sd 17291 * $signed(input_fmap_3[71:64]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 15'sd 10545 * $signed(input_fmap_4[7:0]) +
	 16'sd 24888 * $signed(input_fmap_4[15:8]) +
	 12'sd 1042 * $signed(input_fmap_4[23:16]) +
	 16'sd 25913 * $signed(input_fmap_4[31:24]) +
	 14'sd 5356 * $signed(input_fmap_4[39:32]) +
	 16'sd 24637 * $signed(input_fmap_4[47:40]) +
	 16'sd 25886 * $signed(input_fmap_4[55:48]) +
	 16'sd 28474 * $signed(input_fmap_4[63:56]) +
	 16'sd 28269 * $signed(input_fmap_4[71:64]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 14'sd 6266 * $signed(input_fmap_5[7:0]) +
	 10'sd 401 * $signed(input_fmap_5[15:8]) +
	 16'sd 25237 * $signed(input_fmap_5[23:16]) +
	 13'sd 2238 * $signed(input_fmap_5[31:24]) +
	 16'sd 27774 * $signed(input_fmap_5[39:32]) +
	 16'sd 28066 * $signed(input_fmap_5[47:40]) +
	 16'sd 22094 * $signed(input_fmap_5[55:48]) +
	 15'sd 12948 * $signed(input_fmap_5[63:56]) +
	 16'sd 25063 * $signed(input_fmap_5[71:64]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 16'sd 20631 * $signed(input_fmap_6[7:0]) +
	 14'sd 7469 * $signed(input_fmap_6[15:8]) +
	 13'sd 3779 * $signed(input_fmap_6[23:16]) +
	 13'sd 3842 * $signed(input_fmap_6[31:24]) +
	 16'sd 26916 * $signed(input_fmap_6[39:32]) +
	 16'sd 28648 * $signed(input_fmap_6[47:40]) +
	 15'sd 10465 * $signed(input_fmap_6[55:48]) +
	 12'sd 1335 * $signed(input_fmap_6[63:56]) +
	 15'sd 16082 * $signed(input_fmap_6[71:64]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 16'sd 27251 * $signed(input_fmap_7[7:0]) +
	 16'sd 22142 * $signed(input_fmap_7[15:8]) +
	 14'sd 4165 * $signed(input_fmap_7[23:16]) +
	 16'sd 21672 * $signed(input_fmap_7[31:24]) +
	 15'sd 10569 * $signed(input_fmap_7[39:32]) +
	 16'sd 18439 * $signed(input_fmap_7[47:40]) +
	 15'sd 12586 * $signed(input_fmap_7[55:48]) +
	 16'sd 18462 * $signed(input_fmap_7[63:56]) +
	 13'sd 3422 * $signed(input_fmap_7[71:64]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 16'sd 28957 * $signed(input_fmap_8[7:0]) +
	 15'sd 12409 * $signed(input_fmap_8[15:8]) +
	 15'sd 12965 * $signed(input_fmap_8[23:16]) +
	 15'sd 12737 * $signed(input_fmap_8[31:24]) +
	 16'sd 26092 * $signed(input_fmap_8[39:32]) +
	 13'sd 2645 * $signed(input_fmap_8[47:40]) +
	 16'sd 26649 * $signed(input_fmap_8[55:48]) +
	 16'sd 18826 * $signed(input_fmap_8[63:56]) +
	 16'sd 30080 * $signed(input_fmap_8[71:64]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 16'sd 23773 * $signed(input_fmap_9[7:0]) +
	 16'sd 31044 * $signed(input_fmap_9[15:8]) +
	 14'sd 4261 * $signed(input_fmap_9[23:16]) +
	 15'sd 8804 * $signed(input_fmap_9[31:24]) +
	 16'sd 28386 * $signed(input_fmap_9[39:32]) +
	 15'sd 8437 * $signed(input_fmap_9[47:40]) +
	 14'sd 4539 * $signed(input_fmap_9[55:48]) +
	 15'sd 16270 * $signed(input_fmap_9[63:56]) +
	 15'sd 15027 * $signed(input_fmap_9[71:64]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 16'sd 22721 * $signed(input_fmap_10[7:0]) +
	 15'sd 10949 * $signed(input_fmap_10[15:8]) +
	 15'sd 10674 * $signed(input_fmap_10[23:16]) +
	 13'sd 2376 * $signed(input_fmap_10[31:24]) +
	 16'sd 32213 * $signed(input_fmap_10[39:32]) +
	 12'sd 1051 * $signed(input_fmap_10[47:40]) +
	 15'sd 12514 * $signed(input_fmap_10[55:48]) +
	 11'sd 923 * $signed(input_fmap_10[63:56]) +
	 16'sd 27307 * $signed(input_fmap_10[71:64]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 16'sd 20124 * $signed(input_fmap_11[7:0]) +
	 14'sd 5460 * $signed(input_fmap_11[15:8]) +
	 13'sd 2986 * $signed(input_fmap_11[23:16]) +
	 16'sd 30106 * $signed(input_fmap_11[31:24]) +
	 15'sd 9787 * $signed(input_fmap_11[39:32]) +
	 9'sd 152 * $signed(input_fmap_11[47:40]) +
	 15'sd 12957 * $signed(input_fmap_11[55:48]) +
	 14'sd 6245 * $signed(input_fmap_11[63:56]) +
	 16'sd 25446 * $signed(input_fmap_11[71:64]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 12'sd 1340 * $signed(input_fmap_12[7:0]) +
	 16'sd 25839 * $signed(input_fmap_12[15:8]) +
	 14'sd 7605 * $signed(input_fmap_12[23:16]) +
	 16'sd 31627 * $signed(input_fmap_12[31:24]) +
	 16'sd 31732 * $signed(input_fmap_12[39:32]) +
	 16'sd 23431 * $signed(input_fmap_12[47:40]) +
	 14'sd 4303 * $signed(input_fmap_12[55:48]) +
	 16'sd 18722 * $signed(input_fmap_12[63:56]) +
	 16'sd 30592 * $signed(input_fmap_12[71:64]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 14'sd 4204 * $signed(input_fmap_13[7:0]) +
	 13'sd 4075 * $signed(input_fmap_13[15:8]) +
	 16'sd 19049 * $signed(input_fmap_13[23:16]) +
	 16'sd 32159 * $signed(input_fmap_13[31:24]) +
	 15'sd 10305 * $signed(input_fmap_13[39:32]) +
	 15'sd 14804 * $signed(input_fmap_13[47:40]) +
	 12'sd 1741 * $signed(input_fmap_13[55:48]) +
	 16'sd 18257 * $signed(input_fmap_13[63:56]) +
	 14'sd 7536 * $signed(input_fmap_13[71:64]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 14'sd 6709 * $signed(input_fmap_14[7:0]) +
	 14'sd 4576 * $signed(input_fmap_14[15:8]) +
	 16'sd 18469 * $signed(input_fmap_14[23:16]) +
	 16'sd 29672 * $signed(input_fmap_14[31:24]) +
	 13'sd 3683 * $signed(input_fmap_14[39:32]) +
	 15'sd 12827 * $signed(input_fmap_14[47:40]) +
	 16'sd 25780 * $signed(input_fmap_14[55:48]) +
	 16'sd 22780 * $signed(input_fmap_14[63:56]) +
	 16'sd 16723 * $signed(input_fmap_14[71:64]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 16'sd 32630 * $signed(input_fmap_15[7:0]) +
	 12'sd 1458 * $signed(input_fmap_15[15:8]) +
	 16'sd 18601 * $signed(input_fmap_15[23:16]) +
	 15'sd 8822 * $signed(input_fmap_15[31:24]) +
	 16'sd 23750 * $signed(input_fmap_15[39:32]) +
	 16'sd 20541 * $signed(input_fmap_15[47:40]) +
	 16'sd 30617 * $signed(input_fmap_15[55:48]) +
	 14'sd 7478 * $signed(input_fmap_15[63:56]) +
	 16'sd 29624 * $signed(input_fmap_15[71:64]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 15'sd 13484 * $signed(input_fmap_16[7:0]) +
	 16'sd 16722 * $signed(input_fmap_16[15:8]) +
	 15'sd 11849 * $signed(input_fmap_16[23:16]) +
	 15'sd 13417 * $signed(input_fmap_16[31:24]) +
	 16'sd 25144 * $signed(input_fmap_16[39:32]) +
	 16'sd 25251 * $signed(input_fmap_16[47:40]) +
	 15'sd 16031 * $signed(input_fmap_16[55:48]) +
	 16'sd 31542 * $signed(input_fmap_16[63:56]) +
	 14'sd 7642 * $signed(input_fmap_16[71:64]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 15'sd 14716 * $signed(input_fmap_17[7:0]) +
	 16'sd 24032 * $signed(input_fmap_17[15:8]) +
	 12'sd 1773 * $signed(input_fmap_17[23:16]) +
	 15'sd 8353 * $signed(input_fmap_17[31:24]) +
	 14'sd 7353 * $signed(input_fmap_17[39:32]) +
	 16'sd 28173 * $signed(input_fmap_17[47:40]) +
	 15'sd 8318 * $signed(input_fmap_17[55:48]) +
	 15'sd 9304 * $signed(input_fmap_17[63:56]) +
	 16'sd 19031 * $signed(input_fmap_17[71:64]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 15'sd 12725 * $signed(input_fmap_18[7:0]) +
	 16'sd 24184 * $signed(input_fmap_18[15:8]) +
	 16'sd 28843 * $signed(input_fmap_18[23:16]) +
	 14'sd 7297 * $signed(input_fmap_18[31:24]) +
	 16'sd 27683 * $signed(input_fmap_18[39:32]) +
	 15'sd 15791 * $signed(input_fmap_18[47:40]) +
	 14'sd 5139 * $signed(input_fmap_18[55:48]) +
	 14'sd 7541 * $signed(input_fmap_18[63:56]) +
	 9'sd 202 * $signed(input_fmap_18[71:64]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 15'sd 9064 * $signed(input_fmap_19[7:0]) +
	 16'sd 30754 * $signed(input_fmap_19[15:8]) +
	 12'sd 1427 * $signed(input_fmap_19[23:16]) +
	 14'sd 7474 * $signed(input_fmap_19[31:24]) +
	 16'sd 18984 * $signed(input_fmap_19[39:32]) +
	 15'sd 12826 * $signed(input_fmap_19[47:40]) +
	 16'sd 20432 * $signed(input_fmap_19[55:48]) +
	 9'sd 184 * $signed(input_fmap_19[63:56]) +
	 15'sd 13656 * $signed(input_fmap_19[71:64]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 16'sd 16763 * $signed(input_fmap_20[7:0]) +
	 16'sd 26756 * $signed(input_fmap_20[15:8]) +
	 15'sd 15290 * $signed(input_fmap_20[23:16]) +
	 16'sd 30307 * $signed(input_fmap_20[31:24]) +
	 13'sd 3258 * $signed(input_fmap_20[39:32]) +
	 15'sd 9222 * $signed(input_fmap_20[47:40]) +
	 14'sd 6823 * $signed(input_fmap_20[55:48]) +
	 16'sd 26673 * $signed(input_fmap_20[63:56]) +
	 16'sd 26585 * $signed(input_fmap_20[71:64]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 16'sd 31212 * $signed(input_fmap_21[7:0]) +
	 16'sd 32262 * $signed(input_fmap_21[15:8]) +
	 16'sd 31597 * $signed(input_fmap_21[23:16]) +
	 13'sd 2357 * $signed(input_fmap_21[31:24]) +
	 16'sd 30198 * $signed(input_fmap_21[39:32]) +
	 15'sd 9135 * $signed(input_fmap_21[47:40]) +
	 16'sd 17312 * $signed(input_fmap_21[55:48]) +
	 15'sd 10006 * $signed(input_fmap_21[63:56]) +
	 16'sd 31139 * $signed(input_fmap_21[71:64]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 16'sd 24428 * $signed(input_fmap_22[7:0]) +
	 16'sd 26536 * $signed(input_fmap_22[15:8]) +
	 15'sd 16127 * $signed(input_fmap_22[23:16]) +
	 15'sd 9447 * $signed(input_fmap_22[31:24]) +
	 16'sd 22087 * $signed(input_fmap_22[39:32]) +
	 16'sd 30083 * $signed(input_fmap_22[47:40]) +
	 14'sd 4327 * $signed(input_fmap_22[55:48]) +
	 14'sd 8187 * $signed(input_fmap_22[63:56]) +
	 16'sd 20621 * $signed(input_fmap_22[71:64]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 16'sd 19856 * $signed(input_fmap_23[7:0]) +
	 15'sd 9803 * $signed(input_fmap_23[15:8]) +
	 16'sd 21818 * $signed(input_fmap_23[23:16]) +
	 16'sd 26326 * $signed(input_fmap_23[31:24]) +
	 14'sd 4622 * $signed(input_fmap_23[39:32]) +
	 16'sd 17871 * $signed(input_fmap_23[47:40]) +
	 16'sd 27386 * $signed(input_fmap_23[55:48]) +
	 15'sd 11091 * $signed(input_fmap_23[63:56]) +
	 16'sd 19016 * $signed(input_fmap_23[71:64]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 16'sd 17217 * $signed(input_fmap_24[7:0]) +
	 16'sd 29265 * $signed(input_fmap_24[15:8]) +
	 16'sd 30933 * $signed(input_fmap_24[23:16]) +
	 16'sd 20802 * $signed(input_fmap_24[31:24]) +
	 14'sd 5599 * $signed(input_fmap_24[39:32]) +
	 16'sd 16577 * $signed(input_fmap_24[47:40]) +
	 16'sd 21915 * $signed(input_fmap_24[55:48]) +
	 15'sd 8932 * $signed(input_fmap_24[63:56]) +
	 15'sd 15740 * $signed(input_fmap_24[71:64]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 16'sd 22184 * $signed(input_fmap_25[7:0]) +
	 16'sd 31580 * $signed(input_fmap_25[15:8]) +
	 16'sd 30506 * $signed(input_fmap_25[23:16]) +
	 11'sd 663 * $signed(input_fmap_25[31:24]) +
	 15'sd 14004 * $signed(input_fmap_25[39:32]) +
	 12'sd 1511 * $signed(input_fmap_25[47:40]) +
	 12'sd 1202 * $signed(input_fmap_25[55:48]) +
	 14'sd 6902 * $signed(input_fmap_25[63:56]) +
	 13'sd 3230 * $signed(input_fmap_25[71:64]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 15'sd 10813 * $signed(input_fmap_26[7:0]) +
	 16'sd 31448 * $signed(input_fmap_26[15:8]) +
	 14'sd 4771 * $signed(input_fmap_26[23:16]) +
	 16'sd 18026 * $signed(input_fmap_26[31:24]) +
	 16'sd 25083 * $signed(input_fmap_26[39:32]) +
	 16'sd 20416 * $signed(input_fmap_26[47:40]) +
	 15'sd 16145 * $signed(input_fmap_26[55:48]) +
	 16'sd 26636 * $signed(input_fmap_26[63:56]) +
	 12'sd 1391 * $signed(input_fmap_26[71:64]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 16'sd 20124 * $signed(input_fmap_27[7:0]) +
	 16'sd 26234 * $signed(input_fmap_27[15:8]) +
	 15'sd 12439 * $signed(input_fmap_27[23:16]) +
	 16'sd 20780 * $signed(input_fmap_27[31:24]) +
	 15'sd 14483 * $signed(input_fmap_27[39:32]) +
	 16'sd 31289 * $signed(input_fmap_27[47:40]) +
	 15'sd 9519 * $signed(input_fmap_27[55:48]) +
	 15'sd 8661 * $signed(input_fmap_27[63:56]) +
	 14'sd 6137 * $signed(input_fmap_27[71:64]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 16'sd 22629 * $signed(input_fmap_28[7:0]) +
	 16'sd 21842 * $signed(input_fmap_28[15:8]) +
	 16'sd 26421 * $signed(input_fmap_28[23:16]) +
	 13'sd 2144 * $signed(input_fmap_28[31:24]) +
	 14'sd 8173 * $signed(input_fmap_28[39:32]) +
	 15'sd 13025 * $signed(input_fmap_28[47:40]) +
	 16'sd 24611 * $signed(input_fmap_28[55:48]) +
	 14'sd 5730 * $signed(input_fmap_28[63:56]) +
	 16'sd 31846 * $signed(input_fmap_28[71:64]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 16'sd 31576 * $signed(input_fmap_29[7:0]) +
	 16'sd 32244 * $signed(input_fmap_29[15:8]) +
	 16'sd 19870 * $signed(input_fmap_29[23:16]) +
	 16'sd 21090 * $signed(input_fmap_29[31:24]) +
	 16'sd 29049 * $signed(input_fmap_29[39:32]) +
	 15'sd 13450 * $signed(input_fmap_29[47:40]) +
	 13'sd 3562 * $signed(input_fmap_29[55:48]) +
	 10'sd 323 * $signed(input_fmap_29[63:56]) +
	 16'sd 26513 * $signed(input_fmap_29[71:64]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 14'sd 4753 * $signed(input_fmap_30[7:0]) +
	 12'sd 1770 * $signed(input_fmap_30[15:8]) +
	 14'sd 8052 * $signed(input_fmap_30[23:16]) +
	 16'sd 16752 * $signed(input_fmap_30[31:24]) +
	 15'sd 12855 * $signed(input_fmap_30[39:32]) +
	 16'sd 19339 * $signed(input_fmap_30[47:40]) +
	 14'sd 4861 * $signed(input_fmap_30[55:48]) +
	 13'sd 3317 * $signed(input_fmap_30[63:56]) +
	 15'sd 16010 * $signed(input_fmap_30[71:64]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 15'sd 12272 * $signed(input_fmap_31[7:0]) +
	 14'sd 5798 * $signed(input_fmap_31[15:8]) +
	 16'sd 19838 * $signed(input_fmap_31[23:16]) +
	 16'sd 27844 * $signed(input_fmap_31[31:24]) +
	 16'sd 32026 * $signed(input_fmap_31[39:32]) +
	 15'sd 13282 * $signed(input_fmap_31[47:40]) +
	 13'sd 2359 * $signed(input_fmap_31[55:48]) +
	 14'sd 5421 * $signed(input_fmap_31[63:56]) +
	 15'sd 13126 * $signed(input_fmap_31[71:64]);

logic signed [31:0] dw_conv_mac_32;
assign dw_conv_mac_32 = 
	 15'sd 10681 * $signed(input_fmap_32[7:0]) +
	 13'sd 3352 * $signed(input_fmap_32[15:8]) +
	 14'sd 7579 * $signed(input_fmap_32[23:16]) +
	 14'sd 7004 * $signed(input_fmap_32[31:24]) +
	 14'sd 6284 * $signed(input_fmap_32[39:32]) +
	 14'sd 7763 * $signed(input_fmap_32[47:40]) +
	 16'sd 16548 * $signed(input_fmap_32[55:48]) +
	 15'sd 15766 * $signed(input_fmap_32[63:56]) +
	 15'sd 9604 * $signed(input_fmap_32[71:64]);

logic signed [31:0] dw_conv_mac_33;
assign dw_conv_mac_33 = 
	 16'sd 29421 * $signed(input_fmap_33[7:0]) +
	 16'sd 18993 * $signed(input_fmap_33[15:8]) +
	 16'sd 30922 * $signed(input_fmap_33[23:16]) +
	 16'sd 21253 * $signed(input_fmap_33[31:24]) +
	 16'sd 21827 * $signed(input_fmap_33[39:32]) +
	 16'sd 31681 * $signed(input_fmap_33[47:40]) +
	 16'sd 16977 * $signed(input_fmap_33[55:48]) +
	 14'sd 4169 * $signed(input_fmap_33[63:56]) +
	 16'sd 22969 * $signed(input_fmap_33[71:64]);

logic signed [31:0] dw_conv_mac_34;
assign dw_conv_mac_34 = 
	 16'sd 23452 * $signed(input_fmap_34[7:0]) +
	 15'sd 16062 * $signed(input_fmap_34[15:8]) +
	 11'sd 953 * $signed(input_fmap_34[23:16]) +
	 16'sd 22651 * $signed(input_fmap_34[31:24]) +
	 16'sd 30930 * $signed(input_fmap_34[39:32]) +
	 11'sd 764 * $signed(input_fmap_34[47:40]) +
	 16'sd 17451 * $signed(input_fmap_34[55:48]) +
	 16'sd 18546 * $signed(input_fmap_34[63:56]) +
	 16'sd 29990 * $signed(input_fmap_34[71:64]);

logic signed [31:0] dw_conv_mac_35;
assign dw_conv_mac_35 = 
	 15'sd 14280 * $signed(input_fmap_35[7:0]) +
	 15'sd 14468 * $signed(input_fmap_35[15:8]) +
	 16'sd 31274 * $signed(input_fmap_35[23:16]) +
	 15'sd 13799 * $signed(input_fmap_35[31:24]) +
	 12'sd 1573 * $signed(input_fmap_35[39:32]) +
	 15'sd 13538 * $signed(input_fmap_35[47:40]) +
	 13'sd 3160 * $signed(input_fmap_35[55:48]) +
	 16'sd 27619 * $signed(input_fmap_35[63:56]) +
	 16'sd 32243 * $signed(input_fmap_35[71:64]);

logic signed [31:0] dw_conv_mac_36;
assign dw_conv_mac_36 = 
	 13'sd 3235 * $signed(input_fmap_36[7:0]) +
	 13'sd 2101 * $signed(input_fmap_36[15:8]) +
	 16'sd 31287 * $signed(input_fmap_36[23:16]) +
	 15'sd 9349 * $signed(input_fmap_36[31:24]) +
	 16'sd 20253 * $signed(input_fmap_36[39:32]) +
	 16'sd 28786 * $signed(input_fmap_36[47:40]) +
	 16'sd 31955 * $signed(input_fmap_36[55:48]) +
	 16'sd 31074 * $signed(input_fmap_36[63:56]) +
	 15'sd 15932 * $signed(input_fmap_36[71:64]);

logic signed [31:0] dw_conv_mac_37;
assign dw_conv_mac_37 = 
	 14'sd 6640 * $signed(input_fmap_37[7:0]) +
	 14'sd 5563 * $signed(input_fmap_37[15:8]) +
	 15'sd 11579 * $signed(input_fmap_37[23:16]) +
	 14'sd 5089 * $signed(input_fmap_37[31:24]) +
	 15'sd 9884 * $signed(input_fmap_37[39:32]) +
	 15'sd 9594 * $signed(input_fmap_37[47:40]) +
	 16'sd 20821 * $signed(input_fmap_37[55:48]) +
	 16'sd 32694 * $signed(input_fmap_37[63:56]) +
	 14'sd 4744 * $signed(input_fmap_37[71:64]);

logic signed [31:0] dw_conv_mac_38;
assign dw_conv_mac_38 = 
	 15'sd 14610 * $signed(input_fmap_38[7:0]) +
	 16'sd 26027 * $signed(input_fmap_38[15:8]) +
	 16'sd 17899 * $signed(input_fmap_38[23:16]) +
	 15'sd 11946 * $signed(input_fmap_38[31:24]) +
	 16'sd 23772 * $signed(input_fmap_38[39:32]) +
	 15'sd 9660 * $signed(input_fmap_38[47:40]) +
	 16'sd 20437 * $signed(input_fmap_38[55:48]) +
	 16'sd 21315 * $signed(input_fmap_38[63:56]) +
	 15'sd 12145 * $signed(input_fmap_38[71:64]);

logic signed [31:0] dw_conv_mac_39;
assign dw_conv_mac_39 = 
	 16'sd 28277 * $signed(input_fmap_39[7:0]) +
	 16'sd 17359 * $signed(input_fmap_39[15:8]) +
	 16'sd 27026 * $signed(input_fmap_39[23:16]) +
	 16'sd 25562 * $signed(input_fmap_39[31:24]) +
	 15'sd 11839 * $signed(input_fmap_39[39:32]) +
	 13'sd 3377 * $signed(input_fmap_39[47:40]) +
	 15'sd 12811 * $signed(input_fmap_39[55:48]) +
	 15'sd 11530 * $signed(input_fmap_39[63:56]) +
	 12'sd 1393 * $signed(input_fmap_39[71:64]);

logic signed [31:0] dw_conv_mac_40;
assign dw_conv_mac_40 = 
	 9'sd 142 * $signed(input_fmap_40[7:0]) +
	 16'sd 28654 * $signed(input_fmap_40[15:8]) +
	 15'sd 15576 * $signed(input_fmap_40[23:16]) +
	 16'sd 24164 * $signed(input_fmap_40[31:24]) +
	 15'sd 11502 * $signed(input_fmap_40[39:32]) +
	 16'sd 18479 * $signed(input_fmap_40[47:40]) +
	 14'sd 8167 * $signed(input_fmap_40[55:48]) +
	 16'sd 17474 * $signed(input_fmap_40[63:56]) +
	 16'sd 23552 * $signed(input_fmap_40[71:64]);

logic signed [31:0] dw_conv_mac_41;
assign dw_conv_mac_41 = 
	 16'sd 24311 * $signed(input_fmap_41[7:0]) +
	 15'sd 8702 * $signed(input_fmap_41[15:8]) +
	 15'sd 8801 * $signed(input_fmap_41[23:16]) +
	 15'sd 11864 * $signed(input_fmap_41[31:24]) +
	 15'sd 13196 * $signed(input_fmap_41[39:32]) +
	 16'sd 23570 * $signed(input_fmap_41[47:40]) +
	 15'sd 12682 * $signed(input_fmap_41[55:48]) +
	 16'sd 28332 * $signed(input_fmap_41[63:56]) +
	 14'sd 6879 * $signed(input_fmap_41[71:64]);

logic signed [31:0] dw_conv_mac_42;
assign dw_conv_mac_42 = 
	 15'sd 12743 * $signed(input_fmap_42[7:0]) +
	 16'sd 31942 * $signed(input_fmap_42[15:8]) +
	 16'sd 22291 * $signed(input_fmap_42[23:16]) +
	 16'sd 23649 * $signed(input_fmap_42[31:24]) +
	 11'sd 963 * $signed(input_fmap_42[39:32]) +
	 15'sd 9567 * $signed(input_fmap_42[47:40]) +
	 15'sd 15913 * $signed(input_fmap_42[55:48]) +
	 13'sd 2792 * $signed(input_fmap_42[63:56]) +
	 15'sd 13799 * $signed(input_fmap_42[71:64]);

logic signed [31:0] dw_conv_mac_43;
assign dw_conv_mac_43 = 
	 16'sd 24547 * $signed(input_fmap_43[7:0]) +
	 15'sd 12676 * $signed(input_fmap_43[15:8]) +
	 16'sd 28069 * $signed(input_fmap_43[23:16]) +
	 11'sd 889 * $signed(input_fmap_43[31:24]) +
	 16'sd 30086 * $signed(input_fmap_43[39:32]) +
	 16'sd 31017 * $signed(input_fmap_43[47:40]) +
	 14'sd 6281 * $signed(input_fmap_43[55:48]) +
	 14'sd 4454 * $signed(input_fmap_43[63:56]) +
	 16'sd 30326 * $signed(input_fmap_43[71:64]);

logic signed [31:0] dw_conv_mac_44;
assign dw_conv_mac_44 = 
	 14'sd 7319 * $signed(input_fmap_44[7:0]) +
	 15'sd 9845 * $signed(input_fmap_44[15:8]) +
	 16'sd 23778 * $signed(input_fmap_44[23:16]) +
	 15'sd 10911 * $signed(input_fmap_44[31:24]) +
	 8'sd 98 * $signed(input_fmap_44[39:32]) +
	 16'sd 27368 * $signed(input_fmap_44[47:40]) +
	 16'sd 26434 * $signed(input_fmap_44[55:48]) +
	 16'sd 22997 * $signed(input_fmap_44[63:56]) +
	 16'sd 31161 * $signed(input_fmap_44[71:64]);

logic signed [31:0] dw_conv_mac_45;
assign dw_conv_mac_45 = 
	 15'sd 15434 * $signed(input_fmap_45[7:0]) +
	 16'sd 17639 * $signed(input_fmap_45[15:8]) +
	 14'sd 7240 * $signed(input_fmap_45[23:16]) +
	 16'sd 24910 * $signed(input_fmap_45[31:24]) +
	 16'sd 24425 * $signed(input_fmap_45[39:32]) +
	 16'sd 23799 * $signed(input_fmap_45[47:40]) +
	 16'sd 18307 * $signed(input_fmap_45[55:48]) +
	 14'sd 8161 * $signed(input_fmap_45[63:56]) +
	 11'sd 805 * $signed(input_fmap_45[71:64]);

logic signed [31:0] dw_conv_mac_46;
assign dw_conv_mac_46 = 
	 16'sd 21088 * $signed(input_fmap_46[7:0]) +
	 15'sd 13342 * $signed(input_fmap_46[15:8]) +
	 16'sd 19120 * $signed(input_fmap_46[23:16]) +
	 15'sd 10806 * $signed(input_fmap_46[31:24]) +
	 15'sd 15384 * $signed(input_fmap_46[39:32]) +
	 16'sd 16762 * $signed(input_fmap_46[47:40]) +
	 16'sd 21847 * $signed(input_fmap_46[55:48]) +
	 15'sd 13386 * $signed(input_fmap_46[63:56]) +
	 16'sd 31643 * $signed(input_fmap_46[71:64]);

logic signed [31:0] dw_conv_mac_47;
assign dw_conv_mac_47 = 
	 14'sd 6780 * $signed(input_fmap_47[7:0]) +
	 15'sd 15276 * $signed(input_fmap_47[15:8]) +
	 16'sd 17427 * $signed(input_fmap_47[23:16]) +
	 12'sd 1127 * $signed(input_fmap_47[31:24]) +
	 16'sd 21547 * $signed(input_fmap_47[39:32]) +
	 16'sd 25296 * $signed(input_fmap_47[47:40]) +
	 12'sd 1420 * $signed(input_fmap_47[55:48]) +
	 16'sd 19793 * $signed(input_fmap_47[63:56]) +
	 14'sd 7876 * $signed(input_fmap_47[71:64]);

logic signed [31:0] dw_conv_mac_48;
assign dw_conv_mac_48 = 
	 16'sd 20631 * $signed(input_fmap_48[7:0]) +
	 16'sd 21931 * $signed(input_fmap_48[15:8]) +
	 15'sd 12168 * $signed(input_fmap_48[23:16]) +
	 16'sd 27621 * $signed(input_fmap_48[31:24]) +
	 14'sd 6035 * $signed(input_fmap_48[39:32]) +
	 15'sd 8214 * $signed(input_fmap_48[47:40]) +
	 16'sd 24853 * $signed(input_fmap_48[55:48]) +
	 15'sd 10799 * $signed(input_fmap_48[63:56]) +
	 16'sd 28945 * $signed(input_fmap_48[71:64]);

logic signed [31:0] dw_conv_mac_49;
assign dw_conv_mac_49 = 
	 15'sd 15583 * $signed(input_fmap_49[7:0]) +
	 16'sd 19239 * $signed(input_fmap_49[15:8]) +
	 15'sd 13730 * $signed(input_fmap_49[23:16]) +
	 14'sd 7646 * $signed(input_fmap_49[31:24]) +
	 12'sd 2033 * $signed(input_fmap_49[39:32]) +
	 16'sd 31067 * $signed(input_fmap_49[47:40]) +
	 15'sd 11777 * $signed(input_fmap_49[55:48]) +
	 16'sd 32755 * $signed(input_fmap_49[63:56]) +
	 16'sd 22788 * $signed(input_fmap_49[71:64]);

logic signed [31:0] dw_conv_mac_50;
assign dw_conv_mac_50 = 
	 16'sd 23478 * $signed(input_fmap_50[7:0]) +
	 15'sd 15377 * $signed(input_fmap_50[15:8]) +
	 15'sd 15886 * $signed(input_fmap_50[23:16]) +
	 16'sd 29751 * $signed(input_fmap_50[31:24]) +
	 13'sd 2885 * $signed(input_fmap_50[39:32]) +
	 16'sd 19484 * $signed(input_fmap_50[47:40]) +
	 15'sd 15514 * $signed(input_fmap_50[55:48]) +
	 16'sd 27830 * $signed(input_fmap_50[63:56]) +
	 15'sd 12077 * $signed(input_fmap_50[71:64]);

logic signed [31:0] dw_conv_mac_51;
assign dw_conv_mac_51 = 
	 15'sd 13675 * $signed(input_fmap_51[7:0]) +
	 14'sd 5119 * $signed(input_fmap_51[15:8]) +
	 16'sd 22378 * $signed(input_fmap_51[23:16]) +
	 13'sd 2792 * $signed(input_fmap_51[31:24]) +
	 15'sd 8461 * $signed(input_fmap_51[39:32]) +
	 16'sd 31933 * $signed(input_fmap_51[47:40]) +
	 15'sd 10955 * $signed(input_fmap_51[55:48]) +
	 16'sd 25915 * $signed(input_fmap_51[63:56]) +
	 16'sd 30836 * $signed(input_fmap_51[71:64]);

logic signed [31:0] dw_conv_mac_52;
assign dw_conv_mac_52 = 
	 15'sd 13429 * $signed(input_fmap_52[7:0]) +
	 13'sd 2342 * $signed(input_fmap_52[15:8]) +
	 15'sd 10910 * $signed(input_fmap_52[23:16]) +
	 14'sd 7982 * $signed(input_fmap_52[31:24]) +
	 16'sd 18487 * $signed(input_fmap_52[39:32]) +
	 14'sd 7371 * $signed(input_fmap_52[47:40]) +
	 13'sd 2272 * $signed(input_fmap_52[55:48]) +
	 13'sd 2948 * $signed(input_fmap_52[63:56]) +
	 16'sd 30717 * $signed(input_fmap_52[71:64]);

logic signed [31:0] dw_conv_mac_53;
assign dw_conv_mac_53 = 
	 13'sd 2408 * $signed(input_fmap_53[7:0]) +
	 15'sd 14432 * $signed(input_fmap_53[15:8]) +
	 14'sd 4752 * $signed(input_fmap_53[23:16]) +
	 15'sd 11389 * $signed(input_fmap_53[31:24]) +
	 16'sd 16588 * $signed(input_fmap_53[39:32]) +
	 15'sd 9421 * $signed(input_fmap_53[47:40]) +
	 15'sd 9629 * $signed(input_fmap_53[55:48]) +
	 10'sd 455 * $signed(input_fmap_53[63:56]) +
	 12'sd 1286 * $signed(input_fmap_53[71:64]);

logic signed [31:0] dw_conv_mac_54;
assign dw_conv_mac_54 = 
	 16'sd 27697 * $signed(input_fmap_54[7:0]) +
	 15'sd 11433 * $signed(input_fmap_54[15:8]) +
	 10'sd 510 * $signed(input_fmap_54[23:16]) +
	 14'sd 5715 * $signed(input_fmap_54[31:24]) +
	 14'sd 6172 * $signed(input_fmap_54[39:32]) +
	 16'sd 26391 * $signed(input_fmap_54[47:40]) +
	 15'sd 8730 * $signed(input_fmap_54[55:48]) +
	 15'sd 12532 * $signed(input_fmap_54[63:56]) +
	 14'sd 4638 * $signed(input_fmap_54[71:64]);

logic signed [31:0] dw_conv_mac_55;
assign dw_conv_mac_55 = 
	 16'sd 25507 * $signed(input_fmap_55[7:0]) +
	 16'sd 26429 * $signed(input_fmap_55[15:8]) +
	 15'sd 11625 * $signed(input_fmap_55[23:16]) +
	 14'sd 4141 * $signed(input_fmap_55[31:24]) +
	 15'sd 10245 * $signed(input_fmap_55[39:32]) +
	 16'sd 16451 * $signed(input_fmap_55[47:40]) +
	 16'sd 17831 * $signed(input_fmap_55[55:48]) +
	 16'sd 32276 * $signed(input_fmap_55[63:56]) +
	 16'sd 23055 * $signed(input_fmap_55[71:64]);

logic signed [31:0] dw_conv_mac_56;
assign dw_conv_mac_56 = 
	 16'sd 27148 * $signed(input_fmap_56[7:0]) +
	 15'sd 12025 * $signed(input_fmap_56[15:8]) +
	 16'sd 32355 * $signed(input_fmap_56[23:16]) +
	 16'sd 28868 * $signed(input_fmap_56[31:24]) +
	 15'sd 15261 * $signed(input_fmap_56[39:32]) +
	 14'sd 5639 * $signed(input_fmap_56[47:40]) +
	 16'sd 20237 * $signed(input_fmap_56[55:48]) +
	 14'sd 6012 * $signed(input_fmap_56[63:56]) +
	 16'sd 16550 * $signed(input_fmap_56[71:64]);

logic signed [31:0] dw_conv_mac_57;
assign dw_conv_mac_57 = 
	 16'sd 20944 * $signed(input_fmap_57[7:0]) +
	 15'sd 10376 * $signed(input_fmap_57[15:8]) +
	 14'sd 7949 * $signed(input_fmap_57[23:16]) +
	 16'sd 30936 * $signed(input_fmap_57[31:24]) +
	 13'sd 4070 * $signed(input_fmap_57[39:32]) +
	 15'sd 11973 * $signed(input_fmap_57[47:40]) +
	 16'sd 23363 * $signed(input_fmap_57[55:48]) +
	 15'sd 12355 * $signed(input_fmap_57[63:56]) +
	 15'sd 14950 * $signed(input_fmap_57[71:64]);

logic signed [31:0] dw_conv_mac_58;
assign dw_conv_mac_58 = 
	 16'sd 19586 * $signed(input_fmap_58[7:0]) +
	 16'sd 29582 * $signed(input_fmap_58[15:8]) +
	 13'sd 3017 * $signed(input_fmap_58[23:16]) +
	 11'sd 938 * $signed(input_fmap_58[31:24]) +
	 15'sd 15315 * $signed(input_fmap_58[39:32]) +
	 15'sd 8718 * $signed(input_fmap_58[47:40]) +
	 7'sd 49 * $signed(input_fmap_58[55:48]) +
	 16'sd 25409 * $signed(input_fmap_58[63:56]) +
	 15'sd 8999 * $signed(input_fmap_58[71:64]);

logic signed [31:0] dw_conv_mac_59;
assign dw_conv_mac_59 = 
	 15'sd 16228 * $signed(input_fmap_59[7:0]) +
	 13'sd 3513 * $signed(input_fmap_59[15:8]) +
	 13'sd 3765 * $signed(input_fmap_59[23:16]) +
	 12'sd 1331 * $signed(input_fmap_59[31:24]) +
	 15'sd 13807 * $signed(input_fmap_59[39:32]) +
	 13'sd 2169 * $signed(input_fmap_59[47:40]) +
	 16'sd 16804 * $signed(input_fmap_59[55:48]) +
	 16'sd 30917 * $signed(input_fmap_59[63:56]) +
	 15'sd 13315 * $signed(input_fmap_59[71:64]);

logic signed [31:0] dw_conv_mac_60;
assign dw_conv_mac_60 = 
	 16'sd 30604 * $signed(input_fmap_60[7:0]) +
	 16'sd 30969 * $signed(input_fmap_60[15:8]) +
	 15'sd 14657 * $signed(input_fmap_60[23:16]) +
	 15'sd 12196 * $signed(input_fmap_60[31:24]) +
	 16'sd 19169 * $signed(input_fmap_60[39:32]) +
	 16'sd 25516 * $signed(input_fmap_60[47:40]) +
	 16'sd 16386 * $signed(input_fmap_60[55:48]) +
	 16'sd 23995 * $signed(input_fmap_60[63:56]) +
	 16'sd 23719 * $signed(input_fmap_60[71:64]);

logic signed [31:0] dw_conv_mac_61;
assign dw_conv_mac_61 = 
	 14'sd 5439 * $signed(input_fmap_61[7:0]) +
	 15'sd 9781 * $signed(input_fmap_61[15:8]) +
	 16'sd 25896 * $signed(input_fmap_61[23:16]) +
	 16'sd 23298 * $signed(input_fmap_61[31:24]) +
	 16'sd 32235 * $signed(input_fmap_61[39:32]) +
	 16'sd 27437 * $signed(input_fmap_61[47:40]) +
	 15'sd 16204 * $signed(input_fmap_61[55:48]) +
	 16'sd 28710 * $signed(input_fmap_61[63:56]) +
	 16'sd 27287 * $signed(input_fmap_61[71:64]);

logic signed [31:0] dw_conv_mac_62;
assign dw_conv_mac_62 = 
	 16'sd 19644 * $signed(input_fmap_62[7:0]) +
	 13'sd 3065 * $signed(input_fmap_62[15:8]) +
	 16'sd 16714 * $signed(input_fmap_62[23:16]) +
	 15'sd 8577 * $signed(input_fmap_62[31:24]) +
	 16'sd 30849 * $signed(input_fmap_62[39:32]) +
	 12'sd 1502 * $signed(input_fmap_62[47:40]) +
	 12'sd 1558 * $signed(input_fmap_62[55:48]) +
	 16'sd 22426 * $signed(input_fmap_62[63:56]) +
	 13'sd 2129 * $signed(input_fmap_62[71:64]);

logic signed [31:0] dw_conv_mac_63;
assign dw_conv_mac_63 = 
	 16'sd 29188 * $signed(input_fmap_63[7:0]) +
	 16'sd 20260 * $signed(input_fmap_63[15:8]) +
	 15'sd 15596 * $signed(input_fmap_63[23:16]) +
	 15'sd 11636 * $signed(input_fmap_63[31:24]) +
	 15'sd 9125 * $signed(input_fmap_63[39:32]) +
	 16'sd 26650 * $signed(input_fmap_63[47:40]) +
	 15'sd 13854 * $signed(input_fmap_63[55:48]) +
	 12'sd 1123 * $signed(input_fmap_63[63:56]) +
	 13'sd 2581 * $signed(input_fmap_63[71:64]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 16'd21242;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 16'd25562;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 11'd543;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 14'd6620;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 15'd14956;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 16'd18569;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 15'd15024;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 16'd23293;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 14'd5926;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 15'd13829;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 16'd20492;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 15'd15191;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 15'd14369;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 14'd6525;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 16'd22222;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 15'd11320;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 15'd11141;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 14'd5917;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18 + 14'd5750;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 14'd6003;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 14'd5195;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21 + 14'd7681;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22 + 13'd2581;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 16'd27958;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24 + 16'd25373;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25 + 16'd20186;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 16'd16659;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 16'd31182;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28 + 16'd27564;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 16'd17315;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 9'd238;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 16'd19958;
logic [31:0] bias_add_32;
assign bias_add_32 = dw_conv_mac_32 + 15'd9885;
logic [31:0] bias_add_33;
assign bias_add_33 = dw_conv_mac_33 + 16'd28601;
logic [31:0] bias_add_34;
assign bias_add_34 = dw_conv_mac_34 + 15'd14564;
logic [31:0] bias_add_35;
assign bias_add_35 = dw_conv_mac_35 + 16'd31227;
logic [31:0] bias_add_36;
assign bias_add_36 = dw_conv_mac_36 + 16'd23986;
logic [31:0] bias_add_37;
assign bias_add_37 = dw_conv_mac_37 + 14'd6925;
logic [31:0] bias_add_38;
assign bias_add_38 = dw_conv_mac_38 + 13'd3431;
logic [31:0] bias_add_39;
assign bias_add_39 = dw_conv_mac_39 + 12'd1618;
logic [31:0] bias_add_40;
assign bias_add_40 = dw_conv_mac_40 + 16'd24431;
logic [31:0] bias_add_41;
assign bias_add_41 = dw_conv_mac_41 + 15'd14988;
logic [31:0] bias_add_42;
assign bias_add_42 = dw_conv_mac_42 + 13'd3719;
logic [31:0] bias_add_43;
assign bias_add_43 = dw_conv_mac_43 + 15'd12673;
logic [31:0] bias_add_44;
assign bias_add_44 = dw_conv_mac_44 + 16'd20774;
logic [31:0] bias_add_45;
assign bias_add_45 = dw_conv_mac_45 + 15'd14153;
logic [31:0] bias_add_46;
assign bias_add_46 = dw_conv_mac_46 + 16'd16760;
logic [31:0] bias_add_47;
assign bias_add_47 = dw_conv_mac_47 + 16'd28783;
logic [31:0] bias_add_48;
assign bias_add_48 = dw_conv_mac_48 + 15'd9751;
logic [31:0] bias_add_49;
assign bias_add_49 = dw_conv_mac_49 + 16'd20566;
logic [31:0] bias_add_50;
assign bias_add_50 = dw_conv_mac_50 + 13'd3557;
logic [31:0] bias_add_51;
assign bias_add_51 = dw_conv_mac_51 + 14'd7227;
logic [31:0] bias_add_52;
assign bias_add_52 = dw_conv_mac_52 + 16'd20852;
logic [31:0] bias_add_53;
assign bias_add_53 = dw_conv_mac_53 + 16'd24571;
logic [31:0] bias_add_54;
assign bias_add_54 = dw_conv_mac_54 + 16'd26349;
logic [31:0] bias_add_55;
assign bias_add_55 = dw_conv_mac_55 + 16'd29502;
logic [31:0] bias_add_56;
assign bias_add_56 = dw_conv_mac_56 + 16'd19856;
logic [31:0] bias_add_57;
assign bias_add_57 = dw_conv_mac_57 + 11'd541;
logic [31:0] bias_add_58;
assign bias_add_58 = dw_conv_mac_58 + 16'd19120;
logic [31:0] bias_add_59;
assign bias_add_59 = dw_conv_mac_59 + 14'd4935;
logic [31:0] bias_add_60;
assign bias_add_60 = dw_conv_mac_60 + 15'd10643;
logic [31:0] bias_add_61;
assign bias_add_61 = dw_conv_mac_61 + 16'd17515;
logic [31:0] bias_add_62;
assign bias_add_62 = dw_conv_mac_62 + 15'd16071;
logic [31:0] bias_add_63;
assign bias_add_63 = dw_conv_mac_63 + 16'd22585;

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
logic [7:0] relu_32;
assign relu_32[7:0] = (bias_add_32[31]==0) ? ((bias_add_32<3'd6) ? {{bias_add_32[31],bias_add_32[21:15]}} :'d6) : '0;
logic [7:0] relu_33;
assign relu_33[7:0] = (bias_add_33[31]==0) ? ((bias_add_33<3'd6) ? {{bias_add_33[31],bias_add_33[21:15]}} :'d6) : '0;
logic [7:0] relu_34;
assign relu_34[7:0] = (bias_add_34[31]==0) ? ((bias_add_34<3'd6) ? {{bias_add_34[31],bias_add_34[21:15]}} :'d6) : '0;
logic [7:0] relu_35;
assign relu_35[7:0] = (bias_add_35[31]==0) ? ((bias_add_35<3'd6) ? {{bias_add_35[31],bias_add_35[21:15]}} :'d6) : '0;
logic [7:0] relu_36;
assign relu_36[7:0] = (bias_add_36[31]==0) ? ((bias_add_36<3'd6) ? {{bias_add_36[31],bias_add_36[21:15]}} :'d6) : '0;
logic [7:0] relu_37;
assign relu_37[7:0] = (bias_add_37[31]==0) ? ((bias_add_37<3'd6) ? {{bias_add_37[31],bias_add_37[21:15]}} :'d6) : '0;
logic [7:0] relu_38;
assign relu_38[7:0] = (bias_add_38[31]==0) ? ((bias_add_38<3'd6) ? {{bias_add_38[31],bias_add_38[21:15]}} :'d6) : '0;
logic [7:0] relu_39;
assign relu_39[7:0] = (bias_add_39[31]==0) ? ((bias_add_39<3'd6) ? {{bias_add_39[31],bias_add_39[21:15]}} :'d6) : '0;
logic [7:0] relu_40;
assign relu_40[7:0] = (bias_add_40[31]==0) ? ((bias_add_40<3'd6) ? {{bias_add_40[31],bias_add_40[21:15]}} :'d6) : '0;
logic [7:0] relu_41;
assign relu_41[7:0] = (bias_add_41[31]==0) ? ((bias_add_41<3'd6) ? {{bias_add_41[31],bias_add_41[21:15]}} :'d6) : '0;
logic [7:0] relu_42;
assign relu_42[7:0] = (bias_add_42[31]==0) ? ((bias_add_42<3'd6) ? {{bias_add_42[31],bias_add_42[21:15]}} :'d6) : '0;
logic [7:0] relu_43;
assign relu_43[7:0] = (bias_add_43[31]==0) ? ((bias_add_43<3'd6) ? {{bias_add_43[31],bias_add_43[21:15]}} :'d6) : '0;
logic [7:0] relu_44;
assign relu_44[7:0] = (bias_add_44[31]==0) ? ((bias_add_44<3'd6) ? {{bias_add_44[31],bias_add_44[21:15]}} :'d6) : '0;
logic [7:0] relu_45;
assign relu_45[7:0] = (bias_add_45[31]==0) ? ((bias_add_45<3'd6) ? {{bias_add_45[31],bias_add_45[21:15]}} :'d6) : '0;
logic [7:0] relu_46;
assign relu_46[7:0] = (bias_add_46[31]==0) ? ((bias_add_46<3'd6) ? {{bias_add_46[31],bias_add_46[21:15]}} :'d6) : '0;
logic [7:0] relu_47;
assign relu_47[7:0] = (bias_add_47[31]==0) ? ((bias_add_47<3'd6) ? {{bias_add_47[31],bias_add_47[21:15]}} :'d6) : '0;
logic [7:0] relu_48;
assign relu_48[7:0] = (bias_add_48[31]==0) ? ((bias_add_48<3'd6) ? {{bias_add_48[31],bias_add_48[21:15]}} :'d6) : '0;
logic [7:0] relu_49;
assign relu_49[7:0] = (bias_add_49[31]==0) ? ((bias_add_49<3'd6) ? {{bias_add_49[31],bias_add_49[21:15]}} :'d6) : '0;
logic [7:0] relu_50;
assign relu_50[7:0] = (bias_add_50[31]==0) ? ((bias_add_50<3'd6) ? {{bias_add_50[31],bias_add_50[21:15]}} :'d6) : '0;
logic [7:0] relu_51;
assign relu_51[7:0] = (bias_add_51[31]==0) ? ((bias_add_51<3'd6) ? {{bias_add_51[31],bias_add_51[21:15]}} :'d6) : '0;
logic [7:0] relu_52;
assign relu_52[7:0] = (bias_add_52[31]==0) ? ((bias_add_52<3'd6) ? {{bias_add_52[31],bias_add_52[21:15]}} :'d6) : '0;
logic [7:0] relu_53;
assign relu_53[7:0] = (bias_add_53[31]==0) ? ((bias_add_53<3'd6) ? {{bias_add_53[31],bias_add_53[21:15]}} :'d6) : '0;
logic [7:0] relu_54;
assign relu_54[7:0] = (bias_add_54[31]==0) ? ((bias_add_54<3'd6) ? {{bias_add_54[31],bias_add_54[21:15]}} :'d6) : '0;
logic [7:0] relu_55;
assign relu_55[7:0] = (bias_add_55[31]==0) ? ((bias_add_55<3'd6) ? {{bias_add_55[31],bias_add_55[21:15]}} :'d6) : '0;
logic [7:0] relu_56;
assign relu_56[7:0] = (bias_add_56[31]==0) ? ((bias_add_56<3'd6) ? {{bias_add_56[31],bias_add_56[21:15]}} :'d6) : '0;
logic [7:0] relu_57;
assign relu_57[7:0] = (bias_add_57[31]==0) ? ((bias_add_57<3'd6) ? {{bias_add_57[31],bias_add_57[21:15]}} :'d6) : '0;
logic [7:0] relu_58;
assign relu_58[7:0] = (bias_add_58[31]==0) ? ((bias_add_58<3'd6) ? {{bias_add_58[31],bias_add_58[21:15]}} :'d6) : '0;
logic [7:0] relu_59;
assign relu_59[7:0] = (bias_add_59[31]==0) ? ((bias_add_59<3'd6) ? {{bias_add_59[31],bias_add_59[21:15]}} :'d6) : '0;
logic [7:0] relu_60;
assign relu_60[7:0] = (bias_add_60[31]==0) ? ((bias_add_60<3'd6) ? {{bias_add_60[31],bias_add_60[21:15]}} :'d6) : '0;
logic [7:0] relu_61;
assign relu_61[7:0] = (bias_add_61[31]==0) ? ((bias_add_61<3'd6) ? {{bias_add_61[31],bias_add_61[21:15]}} :'d6) : '0;
logic [7:0] relu_62;
assign relu_62[7:0] = (bias_add_62[31]==0) ? ((bias_add_62<3'd6) ? {{bias_add_62[31],bias_add_62[21:15]}} :'d6) : '0;
logic [7:0] relu_63;
assign relu_63[7:0] = (bias_add_63[31]==0) ? ((bias_add_63<3'd6) ? {{bias_add_63[31],bias_add_63[21:15]}} :'d6) : '0;

assign output_act = {
	relu_63,
	relu_62,
	relu_61,
	relu_60,
	relu_59,
	relu_58,
	relu_57,
	relu_56,
	relu_55,
	relu_54,
	relu_53,
	relu_52,
	relu_51,
	relu_50,
	relu_49,
	relu_48,
	relu_47,
	relu_46,
	relu_45,
	relu_44,
	relu_43,
	relu_42,
	relu_41,
	relu_40,
	relu_39,
	relu_38,
	relu_37,
	relu_36,
	relu_35,
	relu_34,
	relu_33,
	relu_32,
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
