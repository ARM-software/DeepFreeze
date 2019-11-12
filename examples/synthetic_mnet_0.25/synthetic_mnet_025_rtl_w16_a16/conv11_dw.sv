module conv11_dw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [18432-1:0] input_act,
    output logic [2048-1:0] output_act,
    output logic ready
);

logic [18432-1:0] input_act_ff;
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
logic [143:0] input_fmap_32;
assign input_fmap_32 = input_act_ff[4751:4608];
logic [143:0] input_fmap_33;
assign input_fmap_33 = input_act_ff[4895:4752];
logic [143:0] input_fmap_34;
assign input_fmap_34 = input_act_ff[5039:4896];
logic [143:0] input_fmap_35;
assign input_fmap_35 = input_act_ff[5183:5040];
logic [143:0] input_fmap_36;
assign input_fmap_36 = input_act_ff[5327:5184];
logic [143:0] input_fmap_37;
assign input_fmap_37 = input_act_ff[5471:5328];
logic [143:0] input_fmap_38;
assign input_fmap_38 = input_act_ff[5615:5472];
logic [143:0] input_fmap_39;
assign input_fmap_39 = input_act_ff[5759:5616];
logic [143:0] input_fmap_40;
assign input_fmap_40 = input_act_ff[5903:5760];
logic [143:0] input_fmap_41;
assign input_fmap_41 = input_act_ff[6047:5904];
logic [143:0] input_fmap_42;
assign input_fmap_42 = input_act_ff[6191:6048];
logic [143:0] input_fmap_43;
assign input_fmap_43 = input_act_ff[6335:6192];
logic [143:0] input_fmap_44;
assign input_fmap_44 = input_act_ff[6479:6336];
logic [143:0] input_fmap_45;
assign input_fmap_45 = input_act_ff[6623:6480];
logic [143:0] input_fmap_46;
assign input_fmap_46 = input_act_ff[6767:6624];
logic [143:0] input_fmap_47;
assign input_fmap_47 = input_act_ff[6911:6768];
logic [143:0] input_fmap_48;
assign input_fmap_48 = input_act_ff[7055:6912];
logic [143:0] input_fmap_49;
assign input_fmap_49 = input_act_ff[7199:7056];
logic [143:0] input_fmap_50;
assign input_fmap_50 = input_act_ff[7343:7200];
logic [143:0] input_fmap_51;
assign input_fmap_51 = input_act_ff[7487:7344];
logic [143:0] input_fmap_52;
assign input_fmap_52 = input_act_ff[7631:7488];
logic [143:0] input_fmap_53;
assign input_fmap_53 = input_act_ff[7775:7632];
logic [143:0] input_fmap_54;
assign input_fmap_54 = input_act_ff[7919:7776];
logic [143:0] input_fmap_55;
assign input_fmap_55 = input_act_ff[8063:7920];
logic [143:0] input_fmap_56;
assign input_fmap_56 = input_act_ff[8207:8064];
logic [143:0] input_fmap_57;
assign input_fmap_57 = input_act_ff[8351:8208];
logic [143:0] input_fmap_58;
assign input_fmap_58 = input_act_ff[8495:8352];
logic [143:0] input_fmap_59;
assign input_fmap_59 = input_act_ff[8639:8496];
logic [143:0] input_fmap_60;
assign input_fmap_60 = input_act_ff[8783:8640];
logic [143:0] input_fmap_61;
assign input_fmap_61 = input_act_ff[8927:8784];
logic [143:0] input_fmap_62;
assign input_fmap_62 = input_act_ff[9071:8928];
logic [143:0] input_fmap_63;
assign input_fmap_63 = input_act_ff[9215:9072];
logic [143:0] input_fmap_64;
assign input_fmap_64 = input_act_ff[9359:9216];
logic [143:0] input_fmap_65;
assign input_fmap_65 = input_act_ff[9503:9360];
logic [143:0] input_fmap_66;
assign input_fmap_66 = input_act_ff[9647:9504];
logic [143:0] input_fmap_67;
assign input_fmap_67 = input_act_ff[9791:9648];
logic [143:0] input_fmap_68;
assign input_fmap_68 = input_act_ff[9935:9792];
logic [143:0] input_fmap_69;
assign input_fmap_69 = input_act_ff[10079:9936];
logic [143:0] input_fmap_70;
assign input_fmap_70 = input_act_ff[10223:10080];
logic [143:0] input_fmap_71;
assign input_fmap_71 = input_act_ff[10367:10224];
logic [143:0] input_fmap_72;
assign input_fmap_72 = input_act_ff[10511:10368];
logic [143:0] input_fmap_73;
assign input_fmap_73 = input_act_ff[10655:10512];
logic [143:0] input_fmap_74;
assign input_fmap_74 = input_act_ff[10799:10656];
logic [143:0] input_fmap_75;
assign input_fmap_75 = input_act_ff[10943:10800];
logic [143:0] input_fmap_76;
assign input_fmap_76 = input_act_ff[11087:10944];
logic [143:0] input_fmap_77;
assign input_fmap_77 = input_act_ff[11231:11088];
logic [143:0] input_fmap_78;
assign input_fmap_78 = input_act_ff[11375:11232];
logic [143:0] input_fmap_79;
assign input_fmap_79 = input_act_ff[11519:11376];
logic [143:0] input_fmap_80;
assign input_fmap_80 = input_act_ff[11663:11520];
logic [143:0] input_fmap_81;
assign input_fmap_81 = input_act_ff[11807:11664];
logic [143:0] input_fmap_82;
assign input_fmap_82 = input_act_ff[11951:11808];
logic [143:0] input_fmap_83;
assign input_fmap_83 = input_act_ff[12095:11952];
logic [143:0] input_fmap_84;
assign input_fmap_84 = input_act_ff[12239:12096];
logic [143:0] input_fmap_85;
assign input_fmap_85 = input_act_ff[12383:12240];
logic [143:0] input_fmap_86;
assign input_fmap_86 = input_act_ff[12527:12384];
logic [143:0] input_fmap_87;
assign input_fmap_87 = input_act_ff[12671:12528];
logic [143:0] input_fmap_88;
assign input_fmap_88 = input_act_ff[12815:12672];
logic [143:0] input_fmap_89;
assign input_fmap_89 = input_act_ff[12959:12816];
logic [143:0] input_fmap_90;
assign input_fmap_90 = input_act_ff[13103:12960];
logic [143:0] input_fmap_91;
assign input_fmap_91 = input_act_ff[13247:13104];
logic [143:0] input_fmap_92;
assign input_fmap_92 = input_act_ff[13391:13248];
logic [143:0] input_fmap_93;
assign input_fmap_93 = input_act_ff[13535:13392];
logic [143:0] input_fmap_94;
assign input_fmap_94 = input_act_ff[13679:13536];
logic [143:0] input_fmap_95;
assign input_fmap_95 = input_act_ff[13823:13680];
logic [143:0] input_fmap_96;
assign input_fmap_96 = input_act_ff[13967:13824];
logic [143:0] input_fmap_97;
assign input_fmap_97 = input_act_ff[14111:13968];
logic [143:0] input_fmap_98;
assign input_fmap_98 = input_act_ff[14255:14112];
logic [143:0] input_fmap_99;
assign input_fmap_99 = input_act_ff[14399:14256];
logic [143:0] input_fmap_100;
assign input_fmap_100 = input_act_ff[14543:14400];
logic [143:0] input_fmap_101;
assign input_fmap_101 = input_act_ff[14687:14544];
logic [143:0] input_fmap_102;
assign input_fmap_102 = input_act_ff[14831:14688];
logic [143:0] input_fmap_103;
assign input_fmap_103 = input_act_ff[14975:14832];
logic [143:0] input_fmap_104;
assign input_fmap_104 = input_act_ff[15119:14976];
logic [143:0] input_fmap_105;
assign input_fmap_105 = input_act_ff[15263:15120];
logic [143:0] input_fmap_106;
assign input_fmap_106 = input_act_ff[15407:15264];
logic [143:0] input_fmap_107;
assign input_fmap_107 = input_act_ff[15551:15408];
logic [143:0] input_fmap_108;
assign input_fmap_108 = input_act_ff[15695:15552];
logic [143:0] input_fmap_109;
assign input_fmap_109 = input_act_ff[15839:15696];
logic [143:0] input_fmap_110;
assign input_fmap_110 = input_act_ff[15983:15840];
logic [143:0] input_fmap_111;
assign input_fmap_111 = input_act_ff[16127:15984];
logic [143:0] input_fmap_112;
assign input_fmap_112 = input_act_ff[16271:16128];
logic [143:0] input_fmap_113;
assign input_fmap_113 = input_act_ff[16415:16272];
logic [143:0] input_fmap_114;
assign input_fmap_114 = input_act_ff[16559:16416];
logic [143:0] input_fmap_115;
assign input_fmap_115 = input_act_ff[16703:16560];
logic [143:0] input_fmap_116;
assign input_fmap_116 = input_act_ff[16847:16704];
logic [143:0] input_fmap_117;
assign input_fmap_117 = input_act_ff[16991:16848];
logic [143:0] input_fmap_118;
assign input_fmap_118 = input_act_ff[17135:16992];
logic [143:0] input_fmap_119;
assign input_fmap_119 = input_act_ff[17279:17136];
logic [143:0] input_fmap_120;
assign input_fmap_120 = input_act_ff[17423:17280];
logic [143:0] input_fmap_121;
assign input_fmap_121 = input_act_ff[17567:17424];
logic [143:0] input_fmap_122;
assign input_fmap_122 = input_act_ff[17711:17568];
logic [143:0] input_fmap_123;
assign input_fmap_123 = input_act_ff[17855:17712];
logic [143:0] input_fmap_124;
assign input_fmap_124 = input_act_ff[17999:17856];
logic [143:0] input_fmap_125;
assign input_fmap_125 = input_act_ff[18143:18000];
logic [143:0] input_fmap_126;
assign input_fmap_126 = input_act_ff[18287:18144];
logic [143:0] input_fmap_127;
assign input_fmap_127 = input_act_ff[18431:18288];

