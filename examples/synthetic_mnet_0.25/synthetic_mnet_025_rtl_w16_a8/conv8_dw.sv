module conv8_dw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [9216-1:0] input_act,
    output logic [1024-1:0] output_act,
    output logic ready
);

logic [9216-1:0] input_act_ff;
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
logic [71:0] input_fmap_64;
assign input_fmap_64 = input_act_ff[4679:4608];
logic [71:0] input_fmap_65;
assign input_fmap_65 = input_act_ff[4751:4680];
logic [71:0] input_fmap_66;
assign input_fmap_66 = input_act_ff[4823:4752];
logic [71:0] input_fmap_67;
assign input_fmap_67 = input_act_ff[4895:4824];
logic [71:0] input_fmap_68;
assign input_fmap_68 = input_act_ff[4967:4896];
logic [71:0] input_fmap_69;
assign input_fmap_69 = input_act_ff[5039:4968];
logic [71:0] input_fmap_70;
assign input_fmap_70 = input_act_ff[5111:5040];
logic [71:0] input_fmap_71;
assign input_fmap_71 = input_act_ff[5183:5112];
logic [71:0] input_fmap_72;
assign input_fmap_72 = input_act_ff[5255:5184];
logic [71:0] input_fmap_73;
assign input_fmap_73 = input_act_ff[5327:5256];
logic [71:0] input_fmap_74;
assign input_fmap_74 = input_act_ff[5399:5328];
logic [71:0] input_fmap_75;
assign input_fmap_75 = input_act_ff[5471:5400];
logic [71:0] input_fmap_76;
assign input_fmap_76 = input_act_ff[5543:5472];
logic [71:0] input_fmap_77;
assign input_fmap_77 = input_act_ff[5615:5544];
logic [71:0] input_fmap_78;
assign input_fmap_78 = input_act_ff[5687:5616];
logic [71:0] input_fmap_79;
assign input_fmap_79 = input_act_ff[5759:5688];
logic [71:0] input_fmap_80;
assign input_fmap_80 = input_act_ff[5831:5760];
logic [71:0] input_fmap_81;
assign input_fmap_81 = input_act_ff[5903:5832];
logic [71:0] input_fmap_82;
assign input_fmap_82 = input_act_ff[5975:5904];
logic [71:0] input_fmap_83;
assign input_fmap_83 = input_act_ff[6047:5976];
logic [71:0] input_fmap_84;
assign input_fmap_84 = input_act_ff[6119:6048];
logic [71:0] input_fmap_85;
assign input_fmap_85 = input_act_ff[6191:6120];
logic [71:0] input_fmap_86;
assign input_fmap_86 = input_act_ff[6263:6192];
logic [71:0] input_fmap_87;
assign input_fmap_87 = input_act_ff[6335:6264];
logic [71:0] input_fmap_88;
assign input_fmap_88 = input_act_ff[6407:6336];
logic [71:0] input_fmap_89;
assign input_fmap_89 = input_act_ff[6479:6408];
logic [71:0] input_fmap_90;
assign input_fmap_90 = input_act_ff[6551:6480];
logic [71:0] input_fmap_91;
assign input_fmap_91 = input_act_ff[6623:6552];
logic [71:0] input_fmap_92;
assign input_fmap_92 = input_act_ff[6695:6624];
logic [71:0] input_fmap_93;
assign input_fmap_93 = input_act_ff[6767:6696];
logic [71:0] input_fmap_94;
assign input_fmap_94 = input_act_ff[6839:6768];
logic [71:0] input_fmap_95;
assign input_fmap_95 = input_act_ff[6911:6840];
logic [71:0] input_fmap_96;
assign input_fmap_96 = input_act_ff[6983:6912];
logic [71:0] input_fmap_97;
assign input_fmap_97 = input_act_ff[7055:6984];
logic [71:0] input_fmap_98;
assign input_fmap_98 = input_act_ff[7127:7056];
logic [71:0] input_fmap_99;
assign input_fmap_99 = input_act_ff[7199:7128];
logic [71:0] input_fmap_100;
assign input_fmap_100 = input_act_ff[7271:7200];
logic [71:0] input_fmap_101;
assign input_fmap_101 = input_act_ff[7343:7272];
logic [71:0] input_fmap_102;
assign input_fmap_102 = input_act_ff[7415:7344];
logic [71:0] input_fmap_103;
assign input_fmap_103 = input_act_ff[7487:7416];
logic [71:0] input_fmap_104;
assign input_fmap_104 = input_act_ff[7559:7488];
logic [71:0] input_fmap_105;
assign input_fmap_105 = input_act_ff[7631:7560];
logic [71:0] input_fmap_106;
assign input_fmap_106 = input_act_ff[7703:7632];
logic [71:0] input_fmap_107;
assign input_fmap_107 = input_act_ff[7775:7704];
logic [71:0] input_fmap_108;
assign input_fmap_108 = input_act_ff[7847:7776];
logic [71:0] input_fmap_109;
assign input_fmap_109 = input_act_ff[7919:7848];
logic [71:0] input_fmap_110;
assign input_fmap_110 = input_act_ff[7991:7920];
logic [71:0] input_fmap_111;
assign input_fmap_111 = input_act_ff[8063:7992];
logic [71:0] input_fmap_112;
assign input_fmap_112 = input_act_ff[8135:8064];
logic [71:0] input_fmap_113;
assign input_fmap_113 = input_act_ff[8207:8136];
logic [71:0] input_fmap_114;
assign input_fmap_114 = input_act_ff[8279:8208];
logic [71:0] input_fmap_115;
assign input_fmap_115 = input_act_ff[8351:8280];
logic [71:0] input_fmap_116;
assign input_fmap_116 = input_act_ff[8423:8352];
logic [71:0] input_fmap_117;
assign input_fmap_117 = input_act_ff[8495:8424];
logic [71:0] input_fmap_118;
assign input_fmap_118 = input_act_ff[8567:8496];
logic [71:0] input_fmap_119;
assign input_fmap_119 = input_act_ff[8639:8568];
logic [71:0] input_fmap_120;
assign input_fmap_120 = input_act_ff[8711:8640];
logic [71:0] input_fmap_121;
assign input_fmap_121 = input_act_ff[8783:8712];
logic [71:0] input_fmap_122;
assign input_fmap_122 = input_act_ff[8855:8784];
logic [71:0] input_fmap_123;
assign input_fmap_123 = input_act_ff[8927:8856];
logic [71:0] input_fmap_124;
assign input_fmap_124 = input_act_ff[8999:8928];
logic [71:0] input_fmap_125;
assign input_fmap_125 = input_act_ff[9071:9000];
logic [71:0] input_fmap_126;
assign input_fmap_126 = input_act_ff[9143:9072];
logic [71:0] input_fmap_127;
assign input_fmap_127 = input_act_ff[9215:9144];

