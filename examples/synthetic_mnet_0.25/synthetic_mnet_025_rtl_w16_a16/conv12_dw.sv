module conv12_dw (
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
	 15'sd 15325 * $signed(input_fmap_0[15:0]) +
	 15'sd 13890 * $signed(input_fmap_0[31:16]) +
	 13'sd 3499 * $signed(input_fmap_0[47:32]) +
	 16'sd 30809 * $signed(input_fmap_0[63:48]) +
	 16'sd 20944 * $signed(input_fmap_0[79:64]) +
	 16'sd 30348 * $signed(input_fmap_0[95:80]) +
	 14'sd 4373 * $signed(input_fmap_0[111:96]) +
	 16'sd 29191 * $signed(input_fmap_0[127:112]) +
	 15'sd 10074 * $signed(input_fmap_0[143:128]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 16'sd 23373 * $signed(input_fmap_1[15:0]) +
	 15'sd 13390 * $signed(input_fmap_1[31:16]) +
	 15'sd 15678 * $signed(input_fmap_1[47:32]) +
	 13'sd 3514 * $signed(input_fmap_1[63:48]) +
	 16'sd 28479 * $signed(input_fmap_1[79:64]) +
	 14'sd 6926 * $signed(input_fmap_1[95:80]) +
	 16'sd 19810 * $signed(input_fmap_1[111:96]) +
	 13'sd 2586 * $signed(input_fmap_1[127:112]) +
	 15'sd 14203 * $signed(input_fmap_1[143:128]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 14'sd 5139 * $signed(input_fmap_2[15:0]) +
	 16'sd 30564 * $signed(input_fmap_2[31:16]) +
	 16'sd 26447 * $signed(input_fmap_2[47:32]) +
	 15'sd 10752 * $signed(input_fmap_2[63:48]) +
	 14'sd 5917 * $signed(input_fmap_2[79:64]) +
	 16'sd 30567 * $signed(input_fmap_2[95:80]) +
	 15'sd 15547 * $signed(input_fmap_2[111:96]) +
	 16'sd 21918 * $signed(input_fmap_2[127:112]) +
	 16'sd 32512 * $signed(input_fmap_2[143:128]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 16'sd 22789 * $signed(input_fmap_3[15:0]) +
	 14'sd 7648 * $signed(input_fmap_3[31:16]) +
	 15'sd 9441 * $signed(input_fmap_3[47:32]) +
	 15'sd 11709 * $signed(input_fmap_3[63:48]) +
	 15'sd 8751 * $signed(input_fmap_3[79:64]) +
	 15'sd 15243 * $signed(input_fmap_3[95:80]) +
	 14'sd 4954 * $signed(input_fmap_3[111:96]) +
	 13'sd 3702 * $signed(input_fmap_3[127:112]) +
	 15'sd 8782 * $signed(input_fmap_3[143:128]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 13'sd 3861 * $signed(input_fmap_4[15:0]) +
	 15'sd 13825 * $signed(input_fmap_4[31:16]) +
	 16'sd 23407 * $signed(input_fmap_4[47:32]) +
	 13'sd 2894 * $signed(input_fmap_4[63:48]) +
	 14'sd 4716 * $signed(input_fmap_4[79:64]) +
	 16'sd 27073 * $signed(input_fmap_4[95:80]) +
	 14'sd 4988 * $signed(input_fmap_4[111:96]) +
	 11'sd 917 * $signed(input_fmap_4[127:112]) +
	 16'sd 27542 * $signed(input_fmap_4[143:128]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 16'sd 23634 * $signed(input_fmap_5[15:0]) +
	 15'sd 12892 * $signed(input_fmap_5[31:16]) +
	 15'sd 12694 * $signed(input_fmap_5[47:32]) +
	 16'sd 17628 * $signed(input_fmap_5[63:48]) +
	 15'sd 11521 * $signed(input_fmap_5[79:64]) +
	 13'sd 3723 * $signed(input_fmap_5[95:80]) +
	 16'sd 23288 * $signed(input_fmap_5[111:96]) +
	 14'sd 6627 * $signed(input_fmap_5[127:112]) +
	 16'sd 32396 * $signed(input_fmap_5[143:128]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 15'sd 14769 * $signed(input_fmap_6[15:0]) +
	 16'sd 18406 * $signed(input_fmap_6[31:16]) +
	 16'sd 21868 * $signed(input_fmap_6[47:32]) +
	 15'sd 12445 * $signed(input_fmap_6[63:48]) +
	 16'sd 27938 * $signed(input_fmap_6[79:64]) +
	 16'sd 27535 * $signed(input_fmap_6[95:80]) +
	 16'sd 31463 * $signed(input_fmap_6[111:96]) +
	 16'sd 23632 * $signed(input_fmap_6[127:112]) +
	 16'sd 23340 * $signed(input_fmap_6[143:128]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 16'sd 22103 * $signed(input_fmap_7[15:0]) +
	 15'sd 11915 * $signed(input_fmap_7[31:16]) +
	 12'sd 1150 * $signed(input_fmap_7[47:32]) +
	 15'sd 13061 * $signed(input_fmap_7[63:48]) +
	 16'sd 19826 * $signed(input_fmap_7[79:64]) +
	 16'sd 19253 * $signed(input_fmap_7[95:80]) +
	 11'sd 706 * $signed(input_fmap_7[111:96]) +
	 16'sd 17451 * $signed(input_fmap_7[127:112]) +
	 15'sd 13068 * $signed(input_fmap_7[143:128]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 16'sd 23630 * $signed(input_fmap_8[15:0]) +
	 15'sd 10315 * $signed(input_fmap_8[31:16]) +
	 13'sd 3403 * $signed(input_fmap_8[47:32]) +
	 16'sd 25997 * $signed(input_fmap_8[63:48]) +
	 16'sd 23866 * $signed(input_fmap_8[79:64]) +
	 15'sd 9006 * $signed(input_fmap_8[95:80]) +
	 14'sd 6169 * $signed(input_fmap_8[111:96]) +
	 13'sd 4013 * $signed(input_fmap_8[127:112]) +
	 13'sd 2916 * $signed(input_fmap_8[143:128]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 16'sd 31613 * $signed(input_fmap_9[15:0]) +
	 15'sd 8209 * $signed(input_fmap_9[31:16]) +
	 13'sd 2168 * $signed(input_fmap_9[47:32]) +
	 15'sd 9932 * $signed(input_fmap_9[63:48]) +
	 16'sd 31827 * $signed(input_fmap_9[79:64]) +
	 12'sd 1354 * $signed(input_fmap_9[95:80]) +
	 16'sd 24644 * $signed(input_fmap_9[111:96]) +
	 16'sd 31080 * $signed(input_fmap_9[127:112]) +
	 15'sd 12730 * $signed(input_fmap_9[143:128]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 16'sd 18332 * $signed(input_fmap_10[15:0]) +
	 16'sd 23311 * $signed(input_fmap_10[31:16]) +
	 14'sd 7511 * $signed(input_fmap_10[47:32]) +
	 16'sd 18151 * $signed(input_fmap_10[63:48]) +
	 16'sd 24417 * $signed(input_fmap_10[79:64]) +
	 14'sd 7456 * $signed(input_fmap_10[95:80]) +
	 13'sd 3653 * $signed(input_fmap_10[111:96]) +
	 15'sd 11261 * $signed(input_fmap_10[127:112]) +
	 16'sd 29108 * $signed(input_fmap_10[143:128]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 16'sd 31562 * $signed(input_fmap_11[15:0]) +
	 15'sd 14056 * $signed(input_fmap_11[31:16]) +
	 16'sd 21917 * $signed(input_fmap_11[47:32]) +
	 16'sd 17592 * $signed(input_fmap_11[63:48]) +
	 16'sd 17775 * $signed(input_fmap_11[79:64]) +
	 16'sd 27202 * $signed(input_fmap_11[95:80]) +
	 16'sd 24994 * $signed(input_fmap_11[111:96]) +
	 15'sd 15987 * $signed(input_fmap_11[127:112]) +
	 15'sd 13816 * $signed(input_fmap_11[143:128]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 16'sd 29386 * $signed(input_fmap_12[15:0]) +
	 16'sd 31404 * $signed(input_fmap_12[31:16]) +
	 15'sd 16164 * $signed(input_fmap_12[47:32]) +
	 14'sd 6430 * $signed(input_fmap_12[63:48]) +
	 14'sd 6843 * $signed(input_fmap_12[79:64]) +
	 15'sd 11220 * $signed(input_fmap_12[95:80]) +
	 16'sd 29832 * $signed(input_fmap_12[111:96]) +
	 14'sd 5564 * $signed(input_fmap_12[127:112]) +
	 16'sd 25947 * $signed(input_fmap_12[143:128]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 12'sd 1315 * $signed(input_fmap_13[15:0]) +
	 16'sd 23288 * $signed(input_fmap_13[31:16]) +
	 16'sd 25940 * $signed(input_fmap_13[47:32]) +
	 15'sd 9528 * $signed(input_fmap_13[63:48]) +
	 15'sd 16035 * $signed(input_fmap_13[79:64]) +
	 14'sd 7906 * $signed(input_fmap_13[95:80]) +
	 13'sd 2916 * $signed(input_fmap_13[111:96]) +
	 11'sd 924 * $signed(input_fmap_13[127:112]) +
	 16'sd 28146 * $signed(input_fmap_13[143:128]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 14'sd 7599 * $signed(input_fmap_14[15:0]) +
	 13'sd 2872 * $signed(input_fmap_14[31:16]) +
	 16'sd 28959 * $signed(input_fmap_14[47:32]) +
	 16'sd 16427 * $signed(input_fmap_14[63:48]) +
	 16'sd 27340 * $signed(input_fmap_14[79:64]) +
	 14'sd 4931 * $signed(input_fmap_14[95:80]) +
	 15'sd 10033 * $signed(input_fmap_14[111:96]) +
	 16'sd 29676 * $signed(input_fmap_14[127:112]) +
	 15'sd 10701 * $signed(input_fmap_14[143:128]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 16'sd 17226 * $signed(input_fmap_15[15:0]) +
	 14'sd 4457 * $signed(input_fmap_15[31:16]) +
	 11'sd 865 * $signed(input_fmap_15[47:32]) +
	 16'sd 29170 * $signed(input_fmap_15[63:48]) +
	 15'sd 10429 * $signed(input_fmap_15[79:64]) +
	 12'sd 1998 * $signed(input_fmap_15[95:80]) +
	 13'sd 2187 * $signed(input_fmap_15[111:96]) +
	 14'sd 7278 * $signed(input_fmap_15[127:112]) +
	 16'sd 18079 * $signed(input_fmap_15[143:128]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 16'sd 19914 * $signed(input_fmap_16[15:0]) +
	 16'sd 31406 * $signed(input_fmap_16[31:16]) +
	 15'sd 8995 * $signed(input_fmap_16[47:32]) +
	 16'sd 21825 * $signed(input_fmap_16[63:48]) +
	 15'sd 11711 * $signed(input_fmap_16[79:64]) +
	 15'sd 11465 * $signed(input_fmap_16[95:80]) +
	 16'sd 22269 * $signed(input_fmap_16[111:96]) +
	 15'sd 15518 * $signed(input_fmap_16[127:112]) +
	 13'sd 2180 * $signed(input_fmap_16[143:128]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 15'sd 13152 * $signed(input_fmap_17[15:0]) +
	 16'sd 30036 * $signed(input_fmap_17[31:16]) +
	 13'sd 3362 * $signed(input_fmap_17[47:32]) +
	 16'sd 21484 * $signed(input_fmap_17[63:48]) +
	 14'sd 5591 * $signed(input_fmap_17[79:64]) +
	 16'sd 20768 * $signed(input_fmap_17[95:80]) +
	 16'sd 21490 * $signed(input_fmap_17[111:96]) +
	 16'sd 25028 * $signed(input_fmap_17[127:112]) +
	 15'sd 14533 * $signed(input_fmap_17[143:128]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 16'sd 29838 * $signed(input_fmap_18[15:0]) +
	 16'sd 18280 * $signed(input_fmap_18[31:16]) +
	 16'sd 26955 * $signed(input_fmap_18[47:32]) +
	 16'sd 17590 * $signed(input_fmap_18[63:48]) +
	 16'sd 20251 * $signed(input_fmap_18[79:64]) +
	 15'sd 15245 * $signed(input_fmap_18[95:80]) +
	 14'sd 7890 * $signed(input_fmap_18[111:96]) +
	 16'sd 28245 * $signed(input_fmap_18[127:112]) +
	 15'sd 8861 * $signed(input_fmap_18[143:128]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 16'sd 21600 * $signed(input_fmap_19[15:0]) +
	 15'sd 9542 * $signed(input_fmap_19[31:16]) +
	 15'sd 15248 * $signed(input_fmap_19[47:32]) +
	 16'sd 20449 * $signed(input_fmap_19[63:48]) +
	 14'sd 7090 * $signed(input_fmap_19[79:64]) +
	 15'sd 10149 * $signed(input_fmap_19[95:80]) +
	 16'sd 29192 * $signed(input_fmap_19[111:96]) +
	 11'sd 886 * $signed(input_fmap_19[127:112]) +
	 16'sd 32173 * $signed(input_fmap_19[143:128]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 14'sd 6860 * $signed(input_fmap_20[15:0]) +
	 16'sd 18109 * $signed(input_fmap_20[31:16]) +
	 13'sd 2928 * $signed(input_fmap_20[47:32]) +
	 15'sd 13068 * $signed(input_fmap_20[63:48]) +
	 16'sd 17338 * $signed(input_fmap_20[79:64]) +
	 15'sd 8274 * $signed(input_fmap_20[95:80]) +
	 14'sd 7478 * $signed(input_fmap_20[111:96]) +
	 16'sd 16924 * $signed(input_fmap_20[127:112]) +
	 16'sd 17639 * $signed(input_fmap_20[143:128]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 16'sd 16475 * $signed(input_fmap_21[15:0]) +
	 15'sd 14548 * $signed(input_fmap_21[31:16]) +
	 15'sd 13813 * $signed(input_fmap_21[47:32]) +
	 12'sd 1610 * $signed(input_fmap_21[63:48]) +
	 11'sd 991 * $signed(input_fmap_21[79:64]) +
	 15'sd 13257 * $signed(input_fmap_21[95:80]) +
	 13'sd 2716 * $signed(input_fmap_21[111:96]) +
	 15'sd 15339 * $signed(input_fmap_21[127:112]) +
	 14'sd 4438 * $signed(input_fmap_21[143:128]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 16'sd 24916 * $signed(input_fmap_22[15:0]) +
	 11'sd 987 * $signed(input_fmap_22[31:16]) +
	 14'sd 6732 * $signed(input_fmap_22[47:32]) +
	 14'sd 6263 * $signed(input_fmap_22[63:48]) +
	 14'sd 6972 * $signed(input_fmap_22[79:64]) +
	 15'sd 11359 * $signed(input_fmap_22[95:80]) +
	 14'sd 7095 * $signed(input_fmap_22[111:96]) +
	 16'sd 31255 * $signed(input_fmap_22[127:112]) +
	 16'sd 19498 * $signed(input_fmap_22[143:128]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 15'sd 15526 * $signed(input_fmap_23[15:0]) +
	 13'sd 2562 * $signed(input_fmap_23[31:16]) +
	 14'sd 5919 * $signed(input_fmap_23[47:32]) +
	 14'sd 5107 * $signed(input_fmap_23[63:48]) +
	 16'sd 28357 * $signed(input_fmap_23[79:64]) +
	 14'sd 7498 * $signed(input_fmap_23[95:80]) +
	 15'sd 10348 * $signed(input_fmap_23[111:96]) +
	 15'sd 9550 * $signed(input_fmap_23[127:112]) +
	 15'sd 10202 * $signed(input_fmap_23[143:128]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 16'sd 29211 * $signed(input_fmap_24[15:0]) +
	 16'sd 32006 * $signed(input_fmap_24[31:16]) +
	 15'sd 10761 * $signed(input_fmap_24[47:32]) +
	 14'sd 5252 * $signed(input_fmap_24[63:48]) +
	 16'sd 32469 * $signed(input_fmap_24[79:64]) +
	 12'sd 1464 * $signed(input_fmap_24[95:80]) +
	 16'sd 24728 * $signed(input_fmap_24[111:96]) +
	 16'sd 25757 * $signed(input_fmap_24[127:112]) +
	 14'sd 5880 * $signed(input_fmap_24[143:128]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 15'sd 12999 * $signed(input_fmap_25[15:0]) +
	 16'sd 29971 * $signed(input_fmap_25[31:16]) +
	 9'sd 227 * $signed(input_fmap_25[47:32]) +
	 15'sd 11684 * $signed(input_fmap_25[63:48]) +
	 15'sd 12358 * $signed(input_fmap_25[79:64]) +
	 8'sd 78 * $signed(input_fmap_25[95:80]) +
	 15'sd 9793 * $signed(input_fmap_25[111:96]) +
	 16'sd 19008 * $signed(input_fmap_25[127:112]) +
	 15'sd 9090 * $signed(input_fmap_25[143:128]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 16'sd 32548 * $signed(input_fmap_26[15:0]) +
	 15'sd 8742 * $signed(input_fmap_26[31:16]) +
	 9'sd 242 * $signed(input_fmap_26[47:32]) +
	 16'sd 30179 * $signed(input_fmap_26[63:48]) +
	 16'sd 30762 * $signed(input_fmap_26[79:64]) +
	 14'sd 5456 * $signed(input_fmap_26[95:80]) +
	 14'sd 6596 * $signed(input_fmap_26[111:96]) +
	 15'sd 14371 * $signed(input_fmap_26[127:112]) +
	 14'sd 4730 * $signed(input_fmap_26[143:128]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 15'sd 13291 * $signed(input_fmap_27[15:0]) +
	 16'sd 17593 * $signed(input_fmap_27[31:16]) +
	 16'sd 16765 * $signed(input_fmap_27[47:32]) +
	 16'sd 22266 * $signed(input_fmap_27[63:48]) +
	 16'sd 21601 * $signed(input_fmap_27[79:64]) +
	 16'sd 21358 * $signed(input_fmap_27[95:80]) +
	 16'sd 28927 * $signed(input_fmap_27[111:96]) +
	 11'sd 588 * $signed(input_fmap_27[127:112]) +
	 16'sd 17154 * $signed(input_fmap_27[143:128]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 15'sd 13781 * $signed(input_fmap_28[15:0]) +
	 16'sd 23281 * $signed(input_fmap_28[31:16]) +
	 16'sd 23127 * $signed(input_fmap_28[47:32]) +
	 15'sd 10661 * $signed(input_fmap_28[63:48]) +
	 16'sd 29061 * $signed(input_fmap_28[79:64]) +
	 14'sd 7229 * $signed(input_fmap_28[95:80]) +
	 16'sd 25287 * $signed(input_fmap_28[111:96]) +
	 16'sd 20826 * $signed(input_fmap_28[127:112]) +
	 15'sd 9413 * $signed(input_fmap_28[143:128]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 15'sd 15291 * $signed(input_fmap_29[15:0]) +
	 15'sd 10718 * $signed(input_fmap_29[31:16]) +
	 15'sd 10542 * $signed(input_fmap_29[47:32]) +
	 15'sd 16004 * $signed(input_fmap_29[63:48]) +
	 16'sd 27193 * $signed(input_fmap_29[79:64]) +
	 15'sd 11029 * $signed(input_fmap_29[95:80]) +
	 15'sd 8297 * $signed(input_fmap_29[111:96]) +
	 13'sd 2540 * $signed(input_fmap_29[127:112]) +
	 15'sd 13226 * $signed(input_fmap_29[143:128]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 15'sd 15412 * $signed(input_fmap_30[15:0]) +
	 16'sd 25995 * $signed(input_fmap_30[31:16]) +
	 16'sd 26330 * $signed(input_fmap_30[47:32]) +
	 15'sd 10519 * $signed(input_fmap_30[63:48]) +
	 14'sd 6412 * $signed(input_fmap_30[79:64]) +
	 16'sd 20435 * $signed(input_fmap_30[95:80]) +
	 15'sd 10238 * $signed(input_fmap_30[111:96]) +
	 15'sd 12544 * $signed(input_fmap_30[127:112]) +
	 13'sd 2208 * $signed(input_fmap_30[143:128]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 15'sd 11032 * $signed(input_fmap_31[15:0]) +
	 15'sd 15347 * $signed(input_fmap_31[31:16]) +
	 14'sd 5699 * $signed(input_fmap_31[47:32]) +
	 16'sd 29509 * $signed(input_fmap_31[63:48]) +
	 14'sd 5692 * $signed(input_fmap_31[79:64]) +
	 15'sd 14584 * $signed(input_fmap_31[95:80]) +
	 14'sd 5490 * $signed(input_fmap_31[111:96]) +
	 15'sd 15052 * $signed(input_fmap_31[127:112]) +
	 8'sd 123 * $signed(input_fmap_31[143:128]);

logic signed [31:0] dw_conv_mac_32;
assign dw_conv_mac_32 = 
	 16'sd 23555 * $signed(input_fmap_32[15:0]) +
	 14'sd 5156 * $signed(input_fmap_32[31:16]) +
	 15'sd 14363 * $signed(input_fmap_32[47:32]) +
	 13'sd 2839 * $signed(input_fmap_32[63:48]) +
	 16'sd 18601 * $signed(input_fmap_32[79:64]) +
	 13'sd 4071 * $signed(input_fmap_32[95:80]) +
	 16'sd 28000 * $signed(input_fmap_32[111:96]) +
	 16'sd 24522 * $signed(input_fmap_32[127:112]) +
	 16'sd 32169 * $signed(input_fmap_32[143:128]);

logic signed [31:0] dw_conv_mac_33;
assign dw_conv_mac_33 = 
	 15'sd 13706 * $signed(input_fmap_33[15:0]) +
	 16'sd 28458 * $signed(input_fmap_33[31:16]) +
	 16'sd 26799 * $signed(input_fmap_33[47:32]) +
	 14'sd 6998 * $signed(input_fmap_33[63:48]) +
	 15'sd 14727 * $signed(input_fmap_33[79:64]) +
	 16'sd 31294 * $signed(input_fmap_33[95:80]) +
	 12'sd 1327 * $signed(input_fmap_33[111:96]) +
	 15'sd 12803 * $signed(input_fmap_33[127:112]) +
	 13'sd 3674 * $signed(input_fmap_33[143:128]);

logic signed [31:0] dw_conv_mac_34;
assign dw_conv_mac_34 = 
	 15'sd 15669 * $signed(input_fmap_34[15:0]) +
	 16'sd 28871 * $signed(input_fmap_34[31:16]) +
	 14'sd 7527 * $signed(input_fmap_34[47:32]) +
	 15'sd 15031 * $signed(input_fmap_34[63:48]) +
	 15'sd 12679 * $signed(input_fmap_34[79:64]) +
	 15'sd 12601 * $signed(input_fmap_34[95:80]) +
	 14'sd 4784 * $signed(input_fmap_34[111:96]) +
	 14'sd 7034 * $signed(input_fmap_34[127:112]) +
	 16'sd 20642 * $signed(input_fmap_34[143:128]);

logic signed [31:0] dw_conv_mac_35;
assign dw_conv_mac_35 = 
	 16'sd 31563 * $signed(input_fmap_35[15:0]) +
	 15'sd 11381 * $signed(input_fmap_35[31:16]) +
	 16'sd 31931 * $signed(input_fmap_35[47:32]) +
	 15'sd 11534 * $signed(input_fmap_35[63:48]) +
	 16'sd 17217 * $signed(input_fmap_35[79:64]) +
	 16'sd 22145 * $signed(input_fmap_35[95:80]) +
	 10'sd 469 * $signed(input_fmap_35[111:96]) +
	 15'sd 11023 * $signed(input_fmap_35[127:112]) +
	 12'sd 1352 * $signed(input_fmap_35[143:128]);

logic signed [31:0] dw_conv_mac_36;
assign dw_conv_mac_36 = 
	 15'sd 10918 * $signed(input_fmap_36[15:0]) +
	 16'sd 29066 * $signed(input_fmap_36[31:16]) +
	 16'sd 21201 * $signed(input_fmap_36[47:32]) +
	 13'sd 3475 * $signed(input_fmap_36[63:48]) +
	 14'sd 5747 * $signed(input_fmap_36[79:64]) +
	 10'sd 435 * $signed(input_fmap_36[95:80]) +
	 14'sd 7042 * $signed(input_fmap_36[111:96]) +
	 13'sd 2351 * $signed(input_fmap_36[127:112]) +
	 12'sd 1320 * $signed(input_fmap_36[143:128]);

logic signed [31:0] dw_conv_mac_37;
assign dw_conv_mac_37 = 
	 16'sd 30803 * $signed(input_fmap_37[15:0]) +
	 16'sd 26239 * $signed(input_fmap_37[31:16]) +
	 13'sd 3615 * $signed(input_fmap_37[47:32]) +
	 16'sd 22915 * $signed(input_fmap_37[63:48]) +
	 14'sd 4227 * $signed(input_fmap_37[79:64]) +
	 16'sd 20106 * $signed(input_fmap_37[95:80]) +
	 16'sd 26555 * $signed(input_fmap_37[111:96]) +
	 16'sd 21545 * $signed(input_fmap_37[127:112]) +
	 13'sd 3108 * $signed(input_fmap_37[143:128]);

logic signed [31:0] dw_conv_mac_38;
assign dw_conv_mac_38 = 
	 15'sd 8863 * $signed(input_fmap_38[15:0]) +
	 15'sd 12394 * $signed(input_fmap_38[31:16]) +
	 15'sd 9184 * $signed(input_fmap_38[47:32]) +
	 15'sd 8378 * $signed(input_fmap_38[63:48]) +
	 16'sd 26883 * $signed(input_fmap_38[79:64]) +
	 14'sd 6433 * $signed(input_fmap_38[95:80]) +
	 14'sd 5816 * $signed(input_fmap_38[111:96]) +
	 15'sd 12862 * $signed(input_fmap_38[127:112]) +
	 15'sd 11986 * $signed(input_fmap_38[143:128]);

logic signed [31:0] dw_conv_mac_39;
assign dw_conv_mac_39 = 
	 15'sd 14058 * $signed(input_fmap_39[15:0]) +
	 16'sd 16814 * $signed(input_fmap_39[31:16]) +
	 16'sd 31106 * $signed(input_fmap_39[47:32]) +
	 16'sd 32442 * $signed(input_fmap_39[63:48]) +
	 16'sd 21763 * $signed(input_fmap_39[79:64]) +
	 16'sd 17491 * $signed(input_fmap_39[95:80]) +
	 16'sd 24406 * $signed(input_fmap_39[111:96]) +
	 16'sd 30148 * $signed(input_fmap_39[127:112]) +
	 15'sd 14090 * $signed(input_fmap_39[143:128]);

logic signed [31:0] dw_conv_mac_40;
assign dw_conv_mac_40 = 
	 15'sd 14244 * $signed(input_fmap_40[15:0]) +
	 16'sd 25189 * $signed(input_fmap_40[31:16]) +
	 16'sd 29777 * $signed(input_fmap_40[47:32]) +
	 15'sd 13347 * $signed(input_fmap_40[63:48]) +
	 16'sd 28163 * $signed(input_fmap_40[79:64]) +
	 15'sd 16025 * $signed(input_fmap_40[95:80]) +
	 15'sd 11895 * $signed(input_fmap_40[111:96]) +
	 15'sd 14768 * $signed(input_fmap_40[127:112]) +
	 15'sd 11665 * $signed(input_fmap_40[143:128]);

logic signed [31:0] dw_conv_mac_41;
assign dw_conv_mac_41 = 
	 15'sd 12342 * $signed(input_fmap_41[15:0]) +
	 16'sd 31451 * $signed(input_fmap_41[31:16]) +
	 15'sd 8598 * $signed(input_fmap_41[47:32]) +
	 12'sd 1863 * $signed(input_fmap_41[63:48]) +
	 13'sd 2994 * $signed(input_fmap_41[79:64]) +
	 16'sd 20595 * $signed(input_fmap_41[95:80]) +
	 15'sd 13382 * $signed(input_fmap_41[111:96]) +
	 15'sd 14597 * $signed(input_fmap_41[127:112]) +
	 16'sd 27011 * $signed(input_fmap_41[143:128]);

logic signed [31:0] dw_conv_mac_42;
assign dw_conv_mac_42 = 
	 16'sd 17510 * $signed(input_fmap_42[15:0]) +
	 15'sd 9927 * $signed(input_fmap_42[31:16]) +
	 16'sd 19115 * $signed(input_fmap_42[47:32]) +
	 13'sd 3440 * $signed(input_fmap_42[63:48]) +
	 16'sd 23140 * $signed(input_fmap_42[79:64]) +
	 16'sd 21571 * $signed(input_fmap_42[95:80]) +
	 14'sd 7460 * $signed(input_fmap_42[111:96]) +
	 12'sd 1749 * $signed(input_fmap_42[127:112]) +
	 15'sd 11902 * $signed(input_fmap_42[143:128]);

logic signed [31:0] dw_conv_mac_43;
assign dw_conv_mac_43 = 
	 16'sd 28427 * $signed(input_fmap_43[15:0]) +
	 16'sd 23544 * $signed(input_fmap_43[31:16]) +
	 16'sd 20208 * $signed(input_fmap_43[47:32]) +
	 14'sd 7209 * $signed(input_fmap_43[63:48]) +
	 14'sd 6176 * $signed(input_fmap_43[79:64]) +
	 15'sd 10189 * $signed(input_fmap_43[95:80]) +
	 16'sd 30903 * $signed(input_fmap_43[111:96]) +
	 16'sd 20866 * $signed(input_fmap_43[127:112]) +
	 14'sd 5688 * $signed(input_fmap_43[143:128]);

logic signed [31:0] dw_conv_mac_44;
assign dw_conv_mac_44 = 
	 16'sd 16786 * $signed(input_fmap_44[15:0]) +
	 16'sd 31214 * $signed(input_fmap_44[31:16]) +
	 15'sd 14782 * $signed(input_fmap_44[47:32]) +
	 16'sd 18100 * $signed(input_fmap_44[63:48]) +
	 16'sd 28963 * $signed(input_fmap_44[79:64]) +
	 16'sd 30779 * $signed(input_fmap_44[95:80]) +
	 16'sd 31430 * $signed(input_fmap_44[111:96]) +
	 14'sd 5439 * $signed(input_fmap_44[127:112]) +
	 16'sd 28924 * $signed(input_fmap_44[143:128]);

logic signed [31:0] dw_conv_mac_45;
assign dw_conv_mac_45 = 
	 16'sd 28332 * $signed(input_fmap_45[15:0]) +
	 16'sd 23217 * $signed(input_fmap_45[31:16]) +
	 13'sd 3283 * $signed(input_fmap_45[47:32]) +
	 15'sd 13425 * $signed(input_fmap_45[63:48]) +
	 16'sd 28254 * $signed(input_fmap_45[79:64]) +
	 15'sd 11139 * $signed(input_fmap_45[95:80]) +
	 16'sd 25953 * $signed(input_fmap_45[111:96]) +
	 16'sd 27315 * $signed(input_fmap_45[127:112]) +
	 15'sd 8619 * $signed(input_fmap_45[143:128]);

logic signed [31:0] dw_conv_mac_46;
assign dw_conv_mac_46 = 
	 16'sd 25824 * $signed(input_fmap_46[15:0]) +
	 15'sd 15325 * $signed(input_fmap_46[31:16]) +
	 16'sd 25883 * $signed(input_fmap_46[47:32]) +
	 16'sd 18650 * $signed(input_fmap_46[63:48]) +
	 16'sd 25213 * $signed(input_fmap_46[79:64]) +
	 16'sd 21179 * $signed(input_fmap_46[95:80]) +
	 15'sd 11478 * $signed(input_fmap_46[111:96]) +
	 16'sd 31159 * $signed(input_fmap_46[127:112]) +
	 15'sd 10441 * $signed(input_fmap_46[143:128]);

logic signed [31:0] dw_conv_mac_47;
assign dw_conv_mac_47 = 
	 15'sd 12932 * $signed(input_fmap_47[15:0]) +
	 16'sd 27135 * $signed(input_fmap_47[31:16]) +
	 14'sd 7335 * $signed(input_fmap_47[47:32]) +
	 16'sd 22882 * $signed(input_fmap_47[63:48]) +
	 15'sd 13004 * $signed(input_fmap_47[79:64]) +
	 16'sd 24817 * $signed(input_fmap_47[95:80]) +
	 15'sd 11602 * $signed(input_fmap_47[111:96]) +
	 15'sd 8349 * $signed(input_fmap_47[127:112]) +
	 16'sd 25729 * $signed(input_fmap_47[143:128]);

logic signed [31:0] dw_conv_mac_48;
assign dw_conv_mac_48 = 
	 16'sd 27491 * $signed(input_fmap_48[15:0]) +
	 16'sd 31316 * $signed(input_fmap_48[31:16]) +
	 16'sd 23184 * $signed(input_fmap_48[47:32]) +
	 16'sd 21703 * $signed(input_fmap_48[63:48]) +
	 16'sd 17427 * $signed(input_fmap_48[79:64]) +
	 16'sd 17767 * $signed(input_fmap_48[95:80]) +
	 16'sd 16659 * $signed(input_fmap_48[111:96]) +
	 16'sd 21526 * $signed(input_fmap_48[127:112]) +
	 14'sd 4884 * $signed(input_fmap_48[143:128]);

logic signed [31:0] dw_conv_mac_49;
assign dw_conv_mac_49 = 
	 15'sd 8382 * $signed(input_fmap_49[15:0]) +
	 15'sd 9381 * $signed(input_fmap_49[31:16]) +
	 15'sd 9544 * $signed(input_fmap_49[47:32]) +
	 15'sd 15460 * $signed(input_fmap_49[63:48]) +
	 16'sd 24481 * $signed(input_fmap_49[79:64]) +
	 15'sd 14034 * $signed(input_fmap_49[95:80]) +
	 16'sd 26688 * $signed(input_fmap_49[111:96]) +
	 16'sd 24247 * $signed(input_fmap_49[127:112]) +
	 16'sd 29942 * $signed(input_fmap_49[143:128]);

logic signed [31:0] dw_conv_mac_50;
assign dw_conv_mac_50 = 
	 15'sd 12950 * $signed(input_fmap_50[15:0]) +
	 15'sd 12324 * $signed(input_fmap_50[31:16]) +
	 15'sd 8325 * $signed(input_fmap_50[47:32]) +
	 16'sd 22004 * $signed(input_fmap_50[63:48]) +
	 16'sd 24271 * $signed(input_fmap_50[79:64]) +
	 16'sd 19799 * $signed(input_fmap_50[95:80]) +
	 15'sd 13711 * $signed(input_fmap_50[111:96]) +
	 9'sd 217 * $signed(input_fmap_50[127:112]) +
	 15'sd 15494 * $signed(input_fmap_50[143:128]);

logic signed [31:0] dw_conv_mac_51;
assign dw_conv_mac_51 = 
	 15'sd 9000 * $signed(input_fmap_51[15:0]) +
	 12'sd 1751 * $signed(input_fmap_51[31:16]) +
	 15'sd 8334 * $signed(input_fmap_51[47:32]) +
	 16'sd 23196 * $signed(input_fmap_51[63:48]) +
	 15'sd 14438 * $signed(input_fmap_51[79:64]) +
	 16'sd 19700 * $signed(input_fmap_51[95:80]) +
	 16'sd 30731 * $signed(input_fmap_51[111:96]) +
	 16'sd 31325 * $signed(input_fmap_51[127:112]) +
	 14'sd 6744 * $signed(input_fmap_51[143:128]);

logic signed [31:0] dw_conv_mac_52;
assign dw_conv_mac_52 = 
	 16'sd 29176 * $signed(input_fmap_52[15:0]) +
	 16'sd 19712 * $signed(input_fmap_52[31:16]) +
	 15'sd 9068 * $signed(input_fmap_52[47:32]) +
	 16'sd 31845 * $signed(input_fmap_52[63:48]) +
	 15'sd 16369 * $signed(input_fmap_52[79:64]) +
	 16'sd 26500 * $signed(input_fmap_52[95:80]) +
	 16'sd 25385 * $signed(input_fmap_52[111:96]) +
	 14'sd 7377 * $signed(input_fmap_52[127:112]) +
	 14'sd 6884 * $signed(input_fmap_52[143:128]);

logic signed [31:0] dw_conv_mac_53;
assign dw_conv_mac_53 = 
	 16'sd 24945 * $signed(input_fmap_53[15:0]) +
	 15'sd 11112 * $signed(input_fmap_53[31:16]) +
	 14'sd 7590 * $signed(input_fmap_53[47:32]) +
	 11'sd 960 * $signed(input_fmap_53[63:48]) +
	 16'sd 19899 * $signed(input_fmap_53[79:64]) +
	 14'sd 5323 * $signed(input_fmap_53[95:80]) +
	 16'sd 27073 * $signed(input_fmap_53[111:96]) +
	 16'sd 24477 * $signed(input_fmap_53[127:112]) +
	 16'sd 30046 * $signed(input_fmap_53[143:128]);

logic signed [31:0] dw_conv_mac_54;
assign dw_conv_mac_54 = 
	 16'sd 29528 * $signed(input_fmap_54[15:0]) +
	 14'sd 5908 * $signed(input_fmap_54[31:16]) +
	 15'sd 9848 * $signed(input_fmap_54[47:32]) +
	 16'sd 30530 * $signed(input_fmap_54[63:48]) +
	 16'sd 28000 * $signed(input_fmap_54[79:64]) +
	 16'sd 29291 * $signed(input_fmap_54[95:80]) +
	 16'sd 30153 * $signed(input_fmap_54[111:96]) +
	 16'sd 21374 * $signed(input_fmap_54[127:112]) +
	 16'sd 30205 * $signed(input_fmap_54[143:128]);

logic signed [31:0] dw_conv_mac_55;
assign dw_conv_mac_55 = 
	 15'sd 9528 * $signed(input_fmap_55[15:0]) +
	 15'sd 10660 * $signed(input_fmap_55[31:16]) +
	 13'sd 3683 * $signed(input_fmap_55[47:32]) +
	 12'sd 1805 * $signed(input_fmap_55[63:48]) +
	 15'sd 12258 * $signed(input_fmap_55[79:64]) +
	 10'sd 322 * $signed(input_fmap_55[95:80]) +
	 15'sd 14265 * $signed(input_fmap_55[111:96]) +
	 16'sd 28672 * $signed(input_fmap_55[127:112]) +
	 10'sd 380 * $signed(input_fmap_55[143:128]);

logic signed [31:0] dw_conv_mac_56;
assign dw_conv_mac_56 = 
	 15'sd 9283 * $signed(input_fmap_56[15:0]) +
	 13'sd 3680 * $signed(input_fmap_56[31:16]) +
	 16'sd 17089 * $signed(input_fmap_56[47:32]) +
	 14'sd 6220 * $signed(input_fmap_56[63:48]) +
	 16'sd 18566 * $signed(input_fmap_56[79:64]) +
	 16'sd 21966 * $signed(input_fmap_56[95:80]) +
	 15'sd 9293 * $signed(input_fmap_56[111:96]) +
	 14'sd 4331 * $signed(input_fmap_56[127:112]) +
	 16'sd 22121 * $signed(input_fmap_56[143:128]);

logic signed [31:0] dw_conv_mac_57;
assign dw_conv_mac_57 = 
	 16'sd 19907 * $signed(input_fmap_57[15:0]) +
	 14'sd 6582 * $signed(input_fmap_57[31:16]) +
	 16'sd 27867 * $signed(input_fmap_57[47:32]) +
	 16'sd 26380 * $signed(input_fmap_57[63:48]) +
	 16'sd 27242 * $signed(input_fmap_57[79:64]) +
	 15'sd 13508 * $signed(input_fmap_57[95:80]) +
	 15'sd 13693 * $signed(input_fmap_57[111:96]) +
	 16'sd 31653 * $signed(input_fmap_57[127:112]) +
	 16'sd 20509 * $signed(input_fmap_57[143:128]);

logic signed [31:0] dw_conv_mac_58;
assign dw_conv_mac_58 = 
	 16'sd 16413 * $signed(input_fmap_58[15:0]) +
	 16'sd 22386 * $signed(input_fmap_58[31:16]) +
	 14'sd 5994 * $signed(input_fmap_58[47:32]) +
	 12'sd 1184 * $signed(input_fmap_58[63:48]) +
	 16'sd 24249 * $signed(input_fmap_58[79:64]) +
	 15'sd 10431 * $signed(input_fmap_58[95:80]) +
	 16'sd 27920 * $signed(input_fmap_58[111:96]) +
	 15'sd 9122 * $signed(input_fmap_58[127:112]) +
	 14'sd 7320 * $signed(input_fmap_58[143:128]);

logic signed [31:0] dw_conv_mac_59;
assign dw_conv_mac_59 = 
	 12'sd 1177 * $signed(input_fmap_59[15:0]) +
	 16'sd 27558 * $signed(input_fmap_59[31:16]) +
	 16'sd 22689 * $signed(input_fmap_59[47:32]) +
	 15'sd 13707 * $signed(input_fmap_59[63:48]) +
	 16'sd 16770 * $signed(input_fmap_59[79:64]) +
	 16'sd 28271 * $signed(input_fmap_59[95:80]) +
	 15'sd 13479 * $signed(input_fmap_59[111:96]) +
	 15'sd 10114 * $signed(input_fmap_59[127:112]) +
	 16'sd 19340 * $signed(input_fmap_59[143:128]);

logic signed [31:0] dw_conv_mac_60;
assign dw_conv_mac_60 = 
	 14'sd 7056 * $signed(input_fmap_60[15:0]) +
	 14'sd 4139 * $signed(input_fmap_60[31:16]) +
	 16'sd 25295 * $signed(input_fmap_60[47:32]) +
	 16'sd 19955 * $signed(input_fmap_60[63:48]) +
	 15'sd 14315 * $signed(input_fmap_60[79:64]) +
	 16'sd 31506 * $signed(input_fmap_60[95:80]) +
	 16'sd 26284 * $signed(input_fmap_60[111:96]) +
	 15'sd 11192 * $signed(input_fmap_60[127:112]) +
	 16'sd 25224 * $signed(input_fmap_60[143:128]);

logic signed [31:0] dw_conv_mac_61;
assign dw_conv_mac_61 = 
	 16'sd 28517 * $signed(input_fmap_61[15:0]) +
	 14'sd 7890 * $signed(input_fmap_61[31:16]) +
	 13'sd 3591 * $signed(input_fmap_61[47:32]) +
	 15'sd 12895 * $signed(input_fmap_61[63:48]) +
	 14'sd 5801 * $signed(input_fmap_61[79:64]) +
	 15'sd 12469 * $signed(input_fmap_61[95:80]) +
	 15'sd 8288 * $signed(input_fmap_61[111:96]) +
	 13'sd 3212 * $signed(input_fmap_61[127:112]) +
	 15'sd 10846 * $signed(input_fmap_61[143:128]);

logic signed [31:0] dw_conv_mac_62;
assign dw_conv_mac_62 = 
	 16'sd 22815 * $signed(input_fmap_62[15:0]) +
	 16'sd 21516 * $signed(input_fmap_62[31:16]) +
	 15'sd 15119 * $signed(input_fmap_62[47:32]) +
	 16'sd 25154 * $signed(input_fmap_62[63:48]) +
	 15'sd 9183 * $signed(input_fmap_62[79:64]) +
	 16'sd 28479 * $signed(input_fmap_62[95:80]) +
	 16'sd 28039 * $signed(input_fmap_62[111:96]) +
	 15'sd 13751 * $signed(input_fmap_62[127:112]) +
	 16'sd 25432 * $signed(input_fmap_62[143:128]);

logic signed [31:0] dw_conv_mac_63;
assign dw_conv_mac_63 = 
	 16'sd 17111 * $signed(input_fmap_63[15:0]) +
	 16'sd 20809 * $signed(input_fmap_63[31:16]) +
	 16'sd 20908 * $signed(input_fmap_63[47:32]) +
	 16'sd 16969 * $signed(input_fmap_63[63:48]) +
	 15'sd 13717 * $signed(input_fmap_63[79:64]) +
	 16'sd 30213 * $signed(input_fmap_63[95:80]) +
	 15'sd 13229 * $signed(input_fmap_63[111:96]) +
	 16'sd 23662 * $signed(input_fmap_63[127:112]) +
	 15'sd 14159 * $signed(input_fmap_63[143:128]);

logic signed [31:0] dw_conv_mac_64;
assign dw_conv_mac_64 = 
	 16'sd 30251 * $signed(input_fmap_64[15:0]) +
	 15'sd 11098 * $signed(input_fmap_64[31:16]) +
	 14'sd 7976 * $signed(input_fmap_64[47:32]) +
	 15'sd 12913 * $signed(input_fmap_64[63:48]) +
	 11'sd 725 * $signed(input_fmap_64[79:64]) +
	 15'sd 11033 * $signed(input_fmap_64[95:80]) +
	 15'sd 9075 * $signed(input_fmap_64[111:96]) +
	 16'sd 29845 * $signed(input_fmap_64[127:112]) +
	 16'sd 18068 * $signed(input_fmap_64[143:128]);

logic signed [31:0] dw_conv_mac_65;
assign dw_conv_mac_65 = 
	 14'sd 4120 * $signed(input_fmap_65[15:0]) +
	 16'sd 24306 * $signed(input_fmap_65[31:16]) +
	 16'sd 23039 * $signed(input_fmap_65[47:32]) +
	 15'sd 11839 * $signed(input_fmap_65[63:48]) +
	 12'sd 1485 * $signed(input_fmap_65[79:64]) +
	 14'sd 4482 * $signed(input_fmap_65[95:80]) +
	 16'sd 30968 * $signed(input_fmap_65[111:96]) +
	 16'sd 22502 * $signed(input_fmap_65[127:112]) +
	 16'sd 31364 * $signed(input_fmap_65[143:128]);

logic signed [31:0] dw_conv_mac_66;
assign dw_conv_mac_66 = 
	 12'sd 1350 * $signed(input_fmap_66[15:0]) +
	 15'sd 9009 * $signed(input_fmap_66[31:16]) +
	 16'sd 30698 * $signed(input_fmap_66[47:32]) +
	 16'sd 32114 * $signed(input_fmap_66[63:48]) +
	 12'sd 1688 * $signed(input_fmap_66[79:64]) +
	 15'sd 10833 * $signed(input_fmap_66[95:80]) +
	 16'sd 22028 * $signed(input_fmap_66[111:96]) +
	 12'sd 1207 * $signed(input_fmap_66[127:112]) +
	 16'sd 17637 * $signed(input_fmap_66[143:128]);

logic signed [31:0] dw_conv_mac_67;
assign dw_conv_mac_67 = 
	 16'sd 24770 * $signed(input_fmap_67[15:0]) +
	 16'sd 30463 * $signed(input_fmap_67[31:16]) +
	 15'sd 15784 * $signed(input_fmap_67[47:32]) +
	 15'sd 12369 * $signed(input_fmap_67[63:48]) +
	 14'sd 6642 * $signed(input_fmap_67[79:64]) +
	 14'sd 7826 * $signed(input_fmap_67[95:80]) +
	 15'sd 12414 * $signed(input_fmap_67[111:96]) +
	 15'sd 9009 * $signed(input_fmap_67[127:112]) +
	 14'sd 8189 * $signed(input_fmap_67[143:128]);

logic signed [31:0] dw_conv_mac_68;
assign dw_conv_mac_68 = 
	 15'sd 13409 * $signed(input_fmap_68[15:0]) +
	 13'sd 3423 * $signed(input_fmap_68[31:16]) +
	 12'sd 1203 * $signed(input_fmap_68[47:32]) +
	 14'sd 5332 * $signed(input_fmap_68[63:48]) +
	 14'sd 5665 * $signed(input_fmap_68[79:64]) +
	 14'sd 4376 * $signed(input_fmap_68[95:80]) +
	 16'sd 27498 * $signed(input_fmap_68[111:96]) +
	 16'sd 32197 * $signed(input_fmap_68[127:112]) +
	 15'sd 8634 * $signed(input_fmap_68[143:128]);

logic signed [31:0] dw_conv_mac_69;
assign dw_conv_mac_69 = 
	 16'sd 30079 * $signed(input_fmap_69[15:0]) +
	 16'sd 24415 * $signed(input_fmap_69[31:16]) +
	 15'sd 15591 * $signed(input_fmap_69[47:32]) +
	 15'sd 13437 * $signed(input_fmap_69[63:48]) +
	 14'sd 7723 * $signed(input_fmap_69[79:64]) +
	 16'sd 20092 * $signed(input_fmap_69[95:80]) +
	 15'sd 14928 * $signed(input_fmap_69[111:96]) +
	 16'sd 24258 * $signed(input_fmap_69[127:112]) +
	 16'sd 25799 * $signed(input_fmap_69[143:128]);

logic signed [31:0] dw_conv_mac_70;
assign dw_conv_mac_70 = 
	 16'sd 21627 * $signed(input_fmap_70[15:0]) +
	 16'sd 26212 * $signed(input_fmap_70[31:16]) +
	 16'sd 20428 * $signed(input_fmap_70[47:32]) +
	 15'sd 9289 * $signed(input_fmap_70[63:48]) +
	 16'sd 28440 * $signed(input_fmap_70[79:64]) +
	 16'sd 22751 * $signed(input_fmap_70[95:80]) +
	 15'sd 8998 * $signed(input_fmap_70[111:96]) +
	 16'sd 22826 * $signed(input_fmap_70[127:112]) +
	 16'sd 17380 * $signed(input_fmap_70[143:128]);

logic signed [31:0] dw_conv_mac_71;
assign dw_conv_mac_71 = 
	 15'sd 15050 * $signed(input_fmap_71[15:0]) +
	 16'sd 32112 * $signed(input_fmap_71[31:16]) +
	 16'sd 21706 * $signed(input_fmap_71[47:32]) +
	 16'sd 25469 * $signed(input_fmap_71[63:48]) +
	 9'sd 221 * $signed(input_fmap_71[79:64]) +
	 16'sd 30995 * $signed(input_fmap_71[95:80]) +
	 14'sd 5573 * $signed(input_fmap_71[111:96]) +
	 15'sd 16187 * $signed(input_fmap_71[127:112]) +
	 15'sd 9171 * $signed(input_fmap_71[143:128]);

logic signed [31:0] dw_conv_mac_72;
assign dw_conv_mac_72 = 
	 15'sd 9662 * $signed(input_fmap_72[15:0]) +
	 16'sd 24949 * $signed(input_fmap_72[31:16]) +
	 16'sd 22620 * $signed(input_fmap_72[47:32]) +
	 14'sd 4412 * $signed(input_fmap_72[63:48]) +
	 15'sd 11116 * $signed(input_fmap_72[79:64]) +
	 14'sd 4901 * $signed(input_fmap_72[95:80]) +
	 16'sd 20686 * $signed(input_fmap_72[111:96]) +
	 16'sd 17552 * $signed(input_fmap_72[127:112]) +
	 16'sd 31930 * $signed(input_fmap_72[143:128]);

logic signed [31:0] dw_conv_mac_73;
assign dw_conv_mac_73 = 
	 16'sd 30742 * $signed(input_fmap_73[15:0]) +
	 13'sd 2238 * $signed(input_fmap_73[31:16]) +
	 16'sd 30654 * $signed(input_fmap_73[47:32]) +
	 16'sd 27535 * $signed(input_fmap_73[63:48]) +
	 15'sd 13476 * $signed(input_fmap_73[79:64]) +
	 16'sd 21641 * $signed(input_fmap_73[95:80]) +
	 16'sd 30556 * $signed(input_fmap_73[111:96]) +
	 12'sd 1628 * $signed(input_fmap_73[127:112]) +
	 15'sd 14650 * $signed(input_fmap_73[143:128]);

logic signed [31:0] dw_conv_mac_74;
assign dw_conv_mac_74 = 
	 15'sd 8377 * $signed(input_fmap_74[15:0]) +
	 15'sd 11102 * $signed(input_fmap_74[31:16]) +
	 8'sd 127 * $signed(input_fmap_74[47:32]) +
	 16'sd 31180 * $signed(input_fmap_74[63:48]) +
	 16'sd 16562 * $signed(input_fmap_74[79:64]) +
	 14'sd 7780 * $signed(input_fmap_74[95:80]) +
	 15'sd 11905 * $signed(input_fmap_74[111:96]) +
	 14'sd 7393 * $signed(input_fmap_74[127:112]) +
	 16'sd 25363 * $signed(input_fmap_74[143:128]);

logic signed [31:0] dw_conv_mac_75;
assign dw_conv_mac_75 = 
	 13'sd 2104 * $signed(input_fmap_75[15:0]) +
	 16'sd 24050 * $signed(input_fmap_75[31:16]) +
	 15'sd 11018 * $signed(input_fmap_75[47:32]) +
	 15'sd 13542 * $signed(input_fmap_75[63:48]) +
	 12'sd 1930 * $signed(input_fmap_75[79:64]) +
	 14'sd 6254 * $signed(input_fmap_75[95:80]) +
	 16'sd 28085 * $signed(input_fmap_75[111:96]) +
	 16'sd 25577 * $signed(input_fmap_75[127:112]) +
	 15'sd 8577 * $signed(input_fmap_75[143:128]);

logic signed [31:0] dw_conv_mac_76;
assign dw_conv_mac_76 = 
	 15'sd 10421 * $signed(input_fmap_76[15:0]) +
	 14'sd 7683 * $signed(input_fmap_76[31:16]) +
	 11'sd 822 * $signed(input_fmap_76[47:32]) +
	 16'sd 25167 * $signed(input_fmap_76[63:48]) +
	 13'sd 2524 * $signed(input_fmap_76[79:64]) +
	 16'sd 32141 * $signed(input_fmap_76[95:80]) +
	 16'sd 17077 * $signed(input_fmap_76[111:96]) +
	 16'sd 21823 * $signed(input_fmap_76[127:112]) +
	 14'sd 5461 * $signed(input_fmap_76[143:128]);

logic signed [31:0] dw_conv_mac_77;
assign dw_conv_mac_77 = 
	 15'sd 12118 * $signed(input_fmap_77[15:0]) +
	 14'sd 6237 * $signed(input_fmap_77[31:16]) +
	 16'sd 21385 * $signed(input_fmap_77[47:32]) +
	 13'sd 3308 * $signed(input_fmap_77[63:48]) +
	 16'sd 19340 * $signed(input_fmap_77[79:64]) +
	 14'sd 6272 * $signed(input_fmap_77[95:80]) +
	 16'sd 24712 * $signed(input_fmap_77[111:96]) +
	 15'sd 13012 * $signed(input_fmap_77[127:112]) +
	 12'sd 1539 * $signed(input_fmap_77[143:128]);

logic signed [31:0] dw_conv_mac_78;
assign dw_conv_mac_78 = 
	 16'sd 32287 * $signed(input_fmap_78[15:0]) +
	 16'sd 23585 * $signed(input_fmap_78[31:16]) +
	 16'sd 24132 * $signed(input_fmap_78[47:32]) +
	 16'sd 31354 * $signed(input_fmap_78[63:48]) +
	 15'sd 12948 * $signed(input_fmap_78[79:64]) +
	 15'sd 10884 * $signed(input_fmap_78[95:80]) +
	 16'sd 28496 * $signed(input_fmap_78[111:96]) +
	 14'sd 6634 * $signed(input_fmap_78[127:112]) +
	 16'sd 24533 * $signed(input_fmap_78[143:128]);

logic signed [31:0] dw_conv_mac_79;
assign dw_conv_mac_79 = 
	 15'sd 15078 * $signed(input_fmap_79[15:0]) +
	 15'sd 9806 * $signed(input_fmap_79[31:16]) +
	 16'sd 31020 * $signed(input_fmap_79[47:32]) +
	 12'sd 1110 * $signed(input_fmap_79[63:48]) +
	 16'sd 17585 * $signed(input_fmap_79[79:64]) +
	 16'sd 23566 * $signed(input_fmap_79[95:80]) +
	 16'sd 18377 * $signed(input_fmap_79[111:96]) +
	 16'sd 20630 * $signed(input_fmap_79[127:112]) +
	 15'sd 16324 * $signed(input_fmap_79[143:128]);

logic signed [31:0] dw_conv_mac_80;
assign dw_conv_mac_80 = 
	 16'sd 19574 * $signed(input_fmap_80[15:0]) +
	 15'sd 13193 * $signed(input_fmap_80[31:16]) +
	 16'sd 29846 * $signed(input_fmap_80[47:32]) +
	 16'sd 25347 * $signed(input_fmap_80[63:48]) +
	 15'sd 11811 * $signed(input_fmap_80[79:64]) +
	 16'sd 29645 * $signed(input_fmap_80[95:80]) +
	 16'sd 19370 * $signed(input_fmap_80[111:96]) +
	 15'sd 12209 * $signed(input_fmap_80[127:112]) +
	 15'sd 14401 * $signed(input_fmap_80[143:128]);

logic signed [31:0] dw_conv_mac_81;
assign dw_conv_mac_81 = 
	 14'sd 5326 * $signed(input_fmap_81[15:0]) +
	 16'sd 22000 * $signed(input_fmap_81[31:16]) +
	 16'sd 25118 * $signed(input_fmap_81[47:32]) +
	 16'sd 28836 * $signed(input_fmap_81[63:48]) +
	 16'sd 30994 * $signed(input_fmap_81[79:64]) +
	 16'sd 31144 * $signed(input_fmap_81[95:80]) +
	 16'sd 18343 * $signed(input_fmap_81[111:96]) +
	 16'sd 21505 * $signed(input_fmap_81[127:112]) +
	 14'sd 5126 * $signed(input_fmap_81[143:128]);

logic signed [31:0] dw_conv_mac_82;
assign dw_conv_mac_82 = 
	 14'sd 5235 * $signed(input_fmap_82[15:0]) +
	 15'sd 10793 * $signed(input_fmap_82[31:16]) +
	 16'sd 21976 * $signed(input_fmap_82[47:32]) +
	 15'sd 15460 * $signed(input_fmap_82[63:48]) +
	 16'sd 17595 * $signed(input_fmap_82[79:64]) +
	 16'sd 25030 * $signed(input_fmap_82[95:80]) +
	 16'sd 23237 * $signed(input_fmap_82[111:96]) +
	 16'sd 26429 * $signed(input_fmap_82[127:112]) +
	 16'sd 32095 * $signed(input_fmap_82[143:128]);

logic signed [31:0] dw_conv_mac_83;
assign dw_conv_mac_83 = 
	 15'sd 9131 * $signed(input_fmap_83[15:0]) +
	 16'sd 22760 * $signed(input_fmap_83[31:16]) +
	 15'sd 11515 * $signed(input_fmap_83[47:32]) +
	 16'sd 19285 * $signed(input_fmap_83[63:48]) +
	 15'sd 12319 * $signed(input_fmap_83[79:64]) +
	 16'sd 18363 * $signed(input_fmap_83[95:80]) +
	 15'sd 12169 * $signed(input_fmap_83[111:96]) +
	 16'sd 29224 * $signed(input_fmap_83[127:112]) +
	 14'sd 5680 * $signed(input_fmap_83[143:128]);

logic signed [31:0] dw_conv_mac_84;
assign dw_conv_mac_84 = 
	 14'sd 6371 * $signed(input_fmap_84[15:0]) +
	 16'sd 25562 * $signed(input_fmap_84[31:16]) +
	 14'sd 5782 * $signed(input_fmap_84[47:32]) +
	 16'sd 30586 * $signed(input_fmap_84[63:48]) +
	 16'sd 31186 * $signed(input_fmap_84[79:64]) +
	 10'sd 430 * $signed(input_fmap_84[95:80]) +
	 16'sd 27109 * $signed(input_fmap_84[111:96]) +
	 15'sd 15974 * $signed(input_fmap_84[127:112]) +
	 14'sd 4858 * $signed(input_fmap_84[143:128]);

logic signed [31:0] dw_conv_mac_85;
assign dw_conv_mac_85 = 
	 16'sd 24021 * $signed(input_fmap_85[15:0]) +
	 16'sd 16824 * $signed(input_fmap_85[31:16]) +
	 16'sd 20485 * $signed(input_fmap_85[47:32]) +
	 15'sd 12991 * $signed(input_fmap_85[63:48]) +
	 16'sd 28352 * $signed(input_fmap_85[79:64]) +
	 16'sd 24694 * $signed(input_fmap_85[95:80]) +
	 16'sd 27504 * $signed(input_fmap_85[111:96]) +
	 16'sd 29185 * $signed(input_fmap_85[127:112]) +
	 16'sd 32737 * $signed(input_fmap_85[143:128]);

logic signed [31:0] dw_conv_mac_86;
assign dw_conv_mac_86 = 
	 16'sd 25980 * $signed(input_fmap_86[15:0]) +
	 12'sd 1971 * $signed(input_fmap_86[31:16]) +
	 15'sd 11353 * $signed(input_fmap_86[47:32]) +
	 16'sd 32148 * $signed(input_fmap_86[63:48]) +
	 16'sd 19350 * $signed(input_fmap_86[79:64]) +
	 15'sd 12500 * $signed(input_fmap_86[95:80]) +
	 16'sd 19059 * $signed(input_fmap_86[111:96]) +
	 15'sd 16028 * $signed(input_fmap_86[127:112]) +
	 13'sd 3237 * $signed(input_fmap_86[143:128]);

logic signed [31:0] dw_conv_mac_87;
assign dw_conv_mac_87 = 
	 15'sd 12403 * $signed(input_fmap_87[15:0]) +
	 15'sd 14495 * $signed(input_fmap_87[31:16]) +
	 15'sd 15968 * $signed(input_fmap_87[47:32]) +
	 16'sd 31811 * $signed(input_fmap_87[63:48]) +
	 14'sd 4311 * $signed(input_fmap_87[79:64]) +
	 16'sd 22694 * $signed(input_fmap_87[95:80]) +
	 16'sd 26744 * $signed(input_fmap_87[111:96]) +
	 16'sd 16791 * $signed(input_fmap_87[127:112]) +
	 10'sd 508 * $signed(input_fmap_87[143:128]);

logic signed [31:0] dw_conv_mac_88;
assign dw_conv_mac_88 = 
	 16'sd 31212 * $signed(input_fmap_88[15:0]) +
	 16'sd 32081 * $signed(input_fmap_88[31:16]) +
	 16'sd 18970 * $signed(input_fmap_88[47:32]) +
	 16'sd 24473 * $signed(input_fmap_88[63:48]) +
	 15'sd 11306 * $signed(input_fmap_88[79:64]) +
	 16'sd 19528 * $signed(input_fmap_88[95:80]) +
	 14'sd 4956 * $signed(input_fmap_88[111:96]) +
	 16'sd 28834 * $signed(input_fmap_88[127:112]) +
	 15'sd 14871 * $signed(input_fmap_88[143:128]);

logic signed [31:0] dw_conv_mac_89;
assign dw_conv_mac_89 = 
	 14'sd 7519 * $signed(input_fmap_89[15:0]) +
	 15'sd 10846 * $signed(input_fmap_89[31:16]) +
	 16'sd 19486 * $signed(input_fmap_89[47:32]) +
	 12'sd 1737 * $signed(input_fmap_89[63:48]) +
	 13'sd 3905 * $signed(input_fmap_89[79:64]) +
	 16'sd 26768 * $signed(input_fmap_89[95:80]) +
	 14'sd 7809 * $signed(input_fmap_89[111:96]) +
	 15'sd 13416 * $signed(input_fmap_89[127:112]) +
	 15'sd 12608 * $signed(input_fmap_89[143:128]);

logic signed [31:0] dw_conv_mac_90;
assign dw_conv_mac_90 = 
	 16'sd 17577 * $signed(input_fmap_90[15:0]) +
	 16'sd 20368 * $signed(input_fmap_90[31:16]) +
	 16'sd 31189 * $signed(input_fmap_90[47:32]) +
	 14'sd 5750 * $signed(input_fmap_90[63:48]) +
	 16'sd 19599 * $signed(input_fmap_90[79:64]) +
	 13'sd 3704 * $signed(input_fmap_90[95:80]) +
	 16'sd 19223 * $signed(input_fmap_90[111:96]) +
	 16'sd 29803 * $signed(input_fmap_90[127:112]) +
	 16'sd 22720 * $signed(input_fmap_90[143:128]);

logic signed [31:0] dw_conv_mac_91;
assign dw_conv_mac_91 = 
	 16'sd 21751 * $signed(input_fmap_91[15:0]) +
	 12'sd 2013 * $signed(input_fmap_91[31:16]) +
	 16'sd 24482 * $signed(input_fmap_91[47:32]) +
	 16'sd 31449 * $signed(input_fmap_91[63:48]) +
	 16'sd 32296 * $signed(input_fmap_91[79:64]) +
	 16'sd 29395 * $signed(input_fmap_91[95:80]) +
	 16'sd 25523 * $signed(input_fmap_91[111:96]) +
	 14'sd 7265 * $signed(input_fmap_91[127:112]) +
	 16'sd 32717 * $signed(input_fmap_91[143:128]);

logic signed [31:0] dw_conv_mac_92;
assign dw_conv_mac_92 = 
	 15'sd 8335 * $signed(input_fmap_92[15:0]) +
	 14'sd 6890 * $signed(input_fmap_92[31:16]) +
	 16'sd 27898 * $signed(input_fmap_92[47:32]) +
	 14'sd 7475 * $signed(input_fmap_92[63:48]) +
	 15'sd 12502 * $signed(input_fmap_92[79:64]) +
	 15'sd 8238 * $signed(input_fmap_92[95:80]) +
	 15'sd 13376 * $signed(input_fmap_92[111:96]) +
	 12'sd 1047 * $signed(input_fmap_92[127:112]) +
	 15'sd 11251 * $signed(input_fmap_92[143:128]);

logic signed [31:0] dw_conv_mac_93;
assign dw_conv_mac_93 = 
	 15'sd 11929 * $signed(input_fmap_93[15:0]) +
	 16'sd 25155 * $signed(input_fmap_93[31:16]) +
	 16'sd 19692 * $signed(input_fmap_93[47:32]) +
	 15'sd 13624 * $signed(input_fmap_93[63:48]) +
	 15'sd 15034 * $signed(input_fmap_93[79:64]) +
	 16'sd 27888 * $signed(input_fmap_93[95:80]) +
	 16'sd 28297 * $signed(input_fmap_93[111:96]) +
	 13'sd 3993 * $signed(input_fmap_93[127:112]) +
	 16'sd 17189 * $signed(input_fmap_93[143:128]);

logic signed [31:0] dw_conv_mac_94;
assign dw_conv_mac_94 = 
	 12'sd 1442 * $signed(input_fmap_94[15:0]) +
	 15'sd 11373 * $signed(input_fmap_94[31:16]) +
	 15'sd 14533 * $signed(input_fmap_94[47:32]) +
	 16'sd 27337 * $signed(input_fmap_94[63:48]) +
	 13'sd 3160 * $signed(input_fmap_94[79:64]) +
	 16'sd 23968 * $signed(input_fmap_94[95:80]) +
	 13'sd 3068 * $signed(input_fmap_94[111:96]) +
	 15'sd 14018 * $signed(input_fmap_94[127:112]) +
	 15'sd 8753 * $signed(input_fmap_94[143:128]);

logic signed [31:0] dw_conv_mac_95;
assign dw_conv_mac_95 = 
	 15'sd 14144 * $signed(input_fmap_95[15:0]) +
	 16'sd 20880 * $signed(input_fmap_95[31:16]) +
	 16'sd 17536 * $signed(input_fmap_95[47:32]) +
	 15'sd 15264 * $signed(input_fmap_95[63:48]) +
	 16'sd 23764 * $signed(input_fmap_95[79:64]) +
	 15'sd 10767 * $signed(input_fmap_95[95:80]) +
	 15'sd 12703 * $signed(input_fmap_95[111:96]) +
	 14'sd 4229 * $signed(input_fmap_95[127:112]) +
	 16'sd 18103 * $signed(input_fmap_95[143:128]);

logic signed [31:0] dw_conv_mac_96;
assign dw_conv_mac_96 = 
	 16'sd 24813 * $signed(input_fmap_96[15:0]) +
	 14'sd 4822 * $signed(input_fmap_96[31:16]) +
	 13'sd 2776 * $signed(input_fmap_96[47:32]) +
	 15'sd 15820 * $signed(input_fmap_96[63:48]) +
	 15'sd 11478 * $signed(input_fmap_96[79:64]) +
	 15'sd 10492 * $signed(input_fmap_96[95:80]) +
	 15'sd 12474 * $signed(input_fmap_96[111:96]) +
	 15'sd 14990 * $signed(input_fmap_96[127:112]) +
	 15'sd 11433 * $signed(input_fmap_96[143:128]);

logic signed [31:0] dw_conv_mac_97;
assign dw_conv_mac_97 = 
	 14'sd 6899 * $signed(input_fmap_97[15:0]) +
	 16'sd 23234 * $signed(input_fmap_97[31:16]) +
	 16'sd 31914 * $signed(input_fmap_97[47:32]) +
	 16'sd 29605 * $signed(input_fmap_97[63:48]) +
	 12'sd 1380 * $signed(input_fmap_97[79:64]) +
	 14'sd 7093 * $signed(input_fmap_97[95:80]) +
	 16'sd 20690 * $signed(input_fmap_97[111:96]) +
	 16'sd 22579 * $signed(input_fmap_97[127:112]) +
	 16'sd 17805 * $signed(input_fmap_97[143:128]);

logic signed [31:0] dw_conv_mac_98;
assign dw_conv_mac_98 = 
	 16'sd 17784 * $signed(input_fmap_98[15:0]) +
	 16'sd 23591 * $signed(input_fmap_98[31:16]) +
	 16'sd 32369 * $signed(input_fmap_98[47:32]) +
	 14'sd 5546 * $signed(input_fmap_98[63:48]) +
	 15'sd 13877 * $signed(input_fmap_98[79:64]) +
	 15'sd 15363 * $signed(input_fmap_98[95:80]) +
	 9'sd 176 * $signed(input_fmap_98[111:96]) +
	 15'sd 11632 * $signed(input_fmap_98[127:112]) +
	 15'sd 16205 * $signed(input_fmap_98[143:128]);

logic signed [31:0] dw_conv_mac_99;
assign dw_conv_mac_99 = 
	 16'sd 22123 * $signed(input_fmap_99[15:0]) +
	 16'sd 26011 * $signed(input_fmap_99[31:16]) +
	 16'sd 19565 * $signed(input_fmap_99[47:32]) +
	 13'sd 4009 * $signed(input_fmap_99[63:48]) +
	 14'sd 6655 * $signed(input_fmap_99[79:64]) +
	 12'sd 1632 * $signed(input_fmap_99[95:80]) +
	 15'sd 14328 * $signed(input_fmap_99[111:96]) +
	 15'sd 12151 * $signed(input_fmap_99[127:112]) +
	 16'sd 22647 * $signed(input_fmap_99[143:128]);

logic signed [31:0] dw_conv_mac_100;
assign dw_conv_mac_100 = 
	 14'sd 4637 * $signed(input_fmap_100[15:0]) +
	 15'sd 10984 * $signed(input_fmap_100[31:16]) +
	 15'sd 11550 * $signed(input_fmap_100[47:32]) +
	 15'sd 15294 * $signed(input_fmap_100[63:48]) +
	 15'sd 13594 * $signed(input_fmap_100[79:64]) +
	 16'sd 22627 * $signed(input_fmap_100[95:80]) +
	 16'sd 32263 * $signed(input_fmap_100[111:96]) +
	 16'sd 31797 * $signed(input_fmap_100[127:112]) +
	 16'sd 16645 * $signed(input_fmap_100[143:128]);

logic signed [31:0] dw_conv_mac_101;
assign dw_conv_mac_101 = 
	 15'sd 14879 * $signed(input_fmap_101[15:0]) +
	 15'sd 12011 * $signed(input_fmap_101[31:16]) +
	 16'sd 24017 * $signed(input_fmap_101[47:32]) +
	 16'sd 30780 * $signed(input_fmap_101[63:48]) +
	 15'sd 14240 * $signed(input_fmap_101[79:64]) +
	 15'sd 12270 * $signed(input_fmap_101[95:80]) +
	 16'sd 23505 * $signed(input_fmap_101[111:96]) +
	 15'sd 14088 * $signed(input_fmap_101[127:112]) +
	 9'sd 226 * $signed(input_fmap_101[143:128]);

logic signed [31:0] dw_conv_mac_102;
assign dw_conv_mac_102 = 
	 15'sd 10605 * $signed(input_fmap_102[15:0]) +
	 16'sd 32190 * $signed(input_fmap_102[31:16]) +
	 16'sd 17276 * $signed(input_fmap_102[47:32]) +
	 16'sd 24444 * $signed(input_fmap_102[63:48]) +
	 16'sd 21707 * $signed(input_fmap_102[79:64]) +
	 16'sd 26241 * $signed(input_fmap_102[95:80]) +
	 16'sd 24805 * $signed(input_fmap_102[111:96]) +
	 15'sd 8301 * $signed(input_fmap_102[127:112]) +
	 15'sd 10255 * $signed(input_fmap_102[143:128]);

logic signed [31:0] dw_conv_mac_103;
assign dw_conv_mac_103 = 
	 16'sd 25254 * $signed(input_fmap_103[15:0]) +
	 15'sd 12981 * $signed(input_fmap_103[31:16]) +
	 16'sd 32590 * $signed(input_fmap_103[47:32]) +
	 16'sd 25381 * $signed(input_fmap_103[63:48]) +
	 15'sd 10942 * $signed(input_fmap_103[79:64]) +
	 16'sd 17235 * $signed(input_fmap_103[95:80]) +
	 15'sd 12543 * $signed(input_fmap_103[111:96]) +
	 16'sd 20509 * $signed(input_fmap_103[127:112]) +
	 13'sd 4078 * $signed(input_fmap_103[143:128]);

logic signed [31:0] dw_conv_mac_104;
assign dw_conv_mac_104 = 
	 16'sd 30036 * $signed(input_fmap_104[15:0]) +
	 16'sd 23402 * $signed(input_fmap_104[31:16]) +
	 16'sd 18869 * $signed(input_fmap_104[47:32]) +
	 16'sd 19295 * $signed(input_fmap_104[63:48]) +
	 15'sd 13743 * $signed(input_fmap_104[79:64]) +
	 16'sd 16526 * $signed(input_fmap_104[95:80]) +
	 16'sd 25696 * $signed(input_fmap_104[111:96]) +
	 15'sd 8581 * $signed(input_fmap_104[127:112]) +
	 15'sd 11290 * $signed(input_fmap_104[143:128]);

logic signed [31:0] dw_conv_mac_105;
assign dw_conv_mac_105 = 
	 16'sd 25517 * $signed(input_fmap_105[15:0]) +
	 16'sd 30023 * $signed(input_fmap_105[31:16]) +
	 16'sd 25805 * $signed(input_fmap_105[47:32]) +
	 16'sd 19393 * $signed(input_fmap_105[63:48]) +
	 16'sd 27807 * $signed(input_fmap_105[79:64]) +
	 16'sd 28238 * $signed(input_fmap_105[95:80]) +
	 15'sd 13501 * $signed(input_fmap_105[111:96]) +
	 16'sd 28721 * $signed(input_fmap_105[127:112]) +
	 16'sd 27149 * $signed(input_fmap_105[143:128]);

logic signed [31:0] dw_conv_mac_106;
assign dw_conv_mac_106 = 
	 16'sd 23447 * $signed(input_fmap_106[15:0]) +
	 15'sd 13535 * $signed(input_fmap_106[31:16]) +
	 16'sd 24769 * $signed(input_fmap_106[47:32]) +
	 14'sd 7705 * $signed(input_fmap_106[63:48]) +
	 16'sd 25092 * $signed(input_fmap_106[79:64]) +
	 16'sd 31211 * $signed(input_fmap_106[95:80]) +
	 16'sd 21634 * $signed(input_fmap_106[111:96]) +
	 12'sd 1374 * $signed(input_fmap_106[127:112]) +
	 13'sd 2258 * $signed(input_fmap_106[143:128]);

logic signed [31:0] dw_conv_mac_107;
assign dw_conv_mac_107 = 
	 13'sd 3379 * $signed(input_fmap_107[15:0]) +
	 15'sd 8864 * $signed(input_fmap_107[31:16]) +
	 14'sd 7639 * $signed(input_fmap_107[47:32]) +
	 15'sd 13633 * $signed(input_fmap_107[63:48]) +
	 16'sd 29958 * $signed(input_fmap_107[79:64]) +
	 11'sd 702 * $signed(input_fmap_107[95:80]) +
	 13'sd 2228 * $signed(input_fmap_107[111:96]) +
	 16'sd 26844 * $signed(input_fmap_107[127:112]) +
	 15'sd 10304 * $signed(input_fmap_107[143:128]);

logic signed [31:0] dw_conv_mac_108;
assign dw_conv_mac_108 = 
	 16'sd 20042 * $signed(input_fmap_108[15:0]) +
	 16'sd 21107 * $signed(input_fmap_108[31:16]) +
	 15'sd 11575 * $signed(input_fmap_108[47:32]) +
	 16'sd 24170 * $signed(input_fmap_108[63:48]) +
	 16'sd 22023 * $signed(input_fmap_108[79:64]) +
	 15'sd 11504 * $signed(input_fmap_108[95:80]) +
	 16'sd 29790 * $signed(input_fmap_108[111:96]) +
	 16'sd 30026 * $signed(input_fmap_108[127:112]) +
	 15'sd 10339 * $signed(input_fmap_108[143:128]);

logic signed [31:0] dw_conv_mac_109;
assign dw_conv_mac_109 = 
	 13'sd 2641 * $signed(input_fmap_109[15:0]) +
	 16'sd 19524 * $signed(input_fmap_109[31:16]) +
	 16'sd 29253 * $signed(input_fmap_109[47:32]) +
	 14'sd 6883 * $signed(input_fmap_109[63:48]) +
	 15'sd 9076 * $signed(input_fmap_109[79:64]) +
	 12'sd 1098 * $signed(input_fmap_109[95:80]) +
	 12'sd 1652 * $signed(input_fmap_109[111:96]) +
	 16'sd 17983 * $signed(input_fmap_109[127:112]) +
	 15'sd 9745 * $signed(input_fmap_109[143:128]);

logic signed [31:0] dw_conv_mac_110;
assign dw_conv_mac_110 = 
	 16'sd 18309 * $signed(input_fmap_110[15:0]) +
	 16'sd 28810 * $signed(input_fmap_110[31:16]) +
	 15'sd 10863 * $signed(input_fmap_110[47:32]) +
	 16'sd 31824 * $signed(input_fmap_110[63:48]) +
	 16'sd 23412 * $signed(input_fmap_110[79:64]) +
	 16'sd 17204 * $signed(input_fmap_110[95:80]) +
	 15'sd 13304 * $signed(input_fmap_110[111:96]) +
	 13'sd 3083 * $signed(input_fmap_110[127:112]) +
	 15'sd 8561 * $signed(input_fmap_110[143:128]);

logic signed [31:0] dw_conv_mac_111;
assign dw_conv_mac_111 = 
	 15'sd 8347 * $signed(input_fmap_111[15:0]) +
	 15'sd 13359 * $signed(input_fmap_111[31:16]) +
	 16'sd 28835 * $signed(input_fmap_111[47:32]) +
	 16'sd 22777 * $signed(input_fmap_111[63:48]) +
	 16'sd 28816 * $signed(input_fmap_111[79:64]) +
	 11'sd 695 * $signed(input_fmap_111[95:80]) +
	 15'sd 10184 * $signed(input_fmap_111[111:96]) +
	 16'sd 20649 * $signed(input_fmap_111[127:112]) +
	 16'sd 32548 * $signed(input_fmap_111[143:128]);

logic signed [31:0] dw_conv_mac_112;
assign dw_conv_mac_112 = 
	 16'sd 27094 * $signed(input_fmap_112[15:0]) +
	 15'sd 10967 * $signed(input_fmap_112[31:16]) +
	 16'sd 24268 * $signed(input_fmap_112[47:32]) +
	 12'sd 1027 * $signed(input_fmap_112[63:48]) +
	 16'sd 20248 * $signed(input_fmap_112[79:64]) +
	 14'sd 4933 * $signed(input_fmap_112[95:80]) +
	 16'sd 29557 * $signed(input_fmap_112[111:96]) +
	 16'sd 21238 * $signed(input_fmap_112[127:112]) +
	 13'sd 2794 * $signed(input_fmap_112[143:128]);

logic signed [31:0] dw_conv_mac_113;
assign dw_conv_mac_113 = 
	 16'sd 20722 * $signed(input_fmap_113[15:0]) +
	 15'sd 13577 * $signed(input_fmap_113[31:16]) +
	 16'sd 17225 * $signed(input_fmap_113[47:32]) +
	 14'sd 7944 * $signed(input_fmap_113[63:48]) +
	 15'sd 16160 * $signed(input_fmap_113[79:64]) +
	 15'sd 12123 * $signed(input_fmap_113[95:80]) +
	 16'sd 31352 * $signed(input_fmap_113[111:96]) +
	 16'sd 17874 * $signed(input_fmap_113[127:112]) +
	 16'sd 17712 * $signed(input_fmap_113[143:128]);

logic signed [31:0] dw_conv_mac_114;
assign dw_conv_mac_114 = 
	 16'sd 29506 * $signed(input_fmap_114[15:0]) +
	 16'sd 18406 * $signed(input_fmap_114[31:16]) +
	 13'sd 3328 * $signed(input_fmap_114[47:32]) +
	 14'sd 7566 * $signed(input_fmap_114[63:48]) +
	 15'sd 13808 * $signed(input_fmap_114[79:64]) +
	 16'sd 22786 * $signed(input_fmap_114[95:80]) +
	 15'sd 13027 * $signed(input_fmap_114[111:96]) +
	 16'sd 30148 * $signed(input_fmap_114[127:112]) +
	 15'sd 14952 * $signed(input_fmap_114[143:128]);

logic signed [31:0] dw_conv_mac_115;
assign dw_conv_mac_115 = 
	 16'sd 29674 * $signed(input_fmap_115[15:0]) +
	 15'sd 8941 * $signed(input_fmap_115[31:16]) +
	 14'sd 8181 * $signed(input_fmap_115[47:32]) +
	 16'sd 19838 * $signed(input_fmap_115[63:48]) +
	 11'sd 879 * $signed(input_fmap_115[79:64]) +
	 16'sd 30065 * $signed(input_fmap_115[95:80]) +
	 9'sd 190 * $signed(input_fmap_115[111:96]) +
	 16'sd 19950 * $signed(input_fmap_115[127:112]) +
	 10'sd 394 * $signed(input_fmap_115[143:128]);

logic signed [31:0] dw_conv_mac_116;
assign dw_conv_mac_116 = 
	 16'sd 17220 * $signed(input_fmap_116[15:0]) +
	 16'sd 31372 * $signed(input_fmap_116[31:16]) +
	 16'sd 32330 * $signed(input_fmap_116[47:32]) +
	 15'sd 8222 * $signed(input_fmap_116[63:48]) +
	 14'sd 7563 * $signed(input_fmap_116[79:64]) +
	 16'sd 31930 * $signed(input_fmap_116[95:80]) +
	 16'sd 29793 * $signed(input_fmap_116[111:96]) +
	 16'sd 23867 * $signed(input_fmap_116[127:112]) +
	 15'sd 14806 * $signed(input_fmap_116[143:128]);

logic signed [31:0] dw_conv_mac_117;
assign dw_conv_mac_117 = 
	 13'sd 3224 * $signed(input_fmap_117[15:0]) +
	 15'sd 9400 * $signed(input_fmap_117[31:16]) +
	 15'sd 9357 * $signed(input_fmap_117[47:32]) +
	 15'sd 15892 * $signed(input_fmap_117[63:48]) +
	 15'sd 13408 * $signed(input_fmap_117[79:64]) +
	 16'sd 26106 * $signed(input_fmap_117[95:80]) +
	 14'sd 4470 * $signed(input_fmap_117[111:96]) +
	 16'sd 28221 * $signed(input_fmap_117[127:112]) +
	 16'sd 24163 * $signed(input_fmap_117[143:128]);

logic signed [31:0] dw_conv_mac_118;
assign dw_conv_mac_118 = 
	 15'sd 8630 * $signed(input_fmap_118[15:0]) +
	 14'sd 7348 * $signed(input_fmap_118[31:16]) +
	 13'sd 3693 * $signed(input_fmap_118[47:32]) +
	 11'sd 994 * $signed(input_fmap_118[63:48]) +
	 16'sd 25204 * $signed(input_fmap_118[79:64]) +
	 15'sd 10027 * $signed(input_fmap_118[95:80]) +
	 15'sd 13055 * $signed(input_fmap_118[111:96]) +
	 16'sd 30099 * $signed(input_fmap_118[127:112]) +
	 16'sd 19663 * $signed(input_fmap_118[143:128]);

logic signed [31:0] dw_conv_mac_119;
assign dw_conv_mac_119 = 
	 16'sd 28528 * $signed(input_fmap_119[15:0]) +
	 16'sd 31385 * $signed(input_fmap_119[31:16]) +
	 16'sd 18220 * $signed(input_fmap_119[47:32]) +
	 15'sd 10380 * $signed(input_fmap_119[63:48]) +
	 16'sd 28271 * $signed(input_fmap_119[79:64]) +
	 11'sd 554 * $signed(input_fmap_119[95:80]) +
	 15'sd 12519 * $signed(input_fmap_119[111:96]) +
	 12'sd 1443 * $signed(input_fmap_119[127:112]) +
	 16'sd 17122 * $signed(input_fmap_119[143:128]);

logic signed [31:0] dw_conv_mac_120;
assign dw_conv_mac_120 = 
	 14'sd 4105 * $signed(input_fmap_120[15:0]) +
	 14'sd 5301 * $signed(input_fmap_120[31:16]) +
	 16'sd 16677 * $signed(input_fmap_120[47:32]) +
	 16'sd 18060 * $signed(input_fmap_120[63:48]) +
	 16'sd 16639 * $signed(input_fmap_120[79:64]) +
	 16'sd 17860 * $signed(input_fmap_120[95:80]) +
	 16'sd 22436 * $signed(input_fmap_120[111:96]) +
	 16'sd 23535 * $signed(input_fmap_120[127:112]) +
	 15'sd 12757 * $signed(input_fmap_120[143:128]);

logic signed [31:0] dw_conv_mac_121;
assign dw_conv_mac_121 = 
	 16'sd 28661 * $signed(input_fmap_121[15:0]) +
	 14'sd 7673 * $signed(input_fmap_121[31:16]) +
	 11'sd 922 * $signed(input_fmap_121[47:32]) +
	 13'sd 3541 * $signed(input_fmap_121[63:48]) +
	 14'sd 7951 * $signed(input_fmap_121[79:64]) +
	 16'sd 20362 * $signed(input_fmap_121[95:80]) +
	 16'sd 21636 * $signed(input_fmap_121[111:96]) +
	 16'sd 17789 * $signed(input_fmap_121[127:112]) +
	 15'sd 9729 * $signed(input_fmap_121[143:128]);

logic signed [31:0] dw_conv_mac_122;
assign dw_conv_mac_122 = 
	 16'sd 32547 * $signed(input_fmap_122[15:0]) +
	 14'sd 5641 * $signed(input_fmap_122[31:16]) +
	 16'sd 17167 * $signed(input_fmap_122[47:32]) +
	 16'sd 24388 * $signed(input_fmap_122[63:48]) +
	 14'sd 7527 * $signed(input_fmap_122[79:64]) +
	 13'sd 2518 * $signed(input_fmap_122[95:80]) +
	 11'sd 553 * $signed(input_fmap_122[111:96]) +
	 16'sd 18101 * $signed(input_fmap_122[127:112]) +
	 15'sd 9028 * $signed(input_fmap_122[143:128]);

logic signed [31:0] dw_conv_mac_123;
assign dw_conv_mac_123 = 
	 16'sd 17432 * $signed(input_fmap_123[15:0]) +
	 15'sd 15429 * $signed(input_fmap_123[31:16]) +
	 15'sd 11787 * $signed(input_fmap_123[47:32]) +
	 15'sd 8610 * $signed(input_fmap_123[63:48]) +
	 16'sd 29601 * $signed(input_fmap_123[79:64]) +
	 16'sd 23026 * $signed(input_fmap_123[95:80]) +
	 14'sd 5765 * $signed(input_fmap_123[111:96]) +
	 15'sd 14304 * $signed(input_fmap_123[127:112]) +
	 16'sd 28305 * $signed(input_fmap_123[143:128]);

logic signed [31:0] dw_conv_mac_124;
assign dw_conv_mac_124 = 
	 15'sd 14504 * $signed(input_fmap_124[15:0]) +
	 14'sd 4825 * $signed(input_fmap_124[31:16]) +
	 15'sd 11541 * $signed(input_fmap_124[47:32]) +
	 13'sd 3926 * $signed(input_fmap_124[63:48]) +
	 14'sd 8084 * $signed(input_fmap_124[79:64]) +
	 16'sd 18730 * $signed(input_fmap_124[95:80]) +
	 14'sd 4331 * $signed(input_fmap_124[111:96]) +
	 16'sd 27666 * $signed(input_fmap_124[127:112]) +
	 16'sd 28680 * $signed(input_fmap_124[143:128]);

logic signed [31:0] dw_conv_mac_125;
assign dw_conv_mac_125 = 
	 15'sd 12789 * $signed(input_fmap_125[15:0]) +
	 16'sd 27522 * $signed(input_fmap_125[31:16]) +
	 16'sd 19910 * $signed(input_fmap_125[47:32]) +
	 16'sd 26628 * $signed(input_fmap_125[63:48]) +
	 15'sd 11791 * $signed(input_fmap_125[79:64]) +
	 16'sd 30150 * $signed(input_fmap_125[95:80]) +
	 16'sd 28562 * $signed(input_fmap_125[111:96]) +
	 15'sd 13787 * $signed(input_fmap_125[127:112]) +
	 15'sd 11631 * $signed(input_fmap_125[143:128]);

logic signed [31:0] dw_conv_mac_126;
assign dw_conv_mac_126 = 
	 14'sd 5458 * $signed(input_fmap_126[15:0]) +
	 12'sd 1387 * $signed(input_fmap_126[31:16]) +
	 14'sd 5412 * $signed(input_fmap_126[47:32]) +
	 16'sd 16607 * $signed(input_fmap_126[63:48]) +
	 14'sd 6407 * $signed(input_fmap_126[79:64]) +
	 14'sd 6887 * $signed(input_fmap_126[95:80]) +
	 16'sd 24242 * $signed(input_fmap_126[111:96]) +
	 13'sd 2774 * $signed(input_fmap_126[127:112]) +
	 16'sd 30567 * $signed(input_fmap_126[143:128]);

logic signed [31:0] dw_conv_mac_127;
assign dw_conv_mac_127 = 
	 16'sd 25691 * $signed(input_fmap_127[15:0]) +
	 15'sd 11835 * $signed(input_fmap_127[31:16]) +
	 16'sd 28444 * $signed(input_fmap_127[47:32]) +
	 15'sd 15499 * $signed(input_fmap_127[63:48]) +
	 16'sd 17632 * $signed(input_fmap_127[79:64]) +
	 14'sd 4777 * $signed(input_fmap_127[95:80]) +
	 15'sd 8388 * $signed(input_fmap_127[111:96]) +
	 16'sd 25387 * $signed(input_fmap_127[127:112]) +
	 16'sd 18958 * $signed(input_fmap_127[143:128]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 16'd19448;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 16'd23166;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 14'd6996;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 16'd26253;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 15'd9583;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 16'd23184;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 15'd10731;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 16'd26362;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 15'd13604;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 14'd4803;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 15'd12218;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 16'd18353;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 16'd28155;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 16'd32239;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 13'd2670;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 16'd24839;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 16'd27598;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 14'd5495;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18 + 16'd28182;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 15'd8899;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 16'd17962;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21 + 14'd7251;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22 + 16'd18658;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 15'd13036;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24 + 16'd30834;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25 + 16'd27917;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 16'd16477;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 16'd25915;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28 + 14'd7404;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 16'd32719;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 9'd180;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 16'd16710;
logic [31:0] bias_add_32;
assign bias_add_32 = dw_conv_mac_32 + 16'd23037;
logic [31:0] bias_add_33;
assign bias_add_33 = dw_conv_mac_33 + 16'd22886;
logic [31:0] bias_add_34;
assign bias_add_34 = dw_conv_mac_34 + 11'd826;
logic [31:0] bias_add_35;
assign bias_add_35 = dw_conv_mac_35 + 16'd31804;
logic [31:0] bias_add_36;
assign bias_add_36 = dw_conv_mac_36 + 14'd4266;
logic [31:0] bias_add_37;
assign bias_add_37 = dw_conv_mac_37 + 15'd13638;
logic [31:0] bias_add_38;
assign bias_add_38 = dw_conv_mac_38 + 14'd7120;
logic [31:0] bias_add_39;
assign bias_add_39 = dw_conv_mac_39 + 15'd15539;
logic [31:0] bias_add_40;
assign bias_add_40 = dw_conv_mac_40 + 15'd13315;
logic [31:0] bias_add_41;
assign bias_add_41 = dw_conv_mac_41 + 13'd3720;
logic [31:0] bias_add_42;
assign bias_add_42 = dw_conv_mac_42 + 16'd22091;
logic [31:0] bias_add_43;
assign bias_add_43 = dw_conv_mac_43 + 16'd30163;
logic [31:0] bias_add_44;
assign bias_add_44 = dw_conv_mac_44 + 16'd18671;
logic [31:0] bias_add_45;
assign bias_add_45 = dw_conv_mac_45 + 12'd1955;
logic [31:0] bias_add_46;
assign bias_add_46 = dw_conv_mac_46 + 14'd6948;
logic [31:0] bias_add_47;
assign bias_add_47 = dw_conv_mac_47 + 16'd25646;
logic [31:0] bias_add_48;
assign bias_add_48 = dw_conv_mac_48 + 16'd18238;
logic [31:0] bias_add_49;
assign bias_add_49 = dw_conv_mac_49 + 15'd15363;
logic [31:0] bias_add_50;
assign bias_add_50 = dw_conv_mac_50 + 15'd9569;
logic [31:0] bias_add_51;
assign bias_add_51 = dw_conv_mac_51 + 12'd1176;
logic [31:0] bias_add_52;
assign bias_add_52 = dw_conv_mac_52 + 16'd30790;
logic [31:0] bias_add_53;
assign bias_add_53 = dw_conv_mac_53 + 15'd13281;
logic [31:0] bias_add_54;
assign bias_add_54 = dw_conv_mac_54 + 16'd23348;
logic [31:0] bias_add_55;
assign bias_add_55 = dw_conv_mac_55 + 10'd397;
logic [31:0] bias_add_56;
assign bias_add_56 = dw_conv_mac_56 + 16'd22114;
logic [31:0] bias_add_57;
assign bias_add_57 = dw_conv_mac_57 + 16'd25218;
logic [31:0] bias_add_58;
assign bias_add_58 = dw_conv_mac_58 + 16'd30269;
logic [31:0] bias_add_59;
assign bias_add_59 = dw_conv_mac_59 + 14'd7534;
logic [31:0] bias_add_60;
assign bias_add_60 = dw_conv_mac_60 + 16'd27539;
logic [31:0] bias_add_61;
assign bias_add_61 = dw_conv_mac_61 + 16'd32102;
logic [31:0] bias_add_62;
assign bias_add_62 = dw_conv_mac_62 + 15'd15761;
logic [31:0] bias_add_63;
assign bias_add_63 = dw_conv_mac_63 + 16'd18209;
logic [31:0] bias_add_64;
assign bias_add_64 = dw_conv_mac_64 + 15'd13985;
logic [31:0] bias_add_65;
assign bias_add_65 = dw_conv_mac_65 + 16'd20558;
logic [31:0] bias_add_66;
assign bias_add_66 = dw_conv_mac_66 + 16'd21112;
logic [31:0] bias_add_67;
assign bias_add_67 = dw_conv_mac_67 + 16'd31698;
logic [31:0] bias_add_68;
assign bias_add_68 = dw_conv_mac_68 + 15'd12578;
logic [31:0] bias_add_69;
assign bias_add_69 = dw_conv_mac_69 + 16'd31735;
logic [31:0] bias_add_70;
assign bias_add_70 = dw_conv_mac_70 + 16'd30377;
logic [31:0] bias_add_71;
assign bias_add_71 = dw_conv_mac_71 + 15'd12489;
logic [31:0] bias_add_72;
assign bias_add_72 = dw_conv_mac_72 + 16'd32670;
logic [31:0] bias_add_73;
assign bias_add_73 = dw_conv_mac_73 + 16'd30861;
logic [31:0] bias_add_74;
assign bias_add_74 = dw_conv_mac_74 + 15'd8740;
logic [31:0] bias_add_75;
assign bias_add_75 = dw_conv_mac_75 + 16'd20147;
logic [31:0] bias_add_76;
assign bias_add_76 = dw_conv_mac_76 + 16'd25890;
logic [31:0] bias_add_77;
assign bias_add_77 = dw_conv_mac_77 + 14'd5692;
logic [31:0] bias_add_78;
assign bias_add_78 = dw_conv_mac_78 + 16'd18596;
logic [31:0] bias_add_79;
assign bias_add_79 = dw_conv_mac_79 + 16'd27479;
logic [31:0] bias_add_80;
assign bias_add_80 = dw_conv_mac_80 + 16'd32447;
logic [31:0] bias_add_81;
assign bias_add_81 = dw_conv_mac_81 + 16'd22000;
logic [31:0] bias_add_82;
assign bias_add_82 = dw_conv_mac_82 + 14'd5677;
logic [31:0] bias_add_83;
assign bias_add_83 = dw_conv_mac_83 + 14'd7858;
logic [31:0] bias_add_84;
assign bias_add_84 = dw_conv_mac_84 + 15'd9882;
logic [31:0] bias_add_85;
assign bias_add_85 = dw_conv_mac_85 + 16'd20155;
logic [31:0] bias_add_86;
assign bias_add_86 = dw_conv_mac_86 + 16'd24317;
logic [31:0] bias_add_87;
assign bias_add_87 = dw_conv_mac_87 + 14'd4155;
logic [31:0] bias_add_88;
assign bias_add_88 = dw_conv_mac_88 + 16'd30139;
logic [31:0] bias_add_89;
assign bias_add_89 = dw_conv_mac_89 + 16'd27763;
logic [31:0] bias_add_90;
assign bias_add_90 = dw_conv_mac_90 + 16'd30380;
logic [31:0] bias_add_91;
assign bias_add_91 = dw_conv_mac_91 + 16'd19727;
logic [31:0] bias_add_92;
assign bias_add_92 = dw_conv_mac_92 + 15'd15583;
logic [31:0] bias_add_93;
assign bias_add_93 = dw_conv_mac_93 + 15'd11614;
logic [31:0] bias_add_94;
assign bias_add_94 = dw_conv_mac_94 + 12'd1122;
logic [31:0] bias_add_95;
assign bias_add_95 = dw_conv_mac_95 + 15'd8223;
logic [31:0] bias_add_96;
assign bias_add_96 = dw_conv_mac_96 + 15'd14797;
logic [31:0] bias_add_97;
assign bias_add_97 = dw_conv_mac_97 + 15'd11226;
logic [31:0] bias_add_98;
assign bias_add_98 = dw_conv_mac_98 + 15'd9603;
logic [31:0] bias_add_99;
assign bias_add_99 = dw_conv_mac_99 + 14'd7239;
logic [31:0] bias_add_100;
assign bias_add_100 = dw_conv_mac_100 + 15'd9717;
logic [31:0] bias_add_101;
assign bias_add_101 = dw_conv_mac_101 + 15'd9988;
logic [31:0] bias_add_102;
assign bias_add_102 = dw_conv_mac_102 + 16'd31726;
logic [31:0] bias_add_103;
assign bias_add_103 = dw_conv_mac_103 + 16'd23287;
logic [31:0] bias_add_104;
assign bias_add_104 = dw_conv_mac_104 + 16'd19526;
logic [31:0] bias_add_105;
assign bias_add_105 = dw_conv_mac_105 + 16'd20153;
logic [31:0] bias_add_106;
assign bias_add_106 = dw_conv_mac_106 + 16'd17612;
logic [31:0] bias_add_107;
assign bias_add_107 = dw_conv_mac_107 + 13'd3601;
logic [31:0] bias_add_108;
assign bias_add_108 = dw_conv_mac_108 + 16'd23767;
logic [31:0] bias_add_109;
assign bias_add_109 = dw_conv_mac_109 + 16'd28728;
logic [31:0] bias_add_110;
assign bias_add_110 = dw_conv_mac_110 + 16'd19492;
logic [31:0] bias_add_111;
assign bias_add_111 = dw_conv_mac_111 + 16'd21098;
logic [31:0] bias_add_112;
assign bias_add_112 = dw_conv_mac_112 + 15'd16155;
logic [31:0] bias_add_113;
assign bias_add_113 = dw_conv_mac_113 + 16'd18380;
logic [31:0] bias_add_114;
assign bias_add_114 = dw_conv_mac_114 + 16'd29097;
logic [31:0] bias_add_115;
assign bias_add_115 = dw_conv_mac_115 + 16'd27608;
logic [31:0] bias_add_116;
assign bias_add_116 = dw_conv_mac_116 + 16'd31250;
logic [31:0] bias_add_117;
assign bias_add_117 = dw_conv_mac_117 + 16'd21081;
logic [31:0] bias_add_118;
assign bias_add_118 = dw_conv_mac_118 + 16'd16805;
logic [31:0] bias_add_119;
assign bias_add_119 = dw_conv_mac_119 + 10'd318;
logic [31:0] bias_add_120;
assign bias_add_120 = dw_conv_mac_120 + 15'd10928;
logic [31:0] bias_add_121;
assign bias_add_121 = dw_conv_mac_121 + 16'd29566;
logic [31:0] bias_add_122;
assign bias_add_122 = dw_conv_mac_122 + 15'd13548;
logic [31:0] bias_add_123;
assign bias_add_123 = dw_conv_mac_123 + 16'd20412;
logic [31:0] bias_add_124;
assign bias_add_124 = dw_conv_mac_124 + 16'd18832;
logic [31:0] bias_add_125;
assign bias_add_125 = dw_conv_mac_125 + 15'd14095;
logic [31:0] bias_add_126;
assign bias_add_126 = dw_conv_mac_126 + 16'd26850;
logic [31:0] bias_add_127;
assign bias_add_127 = dw_conv_mac_127 + 14'd8128;

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