logic signed [31:0] dw_conv_mac_0;
assign dw_conv_mac_0 = 
	 12'sd 1416 * $signed(input_fmap_0[15:0]) +
	 16'sd 20246 * $signed(input_fmap_0[31:16]) +
	 16'sd 24826 * $signed(input_fmap_0[47:32]) +
	 16'sd 21719 * $signed(input_fmap_0[63:48]) +
	 15'sd 15045 * $signed(input_fmap_0[79:64]) +
	 16'sd 29579 * $signed(input_fmap_0[95:80]) +
	 15'sd 13498 * $signed(input_fmap_0[111:96]) +
	 15'sd 10948 * $signed(input_fmap_0[127:112]) +
	 16'sd 21272 * $signed(input_fmap_0[143:128]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 14'sd 4824 * $signed(input_fmap_1[15:0]) +
	 16'sd 22241 * $signed(input_fmap_1[31:16]) +
	 16'sd 24956 * $signed(input_fmap_1[47:32]) +
	 16'sd 29346 * $signed(input_fmap_1[63:48]) +
	 16'sd 25449 * $signed(input_fmap_1[79:64]) +
	 15'sd 15471 * $signed(input_fmap_1[95:80]) +
	 16'sd 24316 * $signed(input_fmap_1[111:96]) +
	 16'sd 31052 * $signed(input_fmap_1[127:112]) +
	 13'sd 2991 * $signed(input_fmap_1[143:128]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 14'sd 6269 * $signed(input_fmap_2[15:0]) +
	 15'sd 15418 * $signed(input_fmap_2[31:16]) +
	 12'sd 1962 * $signed(input_fmap_2[47:32]) +
	 6'sd 25 * $signed(input_fmap_2[63:48]) +
	 16'sd 22572 * $signed(input_fmap_2[79:64]) +
	 14'sd 6224 * $signed(input_fmap_2[95:80]) +
	 13'sd 3027 * $signed(input_fmap_2[111:96]) +
	 16'sd 21952 * $signed(input_fmap_2[127:112]) +
	 11'sd 885 * $signed(input_fmap_2[143:128]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 16'sd 31079 * $signed(input_fmap_3[15:0]) +
	 15'sd 11277 * $signed(input_fmap_3[31:16]) +
	 16'sd 18340 * $signed(input_fmap_3[47:32]) +
	 15'sd 14723 * $signed(input_fmap_3[63:48]) +
	 15'sd 14732 * $signed(input_fmap_3[79:64]) +
	 15'sd 10703 * $signed(input_fmap_3[95:80]) +
	 16'sd 19458 * $signed(input_fmap_3[111:96]) +
	 14'sd 7821 * $signed(input_fmap_3[127:112]) +
	 14'sd 6488 * $signed(input_fmap_3[143:128]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 12'sd 1413 * $signed(input_fmap_4[15:0]) +
	 15'sd 10164 * $signed(input_fmap_4[31:16]) +
	 15'sd 15347 * $signed(input_fmap_4[47:32]) +
	 14'sd 6162 * $signed(input_fmap_4[63:48]) +
	 15'sd 8425 * $signed(input_fmap_4[79:64]) +
	 16'sd 21370 * $signed(input_fmap_4[95:80]) +
	 16'sd 30924 * $signed(input_fmap_4[111:96]) +
	 15'sd 9501 * $signed(input_fmap_4[127:112]) +
	 16'sd 23050 * $signed(input_fmap_4[143:128]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 16'sd 23567 * $signed(input_fmap_5[15:0]) +
	 14'sd 5465 * $signed(input_fmap_5[31:16]) +
	 16'sd 27871 * $signed(input_fmap_5[47:32]) +
	 16'sd 30095 * $signed(input_fmap_5[63:48]) +
	 16'sd 22995 * $signed(input_fmap_5[79:64]) +
	 16'sd 30687 * $signed(input_fmap_5[95:80]) +
	 13'sd 2961 * $signed(input_fmap_5[111:96]) +
	 15'sd 11248 * $signed(input_fmap_5[127:112]) +
	 16'sd 18559 * $signed(input_fmap_5[143:128]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 11'sd 915 * $signed(input_fmap_6[15:0]) +
	 15'sd 8229 * $signed(input_fmap_6[31:16]) +
	 13'sd 3338 * $signed(input_fmap_6[47:32]) +
	 16'sd 24262 * $signed(input_fmap_6[63:48]) +
	 14'sd 4820 * $signed(input_fmap_6[79:64]) +
	 14'sd 5061 * $signed(input_fmap_6[95:80]) +
	 16'sd 28569 * $signed(input_fmap_6[111:96]) +
	 15'sd 8244 * $signed(input_fmap_6[127:112]) +
	 16'sd 21103 * $signed(input_fmap_6[143:128]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 16'sd 21543 * $signed(input_fmap_7[15:0]) +
	 15'sd 13822 * $signed(input_fmap_7[31:16]) +
	 15'sd 9744 * $signed(input_fmap_7[47:32]) +
	 15'sd 8617 * $signed(input_fmap_7[63:48]) +
	 14'sd 6682 * $signed(input_fmap_7[79:64]) +
	 16'sd 26720 * $signed(input_fmap_7[95:80]) +
	 16'sd 19372 * $signed(input_fmap_7[111:96]) +
	 16'sd 19179 * $signed(input_fmap_7[127:112]) +
	 16'sd 24899 * $signed(input_fmap_7[143:128]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 12'sd 1380 * $signed(input_fmap_8[15:0]) +
	 14'sd 5446 * $signed(input_fmap_8[31:16]) +
	 14'sd 7947 * $signed(input_fmap_8[47:32]) +
	 16'sd 28471 * $signed(input_fmap_8[63:48]) +
	 16'sd 23744 * $signed(input_fmap_8[79:64]) +
	 14'sd 8157 * $signed(input_fmap_8[95:80]) +
	 15'sd 14020 * $signed(input_fmap_8[111:96]) +
	 15'sd 11033 * $signed(input_fmap_8[127:112]) +
	 16'sd 29974 * $signed(input_fmap_8[143:128]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 16'sd 29539 * $signed(input_fmap_9[15:0]) +
	 16'sd 26468 * $signed(input_fmap_9[31:16]) +
	 16'sd 25703 * $signed(input_fmap_9[47:32]) +
	 16'sd 27942 * $signed(input_fmap_9[63:48]) +
	 15'sd 9524 * $signed(input_fmap_9[79:64]) +
	 14'sd 6009 * $signed(input_fmap_9[95:80]) +
	 16'sd 17855 * $signed(input_fmap_9[111:96]) +
	 16'sd 27787 * $signed(input_fmap_9[127:112]) +
	 16'sd 19541 * $signed(input_fmap_9[143:128]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 16'sd 17440 * $signed(input_fmap_10[15:0]) +
	 9'sd 242 * $signed(input_fmap_10[31:16]) +
	 15'sd 13551 * $signed(input_fmap_10[47:32]) +
	 16'sd 25422 * $signed(input_fmap_10[63:48]) +
	 16'sd 25180 * $signed(input_fmap_10[79:64]) +
	 14'sd 7975 * $signed(input_fmap_10[95:80]) +
	 15'sd 16341 * $signed(input_fmap_10[111:96]) +
	 16'sd 31259 * $signed(input_fmap_10[127:112]) +
	 14'sd 4580 * $signed(input_fmap_10[143:128]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 16'sd 30768 * $signed(input_fmap_11[15:0]) +
	 16'sd 30046 * $signed(input_fmap_11[31:16]) +
	 14'sd 6545 * $signed(input_fmap_11[47:32]) +
	 16'sd 18762 * $signed(input_fmap_11[63:48]) +
	 15'sd 11893 * $signed(input_fmap_11[79:64]) +
	 16'sd 22726 * $signed(input_fmap_11[95:80]) +
	 16'sd 24667 * $signed(input_fmap_11[111:96]) +
	 16'sd 32211 * $signed(input_fmap_11[127:112]) +
	 16'sd 31708 * $signed(input_fmap_11[143:128]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 15'sd 11518 * $signed(input_fmap_12[15:0]) +
	 11'sd 523 * $signed(input_fmap_12[31:16]) +
	 16'sd 24459 * $signed(input_fmap_12[47:32]) +
	 15'sd 14126 * $signed(input_fmap_12[63:48]) +
	 13'sd 3088 * $signed(input_fmap_12[79:64]) +
	 11'sd 993 * $signed(input_fmap_12[95:80]) +
	 15'sd 11306 * $signed(input_fmap_12[111:96]) +
	 15'sd 9184 * $signed(input_fmap_12[127:112]) +
	 16'sd 26562 * $signed(input_fmap_12[143:128]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 14'sd 5286 * $signed(input_fmap_13[15:0]) +
	 16'sd 22731 * $signed(input_fmap_13[31:16]) +
	 15'sd 14093 * $signed(input_fmap_13[47:32]) +
	 11'sd 856 * $signed(input_fmap_13[63:48]) +
	 16'sd 26749 * $signed(input_fmap_13[79:64]) +
	 16'sd 20961 * $signed(input_fmap_13[95:80]) +
	 11'sd 1003 * $signed(input_fmap_13[111:96]) +
	 16'sd 24302 * $signed(input_fmap_13[127:112]) +
	 16'sd 26509 * $signed(input_fmap_13[143:128]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 16'sd 28205 * $signed(input_fmap_14[15:0]) +
	 16'sd 21141 * $signed(input_fmap_14[31:16]) +
	 16'sd 19945 * $signed(input_fmap_14[47:32]) +
	 15'sd 14803 * $signed(input_fmap_14[63:48]) +
	 13'sd 2852 * $signed(input_fmap_14[79:64]) +
	 10'sd 334 * $signed(input_fmap_14[95:80]) +
	 13'sd 3163 * $signed(input_fmap_14[111:96]) +
	 15'sd 10002 * $signed(input_fmap_14[127:112]) +
	 16'sd 29369 * $signed(input_fmap_14[143:128]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 15'sd 15331 * $signed(input_fmap_15[15:0]) +
	 16'sd 22732 * $signed(input_fmap_15[31:16]) +
	 13'sd 3485 * $signed(input_fmap_15[47:32]) +
	 15'sd 15256 * $signed(input_fmap_15[63:48]) +
	 15'sd 11673 * $signed(input_fmap_15[79:64]) +
	 16'sd 27135 * $signed(input_fmap_15[95:80]) +
	 16'sd 26358 * $signed(input_fmap_15[111:96]) +
	 16'sd 28301 * $signed(input_fmap_15[127:112]) +
	 15'sd 10771 * $signed(input_fmap_15[143:128]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 13'sd 3539 * $signed(input_fmap_16[15:0]) +
	 16'sd 25600 * $signed(input_fmap_16[31:16]) +
	 16'sd 30139 * $signed(input_fmap_16[47:32]) +
	 16'sd 31242 * $signed(input_fmap_16[63:48]) +
	 16'sd 29903 * $signed(input_fmap_16[79:64]) +
	 16'sd 18437 * $signed(input_fmap_16[95:80]) +
	 16'sd 20821 * $signed(input_fmap_16[111:96]) +
	 15'sd 8228 * $signed(input_fmap_16[127:112]) +
	 15'sd 16031 * $signed(input_fmap_16[143:128]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 16'sd 23374 * $signed(input_fmap_17[15:0]) +
	 15'sd 9885 * $signed(input_fmap_17[31:16]) +
	 15'sd 15983 * $signed(input_fmap_17[47:32]) +
	 15'sd 14938 * $signed(input_fmap_17[63:48]) +
	 15'sd 15315 * $signed(input_fmap_17[79:64]) +
	 12'sd 1510 * $signed(input_fmap_17[95:80]) +
	 15'sd 9100 * $signed(input_fmap_17[111:96]) +
	 16'sd 21400 * $signed(input_fmap_17[127:112]) +
	 15'sd 14882 * $signed(input_fmap_17[143:128]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 14'sd 5233 * $signed(input_fmap_18[15:0]) +
	 15'sd 14910 * $signed(input_fmap_18[31:16]) +
	 16'sd 22211 * $signed(input_fmap_18[47:32]) +
	 16'sd 28808 * $signed(input_fmap_18[63:48]) +
	 16'sd 16914 * $signed(input_fmap_18[79:64]) +
	 15'sd 13462 * $signed(input_fmap_18[95:80]) +
	 15'sd 10697 * $signed(input_fmap_18[111:96]) +
	 16'sd 27873 * $signed(input_fmap_18[127:112]) +
	 16'sd 19726 * $signed(input_fmap_18[143:128]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 13'sd 3317 * $signed(input_fmap_19[15:0]) +
	 16'sd 30364 * $signed(input_fmap_19[31:16]) +
	 13'sd 2622 * $signed(input_fmap_19[47:32]) +
	 14'sd 7980 * $signed(input_fmap_19[63:48]) +
	 16'sd 23948 * $signed(input_fmap_19[79:64]) +
	 15'sd 11625 * $signed(input_fmap_19[95:80]) +
	 16'sd 32524 * $signed(input_fmap_19[111:96]) +
	 14'sd 4436 * $signed(input_fmap_19[127:112]) +
	 15'sd 13917 * $signed(input_fmap_19[143:128]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 16'sd 29328 * $signed(input_fmap_20[15:0]) +
	 16'sd 19620 * $signed(input_fmap_20[31:16]) +
	 16'sd 16416 * $signed(input_fmap_20[47:32]) +
	 16'sd 24060 * $signed(input_fmap_20[63:48]) +
	 12'sd 1524 * $signed(input_fmap_20[79:64]) +
	 15'sd 13522 * $signed(input_fmap_20[95:80]) +
	 16'sd 18247 * $signed(input_fmap_20[111:96]) +
	 16'sd 17774 * $signed(input_fmap_20[127:112]) +
	 14'sd 7642 * $signed(input_fmap_20[143:128]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 16'sd 29362 * $signed(input_fmap_21[15:0]) +
	 15'sd 13245 * $signed(input_fmap_21[31:16]) +
	 16'sd 18029 * $signed(input_fmap_21[47:32]) +
	 15'sd 15084 * $signed(input_fmap_21[63:48]) +
	 16'sd 22657 * $signed(input_fmap_21[79:64]) +
	 15'sd 10073 * $signed(input_fmap_21[95:80]) +
	 16'sd 18126 * $signed(input_fmap_21[111:96]) +
	 15'sd 12852 * $signed(input_fmap_21[127:112]) +
	 13'sd 3080 * $signed(input_fmap_21[143:128]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 16'sd 18236 * $signed(input_fmap_22[15:0]) +
	 16'sd 17697 * $signed(input_fmap_22[31:16]) +
	 15'sd 9562 * $signed(input_fmap_22[47:32]) +
	 16'sd 24858 * $signed(input_fmap_22[63:48]) +
	 16'sd 16462 * $signed(input_fmap_22[79:64]) +
	 16'sd 30790 * $signed(input_fmap_22[95:80]) +
	 10'sd 409 * $signed(input_fmap_22[111:96]) +
	 13'sd 3298 * $signed(input_fmap_22[127:112]) +
	 15'sd 13952 * $signed(input_fmap_22[143:128]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 15'sd 9887 * $signed(input_fmap_23[15:0]) +
	 16'sd 23449 * $signed(input_fmap_23[31:16]) +
	 16'sd 19902 * $signed(input_fmap_23[47:32]) +
	 16'sd 32320 * $signed(input_fmap_23[63:48]) +
	 10'sd 349 * $signed(input_fmap_23[79:64]) +
	 14'sd 6517 * $signed(input_fmap_23[95:80]) +
	 16'sd 28434 * $signed(input_fmap_23[111:96]) +
	 13'sd 2117 * $signed(input_fmap_23[127:112]) +
	 16'sd 19548 * $signed(input_fmap_23[143:128]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 11'sd 823 * $signed(input_fmap_24[15:0]) +
	 16'sd 23194 * $signed(input_fmap_24[31:16]) +
	 16'sd 19747 * $signed(input_fmap_24[47:32]) +
	 15'sd 15275 * $signed(input_fmap_24[63:48]) +
	 16'sd 24349 * $signed(input_fmap_24[79:64]) +
	 14'sd 7237 * $signed(input_fmap_24[95:80]) +
	 16'sd 21505 * $signed(input_fmap_24[111:96]) +
	 15'sd 14947 * $signed(input_fmap_24[127:112]) +
	 13'sd 2244 * $signed(input_fmap_24[143:128]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 13'sd 2428 * $signed(input_fmap_25[15:0]) +
	 16'sd 22500 * $signed(input_fmap_25[31:16]) +
	 14'sd 6564 * $signed(input_fmap_25[47:32]) +
	 12'sd 1831 * $signed(input_fmap_25[63:48]) +
	 13'sd 2973 * $signed(input_fmap_25[79:64]) +
	 15'sd 10997 * $signed(input_fmap_25[95:80]) +
	 16'sd 19455 * $signed(input_fmap_25[111:96]) +
	 16'sd 22284 * $signed(input_fmap_25[127:112]) +
	 13'sd 2735 * $signed(input_fmap_25[143:128]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 16'sd 17486 * $signed(input_fmap_26[15:0]) +
	 15'sd 12381 * $signed(input_fmap_26[31:16]) +
	 16'sd 23500 * $signed(input_fmap_26[47:32]) +
	 16'sd 28292 * $signed(input_fmap_26[63:48]) +
	 15'sd 14459 * $signed(input_fmap_26[79:64]) +
	 16'sd 21959 * $signed(input_fmap_26[95:80]) +
	 14'sd 6444 * $signed(input_fmap_26[111:96]) +
	 15'sd 15969 * $signed(input_fmap_26[127:112]) +
	 16'sd 27248 * $signed(input_fmap_26[143:128]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 16'sd 18117 * $signed(input_fmap_27[15:0]) +
	 16'sd 22826 * $signed(input_fmap_27[31:16]) +
	 16'sd 27659 * $signed(input_fmap_27[47:32]) +
	 14'sd 6862 * $signed(input_fmap_27[63:48]) +
	 14'sd 7759 * $signed(input_fmap_27[79:64]) +
	 16'sd 28426 * $signed(input_fmap_27[95:80]) +
	 16'sd 21310 * $signed(input_fmap_27[111:96]) +
	 12'sd 1061 * $signed(input_fmap_27[127:112]) +
	 16'sd 28882 * $signed(input_fmap_27[143:128]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 16'sd 25024 * $signed(input_fmap_28[15:0]) +
	 16'sd 29194 * $signed(input_fmap_28[31:16]) +
	 16'sd 27863 * $signed(input_fmap_28[47:32]) +
	 16'sd 19680 * $signed(input_fmap_28[63:48]) +
	 15'sd 12670 * $signed(input_fmap_28[79:64]) +
	 15'sd 14750 * $signed(input_fmap_28[95:80]) +
	 13'sd 2243 * $signed(input_fmap_28[111:96]) +
	 16'sd 29249 * $signed(input_fmap_28[127:112]) +
	 13'sd 3161 * $signed(input_fmap_28[143:128]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 15'sd 11584 * $signed(input_fmap_29[15:0]) +
	 15'sd 12461 * $signed(input_fmap_29[31:16]) +
	 16'sd 22092 * $signed(input_fmap_29[47:32]) +
	 16'sd 19058 * $signed(input_fmap_29[63:48]) +
	 14'sd 5232 * $signed(input_fmap_29[79:64]) +
	 16'sd 19245 * $signed(input_fmap_29[95:80]) +
	 14'sd 6989 * $signed(input_fmap_29[111:96]) +
	 16'sd 20742 * $signed(input_fmap_29[127:112]) +
	 16'sd 27971 * $signed(input_fmap_29[143:128]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 15'sd 13469 * $signed(input_fmap_30[15:0]) +
	 16'sd 29863 * $signed(input_fmap_30[31:16]) +
	 16'sd 20299 * $signed(input_fmap_30[47:32]) +
	 16'sd 24652 * $signed(input_fmap_30[63:48]) +
	 15'sd 13317 * $signed(input_fmap_30[79:64]) +
	 15'sd 11790 * $signed(input_fmap_30[95:80]) +
	 15'sd 13041 * $signed(input_fmap_30[111:96]) +
	 15'sd 9887 * $signed(input_fmap_30[127:112]) +
	 14'sd 8040 * $signed(input_fmap_30[143:128]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 16'sd 31843 * $signed(input_fmap_31[15:0]) +
	 16'sd 23944 * $signed(input_fmap_31[31:16]) +
	 12'sd 1878 * $signed(input_fmap_31[47:32]) +
	 14'sd 4547 * $signed(input_fmap_31[63:48]) +
	 15'sd 13506 * $signed(input_fmap_31[79:64]) +
	 15'sd 13234 * $signed(input_fmap_31[95:80]) +
	 16'sd 29150 * $signed(input_fmap_31[111:96]) +
	 15'sd 9433 * $signed(input_fmap_31[127:112]) +
	 16'sd 19017 * $signed(input_fmap_31[143:128]);

logic signed [31:0] dw_conv_mac_32;
assign dw_conv_mac_32 = 
	 12'sd 1885 * $signed(input_fmap_32[15:0]) +
	 16'sd 19651 * $signed(input_fmap_32[31:16]) +
	 16'sd 31736 * $signed(input_fmap_32[47:32]) +
	 9'sd 150 * $signed(input_fmap_32[63:48]) +
	 16'sd 29242 * $signed(input_fmap_32[79:64]) +
	 16'sd 26138 * $signed(input_fmap_32[95:80]) +
	 14'sd 8047 * $signed(input_fmap_32[111:96]) +
	 12'sd 1182 * $signed(input_fmap_32[127:112]) +
	 16'sd 28046 * $signed(input_fmap_32[143:128]);

logic signed [31:0] dw_conv_mac_33;
assign dw_conv_mac_33 = 
	 16'sd 23218 * $signed(input_fmap_33[15:0]) +
	 16'sd 22700 * $signed(input_fmap_33[31:16]) +
	 14'sd 4243 * $signed(input_fmap_33[47:32]) +
	 16'sd 20057 * $signed(input_fmap_33[63:48]) +
	 16'sd 22080 * $signed(input_fmap_33[79:64]) +
	 16'sd 28775 * $signed(input_fmap_33[95:80]) +
	 16'sd 26217 * $signed(input_fmap_33[111:96]) +
	 15'sd 14077 * $signed(input_fmap_33[127:112]) +
	 15'sd 11045 * $signed(input_fmap_33[143:128]);

logic signed [31:0] dw_conv_mac_34;
assign dw_conv_mac_34 = 
	 16'sd 20849 * $signed(input_fmap_34[15:0]) +
	 16'sd 23888 * $signed(input_fmap_34[31:16]) +
	 16'sd 25668 * $signed(input_fmap_34[47:32]) +
	 12'sd 1832 * $signed(input_fmap_34[63:48]) +
	 16'sd 21424 * $signed(input_fmap_34[79:64]) +
	 10'sd 471 * $signed(input_fmap_34[95:80]) +
	 11'sd 649 * $signed(input_fmap_34[111:96]) +
	 16'sd 32661 * $signed(input_fmap_34[127:112]) +
	 15'sd 13986 * $signed(input_fmap_34[143:128]);

logic signed [31:0] dw_conv_mac_35;
assign dw_conv_mac_35 = 
	 16'sd 18843 * $signed(input_fmap_35[15:0]) +
	 12'sd 1980 * $signed(input_fmap_35[31:16]) +
	 14'sd 6787 * $signed(input_fmap_35[47:32]) +
	 16'sd 20870 * $signed(input_fmap_35[63:48]) +
	 15'sd 8654 * $signed(input_fmap_35[79:64]) +
	 14'sd 7214 * $signed(input_fmap_35[95:80]) +
	 16'sd 31586 * $signed(input_fmap_35[111:96]) +
	 16'sd 31516 * $signed(input_fmap_35[127:112]) +
	 14'sd 5713 * $signed(input_fmap_35[143:128]);