logic signed [31:0] dw_conv_mac_0;
assign dw_conv_mac_0 = 
	 16'sd 18491 * $signed(input_fmap_0[7:0]) +
	 14'sd 4835 * $signed(input_fmap_0[15:8]) +
	 15'sd 8835 * $signed(input_fmap_0[23:16]) +
	 13'sd 4014 * $signed(input_fmap_0[31:24]) +
	 16'sd 25209 * $signed(input_fmap_0[39:32]) +
	 16'sd 24228 * $signed(input_fmap_0[47:40]) +
	 15'sd 16062 * $signed(input_fmap_0[55:48]) +
	 14'sd 6966 * $signed(input_fmap_0[63:56]) +
	 16'sd 28868 * $signed(input_fmap_0[71:64]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 16'sd 19591 * $signed(input_fmap_1[7:0]) +
	 16'sd 18658 * $signed(input_fmap_1[15:8]) +
	 16'sd 29172 * $signed(input_fmap_1[23:16]) +
	 16'sd 25960 * $signed(input_fmap_1[31:24]) +
	 16'sd 31208 * $signed(input_fmap_1[39:32]) +
	 15'sd 11337 * $signed(input_fmap_1[47:40]) +
	 16'sd 19762 * $signed(input_fmap_1[55:48]) +
	 15'sd 15170 * $signed(input_fmap_1[63:56]) +
	 13'sd 2978 * $signed(input_fmap_1[71:64]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 16'sd 28896 * $signed(input_fmap_2[7:0]) +
	 15'sd 13666 * $signed(input_fmap_2[15:8]) +
	 16'sd 21232 * $signed(input_fmap_2[23:16]) +
	 14'sd 6053 * $signed(input_fmap_2[31:24]) +
	 15'sd 11721 * $signed(input_fmap_2[39:32]) +
	 15'sd 14275 * $signed(input_fmap_2[47:40]) +
	 16'sd 17673 * $signed(input_fmap_2[55:48]) +
	 16'sd 26646 * $signed(input_fmap_2[63:56]) +
	 16'sd 24994 * $signed(input_fmap_2[71:64]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 15'sd 10822 * $signed(input_fmap_3[7:0]) +
	 16'sd 23547 * $signed(input_fmap_3[15:8]) +
	 15'sd 13449 * $signed(input_fmap_3[23:16]) +
	 16'sd 27544 * $signed(input_fmap_3[31:24]) +
	 16'sd 21523 * $signed(input_fmap_3[39:32]) +
	 16'sd 22495 * $signed(input_fmap_3[47:40]) +
	 15'sd 9387 * $signed(input_fmap_3[55:48]) +
	 15'sd 12550 * $signed(input_fmap_3[63:56]) +
	 16'sd 31727 * $signed(input_fmap_3[71:64]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 16'sd 22635 * $signed(input_fmap_4[7:0]) +
	 13'sd 3599 * $signed(input_fmap_4[15:8]) +
	 16'sd 16582 * $signed(input_fmap_4[23:16]) +
	 12'sd 1333 * $signed(input_fmap_4[31:24]) +
	 15'sd 13178 * $signed(input_fmap_4[39:32]) +
	 16'sd 23821 * $signed(input_fmap_4[47:40]) +
	 15'sd 13055 * $signed(input_fmap_4[55:48]) +
	 15'sd 13541 * $signed(input_fmap_4[63:56]) +
	 16'sd 32637 * $signed(input_fmap_4[71:64]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 15'sd 8263 * $signed(input_fmap_5[7:0]) +
	 14'sd 7917 * $signed(input_fmap_5[15:8]) +
	 16'sd 32544 * $signed(input_fmap_5[23:16]) +
	 16'sd 27074 * $signed(input_fmap_5[31:24]) +
	 14'sd 6379 * $signed(input_fmap_5[39:32]) +
	 15'sd 8726 * $signed(input_fmap_5[47:40]) +
	 16'sd 20048 * $signed(input_fmap_5[55:48]) +
	 15'sd 14398 * $signed(input_fmap_5[63:56]) +
	 16'sd 19738 * $signed(input_fmap_5[71:64]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 16'sd 26568 * $signed(input_fmap_6[7:0]) +
	 14'sd 8014 * $signed(input_fmap_6[15:8]) +
	 14'sd 4518 * $signed(input_fmap_6[23:16]) +
	 15'sd 11261 * $signed(input_fmap_6[31:24]) +
	 14'sd 4412 * $signed(input_fmap_6[39:32]) +
	 16'sd 29152 * $signed(input_fmap_6[47:40]) +
	 15'sd 9095 * $signed(input_fmap_6[55:48]) +
	 16'sd 30906 * $signed(input_fmap_6[63:56]) +
	 16'sd 20720 * $signed(input_fmap_6[71:64]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 16'sd 24417 * $signed(input_fmap_7[7:0]) +
	 14'sd 4516 * $signed(input_fmap_7[15:8]) +
	 14'sd 4396 * $signed(input_fmap_7[23:16]) +
	 14'sd 8089 * $signed(input_fmap_7[31:24]) +
	 16'sd 16583 * $signed(input_fmap_7[39:32]) +
	 16'sd 29105 * $signed(input_fmap_7[47:40]) +
	 16'sd 19996 * $signed(input_fmap_7[55:48]) +
	 16'sd 17854 * $signed(input_fmap_7[63:56]) +
	 16'sd 28324 * $signed(input_fmap_7[71:64]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 14'sd 6792 * $signed(input_fmap_8[7:0]) +
	 14'sd 6186 * $signed(input_fmap_8[15:8]) +
	 12'sd 1200 * $signed(input_fmap_8[23:16]) +
	 14'sd 8133 * $signed(input_fmap_8[31:24]) +
	 16'sd 23179 * $signed(input_fmap_8[39:32]) +
	 16'sd 21665 * $signed(input_fmap_8[47:40]) +
	 16'sd 22262 * $signed(input_fmap_8[55:48]) +
	 16'sd 27562 * $signed(input_fmap_8[63:56]) +
	 14'sd 8154 * $signed(input_fmap_8[71:64]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 16'sd 28110 * $signed(input_fmap_9[7:0]) +
	 16'sd 32307 * $signed(input_fmap_9[15:8]) +
	 13'sd 2719 * $signed(input_fmap_9[23:16]) +
	 15'sd 11418 * $signed(input_fmap_9[31:24]) +
	 16'sd 30931 * $signed(input_fmap_9[39:32]) +
	 16'sd 17427 * $signed(input_fmap_9[47:40]) +
	 16'sd 30143 * $signed(input_fmap_9[55:48]) +
	 16'sd 21724 * $signed(input_fmap_9[63:56]) +
	 16'sd 26545 * $signed(input_fmap_9[71:64]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 16'sd 21066 * $signed(input_fmap_10[7:0]) +
	 15'sd 8486 * $signed(input_fmap_10[15:8]) +
	 16'sd 17260 * $signed(input_fmap_10[23:16]) +
	 16'sd 27288 * $signed(input_fmap_10[31:24]) +
	 13'sd 3064 * $signed(input_fmap_10[39:32]) +
	 16'sd 20448 * $signed(input_fmap_10[47:40]) +
	 15'sd 9843 * $signed(input_fmap_10[55:48]) +
	 13'sd 3098 * $signed(input_fmap_10[63:56]) +
	 16'sd 32481 * $signed(input_fmap_10[71:64]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 15'sd 14210 * $signed(input_fmap_11[7:0]) +
	 16'sd 28263 * $signed(input_fmap_11[15:8]) +
	 16'sd 26871 * $signed(input_fmap_11[23:16]) +
	 16'sd 21727 * $signed(input_fmap_11[31:24]) +
	 16'sd 29790 * $signed(input_fmap_11[39:32]) +
	 16'sd 19439 * $signed(input_fmap_11[47:40]) +
	 11'sd 790 * $signed(input_fmap_11[55:48]) +
	 16'sd 28050 * $signed(input_fmap_11[63:56]) +
	 15'sd 15815 * $signed(input_fmap_11[71:64]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 16'sd 22286 * $signed(input_fmap_12[7:0]) +
	 15'sd 15642 * $signed(input_fmap_12[15:8]) +
	 16'sd 27403 * $signed(input_fmap_12[23:16]) +
	 16'sd 21638 * $signed(input_fmap_12[31:24]) +
	 16'sd 32590 * $signed(input_fmap_12[39:32]) +
	 16'sd 24483 * $signed(input_fmap_12[47:40]) +
	 15'sd 11668 * $signed(input_fmap_12[55:48]) +
	 14'sd 5267 * $signed(input_fmap_12[63:56]) +
	 15'sd 9161 * $signed(input_fmap_12[71:64]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 15'sd 15178 * $signed(input_fmap_13[7:0]) +
	 16'sd 27293 * $signed(input_fmap_13[15:8]) +
	 16'sd 22865 * $signed(input_fmap_13[23:16]) +
	 15'sd 9106 * $signed(input_fmap_13[31:24]) +
	 16'sd 17868 * $signed(input_fmap_13[39:32]) +
	 16'sd 22629 * $signed(input_fmap_13[47:40]) +
	 16'sd 19419 * $signed(input_fmap_13[55:48]) +
	 13'sd 2251 * $signed(input_fmap_13[63:56]) +
	 16'sd 20228 * $signed(input_fmap_13[71:64]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 15'sd 9109 * $signed(input_fmap_14[7:0]) +
	 16'sd 30247 * $signed(input_fmap_14[15:8]) +
	 16'sd 25401 * $signed(input_fmap_14[23:16]) +
	 16'sd 20726 * $signed(input_fmap_14[31:24]) +
	 16'sd 18671 * $signed(input_fmap_14[39:32]) +
	 16'sd 31871 * $signed(input_fmap_14[47:40]) +
	 16'sd 26547 * $signed(input_fmap_14[55:48]) +
	 16'sd 23023 * $signed(input_fmap_14[63:56]) +
	 16'sd 26176 * $signed(input_fmap_14[71:64]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 14'sd 5421 * $signed(input_fmap_15[7:0]) +
	 15'sd 15538 * $signed(input_fmap_15[15:8]) +
	 16'sd 21016 * $signed(input_fmap_15[23:16]) +
	 12'sd 1633 * $signed(input_fmap_15[31:24]) +
	 15'sd 9415 * $signed(input_fmap_15[39:32]) +
	 14'sd 6473 * $signed(input_fmap_15[47:40]) +
	 16'sd 24544 * $signed(input_fmap_15[55:48]) +
	 15'sd 9073 * $signed(input_fmap_15[63:56]) +
	 11'sd 664 * $signed(input_fmap_15[71:64]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 11'sd 809 * $signed(input_fmap_16[7:0]) +
	 16'sd 28470 * $signed(input_fmap_16[15:8]) +
	 16'sd 32602 * $signed(input_fmap_16[23:16]) +
	 16'sd 25996 * $signed(input_fmap_16[31:24]) +
	 16'sd 25531 * $signed(input_fmap_16[39:32]) +
	 14'sd 7339 * $signed(input_fmap_16[47:40]) +
	 16'sd 21320 * $signed(input_fmap_16[55:48]) +
	 15'sd 8805 * $signed(input_fmap_16[63:56]) +
	 15'sd 13764 * $signed(input_fmap_16[71:64]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 16'sd 27884 * $signed(input_fmap_17[7:0]) +
	 16'sd 20508 * $signed(input_fmap_17[15:8]) +
	 15'sd 9469 * $signed(input_fmap_17[23:16]) +
	 14'sd 4231 * $signed(input_fmap_17[31:24]) +
	 16'sd 21327 * $signed(input_fmap_17[39:32]) +
	 16'sd 24605 * $signed(input_fmap_17[47:40]) +
	 16'sd 28377 * $signed(input_fmap_17[55:48]) +
	 16'sd 26062 * $signed(input_fmap_17[63:56]) +
	 13'sd 3380 * $signed(input_fmap_17[71:64]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 16'sd 24660 * $signed(input_fmap_18[7:0]) +
	 16'sd 16453 * $signed(input_fmap_18[15:8]) +
	 15'sd 9155 * $signed(input_fmap_18[23:16]) +
	 16'sd 28388 * $signed(input_fmap_18[31:24]) +
	 16'sd 29263 * $signed(input_fmap_18[39:32]) +
	 13'sd 3616 * $signed(input_fmap_18[47:40]) +
	 15'sd 13766 * $signed(input_fmap_18[55:48]) +
	 13'sd 3097 * $signed(input_fmap_18[63:56]) +
	 13'sd 2128 * $signed(input_fmap_18[71:64]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 16'sd 25472 * $signed(input_fmap_19[7:0]) +
	 16'sd 29513 * $signed(input_fmap_19[15:8]) +
	 16'sd 20732 * $signed(input_fmap_19[23:16]) +
	 13'sd 2162 * $signed(input_fmap_19[31:24]) +
	 16'sd 24031 * $signed(input_fmap_19[39:32]) +
	 14'sd 5824 * $signed(input_fmap_19[47:40]) +
	 16'sd 25396 * $signed(input_fmap_19[55:48]) +
	 16'sd 30214 * $signed(input_fmap_19[63:56]) +
	 16'sd 17960 * $signed(input_fmap_19[71:64]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 13'sd 3731 * $signed(input_fmap_20[7:0]) +
	 16'sd 30833 * $signed(input_fmap_20[15:8]) +
	 14'sd 4760 * $signed(input_fmap_20[23:16]) +
	 14'sd 7004 * $signed(input_fmap_20[31:24]) +
	 15'sd 11346 * $signed(input_fmap_20[39:32]) +
	 16'sd 20507 * $signed(input_fmap_20[47:40]) +
	 15'sd 12306 * $signed(input_fmap_20[55:48]) +
	 16'sd 18921 * $signed(input_fmap_20[63:56]) +
	 16'sd 19841 * $signed(input_fmap_20[71:64]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 16'sd 18240 * $signed(input_fmap_21[7:0]) +
	 16'sd 31433 * $signed(input_fmap_21[15:8]) +
	 15'sd 9260 * $signed(input_fmap_21[23:16]) +
	 16'sd 18637 * $signed(input_fmap_21[31:24]) +
	 16'sd 22914 * $signed(input_fmap_21[39:32]) +
	 16'sd 21463 * $signed(input_fmap_21[47:40]) +
	 16'sd 19103 * $signed(input_fmap_21[55:48]) +
	 16'sd 20071 * $signed(input_fmap_21[63:56]) +
	 16'sd 24822 * $signed(input_fmap_21[71:64]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 16'sd 18488 * $signed(input_fmap_22[7:0]) +
	 15'sd 11811 * $signed(input_fmap_22[15:8]) +
	 16'sd 27555 * $signed(input_fmap_22[23:16]) +
	 12'sd 1256 * $signed(input_fmap_22[31:24]) +
	 16'sd 28336 * $signed(input_fmap_22[39:32]) +
	 16'sd 20919 * $signed(input_fmap_22[47:40]) +
	 12'sd 1951 * $signed(input_fmap_22[55:48]) +
	 15'sd 16028 * $signed(input_fmap_22[63:56]) +
	 14'sd 5104 * $signed(input_fmap_22[71:64]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 12'sd 1522 * $signed(input_fmap_23[7:0]) +
	 8'sd 95 * $signed(input_fmap_23[15:8]) +
	 14'sd 5704 * $signed(input_fmap_23[23:16]) +
	 14'sd 4208 * $signed(input_fmap_23[31:24]) +
	 15'sd 15338 * $signed(input_fmap_23[39:32]) +
	 15'sd 14502 * $signed(input_fmap_23[47:40]) +
	 13'sd 3168 * $signed(input_fmap_23[55:48]) +
	 15'sd 14287 * $signed(input_fmap_23[63:56]) +
	 15'sd 10598 * $signed(input_fmap_23[71:64]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 14'sd 5616 * $signed(input_fmap_24[7:0]) +
	 16'sd 20358 * $signed(input_fmap_24[15:8]) +
	 16'sd 29858 * $signed(input_fmap_24[23:16]) +
	 16'sd 28968 * $signed(input_fmap_24[31:24]) +
	 15'sd 16143 * $signed(input_fmap_24[39:32]) +
	 16'sd 21711 * $signed(input_fmap_24[47:40]) +
	 14'sd 7323 * $signed(input_fmap_24[55:48]) +
	 16'sd 25364 * $signed(input_fmap_24[63:56]) +
	 15'sd 15131 * $signed(input_fmap_24[71:64]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 16'sd 19217 * $signed(input_fmap_25[7:0]) +
	 14'sd 5414 * $signed(input_fmap_25[15:8]) +
	 15'sd 9476 * $signed(input_fmap_25[23:16]) +
	 14'sd 5425 * $signed(input_fmap_25[31:24]) +
	 15'sd 12272 * $signed(input_fmap_25[39:32]) +
	 15'sd 14152 * $signed(input_fmap_25[47:40]) +
	 16'sd 18639 * $signed(input_fmap_25[55:48]) +
	 16'sd 20135 * $signed(input_fmap_25[63:56]) +
	 16'sd 17979 * $signed(input_fmap_25[71:64]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 15'sd 10780 * $signed(input_fmap_26[7:0]) +
	 14'sd 4297 * $signed(input_fmap_26[15:8]) +
	 16'sd 19420 * $signed(input_fmap_26[23:16]) +
	 15'sd 10661 * $signed(input_fmap_26[31:24]) +
	 16'sd 31195 * $signed(input_fmap_26[39:32]) +
	 15'sd 12170 * $signed(input_fmap_26[47:40]) +
	 16'sd 25836 * $signed(input_fmap_26[55:48]) +
	 16'sd 22450 * $signed(input_fmap_26[63:56]) +
	 15'sd 10118 * $signed(input_fmap_26[71:64]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 14'sd 7073 * $signed(input_fmap_27[7:0]) +
	 12'sd 1397 * $signed(input_fmap_27[15:8]) +
	 16'sd 16515 * $signed(input_fmap_27[23:16]) +
	 13'sd 2917 * $signed(input_fmap_27[31:24]) +
	 15'sd 11830 * $signed(input_fmap_27[39:32]) +
	 16'sd 32571 * $signed(input_fmap_27[47:40]) +
	 16'sd 22005 * $signed(input_fmap_27[55:48]) +
	 15'sd 8658 * $signed(input_fmap_27[63:56]) +
	 15'sd 9353 * $signed(input_fmap_27[71:64]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 13'sd 2512 * $signed(input_fmap_28[7:0]) +
	 12'sd 1750 * $signed(input_fmap_28[15:8]) +
	 15'sd 14968 * $signed(input_fmap_28[23:16]) +
	 16'sd 16934 * $signed(input_fmap_28[31:24]) +
	 15'sd 16251 * $signed(input_fmap_28[39:32]) +
	 16'sd 27817 * $signed(input_fmap_28[47:40]) +
	 16'sd 18587 * $signed(input_fmap_28[55:48]) +
	 13'sd 3484 * $signed(input_fmap_28[63:56]) +
	 12'sd 1931 * $signed(input_fmap_28[71:64]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 16'sd 25420 * $signed(input_fmap_29[7:0]) +
	 15'sd 12541 * $signed(input_fmap_29[15:8]) +
	 12'sd 1441 * $signed(input_fmap_29[23:16]) +
	 16'sd 20702 * $signed(input_fmap_29[31:24]) +
	 13'sd 3475 * $signed(input_fmap_29[39:32]) +
	 16'sd 16884 * $signed(input_fmap_29[47:40]) +
	 14'sd 4330 * $signed(input_fmap_29[55:48]) +
	 14'sd 7635 * $signed(input_fmap_29[63:56]) +
	 16'sd 21288 * $signed(input_fmap_29[71:64]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 16'sd 31433 * $signed(input_fmap_30[7:0]) +
	 15'sd 14113 * $signed(input_fmap_30[15:8]) +
	 16'sd 31408 * $signed(input_fmap_30[23:16]) +
	 15'sd 10644 * $signed(input_fmap_30[31:24]) +
	 14'sd 7601 * $signed(input_fmap_30[39:32]) +
	 15'sd 10307 * $signed(input_fmap_30[47:40]) +
	 16'sd 26141 * $signed(input_fmap_30[55:48]) +
	 15'sd 11825 * $signed(input_fmap_30[63:56]) +
	 10'sd 446 * $signed(input_fmap_30[71:64]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 16'sd 23446 * $signed(input_fmap_31[7:0]) +
	 14'sd 6718 * $signed(input_fmap_31[15:8]) +
	 15'sd 10602 * $signed(input_fmap_31[23:16]) +
	 16'sd 27226 * $signed(input_fmap_31[31:24]) +
	 15'sd 9135 * $signed(input_fmap_31[39:32]) +
	 15'sd 13639 * $signed(input_fmap_31[47:40]) +
	 16'sd 32063 * $signed(input_fmap_31[55:48]) +
	 16'sd 18477 * $signed(input_fmap_31[63:56]) +
	 16'sd 18736 * $signed(input_fmap_31[71:64]);

logic signed [31:0] dw_conv_mac_32;
assign dw_conv_mac_32 = 
	 16'sd 26512 * $signed(input_fmap_32[7:0]) +
	 16'sd 16591 * $signed(input_fmap_32[15:8]) +
	 16'sd 31956 * $signed(input_fmap_32[23:16]) +
	 16'sd 22489 * $signed(input_fmap_32[31:24]) +
	 14'sd 8165 * $signed(input_fmap_32[39:32]) +
	 16'sd 30097 * $signed(input_fmap_32[47:40]) +
	 16'sd 19174 * $signed(input_fmap_32[55:48]) +
	 16'sd 19550 * $signed(input_fmap_32[63:56]) +
	 10'sd 425 * $signed(input_fmap_32[71:64]);

logic signed [31:0] dw_conv_mac_33;
assign dw_conv_mac_33 = 
	 16'sd 26323 * $signed(input_fmap_33[7:0]) +
	 14'sd 5969 * $signed(input_fmap_33[15:8]) +
	 15'sd 10740 * $signed(input_fmap_33[23:16]) +
	 13'sd 3640 * $signed(input_fmap_33[31:24]) +
	 16'sd 29965 * $signed(input_fmap_33[39:32]) +
	 14'sd 7301 * $signed(input_fmap_33[47:40]) +
	 15'sd 8500 * $signed(input_fmap_33[55:48]) +
	 15'sd 12184 * $signed(input_fmap_33[63:56]) +
	 16'sd 18096 * $signed(input_fmap_33[71:64]);

logic signed [31:0] dw_conv_mac_34;
assign dw_conv_mac_34 = 
	 16'sd 27142 * $signed(input_fmap_34[7:0]) +
	 15'sd 15769 * $signed(input_fmap_34[15:8]) +
	 16'sd 19120 * $signed(input_fmap_34[23:16]) +
	 15'sd 9360 * $signed(input_fmap_34[31:24]) +
	 14'sd 6247 * $signed(input_fmap_34[39:32]) +
	 16'sd 30709 * $signed(input_fmap_34[47:40]) +
	 14'sd 6817 * $signed(input_fmap_34[55:48]) +
	 16'sd 21356 * $signed(input_fmap_34[63:56]) +
	 16'sd 22919 * $signed(input_fmap_34[71:64]);

logic signed [31:0] dw_conv_mac_35;
assign dw_conv_mac_35 = 
	 16'sd 24933 * $signed(input_fmap_35[7:0]) +
	 16'sd 18403 * $signed(input_fmap_35[15:8]) +
	 14'sd 5189 * $signed(input_fmap_35[23:16]) +
	 15'sd 11044 * $signed(input_fmap_35[31:24]) +
	 15'sd 14418 * $signed(input_fmap_35[39:32]) +
	 16'sd 16754 * $signed(input_fmap_35[47:40]) +
	 16'sd 25247 * $signed(input_fmap_35[55:48]) +
	 15'sd 11051 * $signed(input_fmap_35[63:56]) +
	 15'sd 16088 * $signed(input_fmap_35[71:64]);

logic signed [31:0] dw_conv_mac_36;
assign dw_conv_mac_36 = 
	 16'sd 24928 * $signed(input_fmap_36[7:0]) +
	 16'sd 29306 * $signed(input_fmap_36[15:8]) +
	 16'sd 26686 * $signed(input_fmap_36[23:16]) +
	 15'sd 14289 * $signed(input_fmap_36[31:24]) +
	 16'sd 17207 * $signed(input_fmap_36[39:32]) +
	 14'sd 7703 * $signed(input_fmap_36[47:40]) +
	 16'sd 18237 * $signed(input_fmap_36[55:48]) +
	 16'sd 22094 * $signed(input_fmap_36[63:56]) +
	 13'sd 3219 * $signed(input_fmap_36[71:64]);

