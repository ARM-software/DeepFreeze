module conv12_dw (
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
	 15'sd 15325 * $signed(input_fmap_0[7:0]) +
	 15'sd 13890 * $signed(input_fmap_0[15:8]) +
	 13'sd 3499 * $signed(input_fmap_0[23:16]) +
	 16'sd 30809 * $signed(input_fmap_0[31:24]) +
	 16'sd 20944 * $signed(input_fmap_0[39:32]) +
	 16'sd 30348 * $signed(input_fmap_0[47:40]) +
	 14'sd 4373 * $signed(input_fmap_0[55:48]) +
	 16'sd 29191 * $signed(input_fmap_0[63:56]) +
	 15'sd 10074 * $signed(input_fmap_0[71:64]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 16'sd 23373 * $signed(input_fmap_1[7:0]) +
	 15'sd 13390 * $signed(input_fmap_1[15:8]) +
	 15'sd 15678 * $signed(input_fmap_1[23:16]) +
	 13'sd 3514 * $signed(input_fmap_1[31:24]) +
	 16'sd 28479 * $signed(input_fmap_1[39:32]) +
	 14'sd 6926 * $signed(input_fmap_1[47:40]) +
	 16'sd 19810 * $signed(input_fmap_1[55:48]) +
	 13'sd 2586 * $signed(input_fmap_1[63:56]) +
	 15'sd 14203 * $signed(input_fmap_1[71:64]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 14'sd 5139 * $signed(input_fmap_2[7:0]) +
	 16'sd 30564 * $signed(input_fmap_2[15:8]) +
	 16'sd 26447 * $signed(input_fmap_2[23:16]) +
	 15'sd 10752 * $signed(input_fmap_2[31:24]) +
	 14'sd 5917 * $signed(input_fmap_2[39:32]) +
	 16'sd 30567 * $signed(input_fmap_2[47:40]) +
	 15'sd 15547 * $signed(input_fmap_2[55:48]) +
	 16'sd 21918 * $signed(input_fmap_2[63:56]) +
	 16'sd 32512 * $signed(input_fmap_2[71:64]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 16'sd 22789 * $signed(input_fmap_3[7:0]) +
	 14'sd 7648 * $signed(input_fmap_3[15:8]) +
	 15'sd 9441 * $signed(input_fmap_3[23:16]) +
	 15'sd 11709 * $signed(input_fmap_3[31:24]) +
	 15'sd 8751 * $signed(input_fmap_3[39:32]) +
	 15'sd 15243 * $signed(input_fmap_3[47:40]) +
	 14'sd 4954 * $signed(input_fmap_3[55:48]) +
	 13'sd 3702 * $signed(input_fmap_3[63:56]) +
	 15'sd 8782 * $signed(input_fmap_3[71:64]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 13'sd 3861 * $signed(input_fmap_4[7:0]) +
	 15'sd 13825 * $signed(input_fmap_4[15:8]) +
	 16'sd 23407 * $signed(input_fmap_4[23:16]) +
	 13'sd 2894 * $signed(input_fmap_4[31:24]) +
	 14'sd 4716 * $signed(input_fmap_4[39:32]) +
	 16'sd 27073 * $signed(input_fmap_4[47:40]) +
	 14'sd 4988 * $signed(input_fmap_4[55:48]) +
	 11'sd 917 * $signed(input_fmap_4[63:56]) +
	 16'sd 27542 * $signed(input_fmap_4[71:64]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 16'sd 23634 * $signed(input_fmap_5[7:0]) +
	 15'sd 12892 * $signed(input_fmap_5[15:8]) +
	 15'sd 12694 * $signed(input_fmap_5[23:16]) +
	 16'sd 17628 * $signed(input_fmap_5[31:24]) +
	 15'sd 11521 * $signed(input_fmap_5[39:32]) +
	 13'sd 3723 * $signed(input_fmap_5[47:40]) +
	 16'sd 23288 * $signed(input_fmap_5[55:48]) +
	 14'sd 6627 * $signed(input_fmap_5[63:56]) +
	 16'sd 32396 * $signed(input_fmap_5[71:64]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 15'sd 14769 * $signed(input_fmap_6[7:0]) +
	 16'sd 18406 * $signed(input_fmap_6[15:8]) +
	 16'sd 21868 * $signed(input_fmap_6[23:16]) +
	 15'sd 12445 * $signed(input_fmap_6[31:24]) +
	 16'sd 27938 * $signed(input_fmap_6[39:32]) +
	 16'sd 27535 * $signed(input_fmap_6[47:40]) +
	 16'sd 31463 * $signed(input_fmap_6[55:48]) +
	 16'sd 23632 * $signed(input_fmap_6[63:56]) +
	 16'sd 23340 * $signed(input_fmap_6[71:64]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 16'sd 22103 * $signed(input_fmap_7[7:0]) +
	 15'sd 11915 * $signed(input_fmap_7[15:8]) +
	 12'sd 1150 * $signed(input_fmap_7[23:16]) +
	 15'sd 13061 * $signed(input_fmap_7[31:24]) +
	 16'sd 19826 * $signed(input_fmap_7[39:32]) +
	 16'sd 19253 * $signed(input_fmap_7[47:40]) +
	 11'sd 706 * $signed(input_fmap_7[55:48]) +
	 16'sd 17451 * $signed(input_fmap_7[63:56]) +
	 15'sd 13068 * $signed(input_fmap_7[71:64]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 16'sd 23630 * $signed(input_fmap_8[7:0]) +
	 15'sd 10315 * $signed(input_fmap_8[15:8]) +
	 13'sd 3403 * $signed(input_fmap_8[23:16]) +
	 16'sd 25997 * $signed(input_fmap_8[31:24]) +
	 16'sd 23866 * $signed(input_fmap_8[39:32]) +
	 15'sd 9006 * $signed(input_fmap_8[47:40]) +
	 14'sd 6169 * $signed(input_fmap_8[55:48]) +
	 13'sd 4013 * $signed(input_fmap_8[63:56]) +
	 13'sd 2916 * $signed(input_fmap_8[71:64]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 16'sd 31613 * $signed(input_fmap_9[7:0]) +
	 15'sd 8209 * $signed(input_fmap_9[15:8]) +
	 13'sd 2168 * $signed(input_fmap_9[23:16]) +
	 15'sd 9932 * $signed(input_fmap_9[31:24]) +
	 16'sd 31827 * $signed(input_fmap_9[39:32]) +
	 12'sd 1354 * $signed(input_fmap_9[47:40]) +
	 16'sd 24644 * $signed(input_fmap_9[55:48]) +
	 16'sd 31080 * $signed(input_fmap_9[63:56]) +
	 15'sd 12730 * $signed(input_fmap_9[71:64]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 16'sd 18332 * $signed(input_fmap_10[7:0]) +
	 16'sd 23311 * $signed(input_fmap_10[15:8]) +
	 14'sd 7511 * $signed(input_fmap_10[23:16]) +
	 16'sd 18151 * $signed(input_fmap_10[31:24]) +
	 16'sd 24417 * $signed(input_fmap_10[39:32]) +
	 14'sd 7456 * $signed(input_fmap_10[47:40]) +
	 13'sd 3653 * $signed(input_fmap_10[55:48]) +
	 15'sd 11261 * $signed(input_fmap_10[63:56]) +
	 16'sd 29108 * $signed(input_fmap_10[71:64]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 16'sd 31562 * $signed(input_fmap_11[7:0]) +
	 15'sd 14056 * $signed(input_fmap_11[15:8]) +
	 16'sd 21917 * $signed(input_fmap_11[23:16]) +
	 16'sd 17592 * $signed(input_fmap_11[31:24]) +
	 16'sd 17775 * $signed(input_fmap_11[39:32]) +
	 16'sd 27202 * $signed(input_fmap_11[47:40]) +
	 16'sd 24994 * $signed(input_fmap_11[55:48]) +
	 15'sd 15987 * $signed(input_fmap_11[63:56]) +
	 15'sd 13816 * $signed(input_fmap_11[71:64]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 16'sd 29386 * $signed(input_fmap_12[7:0]) +
	 16'sd 31404 * $signed(input_fmap_12[15:8]) +
	 15'sd 16164 * $signed(input_fmap_12[23:16]) +
	 14'sd 6430 * $signed(input_fmap_12[31:24]) +
	 14'sd 6843 * $signed(input_fmap_12[39:32]) +
	 15'sd 11220 * $signed(input_fmap_12[47:40]) +
	 16'sd 29832 * $signed(input_fmap_12[55:48]) +
	 14'sd 5564 * $signed(input_fmap_12[63:56]) +
	 16'sd 25947 * $signed(input_fmap_12[71:64]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 12'sd 1315 * $signed(input_fmap_13[7:0]) +
	 16'sd 23288 * $signed(input_fmap_13[15:8]) +
	 16'sd 25940 * $signed(input_fmap_13[23:16]) +
	 15'sd 9528 * $signed(input_fmap_13[31:24]) +
	 15'sd 16035 * $signed(input_fmap_13[39:32]) +
	 14'sd 7906 * $signed(input_fmap_13[47:40]) +
	 13'sd 2916 * $signed(input_fmap_13[55:48]) +
	 11'sd 924 * $signed(input_fmap_13[63:56]) +
	 16'sd 28146 * $signed(input_fmap_13[71:64]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 14'sd 7599 * $signed(input_fmap_14[7:0]) +
	 13'sd 2872 * $signed(input_fmap_14[15:8]) +
	 16'sd 28959 * $signed(input_fmap_14[23:16]) +
	 16'sd 16427 * $signed(input_fmap_14[31:24]) +
	 16'sd 27340 * $signed(input_fmap_14[39:32]) +
	 14'sd 4931 * $signed(input_fmap_14[47:40]) +
	 15'sd 10033 * $signed(input_fmap_14[55:48]) +
	 16'sd 29676 * $signed(input_fmap_14[63:56]) +
	 15'sd 10701 * $signed(input_fmap_14[71:64]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 16'sd 17226 * $signed(input_fmap_15[7:0]) +
	 14'sd 4457 * $signed(input_fmap_15[15:8]) +
	 11'sd 865 * $signed(input_fmap_15[23:16]) +
	 16'sd 29170 * $signed(input_fmap_15[31:24]) +
	 15'sd 10429 * $signed(input_fmap_15[39:32]) +
	 12'sd 1998 * $signed(input_fmap_15[47:40]) +
	 13'sd 2187 * $signed(input_fmap_15[55:48]) +
	 14'sd 7278 * $signed(input_fmap_15[63:56]) +
	 16'sd 18079 * $signed(input_fmap_15[71:64]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 16'sd 19914 * $signed(input_fmap_16[7:0]) +
	 16'sd 31406 * $signed(input_fmap_16[15:8]) +
	 15'sd 8995 * $signed(input_fmap_16[23:16]) +
	 16'sd 21825 * $signed(input_fmap_16[31:24]) +
	 15'sd 11711 * $signed(input_fmap_16[39:32]) +
	 15'sd 11465 * $signed(input_fmap_16[47:40]) +
	 16'sd 22269 * $signed(input_fmap_16[55:48]) +
	 15'sd 15518 * $signed(input_fmap_16[63:56]) +
	 13'sd 2180 * $signed(input_fmap_16[71:64]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 15'sd 13152 * $signed(input_fmap_17[7:0]) +
	 16'sd 30036 * $signed(input_fmap_17[15:8]) +
	 13'sd 3362 * $signed(input_fmap_17[23:16]) +
	 16'sd 21484 * $signed(input_fmap_17[31:24]) +
	 14'sd 5591 * $signed(input_fmap_17[39:32]) +
	 16'sd 20768 * $signed(input_fmap_17[47:40]) +
	 16'sd 21490 * $signed(input_fmap_17[55:48]) +
	 16'sd 25028 * $signed(input_fmap_17[63:56]) +
	 15'sd 14533 * $signed(input_fmap_17[71:64]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 16'sd 29838 * $signed(input_fmap_18[7:0]) +
	 16'sd 18280 * $signed(input_fmap_18[15:8]) +
	 16'sd 26955 * $signed(input_fmap_18[23:16]) +
	 16'sd 17590 * $signed(input_fmap_18[31:24]) +
	 16'sd 20251 * $signed(input_fmap_18[39:32]) +
	 15'sd 15245 * $signed(input_fmap_18[47:40]) +
	 14'sd 7890 * $signed(input_fmap_18[55:48]) +
	 16'sd 28245 * $signed(input_fmap_18[63:56]) +
	 15'sd 8861 * $signed(input_fmap_18[71:64]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 16'sd 21600 * $signed(input_fmap_19[7:0]) +
	 15'sd 9542 * $signed(input_fmap_19[15:8]) +
	 15'sd 15248 * $signed(input_fmap_19[23:16]) +
	 16'sd 20449 * $signed(input_fmap_19[31:24]) +
	 14'sd 7090 * $signed(input_fmap_19[39:32]) +
	 15'sd 10149 * $signed(input_fmap_19[47:40]) +
	 16'sd 29192 * $signed(input_fmap_19[55:48]) +
	 11'sd 886 * $signed(input_fmap_19[63:56]) +
	 16'sd 32173 * $signed(input_fmap_19[71:64]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 14'sd 6860 * $signed(input_fmap_20[7:0]) +
	 16'sd 18109 * $signed(input_fmap_20[15:8]) +
	 13'sd 2928 * $signed(input_fmap_20[23:16]) +
	 15'sd 13068 * $signed(input_fmap_20[31:24]) +
	 16'sd 17338 * $signed(input_fmap_20[39:32]) +
	 15'sd 8274 * $signed(input_fmap_20[47:40]) +
	 14'sd 7478 * $signed(input_fmap_20[55:48]) +
	 16'sd 16924 * $signed(input_fmap_20[63:56]) +
	 16'sd 17639 * $signed(input_fmap_20[71:64]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 16'sd 16475 * $signed(input_fmap_21[7:0]) +
	 15'sd 14548 * $signed(input_fmap_21[15:8]) +
	 15'sd 13813 * $signed(input_fmap_21[23:16]) +
	 12'sd 1610 * $signed(input_fmap_21[31:24]) +
	 11'sd 991 * $signed(input_fmap_21[39:32]) +
	 15'sd 13257 * $signed(input_fmap_21[47:40]) +
	 13'sd 2716 * $signed(input_fmap_21[55:48]) +
	 15'sd 15339 * $signed(input_fmap_21[63:56]) +
	 14'sd 4438 * $signed(input_fmap_21[71:64]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 16'sd 24916 * $signed(input_fmap_22[7:0]) +
	 11'sd 987 * $signed(input_fmap_22[15:8]) +
	 14'sd 6732 * $signed(input_fmap_22[23:16]) +
	 14'sd 6263 * $signed(input_fmap_22[31:24]) +
	 14'sd 6972 * $signed(input_fmap_22[39:32]) +
	 15'sd 11359 * $signed(input_fmap_22[47:40]) +
	 14'sd 7095 * $signed(input_fmap_22[55:48]) +
	 16'sd 31255 * $signed(input_fmap_22[63:56]) +
	 16'sd 19498 * $signed(input_fmap_22[71:64]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 15'sd 15526 * $signed(input_fmap_23[7:0]) +
	 13'sd 2562 * $signed(input_fmap_23[15:8]) +
	 14'sd 5919 * $signed(input_fmap_23[23:16]) +
	 14'sd 5107 * $signed(input_fmap_23[31:24]) +
	 16'sd 28357 * $signed(input_fmap_23[39:32]) +
	 14'sd 7498 * $signed(input_fmap_23[47:40]) +
	 15'sd 10348 * $signed(input_fmap_23[55:48]) +
	 15'sd 9550 * $signed(input_fmap_23[63:56]) +
	 15'sd 10202 * $signed(input_fmap_23[71:64]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 16'sd 29211 * $signed(input_fmap_24[7:0]) +
	 16'sd 32006 * $signed(input_fmap_24[15:8]) +
	 15'sd 10761 * $signed(input_fmap_24[23:16]) +
	 14'sd 5252 * $signed(input_fmap_24[31:24]) +
	 16'sd 32469 * $signed(input_fmap_24[39:32]) +
	 12'sd 1464 * $signed(input_fmap_24[47:40]) +
	 16'sd 24728 * $signed(input_fmap_24[55:48]) +
	 16'sd 25757 * $signed(input_fmap_24[63:56]) +
	 14'sd 5880 * $signed(input_fmap_24[71:64]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 15'sd 12999 * $signed(input_fmap_25[7:0]) +
	 16'sd 29971 * $signed(input_fmap_25[15:8]) +
	 9'sd 227 * $signed(input_fmap_25[23:16]) +
	 15'sd 11684 * $signed(input_fmap_25[31:24]) +
	 15'sd 12358 * $signed(input_fmap_25[39:32]) +
	 8'sd 78 * $signed(input_fmap_25[47:40]) +
	 15'sd 9793 * $signed(input_fmap_25[55:48]) +
	 16'sd 19008 * $signed(input_fmap_25[63:56]) +
	 15'sd 9090 * $signed(input_fmap_25[71:64]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 16'sd 32548 * $signed(input_fmap_26[7:0]) +
	 15'sd 8742 * $signed(input_fmap_26[15:8]) +
	 9'sd 242 * $signed(input_fmap_26[23:16]) +
	 16'sd 30179 * $signed(input_fmap_26[31:24]) +
	 16'sd 30762 * $signed(input_fmap_26[39:32]) +
	 14'sd 5456 * $signed(input_fmap_26[47:40]) +
	 14'sd 6596 * $signed(input_fmap_26[55:48]) +
	 15'sd 14371 * $signed(input_fmap_26[63:56]) +
	 14'sd 4730 * $signed(input_fmap_26[71:64]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 15'sd 13291 * $signed(input_fmap_27[7:0]) +
	 16'sd 17593 * $signed(input_fmap_27[15:8]) +
	 16'sd 16765 * $signed(input_fmap_27[23:16]) +
	 16'sd 22266 * $signed(input_fmap_27[31:24]) +
	 16'sd 21601 * $signed(input_fmap_27[39:32]) +
	 16'sd 21358 * $signed(input_fmap_27[47:40]) +
	 16'sd 28927 * $signed(input_fmap_27[55:48]) +
	 11'sd 588 * $signed(input_fmap_27[63:56]) +
	 16'sd 17154 * $signed(input_fmap_27[71:64]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 15'sd 13781 * $signed(input_fmap_28[7:0]) +
	 16'sd 23281 * $signed(input_fmap_28[15:8]) +
	 16'sd 23127 * $signed(input_fmap_28[23:16]) +
	 15'sd 10661 * $signed(input_fmap_28[31:24]) +
	 16'sd 29061 * $signed(input_fmap_28[39:32]) +
	 14'sd 7229 * $signed(input_fmap_28[47:40]) +
	 16'sd 25287 * $signed(input_fmap_28[55:48]) +
	 16'sd 20826 * $signed(input_fmap_28[63:56]) +
	 15'sd 9413 * $signed(input_fmap_28[71:64]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 15'sd 15291 * $signed(input_fmap_29[7:0]) +
	 15'sd 10718 * $signed(input_fmap_29[15:8]) +
	 15'sd 10542 * $signed(input_fmap_29[23:16]) +
	 15'sd 16004 * $signed(input_fmap_29[31:24]) +
	 16'sd 27193 * $signed(input_fmap_29[39:32]) +
	 15'sd 11029 * $signed(input_fmap_29[47:40]) +
	 15'sd 8297 * $signed(input_fmap_29[55:48]) +
	 13'sd 2540 * $signed(input_fmap_29[63:56]) +
	 15'sd 13226 * $signed(input_fmap_29[71:64]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 15'sd 15412 * $signed(input_fmap_30[7:0]) +
	 16'sd 25995 * $signed(input_fmap_30[15:8]) +
	 16'sd 26330 * $signed(input_fmap_30[23:16]) +
	 15'sd 10519 * $signed(input_fmap_30[31:24]) +
	 14'sd 6412 * $signed(input_fmap_30[39:32]) +
	 16'sd 20435 * $signed(input_fmap_30[47:40]) +
	 15'sd 10238 * $signed(input_fmap_30[55:48]) +
	 15'sd 12544 * $signed(input_fmap_30[63:56]) +
	 13'sd 2208 * $signed(input_fmap_30[71:64]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 15'sd 11032 * $signed(input_fmap_31[7:0]) +
	 15'sd 15347 * $signed(input_fmap_31[15:8]) +
	 14'sd 5699 * $signed(input_fmap_31[23:16]) +
	 16'sd 29509 * $signed(input_fmap_31[31:24]) +
	 14'sd 5692 * $signed(input_fmap_31[39:32]) +
	 15'sd 14584 * $signed(input_fmap_31[47:40]) +
	 14'sd 5490 * $signed(input_fmap_31[55:48]) +
	 15'sd 15052 * $signed(input_fmap_31[63:56]) +
	 8'sd 123 * $signed(input_fmap_31[71:64]);

logic signed [31:0] dw_conv_mac_32;
assign dw_conv_mac_32 = 
	 16'sd 23555 * $signed(input_fmap_32[7:0]) +
	 14'sd 5156 * $signed(input_fmap_32[15:8]) +
	 15'sd 14363 * $signed(input_fmap_32[23:16]) +
	 13'sd 2839 * $signed(input_fmap_32[31:24]) +
	 16'sd 18601 * $signed(input_fmap_32[39:32]) +
	 13'sd 4071 * $signed(input_fmap_32[47:40]) +
	 16'sd 28000 * $signed(input_fmap_32[55:48]) +
	 16'sd 24522 * $signed(input_fmap_32[63:56]) +
	 16'sd 32169 * $signed(input_fmap_32[71:64]);

logic signed [31:0] dw_conv_mac_33;
assign dw_conv_mac_33 = 
	 15'sd 13706 * $signed(input_fmap_33[7:0]) +
	 16'sd 28458 * $signed(input_fmap_33[15:8]) +
	 16'sd 26799 * $signed(input_fmap_33[23:16]) +
	 14'sd 6998 * $signed(input_fmap_33[31:24]) +
	 15'sd 14727 * $signed(input_fmap_33[39:32]) +
	 16'sd 31294 * $signed(input_fmap_33[47:40]) +
	 12'sd 1327 * $signed(input_fmap_33[55:48]) +
	 15'sd 12803 * $signed(input_fmap_33[63:56]) +
	 13'sd 3674 * $signed(input_fmap_33[71:64]);

logic signed [31:0] dw_conv_mac_34;
assign dw_conv_mac_34 = 
	 15'sd 15669 * $signed(input_fmap_34[7:0]) +
	 16'sd 28871 * $signed(input_fmap_34[15:8]) +
	 14'sd 7527 * $signed(input_fmap_34[23:16]) +
	 15'sd 15031 * $signed(input_fmap_34[31:24]) +
	 15'sd 12679 * $signed(input_fmap_34[39:32]) +
	 15'sd 12601 * $signed(input_fmap_34[47:40]) +
	 14'sd 4784 * $signed(input_fmap_34[55:48]) +
	 14'sd 7034 * $signed(input_fmap_34[63:56]) +
	 16'sd 20642 * $signed(input_fmap_34[71:64]);

logic signed [31:0] dw_conv_mac_35;
assign dw_conv_mac_35 = 
	 16'sd 31563 * $signed(input_fmap_35[7:0]) +
	 15'sd 11381 * $signed(input_fmap_35[15:8]) +
	 16'sd 31931 * $signed(input_fmap_35[23:16]) +
	 15'sd 11534 * $signed(input_fmap_35[31:24]) +
	 16'sd 17217 * $signed(input_fmap_35[39:32]) +
	 16'sd 22145 * $signed(input_fmap_35[47:40]) +
	 10'sd 469 * $signed(input_fmap_35[55:48]) +
	 15'sd 11023 * $signed(input_fmap_35[63:56]) +
	 12'sd 1352 * $signed(input_fmap_35[71:64]);

logic signed [31:0] dw_conv_mac_36;
assign dw_conv_mac_36 = 
	 15'sd 10918 * $signed(input_fmap_36[7:0]) +
	 16'sd 29066 * $signed(input_fmap_36[15:8]) +
	 16'sd 21201 * $signed(input_fmap_36[23:16]) +
	 13'sd 3475 * $signed(input_fmap_36[31:24]) +
	 14'sd 5747 * $signed(input_fmap_36[39:32]) +
	 10'sd 435 * $signed(input_fmap_36[47:40]) +
	 14'sd 7042 * $signed(input_fmap_36[55:48]) +
	 13'sd 2351 * $signed(input_fmap_36[63:56]) +
	 12'sd 1320 * $signed(input_fmap_36[71:64]);

logic signed [31:0] dw_conv_mac_37;
assign dw_conv_mac_37 = 
	 16'sd 30803 * $signed(input_fmap_37[7:0]) +
	 16'sd 26239 * $signed(input_fmap_37[15:8]) +
	 13'sd 3615 * $signed(input_fmap_37[23:16]) +
	 16'sd 22915 * $signed(input_fmap_37[31:24]) +
	 14'sd 4227 * $signed(input_fmap_37[39:32]) +
	 16'sd 20106 * $signed(input_fmap_37[47:40]) +
	 16'sd 26555 * $signed(input_fmap_37[55:48]) +
	 16'sd 21545 * $signed(input_fmap_37[63:56]) +
	 13'sd 3108 * $signed(input_fmap_37[71:64]);

logic signed [31:0] dw_conv_mac_38;
assign dw_conv_mac_38 = 
	 15'sd 8863 * $signed(input_fmap_38[7:0]) +
	 15'sd 12394 * $signed(input_fmap_38[15:8]) +
	 15'sd 9184 * $signed(input_fmap_38[23:16]) +
	 15'sd 8378 * $signed(input_fmap_38[31:24]) +
	 16'sd 26883 * $signed(input_fmap_38[39:32]) +
	 14'sd 6433 * $signed(input_fmap_38[47:40]) +
	 14'sd 5816 * $signed(input_fmap_38[55:48]) +
	 15'sd 12862 * $signed(input_fmap_38[63:56]) +
	 15'sd 11986 * $signed(input_fmap_38[71:64]);

logic signed [31:0] dw_conv_mac_39;
assign dw_conv_mac_39 = 
	 15'sd 14058 * $signed(input_fmap_39[7:0]) +
	 16'sd 16814 * $signed(input_fmap_39[15:8]) +
	 16'sd 31106 * $signed(input_fmap_39[23:16]) +
	 16'sd 32442 * $signed(input_fmap_39[31:24]) +
	 16'sd 21763 * $signed(input_fmap_39[39:32]) +
	 16'sd 17491 * $signed(input_fmap_39[47:40]) +
	 16'sd 24406 * $signed(input_fmap_39[55:48]) +
	 16'sd 30148 * $signed(input_fmap_39[63:56]) +
	 15'sd 14090 * $signed(input_fmap_39[71:64]);

logic signed [31:0] dw_conv_mac_40;
assign dw_conv_mac_40 = 
	 15'sd 14244 * $signed(input_fmap_40[7:0]) +
	 16'sd 25189 * $signed(input_fmap_40[15:8]) +
	 16'sd 29777 * $signed(input_fmap_40[23:16]) +
	 15'sd 13347 * $signed(input_fmap_40[31:24]) +
	 16'sd 28163 * $signed(input_fmap_40[39:32]) +
	 15'sd 16025 * $signed(input_fmap_40[47:40]) +
	 15'sd 11895 * $signed(input_fmap_40[55:48]) +
	 15'sd 14768 * $signed(input_fmap_40[63:56]) +
	 15'sd 11665 * $signed(input_fmap_40[71:64]);

logic signed [31:0] dw_conv_mac_41;
assign dw_conv_mac_41 = 
	 15'sd 12342 * $signed(input_fmap_41[7:0]) +
	 16'sd 31451 * $signed(input_fmap_41[15:8]) +
	 15'sd 8598 * $signed(input_fmap_41[23:16]) +
	 12'sd 1863 * $signed(input_fmap_41[31:24]) +
	 13'sd 2994 * $signed(input_fmap_41[39:32]) +
	 16'sd 20595 * $signed(input_fmap_41[47:40]) +
	 15'sd 13382 * $signed(input_fmap_41[55:48]) +
	 15'sd 14597 * $signed(input_fmap_41[63:56]) +
	 16'sd 27011 * $signed(input_fmap_41[71:64]);

logic signed [31:0] dw_conv_mac_42;
assign dw_conv_mac_42 = 
	 16'sd 17510 * $signed(input_fmap_42[7:0]) +
	 15'sd 9927 * $signed(input_fmap_42[15:8]) +
	 16'sd 19115 * $signed(input_fmap_42[23:16]) +
	 13'sd 3440 * $signed(input_fmap_42[31:24]) +
	 16'sd 23140 * $signed(input_fmap_42[39:32]) +
	 16'sd 21571 * $signed(input_fmap_42[47:40]) +
	 14'sd 7460 * $signed(input_fmap_42[55:48]) +
	 12'sd 1749 * $signed(input_fmap_42[63:56]) +
	 15'sd 11902 * $signed(input_fmap_42[71:64]);

logic signed [31:0] dw_conv_mac_43;
assign dw_conv_mac_43 = 
	 16'sd 28427 * $signed(input_fmap_43[7:0]) +
	 16'sd 23544 * $signed(input_fmap_43[15:8]) +
	 16'sd 20208 * $signed(input_fmap_43[23:16]) +
	 14'sd 7209 * $signed(input_fmap_43[31:24]) +
	 14'sd 6176 * $signed(input_fmap_43[39:32]) +
	 15'sd 10189 * $signed(input_fmap_43[47:40]) +
	 16'sd 30903 * $signed(input_fmap_43[55:48]) +
	 16'sd 20866 * $signed(input_fmap_43[63:56]) +
	 14'sd 5688 * $signed(input_fmap_43[71:64]);

logic signed [31:0] dw_conv_mac_44;
assign dw_conv_mac_44 = 
	 16'sd 16786 * $signed(input_fmap_44[7:0]) +
	 16'sd 31214 * $signed(input_fmap_44[15:8]) +
	 15'sd 14782 * $signed(input_fmap_44[23:16]) +
	 16'sd 18100 * $signed(input_fmap_44[31:24]) +
	 16'sd 28963 * $signed(input_fmap_44[39:32]) +
	 16'sd 30779 * $signed(input_fmap_44[47:40]) +
	 16'sd 31430 * $signed(input_fmap_44[55:48]) +
	 14'sd 5439 * $signed(input_fmap_44[63:56]) +
	 16'sd 28924 * $signed(input_fmap_44[71:64]);

logic signed [31:0] dw_conv_mac_45;
assign dw_conv_mac_45 = 
	 16'sd 28332 * $signed(input_fmap_45[7:0]) +
	 16'sd 23217 * $signed(input_fmap_45[15:8]) +
	 13'sd 3283 * $signed(input_fmap_45[23:16]) +
	 15'sd 13425 * $signed(input_fmap_45[31:24]) +
	 16'sd 28254 * $signed(input_fmap_45[39:32]) +
	 15'sd 11139 * $signed(input_fmap_45[47:40]) +
	 16'sd 25953 * $signed(input_fmap_45[55:48]) +
	 16'sd 27315 * $signed(input_fmap_45[63:56]) +
	 15'sd 8619 * $signed(input_fmap_45[71:64]);

logic signed [31:0] dw_conv_mac_46;
assign dw_conv_mac_46 = 
	 16'sd 25824 * $signed(input_fmap_46[7:0]) +
	 15'sd 15325 * $signed(input_fmap_46[15:8]) +
	 16'sd 25883 * $signed(input_fmap_46[23:16]) +
	 16'sd 18650 * $signed(input_fmap_46[31:24]) +
	 16'sd 25213 * $signed(input_fmap_46[39:32]) +
	 16'sd 21179 * $signed(input_fmap_46[47:40]) +
	 15'sd 11478 * $signed(input_fmap_46[55:48]) +
	 16'sd 31159 * $signed(input_fmap_46[63:56]) +
	 15'sd 10441 * $signed(input_fmap_46[71:64]);

logic signed [31:0] dw_conv_mac_47;
assign dw_conv_mac_47 = 
	 15'sd 12932 * $signed(input_fmap_47[7:0]) +
	 16'sd 27135 * $signed(input_fmap_47[15:8]) +
	 14'sd 7335 * $signed(input_fmap_47[23:16]) +
	 16'sd 22882 * $signed(input_fmap_47[31:24]) +
	 15'sd 13004 * $signed(input_fmap_47[39:32]) +
	 16'sd 24817 * $signed(input_fmap_47[47:40]) +
	 15'sd 11602 * $signed(input_fmap_47[55:48]) +
	 15'sd 8349 * $signed(input_fmap_47[63:56]) +
	 16'sd 25729 * $signed(input_fmap_47[71:64]);

logic signed [31:0] dw_conv_mac_48;
assign dw_conv_mac_48 = 
	 16'sd 27491 * $signed(input_fmap_48[7:0]) +
	 16'sd 31316 * $signed(input_fmap_48[15:8]) +
	 16'sd 23184 * $signed(input_fmap_48[23:16]) +
	 16'sd 21703 * $signed(input_fmap_48[31:24]) +
	 16'sd 17427 * $signed(input_fmap_48[39:32]) +
	 16'sd 17767 * $signed(input_fmap_48[47:40]) +
	 16'sd 16659 * $signed(input_fmap_48[55:48]) +
	 16'sd 21526 * $signed(input_fmap_48[63:56]) +
	 14'sd 4884 * $signed(input_fmap_48[71:64]);

logic signed [31:0] dw_conv_mac_49;
assign dw_conv_mac_49 = 
	 15'sd 8382 * $signed(input_fmap_49[7:0]) +
	 15'sd 9381 * $signed(input_fmap_49[15:8]) +
	 15'sd 9544 * $signed(input_fmap_49[23:16]) +
	 15'sd 15460 * $signed(input_fmap_49[31:24]) +
	 16'sd 24481 * $signed(input_fmap_49[39:32]) +
	 15'sd 14034 * $signed(input_fmap_49[47:40]) +
	 16'sd 26688 * $signed(input_fmap_49[55:48]) +
	 16'sd 24247 * $signed(input_fmap_49[63:56]) +
	 16'sd 29942 * $signed(input_fmap_49[71:64]);

logic signed [31:0] dw_conv_mac_50;
assign dw_conv_mac_50 = 
	 15'sd 12950 * $signed(input_fmap_50[7:0]) +
	 15'sd 12324 * $signed(input_fmap_50[15:8]) +
	 15'sd 8325 * $signed(input_fmap_50[23:16]) +
	 16'sd 22004 * $signed(input_fmap_50[31:24]) +
	 16'sd 24271 * $signed(input_fmap_50[39:32]) +
	 16'sd 19799 * $signed(input_fmap_50[47:40]) +
	 15'sd 13711 * $signed(input_fmap_50[55:48]) +
	 9'sd 217 * $signed(input_fmap_50[63:56]) +
	 15'sd 15494 * $signed(input_fmap_50[71:64]);

logic signed [31:0] dw_conv_mac_51;
assign dw_conv_mac_51 = 
	 15'sd 9000 * $signed(input_fmap_51[7:0]) +
	 12'sd 1751 * $signed(input_fmap_51[15:8]) +
	 15'sd 8334 * $signed(input_fmap_51[23:16]) +
	 16'sd 23196 * $signed(input_fmap_51[31:24]) +
	 15'sd 14438 * $signed(input_fmap_51[39:32]) +
	 16'sd 19700 * $signed(input_fmap_51[47:40]) +
	 16'sd 30731 * $signed(input_fmap_51[55:48]) +
	 16'sd 31325 * $signed(input_fmap_51[63:56]) +
	 14'sd 6744 * $signed(input_fmap_51[71:64]);

logic signed [31:0] dw_conv_mac_52;
assign dw_conv_mac_52 = 
	 16'sd 29176 * $signed(input_fmap_52[7:0]) +
	 16'sd 19712 * $signed(input_fmap_52[15:8]) +
	 15'sd 9068 * $signed(input_fmap_52[23:16]) +
	 16'sd 31845 * $signed(input_fmap_52[31:24]) +
	 15'sd 16369 * $signed(input_fmap_52[39:32]) +
	 16'sd 26500 * $signed(input_fmap_52[47:40]) +
	 16'sd 25385 * $signed(input_fmap_52[55:48]) +
	 14'sd 7377 * $signed(input_fmap_52[63:56]) +
	 14'sd 6884 * $signed(input_fmap_52[71:64]);

logic signed [31:0] dw_conv_mac_53;
assign dw_conv_mac_53 = 
	 16'sd 24945 * $signed(input_fmap_53[7:0]) +
	 15'sd 11112 * $signed(input_fmap_53[15:8]) +
	 14'sd 7590 * $signed(input_fmap_53[23:16]) +
	 11'sd 960 * $signed(input_fmap_53[31:24]) +
	 16'sd 19899 * $signed(input_fmap_53[39:32]) +
	 14'sd 5323 * $signed(input_fmap_53[47:40]) +
	 16'sd 27073 * $signed(input_fmap_53[55:48]) +
	 16'sd 24477 * $signed(input_fmap_53[63:56]) +
	 16'sd 30046 * $signed(input_fmap_53[71:64]);

logic signed [31:0] dw_conv_mac_54;
assign dw_conv_mac_54 = 
	 16'sd 29528 * $signed(input_fmap_54[7:0]) +
	 14'sd 5908 * $signed(input_fmap_54[15:8]) +
	 15'sd 9848 * $signed(input_fmap_54[23:16]) +
	 16'sd 30530 * $signed(input_fmap_54[31:24]) +
	 16'sd 28000 * $signed(input_fmap_54[39:32]) +
	 16'sd 29291 * $signed(input_fmap_54[47:40]) +
	 16'sd 30153 * $signed(input_fmap_54[55:48]) +
	 16'sd 21374 * $signed(input_fmap_54[63:56]) +
	 16'sd 30205 * $signed(input_fmap_54[71:64]);

logic signed [31:0] dw_conv_mac_55;
assign dw_conv_mac_55 = 
	 15'sd 9528 * $signed(input_fmap_55[7:0]) +
	 15'sd 10660 * $signed(input_fmap_55[15:8]) +
	 13'sd 3683 * $signed(input_fmap_55[23:16]) +
	 12'sd 1805 * $signed(input_fmap_55[31:24]) +
	 15'sd 12258 * $signed(input_fmap_55[39:32]) +
	 10'sd 322 * $signed(input_fmap_55[47:40]) +
	 15'sd 14265 * $signed(input_fmap_55[55:48]) +
	 16'sd 28672 * $signed(input_fmap_55[63:56]) +
	 10'sd 380 * $signed(input_fmap_55[71:64]);

logic signed [31:0] dw_conv_mac_56;
assign dw_conv_mac_56 = 
	 15'sd 9283 * $signed(input_fmap_56[7:0]) +
	 13'sd 3680 * $signed(input_fmap_56[15:8]) +
	 16'sd 17089 * $signed(input_fmap_56[23:16]) +
	 14'sd 6220 * $signed(input_fmap_56[31:24]) +
	 16'sd 18566 * $signed(input_fmap_56[39:32]) +
	 16'sd 21966 * $signed(input_fmap_56[47:40]) +
	 15'sd 9293 * $signed(input_fmap_56[55:48]) +
	 14'sd 4331 * $signed(input_fmap_56[63:56]) +
	 16'sd 22121 * $signed(input_fmap_56[71:64]);

logic signed [31:0] dw_conv_mac_57;
assign dw_conv_mac_57 = 
	 16'sd 19907 * $signed(input_fmap_57[7:0]) +
	 14'sd 6582 * $signed(input_fmap_57[15:8]) +
	 16'sd 27867 * $signed(input_fmap_57[23:16]) +
	 16'sd 26380 * $signed(input_fmap_57[31:24]) +
	 16'sd 27242 * $signed(input_fmap_57[39:32]) +
	 15'sd 13508 * $signed(input_fmap_57[47:40]) +
	 15'sd 13693 * $signed(input_fmap_57[55:48]) +
	 16'sd 31653 * $signed(input_fmap_57[63:56]) +
	 16'sd 20509 * $signed(input_fmap_57[71:64]);

logic signed [31:0] dw_conv_mac_58;
assign dw_conv_mac_58 = 
	 16'sd 16413 * $signed(input_fmap_58[7:0]) +
	 16'sd 22386 * $signed(input_fmap_58[15:8]) +
	 14'sd 5994 * $signed(input_fmap_58[23:16]) +
	 12'sd 1184 * $signed(input_fmap_58[31:24]) +
	 16'sd 24249 * $signed(input_fmap_58[39:32]) +
	 15'sd 10431 * $signed(input_fmap_58[47:40]) +
	 16'sd 27920 * $signed(input_fmap_58[55:48]) +
	 15'sd 9122 * $signed(input_fmap_58[63:56]) +
	 14'sd 7320 * $signed(input_fmap_58[71:64]);

logic signed [31:0] dw_conv_mac_59;
assign dw_conv_mac_59 = 
	 12'sd 1177 * $signed(input_fmap_59[7:0]) +
	 16'sd 27558 * $signed(input_fmap_59[15:8]) +
	 16'sd 22689 * $signed(input_fmap_59[23:16]) +
	 15'sd 13707 * $signed(input_fmap_59[31:24]) +
	 16'sd 16770 * $signed(input_fmap_59[39:32]) +
	 16'sd 28271 * $signed(input_fmap_59[47:40]) +
	 15'sd 13479 * $signed(input_fmap_59[55:48]) +
	 15'sd 10114 * $signed(input_fmap_59[63:56]) +
	 16'sd 19340 * $signed(input_fmap_59[71:64]);

logic signed [31:0] dw_conv_mac_60;
assign dw_conv_mac_60 = 
	 14'sd 7056 * $signed(input_fmap_60[7:0]) +
	 14'sd 4139 * $signed(input_fmap_60[15:8]) +
	 16'sd 25295 * $signed(input_fmap_60[23:16]) +
	 16'sd 19955 * $signed(input_fmap_60[31:24]) +
	 15'sd 14315 * $signed(input_fmap_60[39:32]) +
	 16'sd 31506 * $signed(input_fmap_60[47:40]) +
	 16'sd 26284 * $signed(input_fmap_60[55:48]) +
	 15'sd 11192 * $signed(input_fmap_60[63:56]) +
	 16'sd 25224 * $signed(input_fmap_60[71:64]);

logic signed [31:0] dw_conv_mac_61;
assign dw_conv_mac_61 = 
	 16'sd 28517 * $signed(input_fmap_61[7:0]) +
	 14'sd 7890 * $signed(input_fmap_61[15:8]) +
	 13'sd 3591 * $signed(input_fmap_61[23:16]) +
	 15'sd 12895 * $signed(input_fmap_61[31:24]) +
	 14'sd 5801 * $signed(input_fmap_61[39:32]) +
	 15'sd 12469 * $signed(input_fmap_61[47:40]) +
	 15'sd 8288 * $signed(input_fmap_61[55:48]) +
	 13'sd 3212 * $signed(input_fmap_61[63:56]) +
	 15'sd 10846 * $signed(input_fmap_61[71:64]);

logic signed [31:0] dw_conv_mac_62;
assign dw_conv_mac_62 = 
	 16'sd 22815 * $signed(input_fmap_62[7:0]) +
	 16'sd 21516 * $signed(input_fmap_62[15:8]) +
	 15'sd 15119 * $signed(input_fmap_62[23:16]) +
	 16'sd 25154 * $signed(input_fmap_62[31:24]) +
	 15'sd 9183 * $signed(input_fmap_62[39:32]) +
	 16'sd 28479 * $signed(input_fmap_62[47:40]) +
	 16'sd 28039 * $signed(input_fmap_62[55:48]) +
	 15'sd 13751 * $signed(input_fmap_62[63:56]) +
	 16'sd 25432 * $signed(input_fmap_62[71:64]);

logic signed [31:0] dw_conv_mac_63;
assign dw_conv_mac_63 = 
	 16'sd 17111 * $signed(input_fmap_63[7:0]) +
	 16'sd 20809 * $signed(input_fmap_63[15:8]) +
	 16'sd 20908 * $signed(input_fmap_63[23:16]) +
	 16'sd 16969 * $signed(input_fmap_63[31:24]) +
	 15'sd 13717 * $signed(input_fmap_63[39:32]) +
	 16'sd 30213 * $signed(input_fmap_63[47:40]) +
	 15'sd 13229 * $signed(input_fmap_63[55:48]) +
	 16'sd 23662 * $signed(input_fmap_63[63:56]) +
	 15'sd 14159 * $signed(input_fmap_63[71:64]);

logic signed [31:0] dw_conv_mac_64;
assign dw_conv_mac_64 = 
	 16'sd 30251 * $signed(input_fmap_64[7:0]) +
	 15'sd 11098 * $signed(input_fmap_64[15:8]) +
	 14'sd 7976 * $signed(input_fmap_64[23:16]) +
	 15'sd 12913 * $signed(input_fmap_64[31:24]) +
	 11'sd 725 * $signed(input_fmap_64[39:32]) +
	 15'sd 11033 * $signed(input_fmap_64[47:40]) +
	 15'sd 9075 * $signed(input_fmap_64[55:48]) +
	 16'sd 29845 * $signed(input_fmap_64[63:56]) +
	 16'sd 18068 * $signed(input_fmap_64[71:64]);

logic signed [31:0] dw_conv_mac_65;
assign dw_conv_mac_65 = 
	 14'sd 4120 * $signed(input_fmap_65[7:0]) +
	 16'sd 24306 * $signed(input_fmap_65[15:8]) +
	 16'sd 23039 * $signed(input_fmap_65[23:16]) +
	 15'sd 11839 * $signed(input_fmap_65[31:24]) +
	 12'sd 1485 * $signed(input_fmap_65[39:32]) +
	 14'sd 4482 * $signed(input_fmap_65[47:40]) +
	 16'sd 30968 * $signed(input_fmap_65[55:48]) +
	 16'sd 22502 * $signed(input_fmap_65[63:56]) +
	 16'sd 31364 * $signed(input_fmap_65[71:64]);

logic signed [31:0] dw_conv_mac_66;
assign dw_conv_mac_66 = 
	 12'sd 1350 * $signed(input_fmap_66[7:0]) +
	 15'sd 9009 * $signed(input_fmap_66[15:8]) +
	 16'sd 30698 * $signed(input_fmap_66[23:16]) +
	 16'sd 32114 * $signed(input_fmap_66[31:24]) +
	 12'sd 1688 * $signed(input_fmap_66[39:32]) +
	 15'sd 10833 * $signed(input_fmap_66[47:40]) +
	 16'sd 22028 * $signed(input_fmap_66[55:48]) +
	 12'sd 1207 * $signed(input_fmap_66[63:56]) +
	 16'sd 17637 * $signed(input_fmap_66[71:64]);

logic signed [31:0] dw_conv_mac_67;
assign dw_conv_mac_67 = 
	 16'sd 24770 * $signed(input_fmap_67[7:0]) +
	 16'sd 30463 * $signed(input_fmap_67[15:8]) +
	 15'sd 15784 * $signed(input_fmap_67[23:16]) +
	 15'sd 12369 * $signed(input_fmap_67[31:24]) +
	 14'sd 6642 * $signed(input_fmap_67[39:32]) +
	 14'sd 7826 * $signed(input_fmap_67[47:40]) +
	 15'sd 12414 * $signed(input_fmap_67[55:48]) +
	 15'sd 9009 * $signed(input_fmap_67[63:56]) +
	 14'sd 8189 * $signed(input_fmap_67[71:64]);

logic signed [31:0] dw_conv_mac_68;
assign dw_conv_mac_68 = 
	 15'sd 13409 * $signed(input_fmap_68[7:0]) +
	 13'sd 3423 * $signed(input_fmap_68[15:8]) +
	 12'sd 1203 * $signed(input_fmap_68[23:16]) +
	 14'sd 5332 * $signed(input_fmap_68[31:24]) +
	 14'sd 5665 * $signed(input_fmap_68[39:32]) +
	 14'sd 4376 * $signed(input_fmap_68[47:40]) +
	 16'sd 27498 * $signed(input_fmap_68[55:48]) +
	 16'sd 32197 * $signed(input_fmap_68[63:56]) +
	 15'sd 8634 * $signed(input_fmap_68[71:64]);

logic signed [31:0] dw_conv_mac_69;
assign dw_conv_mac_69 = 
	 16'sd 30079 * $signed(input_fmap_69[7:0]) +
	 16'sd 24415 * $signed(input_fmap_69[15:8]) +
	 15'sd 15591 * $signed(input_fmap_69[23:16]) +
	 15'sd 13437 * $signed(input_fmap_69[31:24]) +
	 14'sd 7723 * $signed(input_fmap_69[39:32]) +
	 16'sd 20092 * $signed(input_fmap_69[47:40]) +
	 15'sd 14928 * $signed(input_fmap_69[55:48]) +
	 16'sd 24258 * $signed(input_fmap_69[63:56]) +
	 16'sd 25799 * $signed(input_fmap_69[71:64]);

logic signed [31:0] dw_conv_mac_70;
assign dw_conv_mac_70 = 
	 16'sd 21627 * $signed(input_fmap_70[7:0]) +
	 16'sd 26212 * $signed(input_fmap_70[15:8]) +
	 16'sd 20428 * $signed(input_fmap_70[23:16]) +
	 15'sd 9289 * $signed(input_fmap_70[31:24]) +
	 16'sd 28440 * $signed(input_fmap_70[39:32]) +
	 16'sd 22751 * $signed(input_fmap_70[47:40]) +
	 15'sd 8998 * $signed(input_fmap_70[55:48]) +
	 16'sd 22826 * $signed(input_fmap_70[63:56]) +
	 16'sd 17380 * $signed(input_fmap_70[71:64]);

logic signed [31:0] dw_conv_mac_71;
assign dw_conv_mac_71 = 
	 15'sd 15050 * $signed(input_fmap_71[7:0]) +
	 16'sd 32112 * $signed(input_fmap_71[15:8]) +
	 16'sd 21706 * $signed(input_fmap_71[23:16]) +
	 16'sd 25469 * $signed(input_fmap_71[31:24]) +
	 9'sd 221 * $signed(input_fmap_71[39:32]) +
	 16'sd 30995 * $signed(input_fmap_71[47:40]) +
	 14'sd 5573 * $signed(input_fmap_71[55:48]) +
	 15'sd 16187 * $signed(input_fmap_71[63:56]) +
	 15'sd 9171 * $signed(input_fmap_71[71:64]);

logic signed [31:0] dw_conv_mac_72;
assign dw_conv_mac_72 = 
	 15'sd 9662 * $signed(input_fmap_72[7:0]) +
	 16'sd 24949 * $signed(input_fmap_72[15:8]) +
	 16'sd 22620 * $signed(input_fmap_72[23:16]) +
	 14'sd 4412 * $signed(input_fmap_72[31:24]) +
	 15'sd 11116 * $signed(input_fmap_72[39:32]) +
	 14'sd 4901 * $signed(input_fmap_72[47:40]) +
	 16'sd 20686 * $signed(input_fmap_72[55:48]) +
	 16'sd 17552 * $signed(input_fmap_72[63:56]) +
	 16'sd 31930 * $signed(input_fmap_72[71:64]);

logic signed [31:0] dw_conv_mac_73;
assign dw_conv_mac_73 = 
	 16'sd 30742 * $signed(input_fmap_73[7:0]) +
	 13'sd 2238 * $signed(input_fmap_73[15:8]) +
	 16'sd 30654 * $signed(input_fmap_73[23:16]) +
	 16'sd 27535 * $signed(input_fmap_73[31:24]) +
	 15'sd 13476 * $signed(input_fmap_73[39:32]) +
	 16'sd 21641 * $signed(input_fmap_73[47:40]) +
	 16'sd 30556 * $signed(input_fmap_73[55:48]) +
	 12'sd 1628 * $signed(input_fmap_73[63:56]) +
	 15'sd 14650 * $signed(input_fmap_73[71:64]);

logic signed [31:0] dw_conv_mac_74;
assign dw_conv_mac_74 = 
	 15'sd 8377 * $signed(input_fmap_74[7:0]) +
	 15'sd 11102 * $signed(input_fmap_74[15:8]) +
	 8'sd 127 * $signed(input_fmap_74[23:16]) +
	 16'sd 31180 * $signed(input_fmap_74[31:24]) +
	 16'sd 16562 * $signed(input_fmap_74[39:32]) +
	 14'sd 7780 * $signed(input_fmap_74[47:40]) +
	 15'sd 11905 * $signed(input_fmap_74[55:48]) +
	 14'sd 7393 * $signed(input_fmap_74[63:56]) +
	 16'sd 25363 * $signed(input_fmap_74[71:64]);

logic signed [31:0] dw_conv_mac_75;
assign dw_conv_mac_75 = 
	 13'sd 2104 * $signed(input_fmap_75[7:0]) +
	 16'sd 24050 * $signed(input_fmap_75[15:8]) +
	 15'sd 11018 * $signed(input_fmap_75[23:16]) +
	 15'sd 13542 * $signed(input_fmap_75[31:24]) +
	 12'sd 1930 * $signed(input_fmap_75[39:32]) +
	 14'sd 6254 * $signed(input_fmap_75[47:40]) +
	 16'sd 28085 * $signed(input_fmap_75[55:48]) +
	 16'sd 25577 * $signed(input_fmap_75[63:56]) +
	 15'sd 8577 * $signed(input_fmap_75[71:64]);

logic signed [31:0] dw_conv_mac_76;
assign dw_conv_mac_76 = 
	 15'sd 10421 * $signed(input_fmap_76[7:0]) +
	 14'sd 7683 * $signed(input_fmap_76[15:8]) +
	 11'sd 822 * $signed(input_fmap_76[23:16]) +
	 16'sd 25167 * $signed(input_fmap_76[31:24]) +
	 13'sd 2524 * $signed(input_fmap_76[39:32]) +
	 16'sd 32141 * $signed(input_fmap_76[47:40]) +
	 16'sd 17077 * $signed(input_fmap_76[55:48]) +
	 16'sd 21823 * $signed(input_fmap_76[63:56]) +
	 14'sd 5461 * $signed(input_fmap_76[71:64]);

logic signed [31:0] dw_conv_mac_77;
assign dw_conv_mac_77 = 
	 15'sd 12118 * $signed(input_fmap_77[7:0]) +
	 14'sd 6237 * $signed(input_fmap_77[15:8]) +
	 16'sd 21385 * $signed(input_fmap_77[23:16]) +
	 13'sd 3308 * $signed(input_fmap_77[31:24]) +
	 16'sd 19340 * $signed(input_fmap_77[39:32]) +
	 14'sd 6272 * $signed(input_fmap_77[47:40]) +
	 16'sd 24712 * $signed(input_fmap_77[55:48]) +
	 15'sd 13012 * $signed(input_fmap_77[63:56]) +
	 12'sd 1539 * $signed(input_fmap_77[71:64]);

logic signed [31:0] dw_conv_mac_78;
assign dw_conv_mac_78 = 
	 16'sd 32287 * $signed(input_fmap_78[7:0]) +
	 16'sd 23585 * $signed(input_fmap_78[15:8]) +
	 16'sd 24132 * $signed(input_fmap_78[23:16]) +
	 16'sd 31354 * $signed(input_fmap_78[31:24]) +
	 15'sd 12948 * $signed(input_fmap_78[39:32]) +
	 15'sd 10884 * $signed(input_fmap_78[47:40]) +
	 16'sd 28496 * $signed(input_fmap_78[55:48]) +
	 14'sd 6634 * $signed(input_fmap_78[63:56]) +
	 16'sd 24533 * $signed(input_fmap_78[71:64]);

logic signed [31:0] dw_conv_mac_79;
assign dw_conv_mac_79 = 
	 15'sd 15078 * $signed(input_fmap_79[7:0]) +
	 15'sd 9806 * $signed(input_fmap_79[15:8]) +
	 16'sd 31020 * $signed(input_fmap_79[23:16]) +
	 12'sd 1110 * $signed(input_fmap_79[31:24]) +
	 16'sd 17585 * $signed(input_fmap_79[39:32]) +
	 16'sd 23566 * $signed(input_fmap_79[47:40]) +
	 16'sd 18377 * $signed(input_fmap_79[55:48]) +
	 16'sd 20630 * $signed(input_fmap_79[63:56]) +
	 15'sd 16324 * $signed(input_fmap_79[71:64]);

logic signed [31:0] dw_conv_mac_80;
assign dw_conv_mac_80 = 
	 16'sd 19574 * $signed(input_fmap_80[7:0]) +
	 15'sd 13193 * $signed(input_fmap_80[15:8]) +
	 16'sd 29846 * $signed(input_fmap_80[23:16]) +
	 16'sd 25347 * $signed(input_fmap_80[31:24]) +
	 15'sd 11811 * $signed(input_fmap_80[39:32]) +
	 16'sd 29645 * $signed(input_fmap_80[47:40]) +
	 16'sd 19370 * $signed(input_fmap_80[55:48]) +
	 15'sd 12209 * $signed(input_fmap_80[63:56]) +
	 15'sd 14401 * $signed(input_fmap_80[71:64]);

logic signed [31:0] dw_conv_mac_81;
assign dw_conv_mac_81 = 
	 14'sd 5326 * $signed(input_fmap_81[7:0]) +
	 16'sd 22000 * $signed(input_fmap_81[15:8]) +
	 16'sd 25118 * $signed(input_fmap_81[23:16]) +
	 16'sd 28836 * $signed(input_fmap_81[31:24]) +
	 16'sd 30994 * $signed(input_fmap_81[39:32]) +
	 16'sd 31144 * $signed(input_fmap_81[47:40]) +
	 16'sd 18343 * $signed(input_fmap_81[55:48]) +
	 16'sd 21505 * $signed(input_fmap_81[63:56]) +
	 14'sd 5126 * $signed(input_fmap_81[71:64]);

logic signed [31:0] dw_conv_mac_82;
assign dw_conv_mac_82 = 
	 14'sd 5235 * $signed(input_fmap_82[7:0]) +
	 15'sd 10793 * $signed(input_fmap_82[15:8]) +
	 16'sd 21976 * $signed(input_fmap_82[23:16]) +
	 15'sd 15460 * $signed(input_fmap_82[31:24]) +
	 16'sd 17595 * $signed(input_fmap_82[39:32]) +
	 16'sd 25030 * $signed(input_fmap_82[47:40]) +
	 16'sd 23237 * $signed(input_fmap_82[55:48]) +
	 16'sd 26429 * $signed(input_fmap_82[63:56]) +
	 16'sd 32095 * $signed(input_fmap_82[71:64]);

logic signed [31:0] dw_conv_mac_83;
assign dw_conv_mac_83 = 
	 15'sd 9131 * $signed(input_fmap_83[7:0]) +
	 16'sd 22760 * $signed(input_fmap_83[15:8]) +
	 15'sd 11515 * $signed(input_fmap_83[23:16]) +
	 16'sd 19285 * $signed(input_fmap_83[31:24]) +
	 15'sd 12319 * $signed(input_fmap_83[39:32]) +
	 16'sd 18363 * $signed(input_fmap_83[47:40]) +
	 15'sd 12169 * $signed(input_fmap_83[55:48]) +
	 16'sd 29224 * $signed(input_fmap_83[63:56]) +
	 14'sd 5680 * $signed(input_fmap_83[71:64]);

logic signed [31:0] dw_conv_mac_84;
assign dw_conv_mac_84 = 
	 14'sd 6371 * $signed(input_fmap_84[7:0]) +
	 16'sd 25562 * $signed(input_fmap_84[15:8]) +
	 14'sd 5782 * $signed(input_fmap_84[23:16]) +
	 16'sd 30586 * $signed(input_fmap_84[31:24]) +
	 16'sd 31186 * $signed(input_fmap_84[39:32]) +
	 10'sd 430 * $signed(input_fmap_84[47:40]) +
	 16'sd 27109 * $signed(input_fmap_84[55:48]) +
	 15'sd 15974 * $signed(input_fmap_84[63:56]) +
	 14'sd 4858 * $signed(input_fmap_84[71:64]);

logic signed [31:0] dw_conv_mac_85;
assign dw_conv_mac_85 = 
	 16'sd 24021 * $signed(input_fmap_85[7:0]) +
	 16'sd 16824 * $signed(input_fmap_85[15:8]) +
	 16'sd 20485 * $signed(input_fmap_85[23:16]) +
	 15'sd 12991 * $signed(input_fmap_85[31:24]) +
	 16'sd 28352 * $signed(input_fmap_85[39:32]) +
	 16'sd 24694 * $signed(input_fmap_85[47:40]) +
	 16'sd 27504 * $signed(input_fmap_85[55:48]) +
	 16'sd 29185 * $signed(input_fmap_85[63:56]) +
	 16'sd 32737 * $signed(input_fmap_85[71:64]);

logic signed [31:0] dw_conv_mac_86;
assign dw_conv_mac_86 = 
	 16'sd 25980 * $signed(input_fmap_86[7:0]) +
	 12'sd 1971 * $signed(input_fmap_86[15:8]) +
	 15'sd 11353 * $signed(input_fmap_86[23:16]) +
	 16'sd 32148 * $signed(input_fmap_86[31:24]) +
	 16'sd 19350 * $signed(input_fmap_86[39:32]) +
	 15'sd 12500 * $signed(input_fmap_86[47:40]) +
	 16'sd 19059 * $signed(input_fmap_86[55:48]) +
	 15'sd 16028 * $signed(input_fmap_86[63:56]) +
	 13'sd 3237 * $signed(input_fmap_86[71:64]);

logic signed [31:0] dw_conv_mac_87;
assign dw_conv_mac_87 = 
	 15'sd 12403 * $signed(input_fmap_87[7:0]) +
	 15'sd 14495 * $signed(input_fmap_87[15:8]) +
	 15'sd 15968 * $signed(input_fmap_87[23:16]) +
	 16'sd 31811 * $signed(input_fmap_87[31:24]) +
	 14'sd 4311 * $signed(input_fmap_87[39:32]) +
	 16'sd 22694 * $signed(input_fmap_87[47:40]) +
	 16'sd 26744 * $signed(input_fmap_87[55:48]) +
	 16'sd 16791 * $signed(input_fmap_87[63:56]) +
	 10'sd 508 * $signed(input_fmap_87[71:64]);

logic signed [31:0] dw_conv_mac_88;
assign dw_conv_mac_88 = 
	 16'sd 31212 * $signed(input_fmap_88[7:0]) +
	 16'sd 32081 * $signed(input_fmap_88[15:8]) +
	 16'sd 18970 * $signed(input_fmap_88[23:16]) +
	 16'sd 24473 * $signed(input_fmap_88[31:24]) +
	 15'sd 11306 * $signed(input_fmap_88[39:32]) +
	 16'sd 19528 * $signed(input_fmap_88[47:40]) +
	 14'sd 4956 * $signed(input_fmap_88[55:48]) +
	 16'sd 28834 * $signed(input_fmap_88[63:56]) +
	 15'sd 14871 * $signed(input_fmap_88[71:64]);

logic signed [31:0] dw_conv_mac_89;
assign dw_conv_mac_89 = 
	 14'sd 7519 * $signed(input_fmap_89[7:0]) +
	 15'sd 10846 * $signed(input_fmap_89[15:8]) +
	 16'sd 19486 * $signed(input_fmap_89[23:16]) +
	 12'sd 1737 * $signed(input_fmap_89[31:24]) +
	 13'sd 3905 * $signed(input_fmap_89[39:32]) +
	 16'sd 26768 * $signed(input_fmap_89[47:40]) +
	 14'sd 7809 * $signed(input_fmap_89[55:48]) +
	 15'sd 13416 * $signed(input_fmap_89[63:56]) +
	 15'sd 12608 * $signed(input_fmap_89[71:64]);

logic signed [31:0] dw_conv_mac_90;
assign dw_conv_mac_90 = 
	 16'sd 17577 * $signed(input_fmap_90[7:0]) +
	 16'sd 20368 * $signed(input_fmap_90[15:8]) +
	 16'sd 31189 * $signed(input_fmap_90[23:16]) +
	 14'sd 5750 * $signed(input_fmap_90[31:24]) +
	 16'sd 19599 * $signed(input_fmap_90[39:32]) +
	 13'sd 3704 * $signed(input_fmap_90[47:40]) +
	 16'sd 19223 * $signed(input_fmap_90[55:48]) +
	 16'sd 29803 * $signed(input_fmap_90[63:56]) +
	 16'sd 22720 * $signed(input_fmap_90[71:64]);

logic signed [31:0] dw_conv_mac_91;
assign dw_conv_mac_91 = 
	 16'sd 21751 * $signed(input_fmap_91[7:0]) +
	 12'sd 2013 * $signed(input_fmap_91[15:8]) +
	 16'sd 24482 * $signed(input_fmap_91[23:16]) +
	 16'sd 31449 * $signed(input_fmap_91[31:24]) +
	 16'sd 32296 * $signed(input_fmap_91[39:32]) +
	 16'sd 29395 * $signed(input_fmap_91[47:40]) +
	 16'sd 25523 * $signed(input_fmap_91[55:48]) +
	 14'sd 7265 * $signed(input_fmap_91[63:56]) +
	 16'sd 32717 * $signed(input_fmap_91[71:64]);

logic signed [31:0] dw_conv_mac_92;
assign dw_conv_mac_92 = 
	 15'sd 8335 * $signed(input_fmap_92[7:0]) +
	 14'sd 6890 * $signed(input_fmap_92[15:8]) +
	 16'sd 27898 * $signed(input_fmap_92[23:16]) +
	 14'sd 7475 * $signed(input_fmap_92[31:24]) +
	 15'sd 12502 * $signed(input_fmap_92[39:32]) +
	 15'sd 8238 * $signed(input_fmap_92[47:40]) +
	 15'sd 13376 * $signed(input_fmap_92[55:48]) +
	 12'sd 1047 * $signed(input_fmap_92[63:56]) +
	 15'sd 11251 * $signed(input_fmap_92[71:64]);

logic signed [31:0] dw_conv_mac_93;
assign dw_conv_mac_93 = 
	 15'sd 11929 * $signed(input_fmap_93[7:0]) +
	 16'sd 25155 * $signed(input_fmap_93[15:8]) +
	 16'sd 19692 * $signed(input_fmap_93[23:16]) +
	 15'sd 13624 * $signed(input_fmap_93[31:24]) +
	 15'sd 15034 * $signed(input_fmap_93[39:32]) +
	 16'sd 27888 * $signed(input_fmap_93[47:40]) +
	 16'sd 28297 * $signed(input_fmap_93[55:48]) +
	 13'sd 3993 * $signed(input_fmap_93[63:56]) +
	 16'sd 17189 * $signed(input_fmap_93[71:64]);

logic signed [31:0] dw_conv_mac_94;
assign dw_conv_mac_94 = 
	 12'sd 1442 * $signed(input_fmap_94[7:0]) +
	 15'sd 11373 * $signed(input_fmap_94[15:8]) +
	 15'sd 14533 * $signed(input_fmap_94[23:16]) +
	 16'sd 27337 * $signed(input_fmap_94[31:24]) +
	 13'sd 3160 * $signed(input_fmap_94[39:32]) +
	 16'sd 23968 * $signed(input_fmap_94[47:40]) +
	 13'sd 3068 * $signed(input_fmap_94[55:48]) +
	 15'sd 14018 * $signed(input_fmap_94[63:56]) +
	 15'sd 8753 * $signed(input_fmap_94[71:64]);

logic signed [31:0] dw_conv_mac_95;
assign dw_conv_mac_95 = 
	 15'sd 14144 * $signed(input_fmap_95[7:0]) +
	 16'sd 20880 * $signed(input_fmap_95[15:8]) +
	 16'sd 17536 * $signed(input_fmap_95[23:16]) +
	 15'sd 15264 * $signed(input_fmap_95[31:24]) +
	 16'sd 23764 * $signed(input_fmap_95[39:32]) +
	 15'sd 10767 * $signed(input_fmap_95[47:40]) +
	 15'sd 12703 * $signed(input_fmap_95[55:48]) +
	 14'sd 4229 * $signed(input_fmap_95[63:56]) +
	 16'sd 18103 * $signed(input_fmap_95[71:64]);

logic signed [31:0] dw_conv_mac_96;
assign dw_conv_mac_96 = 
	 16'sd 24813 * $signed(input_fmap_96[7:0]) +
	 14'sd 4822 * $signed(input_fmap_96[15:8]) +
	 13'sd 2776 * $signed(input_fmap_96[23:16]) +
	 15'sd 15820 * $signed(input_fmap_96[31:24]) +
	 15'sd 11478 * $signed(input_fmap_96[39:32]) +
	 15'sd 10492 * $signed(input_fmap_96[47:40]) +
	 15'sd 12474 * $signed(input_fmap_96[55:48]) +
	 15'sd 14990 * $signed(input_fmap_96[63:56]) +
	 15'sd 11433 * $signed(input_fmap_96[71:64]);

logic signed [31:0] dw_conv_mac_97;
assign dw_conv_mac_97 = 
	 14'sd 6899 * $signed(input_fmap_97[7:0]) +
	 16'sd 23234 * $signed(input_fmap_97[15:8]) +
	 16'sd 31914 * $signed(input_fmap_97[23:16]) +
	 16'sd 29605 * $signed(input_fmap_97[31:24]) +
	 12'sd 1380 * $signed(input_fmap_97[39:32]) +
	 14'sd 7093 * $signed(input_fmap_97[47:40]) +
	 16'sd 20690 * $signed(input_fmap_97[55:48]) +
	 16'sd 22579 * $signed(input_fmap_97[63:56]) +
	 16'sd 17805 * $signed(input_fmap_97[71:64]);

logic signed [31:0] dw_conv_mac_98;
assign dw_conv_mac_98 = 
	 16'sd 17784 * $signed(input_fmap_98[7:0]) +
	 16'sd 23591 * $signed(input_fmap_98[15:8]) +
	 16'sd 32369 * $signed(input_fmap_98[23:16]) +
	 14'sd 5546 * $signed(input_fmap_98[31:24]) +
	 15'sd 13877 * $signed(input_fmap_98[39:32]) +
	 15'sd 15363 * $signed(input_fmap_98[47:40]) +
	 9'sd 176 * $signed(input_fmap_98[55:48]) +
	 15'sd 11632 * $signed(input_fmap_98[63:56]) +
	 15'sd 16205 * $signed(input_fmap_98[71:64]);

logic signed [31:0] dw_conv_mac_99;
assign dw_conv_mac_99 = 
	 16'sd 22123 * $signed(input_fmap_99[7:0]) +
	 16'sd 26011 * $signed(input_fmap_99[15:8]) +
	 16'sd 19565 * $signed(input_fmap_99[23:16]) +
	 13'sd 4009 * $signed(input_fmap_99[31:24]) +
	 14'sd 6655 * $signed(input_fmap_99[39:32]) +
	 12'sd 1632 * $signed(input_fmap_99[47:40]) +
	 15'sd 14328 * $signed(input_fmap_99[55:48]) +
	 15'sd 12151 * $signed(input_fmap_99[63:56]) +
	 16'sd 22647 * $signed(input_fmap_99[71:64]);

logic signed [31:0] dw_conv_mac_100;
assign dw_conv_mac_100 = 
	 14'sd 4637 * $signed(input_fmap_100[7:0]) +
	 15'sd 10984 * $signed(input_fmap_100[15:8]) +
	 15'sd 11550 * $signed(input_fmap_100[23:16]) +
	 15'sd 15294 * $signed(input_fmap_100[31:24]) +
	 15'sd 13594 * $signed(input_fmap_100[39:32]) +
	 16'sd 22627 * $signed(input_fmap_100[47:40]) +
	 16'sd 32263 * $signed(input_fmap_100[55:48]) +
	 16'sd 31797 * $signed(input_fmap_100[63:56]) +
	 16'sd 16645 * $signed(input_fmap_100[71:64]);

logic signed [31:0] dw_conv_mac_101;
assign dw_conv_mac_101 = 
	 15'sd 14879 * $signed(input_fmap_101[7:0]) +
	 15'sd 12011 * $signed(input_fmap_101[15:8]) +
	 16'sd 24017 * $signed(input_fmap_101[23:16]) +
	 16'sd 30780 * $signed(input_fmap_101[31:24]) +
	 15'sd 14240 * $signed(input_fmap_101[39:32]) +
	 15'sd 12270 * $signed(input_fmap_101[47:40]) +
	 16'sd 23505 * $signed(input_fmap_101[55:48]) +
	 15'sd 14088 * $signed(input_fmap_101[63:56]) +
	 9'sd 226 * $signed(input_fmap_101[71:64]);

logic signed [31:0] dw_conv_mac_102;
assign dw_conv_mac_102 = 
	 15'sd 10605 * $signed(input_fmap_102[7:0]) +
	 16'sd 32190 * $signed(input_fmap_102[15:8]) +
	 16'sd 17276 * $signed(input_fmap_102[23:16]) +
	 16'sd 24444 * $signed(input_fmap_102[31:24]) +
	 16'sd 21707 * $signed(input_fmap_102[39:32]) +
	 16'sd 26241 * $signed(input_fmap_102[47:40]) +
	 16'sd 24805 * $signed(input_fmap_102[55:48]) +
	 15'sd 8301 * $signed(input_fmap_102[63:56]) +
	 15'sd 10255 * $signed(input_fmap_102[71:64]);

logic signed [31:0] dw_conv_mac_103;
assign dw_conv_mac_103 = 
	 16'sd 25254 * $signed(input_fmap_103[7:0]) +
	 15'sd 12981 * $signed(input_fmap_103[15:8]) +
	 16'sd 32590 * $signed(input_fmap_103[23:16]) +
	 16'sd 25381 * $signed(input_fmap_103[31:24]) +
	 15'sd 10942 * $signed(input_fmap_103[39:32]) +
	 16'sd 17235 * $signed(input_fmap_103[47:40]) +
	 15'sd 12543 * $signed(input_fmap_103[55:48]) +
	 16'sd 20509 * $signed(input_fmap_103[63:56]) +
	 13'sd 4078 * $signed(input_fmap_103[71:64]);

logic signed [31:0] dw_conv_mac_104;
assign dw_conv_mac_104 = 
	 16'sd 30036 * $signed(input_fmap_104[7:0]) +
	 16'sd 23402 * $signed(input_fmap_104[15:8]) +
	 16'sd 18869 * $signed(input_fmap_104[23:16]) +
	 16'sd 19295 * $signed(input_fmap_104[31:24]) +
	 15'sd 13743 * $signed(input_fmap_104[39:32]) +
	 16'sd 16526 * $signed(input_fmap_104[47:40]) +
	 16'sd 25696 * $signed(input_fmap_104[55:48]) +
	 15'sd 8581 * $signed(input_fmap_104[63:56]) +
	 15'sd 11290 * $signed(input_fmap_104[71:64]);

logic signed [31:0] dw_conv_mac_105;
assign dw_conv_mac_105 = 
	 16'sd 25517 * $signed(input_fmap_105[7:0]) +
	 16'sd 30023 * $signed(input_fmap_105[15:8]) +
	 16'sd 25805 * $signed(input_fmap_105[23:16]) +
	 16'sd 19393 * $signed(input_fmap_105[31:24]) +
	 16'sd 27807 * $signed(input_fmap_105[39:32]) +
	 16'sd 28238 * $signed(input_fmap_105[47:40]) +
	 15'sd 13501 * $signed(input_fmap_105[55:48]) +
	 16'sd 28721 * $signed(input_fmap_105[63:56]) +
	 16'sd 27149 * $signed(input_fmap_105[71:64]);

logic signed [31:0] dw_conv_mac_106;
assign dw_conv_mac_106 = 
	 16'sd 23447 * $signed(input_fmap_106[7:0]) +
	 15'sd 13535 * $signed(input_fmap_106[15:8]) +
	 16'sd 24769 * $signed(input_fmap_106[23:16]) +
	 14'sd 7705 * $signed(input_fmap_106[31:24]) +
	 16'sd 25092 * $signed(input_fmap_106[39:32]) +
	 16'sd 31211 * $signed(input_fmap_106[47:40]) +
	 16'sd 21634 * $signed(input_fmap_106[55:48]) +
	 12'sd 1374 * $signed(input_fmap_106[63:56]) +
	 13'sd 2258 * $signed(input_fmap_106[71:64]);

logic signed [31:0] dw_conv_mac_107;
assign dw_conv_mac_107 = 
	 13'sd 3379 * $signed(input_fmap_107[7:0]) +
	 15'sd 8864 * $signed(input_fmap_107[15:8]) +
	 14'sd 7639 * $signed(input_fmap_107[23:16]) +
	 15'sd 13633 * $signed(input_fmap_107[31:24]) +
	 16'sd 29958 * $signed(input_fmap_107[39:32]) +
	 11'sd 702 * $signed(input_fmap_107[47:40]) +
	 13'sd 2228 * $signed(input_fmap_107[55:48]) +
	 16'sd 26844 * $signed(input_fmap_107[63:56]) +
	 15'sd 10304 * $signed(input_fmap_107[71:64]);

logic signed [31:0] dw_conv_mac_108;
assign dw_conv_mac_108 = 
	 16'sd 20042 * $signed(input_fmap_108[7:0]) +
	 16'sd 21107 * $signed(input_fmap_108[15:8]) +
	 15'sd 11575 * $signed(input_fmap_108[23:16]) +
	 16'sd 24170 * $signed(input_fmap_108[31:24]) +
	 16'sd 22023 * $signed(input_fmap_108[39:32]) +
	 15'sd 11504 * $signed(input_fmap_108[47:40]) +
	 16'sd 29790 * $signed(input_fmap_108[55:48]) +
	 16'sd 30026 * $signed(input_fmap_108[63:56]) +
	 15'sd 10339 * $signed(input_fmap_108[71:64]);

logic signed [31:0] dw_conv_mac_109;
assign dw_conv_mac_109 = 
	 13'sd 2641 * $signed(input_fmap_109[7:0]) +
	 16'sd 19524 * $signed(input_fmap_109[15:8]) +
	 16'sd 29253 * $signed(input_fmap_109[23:16]) +
	 14'sd 6883 * $signed(input_fmap_109[31:24]) +
	 15'sd 9076 * $signed(input_fmap_109[39:32]) +
	 12'sd 1098 * $signed(input_fmap_109[47:40]) +
	 12'sd 1652 * $signed(input_fmap_109[55:48]) +
	 16'sd 17983 * $signed(input_fmap_109[63:56]) +
	 15'sd 9745 * $signed(input_fmap_109[71:64]);

logic signed [31:0] dw_conv_mac_110;
assign dw_conv_mac_110 = 
	 16'sd 18309 * $signed(input_fmap_110[7:0]) +
	 16'sd 28810 * $signed(input_fmap_110[15:8]) +
	 15'sd 10863 * $signed(input_fmap_110[23:16]) +
	 16'sd 31824 * $signed(input_fmap_110[31:24]) +
	 16'sd 23412 * $signed(input_fmap_110[39:32]) +
	 16'sd 17204 * $signed(input_fmap_110[47:40]) +
	 15'sd 13304 * $signed(input_fmap_110[55:48]) +
	 13'sd 3083 * $signed(input_fmap_110[63:56]) +
	 15'sd 8561 * $signed(input_fmap_110[71:64]);

logic signed [31:0] dw_conv_mac_111;
assign dw_conv_mac_111 = 
	 15'sd 8347 * $signed(input_fmap_111[7:0]) +
	 15'sd 13359 * $signed(input_fmap_111[15:8]) +
	 16'sd 28835 * $signed(input_fmap_111[23:16]) +
	 16'sd 22777 * $signed(input_fmap_111[31:24]) +
	 16'sd 28816 * $signed(input_fmap_111[39:32]) +
	 11'sd 695 * $signed(input_fmap_111[47:40]) +
	 15'sd 10184 * $signed(input_fmap_111[55:48]) +
	 16'sd 20649 * $signed(input_fmap_111[63:56]) +
	 16'sd 32548 * $signed(input_fmap_111[71:64]);

logic signed [31:0] dw_conv_mac_112;
assign dw_conv_mac_112 = 
	 16'sd 27094 * $signed(input_fmap_112[7:0]) +
	 15'sd 10967 * $signed(input_fmap_112[15:8]) +
	 16'sd 24268 * $signed(input_fmap_112[23:16]) +
	 12'sd 1027 * $signed(input_fmap_112[31:24]) +
	 16'sd 20248 * $signed(input_fmap_112[39:32]) +
	 14'sd 4933 * $signed(input_fmap_112[47:40]) +
	 16'sd 29557 * $signed(input_fmap_112[55:48]) +
	 16'sd 21238 * $signed(input_fmap_112[63:56]) +
	 13'sd 2794 * $signed(input_fmap_112[71:64]);

logic signed [31:0] dw_conv_mac_113;
assign dw_conv_mac_113 = 
	 16'sd 20722 * $signed(input_fmap_113[7:0]) +
	 15'sd 13577 * $signed(input_fmap_113[15:8]) +
	 16'sd 17225 * $signed(input_fmap_113[23:16]) +
	 14'sd 7944 * $signed(input_fmap_113[31:24]) +
	 15'sd 16160 * $signed(input_fmap_113[39:32]) +
	 15'sd 12123 * $signed(input_fmap_113[47:40]) +
	 16'sd 31352 * $signed(input_fmap_113[55:48]) +
	 16'sd 17874 * $signed(input_fmap_113[63:56]) +
	 16'sd 17712 * $signed(input_fmap_113[71:64]);

logic signed [31:0] dw_conv_mac_114;
assign dw_conv_mac_114 = 
	 16'sd 29506 * $signed(input_fmap_114[7:0]) +
	 16'sd 18406 * $signed(input_fmap_114[15:8]) +
	 13'sd 3328 * $signed(input_fmap_114[23:16]) +
	 14'sd 7566 * $signed(input_fmap_114[31:24]) +
	 15'sd 13808 * $signed(input_fmap_114[39:32]) +
	 16'sd 22786 * $signed(input_fmap_114[47:40]) +
	 15'sd 13027 * $signed(input_fmap_114[55:48]) +
	 16'sd 30148 * $signed(input_fmap_114[63:56]) +
	 15'sd 14952 * $signed(input_fmap_114[71:64]);

logic signed [31:0] dw_conv_mac_115;
assign dw_conv_mac_115 = 
	 16'sd 29674 * $signed(input_fmap_115[7:0]) +
	 15'sd 8941 * $signed(input_fmap_115[15:8]) +
	 14'sd 8181 * $signed(input_fmap_115[23:16]) +
	 16'sd 19838 * $signed(input_fmap_115[31:24]) +
	 11'sd 879 * $signed(input_fmap_115[39:32]) +
	 16'sd 30065 * $signed(input_fmap_115[47:40]) +
	 9'sd 190 * $signed(input_fmap_115[55:48]) +
	 16'sd 19950 * $signed(input_fmap_115[63:56]) +
	 10'sd 394 * $signed(input_fmap_115[71:64]);

logic signed [31:0] dw_conv_mac_116;
assign dw_conv_mac_116 = 
	 16'sd 17220 * $signed(input_fmap_116[7:0]) +
	 16'sd 31372 * $signed(input_fmap_116[15:8]) +
	 16'sd 32330 * $signed(input_fmap_116[23:16]) +
	 15'sd 8222 * $signed(input_fmap_116[31:24]) +
	 14'sd 7563 * $signed(input_fmap_116[39:32]) +
	 16'sd 31930 * $signed(input_fmap_116[47:40]) +
	 16'sd 29793 * $signed(input_fmap_116[55:48]) +
	 16'sd 23867 * $signed(input_fmap_116[63:56]) +
	 15'sd 14806 * $signed(input_fmap_116[71:64]);

logic signed [31:0] dw_conv_mac_117;
assign dw_conv_mac_117 = 
	 13'sd 3224 * $signed(input_fmap_117[7:0]) +
	 15'sd 9400 * $signed(input_fmap_117[15:8]) +
	 15'sd 9357 * $signed(input_fmap_117[23:16]) +
	 15'sd 15892 * $signed(input_fmap_117[31:24]) +
	 15'sd 13408 * $signed(input_fmap_117[39:32]) +
	 16'sd 26106 * $signed(input_fmap_117[47:40]) +
	 14'sd 4470 * $signed(input_fmap_117[55:48]) +
	 16'sd 28221 * $signed(input_fmap_117[63:56]) +
	 16'sd 24163 * $signed(input_fmap_117[71:64]);

logic signed [31:0] dw_conv_mac_118;
assign dw_conv_mac_118 = 
	 15'sd 8630 * $signed(input_fmap_118[7:0]) +
	 14'sd 7348 * $signed(input_fmap_118[15:8]) +
	 13'sd 3693 * $signed(input_fmap_118[23:16]) +
	 11'sd 994 * $signed(input_fmap_118[31:24]) +
	 16'sd 25204 * $signed(input_fmap_118[39:32]) +
	 15'sd 10027 * $signed(input_fmap_118[47:40]) +
	 15'sd 13055 * $signed(input_fmap_118[55:48]) +
	 16'sd 30099 * $signed(input_fmap_118[63:56]) +
	 16'sd 19663 * $signed(input_fmap_118[71:64]);

logic signed [31:0] dw_conv_mac_119;
assign dw_conv_mac_119 = 
	 16'sd 28528 * $signed(input_fmap_119[7:0]) +
	 16'sd 31385 * $signed(input_fmap_119[15:8]) +
	 16'sd 18220 * $signed(input_fmap_119[23:16]) +
	 15'sd 10380 * $signed(input_fmap_119[31:24]) +
	 16'sd 28271 * $signed(input_fmap_119[39:32]) +
	 11'sd 554 * $signed(input_fmap_119[47:40]) +
	 15'sd 12519 * $signed(input_fmap_119[55:48]) +
	 12'sd 1443 * $signed(input_fmap_119[63:56]) +
	 16'sd 17122 * $signed(input_fmap_119[71:64]);

logic signed [31:0] dw_conv_mac_120;
assign dw_conv_mac_120 = 
	 14'sd 4105 * $signed(input_fmap_120[7:0]) +
	 14'sd 5301 * $signed(input_fmap_120[15:8]) +
	 16'sd 16677 * $signed(input_fmap_120[23:16]) +
	 16'sd 18060 * $signed(input_fmap_120[31:24]) +
	 16'sd 16639 * $signed(input_fmap_120[39:32]) +
	 16'sd 17860 * $signed(input_fmap_120[47:40]) +
	 16'sd 22436 * $signed(input_fmap_120[55:48]) +
	 16'sd 23535 * $signed(input_fmap_120[63:56]) +
	 15'sd 12757 * $signed(input_fmap_120[71:64]);

logic signed [31:0] dw_conv_mac_121;
assign dw_conv_mac_121 = 
	 16'sd 28661 * $signed(input_fmap_121[7:0]) +
	 14'sd 7673 * $signed(input_fmap_121[15:8]) +
	 11'sd 922 * $signed(input_fmap_121[23:16]) +
	 13'sd 3541 * $signed(input_fmap_121[31:24]) +
	 14'sd 7951 * $signed(input_fmap_121[39:32]) +
	 16'sd 20362 * $signed(input_fmap_121[47:40]) +
	 16'sd 21636 * $signed(input_fmap_121[55:48]) +
	 16'sd 17789 * $signed(input_fmap_121[63:56]) +
	 15'sd 9729 * $signed(input_fmap_121[71:64]);

logic signed [31:0] dw_conv_mac_122;
assign dw_conv_mac_122 = 
	 16'sd 32547 * $signed(input_fmap_122[7:0]) +
	 14'sd 5641 * $signed(input_fmap_122[15:8]) +
	 16'sd 17167 * $signed(input_fmap_122[23:16]) +
	 16'sd 24388 * $signed(input_fmap_122[31:24]) +
	 14'sd 7527 * $signed(input_fmap_122[39:32]) +
	 13'sd 2518 * $signed(input_fmap_122[47:40]) +
	 11'sd 553 * $signed(input_fmap_122[55:48]) +
	 16'sd 18101 * $signed(input_fmap_122[63:56]) +
	 15'sd 9028 * $signed(input_fmap_122[71:64]);

logic signed [31:0] dw_conv_mac_123;
assign dw_conv_mac_123 = 
	 16'sd 17432 * $signed(input_fmap_123[7:0]) +
	 15'sd 15429 * $signed(input_fmap_123[15:8]) +
	 15'sd 11787 * $signed(input_fmap_123[23:16]) +
	 15'sd 8610 * $signed(input_fmap_123[31:24]) +
	 16'sd 29601 * $signed(input_fmap_123[39:32]) +
	 16'sd 23026 * $signed(input_fmap_123[47:40]) +
	 14'sd 5765 * $signed(input_fmap_123[55:48]) +
	 15'sd 14304 * $signed(input_fmap_123[63:56]) +
	 16'sd 28305 * $signed(input_fmap_123[71:64]);

logic signed [31:0] dw_conv_mac_124;
assign dw_conv_mac_124 = 
	 15'sd 14504 * $signed(input_fmap_124[7:0]) +
	 14'sd 4825 * $signed(input_fmap_124[15:8]) +
	 15'sd 11541 * $signed(input_fmap_124[23:16]) +
	 13'sd 3926 * $signed(input_fmap_124[31:24]) +
	 14'sd 8084 * $signed(input_fmap_124[39:32]) +
	 16'sd 18730 * $signed(input_fmap_124[47:40]) +
	 14'sd 4331 * $signed(input_fmap_124[55:48]) +
	 16'sd 27666 * $signed(input_fmap_124[63:56]) +
	 16'sd 28680 * $signed(input_fmap_124[71:64]);

logic signed [31:0] dw_conv_mac_125;
assign dw_conv_mac_125 = 
	 15'sd 12789 * $signed(input_fmap_125[7:0]) +
	 16'sd 27522 * $signed(input_fmap_125[15:8]) +
	 16'sd 19910 * $signed(input_fmap_125[23:16]) +
	 16'sd 26628 * $signed(input_fmap_125[31:24]) +
	 15'sd 11791 * $signed(input_fmap_125[39:32]) +
	 16'sd 30150 * $signed(input_fmap_125[47:40]) +
	 16'sd 28562 * $signed(input_fmap_125[55:48]) +
	 15'sd 13787 * $signed(input_fmap_125[63:56]) +
	 15'sd 11631 * $signed(input_fmap_125[71:64]);

logic signed [31:0] dw_conv_mac_126;
assign dw_conv_mac_126 = 
	 14'sd 5458 * $signed(input_fmap_126[7:0]) +
	 12'sd 1387 * $signed(input_fmap_126[15:8]) +
	 14'sd 5412 * $signed(input_fmap_126[23:16]) +
	 16'sd 16607 * $signed(input_fmap_126[31:24]) +
	 14'sd 6407 * $signed(input_fmap_126[39:32]) +
	 14'sd 6887 * $signed(input_fmap_126[47:40]) +
	 16'sd 24242 * $signed(input_fmap_126[55:48]) +
	 13'sd 2774 * $signed(input_fmap_126[63:56]) +
	 16'sd 30567 * $signed(input_fmap_126[71:64]);

logic signed [31:0] dw_conv_mac_127;
assign dw_conv_mac_127 = 
	 16'sd 25691 * $signed(input_fmap_127[7:0]) +
	 15'sd 11835 * $signed(input_fmap_127[15:8]) +
	 16'sd 28444 * $signed(input_fmap_127[23:16]) +
	 15'sd 15499 * $signed(input_fmap_127[31:24]) +
	 16'sd 17632 * $signed(input_fmap_127[39:32]) +
	 14'sd 4777 * $signed(input_fmap_127[47:40]) +
	 15'sd 8388 * $signed(input_fmap_127[55:48]) +
	 16'sd 25387 * $signed(input_fmap_127[63:56]) +
	 16'sd 18958 * $signed(input_fmap_127[71:64]);

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