logic signed [31:0] dw_conv_mac_36;
assign dw_conv_mac_36 = 
	 15'sd 12891 * $signed(input_fmap_36[15:0]) +
	 16'sd 32642 * $signed(input_fmap_36[31:16]) +
	 16'sd 30777 * $signed(input_fmap_36[47:32]) +
	 15'sd 14410 * $signed(input_fmap_36[63:48]) +
	 16'sd 28711 * $signed(input_fmap_36[79:64]) +
	 15'sd 12745 * $signed(input_fmap_36[95:80]) +
	 14'sd 4781 * $signed(input_fmap_36[111:96]) +
	 15'sd 8822 * $signed(input_fmap_36[127:112]) +
	 16'sd 27294 * $signed(input_fmap_36[143:128]);

logic signed [31:0] dw_conv_mac_37;
assign dw_conv_mac_37 = 
	 16'sd 21643 * $signed(input_fmap_37[15:0]) +
	 16'sd 30879 * $signed(input_fmap_37[31:16]) +
	 16'sd 22834 * $signed(input_fmap_37[47:32]) +
	 15'sd 10995 * $signed(input_fmap_37[63:48]) +
	 16'sd 30268 * $signed(input_fmap_37[79:64]) +
	 15'sd 14026 * $signed(input_fmap_37[95:80]) +
	 15'sd 10463 * $signed(input_fmap_37[111:96]) +
	 14'sd 7404 * $signed(input_fmap_37[127:112]) +
	 16'sd 27782 * $signed(input_fmap_37[143:128]);

logic signed [31:0] dw_conv_mac_38;
assign dw_conv_mac_38 = 
	 15'sd 14979 * $signed(input_fmap_38[15:0]) +
	 16'sd 25749 * $signed(input_fmap_38[31:16]) +
	 8'sd 101 * $signed(input_fmap_38[47:32]) +
	 13'sd 3672 * $signed(input_fmap_38[63:48]) +
	 16'sd 19813 * $signed(input_fmap_38[79:64]) +
	 16'sd 25719 * $signed(input_fmap_38[95:80]) +
	 14'sd 5925 * $signed(input_fmap_38[111:96]) +
	 16'sd 17965 * $signed(input_fmap_38[127:112]) +
	 15'sd 14996 * $signed(input_fmap_38[143:128]);

logic signed [31:0] dw_conv_mac_39;
assign dw_conv_mac_39 = 
	 15'sd 8650 * $signed(input_fmap_39[15:0]) +
	 15'sd 11854 * $signed(input_fmap_39[31:16]) +
	 14'sd 4638 * $signed(input_fmap_39[47:32]) +
	 16'sd 23023 * $signed(input_fmap_39[63:48]) +
	 16'sd 26786 * $signed(input_fmap_39[79:64]) +
	 16'sd 26687 * $signed(input_fmap_39[95:80]) +
	 16'sd 22390 * $signed(input_fmap_39[111:96]) +
	 12'sd 1033 * $signed(input_fmap_39[127:112]) +
	 10'sd 423 * $signed(input_fmap_39[143:128]);

logic signed [31:0] dw_conv_mac_40;
assign dw_conv_mac_40 = 
	 15'sd 15969 * $signed(input_fmap_40[15:0]) +
	 16'sd 29586 * $signed(input_fmap_40[31:16]) +
	 14'sd 4266 * $signed(input_fmap_40[47:32]) +
	 16'sd 22582 * $signed(input_fmap_40[63:48]) +
	 16'sd 30431 * $signed(input_fmap_40[79:64]) +
	 14'sd 6473 * $signed(input_fmap_40[95:80]) +
	 16'sd 17650 * $signed(input_fmap_40[111:96]) +
	 16'sd 27432 * $signed(input_fmap_40[127:112]) +
	 16'sd 29707 * $signed(input_fmap_40[143:128]);

logic signed [31:0] dw_conv_mac_41;
assign dw_conv_mac_41 = 
	 11'sd 664 * $signed(input_fmap_41[15:0]) +
	 14'sd 5907 * $signed(input_fmap_41[31:16]) +
	 16'sd 24245 * $signed(input_fmap_41[47:32]) +
	 15'sd 11168 * $signed(input_fmap_41[63:48]) +
	 16'sd 27596 * $signed(input_fmap_41[79:64]) +
	 12'sd 2010 * $signed(input_fmap_41[95:80]) +
	 16'sd 21420 * $signed(input_fmap_41[111:96]) +
	 15'sd 8457 * $signed(input_fmap_41[127:112]) +
	 16'sd 28281 * $signed(input_fmap_41[143:128]);

logic signed [31:0] dw_conv_mac_42;
assign dw_conv_mac_42 = 
	 13'sd 3789 * $signed(input_fmap_42[15:0]) +
	 13'sd 2866 * $signed(input_fmap_42[31:16]) +
	 16'sd 24847 * $signed(input_fmap_42[47:32]) +
	 16'sd 21830 * $signed(input_fmap_42[63:48]) +
	 16'sd 19674 * $signed(input_fmap_42[79:64]) +
	 16'sd 30552 * $signed(input_fmap_42[95:80]) +
	 16'sd 27026 * $signed(input_fmap_42[111:96]) +
	 16'sd 32396 * $signed(input_fmap_42[127:112]) +
	 14'sd 5234 * $signed(input_fmap_42[143:128]);

logic signed [31:0] dw_conv_mac_43;
assign dw_conv_mac_43 = 
	 15'sd 15249 * $signed(input_fmap_43[15:0]) +
	 12'sd 1951 * $signed(input_fmap_43[31:16]) +
	 14'sd 7742 * $signed(input_fmap_43[47:32]) +
	 16'sd 23834 * $signed(input_fmap_43[63:48]) +
	 13'sd 2889 * $signed(input_fmap_43[79:64]) +
	 15'sd 14507 * $signed(input_fmap_43[95:80]) +
	 16'sd 26463 * $signed(input_fmap_43[111:96]) +
	 15'sd 16165 * $signed(input_fmap_43[127:112]) +
	 16'sd 29071 * $signed(input_fmap_43[143:128]);

logic signed [31:0] dw_conv_mac_44;
assign dw_conv_mac_44 = 
	 15'sd 14410 * $signed(input_fmap_44[15:0]) +
	 16'sd 21884 * $signed(input_fmap_44[31:16]) +
	 14'sd 7940 * $signed(input_fmap_44[47:32]) +
	 16'sd 25001 * $signed(input_fmap_44[63:48]) +
	 16'sd 20762 * $signed(input_fmap_44[79:64]) +
	 10'sd 464 * $signed(input_fmap_44[95:80]) +
	 16'sd 17936 * $signed(input_fmap_44[111:96]) +
	 16'sd 18115 * $signed(input_fmap_44[127:112]) +
	 16'sd 32393 * $signed(input_fmap_44[143:128]);

logic signed [31:0] dw_conv_mac_45;
assign dw_conv_mac_45 = 
	 16'sd 21473 * $signed(input_fmap_45[15:0]) +
	 13'sd 3784 * $signed(input_fmap_45[31:16]) +
	 15'sd 14459 * $signed(input_fmap_45[47:32]) +
	 16'sd 17441 * $signed(input_fmap_45[63:48]) +
	 15'sd 10558 * $signed(input_fmap_45[79:64]) +
	 16'sd 28840 * $signed(input_fmap_45[95:80]) +
	 16'sd 32654 * $signed(input_fmap_45[111:96]) +
	 16'sd 21943 * $signed(input_fmap_45[127:112]) +
	 15'sd 12077 * $signed(input_fmap_45[143:128]);

logic signed [31:0] dw_conv_mac_46;
assign dw_conv_mac_46 = 
	 16'sd 22783 * $signed(input_fmap_46[15:0]) +
	 16'sd 31768 * $signed(input_fmap_46[31:16]) +
	 14'sd 8116 * $signed(input_fmap_46[47:32]) +
	 16'sd 27495 * $signed(input_fmap_46[63:48]) +
	 16'sd 18853 * $signed(input_fmap_46[79:64]) +
	 15'sd 14314 * $signed(input_fmap_46[95:80]) +
	 15'sd 10615 * $signed(input_fmap_46[111:96]) +
	 12'sd 1297 * $signed(input_fmap_46[127:112]) +
	 15'sd 15576 * $signed(input_fmap_46[143:128]);

logic signed [31:0] dw_conv_mac_47;
assign dw_conv_mac_47 = 
	 16'sd 18773 * $signed(input_fmap_47[15:0]) +
	 16'sd 23047 * $signed(input_fmap_47[31:16]) +
	 16'sd 31063 * $signed(input_fmap_47[47:32]) +
	 13'sd 2429 * $signed(input_fmap_47[63:48]) +
	 16'sd 25104 * $signed(input_fmap_47[79:64]) +
	 14'sd 6661 * $signed(input_fmap_47[95:80]) +
	 16'sd 21812 * $signed(input_fmap_47[111:96]) +
	 9'sd 139 * $signed(input_fmap_47[127:112]) +
	 15'sd 13486 * $signed(input_fmap_47[143:128]);

logic signed [31:0] dw_conv_mac_48;
assign dw_conv_mac_48 = 
	 16'sd 19697 * $signed(input_fmap_48[15:0]) +
	 16'sd 20716 * $signed(input_fmap_48[31:16]) +
	 16'sd 21181 * $signed(input_fmap_48[47:32]) +
	 16'sd 32737 * $signed(input_fmap_48[63:48]) +
	 15'sd 15377 * $signed(input_fmap_48[79:64]) +
	 15'sd 13989 * $signed(input_fmap_48[95:80]) +
	 13'sd 3896 * $signed(input_fmap_48[111:96]) +
	 16'sd 28293 * $signed(input_fmap_48[127:112]) +
	 14'sd 8032 * $signed(input_fmap_48[143:128]);

logic signed [31:0] dw_conv_mac_49;
assign dw_conv_mac_49 = 
	 15'sd 13533 * $signed(input_fmap_49[15:0]) +
	 16'sd 19536 * $signed(input_fmap_49[31:16]) +
	 12'sd 1132 * $signed(input_fmap_49[47:32]) +
	 15'sd 13302 * $signed(input_fmap_49[63:48]) +
	 14'sd 7710 * $signed(input_fmap_49[79:64]) +
	 15'sd 9764 * $signed(input_fmap_49[95:80]) +
	 16'sd 18770 * $signed(input_fmap_49[111:96]) +
	 15'sd 13635 * $signed(input_fmap_49[127:112]) +
	 16'sd 32002 * $signed(input_fmap_49[143:128]);

logic signed [31:0] dw_conv_mac_50;
assign dw_conv_mac_50 = 
	 14'sd 6970 * $signed(input_fmap_50[15:0]) +
	 14'sd 5950 * $signed(input_fmap_50[31:16]) +
	 15'sd 8338 * $signed(input_fmap_50[47:32]) +
	 14'sd 7906 * $signed(input_fmap_50[63:48]) +
	 16'sd 18664 * $signed(input_fmap_50[79:64]) +
	 12'sd 1388 * $signed(input_fmap_50[95:80]) +
	 16'sd 19722 * $signed(input_fmap_50[111:96]) +
	 16'sd 31898 * $signed(input_fmap_50[127:112]) +
	 14'sd 4970 * $signed(input_fmap_50[143:128]);

logic signed [31:0] dw_conv_mac_51;
assign dw_conv_mac_51 = 
	 14'sd 4682 * $signed(input_fmap_51[15:0]) +
	 16'sd 27959 * $signed(input_fmap_51[31:16]) +
	 16'sd 29378 * $signed(input_fmap_51[47:32]) +
	 15'sd 11720 * $signed(input_fmap_51[63:48]) +
	 16'sd 30974 * $signed(input_fmap_51[79:64]) +
	 16'sd 17837 * $signed(input_fmap_51[95:80]) +
	 16'sd 30328 * $signed(input_fmap_51[111:96]) +
	 12'sd 1684 * $signed(input_fmap_51[127:112]) +
	 16'sd 31470 * $signed(input_fmap_51[143:128]);

logic signed [31:0] dw_conv_mac_52;
assign dw_conv_mac_52 = 
	 16'sd 25572 * $signed(input_fmap_52[15:0]) +
	 15'sd 9487 * $signed(input_fmap_52[31:16]) +
	 16'sd 21298 * $signed(input_fmap_52[47:32]) +
	 14'sd 4669 * $signed(input_fmap_52[63:48]) +
	 15'sd 15529 * $signed(input_fmap_52[79:64]) +
	 15'sd 9874 * $signed(input_fmap_52[95:80]) +
	 16'sd 30576 * $signed(input_fmap_52[111:96]) +
	 16'sd 18072 * $signed(input_fmap_52[127:112]) +
	 16'sd 17402 * $signed(input_fmap_52[143:128]);

logic signed [31:0] dw_conv_mac_53;
assign dw_conv_mac_53 = 
	 14'sd 6174 * $signed(input_fmap_53[15:0]) +
	 16'sd 29632 * $signed(input_fmap_53[31:16]) +
	 12'sd 1278 * $signed(input_fmap_53[47:32]) +
	 14'sd 5018 * $signed(input_fmap_53[63:48]) +
	 8'sd 80 * $signed(input_fmap_53[79:64]) +
	 16'sd 19816 * $signed(input_fmap_53[95:80]) +
	 15'sd 11356 * $signed(input_fmap_53[111:96]) +
	 14'sd 5750 * $signed(input_fmap_53[127:112]) +
	 16'sd 23854 * $signed(input_fmap_53[143:128]);

logic signed [31:0] dw_conv_mac_54;
assign dw_conv_mac_54 = 
	 16'sd 27966 * $signed(input_fmap_54[15:0]) +
	 15'sd 13188 * $signed(input_fmap_54[31:16]) +
	 15'sd 11710 * $signed(input_fmap_54[47:32]) +
	 15'sd 11201 * $signed(input_fmap_54[63:48]) +
	 16'sd 23020 * $signed(input_fmap_54[79:64]) +
	 16'sd 26708 * $signed(input_fmap_54[95:80]) +
	 16'sd 19265 * $signed(input_fmap_54[111:96]) +
	 16'sd 24782 * $signed(input_fmap_54[127:112]) +
	 10'sd 262 * $signed(input_fmap_54[143:128]);

logic signed [31:0] dw_conv_mac_55;
assign dw_conv_mac_55 = 
	 16'sd 26452 * $signed(input_fmap_55[15:0]) +
	 15'sd 15392 * $signed(input_fmap_55[31:16]) +
	 14'sd 6467 * $signed(input_fmap_55[47:32]) +
	 16'sd 26110 * $signed(input_fmap_55[63:48]) +
	 15'sd 10751 * $signed(input_fmap_55[79:64]) +
	 16'sd 30967 * $signed(input_fmap_55[95:80]) +
	 14'sd 6288 * $signed(input_fmap_55[111:96]) +
	 16'sd 27073 * $signed(input_fmap_55[127:112]) +
	 13'sd 2781 * $signed(input_fmap_55[143:128]);

logic signed [31:0] dw_conv_mac_56;
assign dw_conv_mac_56 = 
	 16'sd 30654 * $signed(input_fmap_56[15:0]) +
	 15'sd 15731 * $signed(input_fmap_56[31:16]) +
	 16'sd 22493 * $signed(input_fmap_56[47:32]) +
	 11'sd 942 * $signed(input_fmap_56[63:48]) +
	 13'sd 2417 * $signed(input_fmap_56[79:64]) +
	 15'sd 14175 * $signed(input_fmap_56[95:80]) +
	 16'sd 21647 * $signed(input_fmap_56[111:96]) +
	 16'sd 24965 * $signed(input_fmap_56[127:112]) +
	 16'sd 27022 * $signed(input_fmap_56[143:128]);

logic signed [31:0] dw_conv_mac_57;
assign dw_conv_mac_57 = 
	 13'sd 2123 * $signed(input_fmap_57[15:0]) +
	 14'sd 6057 * $signed(input_fmap_57[31:16]) +
	 16'sd 17960 * $signed(input_fmap_57[47:32]) +
	 14'sd 4529 * $signed(input_fmap_57[63:48]) +
	 15'sd 11255 * $signed(input_fmap_57[79:64]) +
	 16'sd 21525 * $signed(input_fmap_57[95:80]) +
	 16'sd 28048 * $signed(input_fmap_57[111:96]) +
	 15'sd 10210 * $signed(input_fmap_57[127:112]) +
	 16'sd 16743 * $signed(input_fmap_57[143:128]);