logic signed [31:0] dw_conv_mac_37;
assign dw_conv_mac_37 = 
	 16'sd 30028 * $signed(input_fmap_37[7:0]) +
	 16'sd 17121 * $signed(input_fmap_37[15:8]) +
	 15'sd 13211 * $signed(input_fmap_37[23:16]) +
	 15'sd 10857 * $signed(input_fmap_37[31:24]) +
	 16'sd 31062 * $signed(input_fmap_37[39:32]) +
	 15'sd 12800 * $signed(input_fmap_37[47:40]) +
	 15'sd 9463 * $signed(input_fmap_37[55:48]) +
	 16'sd 23283 * $signed(input_fmap_37[63:56]) +
	 15'sd 15176 * $signed(input_fmap_37[71:64]);

logic signed [31:0] dw_conv_mac_38;
assign dw_conv_mac_38 = 
	 13'sd 2127 * $signed(input_fmap_38[7:0]) +
	 14'sd 4491 * $signed(input_fmap_38[15:8]) +
	 16'sd 29926 * $signed(input_fmap_38[23:16]) +
	 16'sd 20387 * $signed(input_fmap_38[31:24]) +
	 16'sd 29939 * $signed(input_fmap_38[39:32]) +
	 15'sd 8885 * $signed(input_fmap_38[47:40]) +
	 15'sd 13144 * $signed(input_fmap_38[55:48]) +
	 14'sd 6955 * $signed(input_fmap_38[63:56]) +
	 12'sd 1716 * $signed(input_fmap_38[71:64]);

logic signed [31:0] dw_conv_mac_39;
assign dw_conv_mac_39 = 
	 15'sd 12275 * $signed(input_fmap_39[7:0]) +
	 16'sd 27364 * $signed(input_fmap_39[15:8]) +
	 16'sd 25765 * $signed(input_fmap_39[23:16]) +
	 14'sd 7940 * $signed(input_fmap_39[31:24]) +
	 15'sd 13815 * $signed(input_fmap_39[39:32]) +
	 16'sd 26460 * $signed(input_fmap_39[47:40]) +
	 16'sd 21262 * $signed(input_fmap_39[55:48]) +
	 15'sd 11615 * $signed(input_fmap_39[63:56]) +
	 16'sd 21342 * $signed(input_fmap_39[71:64]);

logic signed [31:0] dw_conv_mac_40;
assign dw_conv_mac_40 = 
	 16'sd 22139 * $signed(input_fmap_40[7:0]) +
	 16'sd 22141 * $signed(input_fmap_40[15:8]) +
	 16'sd 25762 * $signed(input_fmap_40[23:16]) +
	 16'sd 16633 * $signed(input_fmap_40[31:24]) +
	 16'sd 20996 * $signed(input_fmap_40[39:32]) +
	 15'sd 11898 * $signed(input_fmap_40[47:40]) +
	 15'sd 13225 * $signed(input_fmap_40[55:48]) +
	 16'sd 28100 * $signed(input_fmap_40[63:56]) +
	 15'sd 10391 * $signed(input_fmap_40[71:64]);

logic signed [31:0] dw_conv_mac_41;
assign dw_conv_mac_41 = 
	 16'sd 30276 * $signed(input_fmap_41[7:0]) +
	 11'sd 778 * $signed(input_fmap_41[15:8]) +
	 13'sd 2146 * $signed(input_fmap_41[23:16]) +
	 16'sd 28279 * $signed(input_fmap_41[31:24]) +
	 15'sd 15549 * $signed(input_fmap_41[39:32]) +
	 12'sd 1413 * $signed(input_fmap_41[47:40]) +
	 16'sd 19999 * $signed(input_fmap_41[55:48]) +
	 12'sd 2030 * $signed(input_fmap_41[63:56]) +
	 16'sd 18576 * $signed(input_fmap_41[71:64]);

logic signed [31:0] dw_conv_mac_42;
assign dw_conv_mac_42 = 
	 16'sd 16723 * $signed(input_fmap_42[7:0]) +
	 12'sd 2047 * $signed(input_fmap_42[15:8]) +
	 16'sd 23268 * $signed(input_fmap_42[23:16]) +
	 14'sd 6680 * $signed(input_fmap_42[31:24]) +
	 16'sd 28913 * $signed(input_fmap_42[39:32]) +
	 16'sd 22998 * $signed(input_fmap_42[47:40]) +
	 13'sd 3398 * $signed(input_fmap_42[55:48]) +
	 16'sd 30351 * $signed(input_fmap_42[63:56]) +
	 14'sd 4600 * $signed(input_fmap_42[71:64]);

logic signed [31:0] dw_conv_mac_43;
assign dw_conv_mac_43 = 
	 16'sd 28280 * $signed(input_fmap_43[7:0]) +
	 16'sd 24595 * $signed(input_fmap_43[15:8]) +
	 16'sd 19648 * $signed(input_fmap_43[23:16]) +
	 15'sd 8700 * $signed(input_fmap_43[31:24]) +
	 15'sd 8625 * $signed(input_fmap_43[39:32]) +
	 15'sd 15745 * $signed(input_fmap_43[47:40]) +
	 16'sd 16788 * $signed(input_fmap_43[55:48]) +
	 15'sd 9496 * $signed(input_fmap_43[63:56]) +
	 16'sd 30396 * $signed(input_fmap_43[71:64]);

logic signed [31:0] dw_conv_mac_44;
assign dw_conv_mac_44 = 
	 16'sd 16916 * $signed(input_fmap_44[7:0]) +
	 16'sd 17044 * $signed(input_fmap_44[15:8]) +
	 16'sd 28010 * $signed(input_fmap_44[23:16]) +
	 16'sd 32166 * $signed(input_fmap_44[31:24]) +
	 16'sd 16907 * $signed(input_fmap_44[39:32]) +
	 6'sd 27 * $signed(input_fmap_44[47:40]) +
	 15'sd 12765 * $signed(input_fmap_44[55:48]) +
	 15'sd 15943 * $signed(input_fmap_44[63:56]) +
	 16'sd 18465 * $signed(input_fmap_44[71:64]);

logic signed [31:0] dw_conv_mac_45;
assign dw_conv_mac_45 = 
	 16'sd 20590 * $signed(input_fmap_45[7:0]) +
	 16'sd 27402 * $signed(input_fmap_45[15:8]) +
	 16'sd 31968 * $signed(input_fmap_45[23:16]) +
	 16'sd 17330 * $signed(input_fmap_45[31:24]) +
	 16'sd 29996 * $signed(input_fmap_45[39:32]) +
	 14'sd 6194 * $signed(input_fmap_45[47:40]) +
	 15'sd 13862 * $signed(input_fmap_45[55:48]) +
	 15'sd 13155 * $signed(input_fmap_45[63:56]) +
	 16'sd 31651 * $signed(input_fmap_45[71:64]);

logic signed [31:0] dw_conv_mac_46;
assign dw_conv_mac_46 = 
	 16'sd 17361 * $signed(input_fmap_46[7:0]) +
	 16'sd 25489 * $signed(input_fmap_46[15:8]) +
	 16'sd 21529 * $signed(input_fmap_46[23:16]) +
	 15'sd 9969 * $signed(input_fmap_46[31:24]) +
	 16'sd 17306 * $signed(input_fmap_46[39:32]) +
	 16'sd 31637 * $signed(input_fmap_46[47:40]) +
	 11'sd 908 * $signed(input_fmap_46[55:48]) +
	 15'sd 14370 * $signed(input_fmap_46[63:56]) +
	 11'sd 754 * $signed(input_fmap_46[71:64]);

logic signed [31:0] dw_conv_mac_47;
assign dw_conv_mac_47 = 
	 15'sd 11975 * $signed(input_fmap_47[7:0]) +
	 16'sd 22358 * $signed(input_fmap_47[15:8]) +
	 16'sd 32306 * $signed(input_fmap_47[23:16]) +
	 15'sd 13644 * $signed(input_fmap_47[31:24]) +
	 15'sd 8320 * $signed(input_fmap_47[39:32]) +
	 16'sd 18510 * $signed(input_fmap_47[47:40]) +
	 16'sd 27206 * $signed(input_fmap_47[55:48]) +
	 16'sd 19781 * $signed(input_fmap_47[63:56]) +
	 13'sd 3557 * $signed(input_fmap_47[71:64]);

logic signed [31:0] dw_conv_mac_48;
assign dw_conv_mac_48 = 
	 15'sd 12840 * $signed(input_fmap_48[7:0]) +
	 16'sd 30763 * $signed(input_fmap_48[15:8]) +
	 16'sd 27025 * $signed(input_fmap_48[23:16]) +
	 14'sd 6919 * $signed(input_fmap_48[31:24]) +
	 16'sd 23550 * $signed(input_fmap_48[39:32]) +
	 16'sd 16846 * $signed(input_fmap_48[47:40]) +
	 16'sd 16743 * $signed(input_fmap_48[55:48]) +
	 14'sd 5055 * $signed(input_fmap_48[63:56]) +
	 16'sd 21208 * $signed(input_fmap_48[71:64]);

logic signed [31:0] dw_conv_mac_49;
assign dw_conv_mac_49 = 
	 16'sd 18310 * $signed(input_fmap_49[7:0]) +
	 14'sd 6763 * $signed(input_fmap_49[15:8]) +
	 16'sd 31813 * $signed(input_fmap_49[23:16]) +
	 16'sd 28931 * $signed(input_fmap_49[31:24]) +
	 15'sd 9993 * $signed(input_fmap_49[39:32]) +
	 14'sd 5662 * $signed(input_fmap_49[47:40]) +
	 15'sd 10544 * $signed(input_fmap_49[55:48]) +
	 14'sd 4890 * $signed(input_fmap_49[63:56]) +
	 16'sd 17133 * $signed(input_fmap_49[71:64]);

logic signed [31:0] dw_conv_mac_50;
assign dw_conv_mac_50 = 
	 12'sd 2005 * $signed(input_fmap_50[7:0]) +
	 15'sd 9854 * $signed(input_fmap_50[15:8]) +
	 12'sd 1760 * $signed(input_fmap_50[23:16]) +
	 15'sd 12567 * $signed(input_fmap_50[31:24]) +
	 13'sd 4029 * $signed(input_fmap_50[39:32]) +
	 16'sd 28992 * $signed(input_fmap_50[47:40]) +
	 14'sd 5244 * $signed(input_fmap_50[55:48]) +
	 16'sd 25607 * $signed(input_fmap_50[63:56]) +
	 12'sd 1758 * $signed(input_fmap_50[71:64]);

logic signed [31:0] dw_conv_mac_51;
assign dw_conv_mac_51 = 
	 11'sd 999 * $signed(input_fmap_51[7:0]) +
	 16'sd 19599 * $signed(input_fmap_51[15:8]) +
	 16'sd 22229 * $signed(input_fmap_51[23:16]) +
	 15'sd 11805 * $signed(input_fmap_51[31:24]) +
	 16'sd 27284 * $signed(input_fmap_51[39:32]) +
	 14'sd 4996 * $signed(input_fmap_51[47:40]) +
	 14'sd 5782 * $signed(input_fmap_51[55:48]) +
	 16'sd 17399 * $signed(input_fmap_51[63:56]) +
	 14'sd 6136 * $signed(input_fmap_51[71:64]);

logic signed [31:0] dw_conv_mac_52;
assign dw_conv_mac_52 = 
	 15'sd 9083 * $signed(input_fmap_52[7:0]) +
	 16'sd 31128 * $signed(input_fmap_52[15:8]) +
	 16'sd 20197 * $signed(input_fmap_52[23:16]) +
	 14'sd 6430 * $signed(input_fmap_52[31:24]) +
	 16'sd 21124 * $signed(input_fmap_52[39:32]) +
	 16'sd 20075 * $signed(input_fmap_52[47:40]) +
	 12'sd 1853 * $signed(input_fmap_52[55:48]) +
	 16'sd 22532 * $signed(input_fmap_52[63:56]) +
	 13'sd 4070 * $signed(input_fmap_52[71:64]);

logic signed [31:0] dw_conv_mac_53;
assign dw_conv_mac_53 = 
	 15'sd 8856 * $signed(input_fmap_53[7:0]) +
	 16'sd 24242 * $signed(input_fmap_53[15:8]) +
	 16'sd 30840 * $signed(input_fmap_53[23:16]) +
	 16'sd 24196 * $signed(input_fmap_53[31:24]) +
	 16'sd 29473 * $signed(input_fmap_53[39:32]) +
	 14'sd 6514 * $signed(input_fmap_53[47:40]) +
	 13'sd 3506 * $signed(input_fmap_53[55:48]) +
	 16'sd 32456 * $signed(input_fmap_53[63:56]) +
	 16'sd 29248 * $signed(input_fmap_53[71:64]);

logic signed [31:0] dw_conv_mac_54;
assign dw_conv_mac_54 = 
	 15'sd 8241 * $signed(input_fmap_54[7:0]) +
	 12'sd 1769 * $signed(input_fmap_54[15:8]) +
	 16'sd 22611 * $signed(input_fmap_54[23:16]) +
	 16'sd 25371 * $signed(input_fmap_54[31:24]) +
	 16'sd 26260 * $signed(input_fmap_54[39:32]) +
	 16'sd 27030 * $signed(input_fmap_54[47:40]) +
	 16'sd 30167 * $signed(input_fmap_54[55:48]) +
	 16'sd 20133 * $signed(input_fmap_54[63:56]) +
	 16'sd 28583 * $signed(input_fmap_54[71:64]);

logic signed [31:0] dw_conv_mac_55;
assign dw_conv_mac_55 = 
	 16'sd 19333 * $signed(input_fmap_55[7:0]) +
	 16'sd 28514 * $signed(input_fmap_55[15:8]) +
	 16'sd 27765 * $signed(input_fmap_55[23:16]) +
	 16'sd 22496 * $signed(input_fmap_55[31:24]) +
	 16'sd 24400 * $signed(input_fmap_55[39:32]) +
	 14'sd 4205 * $signed(input_fmap_55[47:40]) +
	 16'sd 30119 * $signed(input_fmap_55[55:48]) +
	 16'sd 31920 * $signed(input_fmap_55[63:56]) +
	 15'sd 12940 * $signed(input_fmap_55[71:64]);

logic signed [31:0] dw_conv_mac_56;
assign dw_conv_mac_56 = 
	 15'sd 10044 * $signed(input_fmap_56[7:0]) +
	 15'sd 14685 * $signed(input_fmap_56[15:8]) +
	 13'sd 2946 * $signed(input_fmap_56[23:16]) +
	 16'sd 30742 * $signed(input_fmap_56[31:24]) +
	 13'sd 3394 * $signed(input_fmap_56[39:32]) +
	 15'sd 15271 * $signed(input_fmap_56[47:40]) +
	 14'sd 4125 * $signed(input_fmap_56[55:48]) +
	 16'sd 26700 * $signed(input_fmap_56[63:56]) +
	 16'sd 25841 * $signed(input_fmap_56[71:64]);

logic signed [31:0] dw_conv_mac_57;
assign dw_conv_mac_57 = 
	 16'sd 27915 * $signed(input_fmap_57[7:0]) +
	 16'sd 21498 * $signed(input_fmap_57[15:8]) +
	 16'sd 24601 * $signed(input_fmap_57[23:16]) +
	 15'sd 14446 * $signed(input_fmap_57[31:24]) +
	 16'sd 29034 * $signed(input_fmap_57[39:32]) +
	 16'sd 25623 * $signed(input_fmap_57[47:40]) +
	 15'sd 16334 * $signed(input_fmap_57[55:48]) +
	 12'sd 1397 * $signed(input_fmap_57[63:56]) +
	 13'sd 4050 * $signed(input_fmap_57[71:64]);

