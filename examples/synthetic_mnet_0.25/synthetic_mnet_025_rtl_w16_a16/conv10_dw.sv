module conv10_dw (
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
	 16'sd 23291 * $signed(input_fmap_0[15:0]) +
	 14'sd 7620 * $signed(input_fmap_0[31:16]) +
	 16'sd 24555 * $signed(input_fmap_0[47:32]) +
	 15'sd 8350 * $signed(input_fmap_0[63:48]) +
	 15'sd 14824 * $signed(input_fmap_0[79:64]) +
	 15'sd 8831 * $signed(input_fmap_0[95:80]) +
	 13'sd 3876 * $signed(input_fmap_0[111:96]) +
	 16'sd 24341 * $signed(input_fmap_0[127:112]) +
	 11'sd 585 * $signed(input_fmap_0[143:128]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 12'sd 1840 * $signed(input_fmap_1[15:0]) +
	 14'sd 7544 * $signed(input_fmap_1[31:16]) +
	 14'sd 7617 * $signed(input_fmap_1[47:32]) +
	 16'sd 26254 * $signed(input_fmap_1[63:48]) +
	 16'sd 28608 * $signed(input_fmap_1[79:64]) +
	 16'sd 23290 * $signed(input_fmap_1[95:80]) +
	 16'sd 28481 * $signed(input_fmap_1[111:96]) +
	 16'sd 30017 * $signed(input_fmap_1[127:112]) +
	 15'sd 14311 * $signed(input_fmap_1[143:128]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 16'sd 17944 * $signed(input_fmap_2[15:0]) +
	 16'sd 30272 * $signed(input_fmap_2[31:16]) +
	 16'sd 21778 * $signed(input_fmap_2[47:32]) +
	 16'sd 17630 * $signed(input_fmap_2[63:48]) +
	 14'sd 6010 * $signed(input_fmap_2[79:64]) +
	 13'sd 3807 * $signed(input_fmap_2[95:80]) +
	 16'sd 16973 * $signed(input_fmap_2[111:96]) +
	 16'sd 25509 * $signed(input_fmap_2[127:112]) +
	 16'sd 32154 * $signed(input_fmap_2[143:128]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 16'sd 28300 * $signed(input_fmap_3[15:0]) +
	 15'sd 9428 * $signed(input_fmap_3[31:16]) +
	 16'sd 20301 * $signed(input_fmap_3[47:32]) +
	 14'sd 6977 * $signed(input_fmap_3[63:48]) +
	 16'sd 31812 * $signed(input_fmap_3[79:64]) +
	 15'sd 14867 * $signed(input_fmap_3[95:80]) +
	 16'sd 21339 * $signed(input_fmap_3[111:96]) +
	 16'sd 25852 * $signed(input_fmap_3[127:112]) +
	 13'sd 3682 * $signed(input_fmap_3[143:128]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 16'sd 30398 * $signed(input_fmap_4[15:0]) +
	 16'sd 31716 * $signed(input_fmap_4[31:16]) +
	 16'sd 32734 * $signed(input_fmap_4[47:32]) +
	 15'sd 11328 * $signed(input_fmap_4[63:48]) +
	 16'sd 27626 * $signed(input_fmap_4[79:64]) +
	 15'sd 11681 * $signed(input_fmap_4[95:80]) +
	 16'sd 23060 * $signed(input_fmap_4[111:96]) +
	 15'sd 11042 * $signed(input_fmap_4[127:112]) +
	 16'sd 22292 * $signed(input_fmap_4[143:128]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 16'sd 24405 * $signed(input_fmap_5[15:0]) +
	 16'sd 25059 * $signed(input_fmap_5[31:16]) +
	 15'sd 15266 * $signed(input_fmap_5[47:32]) +
	 15'sd 16254 * $signed(input_fmap_5[63:48]) +
	 15'sd 12053 * $signed(input_fmap_5[79:64]) +
	 13'sd 3224 * $signed(input_fmap_5[95:80]) +
	 15'sd 14457 * $signed(input_fmap_5[111:96]) +
	 15'sd 10772 * $signed(input_fmap_5[127:112]) +
	 16'sd 27016 * $signed(input_fmap_5[143:128]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 16'sd 20233 * $signed(input_fmap_6[15:0]) +
	 16'sd 32054 * $signed(input_fmap_6[31:16]) +
	 14'sd 5504 * $signed(input_fmap_6[47:32]) +
	 13'sd 3048 * $signed(input_fmap_6[63:48]) +
	 16'sd 28872 * $signed(input_fmap_6[79:64]) +
	 16'sd 26067 * $signed(input_fmap_6[95:80]) +
	 15'sd 14387 * $signed(input_fmap_6[111:96]) +
	 15'sd 13000 * $signed(input_fmap_6[127:112]) +
	 11'sd 985 * $signed(input_fmap_6[143:128]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 15'sd 12168 * $signed(input_fmap_7[15:0]) +
	 15'sd 13235 * $signed(input_fmap_7[31:16]) +
	 15'sd 15779 * $signed(input_fmap_7[47:32]) +
	 15'sd 15827 * $signed(input_fmap_7[63:48]) +
	 16'sd 27929 * $signed(input_fmap_7[79:64]) +
	 16'sd 28202 * $signed(input_fmap_7[95:80]) +
	 15'sd 14586 * $signed(input_fmap_7[111:96]) +
	 12'sd 1820 * $signed(input_fmap_7[127:112]) +
	 14'sd 6246 * $signed(input_fmap_7[143:128]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 12'sd 1712 * $signed(input_fmap_8[15:0]) +
	 16'sd 20668 * $signed(input_fmap_8[31:16]) +
	 13'sd 3225 * $signed(input_fmap_8[47:32]) +
	 16'sd 29941 * $signed(input_fmap_8[63:48]) +
	 15'sd 9869 * $signed(input_fmap_8[79:64]) +
	 15'sd 12028 * $signed(input_fmap_8[95:80]) +
	 16'sd 29022 * $signed(input_fmap_8[111:96]) +
	 15'sd 8424 * $signed(input_fmap_8[127:112]) +
	 16'sd 29181 * $signed(input_fmap_8[143:128]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 16'sd 27597 * $signed(input_fmap_9[15:0]) +
	 15'sd 15654 * $signed(input_fmap_9[31:16]) +
	 15'sd 9722 * $signed(input_fmap_9[47:32]) +
	 16'sd 29982 * $signed(input_fmap_9[63:48]) +
	 15'sd 13085 * $signed(input_fmap_9[79:64]) +
	 15'sd 8855 * $signed(input_fmap_9[95:80]) +
	 14'sd 6827 * $signed(input_fmap_9[111:96]) +
	 16'sd 22893 * $signed(input_fmap_9[127:112]) +
	 16'sd 18339 * $signed(input_fmap_9[143:128]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 16'sd 32566 * $signed(input_fmap_10[15:0]) +
	 15'sd 14263 * $signed(input_fmap_10[31:16]) +
	 15'sd 10806 * $signed(input_fmap_10[47:32]) +
	 16'sd 31664 * $signed(input_fmap_10[63:48]) +
	 16'sd 19538 * $signed(input_fmap_10[79:64]) +
	 16'sd 22349 * $signed(input_fmap_10[95:80]) +
	 13'sd 3881 * $signed(input_fmap_10[111:96]) +
	 16'sd 17839 * $signed(input_fmap_10[127:112]) +
	 16'sd 18430 * $signed(input_fmap_10[143:128]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 16'sd 18030 * $signed(input_fmap_11[15:0]) +
	 14'sd 5490 * $signed(input_fmap_11[31:16]) +
	 14'sd 6506 * $signed(input_fmap_11[47:32]) +
	 14'sd 5986 * $signed(input_fmap_11[63:48]) +
	 15'sd 8952 * $signed(input_fmap_11[79:64]) +
	 16'sd 19396 * $signed(input_fmap_11[95:80]) +
	 13'sd 3950 * $signed(input_fmap_11[111:96]) +
	 16'sd 28855 * $signed(input_fmap_11[127:112]) +
	 16'sd 21368 * $signed(input_fmap_11[143:128]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 16'sd 28200 * $signed(input_fmap_12[15:0]) +
	 15'sd 11927 * $signed(input_fmap_12[31:16]) +
	 15'sd 9973 * $signed(input_fmap_12[47:32]) +
	 16'sd 28609 * $signed(input_fmap_12[63:48]) +
	 15'sd 13252 * $signed(input_fmap_12[79:64]) +
	 16'sd 29835 * $signed(input_fmap_12[95:80]) +
	 14'sd 5587 * $signed(input_fmap_12[111:96]) +
	 16'sd 24541 * $signed(input_fmap_12[127:112]) +
	 16'sd 27079 * $signed(input_fmap_12[143:128]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 16'sd 23980 * $signed(input_fmap_13[15:0]) +
	 16'sd 24267 * $signed(input_fmap_13[31:16]) +
	 16'sd 21227 * $signed(input_fmap_13[47:32]) +
	 14'sd 4781 * $signed(input_fmap_13[63:48]) +
	 15'sd 11314 * $signed(input_fmap_13[79:64]) +
	 14'sd 6557 * $signed(input_fmap_13[95:80]) +
	 16'sd 19768 * $signed(input_fmap_13[111:96]) +
	 16'sd 32407 * $signed(input_fmap_13[127:112]) +
	 15'sd 12532 * $signed(input_fmap_13[143:128]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 14'sd 5563 * $signed(input_fmap_14[15:0]) +
	 14'sd 6720 * $signed(input_fmap_14[31:16]) +
	 14'sd 4608 * $signed(input_fmap_14[47:32]) +
	 14'sd 6129 * $signed(input_fmap_14[63:48]) +
	 16'sd 29216 * $signed(input_fmap_14[79:64]) +
	 14'sd 5286 * $signed(input_fmap_14[95:80]) +
	 11'sd 992 * $signed(input_fmap_14[111:96]) +
	 15'sd 9383 * $signed(input_fmap_14[127:112]) +
	 9'sd 139 * $signed(input_fmap_14[143:128]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 16'sd 23885 * $signed(input_fmap_15[15:0]) +
	 16'sd 30077 * $signed(input_fmap_15[31:16]) +
	 16'sd 20736 * $signed(input_fmap_15[47:32]) +
	 8'sd 127 * $signed(input_fmap_15[63:48]) +
	 15'sd 8947 * $signed(input_fmap_15[79:64]) +
	 15'sd 13887 * $signed(input_fmap_15[95:80]) +
	 16'sd 28644 * $signed(input_fmap_15[111:96]) +
	 9'sd 226 * $signed(input_fmap_15[127:112]) +
	 16'sd 32629 * $signed(input_fmap_15[143:128]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 15'sd 8247 * $signed(input_fmap_16[15:0]) +
	 16'sd 28683 * $signed(input_fmap_16[31:16]) +
	 16'sd 25834 * $signed(input_fmap_16[47:32]) +
	 15'sd 11477 * $signed(input_fmap_16[63:48]) +
	 10'sd 345 * $signed(input_fmap_16[79:64]) +
	 16'sd 18293 * $signed(input_fmap_16[95:80]) +
	 13'sd 2349 * $signed(input_fmap_16[111:96]) +
	 16'sd 21000 * $signed(input_fmap_16[127:112]) +
	 16'sd 28762 * $signed(input_fmap_16[143:128]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 16'sd 23071 * $signed(input_fmap_17[15:0]) +
	 16'sd 24732 * $signed(input_fmap_17[31:16]) +
	 16'sd 18604 * $signed(input_fmap_17[47:32]) +
	 16'sd 18891 * $signed(input_fmap_17[63:48]) +
	 16'sd 19239 * $signed(input_fmap_17[79:64]) +
	 14'sd 4757 * $signed(input_fmap_17[95:80]) +
	 16'sd 25780 * $signed(input_fmap_17[111:96]) +
	 15'sd 11723 * $signed(input_fmap_17[127:112]) +
	 16'sd 27849 * $signed(input_fmap_17[143:128]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 16'sd 28062 * $signed(input_fmap_18[15:0]) +
	 15'sd 15720 * $signed(input_fmap_18[31:16]) +
	 13'sd 3852 * $signed(input_fmap_18[47:32]) +
	 15'sd 9101 * $signed(input_fmap_18[63:48]) +
	 16'sd 18810 * $signed(input_fmap_18[79:64]) +
	 16'sd 23042 * $signed(input_fmap_18[95:80]) +
	 16'sd 18854 * $signed(input_fmap_18[111:96]) +
	 7'sd 58 * $signed(input_fmap_18[127:112]) +
	 16'sd 32414 * $signed(input_fmap_18[143:128]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 16'sd 26387 * $signed(input_fmap_19[15:0]) +
	 16'sd 27649 * $signed(input_fmap_19[31:16]) +
	 16'sd 20738 * $signed(input_fmap_19[47:32]) +
	 15'sd 9765 * $signed(input_fmap_19[63:48]) +
	 13'sd 3438 * $signed(input_fmap_19[79:64]) +
	 16'sd 32102 * $signed(input_fmap_19[95:80]) +
	 16'sd 26442 * $signed(input_fmap_19[111:96]) +
	 13'sd 2917 * $signed(input_fmap_19[127:112]) +
	 16'sd 30157 * $signed(input_fmap_19[143:128]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 14'sd 6418 * $signed(input_fmap_20[15:0]) +
	 16'sd 20333 * $signed(input_fmap_20[31:16]) +
	 15'sd 13530 * $signed(input_fmap_20[47:32]) +
	 16'sd 30444 * $signed(input_fmap_20[63:48]) +
	 14'sd 6889 * $signed(input_fmap_20[79:64]) +
	 15'sd 15534 * $signed(input_fmap_20[95:80]) +
	 16'sd 19954 * $signed(input_fmap_20[111:96]) +
	 16'sd 32019 * $signed(input_fmap_20[127:112]) +
	 16'sd 19089 * $signed(input_fmap_20[143:128]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 16'sd 30987 * $signed(input_fmap_21[15:0]) +
	 14'sd 4587 * $signed(input_fmap_21[31:16]) +
	 16'sd 20256 * $signed(input_fmap_21[47:32]) +
	 15'sd 14657 * $signed(input_fmap_21[63:48]) +
	 15'sd 15043 * $signed(input_fmap_21[79:64]) +
	 14'sd 6013 * $signed(input_fmap_21[95:80]) +
	 14'sd 4820 * $signed(input_fmap_21[111:96]) +
	 14'sd 4634 * $signed(input_fmap_21[127:112]) +
	 11'sd 1007 * $signed(input_fmap_21[143:128]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 15'sd 10668 * $signed(input_fmap_22[15:0]) +
	 15'sd 15176 * $signed(input_fmap_22[31:16]) +
	 11'sd 654 * $signed(input_fmap_22[47:32]) +
	 14'sd 4782 * $signed(input_fmap_22[63:48]) +
	 15'sd 14909 * $signed(input_fmap_22[79:64]) +
	 15'sd 16204 * $signed(input_fmap_22[95:80]) +
	 14'sd 4730 * $signed(input_fmap_22[111:96]) +
	 16'sd 25327 * $signed(input_fmap_22[127:112]) +
	 15'sd 8348 * $signed(input_fmap_22[143:128]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 15'sd 15995 * $signed(input_fmap_23[15:0]) +
	 16'sd 17750 * $signed(input_fmap_23[31:16]) +
	 10'sd 397 * $signed(input_fmap_23[47:32]) +
	 15'sd 10750 * $signed(input_fmap_23[63:48]) +
	 14'sd 4212 * $signed(input_fmap_23[79:64]) +
	 16'sd 17935 * $signed(input_fmap_23[95:80]) +
	 14'sd 5605 * $signed(input_fmap_23[111:96]) +
	 12'sd 1431 * $signed(input_fmap_23[127:112]) +
	 14'sd 7269 * $signed(input_fmap_23[143:128]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 13'sd 3018 * $signed(input_fmap_24[15:0]) +
	 16'sd 28846 * $signed(input_fmap_24[31:16]) +
	 14'sd 6296 * $signed(input_fmap_24[47:32]) +
	 16'sd 20127 * $signed(input_fmap_24[63:48]) +
	 16'sd 22146 * $signed(input_fmap_24[79:64]) +
	 13'sd 2231 * $signed(input_fmap_24[95:80]) +
	 16'sd 24435 * $signed(input_fmap_24[111:96]) +
	 14'sd 7009 * $signed(input_fmap_24[127:112]) +
	 14'sd 6431 * $signed(input_fmap_24[143:128]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 16'sd 22803 * $signed(input_fmap_25[15:0]) +
	 16'sd 26580 * $signed(input_fmap_25[31:16]) +
	 16'sd 21607 * $signed(input_fmap_25[47:32]) +
	 15'sd 14412 * $signed(input_fmap_25[63:48]) +
	 13'sd 2548 * $signed(input_fmap_25[79:64]) +
	 11'sd 779 * $signed(input_fmap_25[95:80]) +
	 16'sd 23918 * $signed(input_fmap_25[111:96]) +
	 16'sd 29175 * $signed(input_fmap_25[127:112]) +
	 15'sd 10296 * $signed(input_fmap_25[143:128]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 12'sd 1873 * $signed(input_fmap_26[15:0]) +
	 9'sd 179 * $signed(input_fmap_26[31:16]) +
	 16'sd 25383 * $signed(input_fmap_26[47:32]) +
	 16'sd 24806 * $signed(input_fmap_26[63:48]) +
	 16'sd 19815 * $signed(input_fmap_26[79:64]) +
	 15'sd 13827 * $signed(input_fmap_26[95:80]) +
	 14'sd 6043 * $signed(input_fmap_26[111:96]) +
	 16'sd 21117 * $signed(input_fmap_26[127:112]) +
	 12'sd 1286 * $signed(input_fmap_26[143:128]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 12'sd 1075 * $signed(input_fmap_27[15:0]) +
	 14'sd 4236 * $signed(input_fmap_27[31:16]) +
	 16'sd 19903 * $signed(input_fmap_27[47:32]) +
	 16'sd 27260 * $signed(input_fmap_27[63:48]) +
	 16'sd 17647 * $signed(input_fmap_27[79:64]) +
	 16'sd 22023 * $signed(input_fmap_27[95:80]) +
	 13'sd 2377 * $signed(input_fmap_27[111:96]) +
	 16'sd 25265 * $signed(input_fmap_27[127:112]) +
	 12'sd 1585 * $signed(input_fmap_27[143:128]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 16'sd 22155 * $signed(input_fmap_28[15:0]) +
	 16'sd 21899 * $signed(input_fmap_28[31:16]) +
	 15'sd 9298 * $signed(input_fmap_28[47:32]) +
	 15'sd 14357 * $signed(input_fmap_28[63:48]) +
	 14'sd 5043 * $signed(input_fmap_28[79:64]) +
	 16'sd 29733 * $signed(input_fmap_28[95:80]) +
	 16'sd 18132 * $signed(input_fmap_28[111:96]) +
	 14'sd 6275 * $signed(input_fmap_28[127:112]) +
	 16'sd 25331 * $signed(input_fmap_28[143:128]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 16'sd 18161 * $signed(input_fmap_29[15:0]) +
	 14'sd 7310 * $signed(input_fmap_29[31:16]) +
	 14'sd 4361 * $signed(input_fmap_29[47:32]) +
	 13'sd 3965 * $signed(input_fmap_29[63:48]) +
	 15'sd 15655 * $signed(input_fmap_29[79:64]) +
	 16'sd 17827 * $signed(input_fmap_29[95:80]) +
	 16'sd 29340 * $signed(input_fmap_29[111:96]) +
	 16'sd 28113 * $signed(input_fmap_29[127:112]) +
	 16'sd 16984 * $signed(input_fmap_29[143:128]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 9'sd 233 * $signed(input_fmap_30[15:0]) +
	 10'sd 441 * $signed(input_fmap_30[31:16]) +
	 16'sd 31793 * $signed(input_fmap_30[47:32]) +
	 16'sd 23651 * $signed(input_fmap_30[63:48]) +
	 16'sd 21047 * $signed(input_fmap_30[79:64]) +
	 15'sd 10382 * $signed(input_fmap_30[95:80]) +
	 16'sd 25294 * $signed(input_fmap_30[111:96]) +
	 16'sd 26801 * $signed(input_fmap_30[127:112]) +
	 15'sd 13817 * $signed(input_fmap_30[143:128]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 16'sd 24505 * $signed(input_fmap_31[15:0]) +
	 16'sd 26327 * $signed(input_fmap_31[31:16]) +
	 15'sd 11811 * $signed(input_fmap_31[47:32]) +
	 12'sd 1212 * $signed(input_fmap_31[63:48]) +
	 16'sd 18895 * $signed(input_fmap_31[79:64]) +
	 13'sd 2302 * $signed(input_fmap_31[95:80]) +
	 16'sd 18168 * $signed(input_fmap_31[111:96]) +
	 5'sd 14 * $signed(input_fmap_31[127:112]) +
	 15'sd 14891 * $signed(input_fmap_31[143:128]);

logic signed [31:0] dw_conv_mac_32;
assign dw_conv_mac_32 = 
	 16'sd 20670 * $signed(input_fmap_32[15:0]) +
	 15'sd 14000 * $signed(input_fmap_32[31:16]) +
	 13'sd 3065 * $signed(input_fmap_32[47:32]) +
	 14'sd 8097 * $signed(input_fmap_32[63:48]) +
	 16'sd 20389 * $signed(input_fmap_32[79:64]) +
	 16'sd 29643 * $signed(input_fmap_32[95:80]) +
	 15'sd 15993 * $signed(input_fmap_32[111:96]) +
	 14'sd 7331 * $signed(input_fmap_32[127:112]) +
	 14'sd 7592 * $signed(input_fmap_32[143:128]);

logic signed [31:0] dw_conv_mac_33;
assign dw_conv_mac_33 = 
	 15'sd 8506 * $signed(input_fmap_33[15:0]) +
	 16'sd 29482 * $signed(input_fmap_33[31:16]) +
	 15'sd 9039 * $signed(input_fmap_33[47:32]) +
	 14'sd 6010 * $signed(input_fmap_33[63:48]) +
	 13'sd 3879 * $signed(input_fmap_33[79:64]) +
	 16'sd 18425 * $signed(input_fmap_33[95:80]) +
	 16'sd 29445 * $signed(input_fmap_33[111:96]) +
	 16'sd 28491 * $signed(input_fmap_33[127:112]) +
	 16'sd 16986 * $signed(input_fmap_33[143:128]);

logic signed [31:0] dw_conv_mac_34;
assign dw_conv_mac_34 = 
	 13'sd 3323 * $signed(input_fmap_34[15:0]) +
	 15'sd 12776 * $signed(input_fmap_34[31:16]) +
	 16'sd 30200 * $signed(input_fmap_34[47:32]) +
	 14'sd 6350 * $signed(input_fmap_34[63:48]) +
	 15'sd 11563 * $signed(input_fmap_34[79:64]) +
	 16'sd 23769 * $signed(input_fmap_34[95:80]) +
	 15'sd 10183 * $signed(input_fmap_34[111:96]) +
	 16'sd 17702 * $signed(input_fmap_34[127:112]) +
	 16'sd 29038 * $signed(input_fmap_34[143:128]);

logic signed [31:0] dw_conv_mac_35;
assign dw_conv_mac_35 = 
	 15'sd 8622 * $signed(input_fmap_35[15:0]) +
	 12'sd 1824 * $signed(input_fmap_35[31:16]) +
	 15'sd 12444 * $signed(input_fmap_35[47:32]) +
	 15'sd 12028 * $signed(input_fmap_35[63:48]) +
	 15'sd 9189 * $signed(input_fmap_35[79:64]) +
	 16'sd 29217 * $signed(input_fmap_35[95:80]) +
	 16'sd 27971 * $signed(input_fmap_35[111:96]) +
	 16'sd 23432 * $signed(input_fmap_35[127:112]) +
	 16'sd 18423 * $signed(input_fmap_35[143:128]);

logic signed [31:0] dw_conv_mac_36;
assign dw_conv_mac_36 = 
	 16'sd 18778 * $signed(input_fmap_36[15:0]) +
	 15'sd 15155 * $signed(input_fmap_36[31:16]) +
	 16'sd 24977 * $signed(input_fmap_36[47:32]) +
	 15'sd 12323 * $signed(input_fmap_36[63:48]) +
	 15'sd 9190 * $signed(input_fmap_36[79:64]) +
	 15'sd 15748 * $signed(input_fmap_36[95:80]) +
	 15'sd 10137 * $signed(input_fmap_36[111:96]) +
	 14'sd 7567 * $signed(input_fmap_36[127:112]) +
	 16'sd 31061 * $signed(input_fmap_36[143:128]);

logic signed [31:0] dw_conv_mac_37;
assign dw_conv_mac_37 = 
	 14'sd 8069 * $signed(input_fmap_37[15:0]) +
	 14'sd 6170 * $signed(input_fmap_37[31:16]) +
	 16'sd 23693 * $signed(input_fmap_37[47:32]) +
	 16'sd 27275 * $signed(input_fmap_37[63:48]) +
	 14'sd 6624 * $signed(input_fmap_37[79:64]) +
	 12'sd 1154 * $signed(input_fmap_37[95:80]) +
	 16'sd 18820 * $signed(input_fmap_37[111:96]) +
	 14'sd 6572 * $signed(input_fmap_37[127:112]) +
	 14'sd 7175 * $signed(input_fmap_37[143:128]);

logic signed [31:0] dw_conv_mac_38;
assign dw_conv_mac_38 = 
	 15'sd 14909 * $signed(input_fmap_38[15:0]) +
	 16'sd 25807 * $signed(input_fmap_38[31:16]) +
	 15'sd 12617 * $signed(input_fmap_38[47:32]) +
	 14'sd 7045 * $signed(input_fmap_38[63:48]) +
	 14'sd 7149 * $signed(input_fmap_38[79:64]) +
	 16'sd 31797 * $signed(input_fmap_38[95:80]) +
	 16'sd 27650 * $signed(input_fmap_38[111:96]) +
	 14'sd 8118 * $signed(input_fmap_38[127:112]) +
	 16'sd 30148 * $signed(input_fmap_38[143:128]);

logic signed [31:0] dw_conv_mac_39;
assign dw_conv_mac_39 = 
	 14'sd 7258 * $signed(input_fmap_39[15:0]) +
	 11'sd 945 * $signed(input_fmap_39[31:16]) +
	 16'sd 23326 * $signed(input_fmap_39[47:32]) +
	 16'sd 24774 * $signed(input_fmap_39[63:48]) +
	 16'sd 31375 * $signed(input_fmap_39[79:64]) +
	 15'sd 13168 * $signed(input_fmap_39[95:80]) +
	 16'sd 20576 * $signed(input_fmap_39[111:96]) +
	 15'sd 13438 * $signed(input_fmap_39[127:112]) +
	 16'sd 21555 * $signed(input_fmap_39[143:128]);

logic signed [31:0] dw_conv_mac_40;
assign dw_conv_mac_40 = 
	 15'sd 12616 * $signed(input_fmap_40[15:0]) +
	 16'sd 20010 * $signed(input_fmap_40[31:16]) +
	 15'sd 16363 * $signed(input_fmap_40[47:32]) +
	 16'sd 18604 * $signed(input_fmap_40[63:48]) +
	 15'sd 14568 * $signed(input_fmap_40[79:64]) +
	 11'sd 977 * $signed(input_fmap_40[95:80]) +
	 15'sd 16228 * $signed(input_fmap_40[111:96]) +
	 14'sd 8088 * $signed(input_fmap_40[127:112]) +
	 13'sd 3310 * $signed(input_fmap_40[143:128]);

logic signed [31:0] dw_conv_mac_41;
assign dw_conv_mac_41 = 
	 16'sd 28682 * $signed(input_fmap_41[15:0]) +
	 16'sd 32641 * $signed(input_fmap_41[31:16]) +
	 16'sd 24193 * $signed(input_fmap_41[47:32]) +
	 16'sd 30238 * $signed(input_fmap_41[63:48]) +
	 14'sd 8107 * $signed(input_fmap_41[79:64]) +
	 15'sd 13589 * $signed(input_fmap_41[95:80]) +
	 16'sd 21901 * $signed(input_fmap_41[111:96]) +
	 13'sd 3920 * $signed(input_fmap_41[127:112]) +
	 12'sd 1906 * $signed(input_fmap_41[143:128]);

logic signed [31:0] dw_conv_mac_42;
assign dw_conv_mac_42 = 
	 15'sd 15054 * $signed(input_fmap_42[15:0]) +
	 16'sd 16833 * $signed(input_fmap_42[31:16]) +
	 16'sd 21320 * $signed(input_fmap_42[47:32]) +
	 9'sd 154 * $signed(input_fmap_42[63:48]) +
	 15'sd 9551 * $signed(input_fmap_42[79:64]) +
	 16'sd 27395 * $signed(input_fmap_42[95:80]) +
	 16'sd 22182 * $signed(input_fmap_42[111:96]) +
	 15'sd 12778 * $signed(input_fmap_42[127:112]) +
	 10'sd 272 * $signed(input_fmap_42[143:128]);

logic signed [31:0] dw_conv_mac_43;
assign dw_conv_mac_43 = 
	 14'sd 5581 * $signed(input_fmap_43[15:0]) +
	 16'sd 29098 * $signed(input_fmap_43[31:16]) +
	 15'sd 12084 * $signed(input_fmap_43[47:32]) +
	 13'sd 3328 * $signed(input_fmap_43[63:48]) +
	 16'sd 29684 * $signed(input_fmap_43[79:64]) +
	 16'sd 27053 * $signed(input_fmap_43[95:80]) +
	 15'sd 11846 * $signed(input_fmap_43[111:96]) +
	 14'sd 4797 * $signed(input_fmap_43[127:112]) +
	 9'sd 243 * $signed(input_fmap_43[143:128]);

logic signed [31:0] dw_conv_mac_44;
assign dw_conv_mac_44 = 
	 15'sd 11890 * $signed(input_fmap_44[15:0]) +
	 12'sd 1911 * $signed(input_fmap_44[31:16]) +
	 16'sd 22835 * $signed(input_fmap_44[47:32]) +
	 13'sd 2474 * $signed(input_fmap_44[63:48]) +
	 16'sd 23153 * $signed(input_fmap_44[79:64]) +
	 16'sd 23978 * $signed(input_fmap_44[95:80]) +
	 16'sd 30701 * $signed(input_fmap_44[111:96]) +
	 16'sd 18212 * $signed(input_fmap_44[127:112]) +
	 16'sd 25880 * $signed(input_fmap_44[143:128]);

logic signed [31:0] dw_conv_mac_45;
assign dw_conv_mac_45 = 
	 16'sd 29148 * $signed(input_fmap_45[15:0]) +
	 14'sd 7298 * $signed(input_fmap_45[31:16]) +
	 16'sd 16411 * $signed(input_fmap_45[47:32]) +
	 16'sd 25305 * $signed(input_fmap_45[63:48]) +
	 16'sd 30853 * $signed(input_fmap_45[79:64]) +
	 16'sd 22698 * $signed(input_fmap_45[95:80]) +
	 16'sd 17301 * $signed(input_fmap_45[111:96]) +
	 12'sd 1024 * $signed(input_fmap_45[127:112]) +
	 16'sd 19683 * $signed(input_fmap_45[143:128]);

logic signed [31:0] dw_conv_mac_46;
assign dw_conv_mac_46 = 
	 16'sd 26192 * $signed(input_fmap_46[15:0]) +
	 15'sd 12265 * $signed(input_fmap_46[31:16]) +
	 15'sd 12714 * $signed(input_fmap_46[47:32]) +
	 16'sd 16599 * $signed(input_fmap_46[63:48]) +
	 16'sd 26981 * $signed(input_fmap_46[79:64]) +
	 16'sd 21416 * $signed(input_fmap_46[95:80]) +
	 16'sd 19116 * $signed(input_fmap_46[111:96]) +
	 14'sd 7806 * $signed(input_fmap_46[127:112]) +
	 15'sd 9899 * $signed(input_fmap_46[143:128]);

logic signed [31:0] dw_conv_mac_47;
assign dw_conv_mac_47 = 
	 16'sd 18723 * $signed(input_fmap_47[15:0]) +
	 16'sd 20616 * $signed(input_fmap_47[31:16]) +
	 16'sd 23408 * $signed(input_fmap_47[47:32]) +
	 16'sd 19191 * $signed(input_fmap_47[63:48]) +
	 16'sd 16577 * $signed(input_fmap_47[79:64]) +
	 14'sd 6180 * $signed(input_fmap_47[95:80]) +
	 16'sd 31553 * $signed(input_fmap_47[111:96]) +
	 14'sd 6078 * $signed(input_fmap_47[127:112]) +
	 13'sd 2756 * $signed(input_fmap_47[143:128]);

logic signed [31:0] dw_conv_mac_48;
assign dw_conv_mac_48 = 
	 16'sd 32426 * $signed(input_fmap_48[15:0]) +
	 16'sd 31670 * $signed(input_fmap_48[31:16]) +
	 13'sd 3251 * $signed(input_fmap_48[47:32]) +
	 16'sd 20922 * $signed(input_fmap_48[63:48]) +
	 16'sd 24290 * $signed(input_fmap_48[79:64]) +
	 16'sd 31819 * $signed(input_fmap_48[95:80]) +
	 14'sd 5621 * $signed(input_fmap_48[111:96]) +
	 16'sd 24328 * $signed(input_fmap_48[127:112]) +
	 16'sd 27242 * $signed(input_fmap_48[143:128]);

logic signed [31:0] dw_conv_mac_49;
assign dw_conv_mac_49 = 
	 15'sd 15831 * $signed(input_fmap_49[15:0]) +
	 15'sd 11991 * $signed(input_fmap_49[31:16]) +
	 15'sd 9499 * $signed(input_fmap_49[47:32]) +
	 15'sd 13279 * $signed(input_fmap_49[63:48]) +
	 16'sd 30961 * $signed(input_fmap_49[79:64]) +
	 15'sd 12995 * $signed(input_fmap_49[95:80]) +
	 11'sd 612 * $signed(input_fmap_49[111:96]) +
	 7'sd 58 * $signed(input_fmap_49[127:112]) +
	 16'sd 32355 * $signed(input_fmap_49[143:128]);

logic signed [31:0] dw_conv_mac_50;
assign dw_conv_mac_50 = 
	 16'sd 29485 * $signed(input_fmap_50[15:0]) +
	 16'sd 30426 * $signed(input_fmap_50[31:16]) +
	 16'sd 26864 * $signed(input_fmap_50[47:32]) +
	 16'sd 17496 * $signed(input_fmap_50[63:48]) +
	 16'sd 16788 * $signed(input_fmap_50[79:64]) +
	 16'sd 28574 * $signed(input_fmap_50[95:80]) +
	 15'sd 9247 * $signed(input_fmap_50[111:96]) +
	 14'sd 4213 * $signed(input_fmap_50[127:112]) +
	 15'sd 15253 * $signed(input_fmap_50[143:128]);

logic signed [31:0] dw_conv_mac_51;
assign dw_conv_mac_51 = 
	 15'sd 13840 * $signed(input_fmap_51[15:0]) +
	 16'sd 31470 * $signed(input_fmap_51[31:16]) +
	 16'sd 24443 * $signed(input_fmap_51[47:32]) +
	 15'sd 8733 * $signed(input_fmap_51[63:48]) +
	 13'sd 2105 * $signed(input_fmap_51[79:64]) +
	 16'sd 16946 * $signed(input_fmap_51[95:80]) +
	 16'sd 32019 * $signed(input_fmap_51[111:96]) +
	 16'sd 23994 * $signed(input_fmap_51[127:112]) +
	 11'sd 886 * $signed(input_fmap_51[143:128]);

logic signed [31:0] dw_conv_mac_52;
assign dw_conv_mac_52 = 
	 14'sd 7089 * $signed(input_fmap_52[15:0]) +
	 16'sd 28725 * $signed(input_fmap_52[31:16]) +
	 16'sd 20008 * $signed(input_fmap_52[47:32]) +
	 15'sd 10559 * $signed(input_fmap_52[63:48]) +
	 14'sd 7238 * $signed(input_fmap_52[79:64]) +
	 16'sd 25125 * $signed(input_fmap_52[95:80]) +
	 14'sd 5985 * $signed(input_fmap_52[111:96]) +
	 15'sd 13835 * $signed(input_fmap_52[127:112]) +
	 13'sd 4014 * $signed(input_fmap_52[143:128]);

logic signed [31:0] dw_conv_mac_53;
assign dw_conv_mac_53 = 
	 13'sd 3790 * $signed(input_fmap_53[15:0]) +
	 16'sd 29793 * $signed(input_fmap_53[31:16]) +
	 16'sd 26544 * $signed(input_fmap_53[47:32]) +
	 14'sd 5542 * $signed(input_fmap_53[63:48]) +
	 15'sd 13405 * $signed(input_fmap_53[79:64]) +
	 16'sd 29390 * $signed(input_fmap_53[95:80]) +
	 15'sd 12947 * $signed(input_fmap_53[111:96]) +
	 16'sd 28266 * $signed(input_fmap_53[127:112]) +
	 16'sd 32472 * $signed(input_fmap_53[143:128]);

logic signed [31:0] dw_conv_mac_54;
assign dw_conv_mac_54 = 
	 15'sd 11104 * $signed(input_fmap_54[15:0]) +
	 15'sd 12717 * $signed(input_fmap_54[31:16]) +
	 15'sd 16246 * $signed(input_fmap_54[47:32]) +
	 16'sd 17902 * $signed(input_fmap_54[63:48]) +
	 16'sd 21983 * $signed(input_fmap_54[79:64]) +
	 15'sd 13087 * $signed(input_fmap_54[95:80]) +
	 16'sd 25721 * $signed(input_fmap_54[111:96]) +
	 16'sd 22858 * $signed(input_fmap_54[127:112]) +
	 15'sd 11086 * $signed(input_fmap_54[143:128]);

logic signed [31:0] dw_conv_mac_55;
assign dw_conv_mac_55 = 
	 14'sd 7522 * $signed(input_fmap_55[15:0]) +
	 16'sd 25251 * $signed(input_fmap_55[31:16]) +
	 16'sd 30439 * $signed(input_fmap_55[47:32]) +
	 14'sd 4375 * $signed(input_fmap_55[63:48]) +
	 15'sd 10616 * $signed(input_fmap_55[79:64]) +
	 15'sd 8955 * $signed(input_fmap_55[95:80]) +
	 15'sd 15746 * $signed(input_fmap_55[111:96]) +
	 16'sd 20901 * $signed(input_fmap_55[127:112]) +
	 15'sd 15998 * $signed(input_fmap_55[143:128]);

logic signed [31:0] dw_conv_mac_56;
assign dw_conv_mac_56 = 
	 15'sd 11146 * $signed(input_fmap_56[15:0]) +
	 15'sd 13798 * $signed(input_fmap_56[31:16]) +
	 13'sd 2719 * $signed(input_fmap_56[47:32]) +
	 16'sd 19276 * $signed(input_fmap_56[63:48]) +
	 16'sd 19653 * $signed(input_fmap_56[79:64]) +
	 15'sd 14510 * $signed(input_fmap_56[95:80]) +
	 15'sd 12863 * $signed(input_fmap_56[111:96]) +
	 16'sd 19492 * $signed(input_fmap_56[127:112]) +
	 11'sd 824 * $signed(input_fmap_56[143:128]);

logic signed [31:0] dw_conv_mac_57;
assign dw_conv_mac_57 = 
	 13'sd 2524 * $signed(input_fmap_57[15:0]) +
	 16'sd 17169 * $signed(input_fmap_57[31:16]) +
	 15'sd 9867 * $signed(input_fmap_57[47:32]) +
	 15'sd 13344 * $signed(input_fmap_57[63:48]) +
	 16'sd 31168 * $signed(input_fmap_57[79:64]) +
	 16'sd 31966 * $signed(input_fmap_57[95:80]) +
	 16'sd 25586 * $signed(input_fmap_57[111:96]) +
	 16'sd 32416 * $signed(input_fmap_57[127:112]) +
	 15'sd 13486 * $signed(input_fmap_57[143:128]);

logic signed [31:0] dw_conv_mac_58;
assign dw_conv_mac_58 = 
	 13'sd 2560 * $signed(input_fmap_58[15:0]) +
	 15'sd 12287 * $signed(input_fmap_58[31:16]) +
	 16'sd 22296 * $signed(input_fmap_58[47:32]) +
	 16'sd 30658 * $signed(input_fmap_58[63:48]) +
	 15'sd 10183 * $signed(input_fmap_58[79:64]) +
	 16'sd 24833 * $signed(input_fmap_58[95:80]) +
	 16'sd 23282 * $signed(input_fmap_58[111:96]) +
	 16'sd 29799 * $signed(input_fmap_58[127:112]) +
	 15'sd 14874 * $signed(input_fmap_58[143:128]);

logic signed [31:0] dw_conv_mac_59;
assign dw_conv_mac_59 = 
	 11'sd 951 * $signed(input_fmap_59[15:0]) +
	 16'sd 29991 * $signed(input_fmap_59[31:16]) +
	 15'sd 11736 * $signed(input_fmap_59[47:32]) +
	 15'sd 10229 * $signed(input_fmap_59[63:48]) +
	 16'sd 26559 * $signed(input_fmap_59[79:64]) +
	 15'sd 9167 * $signed(input_fmap_59[95:80]) +
	 15'sd 12139 * $signed(input_fmap_59[111:96]) +
	 15'sd 12914 * $signed(input_fmap_59[127:112]) +
	 16'sd 17866 * $signed(input_fmap_59[143:128]);

logic signed [31:0] dw_conv_mac_60;
assign dw_conv_mac_60 = 
	 14'sd 7688 * $signed(input_fmap_60[15:0]) +
	 10'sd 461 * $signed(input_fmap_60[31:16]) +
	 15'sd 15365 * $signed(input_fmap_60[47:32]) +
	 15'sd 12816 * $signed(input_fmap_60[63:48]) +
	 14'sd 7540 * $signed(input_fmap_60[79:64]) +
	 15'sd 13873 * $signed(input_fmap_60[95:80]) +
	 15'sd 10294 * $signed(input_fmap_60[111:96]) +
	 16'sd 27846 * $signed(input_fmap_60[127:112]) +
	 15'sd 10095 * $signed(input_fmap_60[143:128]);

logic signed [31:0] dw_conv_mac_61;
assign dw_conv_mac_61 = 
	 16'sd 20897 * $signed(input_fmap_61[15:0]) +
	 16'sd 21333 * $signed(input_fmap_61[31:16]) +
	 14'sd 4470 * $signed(input_fmap_61[47:32]) +
	 16'sd 29870 * $signed(input_fmap_61[63:48]) +
	 16'sd 25432 * $signed(input_fmap_61[79:64]) +
	 16'sd 29657 * $signed(input_fmap_61[95:80]) +
	 16'sd 31581 * $signed(input_fmap_61[111:96]) +
	 16'sd 20847 * $signed(input_fmap_61[127:112]) +
	 16'sd 20590 * $signed(input_fmap_61[143:128]);

logic signed [31:0] dw_conv_mac_62;
assign dw_conv_mac_62 = 
	 16'sd 26801 * $signed(input_fmap_62[15:0]) +
	 13'sd 3756 * $signed(input_fmap_62[31:16]) +
	 16'sd 18464 * $signed(input_fmap_62[47:32]) +
	 16'sd 31054 * $signed(input_fmap_62[63:48]) +
	 15'sd 8570 * $signed(input_fmap_62[79:64]) +
	 14'sd 8184 * $signed(input_fmap_62[95:80]) +
	 13'sd 2363 * $signed(input_fmap_62[111:96]) +
	 15'sd 8668 * $signed(input_fmap_62[127:112]) +
	 16'sd 17756 * $signed(input_fmap_62[143:128]);

logic signed [31:0] dw_conv_mac_63;
assign dw_conv_mac_63 = 
	 15'sd 15811 * $signed(input_fmap_63[15:0]) +
	 15'sd 11655 * $signed(input_fmap_63[31:16]) +
	 16'sd 29785 * $signed(input_fmap_63[47:32]) +
	 16'sd 32416 * $signed(input_fmap_63[63:48]) +
	 16'sd 21252 * $signed(input_fmap_63[79:64]) +
	 16'sd 20169 * $signed(input_fmap_63[95:80]) +
	 16'sd 32083 * $signed(input_fmap_63[111:96]) +
	 12'sd 1695 * $signed(input_fmap_63[127:112]) +
	 16'sd 18442 * $signed(input_fmap_63[143:128]);

logic signed [31:0] dw_conv_mac_64;
assign dw_conv_mac_64 = 
	 16'sd 18875 * $signed(input_fmap_64[15:0]) +
	 16'sd 21163 * $signed(input_fmap_64[31:16]) +
	 15'sd 13320 * $signed(input_fmap_64[47:32]) +
	 12'sd 1459 * $signed(input_fmap_64[63:48]) +
	 16'sd 22527 * $signed(input_fmap_64[79:64]) +
	 15'sd 10889 * $signed(input_fmap_64[95:80]) +
	 16'sd 23731 * $signed(input_fmap_64[111:96]) +
	 15'sd 14799 * $signed(input_fmap_64[127:112]) +
	 16'sd 21076 * $signed(input_fmap_64[143:128]);

logic signed [31:0] dw_conv_mac_65;
assign dw_conv_mac_65 = 
	 13'sd 2838 * $signed(input_fmap_65[15:0]) +
	 14'sd 5039 * $signed(input_fmap_65[31:16]) +
	 15'sd 16226 * $signed(input_fmap_65[47:32]) +
	 12'sd 1030 * $signed(input_fmap_65[63:48]) +
	 15'sd 11257 * $signed(input_fmap_65[79:64]) +
	 16'sd 18501 * $signed(input_fmap_65[95:80]) +
	 16'sd 31135 * $signed(input_fmap_65[111:96]) +
	 16'sd 23991 * $signed(input_fmap_65[127:112]) +
	 16'sd 17680 * $signed(input_fmap_65[143:128]);

logic signed [31:0] dw_conv_mac_66;
assign dw_conv_mac_66 = 
	 15'sd 13765 * $signed(input_fmap_66[15:0]) +
	 12'sd 1035 * $signed(input_fmap_66[31:16]) +
	 16'sd 29357 * $signed(input_fmap_66[47:32]) +
	 16'sd 23987 * $signed(input_fmap_66[63:48]) +
	 16'sd 31938 * $signed(input_fmap_66[79:64]) +
	 11'sd 888 * $signed(input_fmap_66[95:80]) +
	 16'sd 31844 * $signed(input_fmap_66[111:96]) +
	 16'sd 30170 * $signed(input_fmap_66[127:112]) +
	 16'sd 27846 * $signed(input_fmap_66[143:128]);

logic signed [31:0] dw_conv_mac_67;
assign dw_conv_mac_67 = 
	 16'sd 20883 * $signed(input_fmap_67[15:0]) +
	 15'sd 8822 * $signed(input_fmap_67[31:16]) +
	 14'sd 4489 * $signed(input_fmap_67[47:32]) +
	 16'sd 21047 * $signed(input_fmap_67[63:48]) +
	 12'sd 1168 * $signed(input_fmap_67[79:64]) +
	 16'sd 22474 * $signed(input_fmap_67[95:80]) +
	 13'sd 3243 * $signed(input_fmap_67[111:96]) +
	 12'sd 1918 * $signed(input_fmap_67[127:112]) +
	 16'sd 29756 * $signed(input_fmap_67[143:128]);

logic signed [31:0] dw_conv_mac_68;
assign dw_conv_mac_68 = 
	 16'sd 28628 * $signed(input_fmap_68[15:0]) +
	 16'sd 31037 * $signed(input_fmap_68[31:16]) +
	 15'sd 14547 * $signed(input_fmap_68[47:32]) +
	 14'sd 5059 * $signed(input_fmap_68[63:48]) +
	 14'sd 7656 * $signed(input_fmap_68[79:64]) +
	 16'sd 24091 * $signed(input_fmap_68[95:80]) +
	 15'sd 9814 * $signed(input_fmap_68[111:96]) +
	 14'sd 7121 * $signed(input_fmap_68[127:112]) +
	 15'sd 9719 * $signed(input_fmap_68[143:128]);

logic signed [31:0] dw_conv_mac_69;
assign dw_conv_mac_69 = 
	 16'sd 27735 * $signed(input_fmap_69[15:0]) +
	 13'sd 3440 * $signed(input_fmap_69[31:16]) +
	 14'sd 5944 * $signed(input_fmap_69[47:32]) +
	 15'sd 10625 * $signed(input_fmap_69[63:48]) +
	 15'sd 10555 * $signed(input_fmap_69[79:64]) +
	 10'sd 345 * $signed(input_fmap_69[95:80]) +
	 13'sd 3540 * $signed(input_fmap_69[111:96]) +
	 16'sd 24340 * $signed(input_fmap_69[127:112]) +
	 13'sd 2326 * $signed(input_fmap_69[143:128]);

logic signed [31:0] dw_conv_mac_70;
assign dw_conv_mac_70 = 
	 15'sd 13052 * $signed(input_fmap_70[15:0]) +
	 15'sd 14036 * $signed(input_fmap_70[31:16]) +
	 15'sd 13143 * $signed(input_fmap_70[47:32]) +
	 16'sd 28662 * $signed(input_fmap_70[63:48]) +
	 16'sd 25947 * $signed(input_fmap_70[79:64]) +
	 16'sd 24959 * $signed(input_fmap_70[95:80]) +
	 13'sd 3534 * $signed(input_fmap_70[111:96]) +
	 15'sd 12429 * $signed(input_fmap_70[127:112]) +
	 12'sd 1109 * $signed(input_fmap_70[143:128]);

logic signed [31:0] dw_conv_mac_71;
assign dw_conv_mac_71 = 
	 16'sd 19021 * $signed(input_fmap_71[15:0]) +
	 16'sd 18684 * $signed(input_fmap_71[31:16]) +
	 15'sd 9574 * $signed(input_fmap_71[47:32]) +
	 16'sd 21514 * $signed(input_fmap_71[63:48]) +
	 16'sd 29351 * $signed(input_fmap_71[79:64]) +
	 15'sd 9133 * $signed(input_fmap_71[95:80]) +
	 16'sd 18387 * $signed(input_fmap_71[111:96]) +
	 13'sd 2607 * $signed(input_fmap_71[127:112]) +
	 14'sd 5471 * $signed(input_fmap_71[143:128]);

logic signed [31:0] dw_conv_mac_72;
assign dw_conv_mac_72 = 
	 16'sd 20179 * $signed(input_fmap_72[15:0]) +
	 15'sd 9322 * $signed(input_fmap_72[31:16]) +
	 14'sd 8164 * $signed(input_fmap_72[47:32]) +
	 16'sd 26414 * $signed(input_fmap_72[63:48]) +
	 16'sd 21246 * $signed(input_fmap_72[79:64]) +
	 16'sd 24104 * $signed(input_fmap_72[95:80]) +
	 15'sd 14181 * $signed(input_fmap_72[111:96]) +
	 16'sd 25129 * $signed(input_fmap_72[127:112]) +
	 15'sd 15558 * $signed(input_fmap_72[143:128]);

logic signed [31:0] dw_conv_mac_73;
assign dw_conv_mac_73 = 
	 16'sd 29450 * $signed(input_fmap_73[15:0]) +
	 13'sd 2139 * $signed(input_fmap_73[31:16]) +
	 15'sd 8456 * $signed(input_fmap_73[47:32]) +
	 16'sd 20715 * $signed(input_fmap_73[63:48]) +
	 15'sd 15540 * $signed(input_fmap_73[79:64]) +
	 15'sd 8836 * $signed(input_fmap_73[95:80]) +
	 16'sd 25516 * $signed(input_fmap_73[111:96]) +
	 16'sd 21431 * $signed(input_fmap_73[127:112]) +
	 15'sd 11731 * $signed(input_fmap_73[143:128]);

logic signed [31:0] dw_conv_mac_74;
assign dw_conv_mac_74 = 
	 15'sd 14238 * $signed(input_fmap_74[15:0]) +
	 15'sd 11021 * $signed(input_fmap_74[31:16]) +
	 14'sd 5486 * $signed(input_fmap_74[47:32]) +
	 16'sd 31117 * $signed(input_fmap_74[63:48]) +
	 16'sd 21711 * $signed(input_fmap_74[79:64]) +
	 14'sd 4685 * $signed(input_fmap_74[95:80]) +
	 14'sd 6095 * $signed(input_fmap_74[111:96]) +
	 14'sd 4877 * $signed(input_fmap_74[127:112]) +
	 12'sd 1505 * $signed(input_fmap_74[143:128]);

logic signed [31:0] dw_conv_mac_75;
assign dw_conv_mac_75 = 
	 15'sd 13200 * $signed(input_fmap_75[15:0]) +
	 16'sd 27539 * $signed(input_fmap_75[31:16]) +
	 16'sd 22982 * $signed(input_fmap_75[47:32]) +
	 16'sd 26785 * $signed(input_fmap_75[63:48]) +
	 16'sd 23276 * $signed(input_fmap_75[79:64]) +
	 14'sd 4281 * $signed(input_fmap_75[95:80]) +
	 16'sd 22554 * $signed(input_fmap_75[111:96]) +
	 16'sd 31545 * $signed(input_fmap_75[127:112]) +
	 16'sd 17313 * $signed(input_fmap_75[143:128]);

logic signed [31:0] dw_conv_mac_76;
assign dw_conv_mac_76 = 
	 14'sd 6470 * $signed(input_fmap_76[15:0]) +
	 16'sd 29260 * $signed(input_fmap_76[31:16]) +
	 14'sd 4260 * $signed(input_fmap_76[47:32]) +
	 12'sd 1276 * $signed(input_fmap_76[63:48]) +
	 16'sd 27735 * $signed(input_fmap_76[79:64]) +
	 13'sd 2668 * $signed(input_fmap_76[95:80]) +
	 13'sd 2759 * $signed(input_fmap_76[111:96]) +
	 16'sd 25688 * $signed(input_fmap_76[127:112]) +
	 16'sd 23625 * $signed(input_fmap_76[143:128]);

logic signed [31:0] dw_conv_mac_77;
assign dw_conv_mac_77 = 
	 15'sd 13848 * $signed(input_fmap_77[15:0]) +
	 14'sd 5243 * $signed(input_fmap_77[31:16]) +
	 16'sd 23066 * $signed(input_fmap_77[47:32]) +
	 16'sd 23187 * $signed(input_fmap_77[63:48]) +
	 16'sd 27824 * $signed(input_fmap_77[79:64]) +
	 7'sd 34 * $signed(input_fmap_77[95:80]) +
	 12'sd 1463 * $signed(input_fmap_77[111:96]) +
	 13'sd 3806 * $signed(input_fmap_77[127:112]) +
	 14'sd 5917 * $signed(input_fmap_77[143:128]);

logic signed [31:0] dw_conv_mac_78;
assign dw_conv_mac_78 = 
	 16'sd 26314 * $signed(input_fmap_78[15:0]) +
	 16'sd 30602 * $signed(input_fmap_78[31:16]) +
	 16'sd 28244 * $signed(input_fmap_78[47:32]) +
	 16'sd 31468 * $signed(input_fmap_78[63:48]) +
	 15'sd 10404 * $signed(input_fmap_78[79:64]) +
	 14'sd 6725 * $signed(input_fmap_78[95:80]) +
	 15'sd 10518 * $signed(input_fmap_78[111:96]) +
	 16'sd 16948 * $signed(input_fmap_78[127:112]) +
	 16'sd 17624 * $signed(input_fmap_78[143:128]);

logic signed [31:0] dw_conv_mac_79;
assign dw_conv_mac_79 = 
	 14'sd 6106 * $signed(input_fmap_79[15:0]) +
	 15'sd 12865 * $signed(input_fmap_79[31:16]) +
	 16'sd 18667 * $signed(input_fmap_79[47:32]) +
	 15'sd 14259 * $signed(input_fmap_79[63:48]) +
	 16'sd 23802 * $signed(input_fmap_79[79:64]) +
	 16'sd 18129 * $signed(input_fmap_79[95:80]) +
	 16'sd 32631 * $signed(input_fmap_79[111:96]) +
	 16'sd 32646 * $signed(input_fmap_79[127:112]) +
	 16'sd 28094 * $signed(input_fmap_79[143:128]);

logic signed [31:0] dw_conv_mac_80;
assign dw_conv_mac_80 = 
	 15'sd 13164 * $signed(input_fmap_80[15:0]) +
	 16'sd 18919 * $signed(input_fmap_80[31:16]) +
	 14'sd 4605 * $signed(input_fmap_80[47:32]) +
	 15'sd 11321 * $signed(input_fmap_80[63:48]) +
	 16'sd 29444 * $signed(input_fmap_80[79:64]) +
	 16'sd 30501 * $signed(input_fmap_80[95:80]) +
	 16'sd 30231 * $signed(input_fmap_80[111:96]) +
	 16'sd 19966 * $signed(input_fmap_80[127:112]) +
	 15'sd 12036 * $signed(input_fmap_80[143:128]);

logic signed [31:0] dw_conv_mac_81;
assign dw_conv_mac_81 = 
	 16'sd 26282 * $signed(input_fmap_81[15:0]) +
	 13'sd 4084 * $signed(input_fmap_81[31:16]) +
	 14'sd 6224 * $signed(input_fmap_81[47:32]) +
	 15'sd 9455 * $signed(input_fmap_81[63:48]) +
	 12'sd 1666 * $signed(input_fmap_81[79:64]) +
	 15'sd 10214 * $signed(input_fmap_81[95:80]) +
	 14'sd 5275 * $signed(input_fmap_81[111:96]) +
	 14'sd 6267 * $signed(input_fmap_81[127:112]) +
	 16'sd 27196 * $signed(input_fmap_81[143:128]);

logic signed [31:0] dw_conv_mac_82;
assign dw_conv_mac_82 = 
	 16'sd 18897 * $signed(input_fmap_82[15:0]) +
	 16'sd 30917 * $signed(input_fmap_82[31:16]) +
	 16'sd 22989 * $signed(input_fmap_82[47:32]) +
	 16'sd 26399 * $signed(input_fmap_82[63:48]) +
	 15'sd 9236 * $signed(input_fmap_82[79:64]) +
	 16'sd 30615 * $signed(input_fmap_82[95:80]) +
	 16'sd 23484 * $signed(input_fmap_82[111:96]) +
	 16'sd 29045 * $signed(input_fmap_82[127:112]) +
	 16'sd 24482 * $signed(input_fmap_82[143:128]);

logic signed [31:0] dw_conv_mac_83;
assign dw_conv_mac_83 = 
	 15'sd 11633 * $signed(input_fmap_83[15:0]) +
	 16'sd 32546 * $signed(input_fmap_83[31:16]) +
	 14'sd 4793 * $signed(input_fmap_83[47:32]) +
	 16'sd 21280 * $signed(input_fmap_83[63:48]) +
	 14'sd 4904 * $signed(input_fmap_83[79:64]) +
	 16'sd 29432 * $signed(input_fmap_83[95:80]) +
	 16'sd 30409 * $signed(input_fmap_83[111:96]) +
	 15'sd 12217 * $signed(input_fmap_83[127:112]) +
	 16'sd 30280 * $signed(input_fmap_83[143:128]);

logic signed [31:0] dw_conv_mac_84;
assign dw_conv_mac_84 = 
	 13'sd 3000 * $signed(input_fmap_84[15:0]) +
	 16'sd 17389 * $signed(input_fmap_84[31:16]) +
	 16'sd 25726 * $signed(input_fmap_84[47:32]) +
	 16'sd 24729 * $signed(input_fmap_84[63:48]) +
	 16'sd 29016 * $signed(input_fmap_84[79:64]) +
	 16'sd 18655 * $signed(input_fmap_84[95:80]) +
	 16'sd 26285 * $signed(input_fmap_84[111:96]) +
	 16'sd 30391 * $signed(input_fmap_84[127:112]) +
	 15'sd 16008 * $signed(input_fmap_84[143:128]);

logic signed [31:0] dw_conv_mac_85;
assign dw_conv_mac_85 = 
	 15'sd 10958 * $signed(input_fmap_85[15:0]) +
	 16'sd 27589 * $signed(input_fmap_85[31:16]) +
	 13'sd 4056 * $signed(input_fmap_85[47:32]) +
	 16'sd 32047 * $signed(input_fmap_85[63:48]) +
	 16'sd 31565 * $signed(input_fmap_85[79:64]) +
	 16'sd 20826 * $signed(input_fmap_85[95:80]) +
	 15'sd 12082 * $signed(input_fmap_85[111:96]) +
	 16'sd 20356 * $signed(input_fmap_85[127:112]) +
	 16'sd 27661 * $signed(input_fmap_85[143:128]);

logic signed [31:0] dw_conv_mac_86;
assign dw_conv_mac_86 = 
	 16'sd 29331 * $signed(input_fmap_86[15:0]) +
	 14'sd 5416 * $signed(input_fmap_86[31:16]) +
	 16'sd 26409 * $signed(input_fmap_86[47:32]) +
	 15'sd 11397 * $signed(input_fmap_86[63:48]) +
	 16'sd 32350 * $signed(input_fmap_86[79:64]) +
	 16'sd 29632 * $signed(input_fmap_86[95:80]) +
	 16'sd 20687 * $signed(input_fmap_86[111:96]) +
	 16'sd 29366 * $signed(input_fmap_86[127:112]) +
	 13'sd 3034 * $signed(input_fmap_86[143:128]);

logic signed [31:0] dw_conv_mac_87;
assign dw_conv_mac_87 = 
	 15'sd 11661 * $signed(input_fmap_87[15:0]) +
	 16'sd 21183 * $signed(input_fmap_87[31:16]) +
	 12'sd 1856 * $signed(input_fmap_87[47:32]) +
	 15'sd 11053 * $signed(input_fmap_87[63:48]) +
	 12'sd 2009 * $signed(input_fmap_87[79:64]) +
	 13'sd 2048 * $signed(input_fmap_87[95:80]) +
	 16'sd 19701 * $signed(input_fmap_87[111:96]) +
	 15'sd 13035 * $signed(input_fmap_87[127:112]) +
	 13'sd 3239 * $signed(input_fmap_87[143:128]);

logic signed [31:0] dw_conv_mac_88;
assign dw_conv_mac_88 = 
	 16'sd 20220 * $signed(input_fmap_88[15:0]) +
	 15'sd 10788 * $signed(input_fmap_88[31:16]) +
	 12'sd 1221 * $signed(input_fmap_88[47:32]) +
	 16'sd 24769 * $signed(input_fmap_88[63:48]) +
	 15'sd 13652 * $signed(input_fmap_88[79:64]) +
	 16'sd 26826 * $signed(input_fmap_88[95:80]) +
	 14'sd 6691 * $signed(input_fmap_88[111:96]) +
	 16'sd 28939 * $signed(input_fmap_88[127:112]) +
	 16'sd 17741 * $signed(input_fmap_88[143:128]);

logic signed [31:0] dw_conv_mac_89;
assign dw_conv_mac_89 = 
	 15'sd 11639 * $signed(input_fmap_89[15:0]) +
	 14'sd 5655 * $signed(input_fmap_89[31:16]) +
	 16'sd 25366 * $signed(input_fmap_89[47:32]) +
	 15'sd 10546 * $signed(input_fmap_89[63:48]) +
	 14'sd 7431 * $signed(input_fmap_89[79:64]) +
	 13'sd 2337 * $signed(input_fmap_89[95:80]) +
	 16'sd 16457 * $signed(input_fmap_89[111:96]) +
	 16'sd 20366 * $signed(input_fmap_89[127:112]) +
	 16'sd 24090 * $signed(input_fmap_89[143:128]);

logic signed [31:0] dw_conv_mac_90;
assign dw_conv_mac_90 = 
	 16'sd 21782 * $signed(input_fmap_90[15:0]) +
	 16'sd 31793 * $signed(input_fmap_90[31:16]) +
	 16'sd 26768 * $signed(input_fmap_90[47:32]) +
	 15'sd 11446 * $signed(input_fmap_90[63:48]) +
	 16'sd 27393 * $signed(input_fmap_90[79:64]) +
	 16'sd 26686 * $signed(input_fmap_90[95:80]) +
	 16'sd 29096 * $signed(input_fmap_90[111:96]) +
	 16'sd 29609 * $signed(input_fmap_90[127:112]) +
	 16'sd 32113 * $signed(input_fmap_90[143:128]);

logic signed [31:0] dw_conv_mac_91;
assign dw_conv_mac_91 = 
	 16'sd 29394 * $signed(input_fmap_91[15:0]) +
	 7'sd 46 * $signed(input_fmap_91[31:16]) +
	 16'sd 20682 * $signed(input_fmap_91[47:32]) +
	 16'sd 20374 * $signed(input_fmap_91[63:48]) +
	 15'sd 15220 * $signed(input_fmap_91[79:64]) +
	 14'sd 7318 * $signed(input_fmap_91[95:80]) +
	 14'sd 8066 * $signed(input_fmap_91[111:96]) +
	 15'sd 14657 * $signed(input_fmap_91[127:112]) +
	 14'sd 4626 * $signed(input_fmap_91[143:128]);

logic signed [31:0] dw_conv_mac_92;
assign dw_conv_mac_92 = 
	 13'sd 2340 * $signed(input_fmap_92[15:0]) +
	 16'sd 19654 * $signed(input_fmap_92[31:16]) +
	 16'sd 28236 * $signed(input_fmap_92[47:32]) +
	 16'sd 31646 * $signed(input_fmap_92[63:48]) +
	 16'sd 23163 * $signed(input_fmap_92[79:64]) +
	 16'sd 17360 * $signed(input_fmap_92[95:80]) +
	 16'sd 25263 * $signed(input_fmap_92[111:96]) +
	 15'sd 15621 * $signed(input_fmap_92[127:112]) +
	 14'sd 6008 * $signed(input_fmap_92[143:128]);

logic signed [31:0] dw_conv_mac_93;
assign dw_conv_mac_93 = 
	 16'sd 16949 * $signed(input_fmap_93[15:0]) +
	 12'sd 1170 * $signed(input_fmap_93[31:16]) +
	 16'sd 20435 * $signed(input_fmap_93[47:32]) +
	 14'sd 6208 * $signed(input_fmap_93[63:48]) +
	 15'sd 13320 * $signed(input_fmap_93[79:64]) +
	 16'sd 28042 * $signed(input_fmap_93[95:80]) +
	 16'sd 32285 * $signed(input_fmap_93[111:96]) +
	 15'sd 15683 * $signed(input_fmap_93[127:112]) +
	 15'sd 15519 * $signed(input_fmap_93[143:128]);

logic signed [31:0] dw_conv_mac_94;
assign dw_conv_mac_94 = 
	 16'sd 23877 * $signed(input_fmap_94[15:0]) +
	 14'sd 4886 * $signed(input_fmap_94[31:16]) +
	 16'sd 29294 * $signed(input_fmap_94[47:32]) +
	 16'sd 23335 * $signed(input_fmap_94[63:48]) +
	 16'sd 29189 * $signed(input_fmap_94[79:64]) +
	 14'sd 6193 * $signed(input_fmap_94[95:80]) +
	 16'sd 32658 * $signed(input_fmap_94[111:96]) +
	 16'sd 27011 * $signed(input_fmap_94[127:112]) +
	 12'sd 1705 * $signed(input_fmap_94[143:128]);

logic signed [31:0] dw_conv_mac_95;
assign dw_conv_mac_95 = 
	 15'sd 11778 * $signed(input_fmap_95[15:0]) +
	 15'sd 14790 * $signed(input_fmap_95[31:16]) +
	 15'sd 11571 * $signed(input_fmap_95[47:32]) +
	 14'sd 5370 * $signed(input_fmap_95[63:48]) +
	 15'sd 8209 * $signed(input_fmap_95[79:64]) +
	 16'sd 26033 * $signed(input_fmap_95[95:80]) +
	 16'sd 30205 * $signed(input_fmap_95[111:96]) +
	 15'sd 13358 * $signed(input_fmap_95[127:112]) +
	 15'sd 14774 * $signed(input_fmap_95[143:128]);

logic signed [31:0] dw_conv_mac_96;
assign dw_conv_mac_96 = 
	 12'sd 1553 * $signed(input_fmap_96[15:0]) +
	 11'sd 1001 * $signed(input_fmap_96[31:16]) +
	 16'sd 16451 * $signed(input_fmap_96[47:32]) +
	 16'sd 29269 * $signed(input_fmap_96[63:48]) +
	 15'sd 12090 * $signed(input_fmap_96[79:64]) +
	 13'sd 2806 * $signed(input_fmap_96[95:80]) +
	 16'sd 18837 * $signed(input_fmap_96[111:96]) +
	 14'sd 4725 * $signed(input_fmap_96[127:112]) +
	 16'sd 23864 * $signed(input_fmap_96[143:128]);

logic signed [31:0] dw_conv_mac_97;
assign dw_conv_mac_97 = 
	 16'sd 23044 * $signed(input_fmap_97[15:0]) +
	 9'sd 216 * $signed(input_fmap_97[31:16]) +
	 16'sd 18405 * $signed(input_fmap_97[47:32]) +
	 16'sd 16737 * $signed(input_fmap_97[63:48]) +
	 16'sd 30326 * $signed(input_fmap_97[79:64]) +
	 13'sd 3610 * $signed(input_fmap_97[95:80]) +
	 14'sd 7089 * $signed(input_fmap_97[111:96]) +
	 16'sd 29609 * $signed(input_fmap_97[127:112]) +
	 16'sd 27425 * $signed(input_fmap_97[143:128]);

logic signed [31:0] dw_conv_mac_98;
assign dw_conv_mac_98 = 
	 16'sd 21466 * $signed(input_fmap_98[15:0]) +
	 16'sd 23571 * $signed(input_fmap_98[31:16]) +
	 16'sd 23574 * $signed(input_fmap_98[47:32]) +
	 14'sd 6341 * $signed(input_fmap_98[63:48]) +
	 16'sd 27251 * $signed(input_fmap_98[79:64]) +
	 13'sd 2639 * $signed(input_fmap_98[95:80]) +
	 13'sd 3980 * $signed(input_fmap_98[111:96]) +
	 16'sd 24269 * $signed(input_fmap_98[127:112]) +
	 16'sd 24748 * $signed(input_fmap_98[143:128]);

logic signed [31:0] dw_conv_mac_99;
assign dw_conv_mac_99 = 
	 15'sd 9680 * $signed(input_fmap_99[15:0]) +
	 14'sd 6019 * $signed(input_fmap_99[31:16]) +
	 14'sd 8011 * $signed(input_fmap_99[47:32]) +
	 16'sd 25655 * $signed(input_fmap_99[63:48]) +
	 16'sd 25793 * $signed(input_fmap_99[79:64]) +
	 16'sd 20747 * $signed(input_fmap_99[95:80]) +
	 16'sd 18686 * $signed(input_fmap_99[111:96]) +
	 16'sd 22553 * $signed(input_fmap_99[127:112]) +
	 15'sd 13217 * $signed(input_fmap_99[143:128]);

logic signed [31:0] dw_conv_mac_100;
assign dw_conv_mac_100 = 
	 16'sd 28499 * $signed(input_fmap_100[15:0]) +
	 15'sd 12541 * $signed(input_fmap_100[31:16]) +
	 16'sd 26166 * $signed(input_fmap_100[47:32]) +
	 13'sd 3793 * $signed(input_fmap_100[63:48]) +
	 13'sd 3782 * $signed(input_fmap_100[79:64]) +
	 16'sd 21874 * $signed(input_fmap_100[95:80]) +
	 14'sd 7043 * $signed(input_fmap_100[111:96]) +
	 14'sd 5661 * $signed(input_fmap_100[127:112]) +
	 14'sd 6359 * $signed(input_fmap_100[143:128]);

logic signed [31:0] dw_conv_mac_101;
assign dw_conv_mac_101 = 
	 16'sd 28351 * $signed(input_fmap_101[15:0]) +
	 14'sd 5654 * $signed(input_fmap_101[31:16]) +
	 16'sd 18008 * $signed(input_fmap_101[47:32]) +
	 16'sd 29108 * $signed(input_fmap_101[63:48]) +
	 14'sd 5534 * $signed(input_fmap_101[79:64]) +
	 14'sd 5216 * $signed(input_fmap_101[95:80]) +
	 16'sd 19843 * $signed(input_fmap_101[111:96]) +
	 15'sd 13431 * $signed(input_fmap_101[127:112]) +
	 16'sd 25288 * $signed(input_fmap_101[143:128]);

logic signed [31:0] dw_conv_mac_102;
assign dw_conv_mac_102 = 
	 14'sd 8102 * $signed(input_fmap_102[15:0]) +
	 13'sd 2883 * $signed(input_fmap_102[31:16]) +
	 15'sd 14138 * $signed(input_fmap_102[47:32]) +
	 16'sd 27651 * $signed(input_fmap_102[63:48]) +
	 15'sd 9740 * $signed(input_fmap_102[79:64]) +
	 15'sd 10518 * $signed(input_fmap_102[95:80]) +
	 15'sd 12297 * $signed(input_fmap_102[111:96]) +
	 13'sd 3456 * $signed(input_fmap_102[127:112]) +
	 16'sd 21432 * $signed(input_fmap_102[143:128]);

logic signed [31:0] dw_conv_mac_103;
assign dw_conv_mac_103 = 
	 16'sd 17900 * $signed(input_fmap_103[15:0]) +
	 15'sd 15422 * $signed(input_fmap_103[31:16]) +
	 16'sd 26703 * $signed(input_fmap_103[47:32]) +
	 14'sd 7326 * $signed(input_fmap_103[63:48]) +
	 13'sd 3680 * $signed(input_fmap_103[79:64]) +
	 15'sd 14552 * $signed(input_fmap_103[95:80]) +
	 16'sd 17731 * $signed(input_fmap_103[111:96]) +
	 16'sd 16429 * $signed(input_fmap_103[127:112]) +
	 14'sd 4660 * $signed(input_fmap_103[143:128]);

logic signed [31:0] dw_conv_mac_104;
assign dw_conv_mac_104 = 
	 16'sd 31961 * $signed(input_fmap_104[15:0]) +
	 16'sd 32353 * $signed(input_fmap_104[31:16]) +
	 15'sd 12320 * $signed(input_fmap_104[47:32]) +
	 13'sd 2589 * $signed(input_fmap_104[63:48]) +
	 16'sd 24258 * $signed(input_fmap_104[79:64]) +
	 11'sd 794 * $signed(input_fmap_104[95:80]) +
	 16'sd 32227 * $signed(input_fmap_104[111:96]) +
	 15'sd 16125 * $signed(input_fmap_104[127:112]) +
	 15'sd 12100 * $signed(input_fmap_104[143:128]);

logic signed [31:0] dw_conv_mac_105;
assign dw_conv_mac_105 = 
	 16'sd 32003 * $signed(input_fmap_105[15:0]) +
	 16'sd 31584 * $signed(input_fmap_105[31:16]) +
	 14'sd 7328 * $signed(input_fmap_105[47:32]) +
	 14'sd 7960 * $signed(input_fmap_105[63:48]) +
	 16'sd 26621 * $signed(input_fmap_105[79:64]) +
	 15'sd 14219 * $signed(input_fmap_105[95:80]) +
	 16'sd 29452 * $signed(input_fmap_105[111:96]) +
	 16'sd 30215 * $signed(input_fmap_105[127:112]) +
	 16'sd 21587 * $signed(input_fmap_105[143:128]);

logic signed [31:0] dw_conv_mac_106;
assign dw_conv_mac_106 = 
	 15'sd 11900 * $signed(input_fmap_106[15:0]) +
	 15'sd 8198 * $signed(input_fmap_106[31:16]) +
	 15'sd 14526 * $signed(input_fmap_106[47:32]) +
	 16'sd 19826 * $signed(input_fmap_106[63:48]) +
	 14'sd 6406 * $signed(input_fmap_106[79:64]) +
	 14'sd 5251 * $signed(input_fmap_106[95:80]) +
	 16'sd 28182 * $signed(input_fmap_106[111:96]) +
	 16'sd 32295 * $signed(input_fmap_106[127:112]) +
	 16'sd 31690 * $signed(input_fmap_106[143:128]);

logic signed [31:0] dw_conv_mac_107;
assign dw_conv_mac_107 = 
	 16'sd 22368 * $signed(input_fmap_107[15:0]) +
	 15'sd 8778 * $signed(input_fmap_107[31:16]) +
	 16'sd 24159 * $signed(input_fmap_107[47:32]) +
	 16'sd 31592 * $signed(input_fmap_107[63:48]) +
	 12'sd 1495 * $signed(input_fmap_107[79:64]) +
	 12'sd 1869 * $signed(input_fmap_107[95:80]) +
	 15'sd 9313 * $signed(input_fmap_107[111:96]) +
	 16'sd 17239 * $signed(input_fmap_107[127:112]) +
	 15'sd 14917 * $signed(input_fmap_107[143:128]);

logic signed [31:0] dw_conv_mac_108;
assign dw_conv_mac_108 = 
	 13'sd 2877 * $signed(input_fmap_108[15:0]) +
	 16'sd 23753 * $signed(input_fmap_108[31:16]) +
	 14'sd 6660 * $signed(input_fmap_108[47:32]) +
	 11'sd 988 * $signed(input_fmap_108[63:48]) +
	 13'sd 2797 * $signed(input_fmap_108[79:64]) +
	 15'sd 14151 * $signed(input_fmap_108[95:80]) +
	 15'sd 15442 * $signed(input_fmap_108[111:96]) +
	 15'sd 14383 * $signed(input_fmap_108[127:112]) +
	 13'sd 4006 * $signed(input_fmap_108[143:128]);

logic signed [31:0] dw_conv_mac_109;
assign dw_conv_mac_109 = 
	 16'sd 27559 * $signed(input_fmap_109[15:0]) +
	 15'sd 12702 * $signed(input_fmap_109[31:16]) +
	 15'sd 13599 * $signed(input_fmap_109[47:32]) +
	 16'sd 21269 * $signed(input_fmap_109[63:48]) +
	 16'sd 26229 * $signed(input_fmap_109[79:64]) +
	 16'sd 25507 * $signed(input_fmap_109[95:80]) +
	 12'sd 1492 * $signed(input_fmap_109[111:96]) +
	 15'sd 16075 * $signed(input_fmap_109[127:112]) +
	 14'sd 7201 * $signed(input_fmap_109[143:128]);

logic signed [31:0] dw_conv_mac_110;
assign dw_conv_mac_110 = 
	 14'sd 6322 * $signed(input_fmap_110[15:0]) +
	 14'sd 5929 * $signed(input_fmap_110[31:16]) +
	 16'sd 27814 * $signed(input_fmap_110[47:32]) +
	 16'sd 28918 * $signed(input_fmap_110[63:48]) +
	 13'sd 2553 * $signed(input_fmap_110[79:64]) +
	 16'sd 25897 * $signed(input_fmap_110[95:80]) +
	 16'sd 30590 * $signed(input_fmap_110[111:96]) +
	 16'sd 26907 * $signed(input_fmap_110[127:112]) +
	 13'sd 2734 * $signed(input_fmap_110[143:128]);

logic signed [31:0] dw_conv_mac_111;
assign dw_conv_mac_111 = 
	 14'sd 5152 * $signed(input_fmap_111[15:0]) +
	 16'sd 30964 * $signed(input_fmap_111[31:16]) +
	 14'sd 5214 * $signed(input_fmap_111[47:32]) +
	 16'sd 16812 * $signed(input_fmap_111[63:48]) +
	 15'sd 9072 * $signed(input_fmap_111[79:64]) +
	 16'sd 28955 * $signed(input_fmap_111[95:80]) +
	 15'sd 12196 * $signed(input_fmap_111[111:96]) +
	 16'sd 22295 * $signed(input_fmap_111[127:112]) +
	 16'sd 17636 * $signed(input_fmap_111[143:128]);

logic signed [31:0] dw_conv_mac_112;
assign dw_conv_mac_112 = 
	 15'sd 15199 * $signed(input_fmap_112[15:0]) +
	 15'sd 8768 * $signed(input_fmap_112[31:16]) +
	 16'sd 23121 * $signed(input_fmap_112[47:32]) +
	 16'sd 26434 * $signed(input_fmap_112[63:48]) +
	 15'sd 9474 * $signed(input_fmap_112[79:64]) +
	 16'sd 22768 * $signed(input_fmap_112[95:80]) +
	 16'sd 29480 * $signed(input_fmap_112[111:96]) +
	 12'sd 1705 * $signed(input_fmap_112[127:112]) +
	 16'sd 32230 * $signed(input_fmap_112[143:128]);

logic signed [31:0] dw_conv_mac_113;
assign dw_conv_mac_113 = 
	 16'sd 25759 * $signed(input_fmap_113[15:0]) +
	 14'sd 5403 * $signed(input_fmap_113[31:16]) +
	 16'sd 26036 * $signed(input_fmap_113[47:32]) +
	 14'sd 6752 * $signed(input_fmap_113[63:48]) +
	 16'sd 25618 * $signed(input_fmap_113[79:64]) +
	 11'sd 904 * $signed(input_fmap_113[95:80]) +
	 15'sd 12936 * $signed(input_fmap_113[111:96]) +
	 14'sd 6772 * $signed(input_fmap_113[127:112]) +
	 15'sd 14694 * $signed(input_fmap_113[143:128]);

logic signed [31:0] dw_conv_mac_114;
assign dw_conv_mac_114 = 
	 10'sd 279 * $signed(input_fmap_114[15:0]) +
	 16'sd 27335 * $signed(input_fmap_114[31:16]) +
	 10'sd 429 * $signed(input_fmap_114[47:32]) +
	 16'sd 20426 * $signed(input_fmap_114[63:48]) +
	 16'sd 27749 * $signed(input_fmap_114[79:64]) +
	 16'sd 29125 * $signed(input_fmap_114[95:80]) +
	 14'sd 4534 * $signed(input_fmap_114[111:96]) +
	 15'sd 13982 * $signed(input_fmap_114[127:112]) +
	 14'sd 5331 * $signed(input_fmap_114[143:128]);

logic signed [31:0] dw_conv_mac_115;
assign dw_conv_mac_115 = 
	 16'sd 18184 * $signed(input_fmap_115[15:0]) +
	 16'sd 28078 * $signed(input_fmap_115[31:16]) +
	 15'sd 14537 * $signed(input_fmap_115[47:32]) +
	 15'sd 12191 * $signed(input_fmap_115[63:48]) +
	 15'sd 8389 * $signed(input_fmap_115[79:64]) +
	 8'sd 65 * $signed(input_fmap_115[95:80]) +
	 14'sd 5897 * $signed(input_fmap_115[111:96]) +
	 15'sd 8252 * $signed(input_fmap_115[127:112]) +
	 16'sd 27167 * $signed(input_fmap_115[143:128]);

logic signed [31:0] dw_conv_mac_116;
assign dw_conv_mac_116 = 
	 16'sd 19349 * $signed(input_fmap_116[15:0]) +
	 15'sd 8524 * $signed(input_fmap_116[31:16]) +
	 15'sd 11622 * $signed(input_fmap_116[47:32]) +
	 16'sd 31481 * $signed(input_fmap_116[63:48]) +
	 16'sd 28314 * $signed(input_fmap_116[79:64]) +
	 15'sd 9321 * $signed(input_fmap_116[95:80]) +
	 16'sd 20402 * $signed(input_fmap_116[111:96]) +
	 15'sd 13727 * $signed(input_fmap_116[127:112]) +
	 16'sd 27833 * $signed(input_fmap_116[143:128]);

logic signed [31:0] dw_conv_mac_117;
assign dw_conv_mac_117 = 
	 15'sd 9444 * $signed(input_fmap_117[15:0]) +
	 16'sd 24034 * $signed(input_fmap_117[31:16]) +
	 16'sd 30465 * $signed(input_fmap_117[47:32]) +
	 15'sd 15503 * $signed(input_fmap_117[63:48]) +
	 14'sd 6135 * $signed(input_fmap_117[79:64]) +
	 16'sd 27603 * $signed(input_fmap_117[95:80]) +
	 15'sd 10066 * $signed(input_fmap_117[111:96]) +
	 12'sd 1945 * $signed(input_fmap_117[127:112]) +
	 16'sd 30364 * $signed(input_fmap_117[143:128]);

logic signed [31:0] dw_conv_mac_118;
assign dw_conv_mac_118 = 
	 14'sd 5721 * $signed(input_fmap_118[15:0]) +
	 16'sd 32419 * $signed(input_fmap_118[31:16]) +
	 16'sd 19338 * $signed(input_fmap_118[47:32]) +
	 15'sd 11419 * $signed(input_fmap_118[63:48]) +
	 15'sd 12539 * $signed(input_fmap_118[79:64]) +
	 15'sd 8256 * $signed(input_fmap_118[95:80]) +
	 16'sd 31383 * $signed(input_fmap_118[111:96]) +
	 16'sd 24813 * $signed(input_fmap_118[127:112]) +
	 15'sd 13947 * $signed(input_fmap_118[143:128]);

logic signed [31:0] dw_conv_mac_119;
assign dw_conv_mac_119 = 
	 16'sd 30267 * $signed(input_fmap_119[15:0]) +
	 14'sd 4452 * $signed(input_fmap_119[31:16]) +
	 13'sd 4062 * $signed(input_fmap_119[47:32]) +
	 15'sd 13577 * $signed(input_fmap_119[63:48]) +
	 12'sd 1128 * $signed(input_fmap_119[79:64]) +
	 15'sd 9769 * $signed(input_fmap_119[95:80]) +
	 16'sd 29769 * $signed(input_fmap_119[111:96]) +
	 16'sd 21429 * $signed(input_fmap_119[127:112]) +
	 16'sd 31532 * $signed(input_fmap_119[143:128]);

logic signed [31:0] dw_conv_mac_120;
assign dw_conv_mac_120 = 
	 15'sd 12394 * $signed(input_fmap_120[15:0]) +
	 12'sd 1473 * $signed(input_fmap_120[31:16]) +
	 14'sd 6906 * $signed(input_fmap_120[47:32]) +
	 13'sd 2718 * $signed(input_fmap_120[63:48]) +
	 10'sd 435 * $signed(input_fmap_120[79:64]) +
	 15'sd 10607 * $signed(input_fmap_120[95:80]) +
	 15'sd 8208 * $signed(input_fmap_120[111:96]) +
	 15'sd 11671 * $signed(input_fmap_120[127:112]) +
	 16'sd 31994 * $signed(input_fmap_120[143:128]);

logic signed [31:0] dw_conv_mac_121;
assign dw_conv_mac_121 = 
	 15'sd 8255 * $signed(input_fmap_121[15:0]) +
	 15'sd 11458 * $signed(input_fmap_121[31:16]) +
	 16'sd 20959 * $signed(input_fmap_121[47:32]) +
	 15'sd 12377 * $signed(input_fmap_121[63:48]) +
	 14'sd 7753 * $signed(input_fmap_121[79:64]) +
	 16'sd 25964 * $signed(input_fmap_121[95:80]) +
	 16'sd 21531 * $signed(input_fmap_121[111:96]) +
	 15'sd 8309 * $signed(input_fmap_121[127:112]) +
	 16'sd 21274 * $signed(input_fmap_121[143:128]);

logic signed [31:0] dw_conv_mac_122;
assign dw_conv_mac_122 = 
	 16'sd 19735 * $signed(input_fmap_122[15:0]) +
	 16'sd 26221 * $signed(input_fmap_122[31:16]) +
	 16'sd 32167 * $signed(input_fmap_122[47:32]) +
	 16'sd 32193 * $signed(input_fmap_122[63:48]) +
	 16'sd 21697 * $signed(input_fmap_122[79:64]) +
	 15'sd 10635 * $signed(input_fmap_122[95:80]) +
	 15'sd 9683 * $signed(input_fmap_122[111:96]) +
	 14'sd 7594 * $signed(input_fmap_122[127:112]) +
	 16'sd 27781 * $signed(input_fmap_122[143:128]);

logic signed [31:0] dw_conv_mac_123;
assign dw_conv_mac_123 = 
	 16'sd 20664 * $signed(input_fmap_123[15:0]) +
	 16'sd 30437 * $signed(input_fmap_123[31:16]) +
	 16'sd 27335 * $signed(input_fmap_123[47:32]) +
	 16'sd 30968 * $signed(input_fmap_123[63:48]) +
	 16'sd 27250 * $signed(input_fmap_123[79:64]) +
	 16'sd 31005 * $signed(input_fmap_123[95:80]) +
	 15'sd 13125 * $signed(input_fmap_123[111:96]) +
	 14'sd 8180 * $signed(input_fmap_123[127:112]) +
	 16'sd 21403 * $signed(input_fmap_123[143:128]);

logic signed [31:0] dw_conv_mac_124;
assign dw_conv_mac_124 = 
	 12'sd 1645 * $signed(input_fmap_124[15:0]) +
	 15'sd 14045 * $signed(input_fmap_124[31:16]) +
	 16'sd 28861 * $signed(input_fmap_124[47:32]) +
	 16'sd 16468 * $signed(input_fmap_124[63:48]) +
	 16'sd 22945 * $signed(input_fmap_124[79:64]) +
	 15'sd 15556 * $signed(input_fmap_124[95:80]) +
	 16'sd 25126 * $signed(input_fmap_124[111:96]) +
	 16'sd 31954 * $signed(input_fmap_124[127:112]) +
	 16'sd 31590 * $signed(input_fmap_124[143:128]);

logic signed [31:0] dw_conv_mac_125;
assign dw_conv_mac_125 = 
	 12'sd 1327 * $signed(input_fmap_125[15:0]) +
	 16'sd 31430 * $signed(input_fmap_125[31:16]) +
	 15'sd 8660 * $signed(input_fmap_125[47:32]) +
	 16'sd 18695 * $signed(input_fmap_125[63:48]) +
	 16'sd 30149 * $signed(input_fmap_125[79:64]) +
	 15'sd 12918 * $signed(input_fmap_125[95:80]) +
	 16'sd 32141 * $signed(input_fmap_125[111:96]) +
	 16'sd 20620 * $signed(input_fmap_125[127:112]) +
	 16'sd 23744 * $signed(input_fmap_125[143:128]);

logic signed [31:0] dw_conv_mac_126;
assign dw_conv_mac_126 = 
	 16'sd 32713 * $signed(input_fmap_126[15:0]) +
	 14'sd 5218 * $signed(input_fmap_126[31:16]) +
	 16'sd 27405 * $signed(input_fmap_126[47:32]) +
	 16'sd 22057 * $signed(input_fmap_126[63:48]) +
	 16'sd 31715 * $signed(input_fmap_126[79:64]) +
	 16'sd 17177 * $signed(input_fmap_126[95:80]) +
	 16'sd 28899 * $signed(input_fmap_126[111:96]) +
	 16'sd 27856 * $signed(input_fmap_126[127:112]) +
	 16'sd 23521 * $signed(input_fmap_126[143:128]);

logic signed [31:0] dw_conv_mac_127;
assign dw_conv_mac_127 = 
	 16'sd 27493 * $signed(input_fmap_127[15:0]) +
	 11'sd 637 * $signed(input_fmap_127[31:16]) +
	 14'sd 6964 * $signed(input_fmap_127[47:32]) +
	 15'sd 14488 * $signed(input_fmap_127[63:48]) +
	 14'sd 6771 * $signed(input_fmap_127[79:64]) +
	 15'sd 10350 * $signed(input_fmap_127[95:80]) +
	 16'sd 20179 * $signed(input_fmap_127[111:96]) +
	 16'sd 19131 * $signed(input_fmap_127[127:112]) +
	 16'sd 27882 * $signed(input_fmap_127[143:128]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 14'd7970;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 14'd7933;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 14'd7635;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 16'd28754;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 15'd11038;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 15'd10040;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 16'd28769;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 12'd1378;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 15'd9495;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 14'd4669;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 16'd27740;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 16'd25300;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 14'd5431;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 16'd31283;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 14'd6747;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 16'd19279;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 15'd13488;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 13'd3947;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18 + 14'd4914;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 13'd3858;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 16'd31223;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21 + 16'd28644;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22 + 14'd8035;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 16'd17081;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24 + 16'd25728;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25 + 16'd32627;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 15'd8203;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 16'd23951;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28 + 16'd23505;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 16'd23796;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 16'd20124;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 14'd5373;
logic [31:0] bias_add_32;
assign bias_add_32 = dw_conv_mac_32 + 13'd2162;
logic [31:0] bias_add_33;
assign bias_add_33 = dw_conv_mac_33 + 16'd31387;
logic [31:0] bias_add_34;
assign bias_add_34 = dw_conv_mac_34 + 15'd12839;
logic [31:0] bias_add_35;
assign bias_add_35 = dw_conv_mac_35 + 15'd9691;
logic [31:0] bias_add_36;
assign bias_add_36 = dw_conv_mac_36 + 15'd16264;
logic [31:0] bias_add_37;
assign bias_add_37 = dw_conv_mac_37 + 16'd26956;
logic [31:0] bias_add_38;
assign bias_add_38 = dw_conv_mac_38 + 16'd31156;
logic [31:0] bias_add_39;
assign bias_add_39 = dw_conv_mac_39 + 15'd11501;
logic [31:0] bias_add_40;
assign bias_add_40 = dw_conv_mac_40 + 16'd18679;
logic [31:0] bias_add_41;
assign bias_add_41 = dw_conv_mac_41 + 15'd15295;
logic [31:0] bias_add_42;
assign bias_add_42 = dw_conv_mac_42 + 15'd9113;
logic [31:0] bias_add_43;
assign bias_add_43 = dw_conv_mac_43 + 15'd12293;
logic [31:0] bias_add_44;
assign bias_add_44 = dw_conv_mac_44 + 16'd23540;
logic [31:0] bias_add_45;
assign bias_add_45 = dw_conv_mac_45 + 13'd3109;
logic [31:0] bias_add_46;
assign bias_add_46 = dw_conv_mac_46 + 15'd13584;
logic [31:0] bias_add_47;
assign bias_add_47 = dw_conv_mac_47 + 15'd13765;
logic [31:0] bias_add_48;
assign bias_add_48 = dw_conv_mac_48 + 15'd10823;
logic [31:0] bias_add_49;
assign bias_add_49 = dw_conv_mac_49 + 16'd26002;
logic [31:0] bias_add_50;
assign bias_add_50 = dw_conv_mac_50 + 16'd18459;
logic [31:0] bias_add_51;
assign bias_add_51 = dw_conv_mac_51 + 13'd2825;
logic [31:0] bias_add_52;
assign bias_add_52 = dw_conv_mac_52 + 16'd29244;
logic [31:0] bias_add_53;
assign bias_add_53 = dw_conv_mac_53 + 15'd13339;
logic [31:0] bias_add_54;
assign bias_add_54 = dw_conv_mac_54 + 15'd14429;
logic [31:0] bias_add_55;
assign bias_add_55 = dw_conv_mac_55 + 14'd4422;
logic [31:0] bias_add_56;
assign bias_add_56 = dw_conv_mac_56 + 16'd32329;
logic [31:0] bias_add_57;
assign bias_add_57 = dw_conv_mac_57 + 16'd26925;
logic [31:0] bias_add_58;
assign bias_add_58 = dw_conv_mac_58 + 16'd23365;
logic [31:0] bias_add_59;
assign bias_add_59 = dw_conv_mac_59 + 16'd30229;
logic [31:0] bias_add_60;
assign bias_add_60 = dw_conv_mac_60 + 16'd20334;
logic [31:0] bias_add_61;
assign bias_add_61 = dw_conv_mac_61 + 14'd6495;
logic [31:0] bias_add_62;
assign bias_add_62 = dw_conv_mac_62 + 16'd28357;
logic [31:0] bias_add_63;
assign bias_add_63 = dw_conv_mac_63 + 15'd16271;
logic [31:0] bias_add_64;
assign bias_add_64 = dw_conv_mac_64 + 16'd16696;
logic [31:0] bias_add_65;
assign bias_add_65 = dw_conv_mac_65 + 16'd20784;
logic [31:0] bias_add_66;
assign bias_add_66 = dw_conv_mac_66 + 16'd20054;
logic [31:0] bias_add_67;
assign bias_add_67 = dw_conv_mac_67 + 15'd14765;
logic [31:0] bias_add_68;
assign bias_add_68 = dw_conv_mac_68 + 15'd10074;
logic [31:0] bias_add_69;
assign bias_add_69 = dw_conv_mac_69 + 16'd26118;
logic [31:0] bias_add_70;
assign bias_add_70 = dw_conv_mac_70 + 16'd18066;
logic [31:0] bias_add_71;
assign bias_add_71 = dw_conv_mac_71 + 15'd13432;
logic [31:0] bias_add_72;
assign bias_add_72 = dw_conv_mac_72 + 15'd11188;
logic [31:0] bias_add_73;
assign bias_add_73 = dw_conv_mac_73 + 16'd25577;
logic [31:0] bias_add_74;
assign bias_add_74 = dw_conv_mac_74 + 15'd13191;
logic [31:0] bias_add_75;
assign bias_add_75 = dw_conv_mac_75 + 16'd22288;
logic [31:0] bias_add_76;
assign bias_add_76 = dw_conv_mac_76 + 13'd3643;
logic [31:0] bias_add_77;
assign bias_add_77 = dw_conv_mac_77 + 16'd26368;
logic [31:0] bias_add_78;
assign bias_add_78 = dw_conv_mac_78 + 14'd5439;
logic [31:0] bias_add_79;
assign bias_add_79 = dw_conv_mac_79 + 16'd22843;
logic [31:0] bias_add_80;
assign bias_add_80 = dw_conv_mac_80 + 14'd5493;
logic [31:0] bias_add_81;
assign bias_add_81 = dw_conv_mac_81 + 15'd15504;
logic [31:0] bias_add_82;
assign bias_add_82 = dw_conv_mac_82 + 15'd13005;
logic [31:0] bias_add_83;
assign bias_add_83 = dw_conv_mac_83 + 13'd2197;
logic [31:0] bias_add_84;
assign bias_add_84 = dw_conv_mac_84 + 14'd4124;
logic [31:0] bias_add_85;
assign bias_add_85 = dw_conv_mac_85 + 16'd24152;
logic [31:0] bias_add_86;
assign bias_add_86 = dw_conv_mac_86 + 15'd14474;
logic [31:0] bias_add_87;
assign bias_add_87 = dw_conv_mac_87 + 14'd5829;
logic [31:0] bias_add_88;
assign bias_add_88 = dw_conv_mac_88 + 16'd17045;
logic [31:0] bias_add_89;
assign bias_add_89 = dw_conv_mac_89 + 15'd11821;
logic [31:0] bias_add_90;
assign bias_add_90 = dw_conv_mac_90 + 14'd7979;
logic [31:0] bias_add_91;
assign bias_add_91 = dw_conv_mac_91 + 16'd27579;
logic [31:0] bias_add_92;
assign bias_add_92 = dw_conv_mac_92 + 13'd3400;
logic [31:0] bias_add_93;
assign bias_add_93 = dw_conv_mac_93 + 15'd13297;
logic [31:0] bias_add_94;
assign bias_add_94 = dw_conv_mac_94 + 16'd28798;
logic [31:0] bias_add_95;
assign bias_add_95 = dw_conv_mac_95 + 16'd27097;
logic [31:0] bias_add_96;
assign bias_add_96 = dw_conv_mac_96 + 13'd2976;
logic [31:0] bias_add_97;
assign bias_add_97 = dw_conv_mac_97 + 15'd8457;
logic [31:0] bias_add_98;
assign bias_add_98 = dw_conv_mac_98 + 16'd24590;
logic [31:0] bias_add_99;
assign bias_add_99 = dw_conv_mac_99 + 14'd5424;
logic [31:0] bias_add_100;
assign bias_add_100 = dw_conv_mac_100 + 15'd12658;
logic [31:0] bias_add_101;
assign bias_add_101 = dw_conv_mac_101 + 16'd31407;
logic [31:0] bias_add_102;
assign bias_add_102 = dw_conv_mac_102 + 14'd7101;
logic [31:0] bias_add_103;
assign bias_add_103 = dw_conv_mac_103 + 16'd22482;
logic [31:0] bias_add_104;
assign bias_add_104 = dw_conv_mac_104 + 16'd22793;
logic [31:0] bias_add_105;
assign bias_add_105 = dw_conv_mac_105 + 15'd10424;
logic [31:0] bias_add_106;
assign bias_add_106 = dw_conv_mac_106 + 16'd17346;
logic [31:0] bias_add_107;
assign bias_add_107 = dw_conv_mac_107 + 13'd2423;
logic [31:0] bias_add_108;
assign bias_add_108 = dw_conv_mac_108 + 14'd7257;
logic [31:0] bias_add_109;
assign bias_add_109 = dw_conv_mac_109 + 16'd25564;
logic [31:0] bias_add_110;
assign bias_add_110 = dw_conv_mac_110 + 15'd16231;
logic [31:0] bias_add_111;
assign bias_add_111 = dw_conv_mac_111 + 11'd582;
logic [31:0] bias_add_112;
assign bias_add_112 = dw_conv_mac_112 + 16'd19972;
logic [31:0] bias_add_113;
assign bias_add_113 = dw_conv_mac_113 + 15'd12318;
logic [31:0] bias_add_114;
assign bias_add_114 = dw_conv_mac_114 + 11'd756;
logic [31:0] bias_add_115;
assign bias_add_115 = dw_conv_mac_115 + 15'd11151;
logic [31:0] bias_add_116;
assign bias_add_116 = dw_conv_mac_116 + 15'd15519;
logic [31:0] bias_add_117;
assign bias_add_117 = dw_conv_mac_117 + 16'd32541;
logic [31:0] bias_add_118;
assign bias_add_118 = dw_conv_mac_118 + 16'd19707;
logic [31:0] bias_add_119;
assign bias_add_119 = dw_conv_mac_119 + 16'd20120;
logic [31:0] bias_add_120;
assign bias_add_120 = dw_conv_mac_120 + 15'd8412;
logic [31:0] bias_add_121;
assign bias_add_121 = dw_conv_mac_121 + 16'd25299;
logic [31:0] bias_add_122;
assign bias_add_122 = dw_conv_mac_122 + 14'd7023;
logic [31:0] bias_add_123;
assign bias_add_123 = dw_conv_mac_123 + 15'd13852;
logic [31:0] bias_add_124;
assign bias_add_124 = dw_conv_mac_124 + 15'd15018;
logic [31:0] bias_add_125;
assign bias_add_125 = dw_conv_mac_125 + 16'd19236;
logic [31:0] bias_add_126;
assign bias_add_126 = dw_conv_mac_126 + 14'd5993;
logic [31:0] bias_add_127;
assign bias_add_127 = dw_conv_mac_127 + 14'd6094;

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