logic signed [31:0] dw_conv_mac_58;
assign dw_conv_mac_58 = 
	 16'sd 27638 * $signed(input_fmap_58[15:0]) +
	 16'sd 19677 * $signed(input_fmap_58[31:16]) +
	 15'sd 13846 * $signed(input_fmap_58[47:32]) +
	 11'sd 565 * $signed(input_fmap_58[63:48]) +
	 16'sd 16773 * $signed(input_fmap_58[79:64]) +
	 14'sd 5053 * $signed(input_fmap_58[95:80]) +
	 16'sd 16431 * $signed(input_fmap_58[111:96]) +
	 10'sd 476 * $signed(input_fmap_58[127:112]) +
	 16'sd 18099 * $signed(input_fmap_58[143:128]);

logic signed [31:0] dw_conv_mac_59;
assign dw_conv_mac_59 = 
	 16'sd 25786 * $signed(input_fmap_59[15:0]) +
	 16'sd 30767 * $signed(input_fmap_59[31:16]) +
	 14'sd 7551 * $signed(input_fmap_59[47:32]) +
	 13'sd 3565 * $signed(input_fmap_59[63:48]) +
	 15'sd 15036 * $signed(input_fmap_59[79:64]) +
	 15'sd 13794 * $signed(input_fmap_59[95:80]) +
	 16'sd 20900 * $signed(input_fmap_59[111:96]) +
	 16'sd 29297 * $signed(input_fmap_59[127:112]) +
	 14'sd 5388 * $signed(input_fmap_59[143:128]);

logic signed [31:0] dw_conv_mac_60;
assign dw_conv_mac_60 = 
	 15'sd 15208 * $signed(input_fmap_60[15:0]) +
	 16'sd 30418 * $signed(input_fmap_60[31:16]) +
	 15'sd 8545 * $signed(input_fmap_60[47:32]) +
	 14'sd 6246 * $signed(input_fmap_60[63:48]) +
	 13'sd 3501 * $signed(input_fmap_60[79:64]) +
	 16'sd 24454 * $signed(input_fmap_60[95:80]) +
	 16'sd 26336 * $signed(input_fmap_60[111:96]) +
	 16'sd 29800 * $signed(input_fmap_60[127:112]) +
	 16'sd 31166 * $signed(input_fmap_60[143:128]);

logic signed [31:0] dw_conv_mac_61;
assign dw_conv_mac_61 = 
	 15'sd 10118 * $signed(input_fmap_61[15:0]) +
	 15'sd 11052 * $signed(input_fmap_61[31:16]) +
	 16'sd 30573 * $signed(input_fmap_61[47:32]) +
	 14'sd 4570 * $signed(input_fmap_61[63:48]) +
	 16'sd 23137 * $signed(input_fmap_61[79:64]) +
	 15'sd 13449 * $signed(input_fmap_61[95:80]) +
	 16'sd 22212 * $signed(input_fmap_61[111:96]) +
	 14'sd 4758 * $signed(input_fmap_61[127:112]) +
	 15'sd 11199 * $signed(input_fmap_61[143:128]);

logic signed [31:0] dw_conv_mac_62;
assign dw_conv_mac_62 = 
	 16'sd 23172 * $signed(input_fmap_62[15:0]) +
	 16'sd 24921 * $signed(input_fmap_62[31:16]) +
	 16'sd 17101 * $signed(input_fmap_62[47:32]) +
	 15'sd 8556 * $signed(input_fmap_62[63:48]) +
	 16'sd 31529 * $signed(input_fmap_62[79:64]) +
	 15'sd 9031 * $signed(input_fmap_62[95:80]) +
	 15'sd 13937 * $signed(input_fmap_62[111:96]) +
	 16'sd 21313 * $signed(input_fmap_62[127:112]) +
	 12'sd 1695 * $signed(input_fmap_62[143:128]);

logic signed [31:0] dw_conv_mac_63;
assign dw_conv_mac_63 = 
	 16'sd 30597 * $signed(input_fmap_63[15:0]) +
	 16'sd 21593 * $signed(input_fmap_63[31:16]) +
	 16'sd 28623 * $signed(input_fmap_63[47:32]) +
	 16'sd 26909 * $signed(input_fmap_63[63:48]) +
	 16'sd 24797 * $signed(input_fmap_63[79:64]) +
	 16'sd 20598 * $signed(input_fmap_63[95:80]) +
	 16'sd 20084 * $signed(input_fmap_63[111:96]) +
	 14'sd 8028 * $signed(input_fmap_63[127:112]) +
	 15'sd 10250 * $signed(input_fmap_63[143:128]);

logic signed [31:0] dw_conv_mac_64;
assign dw_conv_mac_64 = 
	 14'sd 5372 * $signed(input_fmap_64[15:0]) +
	 14'sd 4453 * $signed(input_fmap_64[31:16]) +
	 16'sd 32204 * $signed(input_fmap_64[47:32]) +
	 15'sd 13949 * $signed(input_fmap_64[63:48]) +
	 16'sd 31379 * $signed(input_fmap_64[79:64]) +
	 16'sd 31060 * $signed(input_fmap_64[95:80]) +
	 16'sd 25489 * $signed(input_fmap_64[111:96]) +
	 16'sd 20437 * $signed(input_fmap_64[127:112]) +
	 9'sd 200 * $signed(input_fmap_64[143:128]);

logic signed [31:0] dw_conv_mac_65;
assign dw_conv_mac_65 = 
	 16'sd 30056 * $signed(input_fmap_65[15:0]) +
	 16'sd 18089 * $signed(input_fmap_65[31:16]) +
	 14'sd 4376 * $signed(input_fmap_65[47:32]) +
	 15'sd 9153 * $signed(input_fmap_65[63:48]) +
	 16'sd 21600 * $signed(input_fmap_65[79:64]) +
	 14'sd 6853 * $signed(input_fmap_65[95:80]) +
	 14'sd 7184 * $signed(input_fmap_65[111:96]) +
	 16'sd 23313 * $signed(input_fmap_65[127:112]) +
	 12'sd 1924 * $signed(input_fmap_65[143:128]);

logic signed [31:0] dw_conv_mac_66;
assign dw_conv_mac_66 = 
	 15'sd 12334 * $signed(input_fmap_66[15:0]) +
	 16'sd 28275 * $signed(input_fmap_66[31:16]) +
	 15'sd 14665 * $signed(input_fmap_66[47:32]) +
	 16'sd 27493 * $signed(input_fmap_66[63:48]) +
	 15'sd 11388 * $signed(input_fmap_66[79:64]) +
	 16'sd 25189 * $signed(input_fmap_66[95:80]) +
	 13'sd 3143 * $signed(input_fmap_66[111:96]) +
	 16'sd 31873 * $signed(input_fmap_66[127:112]) +
	 16'sd 25711 * $signed(input_fmap_66[143:128]);

logic signed [31:0] dw_conv_mac_67;
assign dw_conv_mac_67 = 
	 16'sd 24851 * $signed(input_fmap_67[15:0]) +
	 15'sd 8876 * $signed(input_fmap_67[31:16]) +
	 16'sd 26163 * $signed(input_fmap_67[47:32]) +
	 16'sd 27731 * $signed(input_fmap_67[63:48]) +
	 16'sd 16502 * $signed(input_fmap_67[79:64]) +
	 16'sd 24389 * $signed(input_fmap_67[95:80]) +
	 13'sd 2516 * $signed(input_fmap_67[111:96]) +
	 16'sd 23337 * $signed(input_fmap_67[127:112]) +
	 16'sd 28816 * $signed(input_fmap_67[143:128]);

logic signed [31:0] dw_conv_mac_68;
assign dw_conv_mac_68 = 
	 16'sd 18170 * $signed(input_fmap_68[15:0]) +
	 16'sd 21756 * $signed(input_fmap_68[31:16]) +
	 16'sd 17143 * $signed(input_fmap_68[47:32]) +
	 16'sd 16918 * $signed(input_fmap_68[63:48]) +
	 12'sd 1982 * $signed(input_fmap_68[79:64]) +
	 10'sd 271 * $signed(input_fmap_68[95:80]) +
	 15'sd 13423 * $signed(input_fmap_68[111:96]) +
	 13'sd 3475 * $signed(input_fmap_68[127:112]) +
	 15'sd 11348 * $signed(input_fmap_68[143:128]);

logic signed [31:0] dw_conv_mac_69;
assign dw_conv_mac_69 = 
	 15'sd 12546 * $signed(input_fmap_69[15:0]) +
	 16'sd 17005 * $signed(input_fmap_69[31:16]) +
	 15'sd 10553 * $signed(input_fmap_69[47:32]) +
	 16'sd 20526 * $signed(input_fmap_69[63:48]) +
	 12'sd 1951 * $signed(input_fmap_69[79:64]) +
	 16'sd 30788 * $signed(input_fmap_69[95:80]) +
	 11'sd 698 * $signed(input_fmap_69[111:96]) +
	 15'sd 11390 * $signed(input_fmap_69[127:112]) +
	 16'sd 30191 * $signed(input_fmap_69[143:128]);

logic signed [31:0] dw_conv_mac_70;
assign dw_conv_mac_70 = 
	 15'sd 13840 * $signed(input_fmap_70[15:0]) +
	 16'sd 22645 * $signed(input_fmap_70[31:16]) +
	 16'sd 31194 * $signed(input_fmap_70[47:32]) +
	 16'sd 23267 * $signed(input_fmap_70[63:48]) +
	 16'sd 26306 * $signed(input_fmap_70[79:64]) +
	 16'sd 26505 * $signed(input_fmap_70[95:80]) +
	 16'sd 23787 * $signed(input_fmap_70[111:96]) +
	 13'sd 2372 * $signed(input_fmap_70[127:112]) +
	 11'sd 941 * $signed(input_fmap_70[143:128]);

logic signed [31:0] dw_conv_mac_71;
assign dw_conv_mac_71 = 
	 15'sd 10392 * $signed(input_fmap_71[15:0]) +
	 15'sd 11869 * $signed(input_fmap_71[31:16]) +
	 15'sd 12983 * $signed(input_fmap_71[47:32]) +
	 16'sd 28679 * $signed(input_fmap_71[63:48]) +
	 16'sd 31199 * $signed(input_fmap_71[79:64]) +
	 15'sd 11745 * $signed(input_fmap_71[95:80]) +
	 16'sd 19244 * $signed(input_fmap_71[111:96]) +
	 14'sd 6380 * $signed(input_fmap_71[127:112]) +
	 15'sd 15152 * $signed(input_fmap_71[143:128]);

logic signed [31:0] dw_conv_mac_72;
assign dw_conv_mac_72 = 
	 15'sd 13121 * $signed(input_fmap_72[15:0]) +
	 16'sd 23031 * $signed(input_fmap_72[31:16]) +
	 16'sd 17654 * $signed(input_fmap_72[47:32]) +
	 16'sd 27366 * $signed(input_fmap_72[63:48]) +
	 15'sd 10282 * $signed(input_fmap_72[79:64]) +
	 15'sd 14308 * $signed(input_fmap_72[95:80]) +
	 16'sd 27961 * $signed(input_fmap_72[111:96]) +
	 12'sd 1881 * $signed(input_fmap_72[127:112]) +
	 16'sd 23262 * $signed(input_fmap_72[143:128]);

logic signed [31:0] dw_conv_mac_73;
assign dw_conv_mac_73 = 
	 16'sd 20785 * $signed(input_fmap_73[15:0]) +
	 15'sd 15691 * $signed(input_fmap_73[31:16]) +
	 14'sd 4262 * $signed(input_fmap_73[47:32]) +
	 11'sd 973 * $signed(input_fmap_73[63:48]) +
	 13'sd 2849 * $signed(input_fmap_73[79:64]) +
	 15'sd 16030 * $signed(input_fmap_73[95:80]) +
	 10'sd 413 * $signed(input_fmap_73[111:96]) +
	 15'sd 15122 * $signed(input_fmap_73[127:112]) +
	 16'sd 25569 * $signed(input_fmap_73[143:128]);

logic signed [31:0] dw_conv_mac_74;
assign dw_conv_mac_74 = 
	 12'sd 1094 * $signed(input_fmap_74[15:0]) +
	 16'sd 25820 * $signed(input_fmap_74[31:16]) +
	 15'sd 13174 * $signed(input_fmap_74[47:32]) +
	 16'sd 17592 * $signed(input_fmap_74[63:48]) +
	 13'sd 2999 * $signed(input_fmap_74[79:64]) +
	 16'sd 26860 * $signed(input_fmap_74[95:80]) +
	 16'sd 28206 * $signed(input_fmap_74[111:96]) +
	 10'sd 277 * $signed(input_fmap_74[127:112]) +
	 14'sd 6182 * $signed(input_fmap_74[143:128]);

logic signed [31:0] dw_conv_mac_75;
assign dw_conv_mac_75 = 
	 15'sd 13688 * $signed(input_fmap_75[15:0]) +
	 16'sd 16568 * $signed(input_fmap_75[31:16]) +
	 16'sd 32198 * $signed(input_fmap_75[47:32]) +
	 14'sd 4795 * $signed(input_fmap_75[63:48]) +
	 16'sd 17003 * $signed(input_fmap_75[79:64]) +
	 16'sd 19197 * $signed(input_fmap_75[95:80]) +
	 15'sd 11767 * $signed(input_fmap_75[111:96]) +
	 16'sd 32079 * $signed(input_fmap_75[127:112]) +
	 16'sd 21242 * $signed(input_fmap_75[143:128]);

logic signed [31:0] dw_conv_mac_76;
assign dw_conv_mac_76 = 
	 16'sd 18996 * $signed(input_fmap_76[15:0]) +
	 15'sd 15489 * $signed(input_fmap_76[31:16]) +
	 15'sd 15975 * $signed(input_fmap_76[47:32]) +
	 16'sd 25374 * $signed(input_fmap_76[63:48]) +
	 15'sd 11122 * $signed(input_fmap_76[79:64]) +
	 16'sd 21806 * $signed(input_fmap_76[95:80]) +
	 14'sd 4904 * $signed(input_fmap_76[111:96]) +
	 16'sd 24508 * $signed(input_fmap_76[127:112]) +
	 16'sd 29744 * $signed(input_fmap_76[143:128]);

logic signed [31:0] dw_conv_mac_77;
assign dw_conv_mac_77 = 
	 15'sd 13416 * $signed(input_fmap_77[15:0]) +
	 15'sd 9305 * $signed(input_fmap_77[31:16]) +
	 13'sd 2655 * $signed(input_fmap_77[47:32]) +
	 16'sd 32715 * $signed(input_fmap_77[63:48]) +
	 15'sd 8800 * $signed(input_fmap_77[79:64]) +
	 16'sd 19187 * $signed(input_fmap_77[95:80]) +
	 16'sd 29294 * $signed(input_fmap_77[111:96]) +
	 16'sd 24858 * $signed(input_fmap_77[127:112]) +
	 16'sd 23397 * $signed(input_fmap_77[143:128]);

logic signed [31:0] dw_conv_mac_78;
assign dw_conv_mac_78 = 
	 16'sd 22339 * $signed(input_fmap_78[15:0]) +
	 13'sd 3804 * $signed(input_fmap_78[31:16]) +
	 16'sd 16481 * $signed(input_fmap_78[47:32]) +
	 16'sd 23479 * $signed(input_fmap_78[63:48]) +
	 13'sd 3230 * $signed(input_fmap_78[79:64]) +
	 16'sd 23297 * $signed(input_fmap_78[95:80]) +
	 15'sd 12859 * $signed(input_fmap_78[111:96]) +
	 15'sd 13834 * $signed(input_fmap_78[127:112]) +
	 15'sd 15539 * $signed(input_fmap_78[143:128]);

logic signed [31:0] dw_conv_mac_79;
assign dw_conv_mac_79 = 
	 10'sd 471 * $signed(input_fmap_79[15:0]) +
	 16'sd 24339 * $signed(input_fmap_79[31:16]) +
	 16'sd 18480 * $signed(input_fmap_79[47:32]) +
	 13'sd 3867 * $signed(input_fmap_79[63:48]) +
	 15'sd 15629 * $signed(input_fmap_79[79:64]) +
	 16'sd 30109 * $signed(input_fmap_79[95:80]) +
	 15'sd 10382 * $signed(input_fmap_79[111:96]) +
	 16'sd 31189 * $signed(input_fmap_79[127:112]) +
	 16'sd 19058 * $signed(input_fmap_79[143:128]);

logic signed [31:0] dw_conv_mac_80;
assign dw_conv_mac_80 = 
	 16'sd 31081 * $signed(input_fmap_80[15:0]) +
	 15'sd 9585 * $signed(input_fmap_80[31:16]) +
	 14'sd 7161 * $signed(input_fmap_80[47:32]) +
	 15'sd 14389 * $signed(input_fmap_80[63:48]) +
	 16'sd 20803 * $signed(input_fmap_80[79:64]) +
	 15'sd 10144 * $signed(input_fmap_80[95:80]) +
	 15'sd 9986 * $signed(input_fmap_80[111:96]) +
	 16'sd 28772 * $signed(input_fmap_80[127:112]) +
	 16'sd 17009 * $signed(input_fmap_80[143:128]);