logic signed [31:0] dw_conv_mac_58;
assign dw_conv_mac_58 = 
	 16'sd 19726 * $signed(input_fmap_58[7:0]) +
	 15'sd 11078 * $signed(input_fmap_58[15:8]) +
	 16'sd 24968 * $signed(input_fmap_58[23:16]) +
	 16'sd 25644 * $signed(input_fmap_58[31:24]) +
	 16'sd 19765 * $signed(input_fmap_58[39:32]) +
	 16'sd 23509 * $signed(input_fmap_58[47:40]) +
	 16'sd 24751 * $signed(input_fmap_58[55:48]) +
	 14'sd 5159 * $signed(input_fmap_58[63:56]) +
	 16'sd 17926 * $signed(input_fmap_58[71:64]);

logic signed [31:0] dw_conv_mac_59;
assign dw_conv_mac_59 = 
	 12'sd 1686 * $signed(input_fmap_59[7:0]) +
	 15'sd 13280 * $signed(input_fmap_59[15:8]) +
	 15'sd 8585 * $signed(input_fmap_59[23:16]) +
	 16'sd 30785 * $signed(input_fmap_59[31:24]) +
	 16'sd 26716 * $signed(input_fmap_59[39:32]) +
	 15'sd 12977 * $signed(input_fmap_59[47:40]) +
	 15'sd 11094 * $signed(input_fmap_59[55:48]) +
	 15'sd 9343 * $signed(input_fmap_59[63:56]) +
	 15'sd 8865 * $signed(input_fmap_59[71:64]);

logic signed [31:0] dw_conv_mac_60;
assign dw_conv_mac_60 = 
	 16'sd 20832 * $signed(input_fmap_60[7:0]) +
	 15'sd 10821 * $signed(input_fmap_60[15:8]) +
	 15'sd 11923 * $signed(input_fmap_60[23:16]) +
	 16'sd 27332 * $signed(input_fmap_60[31:24]) +
	 16'sd 22325 * $signed(input_fmap_60[39:32]) +
	 15'sd 12085 * $signed(input_fmap_60[47:40]) +
	 16'sd 30814 * $signed(input_fmap_60[55:48]) +
	 16'sd 31423 * $signed(input_fmap_60[63:56]) +
	 16'sd 19079 * $signed(input_fmap_60[71:64]);

logic signed [31:0] dw_conv_mac_61;
assign dw_conv_mac_61 = 
	 16'sd 26548 * $signed(input_fmap_61[7:0]) +
	 16'sd 28222 * $signed(input_fmap_61[15:8]) +
	 15'sd 11132 * $signed(input_fmap_61[23:16]) +
	 16'sd 29678 * $signed(input_fmap_61[31:24]) +
	 14'sd 6018 * $signed(input_fmap_61[39:32]) +
	 14'sd 4602 * $signed(input_fmap_61[47:40]) +
	 16'sd 22852 * $signed(input_fmap_61[55:48]) +
	 16'sd 32027 * $signed(input_fmap_61[63:56]) +
	 14'sd 7784 * $signed(input_fmap_61[71:64]);

logic signed [31:0] dw_conv_mac_62;
assign dw_conv_mac_62 = 
	 16'sd 29929 * $signed(input_fmap_62[7:0]) +
	 15'sd 15943 * $signed(input_fmap_62[15:8]) +
	 14'sd 7782 * $signed(input_fmap_62[23:16]) +
	 15'sd 15797 * $signed(input_fmap_62[31:24]) +
	 16'sd 19187 * $signed(input_fmap_62[39:32]) +
	 15'sd 9362 * $signed(input_fmap_62[47:40]) +
	 13'sd 2416 * $signed(input_fmap_62[55:48]) +
	 16'sd 21305 * $signed(input_fmap_62[63:56]) +
	 16'sd 27813 * $signed(input_fmap_62[71:64]);

logic signed [31:0] dw_conv_mac_63;
assign dw_conv_mac_63 = 
	 16'sd 22148 * $signed(input_fmap_63[7:0]) +
	 13'sd 3872 * $signed(input_fmap_63[15:8]) +
	 15'sd 12037 * $signed(input_fmap_63[23:16]) +
	 14'sd 5216 * $signed(input_fmap_63[31:24]) +
	 13'sd 3609 * $signed(input_fmap_63[39:32]) +
	 14'sd 4759 * $signed(input_fmap_63[47:40]) +
	 16'sd 30011 * $signed(input_fmap_63[55:48]) +
	 16'sd 23762 * $signed(input_fmap_63[63:56]) +
	 16'sd 20243 * $signed(input_fmap_63[71:64]);

logic signed [31:0] dw_conv_mac_64;
assign dw_conv_mac_64 = 
	 15'sd 16373 * $signed(input_fmap_64[7:0]) +
	 15'sd 13678 * $signed(input_fmap_64[15:8]) +
	 16'sd 21618 * $signed(input_fmap_64[23:16]) +
	 15'sd 10291 * $signed(input_fmap_64[31:24]) +
	 14'sd 5294 * $signed(input_fmap_64[39:32]) +
	 16'sd 20082 * $signed(input_fmap_64[47:40]) +
	 15'sd 10134 * $signed(input_fmap_64[55:48]) +
	 16'sd 31772 * $signed(input_fmap_64[63:56]) +
	 14'sd 5679 * $signed(input_fmap_64[71:64]);

logic signed [31:0] dw_conv_mac_65;
assign dw_conv_mac_65 = 
	 15'sd 8960 * $signed(input_fmap_65[7:0]) +
	 16'sd 21987 * $signed(input_fmap_65[15:8]) +
	 14'sd 5798 * $signed(input_fmap_65[23:16]) +
	 15'sd 11164 * $signed(input_fmap_65[31:24]) +
	 15'sd 11198 * $signed(input_fmap_65[39:32]) +
	 14'sd 8022 * $signed(input_fmap_65[47:40]) +
	 16'sd 19234 * $signed(input_fmap_65[55:48]) +
	 16'sd 17289 * $signed(input_fmap_65[63:56]) +
	 16'sd 21706 * $signed(input_fmap_65[71:64]);

logic signed [31:0] dw_conv_mac_66;
assign dw_conv_mac_66 = 
	 15'sd 14678 * $signed(input_fmap_66[7:0]) +
	 14'sd 5386 * $signed(input_fmap_66[15:8]) +
	 16'sd 25767 * $signed(input_fmap_66[23:16]) +
	 13'sd 3171 * $signed(input_fmap_66[31:24]) +
	 15'sd 13347 * $signed(input_fmap_66[39:32]) +
	 16'sd 29168 * $signed(input_fmap_66[47:40]) +
	 15'sd 12831 * $signed(input_fmap_66[55:48]) +
	 16'sd 22620 * $signed(input_fmap_66[63:56]) +
	 16'sd 26228 * $signed(input_fmap_66[71:64]);

logic signed [31:0] dw_conv_mac_67;
assign dw_conv_mac_67 = 
	 14'sd 4326 * $signed(input_fmap_67[7:0]) +
	 16'sd 28375 * $signed(input_fmap_67[15:8]) +
	 11'sd 797 * $signed(input_fmap_67[23:16]) +
	 14'sd 5678 * $signed(input_fmap_67[31:24]) +
	 16'sd 29734 * $signed(input_fmap_67[39:32]) +
	 14'sd 8006 * $signed(input_fmap_67[47:40]) +
	 16'sd 20014 * $signed(input_fmap_67[55:48]) +
	 16'sd 17999 * $signed(input_fmap_67[63:56]) +
	 16'sd 16654 * $signed(input_fmap_67[71:64]);

logic signed [31:0] dw_conv_mac_68;
assign dw_conv_mac_68 = 
	 12'sd 1721 * $signed(input_fmap_68[7:0]) +
	 16'sd 18816 * $signed(input_fmap_68[15:8]) +
	 16'sd 21571 * $signed(input_fmap_68[23:16]) +
	 16'sd 30946 * $signed(input_fmap_68[31:24]) +
	 16'sd 22881 * $signed(input_fmap_68[39:32]) +
	 15'sd 13185 * $signed(input_fmap_68[47:40]) +
	 16'sd 20360 * $signed(input_fmap_68[55:48]) +
	 14'sd 4425 * $signed(input_fmap_68[63:56]) +
	 15'sd 16160 * $signed(input_fmap_68[71:64]);

logic signed [31:0] dw_conv_mac_69;
assign dw_conv_mac_69 = 
	 16'sd 28199 * $signed(input_fmap_69[7:0]) +
	 13'sd 3729 * $signed(input_fmap_69[15:8]) +
	 13'sd 2643 * $signed(input_fmap_69[23:16]) +
	 16'sd 31185 * $signed(input_fmap_69[31:24]) +
	 15'sd 14219 * $signed(input_fmap_69[39:32]) +
	 16'sd 22574 * $signed(input_fmap_69[47:40]) +
	 14'sd 4110 * $signed(input_fmap_69[55:48]) +
	 11'sd 717 * $signed(input_fmap_69[63:56]) +
	 16'sd 29399 * $signed(input_fmap_69[71:64]);

logic signed [31:0] dw_conv_mac_70;
assign dw_conv_mac_70 = 
	 13'sd 3664 * $signed(input_fmap_70[7:0]) +
	 16'sd 21415 * $signed(input_fmap_70[15:8]) +
	 16'sd 20707 * $signed(input_fmap_70[23:16]) +
	 15'sd 11729 * $signed(input_fmap_70[31:24]) +
	 15'sd 15032 * $signed(input_fmap_70[39:32]) +
	 15'sd 15596 * $signed(input_fmap_70[47:40]) +
	 14'sd 7895 * $signed(input_fmap_70[55:48]) +
	 16'sd 22429 * $signed(input_fmap_70[63:56]) +
	 16'sd 31662 * $signed(input_fmap_70[71:64]);

logic signed [31:0] dw_conv_mac_71;
assign dw_conv_mac_71 = 
	 16'sd 28030 * $signed(input_fmap_71[7:0]) +
	 15'sd 9433 * $signed(input_fmap_71[15:8]) +
	 15'sd 10347 * $signed(input_fmap_71[23:16]) +
	 16'sd 23856 * $signed(input_fmap_71[31:24]) +
	 16'sd 29603 * $signed(input_fmap_71[39:32]) +
	 16'sd 30379 * $signed(input_fmap_71[47:40]) +
	 16'sd 26749 * $signed(input_fmap_71[55:48]) +
	 16'sd 25326 * $signed(input_fmap_71[63:56]) +
	 15'sd 11409 * $signed(input_fmap_71[71:64]);

logic signed [31:0] dw_conv_mac_72;
assign dw_conv_mac_72 = 
	 16'sd 19942 * $signed(input_fmap_72[7:0]) +
	 16'sd 27719 * $signed(input_fmap_72[15:8]) +
	 15'sd 15374 * $signed(input_fmap_72[23:16]) +
	 16'sd 27679 * $signed(input_fmap_72[31:24]) +
	 13'sd 2551 * $signed(input_fmap_72[39:32]) +
	 16'sd 21984 * $signed(input_fmap_72[47:40]) +
	 14'sd 6839 * $signed(input_fmap_72[55:48]) +
	 13'sd 3077 * $signed(input_fmap_72[63:56]) +
	 16'sd 30450 * $signed(input_fmap_72[71:64]);

logic signed [31:0] dw_conv_mac_73;
assign dw_conv_mac_73 = 
	 14'sd 7086 * $signed(input_fmap_73[7:0]) +
	 12'sd 1728 * $signed(input_fmap_73[15:8]) +
	 16'sd 20122 * $signed(input_fmap_73[23:16]) +
	 15'sd 11243 * $signed(input_fmap_73[31:24]) +
	 16'sd 31578 * $signed(input_fmap_73[39:32]) +
	 16'sd 28468 * $signed(input_fmap_73[47:40]) +
	 16'sd 26712 * $signed(input_fmap_73[55:48]) +
	 16'sd 24269 * $signed(input_fmap_73[63:56]) +
	 16'sd 31121 * $signed(input_fmap_73[71:64]);

logic signed [31:0] dw_conv_mac_74;
assign dw_conv_mac_74 = 
	 16'sd 30909 * $signed(input_fmap_74[7:0]) +
	 15'sd 12585 * $signed(input_fmap_74[15:8]) +
	 16'sd 27508 * $signed(input_fmap_74[23:16]) +
	 15'sd 14587 * $signed(input_fmap_74[31:24]) +
	 12'sd 1312 * $signed(input_fmap_74[39:32]) +
	 16'sd 30942 * $signed(input_fmap_74[47:40]) +
	 14'sd 4512 * $signed(input_fmap_74[55:48]) +
	 15'sd 8323 * $signed(input_fmap_74[63:56]) +
	 16'sd 30180 * $signed(input_fmap_74[71:64]);

logic signed [31:0] dw_conv_mac_75;
assign dw_conv_mac_75 = 
	 16'sd 21769 * $signed(input_fmap_75[7:0]) +
	 14'sd 5847 * $signed(input_fmap_75[15:8]) +
	 16'sd 24065 * $signed(input_fmap_75[23:16]) +
	 15'sd 9585 * $signed(input_fmap_75[31:24]) +
	 15'sd 14489 * $signed(input_fmap_75[39:32]) +
	 14'sd 8176 * $signed(input_fmap_75[47:40]) +
	 15'sd 8862 * $signed(input_fmap_75[55:48]) +
	 13'sd 3636 * $signed(input_fmap_75[63:56]) +
	 15'sd 9935 * $signed(input_fmap_75[71:64]);

logic signed [31:0] dw_conv_mac_76;
assign dw_conv_mac_76 = 
	 14'sd 8126 * $signed(input_fmap_76[7:0]) +
	 16'sd 19007 * $signed(input_fmap_76[15:8]) +
	 13'sd 2325 * $signed(input_fmap_76[23:16]) +
	 16'sd 24236 * $signed(input_fmap_76[31:24]) +
	 13'sd 3751 * $signed(input_fmap_76[39:32]) +
	 16'sd 23756 * $signed(input_fmap_76[47:40]) +
	 16'sd 27988 * $signed(input_fmap_76[55:48]) +
	 15'sd 15251 * $signed(input_fmap_76[63:56]) +
	 12'sd 1922 * $signed(input_fmap_76[71:64]);

logic signed [31:0] dw_conv_mac_77;
assign dw_conv_mac_77 = 
	 15'sd 8409 * $signed(input_fmap_77[7:0]) +
	 16'sd 32504 * $signed(input_fmap_77[15:8]) +
	 16'sd 25314 * $signed(input_fmap_77[23:16]) +
	 12'sd 1584 * $signed(input_fmap_77[31:24]) +
	 14'sd 6908 * $signed(input_fmap_77[39:32]) +
	 16'sd 23154 * $signed(input_fmap_77[47:40]) +
	 13'sd 2103 * $signed(input_fmap_77[55:48]) +
	 16'sd 23174 * $signed(input_fmap_77[63:56]) +
	 16'sd 28430 * $signed(input_fmap_77[71:64]);

logic signed [31:0] dw_conv_mac_78;
assign dw_conv_mac_78 = 
	 16'sd 20424 * $signed(input_fmap_78[7:0]) +
	 13'sd 3487 * $signed(input_fmap_78[15:8]) +
	 15'sd 13041 * $signed(input_fmap_78[23:16]) +
	 16'sd 21103 * $signed(input_fmap_78[31:24]) +
	 15'sd 11420 * $signed(input_fmap_78[39:32]) +
	 16'sd 25004 * $signed(input_fmap_78[47:40]) +
	 16'sd 16955 * $signed(input_fmap_78[55:48]) +
	 15'sd 10283 * $signed(input_fmap_78[63:56]) +
	 15'sd 15328 * $signed(input_fmap_78[71:64]);

