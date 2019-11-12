module conv9_dw (
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
	 16'sd 31568 * $signed(input_fmap_0[15:0]) +
	 12'sd 1783 * $signed(input_fmap_0[31:16]) +
	 16'sd 17975 * $signed(input_fmap_0[47:32]) +
	 16'sd 16684 * $signed(input_fmap_0[63:48]) +
	 16'sd 24427 * $signed(input_fmap_0[79:64]) +
	 14'sd 6712 * $signed(input_fmap_0[95:80]) +
	 16'sd 27987 * $signed(input_fmap_0[111:96]) +
	 15'sd 8482 * $signed(input_fmap_0[127:112]) +
	 16'sd 32262 * $signed(input_fmap_0[143:128]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 16'sd 25177 * $signed(input_fmap_1[15:0]) +
	 13'sd 3721 * $signed(input_fmap_1[31:16]) +
	 16'sd 23781 * $signed(input_fmap_1[47:32]) +
	 16'sd 25026 * $signed(input_fmap_1[63:48]) +
	 16'sd 16531 * $signed(input_fmap_1[79:64]) +
	 11'sd 955 * $signed(input_fmap_1[95:80]) +
	 14'sd 6699 * $signed(input_fmap_1[111:96]) +
	 13'sd 2786 * $signed(input_fmap_1[127:112]) +
	 14'sd 5244 * $signed(input_fmap_1[143:128]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 15'sd 11494 * $signed(input_fmap_2[15:0]) +
	 16'sd 32765 * $signed(input_fmap_2[31:16]) +
	 14'sd 7119 * $signed(input_fmap_2[47:32]) +
	 16'sd 17537 * $signed(input_fmap_2[63:48]) +
	 16'sd 22947 * $signed(input_fmap_2[79:64]) +
	 15'sd 8721 * $signed(input_fmap_2[95:80]) +
	 15'sd 13976 * $signed(input_fmap_2[111:96]) +
	 16'sd 26091 * $signed(input_fmap_2[127:112]) +
	 15'sd 9216 * $signed(input_fmap_2[143:128]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 13'sd 2055 * $signed(input_fmap_3[15:0]) +
	 16'sd 30490 * $signed(input_fmap_3[31:16]) +
	 16'sd 17374 * $signed(input_fmap_3[47:32]) +
	 14'sd 5300 * $signed(input_fmap_3[63:48]) +
	 16'sd 20974 * $signed(input_fmap_3[79:64]) +
	 15'sd 14828 * $signed(input_fmap_3[95:80]) +
	 14'sd 4202 * $signed(input_fmap_3[111:96]) +
	 13'sd 3834 * $signed(input_fmap_3[127:112]) +
	 15'sd 10705 * $signed(input_fmap_3[143:128]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 14'sd 7881 * $signed(input_fmap_4[15:0]) +
	 16'sd 23032 * $signed(input_fmap_4[31:16]) +
	 16'sd 32614 * $signed(input_fmap_4[47:32]) +
	 15'sd 13155 * $signed(input_fmap_4[63:48]) +
	 16'sd 24768 * $signed(input_fmap_4[79:64]) +
	 15'sd 9751 * $signed(input_fmap_4[95:80]) +
	 15'sd 14601 * $signed(input_fmap_4[111:96]) +
	 16'sd 20863 * $signed(input_fmap_4[127:112]) +
	 14'sd 4169 * $signed(input_fmap_4[143:128]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 15'sd 15004 * $signed(input_fmap_5[15:0]) +
	 16'sd 25704 * $signed(input_fmap_5[31:16]) +
	 16'sd 26660 * $signed(input_fmap_5[47:32]) +
	 15'sd 10547 * $signed(input_fmap_5[63:48]) +
	 16'sd 21921 * $signed(input_fmap_5[79:64]) +
	 11'sd 652 * $signed(input_fmap_5[95:80]) +
	 15'sd 15011 * $signed(input_fmap_5[111:96]) +
	 16'sd 22793 * $signed(input_fmap_5[127:112]) +
	 15'sd 12818 * $signed(input_fmap_5[143:128]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 15'sd 14544 * $signed(input_fmap_6[15:0]) +
	 16'sd 25023 * $signed(input_fmap_6[31:16]) +
	 14'sd 5097 * $signed(input_fmap_6[47:32]) +
	 16'sd 30832 * $signed(input_fmap_6[63:48]) +
	 15'sd 13648 * $signed(input_fmap_6[79:64]) +
	 15'sd 10395 * $signed(input_fmap_6[95:80]) +
	 16'sd 32614 * $signed(input_fmap_6[111:96]) +
	 15'sd 15278 * $signed(input_fmap_6[127:112]) +
	 14'sd 5585 * $signed(input_fmap_6[143:128]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 15'sd 10401 * $signed(input_fmap_7[15:0]) +
	 16'sd 31180 * $signed(input_fmap_7[31:16]) +
	 16'sd 24151 * $signed(input_fmap_7[47:32]) +
	 15'sd 12893 * $signed(input_fmap_7[63:48]) +
	 16'sd 31897 * $signed(input_fmap_7[79:64]) +
	 16'sd 26556 * $signed(input_fmap_7[95:80]) +
	 15'sd 8367 * $signed(input_fmap_7[111:96]) +
	 16'sd 20768 * $signed(input_fmap_7[127:112]) +
	 16'sd 20330 * $signed(input_fmap_7[143:128]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 16'sd 21345 * $signed(input_fmap_8[15:0]) +
	 16'sd 27768 * $signed(input_fmap_8[31:16]) +
	 14'sd 4591 * $signed(input_fmap_8[47:32]) +
	 12'sd 1083 * $signed(input_fmap_8[63:48]) +
	 16'sd 28286 * $signed(input_fmap_8[79:64]) +
	 16'sd 24753 * $signed(input_fmap_8[95:80]) +
	 16'sd 19274 * $signed(input_fmap_8[111:96]) +
	 13'sd 3515 * $signed(input_fmap_8[127:112]) +
	 14'sd 4257 * $signed(input_fmap_8[143:128]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 16'sd 26229 * $signed(input_fmap_9[15:0]) +
	 16'sd 30032 * $signed(input_fmap_9[31:16]) +
	 16'sd 20533 * $signed(input_fmap_9[47:32]) +
	 15'sd 16198 * $signed(input_fmap_9[63:48]) +
	 14'sd 6400 * $signed(input_fmap_9[79:64]) +
	 14'sd 4365 * $signed(input_fmap_9[95:80]) +
	 15'sd 11745 * $signed(input_fmap_9[111:96]) +
	 16'sd 29975 * $signed(input_fmap_9[127:112]) +
	 16'sd 22262 * $signed(input_fmap_9[143:128]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 16'sd 31171 * $signed(input_fmap_10[15:0]) +
	 10'sd 504 * $signed(input_fmap_10[31:16]) +
	 16'sd 27750 * $signed(input_fmap_10[47:32]) +
	 10'sd 335 * $signed(input_fmap_10[63:48]) +
	 15'sd 11449 * $signed(input_fmap_10[79:64]) +
	 15'sd 10797 * $signed(input_fmap_10[95:80]) +
	 16'sd 32621 * $signed(input_fmap_10[111:96]) +
	 15'sd 9599 * $signed(input_fmap_10[127:112]) +
	 16'sd 27822 * $signed(input_fmap_10[143:128]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 11'sd 828 * $signed(input_fmap_11[15:0]) +
	 11'sd 530 * $signed(input_fmap_11[31:16]) +
	 15'sd 14246 * $signed(input_fmap_11[47:32]) +
	 14'sd 5594 * $signed(input_fmap_11[63:48]) +
	 16'sd 24400 * $signed(input_fmap_11[79:64]) +
	 16'sd 27950 * $signed(input_fmap_11[95:80]) +
	 16'sd 22350 * $signed(input_fmap_11[111:96]) +
	 15'sd 9016 * $signed(input_fmap_11[127:112]) +
	 14'sd 4874 * $signed(input_fmap_11[143:128]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 16'sd 19599 * $signed(input_fmap_12[15:0]) +
	 15'sd 8764 * $signed(input_fmap_12[31:16]) +
	 15'sd 11359 * $signed(input_fmap_12[47:32]) +
	 16'sd 20314 * $signed(input_fmap_12[63:48]) +
	 14'sd 6048 * $signed(input_fmap_12[79:64]) +
	 16'sd 20730 * $signed(input_fmap_12[95:80]) +
	 16'sd 24412 * $signed(input_fmap_12[111:96]) +
	 15'sd 10381 * $signed(input_fmap_12[127:112]) +
	 16'sd 26728 * $signed(input_fmap_12[143:128]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 14'sd 4865 * $signed(input_fmap_13[15:0]) +
	 16'sd 23314 * $signed(input_fmap_13[31:16]) +
	 16'sd 22149 * $signed(input_fmap_13[47:32]) +
	 15'sd 12788 * $signed(input_fmap_13[63:48]) +
	 11'sd 869 * $signed(input_fmap_13[79:64]) +
	 16'sd 27195 * $signed(input_fmap_13[95:80]) +
	 15'sd 12466 * $signed(input_fmap_13[111:96]) +
	 13'sd 3642 * $signed(input_fmap_13[127:112]) +
	 16'sd 24550 * $signed(input_fmap_13[143:128]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 15'sd 15317 * $signed(input_fmap_14[15:0]) +
	 16'sd 28973 * $signed(input_fmap_14[31:16]) +
	 14'sd 7172 * $signed(input_fmap_14[47:32]) +
	 15'sd 15466 * $signed(input_fmap_14[63:48]) +
	 11'sd 952 * $signed(input_fmap_14[79:64]) +
	 13'sd 2510 * $signed(input_fmap_14[95:80]) +
	 16'sd 19391 * $signed(input_fmap_14[111:96]) +
	 16'sd 19408 * $signed(input_fmap_14[127:112]) +
	 15'sd 9074 * $signed(input_fmap_14[143:128]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 13'sd 3401 * $signed(input_fmap_15[15:0]) +
	 16'sd 26806 * $signed(input_fmap_15[31:16]) +
	 16'sd 32665 * $signed(input_fmap_15[47:32]) +
	 16'sd 16426 * $signed(input_fmap_15[63:48]) +
	 16'sd 27776 * $signed(input_fmap_15[79:64]) +
	 16'sd 32051 * $signed(input_fmap_15[95:80]) +
	 11'sd 817 * $signed(input_fmap_15[111:96]) +
	 16'sd 26807 * $signed(input_fmap_15[127:112]) +
	 16'sd 19782 * $signed(input_fmap_15[143:128]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 16'sd 17441 * $signed(input_fmap_16[15:0]) +
	 12'sd 1662 * $signed(input_fmap_16[31:16]) +
	 15'sd 8988 * $signed(input_fmap_16[47:32]) +
	 16'sd 30486 * $signed(input_fmap_16[63:48]) +
	 15'sd 13824 * $signed(input_fmap_16[79:64]) +
	 16'sd 30329 * $signed(input_fmap_16[95:80]) +
	 16'sd 31645 * $signed(input_fmap_16[111:96]) +
	 16'sd 30118 * $signed(input_fmap_16[127:112]) +
	 15'sd 14912 * $signed(input_fmap_16[143:128]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 16'sd 22782 * $signed(input_fmap_17[15:0]) +
	 16'sd 31053 * $signed(input_fmap_17[31:16]) +
	 15'sd 11689 * $signed(input_fmap_17[47:32]) +
	 15'sd 15711 * $signed(input_fmap_17[63:48]) +
	 14'sd 5232 * $signed(input_fmap_17[79:64]) +
	 16'sd 27084 * $signed(input_fmap_17[95:80]) +
	 16'sd 29207 * $signed(input_fmap_17[111:96]) +
	 16'sd 19481 * $signed(input_fmap_17[127:112]) +
	 16'sd 32731 * $signed(input_fmap_17[143:128]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 12'sd 1341 * $signed(input_fmap_18[15:0]) +
	 16'sd 29037 * $signed(input_fmap_18[31:16]) +
	 16'sd 29189 * $signed(input_fmap_18[47:32]) +
	 15'sd 11926 * $signed(input_fmap_18[63:48]) +
	 9'sd 165 * $signed(input_fmap_18[79:64]) +
	 16'sd 28490 * $signed(input_fmap_18[95:80]) +
	 16'sd 30369 * $signed(input_fmap_18[111:96]) +
	 16'sd 29618 * $signed(input_fmap_18[127:112]) +
	 15'sd 14857 * $signed(input_fmap_18[143:128]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 11'sd 999 * $signed(input_fmap_19[15:0]) +
	 16'sd 18860 * $signed(input_fmap_19[31:16]) +
	 13'sd 3595 * $signed(input_fmap_19[47:32]) +
	 16'sd 26117 * $signed(input_fmap_19[63:48]) +
	 15'sd 11678 * $signed(input_fmap_19[79:64]) +
	 16'sd 27215 * $signed(input_fmap_19[95:80]) +
	 16'sd 20045 * $signed(input_fmap_19[111:96]) +
	 16'sd 31642 * $signed(input_fmap_19[127:112]) +
	 16'sd 22383 * $signed(input_fmap_19[143:128]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 15'sd 14695 * $signed(input_fmap_20[15:0]) +
	 15'sd 9631 * $signed(input_fmap_20[31:16]) +
	 15'sd 9466 * $signed(input_fmap_20[47:32]) +
	 14'sd 7838 * $signed(input_fmap_20[63:48]) +
	 14'sd 5480 * $signed(input_fmap_20[79:64]) +
	 15'sd 13750 * $signed(input_fmap_20[95:80]) +
	 16'sd 31044 * $signed(input_fmap_20[111:96]) +
	 15'sd 10962 * $signed(input_fmap_20[127:112]) +
	 15'sd 13501 * $signed(input_fmap_20[143:128]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 12'sd 1455 * $signed(input_fmap_21[15:0]) +
	 16'sd 23961 * $signed(input_fmap_21[31:16]) +
	 15'sd 9430 * $signed(input_fmap_21[47:32]) +
	 14'sd 5611 * $signed(input_fmap_21[63:48]) +
	 16'sd 23300 * $signed(input_fmap_21[79:64]) +
	 15'sd 9347 * $signed(input_fmap_21[95:80]) +
	 12'sd 1778 * $signed(input_fmap_21[111:96]) +
	 14'sd 6352 * $signed(input_fmap_21[127:112]) +
	 15'sd 8707 * $signed(input_fmap_21[143:128]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 16'sd 17912 * $signed(input_fmap_22[15:0]) +
	 15'sd 14630 * $signed(input_fmap_22[31:16]) +
	 16'sd 17103 * $signed(input_fmap_22[47:32]) +
	 13'sd 3097 * $signed(input_fmap_22[63:48]) +
	 16'sd 19072 * $signed(input_fmap_22[79:64]) +
	 13'sd 2148 * $signed(input_fmap_22[95:80]) +
	 13'sd 2802 * $signed(input_fmap_22[111:96]) +
	 16'sd 18311 * $signed(input_fmap_22[127:112]) +
	 16'sd 24477 * $signed(input_fmap_22[143:128]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 16'sd 32569 * $signed(input_fmap_23[15:0]) +
	 15'sd 8444 * $signed(input_fmap_23[31:16]) +
	 15'sd 13794 * $signed(input_fmap_23[47:32]) +
	 15'sd 14226 * $signed(input_fmap_23[63:48]) +
	 15'sd 16281 * $signed(input_fmap_23[79:64]) +
	 15'sd 9596 * $signed(input_fmap_23[95:80]) +
	 16'sd 31501 * $signed(input_fmap_23[111:96]) +
	 15'sd 9039 * $signed(input_fmap_23[127:112]) +
	 15'sd 11678 * $signed(input_fmap_23[143:128]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 16'sd 22379 * $signed(input_fmap_24[15:0]) +
	 14'sd 4493 * $signed(input_fmap_24[31:16]) +
	 15'sd 13938 * $signed(input_fmap_24[47:32]) +
	 16'sd 19826 * $signed(input_fmap_24[63:48]) +
	 14'sd 4172 * $signed(input_fmap_24[79:64]) +
	 16'sd 22767 * $signed(input_fmap_24[95:80]) +
	 16'sd 28052 * $signed(input_fmap_24[111:96]) +
	 16'sd 23182 * $signed(input_fmap_24[127:112]) +
	 15'sd 9306 * $signed(input_fmap_24[143:128]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 15'sd 8519 * $signed(input_fmap_25[15:0]) +
	 16'sd 22032 * $signed(input_fmap_25[31:16]) +
	 16'sd 26844 * $signed(input_fmap_25[47:32]) +
	 16'sd 30516 * $signed(input_fmap_25[63:48]) +
	 14'sd 6646 * $signed(input_fmap_25[79:64]) +
	 16'sd 28201 * $signed(input_fmap_25[95:80]) +
	 15'sd 12177 * $signed(input_fmap_25[111:96]) +
	 16'sd 19052 * $signed(input_fmap_25[127:112]) +
	 16'sd 32107 * $signed(input_fmap_25[143:128]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 16'sd 30428 * $signed(input_fmap_26[15:0]) +
	 16'sd 22665 * $signed(input_fmap_26[31:16]) +
	 12'sd 1741 * $signed(input_fmap_26[47:32]) +
	 16'sd 29521 * $signed(input_fmap_26[63:48]) +
	 16'sd 30390 * $signed(input_fmap_26[79:64]) +
	 16'sd 22299 * $signed(input_fmap_26[95:80]) +
	 15'sd 9400 * $signed(input_fmap_26[111:96]) +
	 11'sd 1014 * $signed(input_fmap_26[127:112]) +
	 16'sd 21758 * $signed(input_fmap_26[143:128]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 16'sd 23504 * $signed(input_fmap_27[15:0]) +
	 14'sd 5214 * $signed(input_fmap_27[31:16]) +
	 16'sd 28879 * $signed(input_fmap_27[47:32]) +
	 16'sd 26967 * $signed(input_fmap_27[63:48]) +
	 16'sd 17069 * $signed(input_fmap_27[79:64]) +
	 16'sd 30960 * $signed(input_fmap_27[95:80]) +
	 15'sd 13431 * $signed(input_fmap_27[111:96]) +
	 16'sd 25101 * $signed(input_fmap_27[127:112]) +
	 16'sd 24997 * $signed(input_fmap_27[143:128]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 8'sd 87 * $signed(input_fmap_28[15:0]) +
	 16'sd 30308 * $signed(input_fmap_28[31:16]) +
	 15'sd 9238 * $signed(input_fmap_28[47:32]) +
	 16'sd 27688 * $signed(input_fmap_28[63:48]) +
	 15'sd 9578 * $signed(input_fmap_28[79:64]) +
	 15'sd 15554 * $signed(input_fmap_28[95:80]) +
	 12'sd 1376 * $signed(input_fmap_28[111:96]) +
	 16'sd 29820 * $signed(input_fmap_28[127:112]) +
	 13'sd 2541 * $signed(input_fmap_28[143:128]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 16'sd 17686 * $signed(input_fmap_29[15:0]) +
	 16'sd 27165 * $signed(input_fmap_29[31:16]) +
	 16'sd 32266 * $signed(input_fmap_29[47:32]) +
	 15'sd 11268 * $signed(input_fmap_29[63:48]) +
	 16'sd 22281 * $signed(input_fmap_29[79:64]) +
	 16'sd 18400 * $signed(input_fmap_29[95:80]) +
	 16'sd 25738 * $signed(input_fmap_29[111:96]) +
	 15'sd 10097 * $signed(input_fmap_29[127:112]) +
	 15'sd 16257 * $signed(input_fmap_29[143:128]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 13'sd 3936 * $signed(input_fmap_30[15:0]) +
	 16'sd 17507 * $signed(input_fmap_30[31:16]) +
	 12'sd 1170 * $signed(input_fmap_30[47:32]) +
	 16'sd 25422 * $signed(input_fmap_30[63:48]) +
	 15'sd 14126 * $signed(input_fmap_30[79:64]) +
	 16'sd 23469 * $signed(input_fmap_30[95:80]) +
	 16'sd 31998 * $signed(input_fmap_30[111:96]) +
	 15'sd 14012 * $signed(input_fmap_30[127:112]) +
	 16'sd 25766 * $signed(input_fmap_30[143:128]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 16'sd 22935 * $signed(input_fmap_31[15:0]) +
	 16'sd 16800 * $signed(input_fmap_31[31:16]) +
	 16'sd 21820 * $signed(input_fmap_31[47:32]) +
	 16'sd 20534 * $signed(input_fmap_31[63:48]) +
	 15'sd 9436 * $signed(input_fmap_31[79:64]) +
	 15'sd 15449 * $signed(input_fmap_31[95:80]) +
	 15'sd 14893 * $signed(input_fmap_31[111:96]) +
	 13'sd 3422 * $signed(input_fmap_31[127:112]) +
	 14'sd 6699 * $signed(input_fmap_31[143:128]);

logic signed [31:0] dw_conv_mac_32;
assign dw_conv_mac_32 = 
	 15'sd 9294 * $signed(input_fmap_32[15:0]) +
	 15'sd 11748 * $signed(input_fmap_32[31:16]) +
	 16'sd 16584 * $signed(input_fmap_32[47:32]) +
	 15'sd 8561 * $signed(input_fmap_32[63:48]) +
	 15'sd 12891 * $signed(input_fmap_32[79:64]) +
	 16'sd 24867 * $signed(input_fmap_32[95:80]) +
	 15'sd 15718 * $signed(input_fmap_32[111:96]) +
	 16'sd 30919 * $signed(input_fmap_32[127:112]) +
	 16'sd 31631 * $signed(input_fmap_32[143:128]);

logic signed [31:0] dw_conv_mac_33;
assign dw_conv_mac_33 = 
	 15'sd 9181 * $signed(input_fmap_33[15:0]) +
	 16'sd 18193 * $signed(input_fmap_33[31:16]) +
	 15'sd 9378 * $signed(input_fmap_33[47:32]) +
	 15'sd 15592 * $signed(input_fmap_33[63:48]) +
	 16'sd 23678 * $signed(input_fmap_33[79:64]) +
	 13'sd 3621 * $signed(input_fmap_33[95:80]) +
	 16'sd 23281 * $signed(input_fmap_33[111:96]) +
	 16'sd 28586 * $signed(input_fmap_33[127:112]) +
	 16'sd 28210 * $signed(input_fmap_33[143:128]);

logic signed [31:0] dw_conv_mac_34;
assign dw_conv_mac_34 = 
	 15'sd 14312 * $signed(input_fmap_34[15:0]) +
	 13'sd 4036 * $signed(input_fmap_34[31:16]) +
	 8'sd 68 * $signed(input_fmap_34[47:32]) +
	 15'sd 14542 * $signed(input_fmap_34[63:48]) +
	 16'sd 24104 * $signed(input_fmap_34[79:64]) +
	 16'sd 21501 * $signed(input_fmap_34[95:80]) +
	 12'sd 1962 * $signed(input_fmap_34[111:96]) +
	 14'sd 5870 * $signed(input_fmap_34[127:112]) +
	 15'sd 15417 * $signed(input_fmap_34[143:128]);

logic signed [31:0] dw_conv_mac_35;
assign dw_conv_mac_35 = 
	 14'sd 6912 * $signed(input_fmap_35[15:0]) +
	 9'sd 171 * $signed(input_fmap_35[31:16]) +
	 16'sd 22503 * $signed(input_fmap_35[47:32]) +
	 16'sd 31508 * $signed(input_fmap_35[63:48]) +
	 16'sd 32598 * $signed(input_fmap_35[79:64]) +
	 16'sd 26672 * $signed(input_fmap_35[95:80]) +
	 13'sd 3371 * $signed(input_fmap_35[111:96]) +
	 14'sd 7552 * $signed(input_fmap_35[127:112]) +
	 14'sd 4654 * $signed(input_fmap_35[143:128]);

logic signed [31:0] dw_conv_mac_36;
assign dw_conv_mac_36 = 
	 16'sd 24493 * $signed(input_fmap_36[15:0]) +
	 16'sd 22839 * $signed(input_fmap_36[31:16]) +
	 16'sd 26015 * $signed(input_fmap_36[47:32]) +
	 16'sd 28421 * $signed(input_fmap_36[63:48]) +
	 16'sd 22474 * $signed(input_fmap_36[79:64]) +
	 15'sd 10362 * $signed(input_fmap_36[95:80]) +
	 15'sd 11593 * $signed(input_fmap_36[111:96]) +
	 16'sd 29753 * $signed(input_fmap_36[127:112]) +
	 15'sd 15475 * $signed(input_fmap_36[143:128]);

logic signed [31:0] dw_conv_mac_37;
assign dw_conv_mac_37 = 
	 16'sd 26076 * $signed(input_fmap_37[15:0]) +
	 16'sd 17262 * $signed(input_fmap_37[31:16]) +
	 15'sd 15329 * $signed(input_fmap_37[47:32]) +
	 14'sd 6597 * $signed(input_fmap_37[63:48]) +
	 16'sd 31012 * $signed(input_fmap_37[79:64]) +
	 16'sd 24540 * $signed(input_fmap_37[95:80]) +
	 16'sd 30912 * $signed(input_fmap_37[111:96]) +
	 15'sd 13852 * $signed(input_fmap_37[127:112]) +
	 14'sd 5841 * $signed(input_fmap_37[143:128]);

logic signed [31:0] dw_conv_mac_38;
assign dw_conv_mac_38 = 
	 16'sd 28795 * $signed(input_fmap_38[15:0]) +
	 16'sd 19614 * $signed(input_fmap_38[31:16]) +
	 16'sd 22004 * $signed(input_fmap_38[47:32]) +
	 16'sd 24461 * $signed(input_fmap_38[63:48]) +
	 14'sd 7785 * $signed(input_fmap_38[79:64]) +
	 15'sd 9098 * $signed(input_fmap_38[95:80]) +
	 13'sd 2835 * $signed(input_fmap_38[111:96]) +
	 16'sd 17350 * $signed(input_fmap_38[127:112]) +
	 16'sd 22318 * $signed(input_fmap_38[143:128]);

logic signed [31:0] dw_conv_mac_39;
assign dw_conv_mac_39 = 
	 16'sd 28107 * $signed(input_fmap_39[15:0]) +
	 15'sd 9254 * $signed(input_fmap_39[31:16]) +
	 15'sd 15799 * $signed(input_fmap_39[47:32]) +
	 15'sd 15997 * $signed(input_fmap_39[63:48]) +
	 7'sd 57 * $signed(input_fmap_39[79:64]) +
	 16'sd 26133 * $signed(input_fmap_39[95:80]) +
	 16'sd 28898 * $signed(input_fmap_39[111:96]) +
	 15'sd 13075 * $signed(input_fmap_39[127:112]) +
	 16'sd 25297 * $signed(input_fmap_39[143:128]);

logic signed [31:0] dw_conv_mac_40;
assign dw_conv_mac_40 = 
	 14'sd 6281 * $signed(input_fmap_40[15:0]) +
	 13'sd 3893 * $signed(input_fmap_40[31:16]) +
	 16'sd 18087 * $signed(input_fmap_40[47:32]) +
	 16'sd 18754 * $signed(input_fmap_40[63:48]) +
	 16'sd 31798 * $signed(input_fmap_40[79:64]) +
	 16'sd 28618 * $signed(input_fmap_40[95:80]) +
	 16'sd 18085 * $signed(input_fmap_40[111:96]) +
	 15'sd 10357 * $signed(input_fmap_40[127:112]) +
	 16'sd 32329 * $signed(input_fmap_40[143:128]);

logic signed [31:0] dw_conv_mac_41;
assign dw_conv_mac_41 = 
	 15'sd 11868 * $signed(input_fmap_41[15:0]) +
	 14'sd 7718 * $signed(input_fmap_41[31:16]) +
	 16'sd 20437 * $signed(input_fmap_41[47:32]) +
	 16'sd 31227 * $signed(input_fmap_41[63:48]) +
	 13'sd 2692 * $signed(input_fmap_41[79:64]) +
	 15'sd 9449 * $signed(input_fmap_41[95:80]) +
	 16'sd 23182 * $signed(input_fmap_41[111:96]) +
	 14'sd 5704 * $signed(input_fmap_41[127:112]) +
	 16'sd 23516 * $signed(input_fmap_41[143:128]);

logic signed [31:0] dw_conv_mac_42;
assign dw_conv_mac_42 = 
	 16'sd 20590 * $signed(input_fmap_42[15:0]) +
	 16'sd 18726 * $signed(input_fmap_42[31:16]) +
	 13'sd 3235 * $signed(input_fmap_42[47:32]) +
	 16'sd 16463 * $signed(input_fmap_42[63:48]) +
	 16'sd 31312 * $signed(input_fmap_42[79:64]) +
	 16'sd 28106 * $signed(input_fmap_42[95:80]) +
	 16'sd 24858 * $signed(input_fmap_42[111:96]) +
	 14'sd 5565 * $signed(input_fmap_42[127:112]) +
	 15'sd 9759 * $signed(input_fmap_42[143:128]);

logic signed [31:0] dw_conv_mac_43;
assign dw_conv_mac_43 = 
	 16'sd 19642 * $signed(input_fmap_43[15:0]) +
	 16'sd 28639 * $signed(input_fmap_43[31:16]) +
	 15'sd 12358 * $signed(input_fmap_43[47:32]) +
	 16'sd 26496 * $signed(input_fmap_43[63:48]) +
	 16'sd 25875 * $signed(input_fmap_43[79:64]) +
	 14'sd 4333 * $signed(input_fmap_43[95:80]) +
	 15'sd 13344 * $signed(input_fmap_43[111:96]) +
	 16'sd 25271 * $signed(input_fmap_43[127:112]) +
	 15'sd 11029 * $signed(input_fmap_43[143:128]);

logic signed [31:0] dw_conv_mac_44;
assign dw_conv_mac_44 = 
	 16'sd 28409 * $signed(input_fmap_44[15:0]) +
	 13'sd 2892 * $signed(input_fmap_44[31:16]) +
	 12'sd 1575 * $signed(input_fmap_44[47:32]) +
	 16'sd 23274 * $signed(input_fmap_44[63:48]) +
	 15'sd 15677 * $signed(input_fmap_44[79:64]) +
	 16'sd 25477 * $signed(input_fmap_44[95:80]) +
	 14'sd 4444 * $signed(input_fmap_44[111:96]) +
	 16'sd 18192 * $signed(input_fmap_44[127:112]) +
	 15'sd 12087 * $signed(input_fmap_44[143:128]);

logic signed [31:0] dw_conv_mac_45;
assign dw_conv_mac_45 = 
	 15'sd 9561 * $signed(input_fmap_45[15:0]) +
	 15'sd 11610 * $signed(input_fmap_45[31:16]) +
	 15'sd 12079 * $signed(input_fmap_45[47:32]) +
	 16'sd 31871 * $signed(input_fmap_45[63:48]) +
	 16'sd 26652 * $signed(input_fmap_45[79:64]) +
	 14'sd 4669 * $signed(input_fmap_45[95:80]) +
	 16'sd 26054 * $signed(input_fmap_45[111:96]) +
	 14'sd 6213 * $signed(input_fmap_45[127:112]) +
	 16'sd 26107 * $signed(input_fmap_45[143:128]);

logic signed [31:0] dw_conv_mac_46;
assign dw_conv_mac_46 = 
	 12'sd 1573 * $signed(input_fmap_46[15:0]) +
	 15'sd 12779 * $signed(input_fmap_46[31:16]) +
	 12'sd 1687 * $signed(input_fmap_46[47:32]) +
	 15'sd 11756 * $signed(input_fmap_46[63:48]) +
	 13'sd 2930 * $signed(input_fmap_46[79:64]) +
	 7'sd 52 * $signed(input_fmap_46[95:80]) +
	 13'sd 3255 * $signed(input_fmap_46[111:96]) +
	 16'sd 29605 * $signed(input_fmap_46[127:112]) +
	 16'sd 29527 * $signed(input_fmap_46[143:128]);

logic signed [31:0] dw_conv_mac_47;
assign dw_conv_mac_47 = 
	 16'sd 28954 * $signed(input_fmap_47[15:0]) +
	 16'sd 26276 * $signed(input_fmap_47[31:16]) +
	 14'sd 7191 * $signed(input_fmap_47[47:32]) +
	 15'sd 11021 * $signed(input_fmap_47[63:48]) +
	 16'sd 30277 * $signed(input_fmap_47[79:64]) +
	 16'sd 18538 * $signed(input_fmap_47[95:80]) +
	 16'sd 16661 * $signed(input_fmap_47[111:96]) +
	 14'sd 4652 * $signed(input_fmap_47[127:112]) +
	 14'sd 8148 * $signed(input_fmap_47[143:128]);

logic signed [31:0] dw_conv_mac_48;
assign dw_conv_mac_48 = 
	 16'sd 21102 * $signed(input_fmap_48[15:0]) +
	 14'sd 7345 * $signed(input_fmap_48[31:16]) +
	 16'sd 21669 * $signed(input_fmap_48[47:32]) +
	 14'sd 6502 * $signed(input_fmap_48[63:48]) +
	 16'sd 21212 * $signed(input_fmap_48[79:64]) +
	 16'sd 25621 * $signed(input_fmap_48[95:80]) +
	 15'sd 11737 * $signed(input_fmap_48[111:96]) +
	 15'sd 10390 * $signed(input_fmap_48[127:112]) +
	 16'sd 19681 * $signed(input_fmap_48[143:128]);

logic signed [31:0] dw_conv_mac_49;
assign dw_conv_mac_49 = 
	 15'sd 11561 * $signed(input_fmap_49[15:0]) +
	 15'sd 15737 * $signed(input_fmap_49[31:16]) +
	 16'sd 18881 * $signed(input_fmap_49[47:32]) +
	 16'sd 28259 * $signed(input_fmap_49[63:48]) +
	 15'sd 12517 * $signed(input_fmap_49[79:64]) +
	 16'sd 26972 * $signed(input_fmap_49[95:80]) +
	 14'sd 4718 * $signed(input_fmap_49[111:96]) +
	 16'sd 26342 * $signed(input_fmap_49[127:112]) +
	 15'sd 8633 * $signed(input_fmap_49[143:128]);

logic signed [31:0] dw_conv_mac_50;
assign dw_conv_mac_50 = 
	 16'sd 18294 * $signed(input_fmap_50[15:0]) +
	 16'sd 26069 * $signed(input_fmap_50[31:16]) +
	 16'sd 27931 * $signed(input_fmap_50[47:32]) +
	 14'sd 5421 * $signed(input_fmap_50[63:48]) +
	 15'sd 12623 * $signed(input_fmap_50[79:64]) +
	 16'sd 28589 * $signed(input_fmap_50[95:80]) +
	 16'sd 23402 * $signed(input_fmap_50[111:96]) +
	 15'sd 10574 * $signed(input_fmap_50[127:112]) +
	 14'sd 5598 * $signed(input_fmap_50[143:128]);

logic signed [31:0] dw_conv_mac_51;
assign dw_conv_mac_51 = 
	 16'sd 32140 * $signed(input_fmap_51[15:0]) +
	 14'sd 5499 * $signed(input_fmap_51[31:16]) +
	 16'sd 19517 * $signed(input_fmap_51[47:32]) +
	 16'sd 26312 * $signed(input_fmap_51[63:48]) +
	 16'sd 17535 * $signed(input_fmap_51[79:64]) +
	 16'sd 31092 * $signed(input_fmap_51[95:80]) +
	 16'sd 21310 * $signed(input_fmap_51[111:96]) +
	 12'sd 1575 * $signed(input_fmap_51[127:112]) +
	 16'sd 31618 * $signed(input_fmap_51[143:128]);

logic signed [31:0] dw_conv_mac_52;
assign dw_conv_mac_52 = 
	 15'sd 15814 * $signed(input_fmap_52[15:0]) +
	 15'sd 12580 * $signed(input_fmap_52[31:16]) +
	 16'sd 25253 * $signed(input_fmap_52[47:32]) +
	 16'sd 24116 * $signed(input_fmap_52[63:48]) +
	 16'sd 18134 * $signed(input_fmap_52[79:64]) +
	 16'sd 19038 * $signed(input_fmap_52[95:80]) +
	 16'sd 22399 * $signed(input_fmap_52[111:96]) +
	 16'sd 21048 * $signed(input_fmap_52[127:112]) +
	 14'sd 6488 * $signed(input_fmap_52[143:128]);

logic signed [31:0] dw_conv_mac_53;
assign dw_conv_mac_53 = 
	 16'sd 29475 * $signed(input_fmap_53[15:0]) +
	 12'sd 1876 * $signed(input_fmap_53[31:16]) +
	 16'sd 19181 * $signed(input_fmap_53[47:32]) +
	 13'sd 2925 * $signed(input_fmap_53[63:48]) +
	 16'sd 19835 * $signed(input_fmap_53[79:64]) +
	 16'sd 22340 * $signed(input_fmap_53[95:80]) +
	 16'sd 30016 * $signed(input_fmap_53[111:96]) +
	 15'sd 9351 * $signed(input_fmap_53[127:112]) +
	 16'sd 22621 * $signed(input_fmap_53[143:128]);

logic signed [31:0] dw_conv_mac_54;
assign dw_conv_mac_54 = 
	 16'sd 21729 * $signed(input_fmap_54[15:0]) +
	 16'sd 26325 * $signed(input_fmap_54[31:16]) +
	 13'sd 2226 * $signed(input_fmap_54[47:32]) +
	 16'sd 21730 * $signed(input_fmap_54[63:48]) +
	 15'sd 10231 * $signed(input_fmap_54[79:64]) +
	 16'sd 32081 * $signed(input_fmap_54[95:80]) +
	 16'sd 24319 * $signed(input_fmap_54[111:96]) +
	 15'sd 12245 * $signed(input_fmap_54[127:112]) +
	 16'sd 26884 * $signed(input_fmap_54[143:128]);

logic signed [31:0] dw_conv_mac_55;
assign dw_conv_mac_55 = 
	 14'sd 7690 * $signed(input_fmap_55[15:0]) +
	 16'sd 29991 * $signed(input_fmap_55[31:16]) +
	 15'sd 8608 * $signed(input_fmap_55[47:32]) +
	 16'sd 18657 * $signed(input_fmap_55[63:48]) +
	 16'sd 21968 * $signed(input_fmap_55[79:64]) +
	 16'sd 29004 * $signed(input_fmap_55[95:80]) +
	 14'sd 6529 * $signed(input_fmap_55[111:96]) +
	 16'sd 19112 * $signed(input_fmap_55[127:112]) +
	 13'sd 3331 * $signed(input_fmap_55[143:128]);

logic signed [31:0] dw_conv_mac_56;
assign dw_conv_mac_56 = 
	 15'sd 11542 * $signed(input_fmap_56[15:0]) +
	 11'sd 601 * $signed(input_fmap_56[31:16]) +
	 13'sd 2216 * $signed(input_fmap_56[47:32]) +
	 16'sd 29318 * $signed(input_fmap_56[63:48]) +
	 15'sd 9797 * $signed(input_fmap_56[79:64]) +
	 16'sd 32674 * $signed(input_fmap_56[95:80]) +
	 16'sd 20034 * $signed(input_fmap_56[111:96]) +
	 15'sd 13487 * $signed(input_fmap_56[127:112]) +
	 16'sd 22371 * $signed(input_fmap_56[143:128]);

logic signed [31:0] dw_conv_mac_57;
assign dw_conv_mac_57 = 
	 11'sd 640 * $signed(input_fmap_57[15:0]) +
	 16'sd 25395 * $signed(input_fmap_57[31:16]) +
	 15'sd 10804 * $signed(input_fmap_57[47:32]) +
	 16'sd 28624 * $signed(input_fmap_57[63:48]) +
	 15'sd 10091 * $signed(input_fmap_57[79:64]) +
	 16'sd 20042 * $signed(input_fmap_57[95:80]) +
	 16'sd 27271 * $signed(input_fmap_57[111:96]) +
	 14'sd 5800 * $signed(input_fmap_57[127:112]) +
	 16'sd 16867 * $signed(input_fmap_57[143:128]);

logic signed [31:0] dw_conv_mac_58;
assign dw_conv_mac_58 = 
	 13'sd 2847 * $signed(input_fmap_58[15:0]) +
	 15'sd 11770 * $signed(input_fmap_58[31:16]) +
	 16'sd 29715 * $signed(input_fmap_58[47:32]) +
	 4'sd 4 * $signed(input_fmap_58[63:48]) +
	 7'sd 59 * $signed(input_fmap_58[79:64]) +
	 15'sd 13987 * $signed(input_fmap_58[95:80]) +
	 14'sd 4253 * $signed(input_fmap_58[111:96]) +
	 14'sd 5231 * $signed(input_fmap_58[127:112]) +
	 14'sd 6276 * $signed(input_fmap_58[143:128]);

logic signed [31:0] dw_conv_mac_59;
assign dw_conv_mac_59 = 
	 14'sd 5422 * $signed(input_fmap_59[15:0]) +
	 16'sd 28385 * $signed(input_fmap_59[31:16]) +
	 15'sd 11557 * $signed(input_fmap_59[47:32]) +
	 15'sd 9656 * $signed(input_fmap_59[63:48]) +
	 16'sd 17280 * $signed(input_fmap_59[79:64]) +
	 16'sd 26958 * $signed(input_fmap_59[95:80]) +
	 16'sd 29952 * $signed(input_fmap_59[111:96]) +
	 14'sd 4493 * $signed(input_fmap_59[127:112]) +
	 13'sd 2840 * $signed(input_fmap_59[143:128]);

logic signed [31:0] dw_conv_mac_60;
assign dw_conv_mac_60 = 
	 11'sd 1012 * $signed(input_fmap_60[15:0]) +
	 16'sd 27061 * $signed(input_fmap_60[31:16]) +
	 15'sd 9487 * $signed(input_fmap_60[47:32]) +
	 14'sd 4223 * $signed(input_fmap_60[63:48]) +
	 16'sd 20951 * $signed(input_fmap_60[79:64]) +
	 15'sd 14701 * $signed(input_fmap_60[95:80]) +
	 15'sd 13385 * $signed(input_fmap_60[111:96]) +
	 16'sd 21611 * $signed(input_fmap_60[127:112]) +
	 16'sd 30424 * $signed(input_fmap_60[143:128]);

logic signed [31:0] dw_conv_mac_61;
assign dw_conv_mac_61 = 
	 15'sd 10985 * $signed(input_fmap_61[15:0]) +
	 15'sd 15757 * $signed(input_fmap_61[31:16]) +
	 16'sd 30889 * $signed(input_fmap_61[47:32]) +
	 16'sd 24865 * $signed(input_fmap_61[63:48]) +
	 16'sd 30202 * $signed(input_fmap_61[79:64]) +
	 16'sd 20045 * $signed(input_fmap_61[95:80]) +
	 16'sd 26182 * $signed(input_fmap_61[111:96]) +
	 14'sd 7131 * $signed(input_fmap_61[127:112]) +
	 16'sd 27559 * $signed(input_fmap_61[143:128]);

logic signed [31:0] dw_conv_mac_62;
assign dw_conv_mac_62 = 
	 15'sd 9308 * $signed(input_fmap_62[15:0]) +
	 16'sd 31181 * $signed(input_fmap_62[31:16]) +
	 16'sd 28991 * $signed(input_fmap_62[47:32]) +
	 16'sd 27053 * $signed(input_fmap_62[63:48]) +
	 13'sd 2884 * $signed(input_fmap_62[79:64]) +
	 16'sd 25265 * $signed(input_fmap_62[95:80]) +
	 13'sd 3060 * $signed(input_fmap_62[111:96]) +
	 16'sd 21931 * $signed(input_fmap_62[127:112]) +
	 16'sd 24128 * $signed(input_fmap_62[143:128]);

logic signed [31:0] dw_conv_mac_63;
assign dw_conv_mac_63 = 
	 15'sd 15331 * $signed(input_fmap_63[15:0]) +
	 15'sd 11679 * $signed(input_fmap_63[31:16]) +
	 16'sd 29842 * $signed(input_fmap_63[47:32]) +
	 16'sd 26944 * $signed(input_fmap_63[63:48]) +
	 16'sd 18537 * $signed(input_fmap_63[79:64]) +
	 16'sd 20089 * $signed(input_fmap_63[95:80]) +
	 16'sd 24187 * $signed(input_fmap_63[111:96]) +
	 15'sd 12702 * $signed(input_fmap_63[127:112]) +
	 15'sd 14218 * $signed(input_fmap_63[143:128]);

logic signed [31:0] dw_conv_mac_64;
assign dw_conv_mac_64 = 
	 14'sd 6314 * $signed(input_fmap_64[15:0]) +
	 16'sd 30597 * $signed(input_fmap_64[31:16]) +
	 16'sd 32422 * $signed(input_fmap_64[47:32]) +
	 15'sd 10166 * $signed(input_fmap_64[63:48]) +
	 15'sd 10490 * $signed(input_fmap_64[79:64]) +
	 16'sd 21648 * $signed(input_fmap_64[95:80]) +
	 15'sd 11127 * $signed(input_fmap_64[111:96]) +
	 16'sd 32179 * $signed(input_fmap_64[127:112]) +
	 16'sd 31104 * $signed(input_fmap_64[143:128]);

logic signed [31:0] dw_conv_mac_65;
assign dw_conv_mac_65 = 
	 16'sd 30651 * $signed(input_fmap_65[15:0]) +
	 14'sd 7412 * $signed(input_fmap_65[31:16]) +
	 16'sd 21265 * $signed(input_fmap_65[47:32]) +
	 16'sd 31526 * $signed(input_fmap_65[63:48]) +
	 16'sd 16978 * $signed(input_fmap_65[79:64]) +
	 15'sd 9451 * $signed(input_fmap_65[95:80]) +
	 13'sd 3783 * $signed(input_fmap_65[111:96]) +
	 14'sd 7627 * $signed(input_fmap_65[127:112]) +
	 16'sd 25436 * $signed(input_fmap_65[143:128]);

logic signed [31:0] dw_conv_mac_66;
assign dw_conv_mac_66 = 
	 15'sd 9575 * $signed(input_fmap_66[15:0]) +
	 16'sd 28334 * $signed(input_fmap_66[31:16]) +
	 15'sd 14802 * $signed(input_fmap_66[47:32]) +
	 16'sd 17343 * $signed(input_fmap_66[63:48]) +
	 12'sd 1142 * $signed(input_fmap_66[79:64]) +
	 15'sd 10221 * $signed(input_fmap_66[95:80]) +
	 14'sd 5995 * $signed(input_fmap_66[111:96]) +
	 16'sd 23423 * $signed(input_fmap_66[127:112]) +
	 16'sd 26507 * $signed(input_fmap_66[143:128]);

logic signed [31:0] dw_conv_mac_67;
assign dw_conv_mac_67 = 
	 14'sd 7969 * $signed(input_fmap_67[15:0]) +
	 4'sd 4 * $signed(input_fmap_67[31:16]) +
	 16'sd 23521 * $signed(input_fmap_67[47:32]) +
	 14'sd 6200 * $signed(input_fmap_67[63:48]) +
	 15'sd 15128 * $signed(input_fmap_67[79:64]) +
	 16'sd 18854 * $signed(input_fmap_67[95:80]) +
	 15'sd 10822 * $signed(input_fmap_67[111:96]) +
	 16'sd 29421 * $signed(input_fmap_67[127:112]) +
	 15'sd 8867 * $signed(input_fmap_67[143:128]);

logic signed [31:0] dw_conv_mac_68;
assign dw_conv_mac_68 = 
	 16'sd 28522 * $signed(input_fmap_68[15:0]) +
	 16'sd 24817 * $signed(input_fmap_68[31:16]) +
	 16'sd 25927 * $signed(input_fmap_68[47:32]) +
	 16'sd 19733 * $signed(input_fmap_68[63:48]) +
	 16'sd 29685 * $signed(input_fmap_68[79:64]) +
	 14'sd 7760 * $signed(input_fmap_68[95:80]) +
	 14'sd 5736 * $signed(input_fmap_68[111:96]) +
	 10'sd 440 * $signed(input_fmap_68[127:112]) +
	 14'sd 6475 * $signed(input_fmap_68[143:128]);

logic signed [31:0] dw_conv_mac_69;
assign dw_conv_mac_69 = 
	 14'sd 6386 * $signed(input_fmap_69[15:0]) +
	 12'sd 1578 * $signed(input_fmap_69[31:16]) +
	 16'sd 31989 * $signed(input_fmap_69[47:32]) +
	 12'sd 1691 * $signed(input_fmap_69[63:48]) +
	 16'sd 32675 * $signed(input_fmap_69[79:64]) +
	 15'sd 8903 * $signed(input_fmap_69[95:80]) +
	 16'sd 21345 * $signed(input_fmap_69[111:96]) +
	 16'sd 21426 * $signed(input_fmap_69[127:112]) +
	 16'sd 24172 * $signed(input_fmap_69[143:128]);

logic signed [31:0] dw_conv_mac_70;
assign dw_conv_mac_70 = 
	 16'sd 29701 * $signed(input_fmap_70[15:0]) +
	 14'sd 7216 * $signed(input_fmap_70[31:16]) +
	 15'sd 10949 * $signed(input_fmap_70[47:32]) +
	 16'sd 16800 * $signed(input_fmap_70[63:48]) +
	 13'sd 2540 * $signed(input_fmap_70[79:64]) +
	 16'sd 18725 * $signed(input_fmap_70[95:80]) +
	 16'sd 16427 * $signed(input_fmap_70[111:96]) +
	 16'sd 16727 * $signed(input_fmap_70[127:112]) +
	 16'sd 22552 * $signed(input_fmap_70[143:128]);

logic signed [31:0] dw_conv_mac_71;
assign dw_conv_mac_71 = 
	 16'sd 18028 * $signed(input_fmap_71[15:0]) +
	 16'sd 26240 * $signed(input_fmap_71[31:16]) +
	 16'sd 26672 * $signed(input_fmap_71[47:32]) +
	 14'sd 4763 * $signed(input_fmap_71[63:48]) +
	 15'sd 15808 * $signed(input_fmap_71[79:64]) +
	 13'sd 3031 * $signed(input_fmap_71[95:80]) +
	 16'sd 28785 * $signed(input_fmap_71[111:96]) +
	 15'sd 15603 * $signed(input_fmap_71[127:112]) +
	 16'sd 21359 * $signed(input_fmap_71[143:128]);

logic signed [31:0] dw_conv_mac_72;
assign dw_conv_mac_72 = 
	 15'sd 15946 * $signed(input_fmap_72[15:0]) +
	 14'sd 4522 * $signed(input_fmap_72[31:16]) +
	 16'sd 22084 * $signed(input_fmap_72[47:32]) +
	 15'sd 15099 * $signed(input_fmap_72[63:48]) +
	 15'sd 14990 * $signed(input_fmap_72[79:64]) +
	 16'sd 24329 * $signed(input_fmap_72[95:80]) +
	 16'sd 20212 * $signed(input_fmap_72[111:96]) +
	 12'sd 1073 * $signed(input_fmap_72[127:112]) +
	 14'sd 6332 * $signed(input_fmap_72[143:128]);

logic signed [31:0] dw_conv_mac_73;
assign dw_conv_mac_73 = 
	 16'sd 28166 * $signed(input_fmap_73[15:0]) +
	 16'sd 31302 * $signed(input_fmap_73[31:16]) +
	 15'sd 16178 * $signed(input_fmap_73[47:32]) +
	 16'sd 32207 * $signed(input_fmap_73[63:48]) +
	 16'sd 28506 * $signed(input_fmap_73[79:64]) +
	 15'sd 15293 * $signed(input_fmap_73[95:80]) +
	 16'sd 17699 * $signed(input_fmap_73[111:96]) +
	 15'sd 15989 * $signed(input_fmap_73[127:112]) +
	 16'sd 22924 * $signed(input_fmap_73[143:128]);

logic signed [31:0] dw_conv_mac_74;
assign dw_conv_mac_74 = 
	 13'sd 3402 * $signed(input_fmap_74[15:0]) +
	 13'sd 3963 * $signed(input_fmap_74[31:16]) +
	 11'sd 535 * $signed(input_fmap_74[47:32]) +
	 16'sd 19876 * $signed(input_fmap_74[63:48]) +
	 14'sd 7866 * $signed(input_fmap_74[79:64]) +
	 15'sd 9651 * $signed(input_fmap_74[95:80]) +
	 15'sd 11787 * $signed(input_fmap_74[111:96]) +
	 15'sd 15382 * $signed(input_fmap_74[127:112]) +
	 14'sd 5718 * $signed(input_fmap_74[143:128]);

logic signed [31:0] dw_conv_mac_75;
assign dw_conv_mac_75 = 
	 16'sd 16490 * $signed(input_fmap_75[15:0]) +
	 16'sd 26569 * $signed(input_fmap_75[31:16]) +
	 16'sd 22167 * $signed(input_fmap_75[47:32]) +
	 11'sd 617 * $signed(input_fmap_75[63:48]) +
	 16'sd 22342 * $signed(input_fmap_75[79:64]) +
	 13'sd 2092 * $signed(input_fmap_75[95:80]) +
	 16'sd 28920 * $signed(input_fmap_75[111:96]) +
	 16'sd 28030 * $signed(input_fmap_75[127:112]) +
	 16'sd 20025 * $signed(input_fmap_75[143:128]);

logic signed [31:0] dw_conv_mac_76;
assign dw_conv_mac_76 = 
	 16'sd 18611 * $signed(input_fmap_76[15:0]) +
	 15'sd 14071 * $signed(input_fmap_76[31:16]) +
	 16'sd 29832 * $signed(input_fmap_76[47:32]) +
	 13'sd 2405 * $signed(input_fmap_76[63:48]) +
	 14'sd 8150 * $signed(input_fmap_76[79:64]) +
	 15'sd 13417 * $signed(input_fmap_76[95:80]) +
	 16'sd 24359 * $signed(input_fmap_76[111:96]) +
	 16'sd 31742 * $signed(input_fmap_76[127:112]) +
	 15'sd 16256 * $signed(input_fmap_76[143:128]);

logic signed [31:0] dw_conv_mac_77;
assign dw_conv_mac_77 = 
	 15'sd 14472 * $signed(input_fmap_77[15:0]) +
	 16'sd 24821 * $signed(input_fmap_77[31:16]) +
	 16'sd 19656 * $signed(input_fmap_77[47:32]) +
	 16'sd 24363 * $signed(input_fmap_77[63:48]) +
	 15'sd 12505 * $signed(input_fmap_77[79:64]) +
	 16'sd 30375 * $signed(input_fmap_77[95:80]) +
	 16'sd 29394 * $signed(input_fmap_77[111:96]) +
	 12'sd 1476 * $signed(input_fmap_77[127:112]) +
	 16'sd 22682 * $signed(input_fmap_77[143:128]);

logic signed [31:0] dw_conv_mac_78;
assign dw_conv_mac_78 = 
	 15'sd 15151 * $signed(input_fmap_78[15:0]) +
	 16'sd 31951 * $signed(input_fmap_78[31:16]) +
	 15'sd 16130 * $signed(input_fmap_78[47:32]) +
	 15'sd 10620 * $signed(input_fmap_78[63:48]) +
	 13'sd 3748 * $signed(input_fmap_78[79:64]) +
	 15'sd 8357 * $signed(input_fmap_78[95:80]) +
	 15'sd 15907 * $signed(input_fmap_78[111:96]) +
	 16'sd 20703 * $signed(input_fmap_78[127:112]) +
	 14'sd 7856 * $signed(input_fmap_78[143:128]);

logic signed [31:0] dw_conv_mac_79;
assign dw_conv_mac_79 = 
	 16'sd 22204 * $signed(input_fmap_79[15:0]) +
	 16'sd 27455 * $signed(input_fmap_79[31:16]) +
	 16'sd 32761 * $signed(input_fmap_79[47:32]) +
	 15'sd 11067 * $signed(input_fmap_79[63:48]) +
	 15'sd 12099 * $signed(input_fmap_79[79:64]) +
	 16'sd 18643 * $signed(input_fmap_79[95:80]) +
	 16'sd 21942 * $signed(input_fmap_79[111:96]) +
	 16'sd 20037 * $signed(input_fmap_79[127:112]) +
	 15'sd 11866 * $signed(input_fmap_79[143:128]);

logic signed [31:0] dw_conv_mac_80;
assign dw_conv_mac_80 = 
	 15'sd 13056 * $signed(input_fmap_80[15:0]) +
	 16'sd 25547 * $signed(input_fmap_80[31:16]) +
	 15'sd 12812 * $signed(input_fmap_80[47:32]) +
	 16'sd 26932 * $signed(input_fmap_80[63:48]) +
	 15'sd 10825 * $signed(input_fmap_80[79:64]) +
	 16'sd 27424 * $signed(input_fmap_80[95:80]) +
	 16'sd 25995 * $signed(input_fmap_80[111:96]) +
	 16'sd 19544 * $signed(input_fmap_80[127:112]) +
	 16'sd 26981 * $signed(input_fmap_80[143:128]);

logic signed [31:0] dw_conv_mac_81;
assign dw_conv_mac_81 = 
	 16'sd 20908 * $signed(input_fmap_81[15:0]) +
	 16'sd 22132 * $signed(input_fmap_81[31:16]) +
	 16'sd 23657 * $signed(input_fmap_81[47:32]) +
	 15'sd 8195 * $signed(input_fmap_81[63:48]) +
	 16'sd 24556 * $signed(input_fmap_81[79:64]) +
	 14'sd 7777 * $signed(input_fmap_81[95:80]) +
	 13'sd 4011 * $signed(input_fmap_81[111:96]) +
	 16'sd 16988 * $signed(input_fmap_81[127:112]) +
	 14'sd 5619 * $signed(input_fmap_81[143:128]);

logic signed [31:0] dw_conv_mac_82;
assign dw_conv_mac_82 = 
	 16'sd 20259 * $signed(input_fmap_82[15:0]) +
	 16'sd 18129 * $signed(input_fmap_82[31:16]) +
	 16'sd 23290 * $signed(input_fmap_82[47:32]) +
	 16'sd 19579 * $signed(input_fmap_82[63:48]) +
	 11'sd 677 * $signed(input_fmap_82[79:64]) +
	 16'sd 30337 * $signed(input_fmap_82[95:80]) +
	 13'sd 2777 * $signed(input_fmap_82[111:96]) +
	 14'sd 7231 * $signed(input_fmap_82[127:112]) +
	 15'sd 8692 * $signed(input_fmap_82[143:128]);

logic signed [31:0] dw_conv_mac_83;
assign dw_conv_mac_83 = 
	 15'sd 11243 * $signed(input_fmap_83[15:0]) +
	 16'sd 19824 * $signed(input_fmap_83[31:16]) +
	 15'sd 13501 * $signed(input_fmap_83[47:32]) +
	 16'sd 20068 * $signed(input_fmap_83[63:48]) +
	 15'sd 11169 * $signed(input_fmap_83[79:64]) +
	 15'sd 9179 * $signed(input_fmap_83[95:80]) +
	 15'sd 8479 * $signed(input_fmap_83[111:96]) +
	 14'sd 5251 * $signed(input_fmap_83[127:112]) +
	 16'sd 23044 * $signed(input_fmap_83[143:128]);

logic signed [31:0] dw_conv_mac_84;
assign dw_conv_mac_84 = 
	 16'sd 29501 * $signed(input_fmap_84[15:0]) +
	 16'sd 31900 * $signed(input_fmap_84[31:16]) +
	 13'sd 3098 * $signed(input_fmap_84[47:32]) +
	 16'sd 26221 * $signed(input_fmap_84[63:48]) +
	 16'sd 30624 * $signed(input_fmap_84[79:64]) +
	 16'sd 18515 * $signed(input_fmap_84[95:80]) +
	 16'sd 16896 * $signed(input_fmap_84[111:96]) +
	 16'sd 18535 * $signed(input_fmap_84[127:112]) +
	 13'sd 2119 * $signed(input_fmap_84[143:128]);

logic signed [31:0] dw_conv_mac_85;
assign dw_conv_mac_85 = 
	 16'sd 28440 * $signed(input_fmap_85[15:0]) +
	 16'sd 24341 * $signed(input_fmap_85[31:16]) +
	 16'sd 25300 * $signed(input_fmap_85[47:32]) +
	 16'sd 31263 * $signed(input_fmap_85[63:48]) +
	 16'sd 21774 * $signed(input_fmap_85[79:64]) +
	 15'sd 12038 * $signed(input_fmap_85[95:80]) +
	 16'sd 19773 * $signed(input_fmap_85[111:96]) +
	 16'sd 30056 * $signed(input_fmap_85[127:112]) +
	 16'sd 27461 * $signed(input_fmap_85[143:128]);

logic signed [31:0] dw_conv_mac_86;
assign dw_conv_mac_86 = 
	 11'sd 686 * $signed(input_fmap_86[15:0]) +
	 16'sd 25442 * $signed(input_fmap_86[31:16]) +
	 16'sd 20659 * $signed(input_fmap_86[47:32]) +
	 14'sd 4098 * $signed(input_fmap_86[63:48]) +
	 14'sd 6753 * $signed(input_fmap_86[79:64]) +
	 13'sd 2270 * $signed(input_fmap_86[95:80]) +
	 16'sd 25591 * $signed(input_fmap_86[111:96]) +
	 16'sd 23024 * $signed(input_fmap_86[127:112]) +
	 13'sd 3888 * $signed(input_fmap_86[143:128]);

logic signed [31:0] dw_conv_mac_87;
assign dw_conv_mac_87 = 
	 16'sd 30752 * $signed(input_fmap_87[15:0]) +
	 12'sd 1038 * $signed(input_fmap_87[31:16]) +
	 16'sd 16455 * $signed(input_fmap_87[47:32]) +
	 14'sd 6732 * $signed(input_fmap_87[63:48]) +
	 16'sd 24273 * $signed(input_fmap_87[79:64]) +
	 16'sd 26033 * $signed(input_fmap_87[95:80]) +
	 14'sd 6592 * $signed(input_fmap_87[111:96]) +
	 15'sd 16137 * $signed(input_fmap_87[127:112]) +
	 16'sd 20004 * $signed(input_fmap_87[143:128]);

logic signed [31:0] dw_conv_mac_88;
assign dw_conv_mac_88 = 
	 15'sd 10399 * $signed(input_fmap_88[15:0]) +
	 16'sd 22486 * $signed(input_fmap_88[31:16]) +
	 16'sd 26906 * $signed(input_fmap_88[47:32]) +
	 16'sd 29321 * $signed(input_fmap_88[63:48]) +
	 16'sd 29554 * $signed(input_fmap_88[79:64]) +
	 16'sd 23945 * $signed(input_fmap_88[95:80]) +
	 10'sd 392 * $signed(input_fmap_88[111:96]) +
	 16'sd 30374 * $signed(input_fmap_88[127:112]) +
	 13'sd 2967 * $signed(input_fmap_88[143:128]);

logic signed [31:0] dw_conv_mac_89;
assign dw_conv_mac_89 = 
	 16'sd 16971 * $signed(input_fmap_89[15:0]) +
	 15'sd 10806 * $signed(input_fmap_89[31:16]) +
	 16'sd 29568 * $signed(input_fmap_89[47:32]) +
	 16'sd 24094 * $signed(input_fmap_89[63:48]) +
	 16'sd 17047 * $signed(input_fmap_89[79:64]) +
	 14'sd 7229 * $signed(input_fmap_89[95:80]) +
	 16'sd 25404 * $signed(input_fmap_89[111:96]) +
	 16'sd 27308 * $signed(input_fmap_89[127:112]) +
	 16'sd 26617 * $signed(input_fmap_89[143:128]);

logic signed [31:0] dw_conv_mac_90;
assign dw_conv_mac_90 = 
	 16'sd 19294 * $signed(input_fmap_90[15:0]) +
	 15'sd 11371 * $signed(input_fmap_90[31:16]) +
	 13'sd 3974 * $signed(input_fmap_90[47:32]) +
	 16'sd 27081 * $signed(input_fmap_90[63:48]) +
	 13'sd 3913 * $signed(input_fmap_90[79:64]) +
	 12'sd 1196 * $signed(input_fmap_90[95:80]) +
	 13'sd 2912 * $signed(input_fmap_90[111:96]) +
	 16'sd 21172 * $signed(input_fmap_90[127:112]) +
	 15'sd 11515 * $signed(input_fmap_90[143:128]);

logic signed [31:0] dw_conv_mac_91;
assign dw_conv_mac_91 = 
	 15'sd 10719 * $signed(input_fmap_91[15:0]) +
	 15'sd 10626 * $signed(input_fmap_91[31:16]) +
	 16'sd 24606 * $signed(input_fmap_91[47:32]) +
	 15'sd 13396 * $signed(input_fmap_91[63:48]) +
	 11'sd 552 * $signed(input_fmap_91[79:64]) +
	 16'sd 20605 * $signed(input_fmap_91[95:80]) +
	 16'sd 18128 * $signed(input_fmap_91[111:96]) +
	 14'sd 5385 * $signed(input_fmap_91[127:112]) +
	 16'sd 30864 * $signed(input_fmap_91[143:128]);

logic signed [31:0] dw_conv_mac_92;
assign dw_conv_mac_92 = 
	 16'sd 24802 * $signed(input_fmap_92[15:0]) +
	 15'sd 15072 * $signed(input_fmap_92[31:16]) +
	 16'sd 31378 * $signed(input_fmap_92[47:32]) +
	 16'sd 25748 * $signed(input_fmap_92[63:48]) +
	 16'sd 19535 * $signed(input_fmap_92[79:64]) +
	 16'sd 21516 * $signed(input_fmap_92[95:80]) +
	 16'sd 32207 * $signed(input_fmap_92[111:96]) +
	 15'sd 13329 * $signed(input_fmap_92[127:112]) +
	 15'sd 14901 * $signed(input_fmap_92[143:128]);

logic signed [31:0] dw_conv_mac_93;
assign dw_conv_mac_93 = 
	 13'sd 2219 * $signed(input_fmap_93[15:0]) +
	 16'sd 18479 * $signed(input_fmap_93[31:16]) +
	 15'sd 12534 * $signed(input_fmap_93[47:32]) +
	 16'sd 30458 * $signed(input_fmap_93[63:48]) +
	 16'sd 22182 * $signed(input_fmap_93[79:64]) +
	 13'sd 3663 * $signed(input_fmap_93[95:80]) +
	 16'sd 18598 * $signed(input_fmap_93[111:96]) +
	 16'sd 26094 * $signed(input_fmap_93[127:112]) +
	 16'sd 21320 * $signed(input_fmap_93[143:128]);

logic signed [31:0] dw_conv_mac_94;
assign dw_conv_mac_94 = 
	 16'sd 23370 * $signed(input_fmap_94[15:0]) +
	 16'sd 24889 * $signed(input_fmap_94[31:16]) +
	 16'sd 21520 * $signed(input_fmap_94[47:32]) +
	 16'sd 23046 * $signed(input_fmap_94[63:48]) +
	 14'sd 4157 * $signed(input_fmap_94[79:64]) +
	 15'sd 11988 * $signed(input_fmap_94[95:80]) +
	 13'sd 2559 * $signed(input_fmap_94[111:96]) +
	 14'sd 8121 * $signed(input_fmap_94[127:112]) +
	 16'sd 17309 * $signed(input_fmap_94[143:128]);

logic signed [31:0] dw_conv_mac_95;
assign dw_conv_mac_95 = 
	 15'sd 11070 * $signed(input_fmap_95[15:0]) +
	 16'sd 26373 * $signed(input_fmap_95[31:16]) +
	 13'sd 2166 * $signed(input_fmap_95[47:32]) +
	 16'sd 17016 * $signed(input_fmap_95[63:48]) +
	 16'sd 32538 * $signed(input_fmap_95[79:64]) +
	 16'sd 29771 * $signed(input_fmap_95[95:80]) +
	 15'sd 15372 * $signed(input_fmap_95[111:96]) +
	 16'sd 19453 * $signed(input_fmap_95[127:112]) +
	 15'sd 13423 * $signed(input_fmap_95[143:128]);

logic signed [31:0] dw_conv_mac_96;
assign dw_conv_mac_96 = 
	 16'sd 18347 * $signed(input_fmap_96[15:0]) +
	 15'sd 10224 * $signed(input_fmap_96[31:16]) +
	 16'sd 16727 * $signed(input_fmap_96[47:32]) +
	 16'sd 25278 * $signed(input_fmap_96[63:48]) +
	 15'sd 15761 * $signed(input_fmap_96[79:64]) +
	 15'sd 15746 * $signed(input_fmap_96[95:80]) +
	 14'sd 4566 * $signed(input_fmap_96[111:96]) +
	 15'sd 13784 * $signed(input_fmap_96[127:112]) +
	 15'sd 12068 * $signed(input_fmap_96[143:128]);

logic signed [31:0] dw_conv_mac_97;
assign dw_conv_mac_97 = 
	 16'sd 22687 * $signed(input_fmap_97[15:0]) +
	 16'sd 26352 * $signed(input_fmap_97[31:16]) +
	 14'sd 6507 * $signed(input_fmap_97[47:32]) +
	 16'sd 31110 * $signed(input_fmap_97[63:48]) +
	 16'sd 26658 * $signed(input_fmap_97[79:64]) +
	 11'sd 820 * $signed(input_fmap_97[95:80]) +
	 9'sd 149 * $signed(input_fmap_97[111:96]) +
	 14'sd 4504 * $signed(input_fmap_97[127:112]) +
	 15'sd 12202 * $signed(input_fmap_97[143:128]);

logic signed [31:0] dw_conv_mac_98;
assign dw_conv_mac_98 = 
	 15'sd 10885 * $signed(input_fmap_98[15:0]) +
	 16'sd 24702 * $signed(input_fmap_98[31:16]) +
	 15'sd 9030 * $signed(input_fmap_98[47:32]) +
	 16'sd 22126 * $signed(input_fmap_98[63:48]) +
	 16'sd 30379 * $signed(input_fmap_98[79:64]) +
	 16'sd 18923 * $signed(input_fmap_98[95:80]) +
	 16'sd 20352 * $signed(input_fmap_98[111:96]) +
	 16'sd 21238 * $signed(input_fmap_98[127:112]) +
	 16'sd 18262 * $signed(input_fmap_98[143:128]);

logic signed [31:0] dw_conv_mac_99;
assign dw_conv_mac_99 = 
	 9'sd 192 * $signed(input_fmap_99[15:0]) +
	 15'sd 8575 * $signed(input_fmap_99[31:16]) +
	 15'sd 10010 * $signed(input_fmap_99[47:32]) +
	 16'sd 29582 * $signed(input_fmap_99[63:48]) +
	 16'sd 19990 * $signed(input_fmap_99[79:64]) +
	 14'sd 5677 * $signed(input_fmap_99[95:80]) +
	 12'sd 1678 * $signed(input_fmap_99[111:96]) +
	 14'sd 7256 * $signed(input_fmap_99[127:112]) +
	 15'sd 9827 * $signed(input_fmap_99[143:128]);

logic signed [31:0] dw_conv_mac_100;
assign dw_conv_mac_100 = 
	 16'sd 20835 * $signed(input_fmap_100[15:0]) +
	 16'sd 29867 * $signed(input_fmap_100[31:16]) +
	 14'sd 5141 * $signed(input_fmap_100[47:32]) +
	 15'sd 10721 * $signed(input_fmap_100[63:48]) +
	 16'sd 28214 * $signed(input_fmap_100[79:64]) +
	 15'sd 15342 * $signed(input_fmap_100[95:80]) +
	 14'sd 4613 * $signed(input_fmap_100[111:96]) +
	 16'sd 28192 * $signed(input_fmap_100[127:112]) +
	 13'sd 2698 * $signed(input_fmap_100[143:128]);

logic signed [31:0] dw_conv_mac_101;
assign dw_conv_mac_101 = 
	 15'sd 13586 * $signed(input_fmap_101[15:0]) +
	 16'sd 19292 * $signed(input_fmap_101[31:16]) +
	 14'sd 4800 * $signed(input_fmap_101[47:32]) +
	 15'sd 12172 * $signed(input_fmap_101[63:48]) +
	 12'sd 1104 * $signed(input_fmap_101[79:64]) +
	 16'sd 19285 * $signed(input_fmap_101[95:80]) +
	 14'sd 8079 * $signed(input_fmap_101[111:96]) +
	 16'sd 19259 * $signed(input_fmap_101[127:112]) +
	 13'sd 2818 * $signed(input_fmap_101[143:128]);

logic signed [31:0] dw_conv_mac_102;
assign dw_conv_mac_102 = 
	 16'sd 29341 * $signed(input_fmap_102[15:0]) +
	 16'sd 22679 * $signed(input_fmap_102[31:16]) +
	 15'sd 12420 * $signed(input_fmap_102[47:32]) +
	 14'sd 7069 * $signed(input_fmap_102[63:48]) +
	 16'sd 32120 * $signed(input_fmap_102[79:64]) +
	 16'sd 29404 * $signed(input_fmap_102[95:80]) +
	 16'sd 24939 * $signed(input_fmap_102[111:96]) +
	 16'sd 21903 * $signed(input_fmap_102[127:112]) +
	 15'sd 16312 * $signed(input_fmap_102[143:128]);

logic signed [31:0] dw_conv_mac_103;
assign dw_conv_mac_103 = 
	 15'sd 15612 * $signed(input_fmap_103[15:0]) +
	 12'sd 1948 * $signed(input_fmap_103[31:16]) +
	 14'sd 5006 * $signed(input_fmap_103[47:32]) +
	 16'sd 16392 * $signed(input_fmap_103[63:48]) +
	 16'sd 21693 * $signed(input_fmap_103[79:64]) +
	 16'sd 31113 * $signed(input_fmap_103[95:80]) +
	 16'sd 24045 * $signed(input_fmap_103[111:96]) +
	 16'sd 20667 * $signed(input_fmap_103[127:112]) +
	 15'sd 10028 * $signed(input_fmap_103[143:128]);

logic signed [31:0] dw_conv_mac_104;
assign dw_conv_mac_104 = 
	 16'sd 16846 * $signed(input_fmap_104[15:0]) +
	 16'sd 31457 * $signed(input_fmap_104[31:16]) +
	 15'sd 14079 * $signed(input_fmap_104[47:32]) +
	 16'sd 20421 * $signed(input_fmap_104[63:48]) +
	 16'sd 32148 * $signed(input_fmap_104[79:64]) +
	 15'sd 12697 * $signed(input_fmap_104[95:80]) +
	 16'sd 31902 * $signed(input_fmap_104[111:96]) +
	 16'sd 26764 * $signed(input_fmap_104[127:112]) +
	 16'sd 22904 * $signed(input_fmap_104[143:128]);

logic signed [31:0] dw_conv_mac_105;
assign dw_conv_mac_105 = 
	 14'sd 6641 * $signed(input_fmap_105[15:0]) +
	 12'sd 1366 * $signed(input_fmap_105[31:16]) +
	 16'sd 23497 * $signed(input_fmap_105[47:32]) +
	 15'sd 16058 * $signed(input_fmap_105[63:48]) +
	 16'sd 23129 * $signed(input_fmap_105[79:64]) +
	 13'sd 3498 * $signed(input_fmap_105[95:80]) +
	 14'sd 5987 * $signed(input_fmap_105[111:96]) +
	 15'sd 12863 * $signed(input_fmap_105[127:112]) +
	 16'sd 20642 * $signed(input_fmap_105[143:128]);

logic signed [31:0] dw_conv_mac_106;
assign dw_conv_mac_106 = 
	 16'sd 31170 * $signed(input_fmap_106[15:0]) +
	 16'sd 18901 * $signed(input_fmap_106[31:16]) +
	 13'sd 3024 * $signed(input_fmap_106[47:32]) +
	 15'sd 8818 * $signed(input_fmap_106[63:48]) +
	 15'sd 10645 * $signed(input_fmap_106[79:64]) +
	 13'sd 3181 * $signed(input_fmap_106[95:80]) +
	 14'sd 6072 * $signed(input_fmap_106[111:96]) +
	 16'sd 17831 * $signed(input_fmap_106[127:112]) +
	 13'sd 3318 * $signed(input_fmap_106[143:128]);

logic signed [31:0] dw_conv_mac_107;
assign dw_conv_mac_107 = 
	 16'sd 22421 * $signed(input_fmap_107[15:0]) +
	 15'sd 15944 * $signed(input_fmap_107[31:16]) +
	 16'sd 25040 * $signed(input_fmap_107[47:32]) +
	 16'sd 24722 * $signed(input_fmap_107[63:48]) +
	 15'sd 9067 * $signed(input_fmap_107[79:64]) +
	 16'sd 21407 * $signed(input_fmap_107[95:80]) +
	 16'sd 29170 * $signed(input_fmap_107[111:96]) +
	 16'sd 32485 * $signed(input_fmap_107[127:112]) +
	 16'sd 20076 * $signed(input_fmap_107[143:128]);

logic signed [31:0] dw_conv_mac_108;
assign dw_conv_mac_108 = 
	 15'sd 14451 * $signed(input_fmap_108[15:0]) +
	 16'sd 29251 * $signed(input_fmap_108[31:16]) +
	 16'sd 29815 * $signed(input_fmap_108[47:32]) +
	 16'sd 22850 * $signed(input_fmap_108[63:48]) +
	 16'sd 21482 * $signed(input_fmap_108[79:64]) +
	 15'sd 12302 * $signed(input_fmap_108[95:80]) +
	 15'sd 12978 * $signed(input_fmap_108[111:96]) +
	 16'sd 24954 * $signed(input_fmap_108[127:112]) +
	 12'sd 1678 * $signed(input_fmap_108[143:128]);

logic signed [31:0] dw_conv_mac_109;
assign dw_conv_mac_109 = 
	 13'sd 2292 * $signed(input_fmap_109[15:0]) +
	 15'sd 12326 * $signed(input_fmap_109[31:16]) +
	 14'sd 6011 * $signed(input_fmap_109[47:32]) +
	 12'sd 1132 * $signed(input_fmap_109[63:48]) +
	 15'sd 11454 * $signed(input_fmap_109[79:64]) +
	 16'sd 19894 * $signed(input_fmap_109[95:80]) +
	 15'sd 10638 * $signed(input_fmap_109[111:96]) +
	 16'sd 24349 * $signed(input_fmap_109[127:112]) +
	 14'sd 8182 * $signed(input_fmap_109[143:128]);

logic signed [31:0] dw_conv_mac_110;
assign dw_conv_mac_110 = 
	 15'sd 15254 * $signed(input_fmap_110[15:0]) +
	 15'sd 12431 * $signed(input_fmap_110[31:16]) +
	 16'sd 25834 * $signed(input_fmap_110[47:32]) +
	 16'sd 16798 * $signed(input_fmap_110[63:48]) +
	 15'sd 12598 * $signed(input_fmap_110[79:64]) +
	 16'sd 21407 * $signed(input_fmap_110[95:80]) +
	 13'sd 3359 * $signed(input_fmap_110[111:96]) +
	 16'sd 31470 * $signed(input_fmap_110[127:112]) +
	 13'sd 4048 * $signed(input_fmap_110[143:128]);

logic signed [31:0] dw_conv_mac_111;
assign dw_conv_mac_111 = 
	 16'sd 21886 * $signed(input_fmap_111[15:0]) +
	 16'sd 26662 * $signed(input_fmap_111[31:16]) +
	 16'sd 31598 * $signed(input_fmap_111[47:32]) +
	 16'sd 18067 * $signed(input_fmap_111[63:48]) +
	 16'sd 26953 * $signed(input_fmap_111[79:64]) +
	 15'sd 14581 * $signed(input_fmap_111[95:80]) +
	 15'sd 14085 * $signed(input_fmap_111[111:96]) +
	 16'sd 18269 * $signed(input_fmap_111[127:112]) +
	 15'sd 11565 * $signed(input_fmap_111[143:128]);

logic signed [31:0] dw_conv_mac_112;
assign dw_conv_mac_112 = 
	 16'sd 24770 * $signed(input_fmap_112[15:0]) +
	 13'sd 2959 * $signed(input_fmap_112[31:16]) +
	 11'sd 965 * $signed(input_fmap_112[47:32]) +
	 15'sd 14317 * $signed(input_fmap_112[63:48]) +
	 16'sd 30252 * $signed(input_fmap_112[79:64]) +
	 16'sd 23446 * $signed(input_fmap_112[95:80]) +
	 16'sd 32650 * $signed(input_fmap_112[111:96]) +
	 15'sd 11951 * $signed(input_fmap_112[127:112]) +
	 14'sd 6324 * $signed(input_fmap_112[143:128]);

logic signed [31:0] dw_conv_mac_113;
assign dw_conv_mac_113 = 
	 16'sd 25433 * $signed(input_fmap_113[15:0]) +
	 16'sd 23804 * $signed(input_fmap_113[31:16]) +
	 16'sd 25124 * $signed(input_fmap_113[47:32]) +
	 10'sd 398 * $signed(input_fmap_113[63:48]) +
	 16'sd 20832 * $signed(input_fmap_113[79:64]) +
	 16'sd 24624 * $signed(input_fmap_113[95:80]) +
	 16'sd 21475 * $signed(input_fmap_113[111:96]) +
	 13'sd 3941 * $signed(input_fmap_113[127:112]) +
	 16'sd 28936 * $signed(input_fmap_113[143:128]);

logic signed [31:0] dw_conv_mac_114;
assign dw_conv_mac_114 = 
	 16'sd 28355 * $signed(input_fmap_114[15:0]) +
	 13'sd 3556 * $signed(input_fmap_114[31:16]) +
	 16'sd 31544 * $signed(input_fmap_114[47:32]) +
	 14'sd 4177 * $signed(input_fmap_114[63:48]) +
	 16'sd 27857 * $signed(input_fmap_114[79:64]) +
	 16'sd 28547 * $signed(input_fmap_114[95:80]) +
	 15'sd 15167 * $signed(input_fmap_114[111:96]) +
	 11'sd 719 * $signed(input_fmap_114[127:112]) +
	 16'sd 25636 * $signed(input_fmap_114[143:128]);

logic signed [31:0] dw_conv_mac_115;
assign dw_conv_mac_115 = 
	 15'sd 15083 * $signed(input_fmap_115[15:0]) +
	 16'sd 26874 * $signed(input_fmap_115[31:16]) +
	 13'sd 2797 * $signed(input_fmap_115[47:32]) +
	 16'sd 28073 * $signed(input_fmap_115[63:48]) +
	 16'sd 31851 * $signed(input_fmap_115[79:64]) +
	 16'sd 20322 * $signed(input_fmap_115[95:80]) +
	 15'sd 16082 * $signed(input_fmap_115[111:96]) +
	 16'sd 21871 * $signed(input_fmap_115[127:112]) +
	 15'sd 15377 * $signed(input_fmap_115[143:128]);

logic signed [31:0] dw_conv_mac_116;
assign dw_conv_mac_116 = 
	 15'sd 8513 * $signed(input_fmap_116[15:0]) +
	 13'sd 3041 * $signed(input_fmap_116[31:16]) +
	 16'sd 30061 * $signed(input_fmap_116[47:32]) +
	 15'sd 14555 * $signed(input_fmap_116[63:48]) +
	 15'sd 10784 * $signed(input_fmap_116[79:64]) +
	 15'sd 11068 * $signed(input_fmap_116[95:80]) +
	 16'sd 26247 * $signed(input_fmap_116[111:96]) +
	 16'sd 18393 * $signed(input_fmap_116[127:112]) +
	 16'sd 23466 * $signed(input_fmap_116[143:128]);

logic signed [31:0] dw_conv_mac_117;
assign dw_conv_mac_117 = 
	 15'sd 13953 * $signed(input_fmap_117[15:0]) +
	 16'sd 22712 * $signed(input_fmap_117[31:16]) +
	 16'sd 30558 * $signed(input_fmap_117[47:32]) +
	 16'sd 31845 * $signed(input_fmap_117[63:48]) +
	 15'sd 11759 * $signed(input_fmap_117[79:64]) +
	 13'sd 3643 * $signed(input_fmap_117[95:80]) +
	 16'sd 32565 * $signed(input_fmap_117[111:96]) +
	 14'sd 4695 * $signed(input_fmap_117[127:112]) +
	 13'sd 3347 * $signed(input_fmap_117[143:128]);

logic signed [31:0] dw_conv_mac_118;
assign dw_conv_mac_118 = 
	 16'sd 25986 * $signed(input_fmap_118[15:0]) +
	 16'sd 26068 * $signed(input_fmap_118[31:16]) +
	 16'sd 23902 * $signed(input_fmap_118[47:32]) +
	 16'sd 25971 * $signed(input_fmap_118[63:48]) +
	 16'sd 21259 * $signed(input_fmap_118[79:64]) +
	 13'sd 3171 * $signed(input_fmap_118[95:80]) +
	 15'sd 10236 * $signed(input_fmap_118[111:96]) +
	 16'sd 29274 * $signed(input_fmap_118[127:112]) +
	 15'sd 12310 * $signed(input_fmap_118[143:128]);

logic signed [31:0] dw_conv_mac_119;
assign dw_conv_mac_119 = 
	 16'sd 17858 * $signed(input_fmap_119[15:0]) +
	 16'sd 19910 * $signed(input_fmap_119[31:16]) +
	 16'sd 30523 * $signed(input_fmap_119[47:32]) +
	 12'sd 1650 * $signed(input_fmap_119[63:48]) +
	 16'sd 20954 * $signed(input_fmap_119[79:64]) +
	 12'sd 1209 * $signed(input_fmap_119[95:80]) +
	 16'sd 30996 * $signed(input_fmap_119[111:96]) +
	 16'sd 31218 * $signed(input_fmap_119[127:112]) +
	 15'sd 13742 * $signed(input_fmap_119[143:128]);

logic signed [31:0] dw_conv_mac_120;
assign dw_conv_mac_120 = 
	 16'sd 28043 * $signed(input_fmap_120[15:0]) +
	 16'sd 32141 * $signed(input_fmap_120[31:16]) +
	 16'sd 25561 * $signed(input_fmap_120[47:32]) +
	 16'sd 32123 * $signed(input_fmap_120[63:48]) +
	 15'sd 12647 * $signed(input_fmap_120[79:64]) +
	 16'sd 16750 * $signed(input_fmap_120[95:80]) +
	 16'sd 28200 * $signed(input_fmap_120[111:96]) +
	 16'sd 22024 * $signed(input_fmap_120[127:112]) +
	 15'sd 11486 * $signed(input_fmap_120[143:128]);

logic signed [31:0] dw_conv_mac_121;
assign dw_conv_mac_121 = 
	 15'sd 9263 * $signed(input_fmap_121[15:0]) +
	 16'sd 29431 * $signed(input_fmap_121[31:16]) +
	 15'sd 13298 * $signed(input_fmap_121[47:32]) +
	 16'sd 23965 * $signed(input_fmap_121[63:48]) +
	 16'sd 19375 * $signed(input_fmap_121[79:64]) +
	 16'sd 27473 * $signed(input_fmap_121[95:80]) +
	 15'sd 14139 * $signed(input_fmap_121[111:96]) +
	 16'sd 28489 * $signed(input_fmap_121[127:112]) +
	 15'sd 15826 * $signed(input_fmap_121[143:128]);

logic signed [31:0] dw_conv_mac_122;
assign dw_conv_mac_122 = 
	 16'sd 25460 * $signed(input_fmap_122[15:0]) +
	 15'sd 11289 * $signed(input_fmap_122[31:16]) +
	 15'sd 9033 * $signed(input_fmap_122[47:32]) +
	 16'sd 24307 * $signed(input_fmap_122[63:48]) +
	 13'sd 3109 * $signed(input_fmap_122[79:64]) +
	 11'sd 834 * $signed(input_fmap_122[95:80]) +
	 15'sd 8744 * $signed(input_fmap_122[111:96]) +
	 16'sd 24458 * $signed(input_fmap_122[127:112]) +
	 16'sd 26312 * $signed(input_fmap_122[143:128]);

logic signed [31:0] dw_conv_mac_123;
assign dw_conv_mac_123 = 
	 15'sd 10056 * $signed(input_fmap_123[15:0]) +
	 16'sd 18797 * $signed(input_fmap_123[31:16]) +
	 16'sd 24783 * $signed(input_fmap_123[47:32]) +
	 16'sd 30824 * $signed(input_fmap_123[63:48]) +
	 16'sd 19793 * $signed(input_fmap_123[79:64]) +
	 14'sd 5348 * $signed(input_fmap_123[95:80]) +
	 16'sd 20225 * $signed(input_fmap_123[111:96]) +
	 16'sd 16985 * $signed(input_fmap_123[127:112]) +
	 16'sd 23629 * $signed(input_fmap_123[143:128]);

logic signed [31:0] dw_conv_mac_124;
assign dw_conv_mac_124 = 
	 16'sd 21292 * $signed(input_fmap_124[15:0]) +
	 16'sd 20282 * $signed(input_fmap_124[31:16]) +
	 16'sd 24697 * $signed(input_fmap_124[47:32]) +
	 12'sd 1661 * $signed(input_fmap_124[63:48]) +
	 16'sd 17880 * $signed(input_fmap_124[79:64]) +
	 14'sd 5303 * $signed(input_fmap_124[95:80]) +
	 7'sd 62 * $signed(input_fmap_124[111:96]) +
	 16'sd 28670 * $signed(input_fmap_124[127:112]) +
	 16'sd 25987 * $signed(input_fmap_124[143:128]);

logic signed [31:0] dw_conv_mac_125;
assign dw_conv_mac_125 = 
	 16'sd 25645 * $signed(input_fmap_125[15:0]) +
	 14'sd 6781 * $signed(input_fmap_125[31:16]) +
	 13'sd 2516 * $signed(input_fmap_125[47:32]) +
	 15'sd 16211 * $signed(input_fmap_125[63:48]) +
	 11'sd 649 * $signed(input_fmap_125[79:64]) +
	 16'sd 22819 * $signed(input_fmap_125[95:80]) +
	 15'sd 16258 * $signed(input_fmap_125[111:96]) +
	 15'sd 10699 * $signed(input_fmap_125[127:112]) +
	 13'sd 3641 * $signed(input_fmap_125[143:128]);

logic signed [31:0] dw_conv_mac_126;
assign dw_conv_mac_126 = 
	 16'sd 32183 * $signed(input_fmap_126[15:0]) +
	 15'sd 11179 * $signed(input_fmap_126[31:16]) +
	 15'sd 9197 * $signed(input_fmap_126[47:32]) +
	 16'sd 23724 * $signed(input_fmap_126[63:48]) +
	 16'sd 26202 * $signed(input_fmap_126[79:64]) +
	 15'sd 10712 * $signed(input_fmap_126[95:80]) +
	 16'sd 25533 * $signed(input_fmap_126[111:96]) +
	 12'sd 1232 * $signed(input_fmap_126[127:112]) +
	 16'sd 19338 * $signed(input_fmap_126[143:128]);

logic signed [31:0] dw_conv_mac_127;
assign dw_conv_mac_127 = 
	 16'sd 21623 * $signed(input_fmap_127[15:0]) +
	 16'sd 24726 * $signed(input_fmap_127[31:16]) +
	 16'sd 22912 * $signed(input_fmap_127[47:32]) +
	 16'sd 29270 * $signed(input_fmap_127[63:48]) +
	 16'sd 23064 * $signed(input_fmap_127[79:64]) +
	 16'sd 29172 * $signed(input_fmap_127[95:80]) +
	 14'sd 7840 * $signed(input_fmap_127[111:96]) +
	 16'sd 32247 * $signed(input_fmap_127[127:112]) +
	 16'sd 30449 * $signed(input_fmap_127[143:128]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 16'd21415;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 15'd16031;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 16'd19870;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 13'd3890;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 13'd2523;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 15'd15189;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 15'd9981;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 16'd20228;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 13'd3732;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 13'd2618;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 14'd6044;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 13'd2387;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 16'd17333;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 15'd9558;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 15'd10592;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 14'd5841;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 16'd32280;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 16'd30596;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18 + 16'd16549;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 15'd15939;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 15'd14095;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21 + 16'd21899;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22 + 16'd22927;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 14'd8086;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24 + 12'd1463;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25 + 16'd25539;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 16'd29624;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 15'd12607;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28 + 15'd12069;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 16'd32223;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 16'd31714;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 16'd30241;
logic [31:0] bias_add_32;
assign bias_add_32 = dw_conv_mac_32 + 12'd1978;
logic [31:0] bias_add_33;
assign bias_add_33 = dw_conv_mac_33 + 16'd22698;
logic [31:0] bias_add_34;
assign bias_add_34 = dw_conv_mac_34 + 16'd27214;
logic [31:0] bias_add_35;
assign bias_add_35 = dw_conv_mac_35 + 14'd6606;
logic [31:0] bias_add_36;
assign bias_add_36 = dw_conv_mac_36 + 16'd19025;
logic [31:0] bias_add_37;
assign bias_add_37 = dw_conv_mac_37 + 14'd4141;
logic [31:0] bias_add_38;
assign bias_add_38 = dw_conv_mac_38 + 16'd26414;
logic [31:0] bias_add_39;
assign bias_add_39 = dw_conv_mac_39 + 15'd15234;
logic [31:0] bias_add_40;
assign bias_add_40 = dw_conv_mac_40 + 16'd29396;
logic [31:0] bias_add_41;
assign bias_add_41 = dw_conv_mac_41 + 15'd12976;
logic [31:0] bias_add_42;
assign bias_add_42 = dw_conv_mac_42 + 14'd4153;
logic [31:0] bias_add_43;
assign bias_add_43 = dw_conv_mac_43 + 16'd29185;
logic [31:0] bias_add_44;
assign bias_add_44 = dw_conv_mac_44 + 16'd32121;
logic [31:0] bias_add_45;
assign bias_add_45 = dw_conv_mac_45 + 15'd16274;
logic [31:0] bias_add_46;
assign bias_add_46 = dw_conv_mac_46 + 13'd3419;
logic [31:0] bias_add_47;
assign bias_add_47 = dw_conv_mac_47 + 16'd28579;
logic [31:0] bias_add_48;
assign bias_add_48 = dw_conv_mac_48 + 16'd30455;
logic [31:0] bias_add_49;
assign bias_add_49 = dw_conv_mac_49 + 16'd22793;
logic [31:0] bias_add_50;
assign bias_add_50 = dw_conv_mac_50 + 16'd31284;
logic [31:0] bias_add_51;
assign bias_add_51 = dw_conv_mac_51 + 16'd24844;
logic [31:0] bias_add_52;
assign bias_add_52 = dw_conv_mac_52 + 13'd3935;
logic [31:0] bias_add_53;
assign bias_add_53 = dw_conv_mac_53 + 13'd2888;
logic [31:0] bias_add_54;
assign bias_add_54 = dw_conv_mac_54 + 15'd12011;
logic [31:0] bias_add_55;
assign bias_add_55 = dw_conv_mac_55 + 16'd31291;
logic [31:0] bias_add_56;
assign bias_add_56 = dw_conv_mac_56 + 16'd16567;
logic [31:0] bias_add_57;
assign bias_add_57 = dw_conv_mac_57 + 15'd12263;
logic [31:0] bias_add_58;
assign bias_add_58 = dw_conv_mac_58 + 13'd3430;
logic [31:0] bias_add_59;
assign bias_add_59 = dw_conv_mac_59 + 12'd1609;
logic [31:0] bias_add_60;
assign bias_add_60 = dw_conv_mac_60 + 15'd14856;
logic [31:0] bias_add_61;
assign bias_add_61 = dw_conv_mac_61 + 15'd10647;
logic [31:0] bias_add_62;
assign bias_add_62 = dw_conv_mac_62 + 16'd17663;
logic [31:0] bias_add_63;
assign bias_add_63 = dw_conv_mac_63 + 15'd14654;
logic [31:0] bias_add_64;
assign bias_add_64 = dw_conv_mac_64 + 16'd22355;
logic [31:0] bias_add_65;
assign bias_add_65 = dw_conv_mac_65 + 15'd11078;
logic [31:0] bias_add_66;
assign bias_add_66 = dw_conv_mac_66 + 16'd17374;
logic [31:0] bias_add_67;
assign bias_add_67 = dw_conv_mac_67 + 16'd18782;
logic [31:0] bias_add_68;
assign bias_add_68 = dw_conv_mac_68 + 16'd32614;
logic [31:0] bias_add_69;
assign bias_add_69 = dw_conv_mac_69 + 14'd5426;
logic [31:0] bias_add_70;
assign bias_add_70 = dw_conv_mac_70 + 16'd31083;
logic [31:0] bias_add_71;
assign bias_add_71 = dw_conv_mac_71 + 16'd20874;
logic [31:0] bias_add_72;
assign bias_add_72 = dw_conv_mac_72 + 15'd10113;
logic [31:0] bias_add_73;
assign bias_add_73 = dw_conv_mac_73 + 15'd11648;
logic [31:0] bias_add_74;
assign bias_add_74 = dw_conv_mac_74 + 16'd27776;
logic [31:0] bias_add_75;
assign bias_add_75 = dw_conv_mac_75 + 16'd29614;
logic [31:0] bias_add_76;
assign bias_add_76 = dw_conv_mac_76 + 16'd22250;
logic [31:0] bias_add_77;
assign bias_add_77 = dw_conv_mac_77 + 13'd3692;
logic [31:0] bias_add_78;
assign bias_add_78 = dw_conv_mac_78 + 16'd30806;
logic [31:0] bias_add_79;
assign bias_add_79 = dw_conv_mac_79 + 12'd1133;
logic [31:0] bias_add_80;
assign bias_add_80 = dw_conv_mac_80 + 14'd5786;
logic [31:0] bias_add_81;
assign bias_add_81 = dw_conv_mac_81 + 15'd9274;
logic [31:0] bias_add_82;
assign bias_add_82 = dw_conv_mac_82 + 13'd2067;
logic [31:0] bias_add_83;
assign bias_add_83 = dw_conv_mac_83 + 15'd16235;
logic [31:0] bias_add_84;
assign bias_add_84 = dw_conv_mac_84 + 13'd3733;
logic [31:0] bias_add_85;
assign bias_add_85 = dw_conv_mac_85 + 15'd15880;
logic [31:0] bias_add_86;
assign bias_add_86 = dw_conv_mac_86 + 12'd1490;
logic [31:0] bias_add_87;
assign bias_add_87 = dw_conv_mac_87 + 16'd21019;
logic [31:0] bias_add_88;
assign bias_add_88 = dw_conv_mac_88 + 16'd23952;
logic [31:0] bias_add_89;
assign bias_add_89 = dw_conv_mac_89 + 15'd15604;
logic [31:0] bias_add_90;
assign bias_add_90 = dw_conv_mac_90 + 14'd4386;
logic [31:0] bias_add_91;
assign bias_add_91 = dw_conv_mac_91 + 15'd10254;
logic [31:0] bias_add_92;
assign bias_add_92 = dw_conv_mac_92 + 15'd16092;
logic [31:0] bias_add_93;
assign bias_add_93 = dw_conv_mac_93 + 16'd24590;
logic [31:0] bias_add_94;
assign bias_add_94 = dw_conv_mac_94 + 16'd31163;
logic [31:0] bias_add_95;
assign bias_add_95 = dw_conv_mac_95 + 14'd7699;
logic [31:0] bias_add_96;
assign bias_add_96 = dw_conv_mac_96 + 16'd23250;
logic [31:0] bias_add_97;
assign bias_add_97 = dw_conv_mac_97 + 16'd32033;
logic [31:0] bias_add_98;
assign bias_add_98 = dw_conv_mac_98 + 16'd19089;
logic [31:0] bias_add_99;
assign bias_add_99 = dw_conv_mac_99 + 16'd30629;
logic [31:0] bias_add_100;
assign bias_add_100 = dw_conv_mac_100 + 15'd15917;
logic [31:0] bias_add_101;
assign bias_add_101 = dw_conv_mac_101 + 16'd20089;
logic [31:0] bias_add_102;
assign bias_add_102 = dw_conv_mac_102 + 16'd24514;
logic [31:0] bias_add_103;
assign bias_add_103 = dw_conv_mac_103 + 15'd9582;
logic [31:0] bias_add_104;
assign bias_add_104 = dw_conv_mac_104 + 16'd29141;
logic [31:0] bias_add_105;
assign bias_add_105 = dw_conv_mac_105 + 16'd20099;
logic [31:0] bias_add_106;
assign bias_add_106 = dw_conv_mac_106 + 14'd7073;
logic [31:0] bias_add_107;
assign bias_add_107 = dw_conv_mac_107 + 16'd32748;
logic [31:0] bias_add_108;
assign bias_add_108 = dw_conv_mac_108 + 16'd27006;
logic [31:0] bias_add_109;
assign bias_add_109 = dw_conv_mac_109 + 11'd773;
logic [31:0] bias_add_110;
assign bias_add_110 = dw_conv_mac_110 + 16'd21125;
logic [31:0] bias_add_111;
assign bias_add_111 = dw_conv_mac_111 + 16'd20677;
logic [31:0] bias_add_112;
assign bias_add_112 = dw_conv_mac_112 + 16'd16429;
logic [31:0] bias_add_113;
assign bias_add_113 = dw_conv_mac_113 + 13'd2064;
logic [31:0] bias_add_114;
assign bias_add_114 = dw_conv_mac_114 + 13'd2952;
logic [31:0] bias_add_115;
assign bias_add_115 = dw_conv_mac_115 + 16'd19562;
logic [31:0] bias_add_116;
assign bias_add_116 = dw_conv_mac_116 + 14'd6934;
logic [31:0] bias_add_117;
assign bias_add_117 = dw_conv_mac_117 + 15'd13272;
logic [31:0] bias_add_118;
assign bias_add_118 = dw_conv_mac_118 + 16'd16534;
logic [31:0] bias_add_119;
assign bias_add_119 = dw_conv_mac_119 + 16'd25281;
logic [31:0] bias_add_120;
assign bias_add_120 = dw_conv_mac_120 + 15'd9052;
logic [31:0] bias_add_121;
assign bias_add_121 = dw_conv_mac_121 + 14'd7209;
logic [31:0] bias_add_122;
assign bias_add_122 = dw_conv_mac_122 + 16'd22057;
logic [31:0] bias_add_123;
assign bias_add_123 = dw_conv_mac_123 + 13'd3490;
logic [31:0] bias_add_124;
assign bias_add_124 = dw_conv_mac_124 + 15'd13868;
logic [31:0] bias_add_125;
assign bias_add_125 = dw_conv_mac_125 + 16'd18347;
logic [31:0] bias_add_126;
assign bias_add_126 = dw_conv_mac_126 + 12'd2004;
logic [31:0] bias_add_127;
assign bias_add_127 = dw_conv_mac_127 + 11'd695;

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