logic signed [31:0] dw_conv_mac_81;
assign dw_conv_mac_81 = 
	 16'sd 30920 * $signed(input_fmap_81[15:0]) +
	 16'sd 17721 * $signed(input_fmap_81[31:16]) +
	 15'sd 15266 * $signed(input_fmap_81[47:32]) +
	 16'sd 23998 * $signed(input_fmap_81[63:48]) +
	 10'sd 270 * $signed(input_fmap_81[79:64]) +
	 15'sd 11450 * $signed(input_fmap_81[95:80]) +
	 16'sd 27383 * $signed(input_fmap_81[111:96]) +
	 16'sd 29211 * $signed(input_fmap_81[127:112]) +
	 16'sd 22936 * $signed(input_fmap_81[143:128]);

logic signed [31:0] dw_conv_mac_82;
assign dw_conv_mac_82 = 
	 16'sd 28600 * $signed(input_fmap_82[15:0]) +
	 16'sd 31750 * $signed(input_fmap_82[31:16]) +
	 15'sd 16098 * $signed(input_fmap_82[47:32]) +
	 15'sd 8966 * $signed(input_fmap_82[63:48]) +
	 16'sd 17087 * $signed(input_fmap_82[79:64]) +
	 16'sd 22489 * $signed(input_fmap_82[95:80]) +
	 16'sd 26906 * $signed(input_fmap_82[111:96]) +
	 15'sd 12266 * $signed(input_fmap_82[127:112]) +
	 13'sd 2187 * $signed(input_fmap_82[143:128]);

logic signed [31:0] dw_conv_mac_83;
assign dw_conv_mac_83 = 
	 13'sd 3086 * $signed(input_fmap_83[15:0]) +
	 12'sd 1777 * $signed(input_fmap_83[31:16]) +
	 16'sd 30236 * $signed(input_fmap_83[47:32]) +
	 16'sd 26996 * $signed(input_fmap_83[63:48]) +
	 15'sd 14387 * $signed(input_fmap_83[79:64]) +
	 16'sd 18218 * $signed(input_fmap_83[95:80]) +
	 16'sd 17736 * $signed(input_fmap_83[111:96]) +
	 15'sd 11092 * $signed(input_fmap_83[127:112]) +
	 15'sd 13102 * $signed(input_fmap_83[143:128]);

logic signed [31:0] dw_conv_mac_84;
assign dw_conv_mac_84 = 
	 15'sd 13221 * $signed(input_fmap_84[15:0]) +
	 14'sd 6672 * $signed(input_fmap_84[31:16]) +
	 16'sd 27964 * $signed(input_fmap_84[47:32]) +
	 16'sd 31306 * $signed(input_fmap_84[63:48]) +
	 16'sd 20985 * $signed(input_fmap_84[79:64]) +
	 16'sd 23583 * $signed(input_fmap_84[95:80]) +
	 15'sd 14719 * $signed(input_fmap_84[111:96]) +
	 14'sd 7216 * $signed(input_fmap_84[127:112]) +
	 16'sd 29831 * $signed(input_fmap_84[143:128]);

logic signed [31:0] dw_conv_mac_85;
assign dw_conv_mac_85 = 
	 15'sd 16094 * $signed(input_fmap_85[15:0]) +
	 14'sd 5632 * $signed(input_fmap_85[31:16]) +
	 14'sd 5476 * $signed(input_fmap_85[47:32]) +
	 13'sd 3049 * $signed(input_fmap_85[63:48]) +
	 15'sd 13280 * $signed(input_fmap_85[79:64]) +
	 16'sd 31515 * $signed(input_fmap_85[95:80]) +
	 15'sd 16055 * $signed(input_fmap_85[111:96]) +
	 16'sd 25302 * $signed(input_fmap_85[127:112]) +
	 15'sd 15411 * $signed(input_fmap_85[143:128]);

logic signed [31:0] dw_conv_mac_86;
assign dw_conv_mac_86 = 
	 15'sd 12688 * $signed(input_fmap_86[15:0]) +
	 16'sd 22076 * $signed(input_fmap_86[31:16]) +
	 12'sd 1184 * $signed(input_fmap_86[47:32]) +
	 15'sd 9004 * $signed(input_fmap_86[63:48]) +
	 16'sd 32267 * $signed(input_fmap_86[79:64]) +
	 16'sd 18679 * $signed(input_fmap_86[95:80]) +
	 15'sd 10855 * $signed(input_fmap_86[111:96]) +
	 16'sd 18272 * $signed(input_fmap_86[127:112]) +
	 16'sd 17712 * $signed(input_fmap_86[143:128]);

logic signed [31:0] dw_conv_mac_87;
assign dw_conv_mac_87 = 
	 15'sd 15679 * $signed(input_fmap_87[15:0]) +
	 11'sd 1014 * $signed(input_fmap_87[31:16]) +
	 15'sd 14148 * $signed(input_fmap_87[47:32]) +
	 16'sd 16420 * $signed(input_fmap_87[63:48]) +
	 16'sd 26697 * $signed(input_fmap_87[79:64]) +
	 14'sd 5305 * $signed(input_fmap_87[95:80]) +
	 16'sd 20104 * $signed(input_fmap_87[111:96]) +
	 16'sd 16963 * $signed(input_fmap_87[127:112]) +
	 15'sd 14933 * $signed(input_fmap_87[143:128]);

logic signed [31:0] dw_conv_mac_88;
assign dw_conv_mac_88 = 
	 16'sd 21566 * $signed(input_fmap_88[15:0]) +
	 14'sd 5627 * $signed(input_fmap_88[31:16]) +
	 10'sd 332 * $signed(input_fmap_88[47:32]) +
	 16'sd 29693 * $signed(input_fmap_88[63:48]) +
	 15'sd 15395 * $signed(input_fmap_88[79:64]) +
	 15'sd 13522 * $signed(input_fmap_88[95:80]) +
	 11'sd 932 * $signed(input_fmap_88[111:96]) +
	 16'sd 26371 * $signed(input_fmap_88[127:112]) +
	 16'sd 24978 * $signed(input_fmap_88[143:128]);

logic signed [31:0] dw_conv_mac_89;
assign dw_conv_mac_89 = 
	 16'sd 28871 * $signed(input_fmap_89[15:0]) +
	 14'sd 6851 * $signed(input_fmap_89[31:16]) +
	 15'sd 13064 * $signed(input_fmap_89[47:32]) +
	 11'sd 772 * $signed(input_fmap_89[63:48]) +
	 15'sd 12865 * $signed(input_fmap_89[79:64]) +
	 15'sd 13087 * $signed(input_fmap_89[95:80]) +
	 14'sd 6257 * $signed(input_fmap_89[111:96]) +
	 16'sd 24991 * $signed(input_fmap_89[127:112]) +
	 15'sd 12109 * $signed(input_fmap_89[143:128]);

logic signed [31:0] dw_conv_mac_90;
assign dw_conv_mac_90 = 
	 16'sd 24990 * $signed(input_fmap_90[15:0]) +
	 15'sd 12959 * $signed(input_fmap_90[31:16]) +
	 16'sd 22862 * $signed(input_fmap_90[47:32]) +
	 16'sd 29147 * $signed(input_fmap_90[63:48]) +
	 16'sd 21050 * $signed(input_fmap_90[79:64]) +
	 15'sd 13851 * $signed(input_fmap_90[95:80]) +
	 16'sd 26881 * $signed(input_fmap_90[111:96]) +
	 15'sd 13606 * $signed(input_fmap_90[127:112]) +
	 16'sd 23250 * $signed(input_fmap_90[143:128]);

logic signed [31:0] dw_conv_mac_91;
assign dw_conv_mac_91 = 
	 14'sd 4215 * $signed(input_fmap_91[15:0]) +
	 15'sd 9000 * $signed(input_fmap_91[31:16]) +
	 15'sd 14581 * $signed(input_fmap_91[47:32]) +
	 16'sd 19255 * $signed(input_fmap_91[63:48]) +
	 16'sd 30665 * $signed(input_fmap_91[79:64]) +
	 15'sd 9804 * $signed(input_fmap_91[95:80]) +
	 15'sd 8679 * $signed(input_fmap_91[111:96]) +
	 15'sd 15634 * $signed(input_fmap_91[127:112]) +
	 14'sd 6992 * $signed(input_fmap_91[143:128]);

logic signed [31:0] dw_conv_mac_92;
assign dw_conv_mac_92 = 
	 16'sd 19587 * $signed(input_fmap_92[15:0]) +
	 13'sd 2218 * $signed(input_fmap_92[31:16]) +
	 15'sd 11497 * $signed(input_fmap_92[47:32]) +
	 15'sd 13413 * $signed(input_fmap_92[63:48]) +
	 15'sd 12543 * $signed(input_fmap_92[79:64]) +
	 16'sd 27613 * $signed(input_fmap_92[95:80]) +
	 16'sd 20533 * $signed(input_fmap_92[111:96]) +
	 15'sd 13870 * $signed(input_fmap_92[127:112]) +
	 12'sd 1966 * $signed(input_fmap_92[143:128]);

logic signed [31:0] dw_conv_mac_93;
assign dw_conv_mac_93 = 
	 15'sd 13124 * $signed(input_fmap_93[15:0]) +
	 14'sd 4444 * $signed(input_fmap_93[31:16]) +
	 13'sd 3740 * $signed(input_fmap_93[47:32]) +
	 16'sd 19449 * $signed(input_fmap_93[63:48]) +
	 16'sd 29380 * $signed(input_fmap_93[79:64]) +
	 15'sd 13869 * $signed(input_fmap_93[95:80]) +
	 12'sd 1187 * $signed(input_fmap_93[111:96]) +
	 15'sd 14314 * $signed(input_fmap_93[127:112]) +
	 14'sd 7948 * $signed(input_fmap_93[143:128]);

logic signed [31:0] dw_conv_mac_94;
assign dw_conv_mac_94 = 
	 16'sd 30639 * $signed(input_fmap_94[15:0]) +
	 14'sd 7918 * $signed(input_fmap_94[31:16]) +
	 16'sd 31628 * $signed(input_fmap_94[47:32]) +
	 12'sd 1760 * $signed(input_fmap_94[63:48]) +
	 14'sd 5267 * $signed(input_fmap_94[79:64]) +
	 16'sd 32358 * $signed(input_fmap_94[95:80]) +
	 14'sd 4235 * $signed(input_fmap_94[111:96]) +
	 16'sd 18980 * $signed(input_fmap_94[127:112]) +
	 16'sd 22263 * $signed(input_fmap_94[143:128]);

logic signed [31:0] dw_conv_mac_95;
assign dw_conv_mac_95 = 
	 16'sd 21136 * $signed(input_fmap_95[15:0]) +
	 16'sd 24414 * $signed(input_fmap_95[31:16]) +
	 14'sd 6114 * $signed(input_fmap_95[47:32]) +
	 16'sd 18501 * $signed(input_fmap_95[63:48]) +
	 16'sd 22940 * $signed(input_fmap_95[79:64]) +
	 15'sd 12740 * $signed(input_fmap_95[95:80]) +
	 16'sd 23509 * $signed(input_fmap_95[111:96]) +
	 16'sd 30073 * $signed(input_fmap_95[127:112]) +
	 16'sd 28498 * $signed(input_fmap_95[143:128]);

logic signed [31:0] dw_conv_mac_96;
assign dw_conv_mac_96 = 
	 13'sd 2973 * $signed(input_fmap_96[15:0]) +
	 14'sd 5366 * $signed(input_fmap_96[31:16]) +
	 16'sd 27858 * $signed(input_fmap_96[47:32]) +
	 16'sd 21626 * $signed(input_fmap_96[63:48]) +
	 16'sd 19050 * $signed(input_fmap_96[79:64]) +
	 16'sd 27641 * $signed(input_fmap_96[95:80]) +
	 16'sd 16804 * $signed(input_fmap_96[111:96]) +
	 14'sd 5650 * $signed(input_fmap_96[127:112]) +
	 15'sd 13206 * $signed(input_fmap_96[143:128]);

logic signed [31:0] dw_conv_mac_97;
assign dw_conv_mac_97 = 
	 13'sd 2914 * $signed(input_fmap_97[15:0]) +
	 11'sd 612 * $signed(input_fmap_97[31:16]) +
	 16'sd 18313 * $signed(input_fmap_97[47:32]) +
	 16'sd 19011 * $signed(input_fmap_97[63:48]) +
	 15'sd 14305 * $signed(input_fmap_97[79:64]) +
	 16'sd 21659 * $signed(input_fmap_97[95:80]) +
	 16'sd 24246 * $signed(input_fmap_97[111:96]) +
	 16'sd 21102 * $signed(input_fmap_97[127:112]) +
	 13'sd 3080 * $signed(input_fmap_97[143:128]);

logic signed [31:0] dw_conv_mac_98;
assign dw_conv_mac_98 = 
	 16'sd 17360 * $signed(input_fmap_98[15:0]) +
	 15'sd 8835 * $signed(input_fmap_98[31:16]) +
	 16'sd 30889 * $signed(input_fmap_98[47:32]) +
	 16'sd 21732 * $signed(input_fmap_98[63:48]) +
	 16'sd 21187 * $signed(input_fmap_98[79:64]) +
	 16'sd 27773 * $signed(input_fmap_98[95:80]) +
	 16'sd 20236 * $signed(input_fmap_98[111:96]) +
	 16'sd 22871 * $signed(input_fmap_98[127:112]) +
	 15'sd 10613 * $signed(input_fmap_98[143:128]);

logic signed [31:0] dw_conv_mac_99;
assign dw_conv_mac_99 = 
	 11'sd 896 * $signed(input_fmap_99[15:0]) +
	 15'sd 15020 * $signed(input_fmap_99[31:16]) +
	 16'sd 30024 * $signed(input_fmap_99[47:32]) +
	 14'sd 6367 * $signed(input_fmap_99[63:48]) +
	 16'sd 24409 * $signed(input_fmap_99[79:64]) +
	 15'sd 8283 * $signed(input_fmap_99[95:80]) +
	 16'sd 19178 * $signed(input_fmap_99[111:96]) +
	 16'sd 27622 * $signed(input_fmap_99[127:112]) +
	 16'sd 21228 * $signed(input_fmap_99[143:128]);

logic signed [31:0] dw_conv_mac_100;
assign dw_conv_mac_100 = 
	 16'sd 20528 * $signed(input_fmap_100[15:0]) +
	 12'sd 1355 * $signed(input_fmap_100[31:16]) +
	 15'sd 11893 * $signed(input_fmap_100[47:32]) +
	 16'sd 32254 * $signed(input_fmap_100[63:48]) +
	 16'sd 31365 * $signed(input_fmap_100[79:64]) +
	 16'sd 23176 * $signed(input_fmap_100[95:80]) +
	 16'sd 28206 * $signed(input_fmap_100[111:96]) +
	 16'sd 26339 * $signed(input_fmap_100[127:112]) +
	 16'sd 28413 * $signed(input_fmap_100[143:128]);

logic signed [31:0] dw_conv_mac_101;
assign dw_conv_mac_101 = 
	 14'sd 4618 * $signed(input_fmap_101[15:0]) +
	 16'sd 28530 * $signed(input_fmap_101[31:16]) +
	 16'sd 30972 * $signed(input_fmap_101[47:32]) +
	 16'sd 27506 * $signed(input_fmap_101[63:48]) +
	 15'sd 10230 * $signed(input_fmap_101[79:64]) +
	 15'sd 10751 * $signed(input_fmap_101[95:80]) +
	 16'sd 20701 * $signed(input_fmap_101[111:96]) +
	 16'sd 25153 * $signed(input_fmap_101[127:112]) +
	 15'sd 11579 * $signed(input_fmap_101[143:128]);

logic signed [31:0] dw_conv_mac_102;
assign dw_conv_mac_102 = 
	 15'sd 10681 * $signed(input_fmap_102[15:0]) +
	 12'sd 1554 * $signed(input_fmap_102[31:16]) +
	 15'sd 8774 * $signed(input_fmap_102[47:32]) +
	 16'sd 26771 * $signed(input_fmap_102[63:48]) +
	 15'sd 8869 * $signed(input_fmap_102[79:64]) +
	 16'sd 19840 * $signed(input_fmap_102[95:80]) +
	 16'sd 22575 * $signed(input_fmap_102[111:96]) +
	 16'sd 20804 * $signed(input_fmap_102[127:112]) +
	 15'sd 12170 * $signed(input_fmap_102[143:128]);

logic signed [31:0] dw_conv_mac_103;
assign dw_conv_mac_103 = 
	 16'sd 17300 * $signed(input_fmap_103[15:0]) +
	 15'sd 14404 * $signed(input_fmap_103[31:16]) +
	 16'sd 21176 * $signed(input_fmap_103[47:32]) +
	 16'sd 25285 * $signed(input_fmap_103[63:48]) +
	 16'sd 26040 * $signed(input_fmap_103[79:64]) +
	 16'sd 27455 * $signed(input_fmap_103[95:80]) +
	 16'sd 22382 * $signed(input_fmap_103[111:96]) +
	 14'sd 8075 * $signed(input_fmap_103[127:112]) +
	 15'sd 10340 * $signed(input_fmap_103[143:128]);