logic signed [31:0] dw_conv_mac_79;
assign dw_conv_mac_79 = 
	 15'sd 8662 * $signed(input_fmap_79[7:0]) +
	 13'sd 3915 * $signed(input_fmap_79[15:8]) +
	 12'sd 1697 * $signed(input_fmap_79[23:16]) +
	 16'sd 21007 * $signed(input_fmap_79[31:24]) +
	 15'sd 13806 * $signed(input_fmap_79[39:32]) +
	 15'sd 14863 * $signed(input_fmap_79[47:40]) +
	 16'sd 18213 * $signed(input_fmap_79[55:48]) +
	 14'sd 7861 * $signed(input_fmap_79[63:56]) +
	 12'sd 1500 * $signed(input_fmap_79[71:64]);

logic signed [31:0] dw_conv_mac_80;
assign dw_conv_mac_80 = 
	 14'sd 7660 * $signed(input_fmap_80[7:0]) +
	 16'sd 29479 * $signed(input_fmap_80[15:8]) +
	 16'sd 29918 * $signed(input_fmap_80[23:16]) +
	 13'sd 2421 * $signed(input_fmap_80[31:24]) +
	 14'sd 8097 * $signed(input_fmap_80[39:32]) +
	 15'sd 14732 * $signed(input_fmap_80[47:40]) +
	 16'sd 16554 * $signed(input_fmap_80[55:48]) +
	 15'sd 11879 * $signed(input_fmap_80[63:56]) +
	 15'sd 9378 * $signed(input_fmap_80[71:64]);

logic signed [31:0] dw_conv_mac_81;
assign dw_conv_mac_81 = 
	 16'sd 29497 * $signed(input_fmap_81[7:0]) +
	 16'sd 32557 * $signed(input_fmap_81[15:8]) +
	 16'sd 19218 * $signed(input_fmap_81[23:16]) +
	 16'sd 26363 * $signed(input_fmap_81[31:24]) +
	 13'sd 3854 * $signed(input_fmap_81[39:32]) +
	 15'sd 10560 * $signed(input_fmap_81[47:40]) +
	 15'sd 10208 * $signed(input_fmap_81[55:48]) +
	 16'sd 23471 * $signed(input_fmap_81[63:56]) +
	 15'sd 8199 * $signed(input_fmap_81[71:64]);

logic signed [31:0] dw_conv_mac_82;
assign dw_conv_mac_82 = 
	 14'sd 4421 * $signed(input_fmap_82[7:0]) +
	 16'sd 23159 * $signed(input_fmap_82[15:8]) +
	 15'sd 8292 * $signed(input_fmap_82[23:16]) +
	 12'sd 1804 * $signed(input_fmap_82[31:24]) +
	 15'sd 9592 * $signed(input_fmap_82[39:32]) +
	 13'sd 2461 * $signed(input_fmap_82[47:40]) +
	 16'sd 17589 * $signed(input_fmap_82[55:48]) +
	 15'sd 8758 * $signed(input_fmap_82[63:56]) +
	 16'sd 21576 * $signed(input_fmap_82[71:64]);

logic signed [31:0] dw_conv_mac_83;
assign dw_conv_mac_83 = 
	 16'sd 23335 * $signed(input_fmap_83[7:0]) +
	 13'sd 2388 * $signed(input_fmap_83[15:8]) +
	 16'sd 18274 * $signed(input_fmap_83[23:16]) +
	 15'sd 14387 * $signed(input_fmap_83[31:24]) +
	 11'sd 589 * $signed(input_fmap_83[39:32]) +
	 13'sd 3495 * $signed(input_fmap_83[47:40]) +
	 16'sd 28929 * $signed(input_fmap_83[55:48]) +
	 14'sd 6882 * $signed(input_fmap_83[63:56]) +
	 16'sd 19119 * $signed(input_fmap_83[71:64]);

logic signed [31:0] dw_conv_mac_84;
assign dw_conv_mac_84 = 
	 14'sd 4921 * $signed(input_fmap_84[7:0]) +
	 15'sd 16046 * $signed(input_fmap_84[15:8]) +
	 15'sd 12752 * $signed(input_fmap_84[23:16]) +
	 9'sd 139 * $signed(input_fmap_84[31:24]) +
	 16'sd 30022 * $signed(input_fmap_84[39:32]) +
	 14'sd 5217 * $signed(input_fmap_84[47:40]) +
	 16'sd 31112 * $signed(input_fmap_84[55:48]) +
	 15'sd 11552 * $signed(input_fmap_84[63:56]) +
	 16'sd 27381 * $signed(input_fmap_84[71:64]);

logic signed [31:0] dw_conv_mac_85;
assign dw_conv_mac_85 = 
	 13'sd 3301 * $signed(input_fmap_85[7:0]) +
	 16'sd 26096 * $signed(input_fmap_85[15:8]) +
	 12'sd 1573 * $signed(input_fmap_85[23:16]) +
	 16'sd 16573 * $signed(input_fmap_85[31:24]) +
	 15'sd 14509 * $signed(input_fmap_85[39:32]) +
	 16'sd 22810 * $signed(input_fmap_85[47:40]) +
	 13'sd 3254 * $signed(input_fmap_85[55:48]) +
	 12'sd 1078 * $signed(input_fmap_85[63:56]) +
	 16'sd 21591 * $signed(input_fmap_85[71:64]);

logic signed [31:0] dw_conv_mac_86;
assign dw_conv_mac_86 = 
	 16'sd 16713 * $signed(input_fmap_86[7:0]) +
	 16'sd 31432 * $signed(input_fmap_86[15:8]) +
	 16'sd 27632 * $signed(input_fmap_86[23:16]) +
	 14'sd 7340 * $signed(input_fmap_86[31:24]) +
	 14'sd 7379 * $signed(input_fmap_86[39:32]) +
	 16'sd 24208 * $signed(input_fmap_86[47:40]) +
	 16'sd 30869 * $signed(input_fmap_86[55:48]) +
	 13'sd 4094 * $signed(input_fmap_86[63:56]) +
	 15'sd 13503 * $signed(input_fmap_86[71:64]);

logic signed [31:0] dw_conv_mac_87;
assign dw_conv_mac_87 = 
	 15'sd 11562 * $signed(input_fmap_87[7:0]) +
	 16'sd 31064 * $signed(input_fmap_87[15:8]) +
	 16'sd 28858 * $signed(input_fmap_87[23:16]) +
	 15'sd 13101 * $signed(input_fmap_87[31:24]) +
	 16'sd 17454 * $signed(input_fmap_87[39:32]) +
	 15'sd 9774 * $signed(input_fmap_87[47:40]) +
	 16'sd 29927 * $signed(input_fmap_87[55:48]) +
	 15'sd 12937 * $signed(input_fmap_87[63:56]) +
	 16'sd 31777 * $signed(input_fmap_87[71:64]);

logic signed [31:0] dw_conv_mac_88;
assign dw_conv_mac_88 = 
	 16'sd 16715 * $signed(input_fmap_88[7:0]) +
	 13'sd 2187 * $signed(input_fmap_88[15:8]) +
	 15'sd 12216 * $signed(input_fmap_88[23:16]) +
	 14'sd 7169 * $signed(input_fmap_88[31:24]) +
	 12'sd 1771 * $signed(input_fmap_88[39:32]) +
	 15'sd 14898 * $signed(input_fmap_88[47:40]) +
	 15'sd 10942 * $signed(input_fmap_88[55:48]) +
	 12'sd 1079 * $signed(input_fmap_88[63:56]) +
	 14'sd 4719 * $signed(input_fmap_88[71:64]);

logic signed [31:0] dw_conv_mac_89;
assign dw_conv_mac_89 = 
	 16'sd 17988 * $signed(input_fmap_89[7:0]) +
	 15'sd 11755 * $signed(input_fmap_89[15:8]) +
	 16'sd 24700 * $signed(input_fmap_89[23:16]) +
	 16'sd 19832 * $signed(input_fmap_89[31:24]) +
	 16'sd 31302 * $signed(input_fmap_89[39:32]) +
	 15'sd 13893 * $signed(input_fmap_89[47:40]) +
	 16'sd 24285 * $signed(input_fmap_89[55:48]) +
	 16'sd 28512 * $signed(input_fmap_89[63:56]) +
	 16'sd 24002 * $signed(input_fmap_89[71:64]);

logic signed [31:0] dw_conv_mac_90;
assign dw_conv_mac_90 = 
	 16'sd 18993 * $signed(input_fmap_90[7:0]) +
	 15'sd 14662 * $signed(input_fmap_90[15:8]) +
	 15'sd 11324 * $signed(input_fmap_90[23:16]) +
	 14'sd 6762 * $signed(input_fmap_90[31:24]) +
	 14'sd 6599 * $signed(input_fmap_90[39:32]) +
	 16'sd 18781 * $signed(input_fmap_90[47:40]) +
	 16'sd 23353 * $signed(input_fmap_90[55:48]) +
	 15'sd 15304 * $signed(input_fmap_90[63:56]) +
	 15'sd 13539 * $signed(input_fmap_90[71:64]);

logic signed [31:0] dw_conv_mac_91;
assign dw_conv_mac_91 = 
	 16'sd 28076 * $signed(input_fmap_91[7:0]) +
	 15'sd 12674 * $signed(input_fmap_91[15:8]) +
	 16'sd 29705 * $signed(input_fmap_91[23:16]) +
	 15'sd 14475 * $signed(input_fmap_91[31:24]) +
	 15'sd 9897 * $signed(input_fmap_91[39:32]) +
	 11'sd 729 * $signed(input_fmap_91[47:40]) +
	 16'sd 30142 * $signed(input_fmap_91[55:48]) +
	 14'sd 5277 * $signed(input_fmap_91[63:56]) +
	 16'sd 18596 * $signed(input_fmap_91[71:64]);

logic signed [31:0] dw_conv_mac_92;
assign dw_conv_mac_92 = 
	 15'sd 12069 * $signed(input_fmap_92[7:0]) +
	 12'sd 1632 * $signed(input_fmap_92[15:8]) +
	 15'sd 10382 * $signed(input_fmap_92[23:16]) +
	 15'sd 11132 * $signed(input_fmap_92[31:24]) +
	 16'sd 21761 * $signed(input_fmap_92[39:32]) +
	 16'sd 30789 * $signed(input_fmap_92[47:40]) +
	 11'sd 520 * $signed(input_fmap_92[55:48]) +
	 16'sd 16701 * $signed(input_fmap_92[63:56]) +
	 16'sd 27654 * $signed(input_fmap_92[71:64]);

logic signed [31:0] dw_conv_mac_93;
assign dw_conv_mac_93 = 
	 14'sd 6866 * $signed(input_fmap_93[7:0]) +
	 16'sd 25241 * $signed(input_fmap_93[15:8]) +
	 16'sd 17355 * $signed(input_fmap_93[23:16]) +
	 16'sd 29994 * $signed(input_fmap_93[31:24]) +
	 16'sd 30723 * $signed(input_fmap_93[39:32]) +
	 16'sd 24584 * $signed(input_fmap_93[47:40]) +
	 16'sd 16800 * $signed(input_fmap_93[55:48]) +
	 14'sd 4608 * $signed(input_fmap_93[63:56]) +
	 16'sd 32397 * $signed(input_fmap_93[71:64]);

logic signed [31:0] dw_conv_mac_94;
assign dw_conv_mac_94 = 
	 12'sd 1414 * $signed(input_fmap_94[7:0]) +
	 16'sd 27434 * $signed(input_fmap_94[15:8]) +
	 16'sd 26987 * $signed(input_fmap_94[23:16]) +
	 13'sd 3098 * $signed(input_fmap_94[31:24]) +
	 15'sd 11617 * $signed(input_fmap_94[39:32]) +
	 14'sd 7751 * $signed(input_fmap_94[47:40]) +
	 16'sd 18695 * $signed(input_fmap_94[55:48]) +
	 15'sd 11900 * $signed(input_fmap_94[63:56]) +
	 14'sd 6914 * $signed(input_fmap_94[71:64]);

logic signed [31:0] dw_conv_mac_95;
assign dw_conv_mac_95 = 
	 16'sd 29133 * $signed(input_fmap_95[7:0]) +
	 16'sd 30934 * $signed(input_fmap_95[15:8]) +
	 16'sd 25225 * $signed(input_fmap_95[23:16]) +
	 16'sd 21758 * $signed(input_fmap_95[31:24]) +
	 16'sd 25376 * $signed(input_fmap_95[39:32]) +
	 16'sd 25908 * $signed(input_fmap_95[47:40]) +
	 16'sd 30713 * $signed(input_fmap_95[55:48]) +
	 16'sd 28743 * $signed(input_fmap_95[63:56]) +
	 16'sd 26082 * $signed(input_fmap_95[71:64]);

logic signed [31:0] dw_conv_mac_96;
assign dw_conv_mac_96 = 
	 16'sd 25974 * $signed(input_fmap_96[7:0]) +
	 16'sd 18734 * $signed(input_fmap_96[15:8]) +
	 12'sd 1600 * $signed(input_fmap_96[23:16]) +
	 13'sd 2258 * $signed(input_fmap_96[31:24]) +
	 16'sd 22938 * $signed(input_fmap_96[39:32]) +
	 15'sd 15248 * $signed(input_fmap_96[47:40]) +
	 13'sd 2972 * $signed(input_fmap_96[55:48]) +
	 15'sd 8392 * $signed(input_fmap_96[63:56]) +
	 13'sd 4026 * $signed(input_fmap_96[71:64]);

logic signed [31:0] dw_conv_mac_97;
assign dw_conv_mac_97 = 
	 16'sd 19730 * $signed(input_fmap_97[7:0]) +
	 16'sd 30118 * $signed(input_fmap_97[15:8]) +
	 13'sd 2836 * $signed(input_fmap_97[23:16]) +
	 16'sd 22061 * $signed(input_fmap_97[31:24]) +
	 16'sd 31015 * $signed(input_fmap_97[39:32]) +
	 14'sd 4207 * $signed(input_fmap_97[47:40]) +
	 16'sd 17236 * $signed(input_fmap_97[55:48]) +
	 14'sd 4919 * $signed(input_fmap_97[63:56]) +
	 16'sd 18311 * $signed(input_fmap_97[71:64]);

logic signed [31:0] dw_conv_mac_98;
assign dw_conv_mac_98 = 
	 16'sd 31904 * $signed(input_fmap_98[7:0]) +
	 16'sd 19325 * $signed(input_fmap_98[15:8]) +
	 14'sd 5408 * $signed(input_fmap_98[23:16]) +
	 15'sd 15101 * $signed(input_fmap_98[31:24]) +
	 14'sd 5111 * $signed(input_fmap_98[39:32]) +
	 13'sd 3719 * $signed(input_fmap_98[47:40]) +
	 16'sd 20874 * $signed(input_fmap_98[55:48]) +
	 16'sd 27360 * $signed(input_fmap_98[63:56]) +
	 16'sd 31680 * $signed(input_fmap_98[71:64]);

logic signed [31:0] dw_conv_mac_99;
assign dw_conv_mac_99 = 
	 12'sd 1309 * $signed(input_fmap_99[7:0]) +
	 16'sd 26064 * $signed(input_fmap_99[15:8]) +
	 16'sd 22372 * $signed(input_fmap_99[23:16]) +
	 16'sd 17221 * $signed(input_fmap_99[31:24]) +
	 15'sd 12997 * $signed(input_fmap_99[39:32]) +
	 16'sd 24651 * $signed(input_fmap_99[47:40]) +
	 16'sd 22445 * $signed(input_fmap_99[55:48]) +
	 16'sd 19106 * $signed(input_fmap_99[63:56]) +
	 16'sd 31483 * $signed(input_fmap_99[71:64]);

