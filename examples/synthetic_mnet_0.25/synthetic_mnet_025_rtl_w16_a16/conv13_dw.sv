module conv13_dw (
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
	 14'sd 5464 * $signed(input_fmap_0[15:0]) +
	 16'sd 30257 * $signed(input_fmap_0[31:16]) +
	 16'sd 22004 * $signed(input_fmap_0[47:32]) +
	 16'sd 17432 * $signed(input_fmap_0[63:48]) +
	 14'sd 7716 * $signed(input_fmap_0[79:64]) +
	 15'sd 13331 * $signed(input_fmap_0[95:80]) +
	 15'sd 8995 * $signed(input_fmap_0[111:96]) +
	 15'sd 14235 * $signed(input_fmap_0[127:112]) +
	 16'sd 24935 * $signed(input_fmap_0[143:128]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 16'sd 26360 * $signed(input_fmap_1[15:0]) +
	 12'sd 1394 * $signed(input_fmap_1[31:16]) +
	 16'sd 23670 * $signed(input_fmap_1[47:32]) +
	 15'sd 8671 * $signed(input_fmap_1[63:48]) +
	 16'sd 18999 * $signed(input_fmap_1[79:64]) +
	 13'sd 2593 * $signed(input_fmap_1[95:80]) +
	 14'sd 5283 * $signed(input_fmap_1[111:96]) +
	 16'sd 22671 * $signed(input_fmap_1[127:112]) +
	 16'sd 28905 * $signed(input_fmap_1[143:128]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 15'sd 11242 * $signed(input_fmap_2[15:0]) +
	 16'sd 23219 * $signed(input_fmap_2[31:16]) +
	 16'sd 19957 * $signed(input_fmap_2[47:32]) +
	 10'sd 373 * $signed(input_fmap_2[63:48]) +
	 16'sd 21474 * $signed(input_fmap_2[79:64]) +
	 16'sd 26266 * $signed(input_fmap_2[95:80]) +
	 16'sd 27211 * $signed(input_fmap_2[111:96]) +
	 16'sd 20080 * $signed(input_fmap_2[127:112]) +
	 16'sd 23311 * $signed(input_fmap_2[143:128]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 16'sd 32130 * $signed(input_fmap_3[15:0]) +
	 16'sd 20436 * $signed(input_fmap_3[31:16]) +
	 15'sd 8588 * $signed(input_fmap_3[47:32]) +
	 13'sd 2366 * $signed(input_fmap_3[63:48]) +
	 16'sd 21733 * $signed(input_fmap_3[79:64]) +
	 13'sd 3302 * $signed(input_fmap_3[95:80]) +
	 16'sd 16825 * $signed(input_fmap_3[111:96]) +
	 15'sd 11175 * $signed(input_fmap_3[127:112]) +
	 16'sd 21663 * $signed(input_fmap_3[143:128]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 16'sd 29412 * $signed(input_fmap_4[15:0]) +
	 16'sd 18803 * $signed(input_fmap_4[31:16]) +
	 11'sd 713 * $signed(input_fmap_4[47:32]) +
	 16'sd 23193 * $signed(input_fmap_4[63:48]) +
	 16'sd 32736 * $signed(input_fmap_4[79:64]) +
	 15'sd 10337 * $signed(input_fmap_4[95:80]) +
	 16'sd 27866 * $signed(input_fmap_4[111:96]) +
	 16'sd 18804 * $signed(input_fmap_4[127:112]) +
	 15'sd 14741 * $signed(input_fmap_4[143:128]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 10'sd 271 * $signed(input_fmap_5[15:0]) +
	 15'sd 9643 * $signed(input_fmap_5[31:16]) +
	 16'sd 32376 * $signed(input_fmap_5[47:32]) +
	 16'sd 23464 * $signed(input_fmap_5[63:48]) +
	 13'sd 2208 * $signed(input_fmap_5[79:64]) +
	 15'sd 11005 * $signed(input_fmap_5[95:80]) +
	 16'sd 19078 * $signed(input_fmap_5[111:96]) +
	 15'sd 8298 * $signed(input_fmap_5[127:112]) +
	 16'sd 16772 * $signed(input_fmap_5[143:128]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 12'sd 1519 * $signed(input_fmap_6[15:0]) +
	 16'sd 25896 * $signed(input_fmap_6[31:16]) +
	 12'sd 1094 * $signed(input_fmap_6[47:32]) +
	 16'sd 31367 * $signed(input_fmap_6[63:48]) +
	 15'sd 10586 * $signed(input_fmap_6[79:64]) +
	 16'sd 29811 * $signed(input_fmap_6[95:80]) +
	 16'sd 23787 * $signed(input_fmap_6[111:96]) +
	 15'sd 15886 * $signed(input_fmap_6[127:112]) +
	 14'sd 6210 * $signed(input_fmap_6[143:128]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 16'sd 18354 * $signed(input_fmap_7[15:0]) +
	 13'sd 2096 * $signed(input_fmap_7[31:16]) +
	 14'sd 5911 * $signed(input_fmap_7[47:32]) +
	 16'sd 23861 * $signed(input_fmap_7[63:48]) +
	 16'sd 23903 * $signed(input_fmap_7[79:64]) +
	 11'sd 759 * $signed(input_fmap_7[95:80]) +
	 15'sd 11216 * $signed(input_fmap_7[111:96]) +
	 16'sd 16873 * $signed(input_fmap_7[127:112]) +
	 14'sd 7950 * $signed(input_fmap_7[143:128]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 16'sd 17681 * $signed(input_fmap_8[15:0]) +
	 16'sd 29447 * $signed(input_fmap_8[31:16]) +
	 16'sd 26034 * $signed(input_fmap_8[47:32]) +
	 16'sd 27351 * $signed(input_fmap_8[63:48]) +
	 14'sd 5679 * $signed(input_fmap_8[79:64]) +
	 16'sd 30371 * $signed(input_fmap_8[95:80]) +
	 16'sd 17357 * $signed(input_fmap_8[111:96]) +
	 15'sd 12212 * $signed(input_fmap_8[127:112]) +
	 15'sd 14521 * $signed(input_fmap_8[143:128]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 15'sd 8459 * $signed(input_fmap_9[15:0]) +
	 15'sd 13221 * $signed(input_fmap_9[31:16]) +
	 16'sd 19107 * $signed(input_fmap_9[47:32]) +
	 16'sd 20644 * $signed(input_fmap_9[63:48]) +
	 15'sd 13077 * $signed(input_fmap_9[79:64]) +
	 15'sd 9751 * $signed(input_fmap_9[95:80]) +
	 16'sd 16721 * $signed(input_fmap_9[111:96]) +
	 16'sd 23607 * $signed(input_fmap_9[127:112]) +
	 15'sd 8534 * $signed(input_fmap_9[143:128]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 16'sd 28482 * $signed(input_fmap_10[15:0]) +
	 12'sd 1568 * $signed(input_fmap_10[31:16]) +
	 16'sd 26254 * $signed(input_fmap_10[47:32]) +
	 16'sd 16792 * $signed(input_fmap_10[63:48]) +
	 15'sd 10768 * $signed(input_fmap_10[79:64]) +
	 16'sd 17916 * $signed(input_fmap_10[95:80]) +
	 16'sd 17154 * $signed(input_fmap_10[111:96]) +
	 15'sd 15799 * $signed(input_fmap_10[127:112]) +
	 15'sd 15972 * $signed(input_fmap_10[143:128]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 16'sd 31796 * $signed(input_fmap_11[15:0]) +
	 15'sd 12908 * $signed(input_fmap_11[31:16]) +
	 13'sd 2916 * $signed(input_fmap_11[47:32]) +
	 16'sd 24662 * $signed(input_fmap_11[63:48]) +
	 16'sd 23559 * $signed(input_fmap_11[79:64]) +
	 15'sd 10302 * $signed(input_fmap_11[95:80]) +
	 14'sd 6455 * $signed(input_fmap_11[111:96]) +
	 14'sd 5748 * $signed(input_fmap_11[127:112]) +
	 16'sd 22936 * $signed(input_fmap_11[143:128]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 16'sd 29923 * $signed(input_fmap_12[15:0]) +
	 16'sd 21639 * $signed(input_fmap_12[31:16]) +
	 16'sd 21698 * $signed(input_fmap_12[47:32]) +
	 15'sd 8340 * $signed(input_fmap_12[63:48]) +
	 15'sd 14450 * $signed(input_fmap_12[79:64]) +
	 16'sd 31130 * $signed(input_fmap_12[95:80]) +
	 14'sd 7076 * $signed(input_fmap_12[111:96]) +
	 13'sd 3307 * $signed(input_fmap_12[127:112]) +
	 16'sd 20229 * $signed(input_fmap_12[143:128]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 16'sd 27742 * $signed(input_fmap_13[15:0]) +
	 14'sd 6297 * $signed(input_fmap_13[31:16]) +
	 16'sd 30661 * $signed(input_fmap_13[47:32]) +
	 15'sd 8776 * $signed(input_fmap_13[63:48]) +
	 14'sd 5432 * $signed(input_fmap_13[79:64]) +
	 16'sd 31791 * $signed(input_fmap_13[95:80]) +
	 15'sd 13421 * $signed(input_fmap_13[111:96]) +
	 14'sd 4272 * $signed(input_fmap_13[127:112]) +
	 15'sd 10907 * $signed(input_fmap_13[143:128]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 16'sd 17352 * $signed(input_fmap_14[15:0]) +
	 16'sd 16488 * $signed(input_fmap_14[31:16]) +
	 15'sd 12086 * $signed(input_fmap_14[47:32]) +
	 15'sd 9034 * $signed(input_fmap_14[63:48]) +
	 16'sd 26968 * $signed(input_fmap_14[79:64]) +
	 15'sd 9250 * $signed(input_fmap_14[95:80]) +
	 13'sd 3263 * $signed(input_fmap_14[111:96]) +
	 13'sd 2463 * $signed(input_fmap_14[127:112]) +
	 16'sd 23186 * $signed(input_fmap_14[143:128]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 6'sd 21 * $signed(input_fmap_15[15:0]) +
	 16'sd 27060 * $signed(input_fmap_15[31:16]) +
	 16'sd 28829 * $signed(input_fmap_15[47:32]) +
	 16'sd 28573 * $signed(input_fmap_15[63:48]) +
	 16'sd 16653 * $signed(input_fmap_15[79:64]) +
	 15'sd 15984 * $signed(input_fmap_15[95:80]) +
	 16'sd 32543 * $signed(input_fmap_15[111:96]) +
	 16'sd 23809 * $signed(input_fmap_15[127:112]) +
	 15'sd 10509 * $signed(input_fmap_15[143:128]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 16'sd 22416 * $signed(input_fmap_16[15:0]) +
	 14'sd 4914 * $signed(input_fmap_16[31:16]) +
	 15'sd 13974 * $signed(input_fmap_16[47:32]) +
	 14'sd 6961 * $signed(input_fmap_16[63:48]) +
	 15'sd 9208 * $signed(input_fmap_16[79:64]) +
	 16'sd 25119 * $signed(input_fmap_16[95:80]) +
	 16'sd 16421 * $signed(input_fmap_16[111:96]) +
	 15'sd 15418 * $signed(input_fmap_16[127:112]) +
	 16'sd 30374 * $signed(input_fmap_16[143:128]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 16'sd 26945 * $signed(input_fmap_17[15:0]) +
	 16'sd 20432 * $signed(input_fmap_17[31:16]) +
	 15'sd 14308 * $signed(input_fmap_17[47:32]) +
	 16'sd 17285 * $signed(input_fmap_17[63:48]) +
	 13'sd 3827 * $signed(input_fmap_17[79:64]) +
	 16'sd 22804 * $signed(input_fmap_17[95:80]) +
	 16'sd 21115 * $signed(input_fmap_17[111:96]) +
	 16'sd 32554 * $signed(input_fmap_17[127:112]) +
	 15'sd 8694 * $signed(input_fmap_17[143:128]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 16'sd 20708 * $signed(input_fmap_18[15:0]) +
	 16'sd 18615 * $signed(input_fmap_18[31:16]) +
	 16'sd 19674 * $signed(input_fmap_18[47:32]) +
	 16'sd 28380 * $signed(input_fmap_18[63:48]) +
	 16'sd 21559 * $signed(input_fmap_18[79:64]) +
	 16'sd 32063 * $signed(input_fmap_18[95:80]) +
	 16'sd 26171 * $signed(input_fmap_18[111:96]) +
	 15'sd 8616 * $signed(input_fmap_18[127:112]) +
	 15'sd 8474 * $signed(input_fmap_18[143:128]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 16'sd 21094 * $signed(input_fmap_19[15:0]) +
	 16'sd 19753 * $signed(input_fmap_19[31:16]) +
	 16'sd 18026 * $signed(input_fmap_19[47:32]) +
	 16'sd 19884 * $signed(input_fmap_19[63:48]) +
	 15'sd 8393 * $signed(input_fmap_19[79:64]) +
	 16'sd 27701 * $signed(input_fmap_19[95:80]) +
	 15'sd 13205 * $signed(input_fmap_19[111:96]) +
	 13'sd 3889 * $signed(input_fmap_19[127:112]) +
	 15'sd 11925 * $signed(input_fmap_19[143:128]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 16'sd 32744 * $signed(input_fmap_20[15:0]) +
	 15'sd 10819 * $signed(input_fmap_20[31:16]) +
	 16'sd 17258 * $signed(input_fmap_20[47:32]) +
	 15'sd 11862 * $signed(input_fmap_20[63:48]) +
	 13'sd 3167 * $signed(input_fmap_20[79:64]) +
	 15'sd 12927 * $signed(input_fmap_20[95:80]) +
	 16'sd 20636 * $signed(input_fmap_20[111:96]) +
	 16'sd 22346 * $signed(input_fmap_20[127:112]) +
	 16'sd 29102 * $signed(input_fmap_20[143:128]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 16'sd 27510 * $signed(input_fmap_21[15:0]) +
	 16'sd 27930 * $signed(input_fmap_21[31:16]) +
	 16'sd 16471 * $signed(input_fmap_21[47:32]) +
	 15'sd 10904 * $signed(input_fmap_21[63:48]) +
	 12'sd 1250 * $signed(input_fmap_21[79:64]) +
	 15'sd 8523 * $signed(input_fmap_21[95:80]) +
	 15'sd 8453 * $signed(input_fmap_21[111:96]) +
	 16'sd 32678 * $signed(input_fmap_21[127:112]) +
	 15'sd 11963 * $signed(input_fmap_21[143:128]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 13'sd 2145 * $signed(input_fmap_22[15:0]) +
	 16'sd 22460 * $signed(input_fmap_22[31:16]) +
	 16'sd 27322 * $signed(input_fmap_22[47:32]) +
	 15'sd 11662 * $signed(input_fmap_22[63:48]) +
	 16'sd 21764 * $signed(input_fmap_22[79:64]) +
	 16'sd 23354 * $signed(input_fmap_22[95:80]) +
	 15'sd 13482 * $signed(input_fmap_22[111:96]) +
	 16'sd 32522 * $signed(input_fmap_22[127:112]) +
	 15'sd 8800 * $signed(input_fmap_22[143:128]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 16'sd 19933 * $signed(input_fmap_23[15:0]) +
	 15'sd 15356 * $signed(input_fmap_23[31:16]) +
	 15'sd 10760 * $signed(input_fmap_23[47:32]) +
	 16'sd 16610 * $signed(input_fmap_23[63:48]) +
	 12'sd 1036 * $signed(input_fmap_23[79:64]) +
	 13'sd 3421 * $signed(input_fmap_23[95:80]) +
	 15'sd 13095 * $signed(input_fmap_23[111:96]) +
	 11'sd 841 * $signed(input_fmap_23[127:112]) +
	 16'sd 21198 * $signed(input_fmap_23[143:128]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 15'sd 15551 * $signed(input_fmap_24[15:0]) +
	 16'sd 32381 * $signed(input_fmap_24[31:16]) +
	 16'sd 32324 * $signed(input_fmap_24[47:32]) +
	 16'sd 23802 * $signed(input_fmap_24[63:48]) +
	 16'sd 21209 * $signed(input_fmap_24[79:64]) +
	 16'sd 21984 * $signed(input_fmap_24[95:80]) +
	 16'sd 20542 * $signed(input_fmap_24[111:96]) +
	 16'sd 23089 * $signed(input_fmap_24[127:112]) +
	 16'sd 23477 * $signed(input_fmap_24[143:128]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 16'sd 27226 * $signed(input_fmap_25[15:0]) +
	 14'sd 8054 * $signed(input_fmap_25[31:16]) +
	 16'sd 20885 * $signed(input_fmap_25[47:32]) +
	 12'sd 1501 * $signed(input_fmap_25[63:48]) +
	 13'sd 3775 * $signed(input_fmap_25[79:64]) +
	 16'sd 29484 * $signed(input_fmap_25[95:80]) +
	 16'sd 19099 * $signed(input_fmap_25[111:96]) +
	 16'sd 17375 * $signed(input_fmap_25[127:112]) +
	 16'sd 24333 * $signed(input_fmap_25[143:128]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 15'sd 16258 * $signed(input_fmap_26[15:0]) +
	 15'sd 12559 * $signed(input_fmap_26[31:16]) +
	 16'sd 18023 * $signed(input_fmap_26[47:32]) +
	 16'sd 26035 * $signed(input_fmap_26[63:48]) +
	 16'sd 26325 * $signed(input_fmap_26[79:64]) +
	 16'sd 17166 * $signed(input_fmap_26[95:80]) +
	 15'sd 9916 * $signed(input_fmap_26[111:96]) +
	 11'sd 749 * $signed(input_fmap_26[127:112]) +
	 12'sd 1456 * $signed(input_fmap_26[143:128]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 10'sd 387 * $signed(input_fmap_27[15:0]) +
	 14'sd 7561 * $signed(input_fmap_27[31:16]) +
	 14'sd 5148 * $signed(input_fmap_27[47:32]) +
	 14'sd 5412 * $signed(input_fmap_27[63:48]) +
	 11'sd 880 * $signed(input_fmap_27[79:64]) +
	 15'sd 12868 * $signed(input_fmap_27[95:80]) +
	 13'sd 3570 * $signed(input_fmap_27[111:96]) +
	 16'sd 23214 * $signed(input_fmap_27[127:112]) +
	 12'sd 1107 * $signed(input_fmap_27[143:128]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 15'sd 12546 * $signed(input_fmap_28[15:0]) +
	 16'sd 31029 * $signed(input_fmap_28[31:16]) +
	 11'sd 762 * $signed(input_fmap_28[47:32]) +
	 16'sd 22455 * $signed(input_fmap_28[63:48]) +
	 14'sd 8144 * $signed(input_fmap_28[79:64]) +
	 16'sd 25109 * $signed(input_fmap_28[95:80]) +
	 16'sd 23445 * $signed(input_fmap_28[111:96]) +
	 14'sd 5660 * $signed(input_fmap_28[127:112]) +
	 13'sd 2126 * $signed(input_fmap_28[143:128]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 12'sd 1798 * $signed(input_fmap_29[15:0]) +
	 15'sd 15848 * $signed(input_fmap_29[31:16]) +
	 16'sd 19893 * $signed(input_fmap_29[47:32]) +
	 16'sd 23844 * $signed(input_fmap_29[63:48]) +
	 15'sd 12688 * $signed(input_fmap_29[79:64]) +
	 16'sd 19666 * $signed(input_fmap_29[95:80]) +
	 16'sd 30623 * $signed(input_fmap_29[111:96]) +
	 11'sd 998 * $signed(input_fmap_29[127:112]) +
	 16'sd 26434 * $signed(input_fmap_29[143:128]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 14'sd 6778 * $signed(input_fmap_30[15:0]) +
	 16'sd 17223 * $signed(input_fmap_30[31:16]) +
	 13'sd 3132 * $signed(input_fmap_30[47:32]) +
	 15'sd 10874 * $signed(input_fmap_30[63:48]) +
	 16'sd 28764 * $signed(input_fmap_30[79:64]) +
	 16'sd 22242 * $signed(input_fmap_30[95:80]) +
	 13'sd 2360 * $signed(input_fmap_30[111:96]) +
	 16'sd 23053 * $signed(input_fmap_30[127:112]) +
	 16'sd 18731 * $signed(input_fmap_30[143:128]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 13'sd 3912 * $signed(input_fmap_31[15:0]) +
	 16'sd 32448 * $signed(input_fmap_31[31:16]) +
	 16'sd 22167 * $signed(input_fmap_31[47:32]) +
	 16'sd 29321 * $signed(input_fmap_31[63:48]) +
	 15'sd 11021 * $signed(input_fmap_31[79:64]) +
	 16'sd 22193 * $signed(input_fmap_31[95:80]) +
	 16'sd 20924 * $signed(input_fmap_31[111:96]) +
	 13'sd 2771 * $signed(input_fmap_31[127:112]) +
	 14'sd 5656 * $signed(input_fmap_31[143:128]);

logic signed [31:0] dw_conv_mac_32;
assign dw_conv_mac_32 = 
	 16'sd 30255 * $signed(input_fmap_32[15:0]) +
	 14'sd 6696 * $signed(input_fmap_32[31:16]) +
	 14'sd 4317 * $signed(input_fmap_32[47:32]) +
	 11'sd 658 * $signed(input_fmap_32[63:48]) +
	 11'sd 973 * $signed(input_fmap_32[79:64]) +
	 16'sd 31074 * $signed(input_fmap_32[95:80]) +
	 16'sd 32394 * $signed(input_fmap_32[111:96]) +
	 16'sd 27502 * $signed(input_fmap_32[127:112]) +
	 10'sd 357 * $signed(input_fmap_32[143:128]);

logic signed [31:0] dw_conv_mac_33;
assign dw_conv_mac_33 = 
	 14'sd 6125 * $signed(input_fmap_33[15:0]) +
	 12'sd 1147 * $signed(input_fmap_33[31:16]) +
	 14'sd 6938 * $signed(input_fmap_33[47:32]) +
	 16'sd 22045 * $signed(input_fmap_33[63:48]) +
	 16'sd 26208 * $signed(input_fmap_33[79:64]) +
	 16'sd 26457 * $signed(input_fmap_33[95:80]) +
	 16'sd 30253 * $signed(input_fmap_33[111:96]) +
	 14'sd 5999 * $signed(input_fmap_33[127:112]) +
	 14'sd 6560 * $signed(input_fmap_33[143:128]);

logic signed [31:0] dw_conv_mac_34;
assign dw_conv_mac_34 = 
	 16'sd 20420 * $signed(input_fmap_34[15:0]) +
	 15'sd 13383 * $signed(input_fmap_34[31:16]) +
	 16'sd 29075 * $signed(input_fmap_34[47:32]) +
	 13'sd 3329 * $signed(input_fmap_34[63:48]) +
	 13'sd 2841 * $signed(input_fmap_34[79:64]) +
	 16'sd 16571 * $signed(input_fmap_34[95:80]) +
	 15'sd 13499 * $signed(input_fmap_34[111:96]) +
	 15'sd 15807 * $signed(input_fmap_34[127:112]) +
	 14'sd 5601 * $signed(input_fmap_34[143:128]);

logic signed [31:0] dw_conv_mac_35;
assign dw_conv_mac_35 = 
	 15'sd 11575 * $signed(input_fmap_35[15:0]) +
	 15'sd 9402 * $signed(input_fmap_35[31:16]) +
	 15'sd 8862 * $signed(input_fmap_35[47:32]) +
	 14'sd 4184 * $signed(input_fmap_35[63:48]) +
	 16'sd 30320 * $signed(input_fmap_35[79:64]) +
	 16'sd 25077 * $signed(input_fmap_35[95:80]) +
	 16'sd 32141 * $signed(input_fmap_35[111:96]) +
	 16'sd 20830 * $signed(input_fmap_35[127:112]) +
	 16'sd 29716 * $signed(input_fmap_35[143:128]);

logic signed [31:0] dw_conv_mac_36;
assign dw_conv_mac_36 = 
	 16'sd 31347 * $signed(input_fmap_36[15:0]) +
	 16'sd 28436 * $signed(input_fmap_36[31:16]) +
	 15'sd 10003 * $signed(input_fmap_36[47:32]) +
	 16'sd 28209 * $signed(input_fmap_36[63:48]) +
	 15'sd 13676 * $signed(input_fmap_36[79:64]) +
	 15'sd 14613 * $signed(input_fmap_36[95:80]) +
	 15'sd 14702 * $signed(input_fmap_36[111:96]) +
	 12'sd 1308 * $signed(input_fmap_36[127:112]) +
	 11'sd 908 * $signed(input_fmap_36[143:128]);

logic signed [31:0] dw_conv_mac_37;
assign dw_conv_mac_37 = 
	 15'sd 10881 * $signed(input_fmap_37[15:0]) +
	 16'sd 30587 * $signed(input_fmap_37[31:16]) +
	 16'sd 19181 * $signed(input_fmap_37[47:32]) +
	 14'sd 5267 * $signed(input_fmap_37[63:48]) +
	 15'sd 13993 * $signed(input_fmap_37[79:64]) +
	 13'sd 2370 * $signed(input_fmap_37[95:80]) +
	 16'sd 18505 * $signed(input_fmap_37[111:96]) +
	 16'sd 30478 * $signed(input_fmap_37[127:112]) +
	 16'sd 26417 * $signed(input_fmap_37[143:128]);

logic signed [31:0] dw_conv_mac_38;
assign dw_conv_mac_38 = 
	 16'sd 27413 * $signed(input_fmap_38[15:0]) +
	 16'sd 23535 * $signed(input_fmap_38[31:16]) +
	 16'sd 23967 * $signed(input_fmap_38[47:32]) +
	 16'sd 29867 * $signed(input_fmap_38[63:48]) +
	 15'sd 9331 * $signed(input_fmap_38[79:64]) +
	 16'sd 31081 * $signed(input_fmap_38[95:80]) +
	 16'sd 27072 * $signed(input_fmap_38[111:96]) +
	 13'sd 3436 * $signed(input_fmap_38[127:112]) +
	 16'sd 29456 * $signed(input_fmap_38[143:128]);

logic signed [31:0] dw_conv_mac_39;
assign dw_conv_mac_39 = 
	 16'sd 22011 * $signed(input_fmap_39[15:0]) +
	 14'sd 4583 * $signed(input_fmap_39[31:16]) +
	 16'sd 19521 * $signed(input_fmap_39[47:32]) +
	 14'sd 6248 * $signed(input_fmap_39[63:48]) +
	 14'sd 5893 * $signed(input_fmap_39[79:64]) +
	 15'sd 11015 * $signed(input_fmap_39[95:80]) +
	 15'sd 9805 * $signed(input_fmap_39[111:96]) +
	 16'sd 29955 * $signed(input_fmap_39[127:112]) +
	 15'sd 13328 * $signed(input_fmap_39[143:128]);

logic signed [31:0] dw_conv_mac_40;
assign dw_conv_mac_40 = 
	 16'sd 22441 * $signed(input_fmap_40[15:0]) +
	 15'sd 16177 * $signed(input_fmap_40[31:16]) +
	 15'sd 8201 * $signed(input_fmap_40[47:32]) +
	 12'sd 1721 * $signed(input_fmap_40[63:48]) +
	 16'sd 32643 * $signed(input_fmap_40[79:64]) +
	 16'sd 18402 * $signed(input_fmap_40[95:80]) +
	 15'sd 12812 * $signed(input_fmap_40[111:96]) +
	 15'sd 9957 * $signed(input_fmap_40[127:112]) +
	 16'sd 17817 * $signed(input_fmap_40[143:128]);

logic signed [31:0] dw_conv_mac_41;
assign dw_conv_mac_41 = 
	 16'sd 30623 * $signed(input_fmap_41[15:0]) +
	 16'sd 26900 * $signed(input_fmap_41[31:16]) +
	 16'sd 17932 * $signed(input_fmap_41[47:32]) +
	 15'sd 10730 * $signed(input_fmap_41[63:48]) +
	 16'sd 26231 * $signed(input_fmap_41[79:64]) +
	 15'sd 11200 * $signed(input_fmap_41[95:80]) +
	 12'sd 1706 * $signed(input_fmap_41[111:96]) +
	 16'sd 24989 * $signed(input_fmap_41[127:112]) +
	 16'sd 32662 * $signed(input_fmap_41[143:128]);

logic signed [31:0] dw_conv_mac_42;
assign dw_conv_mac_42 = 
	 15'sd 8262 * $signed(input_fmap_42[15:0]) +
	 16'sd 24522 * $signed(input_fmap_42[31:16]) +
	 16'sd 17060 * $signed(input_fmap_42[47:32]) +
	 16'sd 19355 * $signed(input_fmap_42[63:48]) +
	 16'sd 22838 * $signed(input_fmap_42[79:64]) +
	 16'sd 21955 * $signed(input_fmap_42[95:80]) +
	 16'sd 20147 * $signed(input_fmap_42[111:96]) +
	 15'sd 10148 * $signed(input_fmap_42[127:112]) +
	 16'sd 20459 * $signed(input_fmap_42[143:128]);

logic signed [31:0] dw_conv_mac_43;
assign dw_conv_mac_43 = 
	 16'sd 19106 * $signed(input_fmap_43[15:0]) +
	 16'sd 16398 * $signed(input_fmap_43[31:16]) +
	 16'sd 30634 * $signed(input_fmap_43[47:32]) +
	 16'sd 29101 * $signed(input_fmap_43[63:48]) +
	 15'sd 11652 * $signed(input_fmap_43[79:64]) +
	 16'sd 17271 * $signed(input_fmap_43[95:80]) +
	 16'sd 31374 * $signed(input_fmap_43[111:96]) +
	 16'sd 26669 * $signed(input_fmap_43[127:112]) +
	 16'sd 22082 * $signed(input_fmap_43[143:128]);

logic signed [31:0] dw_conv_mac_44;
assign dw_conv_mac_44 = 
	 14'sd 6651 * $signed(input_fmap_44[15:0]) +
	 15'sd 15156 * $signed(input_fmap_44[31:16]) +
	 16'sd 23280 * $signed(input_fmap_44[47:32]) +
	 16'sd 23038 * $signed(input_fmap_44[63:48]) +
	 16'sd 23650 * $signed(input_fmap_44[79:64]) +
	 16'sd 19315 * $signed(input_fmap_44[95:80]) +
	 16'sd 24357 * $signed(input_fmap_44[111:96]) +
	 16'sd 17414 * $signed(input_fmap_44[127:112]) +
	 15'sd 12583 * $signed(input_fmap_44[143:128]);

logic signed [31:0] dw_conv_mac_45;
assign dw_conv_mac_45 = 
	 16'sd 17360 * $signed(input_fmap_45[15:0]) +
	 16'sd 23358 * $signed(input_fmap_45[31:16]) +
	 14'sd 6310 * $signed(input_fmap_45[47:32]) +
	 16'sd 20414 * $signed(input_fmap_45[63:48]) +
	 16'sd 25217 * $signed(input_fmap_45[79:64]) +
	 12'sd 1457 * $signed(input_fmap_45[95:80]) +
	 14'sd 4775 * $signed(input_fmap_45[111:96]) +
	 16'sd 31660 * $signed(input_fmap_45[127:112]) +
	 15'sd 13666 * $signed(input_fmap_45[143:128]);

logic signed [31:0] dw_conv_mac_46;
assign dw_conv_mac_46 = 
	 15'sd 10018 * $signed(input_fmap_46[15:0]) +
	 16'sd 24438 * $signed(input_fmap_46[31:16]) +
	 16'sd 20424 * $signed(input_fmap_46[47:32]) +
	 15'sd 14865 * $signed(input_fmap_46[63:48]) +
	 16'sd 24125 * $signed(input_fmap_46[79:64]) +
	 14'sd 4265 * $signed(input_fmap_46[95:80]) +
	 16'sd 23334 * $signed(input_fmap_46[111:96]) +
	 16'sd 31522 * $signed(input_fmap_46[127:112]) +
	 15'sd 12912 * $signed(input_fmap_46[143:128]);

logic signed [31:0] dw_conv_mac_47;
assign dw_conv_mac_47 = 
	 9'sd 154 * $signed(input_fmap_47[15:0]) +
	 16'sd 30443 * $signed(input_fmap_47[31:16]) +
	 13'sd 2853 * $signed(input_fmap_47[47:32]) +
	 11'sd 513 * $signed(input_fmap_47[63:48]) +
	 15'sd 9962 * $signed(input_fmap_47[79:64]) +
	 16'sd 18659 * $signed(input_fmap_47[95:80]) +
	 14'sd 4738 * $signed(input_fmap_47[111:96]) +
	 15'sd 10394 * $signed(input_fmap_47[127:112]) +
	 16'sd 18804 * $signed(input_fmap_47[143:128]);

logic signed [31:0] dw_conv_mac_48;
assign dw_conv_mac_48 = 
	 16'sd 22230 * $signed(input_fmap_48[15:0]) +
	 16'sd 23547 * $signed(input_fmap_48[31:16]) +
	 16'sd 29975 * $signed(input_fmap_48[47:32]) +
	 16'sd 29269 * $signed(input_fmap_48[63:48]) +
	 16'sd 22613 * $signed(input_fmap_48[79:64]) +
	 16'sd 17374 * $signed(input_fmap_48[95:80]) +
	 16'sd 32391 * $signed(input_fmap_48[111:96]) +
	 16'sd 24513 * $signed(input_fmap_48[127:112]) +
	 16'sd 26601 * $signed(input_fmap_48[143:128]);

logic signed [31:0] dw_conv_mac_49;
assign dw_conv_mac_49 = 
	 15'sd 13207 * $signed(input_fmap_49[15:0]) +
	 16'sd 17699 * $signed(input_fmap_49[31:16]) +
	 16'sd 22071 * $signed(input_fmap_49[47:32]) +
	 16'sd 26682 * $signed(input_fmap_49[63:48]) +
	 16'sd 28443 * $signed(input_fmap_49[79:64]) +
	 14'sd 4131 * $signed(input_fmap_49[95:80]) +
	 15'sd 15111 * $signed(input_fmap_49[111:96]) +
	 16'sd 16399 * $signed(input_fmap_49[127:112]) +
	 16'sd 29762 * $signed(input_fmap_49[143:128]);

logic signed [31:0] dw_conv_mac_50;
assign dw_conv_mac_50 = 
	 14'sd 7218 * $signed(input_fmap_50[15:0]) +
	 16'sd 22628 * $signed(input_fmap_50[31:16]) +
	 13'sd 2889 * $signed(input_fmap_50[47:32]) +
	 15'sd 15924 * $signed(input_fmap_50[63:48]) +
	 15'sd 8381 * $signed(input_fmap_50[79:64]) +
	 11'sd 855 * $signed(input_fmap_50[95:80]) +
	 15'sd 9923 * $signed(input_fmap_50[111:96]) +
	 16'sd 29667 * $signed(input_fmap_50[127:112]) +
	 16'sd 27644 * $signed(input_fmap_50[143:128]);

logic signed [31:0] dw_conv_mac_51;
assign dw_conv_mac_51 = 
	 15'sd 9760 * $signed(input_fmap_51[15:0]) +
	 16'sd 25706 * $signed(input_fmap_51[31:16]) +
	 16'sd 20893 * $signed(input_fmap_51[47:32]) +
	 11'sd 613 * $signed(input_fmap_51[63:48]) +
	 9'sd 186 * $signed(input_fmap_51[79:64]) +
	 16'sd 25044 * $signed(input_fmap_51[95:80]) +
	 16'sd 20237 * $signed(input_fmap_51[111:96]) +
	 15'sd 14113 * $signed(input_fmap_51[127:112]) +
	 16'sd 32133 * $signed(input_fmap_51[143:128]);

logic signed [31:0] dw_conv_mac_52;
assign dw_conv_mac_52 = 
	 13'sd 3609 * $signed(input_fmap_52[15:0]) +
	 16'sd 31591 * $signed(input_fmap_52[31:16]) +
	 15'sd 8259 * $signed(input_fmap_52[47:32]) +
	 16'sd 22416 * $signed(input_fmap_52[63:48]) +
	 12'sd 1460 * $signed(input_fmap_52[79:64]) +
	 16'sd 16891 * $signed(input_fmap_52[95:80]) +
	 13'sd 2604 * $signed(input_fmap_52[111:96]) +
	 16'sd 20194 * $signed(input_fmap_52[127:112]) +
	 14'sd 4119 * $signed(input_fmap_52[143:128]);

logic signed [31:0] dw_conv_mac_53;
assign dw_conv_mac_53 = 
	 15'sd 9866 * $signed(input_fmap_53[15:0]) +
	 14'sd 7659 * $signed(input_fmap_53[31:16]) +
	 11'sd 543 * $signed(input_fmap_53[47:32]) +
	 14'sd 5287 * $signed(input_fmap_53[63:48]) +
	 15'sd 14814 * $signed(input_fmap_53[79:64]) +
	 12'sd 1918 * $signed(input_fmap_53[95:80]) +
	 15'sd 10724 * $signed(input_fmap_53[111:96]) +
	 16'sd 21880 * $signed(input_fmap_53[127:112]) +
	 16'sd 30455 * $signed(input_fmap_53[143:128]);

logic signed [31:0] dw_conv_mac_54;
assign dw_conv_mac_54 = 
	 13'sd 3901 * $signed(input_fmap_54[15:0]) +
	 15'sd 15623 * $signed(input_fmap_54[31:16]) +
	 15'sd 14646 * $signed(input_fmap_54[47:32]) +
	 14'sd 4398 * $signed(input_fmap_54[63:48]) +
	 16'sd 19867 * $signed(input_fmap_54[79:64]) +
	 16'sd 20470 * $signed(input_fmap_54[95:80]) +
	 16'sd 28048 * $signed(input_fmap_54[111:96]) +
	 14'sd 7348 * $signed(input_fmap_54[127:112]) +
	 14'sd 5379 * $signed(input_fmap_54[143:128]);

logic signed [31:0] dw_conv_mac_55;
assign dw_conv_mac_55 = 
	 15'sd 13615 * $signed(input_fmap_55[15:0]) +
	 16'sd 29319 * $signed(input_fmap_55[31:16]) +
	 16'sd 18959 * $signed(input_fmap_55[47:32]) +
	 15'sd 8367 * $signed(input_fmap_55[63:48]) +
	 16'sd 31869 * $signed(input_fmap_55[79:64]) +
	 11'sd 833 * $signed(input_fmap_55[95:80]) +
	 15'sd 13099 * $signed(input_fmap_55[111:96]) +
	 15'sd 8536 * $signed(input_fmap_55[127:112]) +
	 16'sd 27942 * $signed(input_fmap_55[143:128]);

logic signed [31:0] dw_conv_mac_56;
assign dw_conv_mac_56 = 
	 14'sd 5171 * $signed(input_fmap_56[15:0]) +
	 16'sd 21500 * $signed(input_fmap_56[31:16]) +
	 16'sd 32613 * $signed(input_fmap_56[47:32]) +
	 16'sd 26469 * $signed(input_fmap_56[63:48]) +
	 15'sd 11059 * $signed(input_fmap_56[79:64]) +
	 16'sd 21347 * $signed(input_fmap_56[95:80]) +
	 15'sd 15983 * $signed(input_fmap_56[111:96]) +
	 14'sd 4204 * $signed(input_fmap_56[127:112]) +
	 16'sd 31578 * $signed(input_fmap_56[143:128]);

logic signed [31:0] dw_conv_mac_57;
assign dw_conv_mac_57 = 
	 16'sd 29858 * $signed(input_fmap_57[15:0]) +
	 15'sd 8663 * $signed(input_fmap_57[31:16]) +
	 16'sd 19391 * $signed(input_fmap_57[47:32]) +
	 10'sd 371 * $signed(input_fmap_57[63:48]) +
	 16'sd 30036 * $signed(input_fmap_57[79:64]) +
	 15'sd 14112 * $signed(input_fmap_57[95:80]) +
	 14'sd 4361 * $signed(input_fmap_57[111:96]) +
	 16'sd 27334 * $signed(input_fmap_57[127:112]) +
	 15'sd 15592 * $signed(input_fmap_57[143:128]);

logic signed [31:0] dw_conv_mac_58;
assign dw_conv_mac_58 = 
	 6'sd 22 * $signed(input_fmap_58[15:0]) +
	 15'sd 12457 * $signed(input_fmap_58[31:16]) +
	 15'sd 8544 * $signed(input_fmap_58[47:32]) +
	 14'sd 6748 * $signed(input_fmap_58[63:48]) +
	 16'sd 16712 * $signed(input_fmap_58[79:64]) +
	 15'sd 11275 * $signed(input_fmap_58[95:80]) +
	 15'sd 14175 * $signed(input_fmap_58[111:96]) +
	 15'sd 15830 * $signed(input_fmap_58[127:112]) +
	 15'sd 9274 * $signed(input_fmap_58[143:128]);

logic signed [31:0] dw_conv_mac_59;
assign dw_conv_mac_59 = 
	 16'sd 32227 * $signed(input_fmap_59[15:0]) +
	 16'sd 19036 * $signed(input_fmap_59[31:16]) +
	 14'sd 8175 * $signed(input_fmap_59[47:32]) +
	 15'sd 11621 * $signed(input_fmap_59[63:48]) +
	 14'sd 6467 * $signed(input_fmap_59[79:64]) +
	 16'sd 23261 * $signed(input_fmap_59[95:80]) +
	 16'sd 18049 * $signed(input_fmap_59[111:96]) +
	 16'sd 20799 * $signed(input_fmap_59[127:112]) +
	 16'sd 24889 * $signed(input_fmap_59[143:128]);

logic signed [31:0] dw_conv_mac_60;
assign dw_conv_mac_60 = 
	 16'sd 20054 * $signed(input_fmap_60[15:0]) +
	 16'sd 28569 * $signed(input_fmap_60[31:16]) +
	 15'sd 16263 * $signed(input_fmap_60[47:32]) +
	 15'sd 10627 * $signed(input_fmap_60[63:48]) +
	 13'sd 2531 * $signed(input_fmap_60[79:64]) +
	 16'sd 23436 * $signed(input_fmap_60[95:80]) +
	 16'sd 28807 * $signed(input_fmap_60[111:96]) +
	 14'sd 6268 * $signed(input_fmap_60[127:112]) +
	 14'sd 5503 * $signed(input_fmap_60[143:128]);

logic signed [31:0] dw_conv_mac_61;
assign dw_conv_mac_61 = 
	 16'sd 19478 * $signed(input_fmap_61[15:0]) +
	 16'sd 20347 * $signed(input_fmap_61[31:16]) +
	 15'sd 10634 * $signed(input_fmap_61[47:32]) +
	 14'sd 7895 * $signed(input_fmap_61[63:48]) +
	 16'sd 30364 * $signed(input_fmap_61[79:64]) +
	 15'sd 11125 * $signed(input_fmap_61[95:80]) +
	 16'sd 32746 * $signed(input_fmap_61[111:96]) +
	 15'sd 14553 * $signed(input_fmap_61[127:112]) +
	 14'sd 5455 * $signed(input_fmap_61[143:128]);

logic signed [31:0] dw_conv_mac_62;
assign dw_conv_mac_62 = 
	 15'sd 12381 * $signed(input_fmap_62[15:0]) +
	 16'sd 25892 * $signed(input_fmap_62[31:16]) +
	 16'sd 24182 * $signed(input_fmap_62[47:32]) +
	 13'sd 3426 * $signed(input_fmap_62[63:48]) +
	 16'sd 18943 * $signed(input_fmap_62[79:64]) +
	 14'sd 7454 * $signed(input_fmap_62[95:80]) +
	 16'sd 20824 * $signed(input_fmap_62[111:96]) +
	 11'sd 781 * $signed(input_fmap_62[127:112]) +
	 15'sd 9341 * $signed(input_fmap_62[143:128]);

logic signed [31:0] dw_conv_mac_63;
assign dw_conv_mac_63 = 
	 15'sd 8905 * $signed(input_fmap_63[15:0]) +
	 16'sd 29283 * $signed(input_fmap_63[31:16]) +
	 16'sd 30044 * $signed(input_fmap_63[47:32]) +
	 12'sd 1456 * $signed(input_fmap_63[63:48]) +
	 16'sd 32288 * $signed(input_fmap_63[79:64]) +
	 16'sd 25890 * $signed(input_fmap_63[95:80]) +
	 16'sd 26470 * $signed(input_fmap_63[111:96]) +
	 13'sd 2185 * $signed(input_fmap_63[127:112]) +
	 16'sd 26662 * $signed(input_fmap_63[143:128]);

logic signed [31:0] dw_conv_mac_64;
assign dw_conv_mac_64 = 
	 14'sd 7182 * $signed(input_fmap_64[15:0]) +
	 14'sd 5275 * $signed(input_fmap_64[31:16]) +
	 15'sd 9228 * $signed(input_fmap_64[47:32]) +
	 16'sd 26510 * $signed(input_fmap_64[63:48]) +
	 15'sd 12622 * $signed(input_fmap_64[79:64]) +
	 16'sd 28210 * $signed(input_fmap_64[95:80]) +
	 16'sd 28170 * $signed(input_fmap_64[111:96]) +
	 15'sd 15499 * $signed(input_fmap_64[127:112]) +
	 16'sd 30111 * $signed(input_fmap_64[143:128]);

logic signed [31:0] dw_conv_mac_65;
assign dw_conv_mac_65 = 
	 14'sd 5177 * $signed(input_fmap_65[15:0]) +
	 16'sd 32135 * $signed(input_fmap_65[31:16]) +
	 16'sd 29879 * $signed(input_fmap_65[47:32]) +
	 14'sd 6962 * $signed(input_fmap_65[63:48]) +
	 16'sd 26491 * $signed(input_fmap_65[79:64]) +
	 12'sd 1338 * $signed(input_fmap_65[95:80]) +
	 13'sd 2449 * $signed(input_fmap_65[111:96]) +
	 16'sd 16983 * $signed(input_fmap_65[127:112]) +
	 14'sd 4481 * $signed(input_fmap_65[143:128]);

logic signed [31:0] dw_conv_mac_66;
assign dw_conv_mac_66 = 
	 14'sd 5303 * $signed(input_fmap_66[15:0]) +
	 13'sd 3843 * $signed(input_fmap_66[31:16]) +
	 15'sd 10935 * $signed(input_fmap_66[47:32]) +
	 15'sd 12422 * $signed(input_fmap_66[63:48]) +
	 15'sd 12994 * $signed(input_fmap_66[79:64]) +
	 16'sd 24894 * $signed(input_fmap_66[95:80]) +
	 15'sd 8640 * $signed(input_fmap_66[111:96]) +
	 13'sd 3044 * $signed(input_fmap_66[127:112]) +
	 14'sd 6672 * $signed(input_fmap_66[143:128]);

logic signed [31:0] dw_conv_mac_67;
assign dw_conv_mac_67 = 
	 15'sd 16113 * $signed(input_fmap_67[15:0]) +
	 15'sd 10372 * $signed(input_fmap_67[31:16]) +
	 16'sd 20293 * $signed(input_fmap_67[47:32]) +
	 15'sd 14967 * $signed(input_fmap_67[63:48]) +
	 13'sd 2255 * $signed(input_fmap_67[79:64]) +
	 13'sd 3802 * $signed(input_fmap_67[95:80]) +
	 15'sd 12886 * $signed(input_fmap_67[111:96]) +
	 13'sd 2289 * $signed(input_fmap_67[127:112]) +
	 16'sd 27163 * $signed(input_fmap_67[143:128]);

logic signed [31:0] dw_conv_mac_68;
assign dw_conv_mac_68 = 
	 16'sd 17320 * $signed(input_fmap_68[15:0]) +
	 12'sd 1893 * $signed(input_fmap_68[31:16]) +
	 16'sd 32229 * $signed(input_fmap_68[47:32]) +
	 14'sd 7282 * $signed(input_fmap_68[63:48]) +
	 16'sd 17845 * $signed(input_fmap_68[79:64]) +
	 16'sd 26526 * $signed(input_fmap_68[95:80]) +
	 16'sd 24076 * $signed(input_fmap_68[111:96]) +
	 16'sd 29933 * $signed(input_fmap_68[127:112]) +
	 14'sd 5249 * $signed(input_fmap_68[143:128]);

logic signed [31:0] dw_conv_mac_69;
assign dw_conv_mac_69 = 
	 14'sd 5738 * $signed(input_fmap_69[15:0]) +
	 15'sd 12520 * $signed(input_fmap_69[31:16]) +
	 11'sd 919 * $signed(input_fmap_69[47:32]) +
	 15'sd 12834 * $signed(input_fmap_69[63:48]) +
	 16'sd 24621 * $signed(input_fmap_69[79:64]) +
	 16'sd 28879 * $signed(input_fmap_69[95:80]) +
	 16'sd 21902 * $signed(input_fmap_69[111:96]) +
	 15'sd 12112 * $signed(input_fmap_69[127:112]) +
	 16'sd 31231 * $signed(input_fmap_69[143:128]);

logic signed [31:0] dw_conv_mac_70;
assign dw_conv_mac_70 = 
	 15'sd 12128 * $signed(input_fmap_70[15:0]) +
	 12'sd 1493 * $signed(input_fmap_70[31:16]) +
	 14'sd 5983 * $signed(input_fmap_70[47:32]) +
	 16'sd 24678 * $signed(input_fmap_70[63:48]) +
	 15'sd 13037 * $signed(input_fmap_70[79:64]) +
	 15'sd 14072 * $signed(input_fmap_70[95:80]) +
	 15'sd 14531 * $signed(input_fmap_70[111:96]) +
	 16'sd 29767 * $signed(input_fmap_70[127:112]) +
	 16'sd 21422 * $signed(input_fmap_70[143:128]);

logic signed [31:0] dw_conv_mac_71;
assign dw_conv_mac_71 = 
	 16'sd 25473 * $signed(input_fmap_71[15:0]) +
	 16'sd 22452 * $signed(input_fmap_71[31:16]) +
	 16'sd 25321 * $signed(input_fmap_71[47:32]) +
	 16'sd 24593 * $signed(input_fmap_71[63:48]) +
	 12'sd 1157 * $signed(input_fmap_71[79:64]) +
	 16'sd 21740 * $signed(input_fmap_71[95:80]) +
	 16'sd 27526 * $signed(input_fmap_71[111:96]) +
	 14'sd 7711 * $signed(input_fmap_71[127:112]) +
	 16'sd 19623 * $signed(input_fmap_71[143:128]);

logic signed [31:0] dw_conv_mac_72;
assign dw_conv_mac_72 = 
	 14'sd 4452 * $signed(input_fmap_72[15:0]) +
	 15'sd 12299 * $signed(input_fmap_72[31:16]) +
	 15'sd 12847 * $signed(input_fmap_72[47:32]) +
	 16'sd 28882 * $signed(input_fmap_72[63:48]) +
	 14'sd 7054 * $signed(input_fmap_72[79:64]) +
	 11'sd 979 * $signed(input_fmap_72[95:80]) +
	 16'sd 20636 * $signed(input_fmap_72[111:96]) +
	 12'sd 1633 * $signed(input_fmap_72[127:112]) +
	 13'sd 3652 * $signed(input_fmap_72[143:128]);

logic signed [31:0] dw_conv_mac_73;
assign dw_conv_mac_73 = 
	 15'sd 11661 * $signed(input_fmap_73[15:0]) +
	 14'sd 5340 * $signed(input_fmap_73[31:16]) +
	 16'sd 27966 * $signed(input_fmap_73[47:32]) +
	 16'sd 25312 * $signed(input_fmap_73[63:48]) +
	 15'sd 14991 * $signed(input_fmap_73[79:64]) +
	 16'sd 28368 * $signed(input_fmap_73[95:80]) +
	 15'sd 8958 * $signed(input_fmap_73[111:96]) +
	 16'sd 21019 * $signed(input_fmap_73[127:112]) +
	 16'sd 22455 * $signed(input_fmap_73[143:128]);

logic signed [31:0] dw_conv_mac_74;
assign dw_conv_mac_74 = 
	 16'sd 27310 * $signed(input_fmap_74[15:0]) +
	 16'sd 19025 * $signed(input_fmap_74[31:16]) +
	 16'sd 16532 * $signed(input_fmap_74[47:32]) +
	 16'sd 31839 * $signed(input_fmap_74[63:48]) +
	 15'sd 9406 * $signed(input_fmap_74[79:64]) +
	 15'sd 8289 * $signed(input_fmap_74[95:80]) +
	 14'sd 5686 * $signed(input_fmap_74[111:96]) +
	 16'sd 29725 * $signed(input_fmap_74[127:112]) +
	 16'sd 27780 * $signed(input_fmap_74[143:128]);

logic signed [31:0] dw_conv_mac_75;
assign dw_conv_mac_75 = 
	 14'sd 8070 * $signed(input_fmap_75[15:0]) +
	 16'sd 29923 * $signed(input_fmap_75[31:16]) +
	 16'sd 27194 * $signed(input_fmap_75[47:32]) +
	 15'sd 10864 * $signed(input_fmap_75[63:48]) +
	 12'sd 1411 * $signed(input_fmap_75[79:64]) +
	 16'sd 16761 * $signed(input_fmap_75[95:80]) +
	 14'sd 7615 * $signed(input_fmap_75[111:96]) +
	 14'sd 7095 * $signed(input_fmap_75[127:112]) +
	 13'sd 2217 * $signed(input_fmap_75[143:128]);

logic signed [31:0] dw_conv_mac_76;
assign dw_conv_mac_76 = 
	 16'sd 27566 * $signed(input_fmap_76[15:0]) +
	 16'sd 24548 * $signed(input_fmap_76[31:16]) +
	 15'sd 13353 * $signed(input_fmap_76[47:32]) +
	 14'sd 6553 * $signed(input_fmap_76[63:48]) +
	 15'sd 8600 * $signed(input_fmap_76[79:64]) +
	 15'sd 11732 * $signed(input_fmap_76[95:80]) +
	 15'sd 8853 * $signed(input_fmap_76[111:96]) +
	 16'sd 24231 * $signed(input_fmap_76[127:112]) +
	 16'sd 32758 * $signed(input_fmap_76[143:128]);

logic signed [31:0] dw_conv_mac_77;
assign dw_conv_mac_77 = 
	 12'sd 1440 * $signed(input_fmap_77[15:0]) +
	 14'sd 5816 * $signed(input_fmap_77[31:16]) +
	 16'sd 29920 * $signed(input_fmap_77[47:32]) +
	 10'sd 360 * $signed(input_fmap_77[63:48]) +
	 16'sd 18346 * $signed(input_fmap_77[79:64]) +
	 16'sd 32089 * $signed(input_fmap_77[95:80]) +
	 13'sd 2110 * $signed(input_fmap_77[111:96]) +
	 16'sd 16645 * $signed(input_fmap_77[127:112]) +
	 15'sd 13591 * $signed(input_fmap_77[143:128]);

logic signed [31:0] dw_conv_mac_78;
assign dw_conv_mac_78 = 
	 16'sd 32503 * $signed(input_fmap_78[15:0]) +
	 16'sd 31317 * $signed(input_fmap_78[31:16]) +
	 14'sd 4517 * $signed(input_fmap_78[47:32]) +
	 15'sd 13671 * $signed(input_fmap_78[63:48]) +
	 16'sd 28317 * $signed(input_fmap_78[79:64]) +
	 16'sd 17765 * $signed(input_fmap_78[95:80]) +
	 16'sd 23303 * $signed(input_fmap_78[111:96]) +
	 15'sd 10826 * $signed(input_fmap_78[127:112]) +
	 16'sd 18833 * $signed(input_fmap_78[143:128]);

logic signed [31:0] dw_conv_mac_79;
assign dw_conv_mac_79 = 
	 14'sd 7492 * $signed(input_fmap_79[15:0]) +
	 16'sd 26209 * $signed(input_fmap_79[31:16]) +
	 16'sd 29952 * $signed(input_fmap_79[47:32]) +
	 15'sd 15859 * $signed(input_fmap_79[63:48]) +
	 12'sd 1478 * $signed(input_fmap_79[79:64]) +
	 12'sd 1514 * $signed(input_fmap_79[95:80]) +
	 15'sd 11915 * $signed(input_fmap_79[111:96]) +
	 16'sd 21022 * $signed(input_fmap_79[127:112]) +
	 15'sd 13215 * $signed(input_fmap_79[143:128]);

logic signed [31:0] dw_conv_mac_80;
assign dw_conv_mac_80 = 
	 16'sd 17857 * $signed(input_fmap_80[15:0]) +
	 14'sd 7577 * $signed(input_fmap_80[31:16]) +
	 15'sd 12838 * $signed(input_fmap_80[47:32]) +
	 11'sd 613 * $signed(input_fmap_80[63:48]) +
	 16'sd 26091 * $signed(input_fmap_80[79:64]) +
	 15'sd 9984 * $signed(input_fmap_80[95:80]) +
	 15'sd 15961 * $signed(input_fmap_80[111:96]) +
	 14'sd 7439 * $signed(input_fmap_80[127:112]) +
	 16'sd 19737 * $signed(input_fmap_80[143:128]);

logic signed [31:0] dw_conv_mac_81;
assign dw_conv_mac_81 = 
	 13'sd 3771 * $signed(input_fmap_81[15:0]) +
	 16'sd 19034 * $signed(input_fmap_81[31:16]) +
	 16'sd 29752 * $signed(input_fmap_81[47:32]) +
	 12'sd 1357 * $signed(input_fmap_81[63:48]) +
	 12'sd 1503 * $signed(input_fmap_81[79:64]) +
	 16'sd 23197 * $signed(input_fmap_81[95:80]) +
	 16'sd 23039 * $signed(input_fmap_81[111:96]) +
	 12'sd 1942 * $signed(input_fmap_81[127:112]) +
	 16'sd 20155 * $signed(input_fmap_81[143:128]);

logic signed [31:0] dw_conv_mac_82;
assign dw_conv_mac_82 = 
	 14'sd 5040 * $signed(input_fmap_82[15:0]) +
	 15'sd 11763 * $signed(input_fmap_82[31:16]) +
	 16'sd 18685 * $signed(input_fmap_82[47:32]) +
	 14'sd 8013 * $signed(input_fmap_82[63:48]) +
	 16'sd 24109 * $signed(input_fmap_82[79:64]) +
	 14'sd 4243 * $signed(input_fmap_82[95:80]) +
	 16'sd 17795 * $signed(input_fmap_82[111:96]) +
	 14'sd 5880 * $signed(input_fmap_82[127:112]) +
	 16'sd 18542 * $signed(input_fmap_82[143:128]);

logic signed [31:0] dw_conv_mac_83;
assign dw_conv_mac_83 = 
	 15'sd 15592 * $signed(input_fmap_83[15:0]) +
	 16'sd 29148 * $signed(input_fmap_83[31:16]) +
	 15'sd 13492 * $signed(input_fmap_83[47:32]) +
	 16'sd 19688 * $signed(input_fmap_83[63:48]) +
	 16'sd 29119 * $signed(input_fmap_83[79:64]) +
	 15'sd 9464 * $signed(input_fmap_83[95:80]) +
	 15'sd 13334 * $signed(input_fmap_83[111:96]) +
	 15'sd 14544 * $signed(input_fmap_83[127:112]) +
	 10'sd 481 * $signed(input_fmap_83[143:128]);

logic signed [31:0] dw_conv_mac_84;
assign dw_conv_mac_84 = 
	 16'sd 32307 * $signed(input_fmap_84[15:0]) +
	 16'sd 23595 * $signed(input_fmap_84[31:16]) +
	 15'sd 13468 * $signed(input_fmap_84[47:32]) +
	 16'sd 29496 * $signed(input_fmap_84[63:48]) +
	 16'sd 18427 * $signed(input_fmap_84[79:64]) +
	 16'sd 22744 * $signed(input_fmap_84[95:80]) +
	 13'sd 3576 * $signed(input_fmap_84[111:96]) +
	 16'sd 21874 * $signed(input_fmap_84[127:112]) +
	 16'sd 20005 * $signed(input_fmap_84[143:128]);

logic signed [31:0] dw_conv_mac_85;
assign dw_conv_mac_85 = 
	 16'sd 30209 * $signed(input_fmap_85[15:0]) +
	 15'sd 10803 * $signed(input_fmap_85[31:16]) +
	 15'sd 11918 * $signed(input_fmap_85[47:32]) +
	 15'sd 9680 * $signed(input_fmap_85[63:48]) +
	 15'sd 11944 * $signed(input_fmap_85[79:64]) +
	 15'sd 10119 * $signed(input_fmap_85[95:80]) +
	 14'sd 5495 * $signed(input_fmap_85[111:96]) +
	 15'sd 14516 * $signed(input_fmap_85[127:112]) +
	 12'sd 1940 * $signed(input_fmap_85[143:128]);

logic signed [31:0] dw_conv_mac_86;
assign dw_conv_mac_86 = 
	 15'sd 16244 * $signed(input_fmap_86[15:0]) +
	 16'sd 22113 * $signed(input_fmap_86[31:16]) +
	 16'sd 20819 * $signed(input_fmap_86[47:32]) +
	 16'sd 31161 * $signed(input_fmap_86[63:48]) +
	 16'sd 18767 * $signed(input_fmap_86[79:64]) +
	 15'sd 13435 * $signed(input_fmap_86[95:80]) +
	 15'sd 8696 * $signed(input_fmap_86[111:96]) +
	 14'sd 5883 * $signed(input_fmap_86[127:112]) +
	 16'sd 29149 * $signed(input_fmap_86[143:128]);

logic signed [31:0] dw_conv_mac_87;
assign dw_conv_mac_87 = 
	 16'sd 30625 * $signed(input_fmap_87[15:0]) +
	 16'sd 17783 * $signed(input_fmap_87[31:16]) +
	 16'sd 17885 * $signed(input_fmap_87[47:32]) +
	 15'sd 10989 * $signed(input_fmap_87[63:48]) +
	 12'sd 1137 * $signed(input_fmap_87[79:64]) +
	 16'sd 18665 * $signed(input_fmap_87[95:80]) +
	 15'sd 14157 * $signed(input_fmap_87[111:96]) +
	 11'sd 580 * $signed(input_fmap_87[127:112]) +
	 10'sd 279 * $signed(input_fmap_87[143:128]);

logic signed [31:0] dw_conv_mac_88;
assign dw_conv_mac_88 = 
	 15'sd 12999 * $signed(input_fmap_88[15:0]) +
	 13'sd 2609 * $signed(input_fmap_88[31:16]) +
	 16'sd 32452 * $signed(input_fmap_88[47:32]) +
	 14'sd 5189 * $signed(input_fmap_88[63:48]) +
	 16'sd 30553 * $signed(input_fmap_88[79:64]) +
	 13'sd 2784 * $signed(input_fmap_88[95:80]) +
	 15'sd 11173 * $signed(input_fmap_88[111:96]) +
	 15'sd 15454 * $signed(input_fmap_88[127:112]) +
	 16'sd 23945 * $signed(input_fmap_88[143:128]);

logic signed [31:0] dw_conv_mac_89;
assign dw_conv_mac_89 = 
	 14'sd 4710 * $signed(input_fmap_89[15:0]) +
	 15'sd 14310 * $signed(input_fmap_89[31:16]) +
	 16'sd 29905 * $signed(input_fmap_89[47:32]) +
	 15'sd 14261 * $signed(input_fmap_89[63:48]) +
	 12'sd 1576 * $signed(input_fmap_89[79:64]) +
	 14'sd 4756 * $signed(input_fmap_89[95:80]) +
	 15'sd 13997 * $signed(input_fmap_89[111:96]) +
	 16'sd 22532 * $signed(input_fmap_89[127:112]) +
	 15'sd 10537 * $signed(input_fmap_89[143:128]);

logic signed [31:0] dw_conv_mac_90;
assign dw_conv_mac_90 = 
	 13'sd 2628 * $signed(input_fmap_90[15:0]) +
	 16'sd 25722 * $signed(input_fmap_90[31:16]) +
	 15'sd 8698 * $signed(input_fmap_90[47:32]) +
	 16'sd 31016 * $signed(input_fmap_90[63:48]) +
	 15'sd 14145 * $signed(input_fmap_90[79:64]) +
	 16'sd 28304 * $signed(input_fmap_90[95:80]) +
	 16'sd 18460 * $signed(input_fmap_90[111:96]) +
	 16'sd 24926 * $signed(input_fmap_90[127:112]) +
	 16'sd 30583 * $signed(input_fmap_90[143:128]);

logic signed [31:0] dw_conv_mac_91;
assign dw_conv_mac_91 = 
	 16'sd 30177 * $signed(input_fmap_91[15:0]) +
	 16'sd 19290 * $signed(input_fmap_91[31:16]) +
	 16'sd 30668 * $signed(input_fmap_91[47:32]) +
	 16'sd 22483 * $signed(input_fmap_91[63:48]) +
	 11'sd 535 * $signed(input_fmap_91[79:64]) +
	 16'sd 26253 * $signed(input_fmap_91[95:80]) +
	 15'sd 15732 * $signed(input_fmap_91[111:96]) +
	 15'sd 16011 * $signed(input_fmap_91[127:112]) +
	 16'sd 31459 * $signed(input_fmap_91[143:128]);

logic signed [31:0] dw_conv_mac_92;
assign dw_conv_mac_92 = 
	 15'sd 12996 * $signed(input_fmap_92[15:0]) +
	 16'sd 31606 * $signed(input_fmap_92[31:16]) +
	 16'sd 26759 * $signed(input_fmap_92[47:32]) +
	 16'sd 17117 * $signed(input_fmap_92[63:48]) +
	 16'sd 27704 * $signed(input_fmap_92[79:64]) +
	 16'sd 29572 * $signed(input_fmap_92[95:80]) +
	 16'sd 29666 * $signed(input_fmap_92[111:96]) +
	 14'sd 6827 * $signed(input_fmap_92[127:112]) +
	 15'sd 15483 * $signed(input_fmap_92[143:128]);

logic signed [31:0] dw_conv_mac_93;
assign dw_conv_mac_93 = 
	 16'sd 18265 * $signed(input_fmap_93[15:0]) +
	 16'sd 21205 * $signed(input_fmap_93[31:16]) +
	 16'sd 31638 * $signed(input_fmap_93[47:32]) +
	 16'sd 24719 * $signed(input_fmap_93[63:48]) +
	 13'sd 2784 * $signed(input_fmap_93[79:64]) +
	 16'sd 19459 * $signed(input_fmap_93[95:80]) +
	 16'sd 32121 * $signed(input_fmap_93[111:96]) +
	 16'sd 25464 * $signed(input_fmap_93[127:112]) +
	 16'sd 20872 * $signed(input_fmap_93[143:128]);

logic signed [31:0] dw_conv_mac_94;
assign dw_conv_mac_94 = 
	 15'sd 14401 * $signed(input_fmap_94[15:0]) +
	 14'sd 6458 * $signed(input_fmap_94[31:16]) +
	 15'sd 9007 * $signed(input_fmap_94[47:32]) +
	 15'sd 13552 * $signed(input_fmap_94[63:48]) +
	 16'sd 21677 * $signed(input_fmap_94[79:64]) +
	 15'sd 15205 * $signed(input_fmap_94[95:80]) +
	 16'sd 29007 * $signed(input_fmap_94[111:96]) +
	 15'sd 9135 * $signed(input_fmap_94[127:112]) +
	 16'sd 32630 * $signed(input_fmap_94[143:128]);

logic signed [31:0] dw_conv_mac_95;
assign dw_conv_mac_95 = 
	 16'sd 19849 * $signed(input_fmap_95[15:0]) +
	 16'sd 30505 * $signed(input_fmap_95[31:16]) +
	 16'sd 31664 * $signed(input_fmap_95[47:32]) +
	 15'sd 12488 * $signed(input_fmap_95[63:48]) +
	 14'sd 4665 * $signed(input_fmap_95[79:64]) +
	 10'sd 264 * $signed(input_fmap_95[95:80]) +
	 15'sd 10747 * $signed(input_fmap_95[111:96]) +
	 14'sd 7553 * $signed(input_fmap_95[127:112]) +
	 15'sd 15156 * $signed(input_fmap_95[143:128]);

logic signed [31:0] dw_conv_mac_96;
assign dw_conv_mac_96 = 
	 13'sd 3592 * $signed(input_fmap_96[15:0]) +
	 12'sd 1688 * $signed(input_fmap_96[31:16]) +
	 16'sd 18393 * $signed(input_fmap_96[47:32]) +
	 15'sd 11414 * $signed(input_fmap_96[63:48]) +
	 16'sd 19358 * $signed(input_fmap_96[79:64]) +
	 16'sd 23421 * $signed(input_fmap_96[95:80]) +
	 15'sd 14264 * $signed(input_fmap_96[111:96]) +
	 16'sd 28941 * $signed(input_fmap_96[127:112]) +
	 16'sd 19400 * $signed(input_fmap_96[143:128]);

logic signed [31:0] dw_conv_mac_97;
assign dw_conv_mac_97 = 
	 16'sd 26323 * $signed(input_fmap_97[15:0]) +
	 16'sd 25066 * $signed(input_fmap_97[31:16]) +
	 16'sd 22805 * $signed(input_fmap_97[47:32]) +
	 16'sd 23193 * $signed(input_fmap_97[63:48]) +
	 16'sd 26998 * $signed(input_fmap_97[79:64]) +
	 16'sd 17186 * $signed(input_fmap_97[95:80]) +
	 15'sd 14361 * $signed(input_fmap_97[111:96]) +
	 14'sd 5980 * $signed(input_fmap_97[127:112]) +
	 14'sd 6148 * $signed(input_fmap_97[143:128]);

logic signed [31:0] dw_conv_mac_98;
assign dw_conv_mac_98 = 
	 16'sd 24793 * $signed(input_fmap_98[15:0]) +
	 15'sd 10655 * $signed(input_fmap_98[31:16]) +
	 13'sd 2711 * $signed(input_fmap_98[47:32]) +
	 13'sd 4092 * $signed(input_fmap_98[63:48]) +
	 15'sd 15263 * $signed(input_fmap_98[79:64]) +
	 16'sd 20856 * $signed(input_fmap_98[95:80]) +
	 15'sd 11184 * $signed(input_fmap_98[111:96]) +
	 16'sd 27590 * $signed(input_fmap_98[127:112]) +
	 16'sd 16958 * $signed(input_fmap_98[143:128]);

logic signed [31:0] dw_conv_mac_99;
assign dw_conv_mac_99 = 
	 16'sd 27712 * $signed(input_fmap_99[15:0]) +
	 16'sd 18423 * $signed(input_fmap_99[31:16]) +
	 15'sd 10068 * $signed(input_fmap_99[47:32]) +
	 15'sd 13662 * $signed(input_fmap_99[63:48]) +
	 15'sd 13155 * $signed(input_fmap_99[79:64]) +
	 16'sd 22384 * $signed(input_fmap_99[95:80]) +
	 13'sd 3170 * $signed(input_fmap_99[111:96]) +
	 15'sd 9414 * $signed(input_fmap_99[127:112]) +
	 14'sd 6322 * $signed(input_fmap_99[143:128]);

logic signed [31:0] dw_conv_mac_100;
assign dw_conv_mac_100 = 
	 13'sd 2479 * $signed(input_fmap_100[15:0]) +
	 13'sd 2200 * $signed(input_fmap_100[31:16]) +
	 16'sd 27220 * $signed(input_fmap_100[47:32]) +
	 16'sd 31162 * $signed(input_fmap_100[63:48]) +
	 15'sd 16216 * $signed(input_fmap_100[79:64]) +
	 16'sd 23182 * $signed(input_fmap_100[95:80]) +
	 13'sd 2305 * $signed(input_fmap_100[111:96]) +
	 16'sd 27121 * $signed(input_fmap_100[127:112]) +
	 16'sd 19079 * $signed(input_fmap_100[143:128]);

logic signed [31:0] dw_conv_mac_101;
assign dw_conv_mac_101 = 
	 16'sd 20804 * $signed(input_fmap_101[15:0]) +
	 16'sd 29925 * $signed(input_fmap_101[31:16]) +
	 14'sd 4749 * $signed(input_fmap_101[47:32]) +
	 16'sd 25504 * $signed(input_fmap_101[63:48]) +
	 12'sd 1307 * $signed(input_fmap_101[79:64]) +
	 16'sd 16400 * $signed(input_fmap_101[95:80]) +
	 16'sd 17885 * $signed(input_fmap_101[111:96]) +
	 15'sd 15645 * $signed(input_fmap_101[127:112]) +
	 15'sd 15630 * $signed(input_fmap_101[143:128]);

logic signed [31:0] dw_conv_mac_102;
assign dw_conv_mac_102 = 
	 14'sd 8085 * $signed(input_fmap_102[15:0]) +
	 16'sd 27901 * $signed(input_fmap_102[31:16]) +
	 16'sd 31160 * $signed(input_fmap_102[47:32]) +
	 14'sd 7051 * $signed(input_fmap_102[63:48]) +
	 16'sd 19808 * $signed(input_fmap_102[79:64]) +
	 16'sd 26006 * $signed(input_fmap_102[95:80]) +
	 13'sd 3028 * $signed(input_fmap_102[111:96]) +
	 14'sd 5560 * $signed(input_fmap_102[127:112]) +
	 16'sd 25578 * $signed(input_fmap_102[143:128]);

logic signed [31:0] dw_conv_mac_103;
assign dw_conv_mac_103 = 
	 16'sd 29604 * $signed(input_fmap_103[15:0]) +
	 13'sd 3917 * $signed(input_fmap_103[31:16]) +
	 13'sd 2219 * $signed(input_fmap_103[47:32]) +
	 16'sd 19451 * $signed(input_fmap_103[63:48]) +
	 16'sd 27827 * $signed(input_fmap_103[79:64]) +
	 15'sd 12118 * $signed(input_fmap_103[95:80]) +
	 16'sd 25903 * $signed(input_fmap_103[111:96]) +
	 16'sd 30689 * $signed(input_fmap_103[127:112]) +
	 13'sd 3936 * $signed(input_fmap_103[143:128]);

logic signed [31:0] dw_conv_mac_104;
assign dw_conv_mac_104 = 
	 16'sd 18807 * $signed(input_fmap_104[15:0]) +
	 15'sd 11787 * $signed(input_fmap_104[31:16]) +
	 15'sd 15071 * $signed(input_fmap_104[47:32]) +
	 16'sd 20998 * $signed(input_fmap_104[63:48]) +
	 16'sd 22840 * $signed(input_fmap_104[79:64]) +
	 13'sd 3370 * $signed(input_fmap_104[95:80]) +
	 14'sd 5572 * $signed(input_fmap_104[111:96]) +
	 16'sd 20530 * $signed(input_fmap_104[127:112]) +
	 16'sd 22857 * $signed(input_fmap_104[143:128]);

logic signed [31:0] dw_conv_mac_105;
assign dw_conv_mac_105 = 
	 16'sd 28323 * $signed(input_fmap_105[15:0]) +
	 16'sd 26751 * $signed(input_fmap_105[31:16]) +
	 14'sd 6047 * $signed(input_fmap_105[47:32]) +
	 16'sd 24922 * $signed(input_fmap_105[63:48]) +
	 16'sd 32368 * $signed(input_fmap_105[79:64]) +
	 14'sd 7933 * $signed(input_fmap_105[95:80]) +
	 15'sd 12522 * $signed(input_fmap_105[111:96]) +
	 16'sd 22332 * $signed(input_fmap_105[127:112]) +
	 16'sd 27238 * $signed(input_fmap_105[143:128]);

logic signed [31:0] dw_conv_mac_106;
assign dw_conv_mac_106 = 
	 16'sd 24498 * $signed(input_fmap_106[15:0]) +
	 15'sd 11278 * $signed(input_fmap_106[31:16]) +
	 14'sd 5508 * $signed(input_fmap_106[47:32]) +
	 16'sd 23681 * $signed(input_fmap_106[63:48]) +
	 16'sd 23024 * $signed(input_fmap_106[79:64]) +
	 14'sd 7432 * $signed(input_fmap_106[95:80]) +
	 15'sd 8261 * $signed(input_fmap_106[111:96]) +
	 13'sd 2481 * $signed(input_fmap_106[127:112]) +
	 15'sd 12931 * $signed(input_fmap_106[143:128]);

logic signed [31:0] dw_conv_mac_107;
assign dw_conv_mac_107 = 
	 15'sd 15270 * $signed(input_fmap_107[15:0]) +
	 16'sd 18800 * $signed(input_fmap_107[31:16]) +
	 16'sd 25489 * $signed(input_fmap_107[47:32]) +
	 16'sd 26908 * $signed(input_fmap_107[63:48]) +
	 12'sd 1188 * $signed(input_fmap_107[79:64]) +
	 15'sd 9948 * $signed(input_fmap_107[95:80]) +
	 16'sd 30630 * $signed(input_fmap_107[111:96]) +
	 14'sd 4333 * $signed(input_fmap_107[127:112]) +
	 16'sd 18000 * $signed(input_fmap_107[143:128]);

logic signed [31:0] dw_conv_mac_108;
assign dw_conv_mac_108 = 
	 16'sd 29050 * $signed(input_fmap_108[15:0]) +
	 16'sd 23004 * $signed(input_fmap_108[31:16]) +
	 16'sd 20424 * $signed(input_fmap_108[47:32]) +
	 15'sd 14208 * $signed(input_fmap_108[63:48]) +
	 15'sd 10934 * $signed(input_fmap_108[79:64]) +
	 15'sd 15117 * $signed(input_fmap_108[95:80]) +
	 15'sd 10974 * $signed(input_fmap_108[111:96]) +
	 14'sd 5798 * $signed(input_fmap_108[127:112]) +
	 13'sd 3800 * $signed(input_fmap_108[143:128]);

logic signed [31:0] dw_conv_mac_109;
assign dw_conv_mac_109 = 
	 13'sd 2066 * $signed(input_fmap_109[15:0]) +
	 16'sd 19274 * $signed(input_fmap_109[31:16]) +
	 15'sd 8630 * $signed(input_fmap_109[47:32]) +
	 16'sd 30440 * $signed(input_fmap_109[63:48]) +
	 12'sd 1193 * $signed(input_fmap_109[79:64]) +
	 16'sd 21386 * $signed(input_fmap_109[95:80]) +
	 16'sd 32166 * $signed(input_fmap_109[111:96]) +
	 15'sd 14002 * $signed(input_fmap_109[127:112]) +
	 16'sd 16967 * $signed(input_fmap_109[143:128]);

logic signed [31:0] dw_conv_mac_110;
assign dw_conv_mac_110 = 
	 15'sd 9669 * $signed(input_fmap_110[15:0]) +
	 15'sd 14768 * $signed(input_fmap_110[31:16]) +
	 16'sd 29928 * $signed(input_fmap_110[47:32]) +
	 16'sd 24419 * $signed(input_fmap_110[63:48]) +
	 16'sd 18004 * $signed(input_fmap_110[79:64]) +
	 16'sd 32631 * $signed(input_fmap_110[95:80]) +
	 15'sd 13485 * $signed(input_fmap_110[111:96]) +
	 15'sd 9233 * $signed(input_fmap_110[127:112]) +
	 15'sd 8694 * $signed(input_fmap_110[143:128]);

logic signed [31:0] dw_conv_mac_111;
assign dw_conv_mac_111 = 
	 16'sd 29708 * $signed(input_fmap_111[15:0]) +
	 12'sd 1544 * $signed(input_fmap_111[31:16]) +
	 14'sd 5900 * $signed(input_fmap_111[47:32]) +
	 16'sd 19412 * $signed(input_fmap_111[63:48]) +
	 13'sd 3665 * $signed(input_fmap_111[79:64]) +
	 13'sd 2411 * $signed(input_fmap_111[95:80]) +
	 14'sd 5865 * $signed(input_fmap_111[111:96]) +
	 16'sd 31603 * $signed(input_fmap_111[127:112]) +
	 15'sd 11506 * $signed(input_fmap_111[143:128]);

logic signed [31:0] dw_conv_mac_112;
assign dw_conv_mac_112 = 
	 16'sd 20093 * $signed(input_fmap_112[15:0]) +
	 14'sd 4278 * $signed(input_fmap_112[31:16]) +
	 13'sd 3326 * $signed(input_fmap_112[47:32]) +
	 13'sd 2654 * $signed(input_fmap_112[63:48]) +
	 15'sd 12259 * $signed(input_fmap_112[79:64]) +
	 16'sd 20863 * $signed(input_fmap_112[95:80]) +
	 14'sd 6099 * $signed(input_fmap_112[111:96]) +
	 16'sd 21282 * $signed(input_fmap_112[127:112]) +
	 16'sd 18489 * $signed(input_fmap_112[143:128]);

logic signed [31:0] dw_conv_mac_113;
assign dw_conv_mac_113 = 
	 16'sd 20366 * $signed(input_fmap_113[15:0]) +
	 16'sd 20954 * $signed(input_fmap_113[31:16]) +
	 15'sd 10939 * $signed(input_fmap_113[47:32]) +
	 16'sd 27500 * $signed(input_fmap_113[63:48]) +
	 15'sd 8744 * $signed(input_fmap_113[79:64]) +
	 16'sd 17377 * $signed(input_fmap_113[95:80]) +
	 16'sd 30564 * $signed(input_fmap_113[111:96]) +
	 16'sd 24929 * $signed(input_fmap_113[127:112]) +
	 15'sd 12565 * $signed(input_fmap_113[143:128]);

logic signed [31:0] dw_conv_mac_114;
assign dw_conv_mac_114 = 
	 16'sd 26567 * $signed(input_fmap_114[15:0]) +
	 13'sd 2814 * $signed(input_fmap_114[31:16]) +
	 14'sd 5353 * $signed(input_fmap_114[47:32]) +
	 16'sd 22024 * $signed(input_fmap_114[63:48]) +
	 15'sd 14020 * $signed(input_fmap_114[79:64]) +
	 16'sd 16701 * $signed(input_fmap_114[95:80]) +
	 16'sd 24771 * $signed(input_fmap_114[111:96]) +
	 16'sd 17709 * $signed(input_fmap_114[127:112]) +
	 13'sd 2450 * $signed(input_fmap_114[143:128]);

logic signed [31:0] dw_conv_mac_115;
assign dw_conv_mac_115 = 
	 16'sd 30175 * $signed(input_fmap_115[15:0]) +
	 16'sd 18265 * $signed(input_fmap_115[31:16]) +
	 14'sd 7247 * $signed(input_fmap_115[47:32]) +
	 13'sd 2090 * $signed(input_fmap_115[63:48]) +
	 16'sd 26815 * $signed(input_fmap_115[79:64]) +
	 15'sd 9159 * $signed(input_fmap_115[95:80]) +
	 16'sd 29183 * $signed(input_fmap_115[111:96]) +
	 15'sd 16216 * $signed(input_fmap_115[127:112]) +
	 15'sd 13426 * $signed(input_fmap_115[143:128]);

logic signed [31:0] dw_conv_mac_116;
assign dw_conv_mac_116 = 
	 15'sd 8821 * $signed(input_fmap_116[15:0]) +
	 15'sd 12285 * $signed(input_fmap_116[31:16]) +
	 14'sd 5055 * $signed(input_fmap_116[47:32]) +
	 15'sd 11416 * $signed(input_fmap_116[63:48]) +
	 16'sd 28650 * $signed(input_fmap_116[79:64]) +
	 14'sd 5985 * $signed(input_fmap_116[95:80]) +
	 16'sd 20554 * $signed(input_fmap_116[111:96]) +
	 15'sd 12967 * $signed(input_fmap_116[127:112]) +
	 16'sd 27410 * $signed(input_fmap_116[143:128]);

logic signed [31:0] dw_conv_mac_117;
assign dw_conv_mac_117 = 
	 15'sd 13025 * $signed(input_fmap_117[15:0]) +
	 16'sd 25963 * $signed(input_fmap_117[31:16]) +
	 16'sd 22963 * $signed(input_fmap_117[47:32]) +
	 15'sd 12577 * $signed(input_fmap_117[63:48]) +
	 16'sd 28913 * $signed(input_fmap_117[79:64]) +
	 15'sd 8984 * $signed(input_fmap_117[95:80]) +
	 16'sd 25727 * $signed(input_fmap_117[111:96]) +
	 12'sd 1249 * $signed(input_fmap_117[127:112]) +
	 16'sd 22657 * $signed(input_fmap_117[143:128]);

logic signed [31:0] dw_conv_mac_118;
assign dw_conv_mac_118 = 
	 16'sd 28668 * $signed(input_fmap_118[15:0]) +
	 15'sd 11358 * $signed(input_fmap_118[31:16]) +
	 16'sd 21206 * $signed(input_fmap_118[47:32]) +
	 15'sd 13623 * $signed(input_fmap_118[63:48]) +
	 14'sd 6308 * $signed(input_fmap_118[79:64]) +
	 15'sd 10910 * $signed(input_fmap_118[95:80]) +
	 16'sd 23803 * $signed(input_fmap_118[111:96]) +
	 16'sd 32241 * $signed(input_fmap_118[127:112]) +
	 16'sd 27838 * $signed(input_fmap_118[143:128]);

logic signed [31:0] dw_conv_mac_119;
assign dw_conv_mac_119 = 
	 16'sd 18763 * $signed(input_fmap_119[15:0]) +
	 16'sd 21130 * $signed(input_fmap_119[31:16]) +
	 16'sd 25028 * $signed(input_fmap_119[47:32]) +
	 16'sd 30353 * $signed(input_fmap_119[63:48]) +
	 16'sd 25872 * $signed(input_fmap_119[79:64]) +
	 16'sd 25055 * $signed(input_fmap_119[95:80]) +
	 15'sd 14954 * $signed(input_fmap_119[111:96]) +
	 15'sd 12953 * $signed(input_fmap_119[127:112]) +
	 15'sd 14651 * $signed(input_fmap_119[143:128]);

logic signed [31:0] dw_conv_mac_120;
assign dw_conv_mac_120 = 
	 14'sd 6203 * $signed(input_fmap_120[15:0]) +
	 13'sd 4069 * $signed(input_fmap_120[31:16]) +
	 14'sd 8095 * $signed(input_fmap_120[47:32]) +
	 15'sd 15573 * $signed(input_fmap_120[63:48]) +
	 13'sd 3280 * $signed(input_fmap_120[79:64]) +
	 15'sd 11657 * $signed(input_fmap_120[95:80]) +
	 16'sd 32535 * $signed(input_fmap_120[111:96]) +
	 16'sd 30648 * $signed(input_fmap_120[127:112]) +
	 16'sd 31236 * $signed(input_fmap_120[143:128]);

logic signed [31:0] dw_conv_mac_121;
assign dw_conv_mac_121 = 
	 15'sd 8347 * $signed(input_fmap_121[15:0]) +
	 12'sd 1029 * $signed(input_fmap_121[31:16]) +
	 16'sd 20130 * $signed(input_fmap_121[47:32]) +
	 15'sd 10880 * $signed(input_fmap_121[63:48]) +
	 16'sd 20886 * $signed(input_fmap_121[79:64]) +
	 15'sd 10430 * $signed(input_fmap_121[95:80]) +
	 16'sd 31323 * $signed(input_fmap_121[111:96]) +
	 15'sd 10790 * $signed(input_fmap_121[127:112]) +
	 15'sd 14930 * $signed(input_fmap_121[143:128]);

logic signed [31:0] dw_conv_mac_122;
assign dw_conv_mac_122 = 
	 16'sd 20579 * $signed(input_fmap_122[15:0]) +
	 16'sd 27231 * $signed(input_fmap_122[31:16]) +
	 16'sd 18876 * $signed(input_fmap_122[47:32]) +
	 15'sd 11811 * $signed(input_fmap_122[63:48]) +
	 16'sd 26776 * $signed(input_fmap_122[79:64]) +
	 16'sd 20745 * $signed(input_fmap_122[95:80]) +
	 10'sd 371 * $signed(input_fmap_122[111:96]) +
	 16'sd 31808 * $signed(input_fmap_122[127:112]) +
	 15'sd 11882 * $signed(input_fmap_122[143:128]);

logic signed [31:0] dw_conv_mac_123;
assign dw_conv_mac_123 = 
	 15'sd 10156 * $signed(input_fmap_123[15:0]) +
	 15'sd 9808 * $signed(input_fmap_123[31:16]) +
	 14'sd 6418 * $signed(input_fmap_123[47:32]) +
	 14'sd 6131 * $signed(input_fmap_123[63:48]) +
	 16'sd 25178 * $signed(input_fmap_123[79:64]) +
	 13'sd 2901 * $signed(input_fmap_123[95:80]) +
	 16'sd 27344 * $signed(input_fmap_123[111:96]) +
	 16'sd 30199 * $signed(input_fmap_123[127:112]) +
	 15'sd 11826 * $signed(input_fmap_123[143:128]);

logic signed [31:0] dw_conv_mac_124;
assign dw_conv_mac_124 = 
	 15'sd 12024 * $signed(input_fmap_124[15:0]) +
	 16'sd 17541 * $signed(input_fmap_124[31:16]) +
	 12'sd 1097 * $signed(input_fmap_124[47:32]) +
	 15'sd 9718 * $signed(input_fmap_124[63:48]) +
	 14'sd 4821 * $signed(input_fmap_124[79:64]) +
	 15'sd 13493 * $signed(input_fmap_124[95:80]) +
	 15'sd 10963 * $signed(input_fmap_124[111:96]) +
	 16'sd 29420 * $signed(input_fmap_124[127:112]) +
	 15'sd 14577 * $signed(input_fmap_124[143:128]);

logic signed [31:0] dw_conv_mac_125;
assign dw_conv_mac_125 = 
	 15'sd 14488 * $signed(input_fmap_125[15:0]) +
	 16'sd 28664 * $signed(input_fmap_125[31:16]) +
	 15'sd 13024 * $signed(input_fmap_125[47:32]) +
	 14'sd 5512 * $signed(input_fmap_125[63:48]) +
	 14'sd 6569 * $signed(input_fmap_125[79:64]) +
	 16'sd 21748 * $signed(input_fmap_125[95:80]) +
	 16'sd 30844 * $signed(input_fmap_125[111:96]) +
	 16'sd 23648 * $signed(input_fmap_125[127:112]) +
	 13'sd 3603 * $signed(input_fmap_125[143:128]);

logic signed [31:0] dw_conv_mac_126;
assign dw_conv_mac_126 = 
	 15'sd 9249 * $signed(input_fmap_126[15:0]) +
	 16'sd 28788 * $signed(input_fmap_126[31:16]) +
	 16'sd 31166 * $signed(input_fmap_126[47:32]) +
	 15'sd 14722 * $signed(input_fmap_126[63:48]) +
	 15'sd 11522 * $signed(input_fmap_126[79:64]) +
	 10'sd 496 * $signed(input_fmap_126[95:80]) +
	 16'sd 19748 * $signed(input_fmap_126[111:96]) +
	 15'sd 12328 * $signed(input_fmap_126[127:112]) +
	 16'sd 30920 * $signed(input_fmap_126[143:128]);

logic signed [31:0] dw_conv_mac_127;
assign dw_conv_mac_127 = 
	 16'sd 28621 * $signed(input_fmap_127[15:0]) +
	 14'sd 6604 * $signed(input_fmap_127[31:16]) +
	 15'sd 15980 * $signed(input_fmap_127[47:32]) +
	 14'sd 4201 * $signed(input_fmap_127[63:48]) +
	 15'sd 10223 * $signed(input_fmap_127[79:64]) +
	 13'sd 3956 * $signed(input_fmap_127[95:80]) +
	 13'sd 3896 * $signed(input_fmap_127[111:96]) +
	 15'sd 10616 * $signed(input_fmap_127[127:112]) +
	 16'sd 28607 * $signed(input_fmap_127[143:128]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 15'd9673;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 12'd1290;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 15'd9871;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 16'd18005;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 14'd5355;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 16'd16879;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 14'd7667;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 15'd9584;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 16'd28667;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 16'd30590;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 15'd15399;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 16'd20302;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 13'd3949;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 10'd360;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 16'd22969;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 16'd29160;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 16'd16939;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 14'd7355;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18 + 16'd18593;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 14'd6931;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 14'd6353;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21 + 16'd18519;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22 + 15'd16302;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 15'd10611;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24 + 15'd9956;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25 + 12'd1808;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 16'd28842;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 16'd16660;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28 + 14'd6165;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 16'd32045;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 15'd12214;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 16'd26584;
logic [31:0] bias_add_32;
assign bias_add_32 = dw_conv_mac_32 + 16'd24905;
logic [31:0] bias_add_33;
assign bias_add_33 = dw_conv_mac_33 + 15'd15685;
logic [31:0] bias_add_34;
assign bias_add_34 = dw_conv_mac_34 + 14'd4416;
logic [31:0] bias_add_35;
assign bias_add_35 = dw_conv_mac_35 + 16'd18721;
logic [31:0] bias_add_36;
assign bias_add_36 = dw_conv_mac_36 + 16'd21325;
logic [31:0] bias_add_37;
assign bias_add_37 = dw_conv_mac_37 + 11'd723;
logic [31:0] bias_add_38;
assign bias_add_38 = dw_conv_mac_38 + 13'd3939;
logic [31:0] bias_add_39;
assign bias_add_39 = dw_conv_mac_39 + 15'd9580;
logic [31:0] bias_add_40;
assign bias_add_40 = dw_conv_mac_40 + 12'd1035;
logic [31:0] bias_add_41;
assign bias_add_41 = dw_conv_mac_41 + 15'd9936;
logic [31:0] bias_add_42;
assign bias_add_42 = dw_conv_mac_42 + 16'd23954;
logic [31:0] bias_add_43;
assign bias_add_43 = dw_conv_mac_43 + 16'd26337;
logic [31:0] bias_add_44;
assign bias_add_44 = dw_conv_mac_44 + 15'd10239;
logic [31:0] bias_add_45;
assign bias_add_45 = dw_conv_mac_45 + 13'd3913;
logic [31:0] bias_add_46;
assign bias_add_46 = dw_conv_mac_46 + 15'd9252;
logic [31:0] bias_add_47;
assign bias_add_47 = dw_conv_mac_47 + 14'd4821;
logic [31:0] bias_add_48;
assign bias_add_48 = dw_conv_mac_48 + 14'd7079;
logic [31:0] bias_add_49;
assign bias_add_49 = dw_conv_mac_49 + 11'd968;
logic [31:0] bias_add_50;
assign bias_add_50 = dw_conv_mac_50 + 14'd7130;
logic [31:0] bias_add_51;
assign bias_add_51 = dw_conv_mac_51 + 16'd24411;
logic [31:0] bias_add_52;
assign bias_add_52 = dw_conv_mac_52 + 16'd17227;
logic [31:0] bias_add_53;
assign bias_add_53 = dw_conv_mac_53 + 16'd17027;
logic [31:0] bias_add_54;
assign bias_add_54 = dw_conv_mac_54 + 15'd12895;
logic [31:0] bias_add_55;
assign bias_add_55 = dw_conv_mac_55 + 14'd7770;
logic [31:0] bias_add_56;
assign bias_add_56 = dw_conv_mac_56 + 14'd4606;
logic [31:0] bias_add_57;
assign bias_add_57 = dw_conv_mac_57 + 16'd30850;
logic [31:0] bias_add_58;
assign bias_add_58 = dw_conv_mac_58 + 16'd29952;
logic [31:0] bias_add_59;
assign bias_add_59 = dw_conv_mac_59 + 16'd31574;
logic [31:0] bias_add_60;
assign bias_add_60 = dw_conv_mac_60 + 13'd3528;
logic [31:0] bias_add_61;
assign bias_add_61 = dw_conv_mac_61 + 15'd10537;
logic [31:0] bias_add_62;
assign bias_add_62 = dw_conv_mac_62 + 14'd7663;
logic [31:0] bias_add_63;
assign bias_add_63 = dw_conv_mac_63 + 16'd29938;
logic [31:0] bias_add_64;
assign bias_add_64 = dw_conv_mac_64 + 16'd25313;
logic [31:0] bias_add_65;
assign bias_add_65 = dw_conv_mac_65 + 15'd9520;
logic [31:0] bias_add_66;
assign bias_add_66 = dw_conv_mac_66 + 13'd2165;
logic [31:0] bias_add_67;
assign bias_add_67 = dw_conv_mac_67 + 15'd9910;
logic [31:0] bias_add_68;
assign bias_add_68 = dw_conv_mac_68 + 15'd9043;
logic [31:0] bias_add_69;
assign bias_add_69 = dw_conv_mac_69 + 16'd25203;
logic [31:0] bias_add_70;
assign bias_add_70 = dw_conv_mac_70 + 16'd22450;
logic [31:0] bias_add_71;
assign bias_add_71 = dw_conv_mac_71 + 16'd24433;
logic [31:0] bias_add_72;
assign bias_add_72 = dw_conv_mac_72 + 14'd4401;
logic [31:0] bias_add_73;
assign bias_add_73 = dw_conv_mac_73 + 16'd29190;
logic [31:0] bias_add_74;
assign bias_add_74 = dw_conv_mac_74 + 12'd1429;
logic [31:0] bias_add_75;
assign bias_add_75 = dw_conv_mac_75 + 16'd29317;
logic [31:0] bias_add_76;
assign bias_add_76 = dw_conv_mac_76 + 16'd19328;
logic [31:0] bias_add_77;
assign bias_add_77 = dw_conv_mac_77 + 16'd30783;
logic [31:0] bias_add_78;
assign bias_add_78 = dw_conv_mac_78 + 16'd23756;
logic [31:0] bias_add_79;
assign bias_add_79 = dw_conv_mac_79 + 16'd19814;
logic [31:0] bias_add_80;
assign bias_add_80 = dw_conv_mac_80 + 16'd28568;
logic [31:0] bias_add_81;
assign bias_add_81 = dw_conv_mac_81 + 16'd29791;
logic [31:0] bias_add_82;
assign bias_add_82 = dw_conv_mac_82 + 16'd22390;
logic [31:0] bias_add_83;
assign bias_add_83 = dw_conv_mac_83 + 16'd20053;
logic [31:0] bias_add_84;
assign bias_add_84 = dw_conv_mac_84 + 16'd25967;
logic [31:0] bias_add_85;
assign bias_add_85 = dw_conv_mac_85 + 16'd19920;
logic [31:0] bias_add_86;
assign bias_add_86 = dw_conv_mac_86 + 13'd3051;
logic [31:0] bias_add_87;
assign bias_add_87 = dw_conv_mac_87 + 16'd20731;
logic [31:0] bias_add_88;
assign bias_add_88 = dw_conv_mac_88 + 16'd29061;
logic [31:0] bias_add_89;
assign bias_add_89 = dw_conv_mac_89 + 16'd16468;
logic [31:0] bias_add_90;
assign bias_add_90 = dw_conv_mac_90 + 16'd28515;
logic [31:0] bias_add_91;
assign bias_add_91 = dw_conv_mac_91 + 16'd26023;
logic [31:0] bias_add_92;
assign bias_add_92 = dw_conv_mac_92 + 16'd25706;
logic [31:0] bias_add_93;
assign bias_add_93 = dw_conv_mac_93 + 16'd30774;
logic [31:0] bias_add_94;
assign bias_add_94 = dw_conv_mac_94 + 15'd9285;
logic [31:0] bias_add_95;
assign bias_add_95 = dw_conv_mac_95 + 16'd31435;
logic [31:0] bias_add_96;
assign bias_add_96 = dw_conv_mac_96 + 13'd3212;
logic [31:0] bias_add_97;
assign bias_add_97 = dw_conv_mac_97 + 16'd29737;
logic [31:0] bias_add_98;
assign bias_add_98 = dw_conv_mac_98 + 16'd20842;
logic [31:0] bias_add_99;
assign bias_add_99 = dw_conv_mac_99 + 13'd2424;
logic [31:0] bias_add_100;
assign bias_add_100 = dw_conv_mac_100 + 14'd7231;
logic [31:0] bias_add_101;
assign bias_add_101 = dw_conv_mac_101 + 14'd6930;
logic [31:0] bias_add_102;
assign bias_add_102 = dw_conv_mac_102 + 16'd17964;
logic [31:0] bias_add_103;
assign bias_add_103 = dw_conv_mac_103 + 15'd8726;
logic [31:0] bias_add_104;
assign bias_add_104 = dw_conv_mac_104 + 16'd30847;
logic [31:0] bias_add_105;
assign bias_add_105 = dw_conv_mac_105 + 16'd27153;
logic [31:0] bias_add_106;
assign bias_add_106 = dw_conv_mac_106 + 15'd14593;
logic [31:0] bias_add_107;
assign bias_add_107 = dw_conv_mac_107 + 12'd1151;
logic [31:0] bias_add_108;
assign bias_add_108 = dw_conv_mac_108 + 15'd10118;
logic [31:0] bias_add_109;
assign bias_add_109 = dw_conv_mac_109 + 16'd30751;
logic [31:0] bias_add_110;
assign bias_add_110 = dw_conv_mac_110 + 14'd5010;
logic [31:0] bias_add_111;
assign bias_add_111 = dw_conv_mac_111 + 16'd28994;
logic [31:0] bias_add_112;
assign bias_add_112 = dw_conv_mac_112 + 15'd8973;
logic [31:0] bias_add_113;
assign bias_add_113 = dw_conv_mac_113 + 16'd21056;
logic [31:0] bias_add_114;
assign bias_add_114 = dw_conv_mac_114 + 11'd634;
logic [31:0] bias_add_115;
assign bias_add_115 = dw_conv_mac_115 + 16'd17745;
logic [31:0] bias_add_116;
assign bias_add_116 = dw_conv_mac_116 + 16'd30696;
logic [31:0] bias_add_117;
assign bias_add_117 = dw_conv_mac_117 + 15'd13391;
logic [31:0] bias_add_118;
assign bias_add_118 = dw_conv_mac_118 + 15'd13447;
logic [31:0] bias_add_119;
assign bias_add_119 = dw_conv_mac_119 + 16'd27234;
logic [31:0] bias_add_120;
assign bias_add_120 = dw_conv_mac_120 + 16'd27112;
logic [31:0] bias_add_121;
assign bias_add_121 = dw_conv_mac_121 + 14'd7825;
logic [31:0] bias_add_122;
assign bias_add_122 = dw_conv_mac_122 + 15'd11228;
logic [31:0] bias_add_123;
assign bias_add_123 = dw_conv_mac_123 + 15'd8912;
logic [31:0] bias_add_124;
assign bias_add_124 = dw_conv_mac_124 + 16'd19386;
logic [31:0] bias_add_125;
assign bias_add_125 = dw_conv_mac_125 + 16'd24950;
logic [31:0] bias_add_126;
assign bias_add_126 = dw_conv_mac_126 + 16'd18821;
logic [31:0] bias_add_127;
assign bias_add_127 = dw_conv_mac_127 + 14'd6052;

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