logic signed [31:0] dw_conv_mac_104;
assign dw_conv_mac_104 = 
	 12'sd 1763 * $signed(input_fmap_104[15:0]) +
	 16'sd 19888 * $signed(input_fmap_104[31:16]) +
	 15'sd 14320 * $signed(input_fmap_104[47:32]) +
	 15'sd 12907 * $signed(input_fmap_104[63:48]) +
	 16'sd 30341 * $signed(input_fmap_104[79:64]) +
	 13'sd 2744 * $signed(input_fmap_104[95:80]) +
	 15'sd 9726 * $signed(input_fmap_104[111:96]) +
	 16'sd 17956 * $signed(input_fmap_104[127:112]) +
	 16'sd 29278 * $signed(input_fmap_104[143:128]);

logic signed [31:0] dw_conv_mac_105;
assign dw_conv_mac_105 = 
	 13'sd 3007 * $signed(input_fmap_105[15:0]) +
	 13'sd 3547 * $signed(input_fmap_105[31:16]) +
	 14'sd 5563 * $signed(input_fmap_105[47:32]) +
	 16'sd 21272 * $signed(input_fmap_105[63:48]) +
	 16'sd 28408 * $signed(input_fmap_105[79:64]) +
	 15'sd 12836 * $signed(input_fmap_105[95:80]) +
	 16'sd 26720 * $signed(input_fmap_105[111:96]) +
	 16'sd 25392 * $signed(input_fmap_105[127:112]) +
	 14'sd 5544 * $signed(input_fmap_105[143:128]);

logic signed [31:0] dw_conv_mac_106;
assign dw_conv_mac_106 = 
	 16'sd 25322 * $signed(input_fmap_106[15:0]) +
	 15'sd 12599 * $signed(input_fmap_106[31:16]) +
	 16'sd 28072 * $signed(input_fmap_106[47:32]) +
	 16'sd 17136 * $signed(input_fmap_106[63:48]) +
	 16'sd 25267 * $signed(input_fmap_106[79:64]) +
	 15'sd 8417 * $signed(input_fmap_106[95:80]) +
	 15'sd 10307 * $signed(input_fmap_106[111:96]) +
	 16'sd 32102 * $signed(input_fmap_106[127:112]) +
	 14'sd 6826 * $signed(input_fmap_106[143:128]);

logic signed [31:0] dw_conv_mac_107;
assign dw_conv_mac_107 = 
	 16'sd 24770 * $signed(input_fmap_107[15:0]) +
	 16'sd 28449 * $signed(input_fmap_107[31:16]) +
	 14'sd 7064 * $signed(input_fmap_107[47:32]) +
	 16'sd 18589 * $signed(input_fmap_107[63:48]) +
	 13'sd 2712 * $signed(input_fmap_107[79:64]) +
	 15'sd 12908 * $signed(input_fmap_107[95:80]) +
	 15'sd 12813 * $signed(input_fmap_107[111:96]) +
	 14'sd 6933 * $signed(input_fmap_107[127:112]) +
	 15'sd 11636 * $signed(input_fmap_107[143:128]);

logic signed [31:0] dw_conv_mac_108;
assign dw_conv_mac_108 = 
	 15'sd 13351 * $signed(input_fmap_108[15:0]) +
	 16'sd 17841 * $signed(input_fmap_108[31:16]) +
	 16'sd 20817 * $signed(input_fmap_108[47:32]) +
	 16'sd 31801 * $signed(input_fmap_108[63:48]) +
	 15'sd 14137 * $signed(input_fmap_108[79:64]) +
	 16'sd 28347 * $signed(input_fmap_108[95:80]) +
	 16'sd 24294 * $signed(input_fmap_108[111:96]) +
	 16'sd 23195 * $signed(input_fmap_108[127:112]) +
	 15'sd 8680 * $signed(input_fmap_108[143:128]);

logic signed [31:0] dw_conv_mac_109;
assign dw_conv_mac_109 = 
	 16'sd 17296 * $signed(input_fmap_109[15:0]) +
	 16'sd 20709 * $signed(input_fmap_109[31:16]) +
	 14'sd 6658 * $signed(input_fmap_109[47:32]) +
	 16'sd 22669 * $signed(input_fmap_109[63:48]) +
	 16'sd 30751 * $signed(input_fmap_109[79:64]) +
	 16'sd 23218 * $signed(input_fmap_109[95:80]) +
	 16'sd 25143 * $signed(input_fmap_109[111:96]) +
	 16'sd 29890 * $signed(input_fmap_109[127:112]) +
	 16'sd 31581 * $signed(input_fmap_109[143:128]);

logic signed [31:0] dw_conv_mac_110;
assign dw_conv_mac_110 = 
	 14'sd 4178 * $signed(input_fmap_110[15:0]) +
	 14'sd 7142 * $signed(input_fmap_110[31:16]) +
	 16'sd 17155 * $signed(input_fmap_110[47:32]) +
	 14'sd 7178 * $signed(input_fmap_110[63:48]) +
	 14'sd 7819 * $signed(input_fmap_110[79:64]) +
	 10'sd 375 * $signed(input_fmap_110[95:80]) +
	 16'sd 21849 * $signed(input_fmap_110[111:96]) +
	 16'sd 29909 * $signed(input_fmap_110[127:112]) +
	 10'sd 271 * $signed(input_fmap_110[143:128]);

logic signed [31:0] dw_conv_mac_111;
assign dw_conv_mac_111 = 
	 14'sd 4517 * $signed(input_fmap_111[15:0]) +
	 15'sd 9762 * $signed(input_fmap_111[31:16]) +
	 16'sd 24766 * $signed(input_fmap_111[47:32]) +
	 16'sd 32013 * $signed(input_fmap_111[63:48]) +
	 14'sd 4595 * $signed(input_fmap_111[79:64]) +
	 15'sd 14494 * $signed(input_fmap_111[95:80]) +
	 16'sd 18314 * $signed(input_fmap_111[111:96]) +
	 16'sd 24860 * $signed(input_fmap_111[127:112]) +
	 16'sd 25509 * $signed(input_fmap_111[143:128]);

logic signed [31:0] dw_conv_mac_112;
assign dw_conv_mac_112 = 
	 16'sd 23000 * $signed(input_fmap_112[15:0]) +
	 15'sd 10021 * $signed(input_fmap_112[31:16]) +
	 15'sd 9005 * $signed(input_fmap_112[47:32]) +
	 16'sd 26324 * $signed(input_fmap_112[63:48]) +
	 15'sd 15070 * $signed(input_fmap_112[79:64]) +
	 16'sd 23693 * $signed(input_fmap_112[95:80]) +
	 14'sd 5995 * $signed(input_fmap_112[111:96]) +
	 15'sd 9629 * $signed(input_fmap_112[127:112]) +
	 16'sd 20501 * $signed(input_fmap_112[143:128]);

logic signed [31:0] dw_conv_mac_113;
assign dw_conv_mac_113 = 
	 15'sd 16010 * $signed(input_fmap_113[15:0]) +
	 16'sd 21136 * $signed(input_fmap_113[31:16]) +
	 16'sd 30923 * $signed(input_fmap_113[47:32]) +
	 16'sd 20682 * $signed(input_fmap_113[63:48]) +
	 16'sd 19277 * $signed(input_fmap_113[79:64]) +
	 14'sd 7023 * $signed(input_fmap_113[95:80]) +
	 16'sd 16879 * $signed(input_fmap_113[111:96]) +
	 16'sd 29727 * $signed(input_fmap_113[127:112]) +
	 16'sd 30398 * $signed(input_fmap_113[143:128]);

logic signed [31:0] dw_conv_mac_114;
assign dw_conv_mac_114 = 
	 16'sd 19090 * $signed(input_fmap_114[15:0]) +
	 16'sd 30577 * $signed(input_fmap_114[31:16]) +
	 16'sd 25564 * $signed(input_fmap_114[47:32]) +
	 15'sd 9892 * $signed(input_fmap_114[63:48]) +
	 16'sd 22104 * $signed(input_fmap_114[79:64]) +
	 15'sd 9769 * $signed(input_fmap_114[95:80]) +
	 16'sd 30433 * $signed(input_fmap_114[111:96]) +
	 16'sd 27930 * $signed(input_fmap_114[127:112]) +
	 15'sd 12572 * $signed(input_fmap_114[143:128]);

logic signed [31:0] dw_conv_mac_115;
assign dw_conv_mac_115 = 
	 16'sd 25825 * $signed(input_fmap_115[15:0]) +
	 16'sd 29438 * $signed(input_fmap_115[31:16]) +
	 14'sd 7078 * $signed(input_fmap_115[47:32]) +
	 15'sd 10373 * $signed(input_fmap_115[63:48]) +
	 16'sd 19858 * $signed(input_fmap_115[79:64]) +
	 15'sd 8519 * $signed(input_fmap_115[95:80]) +
	 14'sd 7113 * $signed(input_fmap_115[111:96]) +
	 14'sd 5848 * $signed(input_fmap_115[127:112]) +
	 13'sd 2327 * $signed(input_fmap_115[143:128]);

logic signed [31:0] dw_conv_mac_116;
assign dw_conv_mac_116 = 
	 16'sd 32069 * $signed(input_fmap_116[15:0]) +
	 16'sd 18388 * $signed(input_fmap_116[31:16]) +
	 16'sd 27873 * $signed(input_fmap_116[47:32]) +
	 16'sd 20564 * $signed(input_fmap_116[63:48]) +
	 16'sd 24430 * $signed(input_fmap_116[79:64]) +
	 15'sd 12116 * $signed(input_fmap_116[95:80]) +
	 16'sd 26342 * $signed(input_fmap_116[111:96]) +
	 16'sd 31966 * $signed(input_fmap_116[127:112]) +
	 16'sd 26181 * $signed(input_fmap_116[143:128]);

logic signed [31:0] dw_conv_mac_117;
assign dw_conv_mac_117 = 
	 13'sd 2949 * $signed(input_fmap_117[15:0]) +
	 15'sd 11929 * $signed(input_fmap_117[31:16]) +
	 15'sd 12439 * $signed(input_fmap_117[47:32]) +
	 16'sd 31813 * $signed(input_fmap_117[63:48]) +
	 15'sd 9498 * $signed(input_fmap_117[79:64]) +
	 16'sd 23141 * $signed(input_fmap_117[95:80]) +
	 16'sd 25321 * $signed(input_fmap_117[111:96]) +
	 15'sd 8903 * $signed(input_fmap_117[127:112]) +
	 16'sd 25447 * $signed(input_fmap_117[143:128]);

logic signed [31:0] dw_conv_mac_118;
assign dw_conv_mac_118 = 
	 16'sd 27052 * $signed(input_fmap_118[15:0]) +
	 15'sd 13280 * $signed(input_fmap_118[31:16]) +
	 12'sd 1736 * $signed(input_fmap_118[47:32]) +
	 16'sd 27272 * $signed(input_fmap_118[63:48]) +
	 16'sd 25752 * $signed(input_fmap_118[79:64]) +
	 16'sd 30164 * $signed(input_fmap_118[95:80]) +
	 16'sd 19786 * $signed(input_fmap_118[111:96]) +
	 16'sd 16470 * $signed(input_fmap_118[127:112]) +
	 16'sd 18617 * $signed(input_fmap_118[143:128]);

logic signed [31:0] dw_conv_mac_119;
assign dw_conv_mac_119 = 
	 15'sd 11242 * $signed(input_fmap_119[15:0]) +
	 15'sd 10135 * $signed(input_fmap_119[31:16]) +
	 16'sd 29015 * $signed(input_fmap_119[47:32]) +
	 15'sd 11028 * $signed(input_fmap_119[63:48]) +
	 15'sd 13627 * $signed(input_fmap_119[79:64]) +
	 13'sd 2497 * $signed(input_fmap_119[95:80]) +
	 16'sd 26705 * $signed(input_fmap_119[111:96]) +
	 16'sd 27068 * $signed(input_fmap_119[127:112]) +
	 16'sd 18213 * $signed(input_fmap_119[143:128]);

logic signed [31:0] dw_conv_mac_120;
assign dw_conv_mac_120 = 
	 13'sd 3524 * $signed(input_fmap_120[15:0]) +
	 14'sd 5357 * $signed(input_fmap_120[31:16]) +
	 15'sd 14019 * $signed(input_fmap_120[47:32]) +
	 13'sd 3206 * $signed(input_fmap_120[63:48]) +
	 16'sd 22029 * $signed(input_fmap_120[79:64]) +
	 12'sd 1802 * $signed(input_fmap_120[95:80]) +
	 16'sd 25739 * $signed(input_fmap_120[111:96]) +
	 16'sd 23271 * $signed(input_fmap_120[127:112]) +
	 14'sd 6148 * $signed(input_fmap_120[143:128]);

logic signed [31:0] dw_conv_mac_121;
assign dw_conv_mac_121 = 
	 16'sd 18659 * $signed(input_fmap_121[15:0]) +
	 16'sd 25727 * $signed(input_fmap_121[31:16]) +
	 16'sd 31780 * $signed(input_fmap_121[47:32]) +
	 16'sd 30310 * $signed(input_fmap_121[63:48]) +
	 12'sd 1382 * $signed(input_fmap_121[79:64]) +
	 13'sd 2479 * $signed(input_fmap_121[95:80]) +
	 12'sd 1448 * $signed(input_fmap_121[111:96]) +
	 14'sd 6568 * $signed(input_fmap_121[127:112]) +
	 16'sd 28782 * $signed(input_fmap_121[143:128]);

logic signed [31:0] dw_conv_mac_122;
assign dw_conv_mac_122 = 
	 15'sd 8672 * $signed(input_fmap_122[15:0]) +
	 15'sd 9701 * $signed(input_fmap_122[31:16]) +
	 16'sd 19022 * $signed(input_fmap_122[47:32]) +
	 15'sd 9414 * $signed(input_fmap_122[63:48]) +
	 14'sd 7688 * $signed(input_fmap_122[79:64]) +
	 16'sd 18222 * $signed(input_fmap_122[95:80]) +
	 13'sd 2792 * $signed(input_fmap_122[111:96]) +
	 13'sd 2637 * $signed(input_fmap_122[127:112]) +
	 16'sd 29538 * $signed(input_fmap_122[143:128]);

logic signed [31:0] dw_conv_mac_123;
assign dw_conv_mac_123 = 
	 16'sd 28817 * $signed(input_fmap_123[15:0]) +
	 16'sd 30807 * $signed(input_fmap_123[31:16]) +
	 16'sd 17995 * $signed(input_fmap_123[47:32]) +
	 15'sd 10995 * $signed(input_fmap_123[63:48]) +
	 16'sd 31357 * $signed(input_fmap_123[79:64]) +
	 15'sd 12089 * $signed(input_fmap_123[95:80]) +
	 16'sd 32335 * $signed(input_fmap_123[111:96]) +
	 16'sd 23707 * $signed(input_fmap_123[127:112]) +
	 16'sd 25901 * $signed(input_fmap_123[143:128]);

logic signed [31:0] dw_conv_mac_124;
assign dw_conv_mac_124 = 
	 14'sd 4600 * $signed(input_fmap_124[15:0]) +
	 14'sd 5971 * $signed(input_fmap_124[31:16]) +
	 16'sd 32600 * $signed(input_fmap_124[47:32]) +
	 16'sd 26389 * $signed(input_fmap_124[63:48]) +
	 16'sd 29742 * $signed(input_fmap_124[79:64]) +
	 14'sd 6920 * $signed(input_fmap_124[95:80]) +
	 16'sd 17341 * $signed(input_fmap_124[111:96]) +
	 13'sd 3479 * $signed(input_fmap_124[127:112]) +
	 16'sd 23824 * $signed(input_fmap_124[143:128]);

logic signed [31:0] dw_conv_mac_125;
assign dw_conv_mac_125 = 
	 16'sd 21431 * $signed(input_fmap_125[15:0]) +
	 15'sd 15246 * $signed(input_fmap_125[31:16]) +
	 16'sd 23767 * $signed(input_fmap_125[47:32]) +
	 15'sd 14919 * $signed(input_fmap_125[63:48]) +
	 15'sd 11023 * $signed(input_fmap_125[79:64]) +
	 16'sd 21759 * $signed(input_fmap_125[95:80]) +
	 16'sd 26276 * $signed(input_fmap_125[111:96]) +
	 16'sd 27770 * $signed(input_fmap_125[127:112]) +
	 16'sd 17922 * $signed(input_fmap_125[143:128]);