logic signed [31:0] dw_conv_mac_100;
assign dw_conv_mac_100 = 
	 14'sd 5921 * $signed(input_fmap_100[7:0]) +
	 16'sd 16678 * $signed(input_fmap_100[15:8]) +
	 12'sd 1063 * $signed(input_fmap_100[23:16]) +
	 16'sd 16453 * $signed(input_fmap_100[31:24]) +
	 16'sd 23099 * $signed(input_fmap_100[39:32]) +
	 16'sd 27719 * $signed(input_fmap_100[47:40]) +
	 14'sd 4550 * $signed(input_fmap_100[55:48]) +
	 16'sd 27568 * $signed(input_fmap_100[63:56]) +
	 16'sd 22437 * $signed(input_fmap_100[71:64]);

logic signed [31:0] dw_conv_mac_101;
assign dw_conv_mac_101 = 
	 16'sd 24676 * $signed(input_fmap_101[7:0]) +
	 16'sd 24880 * $signed(input_fmap_101[15:8]) +
	 16'sd 26979 * $signed(input_fmap_101[23:16]) +
	 15'sd 14649 * $signed(input_fmap_101[31:24]) +
	 10'sd 403 * $signed(input_fmap_101[39:32]) +
	 16'sd 23098 * $signed(input_fmap_101[47:40]) +
	 15'sd 10782 * $signed(input_fmap_101[55:48]) +
	 15'sd 14463 * $signed(input_fmap_101[63:56]) +
	 14'sd 4574 * $signed(input_fmap_101[71:64]);

logic signed [31:0] dw_conv_mac_102;
assign dw_conv_mac_102 = 
	 15'sd 13053 * $signed(input_fmap_102[7:0]) +
	 13'sd 2270 * $signed(input_fmap_102[15:8]) +
	 16'sd 29036 * $signed(input_fmap_102[23:16]) +
	 15'sd 15766 * $signed(input_fmap_102[31:24]) +
	 14'sd 4434 * $signed(input_fmap_102[39:32]) +
	 16'sd 32172 * $signed(input_fmap_102[47:40]) +
	 14'sd 5054 * $signed(input_fmap_102[55:48]) +
	 16'sd 20165 * $signed(input_fmap_102[63:56]) +
	 16'sd 29962 * $signed(input_fmap_102[71:64]);

logic signed [31:0] dw_conv_mac_103;
assign dw_conv_mac_103 = 
	 16'sd 23555 * $signed(input_fmap_103[7:0]) +
	 15'sd 12330 * $signed(input_fmap_103[15:8]) +
	 16'sd 30029 * $signed(input_fmap_103[23:16]) +
	 11'sd 733 * $signed(input_fmap_103[31:24]) +
	 16'sd 32345 * $signed(input_fmap_103[39:32]) +
	 16'sd 17442 * $signed(input_fmap_103[47:40]) +
	 14'sd 6451 * $signed(input_fmap_103[55:48]) +
	 13'sd 3635 * $signed(input_fmap_103[63:56]) +
	 16'sd 17810 * $signed(input_fmap_103[71:64]);

logic signed [31:0] dw_conv_mac_104;
assign dw_conv_mac_104 = 
	 15'sd 11592 * $signed(input_fmap_104[7:0]) +
	 16'sd 21253 * $signed(input_fmap_104[15:8]) +
	 16'sd 21276 * $signed(input_fmap_104[23:16]) +
	 14'sd 4838 * $signed(input_fmap_104[31:24]) +
	 11'sd 944 * $signed(input_fmap_104[39:32]) +
	 14'sd 4825 * $signed(input_fmap_104[47:40]) +
	 16'sd 26361 * $signed(input_fmap_104[55:48]) +
	 16'sd 28692 * $signed(input_fmap_104[63:56]) +
	 16'sd 25436 * $signed(input_fmap_104[71:64]);

logic signed [31:0] dw_conv_mac_105;
assign dw_conv_mac_105 = 
	 16'sd 23520 * $signed(input_fmap_105[7:0]) +
	 16'sd 17099 * $signed(input_fmap_105[15:8]) +
	 16'sd 29502 * $signed(input_fmap_105[23:16]) +
	 11'sd 601 * $signed(input_fmap_105[31:24]) +
	 11'sd 681 * $signed(input_fmap_105[39:32]) +
	 13'sd 2965 * $signed(input_fmap_105[47:40]) +
	 16'sd 27571 * $signed(input_fmap_105[55:48]) +
	 14'sd 6357 * $signed(input_fmap_105[63:56]) +
	 16'sd 17609 * $signed(input_fmap_105[71:64]);

logic signed [31:0] dw_conv_mac_106;
assign dw_conv_mac_106 = 
	 14'sd 6329 * $signed(input_fmap_106[7:0]) +
	 16'sd 28714 * $signed(input_fmap_106[15:8]) +
	 16'sd 19402 * $signed(input_fmap_106[23:16]) +
	 16'sd 18026 * $signed(input_fmap_106[31:24]) +
	 16'sd 31834 * $signed(input_fmap_106[39:32]) +
	 14'sd 4774 * $signed(input_fmap_106[47:40]) +
	 15'sd 8325 * $signed(input_fmap_106[55:48]) +
	 16'sd 28828 * $signed(input_fmap_106[63:56]) +
	 16'sd 19466 * $signed(input_fmap_106[71:64]);

logic signed [31:0] dw_conv_mac_107;
assign dw_conv_mac_107 = 
	 13'sd 2925 * $signed(input_fmap_107[7:0]) +
	 14'sd 6537 * $signed(input_fmap_107[15:8]) +
	 13'sd 3316 * $signed(input_fmap_107[23:16]) +
	 15'sd 11643 * $signed(input_fmap_107[31:24]) +
	 15'sd 12903 * $signed(input_fmap_107[39:32]) +
	 15'sd 12409 * $signed(input_fmap_107[47:40]) +
	 16'sd 20270 * $signed(input_fmap_107[55:48]) +
	 16'sd 29354 * $signed(input_fmap_107[63:56]) +
	 14'sd 5392 * $signed(input_fmap_107[71:64]);

logic signed [31:0] dw_conv_mac_108;
assign dw_conv_mac_108 = 
	 13'sd 4009 * $signed(input_fmap_108[7:0]) +
	 15'sd 15248 * $signed(input_fmap_108[15:8]) +
	 16'sd 22736 * $signed(input_fmap_108[23:16]) +
	 16'sd 26264 * $signed(input_fmap_108[31:24]) +
	 16'sd 28321 * $signed(input_fmap_108[39:32]) +
	 15'sd 14589 * $signed(input_fmap_108[47:40]) +
	 16'sd 23092 * $signed(input_fmap_108[55:48]) +
	 15'sd 16143 * $signed(input_fmap_108[63:56]) +
	 16'sd 30172 * $signed(input_fmap_108[71:64]);

logic signed [31:0] dw_conv_mac_109;
assign dw_conv_mac_109 = 
	 15'sd 14526 * $signed(input_fmap_109[7:0]) +
	 15'sd 16302 * $signed(input_fmap_109[15:8]) +
	 16'sd 17122 * $signed(input_fmap_109[23:16]) +
	 16'sd 24518 * $signed(input_fmap_109[31:24]) +
	 15'sd 11439 * $signed(input_fmap_109[39:32]) +
	 15'sd 13231 * $signed(input_fmap_109[47:40]) +
	 16'sd 27492 * $signed(input_fmap_109[55:48]) +
	 14'sd 5878 * $signed(input_fmap_109[63:56]) +
	 16'sd 32616 * $signed(input_fmap_109[71:64]);

logic signed [31:0] dw_conv_mac_110;
assign dw_conv_mac_110 = 
	 14'sd 7735 * $signed(input_fmap_110[7:0]) +
	 16'sd 21573 * $signed(input_fmap_110[15:8]) +
	 16'sd 26856 * $signed(input_fmap_110[23:16]) +
	 15'sd 10318 * $signed(input_fmap_110[31:24]) +
	 14'sd 7850 * $signed(input_fmap_110[39:32]) +
	 16'sd 21426 * $signed(input_fmap_110[47:40]) +
	 10'sd 456 * $signed(input_fmap_110[55:48]) +
	 15'sd 15190 * $signed(input_fmap_110[63:56]) +
	 16'sd 31498 * $signed(input_fmap_110[71:64]);

logic signed [31:0] dw_conv_mac_111;
assign dw_conv_mac_111 = 
	 16'sd 24461 * $signed(input_fmap_111[7:0]) +
	 16'sd 16797 * $signed(input_fmap_111[15:8]) +
	 15'sd 12341 * $signed(input_fmap_111[23:16]) +
	 16'sd 27830 * $signed(input_fmap_111[31:24]) +
	 13'sd 2378 * $signed(input_fmap_111[39:32]) +
	 16'sd 24407 * $signed(input_fmap_111[47:40]) +
	 13'sd 2170 * $signed(input_fmap_111[55:48]) +
	 16'sd 28081 * $signed(input_fmap_111[63:56]) +
	 16'sd 32067 * $signed(input_fmap_111[71:64]);

logic signed [31:0] dw_conv_mac_112;
assign dw_conv_mac_112 = 
	 14'sd 4720 * $signed(input_fmap_112[7:0]) +
	 16'sd 20382 * $signed(input_fmap_112[15:8]) +
	 12'sd 1969 * $signed(input_fmap_112[23:16]) +
	 16'sd 22647 * $signed(input_fmap_112[31:24]) +
	 16'sd 30719 * $signed(input_fmap_112[39:32]) +
	 10'sd 262 * $signed(input_fmap_112[47:40]) +
	 16'sd 28374 * $signed(input_fmap_112[55:48]) +
	 16'sd 30276 * $signed(input_fmap_112[63:56]) +
	 15'sd 13529 * $signed(input_fmap_112[71:64]);

logic signed [31:0] dw_conv_mac_113;
assign dw_conv_mac_113 = 
	 16'sd 29197 * $signed(input_fmap_113[7:0]) +
	 16'sd 23887 * $signed(input_fmap_113[15:8]) +
	 16'sd 32592 * $signed(input_fmap_113[23:16]) +
	 15'sd 9236 * $signed(input_fmap_113[31:24]) +
	 16'sd 25403 * $signed(input_fmap_113[39:32]) +
	 16'sd 30822 * $signed(input_fmap_113[47:40]) +
	 16'sd 17055 * $signed(input_fmap_113[55:48]) +
	 16'sd 20839 * $signed(input_fmap_113[63:56]) +
	 15'sd 16230 * $signed(input_fmap_113[71:64]);

logic signed [31:0] dw_conv_mac_114;
assign dw_conv_mac_114 = 
	 14'sd 6769 * $signed(input_fmap_114[7:0]) +
	 14'sd 7226 * $signed(input_fmap_114[15:8]) +
	 15'sd 11878 * $signed(input_fmap_114[23:16]) +
	 13'sd 2195 * $signed(input_fmap_114[31:24]) +
	 16'sd 25097 * $signed(input_fmap_114[39:32]) +
	 16'sd 18565 * $signed(input_fmap_114[47:40]) +
	 15'sd 9993 * $signed(input_fmap_114[55:48]) +
	 16'sd 30419 * $signed(input_fmap_114[63:56]) +
	 14'sd 5889 * $signed(input_fmap_114[71:64]);

logic signed [31:0] dw_conv_mac_115;
assign dw_conv_mac_115 = 
	 15'sd 13146 * $signed(input_fmap_115[7:0]) +
	 14'sd 6720 * $signed(input_fmap_115[15:8]) +
	 14'sd 7942 * $signed(input_fmap_115[23:16]) +
	 14'sd 8061 * $signed(input_fmap_115[31:24]) +
	 15'sd 12506 * $signed(input_fmap_115[39:32]) +
	 16'sd 23305 * $signed(input_fmap_115[47:40]) +
	 15'sd 11896 * $signed(input_fmap_115[55:48]) +
	 16'sd 24420 * $signed(input_fmap_115[63:56]) +
	 16'sd 25227 * $signed(input_fmap_115[71:64]);

logic signed [31:0] dw_conv_mac_116;
assign dw_conv_mac_116 = 
	 16'sd 28418 * $signed(input_fmap_116[7:0]) +
	 16'sd 24564 * $signed(input_fmap_116[15:8]) +
	 15'sd 11793 * $signed(input_fmap_116[23:16]) +
	 15'sd 15528 * $signed(input_fmap_116[31:24]) +
	 16'sd 24250 * $signed(input_fmap_116[39:32]) +
	 16'sd 30852 * $signed(input_fmap_116[47:40]) +
	 16'sd 17530 * $signed(input_fmap_116[55:48]) +
	 16'sd 20743 * $signed(input_fmap_116[63:56]) +
	 15'sd 10119 * $signed(input_fmap_116[71:64]);

logic signed [31:0] dw_conv_mac_117;
assign dw_conv_mac_117 = 
	 16'sd 22101 * $signed(input_fmap_117[7:0]) +
	 13'sd 3538 * $signed(input_fmap_117[15:8]) +
	 16'sd 23226 * $signed(input_fmap_117[23:16]) +
	 15'sd 14814 * $signed(input_fmap_117[31:24]) +
	 16'sd 19337 * $signed(input_fmap_117[39:32]) +
	 16'sd 22062 * $signed(input_fmap_117[47:40]) +
	 16'sd 19056 * $signed(input_fmap_117[55:48]) +
	 16'sd 31896 * $signed(input_fmap_117[63:56]) +
	 14'sd 6955 * $signed(input_fmap_117[71:64]);

logic signed [31:0] dw_conv_mac_118;
assign dw_conv_mac_118 = 
	 16'sd 20670 * $signed(input_fmap_118[7:0]) +
	 16'sd 28551 * $signed(input_fmap_118[15:8]) +
	 15'sd 15976 * $signed(input_fmap_118[23:16]) +
	 15'sd 13321 * $signed(input_fmap_118[31:24]) +
	 14'sd 5381 * $signed(input_fmap_118[39:32]) +
	 16'sd 30831 * $signed(input_fmap_118[47:40]) +
	 16'sd 17780 * $signed(input_fmap_118[55:48]) +
	 14'sd 5667 * $signed(input_fmap_118[63:56]) +
	 13'sd 3158 * $signed(input_fmap_118[71:64]);

logic signed [31:0] dw_conv_mac_119;
assign dw_conv_mac_119 = 
	 16'sd 23883 * $signed(input_fmap_119[7:0]) +
	 16'sd 30914 * $signed(input_fmap_119[15:8]) +
	 16'sd 30563 * $signed(input_fmap_119[23:16]) +
	 15'sd 12022 * $signed(input_fmap_119[31:24]) +
	 15'sd 13497 * $signed(input_fmap_119[39:32]) +
	 16'sd 20107 * $signed(input_fmap_119[47:40]) +
	 16'sd 27911 * $signed(input_fmap_119[55:48]) +
	 15'sd 13149 * $signed(input_fmap_119[63:56]) +
	 16'sd 30154 * $signed(input_fmap_119[71:64]);

logic signed [31:0] dw_conv_mac_120;
assign dw_conv_mac_120 = 
	 16'sd 27256 * $signed(input_fmap_120[7:0]) +
	 16'sd 16818 * $signed(input_fmap_120[15:8]) +
	 16'sd 17157 * $signed(input_fmap_120[23:16]) +
	 16'sd 28640 * $signed(input_fmap_120[31:24]) +
	 14'sd 4364 * $signed(input_fmap_120[39:32]) +
	 16'sd 32257 * $signed(input_fmap_120[47:40]) +
	 15'sd 14417 * $signed(input_fmap_120[55:48]) +
	 16'sd 22416 * $signed(input_fmap_120[63:56]) +
	 15'sd 12158 * $signed(input_fmap_120[71:64]);

logic signed [31:0] dw_conv_mac_121;
assign dw_conv_mac_121 = 
	 15'sd 11050 * $signed(input_fmap_121[7:0]) +
	 16'sd 27810 * $signed(input_fmap_121[15:8]) +
	 16'sd 19892 * $signed(input_fmap_121[23:16]) +
	 16'sd 24667 * $signed(input_fmap_121[31:24]) +
	 15'sd 11627 * $signed(input_fmap_121[39:32]) +
	 13'sd 2892 * $signed(input_fmap_121[47:40]) +
	 15'sd 11026 * $signed(input_fmap_121[55:48]) +
	 13'sd 3866 * $signed(input_fmap_121[63:56]) +
	 16'sd 19612 * $signed(input_fmap_121[71:64]);

logic signed [31:0] dw_conv_mac_122;
assign dw_conv_mac_122 = 
	 16'sd 29316 * $signed(input_fmap_122[7:0]) +
	 16'sd 27369 * $signed(input_fmap_122[15:8]) +
	 16'sd 18835 * $signed(input_fmap_122[23:16]) +
	 14'sd 5973 * $signed(input_fmap_122[31:24]) +
	 15'sd 12083 * $signed(input_fmap_122[39:32]) +
	 14'sd 4584 * $signed(input_fmap_122[47:40]) +
	 16'sd 26367 * $signed(input_fmap_122[55:48]) +
	 14'sd 6480 * $signed(input_fmap_122[63:56]) +
	 15'sd 13634 * $signed(input_fmap_122[71:64]);

logic signed [31:0] dw_conv_mac_123;
assign dw_conv_mac_123 = 
	 16'sd 19335 * $signed(input_fmap_123[7:0]) +
	 16'sd 28450 * $signed(input_fmap_123[15:8]) +
	 16'sd 21481 * $signed(input_fmap_123[23:16]) +
	 16'sd 27678 * $signed(input_fmap_123[31:24]) +
	 16'sd 18187 * $signed(input_fmap_123[39:32]) +
	 16'sd 32722 * $signed(input_fmap_123[47:40]) +
	 15'sd 9153 * $signed(input_fmap_123[55:48]) +
	 13'sd 3425 * $signed(input_fmap_123[63:56]) +
	 14'sd 4223 * $signed(input_fmap_123[71:64]);

logic signed [31:0] dw_conv_mac_124;
assign dw_conv_mac_124 = 
	 15'sd 8319 * $signed(input_fmap_124[7:0]) +
	 14'sd 7755 * $signed(input_fmap_124[15:8]) +
	 11'sd 1002 * $signed(input_fmap_124[23:16]) +
	 16'sd 24823 * $signed(input_fmap_124[31:24]) +
	 14'sd 6853 * $signed(input_fmap_124[39:32]) +
	 16'sd 18080 * $signed(input_fmap_124[47:40]) +
	 16'sd 27124 * $signed(input_fmap_124[55:48]) +
	 16'sd 18256 * $signed(input_fmap_124[63:56]) +
	 16'sd 27876 * $signed(input_fmap_124[71:64]);

logic signed [31:0] dw_conv_mac_125;
assign dw_conv_mac_125 = 
	 16'sd 31767 * $signed(input_fmap_125[7:0]) +
	 16'sd 31784 * $signed(input_fmap_125[15:8]) +
	 15'sd 10325 * $signed(input_fmap_125[23:16]) +
	 16'sd 25304 * $signed(input_fmap_125[31:24]) +
	 16'sd 24581 * $signed(input_fmap_125[39:32]) +
	 15'sd 15236 * $signed(input_fmap_125[47:40]) +
	 16'sd 26605 * $signed(input_fmap_125[55:48]) +
	 14'sd 5412 * $signed(input_fmap_125[63:56]) +
	 13'sd 2875 * $signed(input_fmap_125[71:64]);

logic signed [31:0] dw_conv_mac_126;
assign dw_conv_mac_126 = 
	 16'sd 29299 * $signed(input_fmap_126[7:0]) +
	 16'sd 19151 * $signed(input_fmap_126[15:8]) +
	 16'sd 26949 * $signed(input_fmap_126[23:16]) +
	 14'sd 6108 * $signed(input_fmap_126[31:24]) +
	 15'sd 8794 * $signed(input_fmap_126[39:32]) +
	 15'sd 12041 * $signed(input_fmap_126[47:40]) +
	 15'sd 10920 * $signed(input_fmap_126[55:48]) +
	 15'sd 12135 * $signed(input_fmap_126[63:56]) +
	 15'sd 11384 * $signed(input_fmap_126[71:64]);

logic signed [31:0] dw_conv_mac_127;
assign dw_conv_mac_127 = 
	 15'sd 11538 * $signed(input_fmap_127[7:0]) +
	 16'sd 26770 * $signed(input_fmap_127[15:8]) +
	 13'sd 2692 * $signed(input_fmap_127[23:16]) +
	 16'sd 25271 * $signed(input_fmap_127[31:24]) +
	 16'sd 23802 * $signed(input_fmap_127[39:32]) +
	 15'sd 16159 * $signed(input_fmap_127[47:40]) +
	 16'sd 17371 * $signed(input_fmap_127[55:48]) +
	 16'sd 21991 * $signed(input_fmap_127[63:56]) +
	 14'sd 7272 * $signed(input_fmap_127[71:64]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 14'd4915;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 16'd22577;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 16'd26933;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 16'd26490;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 16'd19138;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 16'd27085;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 15'd15864;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 12'd1922;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 16'd18709;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 13'd3600;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 15'd10593;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 16'd29704;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 14'd5183;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 16'd20290;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 16'd32563;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 15'd9612;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 12'd1058;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 16'd22032;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18 + 15'd14138;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 16'd22323;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 16'd31949;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21 + 15'd15612;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22 + 15'd9864;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 16'd16844;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24 + 16'd26454;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25 + 13'd3370;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 14'd6756;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 16'd30841;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28 + 16'd21413;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 15'd11049;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 16'd19884;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 16'd20768;