logic signed [31:0] dw_conv_mac_126;
assign dw_conv_mac_126 = 
	 15'sd 15812 * $signed(input_fmap_126[15:0]) +
	 14'sd 4644 * $signed(input_fmap_126[31:16]) +
	 16'sd 18375 * $signed(input_fmap_126[47:32]) +
	 8'sd 100 * $signed(input_fmap_126[63:48]) +
	 16'sd 16663 * $signed(input_fmap_126[79:64]) +
	 16'sd 28550 * $signed(input_fmap_126[95:80]) +
	 16'sd 21317 * $signed(input_fmap_126[111:96]) +
	 16'sd 22399 * $signed(input_fmap_126[127:112]) +
	 15'sd 15473 * $signed(input_fmap_126[143:128]);

logic signed [31:0] dw_conv_mac_127;
assign dw_conv_mac_127 = 
	 16'sd 23243 * $signed(input_fmap_127[15:0]) +
	 13'sd 3440 * $signed(input_fmap_127[31:16]) +
	 13'sd 2897 * $signed(input_fmap_127[47:32]) +
	 16'sd 18870 * $signed(input_fmap_127[63:48]) +
	 15'sd 8235 * $signed(input_fmap_127[79:64]) +
	 16'sd 20039 * $signed(input_fmap_127[95:80]) +
	 14'sd 5976 * $signed(input_fmap_127[111:96]) +
	 16'sd 29309 * $signed(input_fmap_127[127:112]) +
	 13'sd 3464 * $signed(input_fmap_127[143:128]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 15'd9457;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 9'd198;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 16'd19146;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 11'd819;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 16'd28195;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 15'd15697;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 16'd20590;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 16'd22668;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 10'd468;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 16'd23735;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 16'd27827;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 16'd20135;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 16'd29556;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 16'd19974;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 16'd30538;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 16'd28542;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 16'd17965;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 15'd12641;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18 + 16'd18166;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 16'd29854;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 15'd15946;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21 + 16'd29946;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22 + 13'd3023;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 16'd20230;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24 + 13'd3623;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25 + 16'd27719;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 16'd24806;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 16'd21617;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28 + 15'd11762;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 16'd32003;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 12'd1758;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 14'd4680;