logic [31:0] bias_add_32;
assign bias_add_32 = dw_conv_mac_32 + 16'd27062;
logic [31:0] bias_add_33;
assign bias_add_33 = dw_conv_mac_33 + 13'd2360;
logic [31:0] bias_add_34;
assign bias_add_34 = dw_conv_mac_34 + 16'd19081;
logic [31:0] bias_add_35;
assign bias_add_35 = dw_conv_mac_35 + 15'd14395;
logic [31:0] bias_add_36;
assign bias_add_36 = dw_conv_mac_36 + 16'd16947;
logic [31:0] bias_add_37;
assign bias_add_37 = dw_conv_mac_37 + 13'd2813;
logic [31:0] bias_add_38;
assign bias_add_38 = dw_conv_mac_38 + 16'd31469;
logic [31:0] bias_add_39;
assign bias_add_39 = dw_conv_mac_39 + 16'd32307;
logic [31:0] bias_add_40;
assign bias_add_40 = dw_conv_mac_40 + 16'd24869;
logic [31:0] bias_add_41;
assign bias_add_41 = dw_conv_mac_41 + 15'd13405;
logic [31:0] bias_add_42;
assign bias_add_42 = dw_conv_mac_42 + 15'd12490;
logic [31:0] bias_add_43;
assign bias_add_43 = dw_conv_mac_43 + 16'd30606;
logic [31:0] bias_add_44;
assign bias_add_44 = dw_conv_mac_44 + 15'd14763;
logic [31:0] bias_add_45;
assign bias_add_45 = dw_conv_mac_45 + 15'd13627;
logic [31:0] bias_add_46;
assign bias_add_46 = dw_conv_mac_46 + 16'd30895;
logic [31:0] bias_add_47;
assign bias_add_47 = dw_conv_mac_47 + 16'd26131;
logic [31:0] bias_add_48;
assign bias_add_48 = dw_conv_mac_48 + 14'd4264;
logic [31:0] bias_add_49;
assign bias_add_49 = dw_conv_mac_49 + 14'd7821;
logic [31:0] bias_add_50;
assign bias_add_50 = dw_conv_mac_50 + 13'd2145;
logic [31:0] bias_add_51;
assign bias_add_51 = dw_conv_mac_51 + 15'd15776;
logic [31:0] bias_add_52;
assign bias_add_52 = dw_conv_mac_52 + 15'd12531;
logic [31:0] bias_add_53;
assign bias_add_53 = dw_conv_mac_53 + 16'd28262;
logic [31:0] bias_add_54;
assign bias_add_54 = dw_conv_mac_54 + 16'd26369;
logic [31:0] bias_add_55;
assign bias_add_55 = dw_conv_mac_55 + 16'd25691;
logic [31:0] bias_add_56;
assign bias_add_56 = dw_conv_mac_56 + 11'd856;
logic [31:0] bias_add_57;
assign bias_add_57 = dw_conv_mac_57 + 16'd26823;
logic [31:0] bias_add_58;
assign bias_add_58 = dw_conv_mac_58 + 16'd22480;
logic [31:0] bias_add_59;
assign bias_add_59 = dw_conv_mac_59 + 14'd6049;
logic [31:0] bias_add_60;
assign bias_add_60 = dw_conv_mac_60 + 16'd32110;
logic [31:0] bias_add_61;
assign bias_add_61 = dw_conv_mac_61 + 14'd4292;
logic [31:0] bias_add_62;
assign bias_add_62 = dw_conv_mac_62 + 15'd13697;
logic [31:0] bias_add_63;
assign bias_add_63 = dw_conv_mac_63 + 15'd8785;
logic [31:0] bias_add_64;
assign bias_add_64 = dw_conv_mac_64 + 15'd11987;
logic [31:0] bias_add_65;
assign bias_add_65 = dw_conv_mac_65 + 16'd18093;
logic [31:0] bias_add_66;
assign bias_add_66 = dw_conv_mac_66 + 15'd12073;
logic [31:0] bias_add_67;
assign bias_add_67 = dw_conv_mac_67 + 16'd20016;
logic [31:0] bias_add_68;
assign bias_add_68 = dw_conv_mac_68 + 14'd5767;
logic [31:0] bias_add_69;
assign bias_add_69 = dw_conv_mac_69 + 14'd6061;
logic [31:0] bias_add_70;
assign bias_add_70 = dw_conv_mac_70 + 15'd13898;
logic [31:0] bias_add_71;
assign bias_add_71 = dw_conv_mac_71 + 15'd8550;
logic [31:0] bias_add_72;
assign bias_add_72 = dw_conv_mac_72 + 14'd4371;
logic [31:0] bias_add_73;
assign bias_add_73 = dw_conv_mac_73 + 12'd1487;
logic [31:0] bias_add_74;
assign bias_add_74 = dw_conv_mac_74 + 14'd4475;
logic [31:0] bias_add_75;
assign bias_add_75 = dw_conv_mac_75 + 16'd20559;
logic [31:0] bias_add_76;
assign bias_add_76 = dw_conv_mac_76 + 13'd2297;
logic [31:0] bias_add_77;
assign bias_add_77 = dw_conv_mac_77 + 16'd30294;
logic [31:0] bias_add_78;
assign bias_add_78 = dw_conv_mac_78 + 15'd13332;
logic [31:0] bias_add_79;
assign bias_add_79 = dw_conv_mac_79 + 16'd19132;
logic [31:0] bias_add_80;
assign bias_add_80 = dw_conv_mac_80 + 16'd18348;
logic [31:0] bias_add_81;
assign bias_add_81 = dw_conv_mac_81 + 15'd13214;
logic [31:0] bias_add_82;
assign bias_add_82 = dw_conv_mac_82 + 14'd4133;
logic [31:0] bias_add_83;
assign bias_add_83 = dw_conv_mac_83 + 16'd18721;
logic [31:0] bias_add_84;
assign bias_add_84 = dw_conv_mac_84 + 14'd4917;
logic [31:0] bias_add_85;
assign bias_add_85 = dw_conv_mac_85 + 16'd24504;
logic [31:0] bias_add_86;
assign bias_add_86 = dw_conv_mac_86 + 16'd23457;
logic [31:0] bias_add_87;
assign bias_add_87 = dw_conv_mac_87 + 15'd14171;
logic [31:0] bias_add_88;
assign bias_add_88 = dw_conv_mac_88 + 16'd31794;
logic [31:0] bias_add_89;
assign bias_add_89 = dw_conv_mac_89 + 13'd2823;
logic [31:0] bias_add_90;
assign bias_add_90 = dw_conv_mac_90 + 15'd10694;
logic [31:0] bias_add_91;
assign bias_add_91 = dw_conv_mac_91 + 16'd20540;
logic [31:0] bias_add_92;
assign bias_add_92 = dw_conv_mac_92 + 16'd19190;
logic [31:0] bias_add_93;
assign bias_add_93 = dw_conv_mac_93 + 16'd18895;
logic [31:0] bias_add_94;
assign bias_add_94 = dw_conv_mac_94 + 16'd19683;
logic [31:0] bias_add_95;
assign bias_add_95 = dw_conv_mac_95 + 16'd24804;
logic [31:0] bias_add_96;
assign bias_add_96 = dw_conv_mac_96 + 15'd14104;
logic [31:0] bias_add_97;
assign bias_add_97 = dw_conv_mac_97 + 16'd25730;
logic [31:0] bias_add_98;
assign bias_add_98 = dw_conv_mac_98 + 13'd2294;
logic [31:0] bias_add_99;
assign bias_add_99 = dw_conv_mac_99 + 16'd18184;
logic [31:0] bias_add_100;
assign bias_add_100 = dw_conv_mac_100 + 16'd24963;
logic [31:0] bias_add_101;
assign bias_add_101 = dw_conv_mac_101 + 14'd6875;
logic [31:0] bias_add_102;
assign bias_add_102 = dw_conv_mac_102 + 16'd26935;
logic [31:0] bias_add_103;
assign bias_add_103 = dw_conv_mac_103 + 12'd1447;
logic [31:0] bias_add_104;
assign bias_add_104 = dw_conv_mac_104 + 16'd30623;
logic [31:0] bias_add_105;
assign bias_add_105 = dw_conv_mac_105 + 13'd3817;
logic [31:0] bias_add_106;
assign bias_add_106 = dw_conv_mac_106 + 16'd23130;
logic [31:0] bias_add_107;
assign bias_add_107 = dw_conv_mac_107 + 16'd29276;
logic [31:0] bias_add_108;
assign bias_add_108 = dw_conv_mac_108 + 16'd22750;
logic [31:0] bias_add_109;
assign bias_add_109 = dw_conv_mac_109 + 14'd7717;
logic [31:0] bias_add_110;
assign bias_add_110 = dw_conv_mac_110 + 16'd32698;
logic [31:0] bias_add_111;
assign bias_add_111 = dw_conv_mac_111 + 14'd6047;
logic [31:0] bias_add_112;
assign bias_add_112 = dw_conv_mac_112 + 16'd18326;
logic [31:0] bias_add_113;
assign bias_add_113 = dw_conv_mac_113 + 16'd25387;
logic [31:0] bias_add_114;
assign bias_add_114 = dw_conv_mac_114 + 15'd8368;
logic [31:0] bias_add_115;
assign bias_add_115 = dw_conv_mac_115 + 16'd30525;
logic [31:0] bias_add_116;
assign bias_add_116 = dw_conv_mac_116 + 13'd3751;
logic [31:0] bias_add_117;
assign bias_add_117 = dw_conv_mac_117 + 16'd29295;
logic [31:0] bias_add_118;
assign bias_add_118 = dw_conv_mac_118 + 16'd31618;
logic [31:0] bias_add_119;
assign bias_add_119 = dw_conv_mac_119 + 16'd26427;
logic [31:0] bias_add_120;
assign bias_add_120 = dw_conv_mac_120 + 16'd31316;
logic [31:0] bias_add_121;
assign bias_add_121 = dw_conv_mac_121 + 16'd17366;
logic [31:0] bias_add_122;
assign bias_add_122 = dw_conv_mac_122 + 15'd14297;
logic [31:0] bias_add_123;
assign bias_add_123 = dw_conv_mac_123 + 14'd6309;
logic [31:0] bias_add_124;
assign bias_add_124 = dw_conv_mac_124 + 15'd12649;
logic [31:0] bias_add_125;
assign bias_add_125 = dw_conv_mac_125 + 16'd22170;
logic [31:0] bias_add_126;
assign bias_add_126 = dw_conv_mac_126 + 16'd22554;
logic [31:0] bias_add_127;
assign bias_add_127 = dw_conv_mac_127 + 15'd10382;

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
logic [7:0] relu_64;
assign relu_64[7:0] = (bias_add_64[31]==0) ? ((bias_add_64<3'd6) ? {{bias_add_64[31],bias_add_64[21:15]}} :'d6) : '0;
logic [7:0] relu_65;
assign relu_65[7:0] = (bias_add_65[31]==0) ? ((bias_add_65<3'd6) ? {{bias_add_65[31],bias_add_65[21:15]}} :'d6) : '0;
logic [7:0] relu_66;
assign relu_66[7:0] = (bias_add_66[31]==0) ? ((bias_add_66<3'd6) ? {{bias_add_66[31],bias_add_66[21:15]}} :'d6) : '0;
logic [7:0] relu_67;
assign relu_67[7:0] = (bias_add_67[31]==0) ? ((bias_add_67<3'd6) ? {{bias_add_67[31],bias_add_67[21:15]}} :'d6) : '0;
logic [7:0] relu_68;
assign relu_68[7:0] = (bias_add_68[31]==0) ? ((bias_add_68<3'd6) ? {{bias_add_68[31],bias_add_68[21:15]}} :'d6) : '0;
logic [7:0] relu_69;
assign relu_69[7:0] = (bias_add_69[31]==0) ? ((bias_add_69<3'd6) ? {{bias_add_69[31],bias_add_69[21:15]}} :'d6) : '0;
logic [7:0] relu_70;
assign relu_70[7:0] = (bias_add_70[31]==0) ? ((bias_add_70<3'd6) ? {{bias_add_70[31],bias_add_70[21:15]}} :'d6) : '0;
logic [7:0] relu_71;
assign relu_71[7:0] = (bias_add_71[31]==0) ? ((bias_add_71<3'd6) ? {{bias_add_71[31],bias_add_71[21:15]}} :'d6) : '0;
logic [7:0] relu_72;
assign relu_72[7:0] = (bias_add_72[31]==0) ? ((bias_add_72<3'd6) ? {{bias_add_72[31],bias_add_72[21:15]}} :'d6) : '0;
logic [7:0] relu_73;
assign relu_73[7:0] = (bias_add_73[31]==0) ? ((bias_add_73<3'd6) ? {{bias_add_73[31],bias_add_73[21:15]}} :'d6) : '0;
logic [7:0] relu_74;
assign relu_74[7:0] = (bias_add_74[31]==0) ? ((bias_add_74<3'd6) ? {{bias_add_74[31],bias_add_74[21:15]}} :'d6) : '0;
logic [7:0] relu_75;
assign relu_75[7:0] = (bias_add_75[31]==0) ? ((bias_add_75<3'd6) ? {{bias_add_75[31],bias_add_75[21:15]}} :'d6) : '0;
logic [7:0] relu_76;
assign relu_76[7:0] = (bias_add_76[31]==0) ? ((bias_add_76<3'd6) ? {{bias_add_76[31],bias_add_76[21:15]}} :'d6) : '0;
logic [7:0] relu_77;
assign relu_77[7:0] = (bias_add_77[31]==0) ? ((bias_add_77<3'd6) ? {{bias_add_77[31],bias_add_77[21:15]}} :'d6) : '0;
logic [7:0] relu_78;
assign relu_78[7:0] = (bias_add_78[31]==0) ? ((bias_add_78<3'd6) ? {{bias_add_78[31],bias_add_78[21:15]}} :'d6) : '0;
logic [7:0] relu_79;
assign relu_79[7:0] = (bias_add_79[31]==0) ? ((bias_add_79<3'd6) ? {{bias_add_79[31],bias_add_79[21:15]}} :'d6) : '0;
logic [7:0] relu_80;
assign relu_80[7:0] = (bias_add_80[31]==0) ? ((bias_add_80<3'd6) ? {{bias_add_80[31],bias_add_80[21:15]}} :'d6) : '0;
logic [7:0] relu_81;
assign relu_81[7:0] = (bias_add_81[31]==0) ? ((bias_add_81<3'd6) ? {{bias_add_81[31],bias_add_81[21:15]}} :'d6) : '0;
logic [7:0] relu_82;
assign relu_82[7:0] = (bias_add_82[31]==0) ? ((bias_add_82<3'd6) ? {{bias_add_82[31],bias_add_82[21:15]}} :'d6) : '0;
logic [7:0] relu_83;
assign relu_83[7:0] = (bias_add_83[31]==0) ? ((bias_add_83<3'd6) ? {{bias_add_83[31],bias_add_83[21:15]}} :'d6) : '0;
logic [7:0] relu_84;
assign relu_84[7:0] = (bias_add_84[31]==0) ? ((bias_add_84<3'd6) ? {{bias_add_84[31],bias_add_84[21:15]}} :'d6) : '0;
logic [7:0] relu_85;
assign relu_85[7:0] = (bias_add_85[31]==0) ? ((bias_add_85<3'd6) ? {{bias_add_85[31],bias_add_85[21:15]}} :'d6) : '0;
logic [7:0] relu_86;
assign relu_86[7:0] = (bias_add_86[31]==0) ? ((bias_add_86<3'd6) ? {{bias_add_86[31],bias_add_86[21:15]}} :'d6) : '0;
logic [7:0] relu_87;
assign relu_87[7:0] = (bias_add_87[31]==0) ? ((bias_add_87<3'd6) ? {{bias_add_87[31],bias_add_87[21:15]}} :'d6) : '0;
logic [7:0] relu_88;
assign relu_88[7:0] = (bias_add_88[31]==0) ? ((bias_add_88<3'd6) ? {{bias_add_88[31],bias_add_88[21:15]}} :'d6) : '0;
logic [7:0] relu_89;
assign relu_89[7:0] = (bias_add_89[31]==0) ? ((bias_add_89<3'd6) ? {{bias_add_89[31],bias_add_89[21:15]}} :'d6) : '0;
logic [7:0] relu_90;
assign relu_90[7:0] = (bias_add_90[31]==0) ? ((bias_add_90<3'd6) ? {{bias_add_90[31],bias_add_90[21:15]}} :'d6) : '0;
logic [7:0] relu_91;
assign relu_91[7:0] = (bias_add_91[31]==0) ? ((bias_add_91<3'd6) ? {{bias_add_91[31],bias_add_91[21:15]}} :'d6) : '0;
logic [7:0] relu_92;
assign relu_92[7:0] = (bias_add_92[31]==0) ? ((bias_add_92<3'd6) ? {{bias_add_92[31],bias_add_92[21:15]}} :'d6) : '0;
logic [7:0] relu_93;
assign relu_93[7:0] = (bias_add_93[31]==0) ? ((bias_add_93<3'd6) ? {{bias_add_93[31],bias_add_93[21:15]}} :'d6) : '0;
logic [7:0] relu_94;
assign relu_94[7:0] = (bias_add_94[31]==0) ? ((bias_add_94<3'd6) ? {{bias_add_94[31],bias_add_94[21:15]}} :'d6) : '0;
logic [7:0] relu_95;
assign relu_95[7:0] = (bias_add_95[31]==0) ? ((bias_add_95<3'd6) ? {{bias_add_95[31],bias_add_95[21:15]}} :'d6) : '0;
logic [7:0] relu_96;
assign relu_96[7:0] = (bias_add_96[31]==0) ? ((bias_add_96<3'd6) ? {{bias_add_96[31],bias_add_96[21:15]}} :'d6) : '0;
logic [7:0] relu_97;
assign relu_97[7:0] = (bias_add_97[31]==0) ? ((bias_add_97<3'd6) ? {{bias_add_97[31],bias_add_97[21:15]}} :'d6) : '0;
logic [7:0] relu_98;
assign relu_98[7:0] = (bias_add_98[31]==0) ? ((bias_add_98<3'd6) ? {{bias_add_98[31],bias_add_98[21:15]}} :'d6) : '0;
logic [7:0] relu_99;
assign relu_99[7:0] = (bias_add_99[31]==0) ? ((bias_add_99<3'd6) ? {{bias_add_99[31],bias_add_99[21:15]}} :'d6) : '0;
logic [7:0] relu_100;
assign relu_100[7:0] = (bias_add_100[31]==0) ? ((bias_add_100<3'd6) ? {{bias_add_100[31],bias_add_100[21:15]}} :'d6) : '0;
logic [7:0] relu_101;
assign relu_101[7:0] = (bias_add_101[31]==0) ? ((bias_add_101<3'd6) ? {{bias_add_101[31],bias_add_101[21:15]}} :'d6) : '0;
logic [7:0] relu_102;
assign relu_102[7:0] = (bias_add_102[31]==0) ? ((bias_add_102<3'd6) ? {{bias_add_102[31],bias_add_102[21:15]}} :'d6) : '0;
logic [7:0] relu_103;
assign relu_103[7:0] = (bias_add_103[31]==0) ? ((bias_add_103<3'd6) ? {{bias_add_103[31],bias_add_103[21:15]}} :'d6) : '0;
logic [7:0] relu_104;
assign relu_104[7:0] = (bias_add_104[31]==0) ? ((bias_add_104<3'd6) ? {{bias_add_104[31],bias_add_104[21:15]}} :'d6) : '0;
logic [7:0] relu_105;
assign relu_105[7:0] = (bias_add_105[31]==0) ? ((bias_add_105<3'd6) ? {{bias_add_105[31],bias_add_105[21:15]}} :'d6) : '0;
logic [7:0] relu_106;
assign relu_106[7:0] = (bias_add_106[31]==0) ? ((bias_add_106<3'd6) ? {{bias_add_106[31],bias_add_106[21:15]}} :'d6) : '0;
logic [7:0] relu_107;
assign relu_107[7:0] = (bias_add_107[31]==0) ? ((bias_add_107<3'd6) ? {{bias_add_107[31],bias_add_107[21:15]}} :'d6) : '0;
logic [7:0] relu_108;
assign relu_108[7:0] = (bias_add_108[31]==0) ? ((bias_add_108<3'd6) ? {{bias_add_108[31],bias_add_108[21:15]}} :'d6) : '0;
logic [7:0] relu_109;
assign relu_109[7:0] = (bias_add_109[31]==0) ? ((bias_add_109<3'd6) ? {{bias_add_109[31],bias_add_109[21:15]}} :'d6) : '0;
logic [7:0] relu_110;
assign relu_110[7:0] = (bias_add_110[31]==0) ? ((bias_add_110<3'd6) ? {{bias_add_110[31],bias_add_110[21:15]}} :'d6) : '0;
logic [7:0] relu_111;
assign relu_111[7:0] = (bias_add_111[31]==0) ? ((bias_add_111<3'd6) ? {{bias_add_111[31],bias_add_111[21:15]}} :'d6) : '0;
logic [7:0] relu_112;
assign relu_112[7:0] = (bias_add_112[31]==0) ? ((bias_add_112<3'd6) ? {{bias_add_112[31],bias_add_112[21:15]}} :'d6) : '0;
logic [7:0] relu_113;
assign relu_113[7:0] = (bias_add_113[31]==0) ? ((bias_add_113<3'd6) ? {{bias_add_113[31],bias_add_113[21:15]}} :'d6) : '0;
logic [7:0] relu_114;
assign relu_114[7:0] = (bias_add_114[31]==0) ? ((bias_add_114<3'd6) ? {{bias_add_114[31],bias_add_114[21:15]}} :'d6) : '0;
logic [7:0] relu_115;
assign relu_115[7:0] = (bias_add_115[31]==0) ? ((bias_add_115<3'd6) ? {{bias_add_115[31],bias_add_115[21:15]}} :'d6) : '0;
logic [7:0] relu_116;
assign relu_116[7:0] = (bias_add_116[31]==0) ? ((bias_add_116<3'd6) ? {{bias_add_116[31],bias_add_116[21:15]}} :'d6) : '0;
logic [7:0] relu_117;
assign relu_117[7:0] = (bias_add_117[31]==0) ? ((bias_add_117<3'd6) ? {{bias_add_117[31],bias_add_117[21:15]}} :'d6) : '0;
logic [7:0] relu_118;
assign relu_118[7:0] = (bias_add_118[31]==0) ? ((bias_add_118<3'd6) ? {{bias_add_118[31],bias_add_118[21:15]}} :'d6) : '0;
logic [7:0] relu_119;
assign relu_119[7:0] = (bias_add_119[31]==0) ? ((bias_add_119<3'd6) ? {{bias_add_119[31],bias_add_119[21:15]}} :'d6) : '0;
logic [7:0] relu_120;
assign relu_120[7:0] = (bias_add_120[31]==0) ? ((bias_add_120<3'd6) ? {{bias_add_120[31],bias_add_120[21:15]}} :'d6) : '0;
logic [7:0] relu_121;
assign relu_121[7:0] = (bias_add_121[31]==0) ? ((bias_add_121<3'd6) ? {{bias_add_121[31],bias_add_121[21:15]}} :'d6) : '0;
logic [7:0] relu_122;
assign relu_122[7:0] = (bias_add_122[31]==0) ? ((bias_add_122<3'd6) ? {{bias_add_122[31],bias_add_122[21:15]}} :'d6) : '0;
logic [7:0] relu_123;
assign relu_123[7:0] = (bias_add_123[31]==0) ? ((bias_add_123<3'd6) ? {{bias_add_123[31],bias_add_123[21:15]}} :'d6) : '0;
logic [7:0] relu_124;
assign relu_124[7:0] = (bias_add_124[31]==0) ? ((bias_add_124<3'd6) ? {{bias_add_124[31],bias_add_124[21:15]}} :'d6) : '0;
logic [7:0] relu_125;
assign relu_125[7:0] = (bias_add_125[31]==0) ? ((bias_add_125<3'd6) ? {{bias_add_125[31],bias_add_125[21:15]}} :'d6) : '0;
logic [7:0] relu_126;
assign relu_126[7:0] = (bias_add_126[31]==0) ? ((bias_add_126<3'd6) ? {{bias_add_126[31],bias_add_126[21:15]}} :'d6) : '0;
logic [7:0] relu_127;
assign relu_127[7:0] = (bias_add_127[31]==0) ? ((bias_add_127<3'd6) ? {{bias_add_127[31],bias_add_127[21:15]}} :'d6) : '0;

assign output_act = {
	relu_127,
	relu_126,
	relu_125,
	relu_124,
	relu_123,
	relu_122,
	relu_121,
	relu_120,
	relu_119,
	relu_118,
	relu_117,
	relu_116,
	relu_115,
	relu_114,
	relu_113,
	relu_112,
	relu_111,
	relu_110,
	relu_109,
	relu_108,
	relu_107,
	relu_106,
	relu_105,
	relu_104,
	relu_103,
	relu_102,
	relu_101,
	relu_100,
	relu_99,
	relu_98,
	relu_97,
	relu_96,
	relu_95,
	relu_94,
	relu_93,
	relu_92,
	relu_91,
	relu_90,
	relu_89,
	relu_88,
	relu_87,
	relu_86,
	relu_85,
	relu_84,
	relu_83,
	relu_82,
	relu_81,
	relu_80,
	relu_79,
	relu_78,
	relu_77,
	relu_76,
	relu_75,
	relu_74,
	relu_73,
	relu_72,
	relu_71,
	relu_70,
	relu_69,
	relu_68,
	relu_67,
	relu_66,
	relu_65,
	relu_64,
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