logic [31:0] bias_add_32;
assign bias_add_32 = dw_conv_mac_32 + 13'd3667;
logic [31:0] bias_add_33;
assign bias_add_33 = dw_conv_mac_33 + 16'd32687;
logic [31:0] bias_add_34;
assign bias_add_34 = dw_conv_mac_34 + 15'd8447;
logic [31:0] bias_add_35;
assign bias_add_35 = dw_conv_mac_35 + 16'd26251;
logic [31:0] bias_add_36;
assign bias_add_36 = dw_conv_mac_36 + 12'd1531;
logic [31:0] bias_add_37;
assign bias_add_37 = dw_conv_mac_37 + 15'd12519;
logic [31:0] bias_add_38;
assign bias_add_38 = dw_conv_mac_38 + 14'd7202;
logic [31:0] bias_add_39;
assign bias_add_39 = dw_conv_mac_39 + 16'd19018;
logic [31:0] bias_add_40;
assign bias_add_40 = dw_conv_mac_40 + 15'd9228;
logic [31:0] bias_add_41;
assign bias_add_41 = dw_conv_mac_41 + 15'd12267;
logic [31:0] bias_add_42;
assign bias_add_42 = dw_conv_mac_42 + 12'd1502;
logic [31:0] bias_add_43;
assign bias_add_43 = dw_conv_mac_43 + 16'd26270;
logic [31:0] bias_add_44;
assign bias_add_44 = dw_conv_mac_44 + 15'd14429;
logic [31:0] bias_add_45;
assign bias_add_45 = dw_conv_mac_45 + 16'd28162;
logic [31:0] bias_add_46;
assign bias_add_46 = dw_conv_mac_46 + 14'd7111;
logic [31:0] bias_add_47;
assign bias_add_47 = dw_conv_mac_47 + 15'd10702;
logic [31:0] bias_add_48;
assign bias_add_48 = dw_conv_mac_48 + 16'd16742;
logic [31:0] bias_add_49;
assign bias_add_49 = dw_conv_mac_49 + 15'd8917;
logic [31:0] bias_add_50;
assign bias_add_50 = dw_conv_mac_50 + 16'd20446;
logic [31:0] bias_add_51;
assign bias_add_51 = dw_conv_mac_51 + 15'd10660;
logic [31:0] bias_add_52;
assign bias_add_52 = dw_conv_mac_52 + 13'd2795;
logic [31:0] bias_add_53;
assign bias_add_53 = dw_conv_mac_53 + 16'd30672;
logic [31:0] bias_add_54;
assign bias_add_54 = dw_conv_mac_54 + 16'd27259;
logic [31:0] bias_add_55;
assign bias_add_55 = dw_conv_mac_55 + 15'd16171;
logic [31:0] bias_add_56;
assign bias_add_56 = dw_conv_mac_56 + 14'd5658;
logic [31:0] bias_add_57;
assign bias_add_57 = dw_conv_mac_57 + 16'd32550;
logic [31:0] bias_add_58;
assign bias_add_58 = dw_conv_mac_58 + 16'd25933;
logic [31:0] bias_add_59;
assign bias_add_59 = dw_conv_mac_59 + 16'd26686;
logic [31:0] bias_add_60;
assign bias_add_60 = dw_conv_mac_60 + 14'd4426;
logic [31:0] bias_add_61;
assign bias_add_61 = dw_conv_mac_61 + 14'd4603;
logic [31:0] bias_add_62;
assign bias_add_62 = dw_conv_mac_62 + 13'd3371;
logic [31:0] bias_add_63;
assign bias_add_63 = dw_conv_mac_63 + 14'd5429;
logic [31:0] bias_add_64;
assign bias_add_64 = dw_conv_mac_64 + 16'd28281;
logic [31:0] bias_add_65;
assign bias_add_65 = dw_conv_mac_65 + 16'd22462;
logic [31:0] bias_add_66;
assign bias_add_66 = dw_conv_mac_66 + 15'd8475;
logic [31:0] bias_add_67;
assign bias_add_67 = dw_conv_mac_67 + 15'd9484;
logic [31:0] bias_add_68;
assign bias_add_68 = dw_conv_mac_68 + 16'd24184;
logic [31:0] bias_add_69;
assign bias_add_69 = dw_conv_mac_69 + 16'd26516;
logic [31:0] bias_add_70;
assign bias_add_70 = dw_conv_mac_70 + 16'd25300;
logic [31:0] bias_add_71;
assign bias_add_71 = dw_conv_mac_71 + 16'd31063;
logic [31:0] bias_add_72;
assign bias_add_72 = dw_conv_mac_72 + 16'd19617;
logic [31:0] bias_add_73;
assign bias_add_73 = dw_conv_mac_73 + 16'd32035;
logic [31:0] bias_add_74;
assign bias_add_74 = dw_conv_mac_74 + 16'd21166;
logic [31:0] bias_add_75;
assign bias_add_75 = dw_conv_mac_75 + 16'd26754;
logic [31:0] bias_add_76;
assign bias_add_76 = dw_conv_mac_76 + 16'd19811;
logic [31:0] bias_add_77;
assign bias_add_77 = dw_conv_mac_77 + 15'd15014;
logic [31:0] bias_add_78;
assign bias_add_78 = dw_conv_mac_78 + 16'd28764;
logic [31:0] bias_add_79;
assign bias_add_79 = dw_conv_mac_79 + 16'd18240;
logic [31:0] bias_add_80;
assign bias_add_80 = dw_conv_mac_80 + 15'd15012;
logic [31:0] bias_add_81;
assign bias_add_81 = dw_conv_mac_81 + 16'd23477;
logic [31:0] bias_add_82;
assign bias_add_82 = dw_conv_mac_82 + 14'd7898;
logic [31:0] bias_add_83;
assign bias_add_83 = dw_conv_mac_83 + 16'd26498;
logic [31:0] bias_add_84;
assign bias_add_84 = dw_conv_mac_84 + 14'd4310;
logic [31:0] bias_add_85;
assign bias_add_85 = dw_conv_mac_85 + 16'd23595;
logic [31:0] bias_add_86;
assign bias_add_86 = dw_conv_mac_86 + 16'd29878;
logic [31:0] bias_add_87;
assign bias_add_87 = dw_conv_mac_87 + 16'd22485;
logic [31:0] bias_add_88;
assign bias_add_88 = dw_conv_mac_88 + 15'd16300;
logic [31:0] bias_add_89;
assign bias_add_89 = dw_conv_mac_89 + 16'd32411;
logic [31:0] bias_add_90;
assign bias_add_90 = dw_conv_mac_90 + 15'd14906;
logic [31:0] bias_add_91;
assign bias_add_91 = dw_conv_mac_91 + 16'd20326;
logic [31:0] bias_add_92;
assign bias_add_92 = dw_conv_mac_92 + 13'd2531;
logic [31:0] bias_add_93;
assign bias_add_93 = dw_conv_mac_93 + 15'd12562;
logic [31:0] bias_add_94;
assign bias_add_94 = dw_conv_mac_94 + 15'd10129;
logic [31:0] bias_add_95;
assign bias_add_95 = dw_conv_mac_95 + 12'd1917;
logic [31:0] bias_add_96;
assign bias_add_96 = dw_conv_mac_96 + 15'd10276;
logic [31:0] bias_add_97;
assign bias_add_97 = dw_conv_mac_97 + 15'd13097;
logic [31:0] bias_add_98;
assign bias_add_98 = dw_conv_mac_98 + 15'd9720;
logic [31:0] bias_add_99;
assign bias_add_99 = dw_conv_mac_99 + 14'd6681;
logic [31:0] bias_add_100;
assign bias_add_100 = dw_conv_mac_100 + 16'd26433;
logic [31:0] bias_add_101;
assign bias_add_101 = dw_conv_mac_101 + 15'd11238;
logic [31:0] bias_add_102;
assign bias_add_102 = dw_conv_mac_102 + 16'd26934;
logic [31:0] bias_add_103;
assign bias_add_103 = dw_conv_mac_103 + 16'd31264;
logic [31:0] bias_add_104;
assign bias_add_104 = dw_conv_mac_104 + 16'd21225;
logic [31:0] bias_add_105;
assign bias_add_105 = dw_conv_mac_105 + 15'd15951;
logic [31:0] bias_add_106;
assign bias_add_106 = dw_conv_mac_106 + 16'd31599;
logic [31:0] bias_add_107;
assign bias_add_107 = dw_conv_mac_107 + 13'd3627;
logic [31:0] bias_add_108;
assign bias_add_108 = dw_conv_mac_108 + 16'd31131;
logic [31:0] bias_add_109;
assign bias_add_109 = dw_conv_mac_109 + 15'd14359;
logic [31:0] bias_add_110;
assign bias_add_110 = dw_conv_mac_110 + 16'd17589;
logic [31:0] bias_add_111;
assign bias_add_111 = dw_conv_mac_111 + 14'd7467;
logic [31:0] bias_add_112;
assign bias_add_112 = dw_conv_mac_112 + 15'd12397;
logic [31:0] bias_add_113;
assign bias_add_113 = dw_conv_mac_113 + 12'd2029;
logic [31:0] bias_add_114;
assign bias_add_114 = dw_conv_mac_114 + 15'd16363;
logic [31:0] bias_add_115;
assign bias_add_115 = dw_conv_mac_115 + 16'd17258;
logic [31:0] bias_add_116;
assign bias_add_116 = dw_conv_mac_116 + 15'd11082;
logic [31:0] bias_add_117;
assign bias_add_117 = dw_conv_mac_117 + 12'd1030;
logic [31:0] bias_add_118;
assign bias_add_118 = dw_conv_mac_118 + 15'd8695;
logic [31:0] bias_add_119;
assign bias_add_119 = dw_conv_mac_119 + 15'd9748;
logic [31:0] bias_add_120;
assign bias_add_120 = dw_conv_mac_120 + 16'd21087;
logic [31:0] bias_add_121;
assign bias_add_121 = dw_conv_mac_121 + 12'd1063;
logic [31:0] bias_add_122;
assign bias_add_122 = dw_conv_mac_122 + 14'd6860;
logic [31:0] bias_add_123;
assign bias_add_123 = dw_conv_mac_123 + 16'd17422;
logic [31:0] bias_add_124;
assign bias_add_124 = dw_conv_mac_124 + 16'd28334;
logic [31:0] bias_add_125;
assign bias_add_125 = dw_conv_mac_125 + 14'd7826;
logic [31:0] bias_add_126;
assign bias_add_126 = dw_conv_mac_126 + 16'd24489;
logic [31:0] bias_add_127;
assign bias_add_127 = dw_conv_mac_127 + 14'd4801;

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
logic [15:0] relu_32;
assign relu_32[15:0] = (bias_add_32[31]==0) ? ((bias_add_32<3'd6) ? {{bias_add_32[31],bias_add_32[29:15]}} :'d6) : '0;
logic [15:0] relu_33;
assign relu_33[15:0] = (bias_add_33[31]==0) ? ((bias_add_33<3'd6) ? {{bias_add_33[31],bias_add_33[29:15]}} :'d6) : '0;
logic [15:0] relu_34;
assign relu_34[15:0] = (bias_add_34[31]==0) ? ((bias_add_34<3'd6) ? {{bias_add_34[31],bias_add_34[29:15]}} :'d6) : '0;
logic [15:0] relu_35;
assign relu_35[15:0] = (bias_add_35[31]==0) ? ((bias_add_35<3'd6) ? {{bias_add_35[31],bias_add_35[29:15]}} :'d6) : '0;
logic [15:0] relu_36;
assign relu_36[15:0] = (bias_add_36[31]==0) ? ((bias_add_36<3'd6) ? {{bias_add_36[31],bias_add_36[29:15]}} :'d6) : '0;
logic [15:0] relu_37;
assign relu_37[15:0] = (bias_add_37[31]==0) ? ((bias_add_37<3'd6) ? {{bias_add_37[31],bias_add_37[29:15]}} :'d6) : '0;
logic [15:0] relu_38;
assign relu_38[15:0] = (bias_add_38[31]==0) ? ((bias_add_38<3'd6) ? {{bias_add_38[31],bias_add_38[29:15]}} :'d6) : '0;
logic [15:0] relu_39;
assign relu_39[15:0] = (bias_add_39[31]==0) ? ((bias_add_39<3'd6) ? {{bias_add_39[31],bias_add_39[29:15]}} :'d6) : '0;
logic [15:0] relu_40;
assign relu_40[15:0] = (bias_add_40[31]==0) ? ((bias_add_40<3'd6) ? {{bias_add_40[31],bias_add_40[29:15]}} :'d6) : '0;
logic [15:0] relu_41;
assign relu_41[15:0] = (bias_add_41[31]==0) ? ((bias_add_41<3'd6) ? {{bias_add_41[31],bias_add_41[29:15]}} :'d6) : '0;
logic [15:0] relu_42;
assign relu_42[15:0] = (bias_add_42[31]==0) ? ((bias_add_42<3'd6) ? {{bias_add_42[31],bias_add_42[29:15]}} :'d6) : '0;
logic [15:0] relu_43;
assign relu_43[15:0] = (bias_add_43[31]==0) ? ((bias_add_43<3'd6) ? {{bias_add_43[31],bias_add_43[29:15]}} :'d6) : '0;
logic [15:0] relu_44;
assign relu_44[15:0] = (bias_add_44[31]==0) ? ((bias_add_44<3'd6) ? {{bias_add_44[31],bias_add_44[29:15]}} :'d6) : '0;
logic [15:0] relu_45;
assign relu_45[15:0] = (bias_add_45[31]==0) ? ((bias_add_45<3'd6) ? {{bias_add_45[31],bias_add_45[29:15]}} :'d6) : '0;
logic [15:0] relu_46;
assign relu_46[15:0] = (bias_add_46[31]==0) ? ((bias_add_46<3'd6) ? {{bias_add_46[31],bias_add_46[29:15]}} :'d6) : '0;
logic [15:0] relu_47;
assign relu_47[15:0] = (bias_add_47[31]==0) ? ((bias_add_47<3'd6) ? {{bias_add_47[31],bias_add_47[29:15]}} :'d6) : '0;
logic [15:0] relu_48;
assign relu_48[15:0] = (bias_add_48[31]==0) ? ((bias_add_48<3'd6) ? {{bias_add_48[31],bias_add_48[29:15]}} :'d6) : '0;
logic [15:0] relu_49;
assign relu_49[15:0] = (bias_add_49[31]==0) ? ((bias_add_49<3'd6) ? {{bias_add_49[31],bias_add_49[29:15]}} :'d6) : '0;
logic [15:0] relu_50;
assign relu_50[15:0] = (bias_add_50[31]==0) ? ((bias_add_50<3'd6) ? {{bias_add_50[31],bias_add_50[29:15]}} :'d6) : '0;
logic [15:0] relu_51;
assign relu_51[15:0] = (bias_add_51[31]==0) ? ((bias_add_51<3'd6) ? {{bias_add_51[31],bias_add_51[29:15]}} :'d6) : '0;
logic [15:0] relu_52;
assign relu_52[15:0] = (bias_add_52[31]==0) ? ((bias_add_52<3'd6) ? {{bias_add_52[31],bias_add_52[29:15]}} :'d6) : '0;
logic [15:0] relu_53;
assign relu_53[15:0] = (bias_add_53[31]==0) ? ((bias_add_53<3'd6) ? {{bias_add_53[31],bias_add_53[29:15]}} :'d6) : '0;
logic [15:0] relu_54;
assign relu_54[15:0] = (bias_add_54[31]==0) ? ((bias_add_54<3'd6) ? {{bias_add_54[31],bias_add_54[29:15]}} :'d6) : '0;
logic [15:0] relu_55;
assign relu_55[15:0] = (bias_add_55[31]==0) ? ((bias_add_55<3'd6) ? {{bias_add_55[31],bias_add_55[29:15]}} :'d6) : '0;
logic [15:0] relu_56;
assign relu_56[15:0] = (bias_add_56[31]==0) ? ((bias_add_56<3'd6) ? {{bias_add_56[31],bias_add_56[29:15]}} :'d6) : '0;
logic [15:0] relu_57;
assign relu_57[15:0] = (bias_add_57[31]==0) ? ((bias_add_57<3'd6) ? {{bias_add_57[31],bias_add_57[29:15]}} :'d6) : '0;
logic [15:0] relu_58;
assign relu_58[15:0] = (bias_add_58[31]==0) ? ((bias_add_58<3'd6) ? {{bias_add_58[31],bias_add_58[29:15]}} :'d6) : '0;
logic [15:0] relu_59;
assign relu_59[15:0] = (bias_add_59[31]==0) ? ((bias_add_59<3'd6) ? {{bias_add_59[31],bias_add_59[29:15]}} :'d6) : '0;
logic [15:0] relu_60;
assign relu_60[15:0] = (bias_add_60[31]==0) ? ((bias_add_60<3'd6) ? {{bias_add_60[31],bias_add_60[29:15]}} :'d6) : '0;
logic [15:0] relu_61;
assign relu_61[15:0] = (bias_add_61[31]==0) ? ((bias_add_61<3'd6) ? {{bias_add_61[31],bias_add_61[29:15]}} :'d6) : '0;
logic [15:0] relu_62;
assign relu_62[15:0] = (bias_add_62[31]==0) ? ((bias_add_62<3'd6) ? {{bias_add_62[31],bias_add_62[29:15]}} :'d6) : '0;
logic [15:0] relu_63;
assign relu_63[15:0] = (bias_add_63[31]==0) ? ((bias_add_63<3'd6) ? {{bias_add_63[31],bias_add_63[29:15]}} :'d6) : '0;
logic [15:0] relu_64;
assign relu_64[15:0] = (bias_add_64[31]==0) ? ((bias_add_64<3'd6) ? {{bias_add_64[31],bias_add_64[29:15]}} :'d6) : '0;
logic [15:0] relu_65;
assign relu_65[15:0] = (bias_add_65[31]==0) ? ((bias_add_65<3'd6) ? {{bias_add_65[31],bias_add_65[29:15]}} :'d6) : '0;
logic [15:0] relu_66;
assign relu_66[15:0] = (bias_add_66[31]==0) ? ((bias_add_66<3'd6) ? {{bias_add_66[31],bias_add_66[29:15]}} :'d6) : '0;
logic [15:0] relu_67;
assign relu_67[15:0] = (bias_add_67[31]==0) ? ((bias_add_67<3'd6) ? {{bias_add_67[31],bias_add_67[29:15]}} :'d6) : '0;
logic [15:0] relu_68;
assign relu_68[15:0] = (bias_add_68[31]==0) ? ((bias_add_68<3'd6) ? {{bias_add_68[31],bias_add_68[29:15]}} :'d6) : '0;
logic [15:0] relu_69;
assign relu_69[15:0] = (bias_add_69[31]==0) ? ((bias_add_69<3'd6) ? {{bias_add_69[31],bias_add_69[29:15]}} :'d6) : '0;
logic [15:0] relu_70;
assign relu_70[15:0] = (bias_add_70[31]==0) ? ((bias_add_70<3'd6) ? {{bias_add_70[31],bias_add_70[29:15]}} :'d6) : '0;
logic [15:0] relu_71;
assign relu_71[15:0] = (bias_add_71[31]==0) ? ((bias_add_71<3'd6) ? {{bias_add_71[31],bias_add_71[29:15]}} :'d6) : '0;
logic [15:0] relu_72;
assign relu_72[15:0] = (bias_add_72[31]==0) ? ((bias_add_72<3'd6) ? {{bias_add_72[31],bias_add_72[29:15]}} :'d6) : '0;
logic [15:0] relu_73;
assign relu_73[15:0] = (bias_add_73[31]==0) ? ((bias_add_73<3'd6) ? {{bias_add_73[31],bias_add_73[29:15]}} :'d6) : '0;
logic [15:0] relu_74;
assign relu_74[15:0] = (bias_add_74[31]==0) ? ((bias_add_74<3'd6) ? {{bias_add_74[31],bias_add_74[29:15]}} :'d6) : '0;
logic [15:0] relu_75;
assign relu_75[15:0] = (bias_add_75[31]==0) ? ((bias_add_75<3'd6) ? {{bias_add_75[31],bias_add_75[29:15]}} :'d6) : '0;
logic [15:0] relu_76;
assign relu_76[15:0] = (bias_add_76[31]==0) ? ((bias_add_76<3'd6) ? {{bias_add_76[31],bias_add_76[29:15]}} :'d6) : '0;
logic [15:0] relu_77;
assign relu_77[15:0] = (bias_add_77[31]==0) ? ((bias_add_77<3'd6) ? {{bias_add_77[31],bias_add_77[29:15]}} :'d6) : '0;
logic [15:0] relu_78;
assign relu_78[15:0] = (bias_add_78[31]==0) ? ((bias_add_78<3'd6) ? {{bias_add_78[31],bias_add_78[29:15]}} :'d6) : '0;
logic [15:0] relu_79;
assign relu_79[15:0] = (bias_add_79[31]==0) ? ((bias_add_79<3'd6) ? {{bias_add_79[31],bias_add_79[29:15]}} :'d6) : '0;
logic [15:0] relu_80;
assign relu_80[15:0] = (bias_add_80[31]==0) ? ((bias_add_80<3'd6) ? {{bias_add_80[31],bias_add_80[29:15]}} :'d6) : '0;
logic [15:0] relu_81;
assign relu_81[15:0] = (bias_add_81[31]==0) ? ((bias_add_81<3'd6) ? {{bias_add_81[31],bias_add_81[29:15]}} :'d6) : '0;
logic [15:0] relu_82;
assign relu_82[15:0] = (bias_add_82[31]==0) ? ((bias_add_82<3'd6) ? {{bias_add_82[31],bias_add_82[29:15]}} :'d6) : '0;
logic [15:0] relu_83;
assign relu_83[15:0] = (bias_add_83[31]==0) ? ((bias_add_83<3'd6) ? {{bias_add_83[31],bias_add_83[29:15]}} :'d6) : '0;
logic [15:0] relu_84;
assign relu_84[15:0] = (bias_add_84[31]==0) ? ((bias_add_84<3'd6) ? {{bias_add_84[31],bias_add_84[29:15]}} :'d6) : '0;
logic [15:0] relu_85;
assign relu_85[15:0] = (bias_add_85[31]==0) ? ((bias_add_85<3'd6) ? {{bias_add_85[31],bias_add_85[29:15]}} :'d6) : '0;
logic [15:0] relu_86;
assign relu_86[15:0] = (bias_add_86[31]==0) ? ((bias_add_86<3'd6) ? {{bias_add_86[31],bias_add_86[29:15]}} :'d6) : '0;
logic [15:0] relu_87;
assign relu_87[15:0] = (bias_add_87[31]==0) ? ((bias_add_87<3'd6) ? {{bias_add_87[31],bias_add_87[29:15]}} :'d6) : '0;
logic [15:0] relu_88;
assign relu_88[15:0] = (bias_add_88[31]==0) ? ((bias_add_88<3'd6) ? {{bias_add_88[31],bias_add_88[29:15]}} :'d6) : '0;
logic [15:0] relu_89;
assign relu_89[15:0] = (bias_add_89[31]==0) ? ((bias_add_89<3'd6) ? {{bias_add_89[31],bias_add_89[29:15]}} :'d6) : '0;
logic [15:0] relu_90;
assign relu_90[15:0] = (bias_add_90[31]==0) ? ((bias_add_90<3'd6) ? {{bias_add_90[31],bias_add_90[29:15]}} :'d6) : '0;
logic [15:0] relu_91;
assign relu_91[15:0] = (bias_add_91[31]==0) ? ((bias_add_91<3'd6) ? {{bias_add_91[31],bias_add_91[29:15]}} :'d6) : '0;
logic [15:0] relu_92;
assign relu_92[15:0] = (bias_add_92[31]==0) ? ((bias_add_92<3'd6) ? {{bias_add_92[31],bias_add_92[29:15]}} :'d6) : '0;
logic [15:0] relu_93;
assign relu_93[15:0] = (bias_add_93[31]==0) ? ((bias_add_93<3'd6) ? {{bias_add_93[31],bias_add_93[29:15]}} :'d6) : '0;
logic [15:0] relu_94;
assign relu_94[15:0] = (bias_add_94[31]==0) ? ((bias_add_94<3'd6) ? {{bias_add_94[31],bias_add_94[29:15]}} :'d6) : '0;
logic [15:0] relu_95;
assign relu_95[15:0] = (bias_add_95[31]==0) ? ((bias_add_95<3'd6) ? {{bias_add_95[31],bias_add_95[29:15]}} :'d6) : '0;
logic [15:0] relu_96;
assign relu_96[15:0] = (bias_add_96[31]==0) ? ((bias_add_96<3'd6) ? {{bias_add_96[31],bias_add_96[29:15]}} :'d6) : '0;
logic [15:0] relu_97;
assign relu_97[15:0] = (bias_add_97[31]==0) ? ((bias_add_97<3'd6) ? {{bias_add_97[31],bias_add_97[29:15]}} :'d6) : '0;
logic [15:0] relu_98;
assign relu_98[15:0] = (bias_add_98[31]==0) ? ((bias_add_98<3'd6) ? {{bias_add_98[31],bias_add_98[29:15]}} :'d6) : '0;
logic [15:0] relu_99;
assign relu_99[15:0] = (bias_add_99[31]==0) ? ((bias_add_99<3'd6) ? {{bias_add_99[31],bias_add_99[29:15]}} :'d6) : '0;
logic [15:0] relu_100;
assign relu_100[15:0] = (bias_add_100[31]==0) ? ((bias_add_100<3'd6) ? {{bias_add_100[31],bias_add_100[29:15]}} :'d6) : '0;
logic [15:0] relu_101;
assign relu_101[15:0] = (bias_add_101[31]==0) ? ((bias_add_101<3'd6) ? {{bias_add_101[31],bias_add_101[29:15]}} :'d6) : '0;
logic [15:0] relu_102;
assign relu_102[15:0] = (bias_add_102[31]==0) ? ((bias_add_102<3'd6) ? {{bias_add_102[31],bias_add_102[29:15]}} :'d6) : '0;
logic [15:0] relu_103;
assign relu_103[15:0] = (bias_add_103[31]==0) ? ((bias_add_103<3'd6) ? {{bias_add_103[31],bias_add_103[29:15]}} :'d6) : '0;
logic [15:0] relu_104;
assign relu_104[15:0] = (bias_add_104[31]==0) ? ((bias_add_104<3'd6) ? {{bias_add_104[31],bias_add_104[29:15]}} :'d6) : '0;
logic [15:0] relu_105;
assign relu_105[15:0] = (bias_add_105[31]==0) ? ((bias_add_105<3'd6) ? {{bias_add_105[31],bias_add_105[29:15]}} :'d6) : '0;
logic [15:0] relu_106;
assign relu_106[15:0] = (bias_add_106[31]==0) ? ((bias_add_106<3'd6) ? {{bias_add_106[31],bias_add_106[29:15]}} :'d6) : '0;
logic [15:0] relu_107;
assign relu_107[15:0] = (bias_add_107[31]==0) ? ((bias_add_107<3'd6) ? {{bias_add_107[31],bias_add_107[29:15]}} :'d6) : '0;
logic [15:0] relu_108;
assign relu_108[15:0] = (bias_add_108[31]==0) ? ((bias_add_108<3'd6) ? {{bias_add_108[31],bias_add_108[29:15]}} :'d6) : '0;
logic [15:0] relu_109;
assign relu_109[15:0] = (bias_add_109[31]==0) ? ((bias_add_109<3'd6) ? {{bias_add_109[31],bias_add_109[29:15]}} :'d6) : '0;
logic [15:0] relu_110;
assign relu_110[15:0] = (bias_add_110[31]==0) ? ((bias_add_110<3'd6) ? {{bias_add_110[31],bias_add_110[29:15]}} :'d6) : '0;
logic [15:0] relu_111;
assign relu_111[15:0] = (bias_add_111[31]==0) ? ((bias_add_111<3'd6) ? {{bias_add_111[31],bias_add_111[29:15]}} :'d6) : '0;
logic [15:0] relu_112;
assign relu_112[15:0] = (bias_add_112[31]==0) ? ((bias_add_112<3'd6) ? {{bias_add_112[31],bias_add_112[29:15]}} :'d6) : '0;
logic [15:0] relu_113;
assign relu_113[15:0] = (bias_add_113[31]==0) ? ((bias_add_113<3'd6) ? {{bias_add_113[31],bias_add_113[29:15]}} :'d6) : '0;
logic [15:0] relu_114;
assign relu_114[15:0] = (bias_add_114[31]==0) ? ((bias_add_114<3'd6) ? {{bias_add_114[31],bias_add_114[29:15]}} :'d6) : '0;
logic [15:0] relu_115;
assign relu_115[15:0] = (bias_add_115[31]==0) ? ((bias_add_115<3'd6) ? {{bias_add_115[31],bias_add_115[29:15]}} :'d6) : '0;
logic [15:0] relu_116;
assign relu_116[15:0] = (bias_add_116[31]==0) ? ((bias_add_116<3'd6) ? {{bias_add_116[31],bias_add_116[29:15]}} :'d6) : '0;
logic [15:0] relu_117;
assign relu_117[15:0] = (bias_add_117[31]==0) ? ((bias_add_117<3'd6) ? {{bias_add_117[31],bias_add_117[29:15]}} :'d6) : '0;
logic [15:0] relu_118;
assign relu_118[15:0] = (bias_add_118[31]==0) ? ((bias_add_118<3'd6) ? {{bias_add_118[31],bias_add_118[29:15]}} :'d6) : '0;
logic [15:0] relu_119;
assign relu_119[15:0] = (bias_add_119[31]==0) ? ((bias_add_119<3'd6) ? {{bias_add_119[31],bias_add_119[29:15]}} :'d6) : '0;
logic [15:0] relu_120;
assign relu_120[15:0] = (bias_add_120[31]==0) ? ((bias_add_120<3'd6) ? {{bias_add_120[31],bias_add_120[29:15]}} :'d6) : '0;
logic [15:0] relu_121;
assign relu_121[15:0] = (bias_add_121[31]==0) ? ((bias_add_121<3'd6) ? {{bias_add_121[31],bias_add_121[29:15]}} :'d6) : '0;
logic [15:0] relu_122;
assign relu_122[15:0] = (bias_add_122[31]==0) ? ((bias_add_122<3'd6) ? {{bias_add_122[31],bias_add_122[29:15]}} :'d6) : '0;
logic [15:0] relu_123;
assign relu_123[15:0] = (bias_add_123[31]==0) ? ((bias_add_123<3'd6) ? {{bias_add_123[31],bias_add_123[29:15]}} :'d6) : '0;
logic [15:0] relu_124;
assign relu_124[15:0] = (bias_add_124[31]==0) ? ((bias_add_124<3'd6) ? {{bias_add_124[31],bias_add_124[29:15]}} :'d6) : '0;
logic [15:0] relu_125;
assign relu_125[15:0] = (bias_add_125[31]==0) ? ((bias_add_125<3'd6) ? {{bias_add_125[31],bias_add_125[29:15]}} :'d6) : '0;
logic [15:0] relu_126;
assign relu_126[15:0] = (bias_add_126[31]==0) ? ((bias_add_126<3'd6) ? {{bias_add_126[31],bias_add_126[29:15]}} :'d6) : '0;
logic [15:0] relu_127;
assign relu_127[15:0] = (bias_add_127[31]==0) ? ((bias_add_127<3'd6) ? {{bias_add_127[31],bias_add_127[29:15]}} :'d6) : '0;

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
