module conv14_dw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [36864-1:0] input_act,
    output logic [4096-1:0] output_act,
    output logic ready
);

logic [36864-1:0] input_act_ff;
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
logic [143:0] input_fmap_128;
assign input_fmap_128 = input_act_ff[18575:18432];
logic [143:0] input_fmap_129;
assign input_fmap_129 = input_act_ff[18719:18576];
logic [143:0] input_fmap_130;
assign input_fmap_130 = input_act_ff[18863:18720];
logic [143:0] input_fmap_131;
assign input_fmap_131 = input_act_ff[19007:18864];
logic [143:0] input_fmap_132;
assign input_fmap_132 = input_act_ff[19151:19008];
logic [143:0] input_fmap_133;
assign input_fmap_133 = input_act_ff[19295:19152];
logic [143:0] input_fmap_134;
assign input_fmap_134 = input_act_ff[19439:19296];
logic [143:0] input_fmap_135;
assign input_fmap_135 = input_act_ff[19583:19440];
logic [143:0] input_fmap_136;
assign input_fmap_136 = input_act_ff[19727:19584];
logic [143:0] input_fmap_137;
assign input_fmap_137 = input_act_ff[19871:19728];
logic [143:0] input_fmap_138;
assign input_fmap_138 = input_act_ff[20015:19872];
logic [143:0] input_fmap_139;
assign input_fmap_139 = input_act_ff[20159:20016];
logic [143:0] input_fmap_140;
assign input_fmap_140 = input_act_ff[20303:20160];
logic [143:0] input_fmap_141;
assign input_fmap_141 = input_act_ff[20447:20304];
logic [143:0] input_fmap_142;
assign input_fmap_142 = input_act_ff[20591:20448];
logic [143:0] input_fmap_143;
assign input_fmap_143 = input_act_ff[20735:20592];
logic [143:0] input_fmap_144;
assign input_fmap_144 = input_act_ff[20879:20736];
logic [143:0] input_fmap_145;
assign input_fmap_145 = input_act_ff[21023:20880];
logic [143:0] input_fmap_146;
assign input_fmap_146 = input_act_ff[21167:21024];
logic [143:0] input_fmap_147;
assign input_fmap_147 = input_act_ff[21311:21168];
logic [143:0] input_fmap_148;
assign input_fmap_148 = input_act_ff[21455:21312];
logic [143:0] input_fmap_149;
assign input_fmap_149 = input_act_ff[21599:21456];
logic [143:0] input_fmap_150;
assign input_fmap_150 = input_act_ff[21743:21600];
logic [143:0] input_fmap_151;
assign input_fmap_151 = input_act_ff[21887:21744];
logic [143:0] input_fmap_152;
assign input_fmap_152 = input_act_ff[22031:21888];
logic [143:0] input_fmap_153;
assign input_fmap_153 = input_act_ff[22175:22032];
logic [143:0] input_fmap_154;
assign input_fmap_154 = input_act_ff[22319:22176];
logic [143:0] input_fmap_155;
assign input_fmap_155 = input_act_ff[22463:22320];
logic [143:0] input_fmap_156;
assign input_fmap_156 = input_act_ff[22607:22464];
logic [143:0] input_fmap_157;
assign input_fmap_157 = input_act_ff[22751:22608];
logic [143:0] input_fmap_158;
assign input_fmap_158 = input_act_ff[22895:22752];
logic [143:0] input_fmap_159;
assign input_fmap_159 = input_act_ff[23039:22896];
logic [143:0] input_fmap_160;
assign input_fmap_160 = input_act_ff[23183:23040];
logic [143:0] input_fmap_161;
assign input_fmap_161 = input_act_ff[23327:23184];
logic [143:0] input_fmap_162;
assign input_fmap_162 = input_act_ff[23471:23328];
logic [143:0] input_fmap_163;
assign input_fmap_163 = input_act_ff[23615:23472];
logic [143:0] input_fmap_164;
assign input_fmap_164 = input_act_ff[23759:23616];
logic [143:0] input_fmap_165;
assign input_fmap_165 = input_act_ff[23903:23760];
logic [143:0] input_fmap_166;
assign input_fmap_166 = input_act_ff[24047:23904];
logic [143:0] input_fmap_167;
assign input_fmap_167 = input_act_ff[24191:24048];
logic [143:0] input_fmap_168;
assign input_fmap_168 = input_act_ff[24335:24192];
logic [143:0] input_fmap_169;
assign input_fmap_169 = input_act_ff[24479:24336];
logic [143:0] input_fmap_170;
assign input_fmap_170 = input_act_ff[24623:24480];
logic [143:0] input_fmap_171;
assign input_fmap_171 = input_act_ff[24767:24624];
logic [143:0] input_fmap_172;
assign input_fmap_172 = input_act_ff[24911:24768];
logic [143:0] input_fmap_173;
assign input_fmap_173 = input_act_ff[25055:24912];
logic [143:0] input_fmap_174;
assign input_fmap_174 = input_act_ff[25199:25056];
logic [143:0] input_fmap_175;
assign input_fmap_175 = input_act_ff[25343:25200];
logic [143:0] input_fmap_176;
assign input_fmap_176 = input_act_ff[25487:25344];
logic [143:0] input_fmap_177;
assign input_fmap_177 = input_act_ff[25631:25488];
logic [143:0] input_fmap_178;
assign input_fmap_178 = input_act_ff[25775:25632];
logic [143:0] input_fmap_179;
assign input_fmap_179 = input_act_ff[25919:25776];
logic [143:0] input_fmap_180;
assign input_fmap_180 = input_act_ff[26063:25920];
logic [143:0] input_fmap_181;
assign input_fmap_181 = input_act_ff[26207:26064];
logic [143:0] input_fmap_182;
assign input_fmap_182 = input_act_ff[26351:26208];
logic [143:0] input_fmap_183;
assign input_fmap_183 = input_act_ff[26495:26352];
logic [143:0] input_fmap_184;
assign input_fmap_184 = input_act_ff[26639:26496];
logic [143:0] input_fmap_185;
assign input_fmap_185 = input_act_ff[26783:26640];
logic [143:0] input_fmap_186;
assign input_fmap_186 = input_act_ff[26927:26784];
logic [143:0] input_fmap_187;
assign input_fmap_187 = input_act_ff[27071:26928];
logic [143:0] input_fmap_188;
assign input_fmap_188 = input_act_ff[27215:27072];
logic [143:0] input_fmap_189;
assign input_fmap_189 = input_act_ff[27359:27216];
logic [143:0] input_fmap_190;
assign input_fmap_190 = input_act_ff[27503:27360];
logic [143:0] input_fmap_191;
assign input_fmap_191 = input_act_ff[27647:27504];
logic [143:0] input_fmap_192;
assign input_fmap_192 = input_act_ff[27791:27648];
logic [143:0] input_fmap_193;
assign input_fmap_193 = input_act_ff[27935:27792];
logic [143:0] input_fmap_194;
assign input_fmap_194 = input_act_ff[28079:27936];
logic [143:0] input_fmap_195;
assign input_fmap_195 = input_act_ff[28223:28080];
logic [143:0] input_fmap_196;
assign input_fmap_196 = input_act_ff[28367:28224];
logic [143:0] input_fmap_197;
assign input_fmap_197 = input_act_ff[28511:28368];
logic [143:0] input_fmap_198;
assign input_fmap_198 = input_act_ff[28655:28512];
logic [143:0] input_fmap_199;
assign input_fmap_199 = input_act_ff[28799:28656];
logic [143:0] input_fmap_200;
assign input_fmap_200 = input_act_ff[28943:28800];
logic [143:0] input_fmap_201;
assign input_fmap_201 = input_act_ff[29087:28944];
logic [143:0] input_fmap_202;
assign input_fmap_202 = input_act_ff[29231:29088];
logic [143:0] input_fmap_203;
assign input_fmap_203 = input_act_ff[29375:29232];
logic [143:0] input_fmap_204;
assign input_fmap_204 = input_act_ff[29519:29376];
logic [143:0] input_fmap_205;
assign input_fmap_205 = input_act_ff[29663:29520];
logic [143:0] input_fmap_206;
assign input_fmap_206 = input_act_ff[29807:29664];
logic [143:0] input_fmap_207;
assign input_fmap_207 = input_act_ff[29951:29808];
logic [143:0] input_fmap_208;
assign input_fmap_208 = input_act_ff[30095:29952];
logic [143:0] input_fmap_209;
assign input_fmap_209 = input_act_ff[30239:30096];
logic [143:0] input_fmap_210;
assign input_fmap_210 = input_act_ff[30383:30240];
logic [143:0] input_fmap_211;
assign input_fmap_211 = input_act_ff[30527:30384];
logic [143:0] input_fmap_212;
assign input_fmap_212 = input_act_ff[30671:30528];
logic [143:0] input_fmap_213;
assign input_fmap_213 = input_act_ff[30815:30672];
logic [143:0] input_fmap_214;
assign input_fmap_214 = input_act_ff[30959:30816];
logic [143:0] input_fmap_215;
assign input_fmap_215 = input_act_ff[31103:30960];
logic [143:0] input_fmap_216;
assign input_fmap_216 = input_act_ff[31247:31104];
logic [143:0] input_fmap_217;
assign input_fmap_217 = input_act_ff[31391:31248];
logic [143:0] input_fmap_218;
assign input_fmap_218 = input_act_ff[31535:31392];
logic [143:0] input_fmap_219;
assign input_fmap_219 = input_act_ff[31679:31536];
logic [143:0] input_fmap_220;
assign input_fmap_220 = input_act_ff[31823:31680];
logic [143:0] input_fmap_221;
assign input_fmap_221 = input_act_ff[31967:31824];
logic [143:0] input_fmap_222;
assign input_fmap_222 = input_act_ff[32111:31968];
logic [143:0] input_fmap_223;
assign input_fmap_223 = input_act_ff[32255:32112];
logic [143:0] input_fmap_224;
assign input_fmap_224 = input_act_ff[32399:32256];
logic [143:0] input_fmap_225;
assign input_fmap_225 = input_act_ff[32543:32400];
logic [143:0] input_fmap_226;
assign input_fmap_226 = input_act_ff[32687:32544];
logic [143:0] input_fmap_227;
assign input_fmap_227 = input_act_ff[32831:32688];
logic [143:0] input_fmap_228;
assign input_fmap_228 = input_act_ff[32975:32832];
logic [143:0] input_fmap_229;
assign input_fmap_229 = input_act_ff[33119:32976];
logic [143:0] input_fmap_230;
assign input_fmap_230 = input_act_ff[33263:33120];
logic [143:0] input_fmap_231;
assign input_fmap_231 = input_act_ff[33407:33264];
logic [143:0] input_fmap_232;
assign input_fmap_232 = input_act_ff[33551:33408];
logic [143:0] input_fmap_233;
assign input_fmap_233 = input_act_ff[33695:33552];
logic [143:0] input_fmap_234;
assign input_fmap_234 = input_act_ff[33839:33696];
logic [143:0] input_fmap_235;
assign input_fmap_235 = input_act_ff[33983:33840];
logic [143:0] input_fmap_236;
assign input_fmap_236 = input_act_ff[34127:33984];
logic [143:0] input_fmap_237;
assign input_fmap_237 = input_act_ff[34271:34128];
logic [143:0] input_fmap_238;
assign input_fmap_238 = input_act_ff[34415:34272];
logic [143:0] input_fmap_239;
assign input_fmap_239 = input_act_ff[34559:34416];
logic [143:0] input_fmap_240;
assign input_fmap_240 = input_act_ff[34703:34560];
logic [143:0] input_fmap_241;
assign input_fmap_241 = input_act_ff[34847:34704];
logic [143:0] input_fmap_242;
assign input_fmap_242 = input_act_ff[34991:34848];
logic [143:0] input_fmap_243;
assign input_fmap_243 = input_act_ff[35135:34992];
logic [143:0] input_fmap_244;
assign input_fmap_244 = input_act_ff[35279:35136];
logic [143:0] input_fmap_245;
assign input_fmap_245 = input_act_ff[35423:35280];
logic [143:0] input_fmap_246;
assign input_fmap_246 = input_act_ff[35567:35424];
logic [143:0] input_fmap_247;
assign input_fmap_247 = input_act_ff[35711:35568];
logic [143:0] input_fmap_248;
assign input_fmap_248 = input_act_ff[35855:35712];
logic [143:0] input_fmap_249;
assign input_fmap_249 = input_act_ff[35999:35856];
logic [143:0] input_fmap_250;
assign input_fmap_250 = input_act_ff[36143:36000];
logic [143:0] input_fmap_251;
assign input_fmap_251 = input_act_ff[36287:36144];
logic [143:0] input_fmap_252;
assign input_fmap_252 = input_act_ff[36431:36288];
logic [143:0] input_fmap_253;
assign input_fmap_253 = input_act_ff[36575:36432];
logic [143:0] input_fmap_254;
assign input_fmap_254 = input_act_ff[36719:36576];
logic [143:0] input_fmap_255;
assign input_fmap_255 = input_act_ff[36863:36720];

logic signed [31:0] dw_conv_mac_0;
assign dw_conv_mac_0 = 
	 16'sd 29345 * $signed(input_fmap_0[15:0]) +
	 16'sd 17192 * $signed(input_fmap_0[31:16]) +
	 16'sd 16540 * $signed(input_fmap_0[47:32]) +
	 14'sd 4254 * $signed(input_fmap_0[63:48]) +
	 16'sd 29931 * $signed(input_fmap_0[79:64]) +
	 15'sd 11864 * $signed(input_fmap_0[95:80]) +
	 16'sd 22662 * $signed(input_fmap_0[111:96]) +
	 15'sd 10057 * $signed(input_fmap_0[127:112]) +
	 15'sd 10430 * $signed(input_fmap_0[143:128]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 16'sd 19002 * $signed(input_fmap_1[15:0]) +
	 16'sd 29039 * $signed(input_fmap_1[31:16]) +
	 16'sd 32607 * $signed(input_fmap_1[47:32]) +
	 15'sd 9730 * $signed(input_fmap_1[63:48]) +
	 16'sd 17845 * $signed(input_fmap_1[79:64]) +
	 16'sd 23066 * $signed(input_fmap_1[95:80]) +
	 16'sd 19306 * $signed(input_fmap_1[111:96]) +
	 13'sd 2755 * $signed(input_fmap_1[127:112]) +
	 14'sd 6330 * $signed(input_fmap_1[143:128]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 16'sd 17142 * $signed(input_fmap_2[15:0]) +
	 16'sd 25844 * $signed(input_fmap_2[31:16]) +
	 14'sd 8140 * $signed(input_fmap_2[47:32]) +
	 16'sd 30993 * $signed(input_fmap_2[63:48]) +
	 16'sd 16706 * $signed(input_fmap_2[79:64]) +
	 16'sd 16424 * $signed(input_fmap_2[95:80]) +
	 13'sd 2208 * $signed(input_fmap_2[111:96]) +
	 16'sd 29549 * $signed(input_fmap_2[127:112]) +
	 15'sd 12829 * $signed(input_fmap_2[143:128]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 15'sd 9751 * $signed(input_fmap_3[15:0]) +
	 16'sd 29122 * $signed(input_fmap_3[31:16]) +
	 16'sd 27490 * $signed(input_fmap_3[47:32]) +
	 16'sd 23277 * $signed(input_fmap_3[63:48]) +
	 15'sd 11633 * $signed(input_fmap_3[79:64]) +
	 12'sd 1379 * $signed(input_fmap_3[95:80]) +
	 16'sd 30411 * $signed(input_fmap_3[111:96]) +
	 13'sd 2227 * $signed(input_fmap_3[127:112]) +
	 13'sd 4033 * $signed(input_fmap_3[143:128]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 10'sd 474 * $signed(input_fmap_4[15:0]) +
	 16'sd 21038 * $signed(input_fmap_4[31:16]) +
	 16'sd 23051 * $signed(input_fmap_4[47:32]) +
	 15'sd 11131 * $signed(input_fmap_4[63:48]) +
	 16'sd 18863 * $signed(input_fmap_4[79:64]) +
	 15'sd 11321 * $signed(input_fmap_4[95:80]) +
	 16'sd 21921 * $signed(input_fmap_4[111:96]) +
	 14'sd 4630 * $signed(input_fmap_4[127:112]) +
	 15'sd 15329 * $signed(input_fmap_4[143:128]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 11'sd 805 * $signed(input_fmap_5[15:0]) +
	 16'sd 20922 * $signed(input_fmap_5[31:16]) +
	 16'sd 20000 * $signed(input_fmap_5[47:32]) +
	 14'sd 7710 * $signed(input_fmap_5[63:48]) +
	 15'sd 8255 * $signed(input_fmap_5[79:64]) +
	 15'sd 14003 * $signed(input_fmap_5[95:80]) +
	 13'sd 4006 * $signed(input_fmap_5[111:96]) +
	 14'sd 7869 * $signed(input_fmap_5[127:112]) +
	 16'sd 23616 * $signed(input_fmap_5[143:128]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 13'sd 2103 * $signed(input_fmap_6[15:0]) +
	 16'sd 16759 * $signed(input_fmap_6[31:16]) +
	 16'sd 22732 * $signed(input_fmap_6[47:32]) +
	 16'sd 19736 * $signed(input_fmap_6[63:48]) +
	 15'sd 10775 * $signed(input_fmap_6[79:64]) +
	 16'sd 25091 * $signed(input_fmap_6[95:80]) +
	 15'sd 9396 * $signed(input_fmap_6[111:96]) +
	 13'sd 3351 * $signed(input_fmap_6[127:112]) +
	 14'sd 4604 * $signed(input_fmap_6[143:128]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 16'sd 18820 * $signed(input_fmap_7[15:0]) +
	 11'sd 807 * $signed(input_fmap_7[31:16]) +
	 16'sd 28241 * $signed(input_fmap_7[47:32]) +
	 15'sd 15605 * $signed(input_fmap_7[63:48]) +
	 16'sd 30143 * $signed(input_fmap_7[79:64]) +
	 15'sd 12910 * $signed(input_fmap_7[95:80]) +
	 15'sd 13515 * $signed(input_fmap_7[111:96]) +
	 16'sd 19044 * $signed(input_fmap_7[127:112]) +
	 16'sd 29273 * $signed(input_fmap_7[143:128]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 15'sd 16206 * $signed(input_fmap_8[15:0]) +
	 16'sd 17206 * $signed(input_fmap_8[31:16]) +
	 15'sd 10605 * $signed(input_fmap_8[47:32]) +
	 16'sd 24213 * $signed(input_fmap_8[63:48]) +
	 12'sd 1814 * $signed(input_fmap_8[79:64]) +
	 16'sd 23938 * $signed(input_fmap_8[95:80]) +
	 15'sd 15253 * $signed(input_fmap_8[111:96]) +
	 15'sd 8917 * $signed(input_fmap_8[127:112]) +
	 14'sd 7347 * $signed(input_fmap_8[143:128]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 15'sd 12013 * $signed(input_fmap_9[15:0]) +
	 15'sd 9759 * $signed(input_fmap_9[31:16]) +
	 16'sd 21894 * $signed(input_fmap_9[47:32]) +
	 16'sd 16930 * $signed(input_fmap_9[63:48]) +
	 13'sd 4095 * $signed(input_fmap_9[79:64]) +
	 16'sd 32349 * $signed(input_fmap_9[95:80]) +
	 14'sd 6642 * $signed(input_fmap_9[111:96]) +
	 16'sd 20629 * $signed(input_fmap_9[127:112]) +
	 16'sd 19301 * $signed(input_fmap_9[143:128]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 16'sd 18951 * $signed(input_fmap_10[15:0]) +
	 16'sd 28913 * $signed(input_fmap_10[31:16]) +
	 16'sd 21534 * $signed(input_fmap_10[47:32]) +
	 16'sd 30424 * $signed(input_fmap_10[63:48]) +
	 16'sd 22850 * $signed(input_fmap_10[79:64]) +
	 14'sd 5847 * $signed(input_fmap_10[95:80]) +
	 16'sd 26400 * $signed(input_fmap_10[111:96]) +
	 16'sd 26268 * $signed(input_fmap_10[127:112]) +
	 13'sd 3960 * $signed(input_fmap_10[143:128]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 15'sd 14182 * $signed(input_fmap_11[15:0]) +
	 14'sd 7592 * $signed(input_fmap_11[31:16]) +
	 15'sd 15816 * $signed(input_fmap_11[47:32]) +
	 16'sd 29482 * $signed(input_fmap_11[63:48]) +
	 13'sd 3231 * $signed(input_fmap_11[79:64]) +
	 16'sd 17220 * $signed(input_fmap_11[95:80]) +
	 13'sd 2460 * $signed(input_fmap_11[111:96]) +
	 16'sd 26357 * $signed(input_fmap_11[127:112]) +
	 15'sd 8310 * $signed(input_fmap_11[143:128]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 13'sd 3057 * $signed(input_fmap_12[15:0]) +
	 13'sd 3999 * $signed(input_fmap_12[31:16]) +
	 16'sd 18966 * $signed(input_fmap_12[47:32]) +
	 13'sd 3825 * $signed(input_fmap_12[63:48]) +
	 16'sd 27751 * $signed(input_fmap_12[79:64]) +
	 15'sd 13643 * $signed(input_fmap_12[95:80]) +
	 16'sd 21510 * $signed(input_fmap_12[111:96]) +
	 16'sd 29524 * $signed(input_fmap_12[127:112]) +
	 16'sd 26680 * $signed(input_fmap_12[143:128]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 16'sd 20770 * $signed(input_fmap_13[15:0]) +
	 12'sd 1733 * $signed(input_fmap_13[31:16]) +
	 16'sd 32609 * $signed(input_fmap_13[47:32]) +
	 15'sd 15958 * $signed(input_fmap_13[63:48]) +
	 14'sd 6987 * $signed(input_fmap_13[79:64]) +
	 13'sd 3300 * $signed(input_fmap_13[95:80]) +
	 16'sd 29803 * $signed(input_fmap_13[111:96]) +
	 14'sd 5391 * $signed(input_fmap_13[127:112]) +
	 16'sd 24989 * $signed(input_fmap_13[143:128]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 16'sd 19610 * $signed(input_fmap_14[15:0]) +
	 15'sd 12761 * $signed(input_fmap_14[31:16]) +
	 16'sd 16713 * $signed(input_fmap_14[47:32]) +
	 11'sd 566 * $signed(input_fmap_14[63:48]) +
	 15'sd 11757 * $signed(input_fmap_14[79:64]) +
	 14'sd 5970 * $signed(input_fmap_14[95:80]) +
	 16'sd 31496 * $signed(input_fmap_14[111:96]) +
	 15'sd 9713 * $signed(input_fmap_14[127:112]) +
	 16'sd 30381 * $signed(input_fmap_14[143:128]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 16'sd 18247 * $signed(input_fmap_15[15:0]) +
	 14'sd 7803 * $signed(input_fmap_15[31:16]) +
	 16'sd 22081 * $signed(input_fmap_15[47:32]) +
	 16'sd 24029 * $signed(input_fmap_15[63:48]) +
	 14'sd 6618 * $signed(input_fmap_15[79:64]) +
	 13'sd 3662 * $signed(input_fmap_15[95:80]) +
	 14'sd 7364 * $signed(input_fmap_15[111:96]) +
	 16'sd 16452 * $signed(input_fmap_15[127:112]) +
	 15'sd 13626 * $signed(input_fmap_15[143:128]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 16'sd 28047 * $signed(input_fmap_16[15:0]) +
	 16'sd 21188 * $signed(input_fmap_16[31:16]) +
	 14'sd 4990 * $signed(input_fmap_16[47:32]) +
	 15'sd 14565 * $signed(input_fmap_16[63:48]) +
	 16'sd 21138 * $signed(input_fmap_16[79:64]) +
	 16'sd 32532 * $signed(input_fmap_16[95:80]) +
	 15'sd 13183 * $signed(input_fmap_16[111:96]) +
	 15'sd 13310 * $signed(input_fmap_16[127:112]) +
	 11'sd 918 * $signed(input_fmap_16[143:128]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 16'sd 27912 * $signed(input_fmap_17[15:0]) +
	 13'sd 3351 * $signed(input_fmap_17[31:16]) +
	 16'sd 21419 * $signed(input_fmap_17[47:32]) +
	 16'sd 30889 * $signed(input_fmap_17[63:48]) +
	 16'sd 31122 * $signed(input_fmap_17[79:64]) +
	 14'sd 4390 * $signed(input_fmap_17[95:80]) +
	 15'sd 15999 * $signed(input_fmap_17[111:96]) +
	 16'sd 17417 * $signed(input_fmap_17[127:112]) +
	 15'sd 14356 * $signed(input_fmap_17[143:128]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 16'sd 30878 * $signed(input_fmap_18[15:0]) +
	 14'sd 6108 * $signed(input_fmap_18[31:16]) +
	 16'sd 24520 * $signed(input_fmap_18[47:32]) +
	 14'sd 6645 * $signed(input_fmap_18[63:48]) +
	 15'sd 11402 * $signed(input_fmap_18[79:64]) +
	 16'sd 25000 * $signed(input_fmap_18[95:80]) +
	 15'sd 9543 * $signed(input_fmap_18[111:96]) +
	 15'sd 16222 * $signed(input_fmap_18[127:112]) +
	 12'sd 1374 * $signed(input_fmap_18[143:128]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 16'sd 19445 * $signed(input_fmap_19[15:0]) +
	 16'sd 29914 * $signed(input_fmap_19[31:16]) +
	 16'sd 30328 * $signed(input_fmap_19[47:32]) +
	 16'sd 22619 * $signed(input_fmap_19[63:48]) +
	 16'sd 32702 * $signed(input_fmap_19[79:64]) +
	 14'sd 7027 * $signed(input_fmap_19[95:80]) +
	 16'sd 30325 * $signed(input_fmap_19[111:96]) +
	 16'sd 27104 * $signed(input_fmap_19[127:112]) +
	 14'sd 7329 * $signed(input_fmap_19[143:128]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 11'sd 879 * $signed(input_fmap_20[15:0]) +
	 16'sd 30548 * $signed(input_fmap_20[31:16]) +
	 13'sd 3516 * $signed(input_fmap_20[47:32]) +
	 16'sd 30372 * $signed(input_fmap_20[63:48]) +
	 16'sd 25826 * $signed(input_fmap_20[79:64]) +
	 16'sd 32043 * $signed(input_fmap_20[95:80]) +
	 14'sd 5436 * $signed(input_fmap_20[111:96]) +
	 16'sd 23814 * $signed(input_fmap_20[127:112]) +
	 14'sd 4721 * $signed(input_fmap_20[143:128]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 11'sd 804 * $signed(input_fmap_21[15:0]) +
	 13'sd 3913 * $signed(input_fmap_21[31:16]) +
	 11'sd 977 * $signed(input_fmap_21[47:32]) +
	 16'sd 28576 * $signed(input_fmap_21[63:48]) +
	 16'sd 31546 * $signed(input_fmap_21[79:64]) +
	 13'sd 2735 * $signed(input_fmap_21[95:80]) +
	 12'sd 1872 * $signed(input_fmap_21[111:96]) +
	 15'sd 13946 * $signed(input_fmap_21[127:112]) +
	 15'sd 9326 * $signed(input_fmap_21[143:128]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 15'sd 15821 * $signed(input_fmap_22[15:0]) +
	 16'sd 17351 * $signed(input_fmap_22[31:16]) +
	 16'sd 18433 * $signed(input_fmap_22[47:32]) +
	 16'sd 22586 * $signed(input_fmap_22[63:48]) +
	 16'sd 16858 * $signed(input_fmap_22[79:64]) +
	 16'sd 26403 * $signed(input_fmap_22[95:80]) +
	 16'sd 28022 * $signed(input_fmap_22[111:96]) +
	 15'sd 11844 * $signed(input_fmap_22[127:112]) +
	 16'sd 25170 * $signed(input_fmap_22[143:128]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 16'sd 27248 * $signed(input_fmap_23[15:0]) +
	 16'sd 19646 * $signed(input_fmap_23[31:16]) +
	 15'sd 13264 * $signed(input_fmap_23[47:32]) +
	 16'sd 20499 * $signed(input_fmap_23[63:48]) +
	 16'sd 26977 * $signed(input_fmap_23[79:64]) +
	 16'sd 26042 * $signed(input_fmap_23[95:80]) +
	 15'sd 9407 * $signed(input_fmap_23[111:96]) +
	 16'sd 19475 * $signed(input_fmap_23[127:112]) +
	 15'sd 14250 * $signed(input_fmap_23[143:128]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 16'sd 23828 * $signed(input_fmap_24[15:0]) +
	 9'sd 154 * $signed(input_fmap_24[31:16]) +
	 16'sd 24238 * $signed(input_fmap_24[47:32]) +
	 16'sd 26401 * $signed(input_fmap_24[63:48]) +
	 14'sd 5686 * $signed(input_fmap_24[79:64]) +
	 16'sd 17037 * $signed(input_fmap_24[95:80]) +
	 16'sd 18528 * $signed(input_fmap_24[111:96]) +
	 16'sd 29192 * $signed(input_fmap_24[127:112]) +
	 15'sd 14503 * $signed(input_fmap_24[143:128]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 15'sd 14727 * $signed(input_fmap_25[15:0]) +
	 15'sd 8503 * $signed(input_fmap_25[31:16]) +
	 13'sd 2974 * $signed(input_fmap_25[47:32]) +
	 14'sd 7272 * $signed(input_fmap_25[63:48]) +
	 15'sd 13473 * $signed(input_fmap_25[79:64]) +
	 14'sd 4547 * $signed(input_fmap_25[95:80]) +
	 14'sd 6399 * $signed(input_fmap_25[111:96]) +
	 14'sd 4749 * $signed(input_fmap_25[127:112]) +
	 16'sd 21023 * $signed(input_fmap_25[143:128]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 16'sd 21583 * $signed(input_fmap_26[15:0]) +
	 16'sd 19035 * $signed(input_fmap_26[31:16]) +
	 16'sd 28120 * $signed(input_fmap_26[47:32]) +
	 16'sd 32149 * $signed(input_fmap_26[63:48]) +
	 16'sd 29953 * $signed(input_fmap_26[79:64]) +
	 16'sd 16664 * $signed(input_fmap_26[95:80]) +
	 13'sd 2396 * $signed(input_fmap_26[111:96]) +
	 16'sd 27802 * $signed(input_fmap_26[127:112]) +
	 16'sd 27726 * $signed(input_fmap_26[143:128]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 16'sd 24010 * $signed(input_fmap_27[15:0]) +
	 14'sd 4525 * $signed(input_fmap_27[31:16]) +
	 16'sd 21752 * $signed(input_fmap_27[47:32]) +
	 16'sd 17172 * $signed(input_fmap_27[63:48]) +
	 15'sd 11724 * $signed(input_fmap_27[79:64]) +
	 16'sd 25946 * $signed(input_fmap_27[95:80]) +
	 16'sd 18066 * $signed(input_fmap_27[111:96]) +
	 15'sd 8453 * $signed(input_fmap_27[127:112]) +
	 14'sd 6308 * $signed(input_fmap_27[143:128]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 16'sd 27154 * $signed(input_fmap_28[15:0]) +
	 16'sd 29136 * $signed(input_fmap_28[31:16]) +
	 15'sd 8266 * $signed(input_fmap_28[47:32]) +
	 15'sd 8313 * $signed(input_fmap_28[63:48]) +
	 15'sd 10313 * $signed(input_fmap_28[79:64]) +
	 15'sd 16286 * $signed(input_fmap_28[95:80]) +
	 15'sd 9402 * $signed(input_fmap_28[111:96]) +
	 15'sd 15143 * $signed(input_fmap_28[127:112]) +
	 13'sd 3353 * $signed(input_fmap_28[143:128]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 14'sd 7415 * $signed(input_fmap_29[15:0]) +
	 16'sd 30739 * $signed(input_fmap_29[31:16]) +
	 15'sd 15655 * $signed(input_fmap_29[47:32]) +
	 14'sd 7774 * $signed(input_fmap_29[63:48]) +
	 16'sd 29393 * $signed(input_fmap_29[79:64]) +
	 16'sd 18571 * $signed(input_fmap_29[95:80]) +
	 16'sd 17065 * $signed(input_fmap_29[111:96]) +
	 15'sd 13979 * $signed(input_fmap_29[127:112]) +
	 16'sd 19671 * $signed(input_fmap_29[143:128]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 16'sd 19459 * $signed(input_fmap_30[15:0]) +
	 16'sd 16470 * $signed(input_fmap_30[31:16]) +
	 16'sd 16997 * $signed(input_fmap_30[47:32]) +
	 14'sd 4869 * $signed(input_fmap_30[63:48]) +
	 16'sd 23899 * $signed(input_fmap_30[79:64]) +
	 16'sd 32365 * $signed(input_fmap_30[95:80]) +
	 15'sd 9966 * $signed(input_fmap_30[111:96]) +
	 12'sd 1368 * $signed(input_fmap_30[127:112]) +
	 16'sd 19598 * $signed(input_fmap_30[143:128]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 15'sd 14106 * $signed(input_fmap_31[15:0]) +
	 16'sd 24447 * $signed(input_fmap_31[31:16]) +
	 16'sd 22125 * $signed(input_fmap_31[47:32]) +
	 16'sd 28291 * $signed(input_fmap_31[63:48]) +
	 15'sd 15214 * $signed(input_fmap_31[79:64]) +
	 16'sd 19938 * $signed(input_fmap_31[95:80]) +
	 14'sd 6669 * $signed(input_fmap_31[111:96]) +
	 15'sd 13407 * $signed(input_fmap_31[127:112]) +
	 15'sd 15614 * $signed(input_fmap_31[143:128]);

logic signed [31:0] dw_conv_mac_32;
assign dw_conv_mac_32 = 
	 16'sd 26649 * $signed(input_fmap_32[15:0]) +
	 16'sd 23330 * $signed(input_fmap_32[31:16]) +
	 15'sd 14100 * $signed(input_fmap_32[47:32]) +
	 15'sd 15471 * $signed(input_fmap_32[63:48]) +
	 16'sd 27875 * $signed(input_fmap_32[79:64]) +
	 8'sd 87 * $signed(input_fmap_32[95:80]) +
	 16'sd 20733 * $signed(input_fmap_32[111:96]) +
	 16'sd 24098 * $signed(input_fmap_32[127:112]) +
	 15'sd 15124 * $signed(input_fmap_32[143:128]);

logic signed [31:0] dw_conv_mac_33;
assign dw_conv_mac_33 = 
	 15'sd 12328 * $signed(input_fmap_33[15:0]) +
	 14'sd 5536 * $signed(input_fmap_33[31:16]) +
	 16'sd 19755 * $signed(input_fmap_33[47:32]) +
	 16'sd 24576 * $signed(input_fmap_33[63:48]) +
	 16'sd 25371 * $signed(input_fmap_33[79:64]) +
	 16'sd 20196 * $signed(input_fmap_33[95:80]) +
	 16'sd 21627 * $signed(input_fmap_33[111:96]) +
	 16'sd 26269 * $signed(input_fmap_33[127:112]) +
	 11'sd 820 * $signed(input_fmap_33[143:128]);

logic signed [31:0] dw_conv_mac_34;
assign dw_conv_mac_34 = 
	 16'sd 22946 * $signed(input_fmap_34[15:0]) +
	 15'sd 15188 * $signed(input_fmap_34[31:16]) +
	 15'sd 13283 * $signed(input_fmap_34[47:32]) +
	 14'sd 6988 * $signed(input_fmap_34[63:48]) +
	 14'sd 6435 * $signed(input_fmap_34[79:64]) +
	 16'sd 31005 * $signed(input_fmap_34[95:80]) +
	 15'sd 10798 * $signed(input_fmap_34[111:96]) +
	 14'sd 7697 * $signed(input_fmap_34[127:112]) +
	 16'sd 32009 * $signed(input_fmap_34[143:128]);

logic signed [31:0] dw_conv_mac_35;
assign dw_conv_mac_35 = 
	 16'sd 22979 * $signed(input_fmap_35[15:0]) +
	 14'sd 7704 * $signed(input_fmap_35[31:16]) +
	 13'sd 3686 * $signed(input_fmap_35[47:32]) +
	 16'sd 25026 * $signed(input_fmap_35[63:48]) +
	 15'sd 10347 * $signed(input_fmap_35[79:64]) +
	 14'sd 5254 * $signed(input_fmap_35[95:80]) +
	 16'sd 22250 * $signed(input_fmap_35[111:96]) +
	 16'sd 25297 * $signed(input_fmap_35[127:112]) +
	 16'sd 19926 * $signed(input_fmap_35[143:128]);

logic signed [31:0] dw_conv_mac_36;
assign dw_conv_mac_36 = 
	 16'sd 17261 * $signed(input_fmap_36[15:0]) +
	 16'sd 22603 * $signed(input_fmap_36[31:16]) +
	 16'sd 22983 * $signed(input_fmap_36[47:32]) +
	 16'sd 20672 * $signed(input_fmap_36[63:48]) +
	 16'sd 17847 * $signed(input_fmap_36[79:64]) +
	 12'sd 1709 * $signed(input_fmap_36[95:80]) +
	 16'sd 26780 * $signed(input_fmap_36[111:96]) +
	 16'sd 19497 * $signed(input_fmap_36[127:112]) +
	 13'sd 2189 * $signed(input_fmap_36[143:128]);

logic signed [31:0] dw_conv_mac_37;
assign dw_conv_mac_37 = 
	 15'sd 9363 * $signed(input_fmap_37[15:0]) +
	 7'sd 42 * $signed(input_fmap_37[31:16]) +
	 13'sd 4034 * $signed(input_fmap_37[47:32]) +
	 11'sd 999 * $signed(input_fmap_37[63:48]) +
	 14'sd 4552 * $signed(input_fmap_37[79:64]) +
	 16'sd 29652 * $signed(input_fmap_37[95:80]) +
	 16'sd 21055 * $signed(input_fmap_37[111:96]) +
	 16'sd 27687 * $signed(input_fmap_37[127:112]) +
	 15'sd 13115 * $signed(input_fmap_37[143:128]);

logic signed [31:0] dw_conv_mac_38;
assign dw_conv_mac_38 = 
	 14'sd 4597 * $signed(input_fmap_38[15:0]) +
	 16'sd 29203 * $signed(input_fmap_38[31:16]) +
	 15'sd 14708 * $signed(input_fmap_38[47:32]) +
	 16'sd 31670 * $signed(input_fmap_38[63:48]) +
	 14'sd 4717 * $signed(input_fmap_38[79:64]) +
	 15'sd 10221 * $signed(input_fmap_38[95:80]) +
	 16'sd 16639 * $signed(input_fmap_38[111:96]) +
	 16'sd 22655 * $signed(input_fmap_38[127:112]) +
	 16'sd 32304 * $signed(input_fmap_38[143:128]);

logic signed [31:0] dw_conv_mac_39;
assign dw_conv_mac_39 = 
	 13'sd 2675 * $signed(input_fmap_39[15:0]) +
	 15'sd 13157 * $signed(input_fmap_39[31:16]) +
	 15'sd 15912 * $signed(input_fmap_39[47:32]) +
	 16'sd 28984 * $signed(input_fmap_39[63:48]) +
	 16'sd 26000 * $signed(input_fmap_39[79:64]) +
	 16'sd 17390 * $signed(input_fmap_39[95:80]) +
	 15'sd 8647 * $signed(input_fmap_39[111:96]) +
	 15'sd 11854 * $signed(input_fmap_39[127:112]) +
	 16'sd 26455 * $signed(input_fmap_39[143:128]);

logic signed [31:0] dw_conv_mac_40;
assign dw_conv_mac_40 = 
	 15'sd 8822 * $signed(input_fmap_40[15:0]) +
	 16'sd 32014 * $signed(input_fmap_40[31:16]) +
	 16'sd 23299 * $signed(input_fmap_40[47:32]) +
	 16'sd 29964 * $signed(input_fmap_40[63:48]) +
	 15'sd 15112 * $signed(input_fmap_40[79:64]) +
	 15'sd 9299 * $signed(input_fmap_40[95:80]) +
	 16'sd 16800 * $signed(input_fmap_40[111:96]) +
	 16'sd 24988 * $signed(input_fmap_40[127:112]) +
	 14'sd 7379 * $signed(input_fmap_40[143:128]);

logic signed [31:0] dw_conv_mac_41;
assign dw_conv_mac_41 = 
	 15'sd 9750 * $signed(input_fmap_41[15:0]) +
	 16'sd 21529 * $signed(input_fmap_41[31:16]) +
	 16'sd 24271 * $signed(input_fmap_41[47:32]) +
	 15'sd 14190 * $signed(input_fmap_41[63:48]) +
	 16'sd 21110 * $signed(input_fmap_41[79:64]) +
	 16'sd 21320 * $signed(input_fmap_41[95:80]) +
	 15'sd 13306 * $signed(input_fmap_41[111:96]) +
	 16'sd 26199 * $signed(input_fmap_41[127:112]) +
	 16'sd 18547 * $signed(input_fmap_41[143:128]);

logic signed [31:0] dw_conv_mac_42;
assign dw_conv_mac_42 = 
	 10'sd 398 * $signed(input_fmap_42[15:0]) +
	 12'sd 2028 * $signed(input_fmap_42[31:16]) +
	 15'sd 10108 * $signed(input_fmap_42[47:32]) +
	 16'sd 17781 * $signed(input_fmap_42[63:48]) +
	 13'sd 3050 * $signed(input_fmap_42[79:64]) +
	 14'sd 4274 * $signed(input_fmap_42[95:80]) +
	 15'sd 12829 * $signed(input_fmap_42[111:96]) +
	 16'sd 28298 * $signed(input_fmap_42[127:112]) +
	 13'sd 2525 * $signed(input_fmap_42[143:128]);

logic signed [31:0] dw_conv_mac_43;
assign dw_conv_mac_43 = 
	 14'sd 4104 * $signed(input_fmap_43[15:0]) +
	 15'sd 13980 * $signed(input_fmap_43[31:16]) +
	 16'sd 21969 * $signed(input_fmap_43[47:32]) +
	 16'sd 20750 * $signed(input_fmap_43[63:48]) +
	 16'sd 23749 * $signed(input_fmap_43[79:64]) +
	 16'sd 26262 * $signed(input_fmap_43[95:80]) +
	 16'sd 27916 * $signed(input_fmap_43[111:96]) +
	 16'sd 31067 * $signed(input_fmap_43[127:112]) +
	 16'sd 27878 * $signed(input_fmap_43[143:128]);

logic signed [31:0] dw_conv_mac_44;
assign dw_conv_mac_44 = 
	 16'sd 17922 * $signed(input_fmap_44[15:0]) +
	 14'sd 5565 * $signed(input_fmap_44[31:16]) +
	 15'sd 11464 * $signed(input_fmap_44[47:32]) +
	 15'sd 13894 * $signed(input_fmap_44[63:48]) +
	 16'sd 23954 * $signed(input_fmap_44[79:64]) +
	 13'sd 3310 * $signed(input_fmap_44[95:80]) +
	 14'sd 6890 * $signed(input_fmap_44[111:96]) +
	 16'sd 24595 * $signed(input_fmap_44[127:112]) +
	 16'sd 20396 * $signed(input_fmap_44[143:128]);

logic signed [31:0] dw_conv_mac_45;
assign dw_conv_mac_45 = 
	 16'sd 20397 * $signed(input_fmap_45[15:0]) +
	 15'sd 12083 * $signed(input_fmap_45[31:16]) +
	 16'sd 23681 * $signed(input_fmap_45[47:32]) +
	 15'sd 10295 * $signed(input_fmap_45[63:48]) +
	 16'sd 32559 * $signed(input_fmap_45[79:64]) +
	 16'sd 31340 * $signed(input_fmap_45[95:80]) +
	 16'sd 22112 * $signed(input_fmap_45[111:96]) +
	 16'sd 32147 * $signed(input_fmap_45[127:112]) +
	 15'sd 9698 * $signed(input_fmap_45[143:128]);

logic signed [31:0] dw_conv_mac_46;
assign dw_conv_mac_46 = 
	 16'sd 22075 * $signed(input_fmap_46[15:0]) +
	 15'sd 14085 * $signed(input_fmap_46[31:16]) +
	 13'sd 3299 * $signed(input_fmap_46[47:32]) +
	 16'sd 32080 * $signed(input_fmap_46[63:48]) +
	 15'sd 16153 * $signed(input_fmap_46[79:64]) +
	 15'sd 13002 * $signed(input_fmap_46[95:80]) +
	 15'sd 10770 * $signed(input_fmap_46[111:96]) +
	 15'sd 9208 * $signed(input_fmap_46[127:112]) +
	 14'sd 4422 * $signed(input_fmap_46[143:128]);

logic signed [31:0] dw_conv_mac_47;
assign dw_conv_mac_47 = 
	 15'sd 13078 * $signed(input_fmap_47[15:0]) +
	 14'sd 4316 * $signed(input_fmap_47[31:16]) +
	 16'sd 25470 * $signed(input_fmap_47[47:32]) +
	 16'sd 21131 * $signed(input_fmap_47[63:48]) +
	 16'sd 30306 * $signed(input_fmap_47[79:64]) +
	 12'sd 1370 * $signed(input_fmap_47[95:80]) +
	 14'sd 5629 * $signed(input_fmap_47[111:96]) +
	 14'sd 5189 * $signed(input_fmap_47[127:112]) +
	 16'sd 25085 * $signed(input_fmap_47[143:128]);

logic signed [31:0] dw_conv_mac_48;
assign dw_conv_mac_48 = 
	 13'sd 2562 * $signed(input_fmap_48[15:0]) +
	 15'sd 9097 * $signed(input_fmap_48[31:16]) +
	 14'sd 5062 * $signed(input_fmap_48[47:32]) +
	 16'sd 19663 * $signed(input_fmap_48[63:48]) +
	 16'sd 28346 * $signed(input_fmap_48[79:64]) +
	 15'sd 13151 * $signed(input_fmap_48[95:80]) +
	 16'sd 19736 * $signed(input_fmap_48[111:96]) +
	 15'sd 15950 * $signed(input_fmap_48[127:112]) +
	 14'sd 5902 * $signed(input_fmap_48[143:128]);

logic signed [31:0] dw_conv_mac_49;
assign dw_conv_mac_49 = 
	 13'sd 2273 * $signed(input_fmap_49[15:0]) +
	 16'sd 29737 * $signed(input_fmap_49[31:16]) +
	 16'sd 22526 * $signed(input_fmap_49[47:32]) +
	 16'sd 20797 * $signed(input_fmap_49[63:48]) +
	 15'sd 9462 * $signed(input_fmap_49[79:64]) +
	 16'sd 22769 * $signed(input_fmap_49[95:80]) +
	 15'sd 12422 * $signed(input_fmap_49[111:96]) +
	 16'sd 26748 * $signed(input_fmap_49[127:112]) +
	 16'sd 24444 * $signed(input_fmap_49[143:128]);

logic signed [31:0] dw_conv_mac_50;
assign dw_conv_mac_50 = 
	 16'sd 27649 * $signed(input_fmap_50[15:0]) +
	 15'sd 13013 * $signed(input_fmap_50[31:16]) +
	 15'sd 16369 * $signed(input_fmap_50[47:32]) +
	 16'sd 24347 * $signed(input_fmap_50[63:48]) +
	 15'sd 11111 * $signed(input_fmap_50[79:64]) +
	 16'sd 23371 * $signed(input_fmap_50[95:80]) +
	 11'sd 629 * $signed(input_fmap_50[111:96]) +
	 16'sd 25938 * $signed(input_fmap_50[127:112]) +
	 15'sd 15717 * $signed(input_fmap_50[143:128]);

logic signed [31:0] dw_conv_mac_51;
assign dw_conv_mac_51 = 
	 16'sd 18591 * $signed(input_fmap_51[15:0]) +
	 14'sd 4593 * $signed(input_fmap_51[31:16]) +
	 16'sd 24128 * $signed(input_fmap_51[47:32]) +
	 13'sd 2293 * $signed(input_fmap_51[63:48]) +
	 13'sd 2754 * $signed(input_fmap_51[79:64]) +
	 13'sd 2130 * $signed(input_fmap_51[95:80]) +
	 15'sd 13339 * $signed(input_fmap_51[111:96]) +
	 16'sd 26797 * $signed(input_fmap_51[127:112]) +
	 14'sd 7493 * $signed(input_fmap_51[143:128]);

logic signed [31:0] dw_conv_mac_52;
assign dw_conv_mac_52 = 
	 16'sd 20115 * $signed(input_fmap_52[15:0]) +
	 12'sd 1276 * $signed(input_fmap_52[31:16]) +
	 16'sd 19674 * $signed(input_fmap_52[47:32]) +
	 16'sd 28325 * $signed(input_fmap_52[63:48]) +
	 16'sd 22851 * $signed(input_fmap_52[79:64]) +
	 16'sd 29246 * $signed(input_fmap_52[95:80]) +
	 16'sd 20209 * $signed(input_fmap_52[111:96]) +
	 16'sd 30793 * $signed(input_fmap_52[127:112]) +
	 14'sd 6618 * $signed(input_fmap_52[143:128]);

logic signed [31:0] dw_conv_mac_53;
assign dw_conv_mac_53 = 
	 12'sd 1493 * $signed(input_fmap_53[15:0]) +
	 14'sd 4463 * $signed(input_fmap_53[31:16]) +
	 16'sd 16998 * $signed(input_fmap_53[47:32]) +
	 16'sd 21733 * $signed(input_fmap_53[63:48]) +
	 15'sd 14136 * $signed(input_fmap_53[79:64]) +
	 16'sd 17987 * $signed(input_fmap_53[95:80]) +
	 15'sd 15409 * $signed(input_fmap_53[111:96]) +
	 13'sd 3134 * $signed(input_fmap_53[127:112]) +
	 13'sd 2724 * $signed(input_fmap_53[143:128]);

logic signed [31:0] dw_conv_mac_54;
assign dw_conv_mac_54 = 
	 15'sd 16042 * $signed(input_fmap_54[15:0]) +
	 12'sd 1372 * $signed(input_fmap_54[31:16]) +
	 14'sd 6303 * $signed(input_fmap_54[47:32]) +
	 14'sd 5736 * $signed(input_fmap_54[63:48]) +
	 15'sd 15319 * $signed(input_fmap_54[79:64]) +
	 16'sd 21845 * $signed(input_fmap_54[95:80]) +
	 14'sd 4897 * $signed(input_fmap_54[111:96]) +
	 16'sd 21623 * $signed(input_fmap_54[127:112]) +
	 15'sd 12884 * $signed(input_fmap_54[143:128]);

logic signed [31:0] dw_conv_mac_55;
assign dw_conv_mac_55 = 
	 16'sd 24793 * $signed(input_fmap_55[15:0]) +
	 15'sd 11407 * $signed(input_fmap_55[31:16]) +
	 13'sd 2216 * $signed(input_fmap_55[47:32]) +
	 14'sd 5768 * $signed(input_fmap_55[63:48]) +
	 13'sd 3753 * $signed(input_fmap_55[79:64]) +
	 15'sd 12323 * $signed(input_fmap_55[95:80]) +
	 16'sd 18815 * $signed(input_fmap_55[111:96]) +
	 14'sd 8149 * $signed(input_fmap_55[127:112]) +
	 16'sd 30933 * $signed(input_fmap_55[143:128]);

logic signed [31:0] dw_conv_mac_56;
assign dw_conv_mac_56 = 
	 13'sd 2887 * $signed(input_fmap_56[15:0]) +
	 15'sd 10743 * $signed(input_fmap_56[31:16]) +
	 15'sd 16280 * $signed(input_fmap_56[47:32]) +
	 15'sd 8303 * $signed(input_fmap_56[63:48]) +
	 15'sd 13672 * $signed(input_fmap_56[79:64]) +
	 16'sd 24284 * $signed(input_fmap_56[95:80]) +
	 16'sd 29422 * $signed(input_fmap_56[111:96]) +
	 16'sd 24138 * $signed(input_fmap_56[127:112]) +
	 16'sd 31373 * $signed(input_fmap_56[143:128]);

logic signed [31:0] dw_conv_mac_57;
assign dw_conv_mac_57 = 
	 16'sd 30326 * $signed(input_fmap_57[15:0]) +
	 13'sd 3915 * $signed(input_fmap_57[31:16]) +
	 16'sd 30355 * $signed(input_fmap_57[47:32]) +
	 16'sd 27232 * $signed(input_fmap_57[63:48]) +
	 16'sd 31775 * $signed(input_fmap_57[79:64]) +
	 15'sd 13140 * $signed(input_fmap_57[95:80]) +
	 16'sd 19766 * $signed(input_fmap_57[111:96]) +
	 15'sd 13610 * $signed(input_fmap_57[127:112]) +
	 14'sd 6913 * $signed(input_fmap_57[143:128]);

logic signed [31:0] dw_conv_mac_58;
assign dw_conv_mac_58 = 
	 16'sd 30468 * $signed(input_fmap_58[15:0]) +
	 14'sd 8092 * $signed(input_fmap_58[31:16]) +
	 14'sd 7871 * $signed(input_fmap_58[47:32]) +
	 16'sd 18645 * $signed(input_fmap_58[63:48]) +
	 15'sd 9962 * $signed(input_fmap_58[79:64]) +
	 16'sd 23050 * $signed(input_fmap_58[95:80]) +
	 15'sd 11172 * $signed(input_fmap_58[111:96]) +
	 14'sd 5827 * $signed(input_fmap_58[127:112]) +
	 15'sd 15871 * $signed(input_fmap_58[143:128]);

logic signed [31:0] dw_conv_mac_59;
assign dw_conv_mac_59 = 
	 16'sd 28936 * $signed(input_fmap_59[15:0]) +
	 16'sd 27747 * $signed(input_fmap_59[31:16]) +
	 16'sd 26680 * $signed(input_fmap_59[47:32]) +
	 16'sd 26659 * $signed(input_fmap_59[63:48]) +
	 13'sd 2489 * $signed(input_fmap_59[79:64]) +
	 13'sd 3898 * $signed(input_fmap_59[95:80]) +
	 16'sd 23862 * $signed(input_fmap_59[111:96]) +
	 16'sd 26429 * $signed(input_fmap_59[127:112]) +
	 16'sd 22182 * $signed(input_fmap_59[143:128]);

logic signed [31:0] dw_conv_mac_60;
assign dw_conv_mac_60 = 
	 16'sd 26926 * $signed(input_fmap_60[15:0]) +
	 16'sd 26831 * $signed(input_fmap_60[31:16]) +
	 15'sd 9706 * $signed(input_fmap_60[47:32]) +
	 13'sd 3147 * $signed(input_fmap_60[63:48]) +
	 16'sd 29232 * $signed(input_fmap_60[79:64]) +
	 14'sd 6362 * $signed(input_fmap_60[95:80]) +
	 15'sd 9087 * $signed(input_fmap_60[111:96]) +
	 14'sd 7541 * $signed(input_fmap_60[127:112]) +
	 16'sd 29084 * $signed(input_fmap_60[143:128]);

logic signed [31:0] dw_conv_mac_61;
assign dw_conv_mac_61 = 
	 15'sd 14062 * $signed(input_fmap_61[15:0]) +
	 16'sd 17090 * $signed(input_fmap_61[31:16]) +
	 15'sd 15913 * $signed(input_fmap_61[47:32]) +
	 16'sd 21091 * $signed(input_fmap_61[63:48]) +
	 15'sd 12303 * $signed(input_fmap_61[79:64]) +
	 16'sd 28381 * $signed(input_fmap_61[95:80]) +
	 16'sd 22115 * $signed(input_fmap_61[111:96]) +
	 7'sd 54 * $signed(input_fmap_61[127:112]) +
	 16'sd 29717 * $signed(input_fmap_61[143:128]);

logic signed [31:0] dw_conv_mac_62;
assign dw_conv_mac_62 = 
	 16'sd 23915 * $signed(input_fmap_62[15:0]) +
	 16'sd 22321 * $signed(input_fmap_62[31:16]) +
	 16'sd 22116 * $signed(input_fmap_62[47:32]) +
	 14'sd 5140 * $signed(input_fmap_62[63:48]) +
	 16'sd 24496 * $signed(input_fmap_62[79:64]) +
	 16'sd 21508 * $signed(input_fmap_62[95:80]) +
	 15'sd 14951 * $signed(input_fmap_62[111:96]) +
	 15'sd 8426 * $signed(input_fmap_62[127:112]) +
	 16'sd 17508 * $signed(input_fmap_62[143:128]);

logic signed [31:0] dw_conv_mac_63;
assign dw_conv_mac_63 = 
	 15'sd 15730 * $signed(input_fmap_63[15:0]) +
	 16'sd 23727 * $signed(input_fmap_63[31:16]) +
	 16'sd 25450 * $signed(input_fmap_63[47:32]) +
	 12'sd 1201 * $signed(input_fmap_63[63:48]) +
	 16'sd 16967 * $signed(input_fmap_63[79:64]) +
	 15'sd 8660 * $signed(input_fmap_63[95:80]) +
	 16'sd 32643 * $signed(input_fmap_63[111:96]) +
	 16'sd 23635 * $signed(input_fmap_63[127:112]) +
	 14'sd 6497 * $signed(input_fmap_63[143:128]);

logic signed [31:0] dw_conv_mac_64;
assign dw_conv_mac_64 = 
	 15'sd 14809 * $signed(input_fmap_64[15:0]) +
	 16'sd 30747 * $signed(input_fmap_64[31:16]) +
	 15'sd 11635 * $signed(input_fmap_64[47:32]) +
	 15'sd 9216 * $signed(input_fmap_64[63:48]) +
	 16'sd 17533 * $signed(input_fmap_64[79:64]) +
	 16'sd 24982 * $signed(input_fmap_64[95:80]) +
	 14'sd 7392 * $signed(input_fmap_64[111:96]) +
	 16'sd 17724 * $signed(input_fmap_64[127:112]) +
	 15'sd 11917 * $signed(input_fmap_64[143:128]);

logic signed [31:0] dw_conv_mac_65;
assign dw_conv_mac_65 = 
	 16'sd 29452 * $signed(input_fmap_65[15:0]) +
	 14'sd 6612 * $signed(input_fmap_65[31:16]) +
	 14'sd 4743 * $signed(input_fmap_65[47:32]) +
	 16'sd 29390 * $signed(input_fmap_65[63:48]) +
	 15'sd 8361 * $signed(input_fmap_65[79:64]) +
	 15'sd 15368 * $signed(input_fmap_65[95:80]) +
	 16'sd 19264 * $signed(input_fmap_65[111:96]) +
	 16'sd 22143 * $signed(input_fmap_65[127:112]) +
	 16'sd 17204 * $signed(input_fmap_65[143:128]);

logic signed [31:0] dw_conv_mac_66;
assign dw_conv_mac_66 = 
	 14'sd 4769 * $signed(input_fmap_66[15:0]) +
	 15'sd 16197 * $signed(input_fmap_66[31:16]) +
	 16'sd 21954 * $signed(input_fmap_66[47:32]) +
	 15'sd 10529 * $signed(input_fmap_66[63:48]) +
	 13'sd 2970 * $signed(input_fmap_66[79:64]) +
	 16'sd 19393 * $signed(input_fmap_66[95:80]) +
	 16'sd 21667 * $signed(input_fmap_66[111:96]) +
	 14'sd 7306 * $signed(input_fmap_66[127:112]) +
	 16'sd 23824 * $signed(input_fmap_66[143:128]);

logic signed [31:0] dw_conv_mac_67;
assign dw_conv_mac_67 = 
	 13'sd 3556 * $signed(input_fmap_67[15:0]) +
	 15'sd 11685 * $signed(input_fmap_67[31:16]) +
	 15'sd 9563 * $signed(input_fmap_67[47:32]) +
	 15'sd 12277 * $signed(input_fmap_67[63:48]) +
	 16'sd 17058 * $signed(input_fmap_67[79:64]) +
	 14'sd 5973 * $signed(input_fmap_67[95:80]) +
	 12'sd 1893 * $signed(input_fmap_67[111:96]) +
	 14'sd 7961 * $signed(input_fmap_67[127:112]) +
	 16'sd 19476 * $signed(input_fmap_67[143:128]);

logic signed [31:0] dw_conv_mac_68;
assign dw_conv_mac_68 = 
	 13'sd 3598 * $signed(input_fmap_68[15:0]) +
	 13'sd 2207 * $signed(input_fmap_68[31:16]) +
	 14'sd 5616 * $signed(input_fmap_68[47:32]) +
	 16'sd 29568 * $signed(input_fmap_68[63:48]) +
	 14'sd 6472 * $signed(input_fmap_68[79:64]) +
	 16'sd 18223 * $signed(input_fmap_68[95:80]) +
	 16'sd 22153 * $signed(input_fmap_68[111:96]) +
	 9'sd 217 * $signed(input_fmap_68[127:112]) +
	 16'sd 23219 * $signed(input_fmap_68[143:128]);

logic signed [31:0] dw_conv_mac_69;
assign dw_conv_mac_69 = 
	 16'sd 31399 * $signed(input_fmap_69[15:0]) +
	 13'sd 3657 * $signed(input_fmap_69[31:16]) +
	 16'sd 23976 * $signed(input_fmap_69[47:32]) +
	 14'sd 4396 * $signed(input_fmap_69[63:48]) +
	 14'sd 8119 * $signed(input_fmap_69[79:64]) +
	 13'sd 2411 * $signed(input_fmap_69[95:80]) +
	 16'sd 21146 * $signed(input_fmap_69[111:96]) +
	 16'sd 29888 * $signed(input_fmap_69[127:112]) +
	 16'sd 24331 * $signed(input_fmap_69[143:128]);

logic signed [31:0] dw_conv_mac_70;
assign dw_conv_mac_70 = 
	 16'sd 19507 * $signed(input_fmap_70[15:0]) +
	 15'sd 12962 * $signed(input_fmap_70[31:16]) +
	 15'sd 15335 * $signed(input_fmap_70[47:32]) +
	 14'sd 6249 * $signed(input_fmap_70[63:48]) +
	 16'sd 16562 * $signed(input_fmap_70[79:64]) +
	 14'sd 7432 * $signed(input_fmap_70[95:80]) +
	 14'sd 5671 * $signed(input_fmap_70[111:96]) +
	 16'sd 28636 * $signed(input_fmap_70[127:112]) +
	 16'sd 17023 * $signed(input_fmap_70[143:128]);

logic signed [31:0] dw_conv_mac_71;
assign dw_conv_mac_71 = 
	 16'sd 26201 * $signed(input_fmap_71[15:0]) +
	 14'sd 6463 * $signed(input_fmap_71[31:16]) +
	 16'sd 27155 * $signed(input_fmap_71[47:32]) +
	 10'sd 271 * $signed(input_fmap_71[63:48]) +
	 16'sd 22940 * $signed(input_fmap_71[79:64]) +
	 16'sd 29892 * $signed(input_fmap_71[95:80]) +
	 16'sd 31031 * $signed(input_fmap_71[111:96]) +
	 16'sd 29550 * $signed(input_fmap_71[127:112]) +
	 16'sd 21488 * $signed(input_fmap_71[143:128]);

logic signed [31:0] dw_conv_mac_72;
assign dw_conv_mac_72 = 
	 14'sd 7478 * $signed(input_fmap_72[15:0]) +
	 16'sd 28487 * $signed(input_fmap_72[31:16]) +
	 16'sd 24184 * $signed(input_fmap_72[47:32]) +
	 16'sd 24191 * $signed(input_fmap_72[63:48]) +
	 16'sd 31488 * $signed(input_fmap_72[79:64]) +
	 15'sd 11471 * $signed(input_fmap_72[95:80]) +
	 13'sd 3611 * $signed(input_fmap_72[111:96]) +
	 15'sd 8573 * $signed(input_fmap_72[127:112]) +
	 16'sd 21695 * $signed(input_fmap_72[143:128]);

logic signed [31:0] dw_conv_mac_73;
assign dw_conv_mac_73 = 
	 11'sd 606 * $signed(input_fmap_73[15:0]) +
	 15'sd 12284 * $signed(input_fmap_73[31:16]) +
	 14'sd 6056 * $signed(input_fmap_73[47:32]) +
	 16'sd 16509 * $signed(input_fmap_73[63:48]) +
	 16'sd 23844 * $signed(input_fmap_73[79:64]) +
	 15'sd 11178 * $signed(input_fmap_73[95:80]) +
	 13'sd 3915 * $signed(input_fmap_73[111:96]) +
	 16'sd 20166 * $signed(input_fmap_73[127:112]) +
	 14'sd 7051 * $signed(input_fmap_73[143:128]);

logic signed [31:0] dw_conv_mac_74;
assign dw_conv_mac_74 = 
	 16'sd 24058 * $signed(input_fmap_74[15:0]) +
	 16'sd 31447 * $signed(input_fmap_74[31:16]) +
	 13'sd 2645 * $signed(input_fmap_74[47:32]) +
	 10'sd 416 * $signed(input_fmap_74[63:48]) +
	 16'sd 24537 * $signed(input_fmap_74[79:64]) +
	 14'sd 8050 * $signed(input_fmap_74[95:80]) +
	 16'sd 19569 * $signed(input_fmap_74[111:96]) +
	 16'sd 16444 * $signed(input_fmap_74[127:112]) +
	 15'sd 11721 * $signed(input_fmap_74[143:128]);

logic signed [31:0] dw_conv_mac_75;
assign dw_conv_mac_75 = 
	 13'sd 2606 * $signed(input_fmap_75[15:0]) +
	 15'sd 14954 * $signed(input_fmap_75[31:16]) +
	 16'sd 18842 * $signed(input_fmap_75[47:32]) +
	 15'sd 12004 * $signed(input_fmap_75[63:48]) +
	 14'sd 5473 * $signed(input_fmap_75[79:64]) +
	 15'sd 9740 * $signed(input_fmap_75[95:80]) +
	 13'sd 2710 * $signed(input_fmap_75[111:96]) +
	 15'sd 8463 * $signed(input_fmap_75[127:112]) +
	 15'sd 15657 * $signed(input_fmap_75[143:128]);

logic signed [31:0] dw_conv_mac_76;
assign dw_conv_mac_76 = 
	 16'sd 28434 * $signed(input_fmap_76[15:0]) +
	 16'sd 19616 * $signed(input_fmap_76[31:16]) +
	 16'sd 19466 * $signed(input_fmap_76[47:32]) +
	 15'sd 13263 * $signed(input_fmap_76[63:48]) +
	 15'sd 12013 * $signed(input_fmap_76[79:64]) +
	 16'sd 19898 * $signed(input_fmap_76[95:80]) +
	 14'sd 5458 * $signed(input_fmap_76[111:96]) +
	 14'sd 5491 * $signed(input_fmap_76[127:112]) +
	 16'sd 31264 * $signed(input_fmap_76[143:128]);

logic signed [31:0] dw_conv_mac_77;
assign dw_conv_mac_77 = 
	 15'sd 11567 * $signed(input_fmap_77[15:0]) +
	 16'sd 29091 * $signed(input_fmap_77[31:16]) +
	 16'sd 29560 * $signed(input_fmap_77[47:32]) +
	 16'sd 30914 * $signed(input_fmap_77[63:48]) +
	 16'sd 18472 * $signed(input_fmap_77[79:64]) +
	 15'sd 8364 * $signed(input_fmap_77[95:80]) +
	 13'sd 2251 * $signed(input_fmap_77[111:96]) +
	 16'sd 23501 * $signed(input_fmap_77[127:112]) +
	 13'sd 3990 * $signed(input_fmap_77[143:128]);

logic signed [31:0] dw_conv_mac_78;
assign dw_conv_mac_78 = 
	 16'sd 17680 * $signed(input_fmap_78[15:0]) +
	 16'sd 26255 * $signed(input_fmap_78[31:16]) +
	 16'sd 18841 * $signed(input_fmap_78[47:32]) +
	 16'sd 20857 * $signed(input_fmap_78[63:48]) +
	 16'sd 26706 * $signed(input_fmap_78[79:64]) +
	 14'sd 5694 * $signed(input_fmap_78[95:80]) +
	 16'sd 19552 * $signed(input_fmap_78[111:96]) +
	 13'sd 4022 * $signed(input_fmap_78[127:112]) +
	 15'sd 14657 * $signed(input_fmap_78[143:128]);

logic signed [31:0] dw_conv_mac_79;
assign dw_conv_mac_79 = 
	 14'sd 5216 * $signed(input_fmap_79[15:0]) +
	 16'sd 28495 * $signed(input_fmap_79[31:16]) +
	 15'sd 14175 * $signed(input_fmap_79[47:32]) +
	 14'sd 6175 * $signed(input_fmap_79[63:48]) +
	 14'sd 7591 * $signed(input_fmap_79[79:64]) +
	 16'sd 25047 * $signed(input_fmap_79[95:80]) +
	 15'sd 9889 * $signed(input_fmap_79[111:96]) +
	 14'sd 5857 * $signed(input_fmap_79[127:112]) +
	 12'sd 1027 * $signed(input_fmap_79[143:128]);

logic signed [31:0] dw_conv_mac_80;
assign dw_conv_mac_80 = 
	 16'sd 23575 * $signed(input_fmap_80[15:0]) +
	 11'sd 794 * $signed(input_fmap_80[31:16]) +
	 13'sd 2324 * $signed(input_fmap_80[47:32]) +
	 16'sd 27965 * $signed(input_fmap_80[63:48]) +
	 12'sd 1310 * $signed(input_fmap_80[79:64]) +
	 16'sd 18902 * $signed(input_fmap_80[95:80]) +
	 16'sd 24855 * $signed(input_fmap_80[111:96]) +
	 15'sd 14279 * $signed(input_fmap_80[127:112]) +
	 16'sd 32041 * $signed(input_fmap_80[143:128]);

logic signed [31:0] dw_conv_mac_81;
assign dw_conv_mac_81 = 
	 14'sd 6710 * $signed(input_fmap_81[15:0]) +
	 15'sd 13675 * $signed(input_fmap_81[31:16]) +
	 15'sd 11224 * $signed(input_fmap_81[47:32]) +
	 16'sd 32472 * $signed(input_fmap_81[63:48]) +
	 16'sd 17257 * $signed(input_fmap_81[79:64]) +
	 16'sd 28691 * $signed(input_fmap_81[95:80]) +
	 16'sd 22525 * $signed(input_fmap_81[111:96]) +
	 16'sd 30693 * $signed(input_fmap_81[127:112]) +
	 16'sd 17415 * $signed(input_fmap_81[143:128]);

logic signed [31:0] dw_conv_mac_82;
assign dw_conv_mac_82 = 
	 15'sd 13750 * $signed(input_fmap_82[15:0]) +
	 16'sd 20253 * $signed(input_fmap_82[31:16]) +
	 16'sd 23974 * $signed(input_fmap_82[47:32]) +
	 11'sd 961 * $signed(input_fmap_82[63:48]) +
	 14'sd 4545 * $signed(input_fmap_82[79:64]) +
	 16'sd 27869 * $signed(input_fmap_82[95:80]) +
	 16'sd 19710 * $signed(input_fmap_82[111:96]) +
	 16'sd 31023 * $signed(input_fmap_82[127:112]) +
	 16'sd 19409 * $signed(input_fmap_82[143:128]);

logic signed [31:0] dw_conv_mac_83;
assign dw_conv_mac_83 = 
	 16'sd 27462 * $signed(input_fmap_83[15:0]) +
	 15'sd 11325 * $signed(input_fmap_83[31:16]) +
	 15'sd 10077 * $signed(input_fmap_83[47:32]) +
	 16'sd 30387 * $signed(input_fmap_83[63:48]) +
	 13'sd 3004 * $signed(input_fmap_83[79:64]) +
	 16'sd 30189 * $signed(input_fmap_83[95:80]) +
	 16'sd 32099 * $signed(input_fmap_83[111:96]) +
	 15'sd 10295 * $signed(input_fmap_83[127:112]) +
	 14'sd 7875 * $signed(input_fmap_83[143:128]);

logic signed [31:0] dw_conv_mac_84;
assign dw_conv_mac_84 = 
	 16'sd 17056 * $signed(input_fmap_84[15:0]) +
	 15'sd 14033 * $signed(input_fmap_84[31:16]) +
	 16'sd 29317 * $signed(input_fmap_84[47:32]) +
	 16'sd 20626 * $signed(input_fmap_84[63:48]) +
	 15'sd 8607 * $signed(input_fmap_84[79:64]) +
	 12'sd 1370 * $signed(input_fmap_84[95:80]) +
	 16'sd 23891 * $signed(input_fmap_84[111:96]) +
	 15'sd 12095 * $signed(input_fmap_84[127:112]) +
	 16'sd 19391 * $signed(input_fmap_84[143:128]);

logic signed [31:0] dw_conv_mac_85;
assign dw_conv_mac_85 = 
	 16'sd 18283 * $signed(input_fmap_85[15:0]) +
	 16'sd 22352 * $signed(input_fmap_85[31:16]) +
	 16'sd 26268 * $signed(input_fmap_85[47:32]) +
	 15'sd 14955 * $signed(input_fmap_85[63:48]) +
	 13'sd 3560 * $signed(input_fmap_85[79:64]) +
	 16'sd 16441 * $signed(input_fmap_85[95:80]) +
	 15'sd 11670 * $signed(input_fmap_85[111:96]) +
	 14'sd 6378 * $signed(input_fmap_85[127:112]) +
	 16'sd 22481 * $signed(input_fmap_85[143:128]);

logic signed [31:0] dw_conv_mac_86;
assign dw_conv_mac_86 = 
	 16'sd 27448 * $signed(input_fmap_86[15:0]) +
	 15'sd 12205 * $signed(input_fmap_86[31:16]) +
	 13'sd 2757 * $signed(input_fmap_86[47:32]) +
	 16'sd 23715 * $signed(input_fmap_86[63:48]) +
	 16'sd 32180 * $signed(input_fmap_86[79:64]) +
	 16'sd 23503 * $signed(input_fmap_86[95:80]) +
	 15'sd 16118 * $signed(input_fmap_86[111:96]) +
	 16'sd 23482 * $signed(input_fmap_86[127:112]) +
	 16'sd 20115 * $signed(input_fmap_86[143:128]);

logic signed [31:0] dw_conv_mac_87;
assign dw_conv_mac_87 = 
	 13'sd 2687 * $signed(input_fmap_87[15:0]) +
	 16'sd 19989 * $signed(input_fmap_87[31:16]) +
	 14'sd 6174 * $signed(input_fmap_87[47:32]) +
	 15'sd 12582 * $signed(input_fmap_87[63:48]) +
	 14'sd 5890 * $signed(input_fmap_87[79:64]) +
	 15'sd 15657 * $signed(input_fmap_87[95:80]) +
	 16'sd 28576 * $signed(input_fmap_87[111:96]) +
	 16'sd 29794 * $signed(input_fmap_87[127:112]) +
	 16'sd 16547 * $signed(input_fmap_87[143:128]);

logic signed [31:0] dw_conv_mac_88;
assign dw_conv_mac_88 = 
	 16'sd 24786 * $signed(input_fmap_88[15:0]) +
	 15'sd 12022 * $signed(input_fmap_88[31:16]) +
	 12'sd 1370 * $signed(input_fmap_88[47:32]) +
	 16'sd 23621 * $signed(input_fmap_88[63:48]) +
	 16'sd 24526 * $signed(input_fmap_88[79:64]) +
	 16'sd 24552 * $signed(input_fmap_88[95:80]) +
	 16'sd 26189 * $signed(input_fmap_88[111:96]) +
	 16'sd 27819 * $signed(input_fmap_88[127:112]) +
	 15'sd 9319 * $signed(input_fmap_88[143:128]);

logic signed [31:0] dw_conv_mac_89;
assign dw_conv_mac_89 = 
	 7'sd 55 * $signed(input_fmap_89[15:0]) +
	 16'sd 30927 * $signed(input_fmap_89[31:16]) +
	 14'sd 4954 * $signed(input_fmap_89[47:32]) +
	 14'sd 6505 * $signed(input_fmap_89[63:48]) +
	 16'sd 19065 * $signed(input_fmap_89[79:64]) +
	 16'sd 16760 * $signed(input_fmap_89[95:80]) +
	 13'sd 3353 * $signed(input_fmap_89[111:96]) +
	 16'sd 32668 * $signed(input_fmap_89[127:112]) +
	 14'sd 5667 * $signed(input_fmap_89[143:128]);

logic signed [31:0] dw_conv_mac_90;
assign dw_conv_mac_90 = 
	 16'sd 20286 * $signed(input_fmap_90[15:0]) +
	 12'sd 1336 * $signed(input_fmap_90[31:16]) +
	 15'sd 11894 * $signed(input_fmap_90[47:32]) +
	 15'sd 9382 * $signed(input_fmap_90[63:48]) +
	 15'sd 9915 * $signed(input_fmap_90[79:64]) +
	 16'sd 22764 * $signed(input_fmap_90[95:80]) +
	 12'sd 1064 * $signed(input_fmap_90[111:96]) +
	 16'sd 20961 * $signed(input_fmap_90[127:112]) +
	 15'sd 13368 * $signed(input_fmap_90[143:128]);

logic signed [31:0] dw_conv_mac_91;
assign dw_conv_mac_91 = 
	 15'sd 12955 * $signed(input_fmap_91[15:0]) +
	 16'sd 28102 * $signed(input_fmap_91[31:16]) +
	 16'sd 18439 * $signed(input_fmap_91[47:32]) +
	 15'sd 14176 * $signed(input_fmap_91[63:48]) +
	 16'sd 23882 * $signed(input_fmap_91[79:64]) +
	 15'sd 15640 * $signed(input_fmap_91[95:80]) +
	 15'sd 8742 * $signed(input_fmap_91[111:96]) +
	 16'sd 24307 * $signed(input_fmap_91[127:112]) +
	 16'sd 31853 * $signed(input_fmap_91[143:128]);

logic signed [31:0] dw_conv_mac_92;
assign dw_conv_mac_92 = 
	 15'sd 13509 * $signed(input_fmap_92[15:0]) +
	 16'sd 24492 * $signed(input_fmap_92[31:16]) +
	 16'sd 26772 * $signed(input_fmap_92[47:32]) +
	 13'sd 2510 * $signed(input_fmap_92[63:48]) +
	 15'sd 11400 * $signed(input_fmap_92[79:64]) +
	 15'sd 13223 * $signed(input_fmap_92[95:80]) +
	 16'sd 25313 * $signed(input_fmap_92[111:96]) +
	 15'sd 9188 * $signed(input_fmap_92[127:112]) +
	 16'sd 30696 * $signed(input_fmap_92[143:128]);

logic signed [31:0] dw_conv_mac_93;
assign dw_conv_mac_93 = 
	 16'sd 24592 * $signed(input_fmap_93[15:0]) +
	 16'sd 26818 * $signed(input_fmap_93[31:16]) +
	 15'sd 13743 * $signed(input_fmap_93[47:32]) +
	 16'sd 17900 * $signed(input_fmap_93[63:48]) +
	 15'sd 10376 * $signed(input_fmap_93[79:64]) +
	 16'sd 26439 * $signed(input_fmap_93[95:80]) +
	 16'sd 25713 * $signed(input_fmap_93[111:96]) +
	 15'sd 15604 * $signed(input_fmap_93[127:112]) +
	 16'sd 18823 * $signed(input_fmap_93[143:128]);

logic signed [31:0] dw_conv_mac_94;
assign dw_conv_mac_94 = 
	 16'sd 22458 * $signed(input_fmap_94[15:0]) +
	 16'sd 21839 * $signed(input_fmap_94[31:16]) +
	 13'sd 3454 * $signed(input_fmap_94[47:32]) +
	 14'sd 4954 * $signed(input_fmap_94[63:48]) +
	 16'sd 18548 * $signed(input_fmap_94[79:64]) +
	 16'sd 26828 * $signed(input_fmap_94[95:80]) +
	 16'sd 22452 * $signed(input_fmap_94[111:96]) +
	 16'sd 18110 * $signed(input_fmap_94[127:112]) +
	 15'sd 14147 * $signed(input_fmap_94[143:128]);

logic signed [31:0] dw_conv_mac_95;
assign dw_conv_mac_95 = 
	 16'sd 24245 * $signed(input_fmap_95[15:0]) +
	 16'sd 21843 * $signed(input_fmap_95[31:16]) +
	 16'sd 25948 * $signed(input_fmap_95[47:32]) +
	 16'sd 24352 * $signed(input_fmap_95[63:48]) +
	 14'sd 5293 * $signed(input_fmap_95[79:64]) +
	 16'sd 20682 * $signed(input_fmap_95[95:80]) +
	 16'sd 30468 * $signed(input_fmap_95[111:96]) +
	 15'sd 15385 * $signed(input_fmap_95[127:112]) +
	 15'sd 9324 * $signed(input_fmap_95[143:128]);

logic signed [31:0] dw_conv_mac_96;
assign dw_conv_mac_96 = 
	 16'sd 27774 * $signed(input_fmap_96[15:0]) +
	 16'sd 30433 * $signed(input_fmap_96[31:16]) +
	 13'sd 3102 * $signed(input_fmap_96[47:32]) +
	 16'sd 23734 * $signed(input_fmap_96[63:48]) +
	 16'sd 31204 * $signed(input_fmap_96[79:64]) +
	 15'sd 15539 * $signed(input_fmap_96[95:80]) +
	 16'sd 24074 * $signed(input_fmap_96[111:96]) +
	 16'sd 21180 * $signed(input_fmap_96[127:112]) +
	 15'sd 16149 * $signed(input_fmap_96[143:128]);

logic signed [31:0] dw_conv_mac_97;
assign dw_conv_mac_97 = 
	 14'sd 4610 * $signed(input_fmap_97[15:0]) +
	 16'sd 21638 * $signed(input_fmap_97[31:16]) +
	 16'sd 21936 * $signed(input_fmap_97[47:32]) +
	 16'sd 24627 * $signed(input_fmap_97[63:48]) +
	 16'sd 28509 * $signed(input_fmap_97[79:64]) +
	 16'sd 27936 * $signed(input_fmap_97[95:80]) +
	 15'sd 13707 * $signed(input_fmap_97[111:96]) +
	 16'sd 27166 * $signed(input_fmap_97[127:112]) +
	 16'sd 24239 * $signed(input_fmap_97[143:128]);

logic signed [31:0] dw_conv_mac_98;
assign dw_conv_mac_98 = 
	 8'sd 126 * $signed(input_fmap_98[15:0]) +
	 16'sd 20378 * $signed(input_fmap_98[31:16]) +
	 16'sd 27211 * $signed(input_fmap_98[47:32]) +
	 16'sd 18222 * $signed(input_fmap_98[63:48]) +
	 14'sd 5506 * $signed(input_fmap_98[79:64]) +
	 11'sd 765 * $signed(input_fmap_98[95:80]) +
	 15'sd 13926 * $signed(input_fmap_98[111:96]) +
	 16'sd 21505 * $signed(input_fmap_98[127:112]) +
	 16'sd 20016 * $signed(input_fmap_98[143:128]);

logic signed [31:0] dw_conv_mac_99;
assign dw_conv_mac_99 = 
	 16'sd 22806 * $signed(input_fmap_99[15:0]) +
	 15'sd 14459 * $signed(input_fmap_99[31:16]) +
	 15'sd 12744 * $signed(input_fmap_99[47:32]) +
	 16'sd 19723 * $signed(input_fmap_99[63:48]) +
	 16'sd 31529 * $signed(input_fmap_99[79:64]) +
	 16'sd 30071 * $signed(input_fmap_99[95:80]) +
	 16'sd 29106 * $signed(input_fmap_99[111:96]) +
	 16'sd 20585 * $signed(input_fmap_99[127:112]) +
	 16'sd 25291 * $signed(input_fmap_99[143:128]);

logic signed [31:0] dw_conv_mac_100;
assign dw_conv_mac_100 = 
	 16'sd 21847 * $signed(input_fmap_100[15:0]) +
	 15'sd 8757 * $signed(input_fmap_100[31:16]) +
	 15'sd 11049 * $signed(input_fmap_100[47:32]) +
	 16'sd 21063 * $signed(input_fmap_100[63:48]) +
	 14'sd 8145 * $signed(input_fmap_100[79:64]) +
	 16'sd 27270 * $signed(input_fmap_100[95:80]) +
	 14'sd 5801 * $signed(input_fmap_100[111:96]) +
	 16'sd 28808 * $signed(input_fmap_100[127:112]) +
	 15'sd 15574 * $signed(input_fmap_100[143:128]);

logic signed [31:0] dw_conv_mac_101;
assign dw_conv_mac_101 = 
	 14'sd 5633 * $signed(input_fmap_101[15:0]) +
	 15'sd 10792 * $signed(input_fmap_101[31:16]) +
	 16'sd 22136 * $signed(input_fmap_101[47:32]) +
	 16'sd 19783 * $signed(input_fmap_101[63:48]) +
	 15'sd 14072 * $signed(input_fmap_101[79:64]) +
	 16'sd 19493 * $signed(input_fmap_101[95:80]) +
	 14'sd 5250 * $signed(input_fmap_101[111:96]) +
	 14'sd 4486 * $signed(input_fmap_101[127:112]) +
	 15'sd 12380 * $signed(input_fmap_101[143:128]);

logic signed [31:0] dw_conv_mac_102;
assign dw_conv_mac_102 = 
	 14'sd 5980 * $signed(input_fmap_102[15:0]) +
	 16'sd 22530 * $signed(input_fmap_102[31:16]) +
	 13'sd 4081 * $signed(input_fmap_102[47:32]) +
	 14'sd 4214 * $signed(input_fmap_102[63:48]) +
	 15'sd 13688 * $signed(input_fmap_102[79:64]) +
	 16'sd 28554 * $signed(input_fmap_102[95:80]) +
	 13'sd 4042 * $signed(input_fmap_102[111:96]) +
	 7'sd 36 * $signed(input_fmap_102[127:112]) +
	 16'sd 16545 * $signed(input_fmap_102[143:128]);

logic signed [31:0] dw_conv_mac_103;
assign dw_conv_mac_103 = 
	 16'sd 25611 * $signed(input_fmap_103[15:0]) +
	 16'sd 20490 * $signed(input_fmap_103[31:16]) +
	 15'sd 12913 * $signed(input_fmap_103[47:32]) +
	 15'sd 15758 * $signed(input_fmap_103[63:48]) +
	 16'sd 25491 * $signed(input_fmap_103[79:64]) +
	 15'sd 15740 * $signed(input_fmap_103[95:80]) +
	 16'sd 21063 * $signed(input_fmap_103[111:96]) +
	 15'sd 14294 * $signed(input_fmap_103[127:112]) +
	 16'sd 29287 * $signed(input_fmap_103[143:128]);

logic signed [31:0] dw_conv_mac_104;
assign dw_conv_mac_104 = 
	 16'sd 26020 * $signed(input_fmap_104[15:0]) +
	 16'sd 32180 * $signed(input_fmap_104[31:16]) +
	 16'sd 18083 * $signed(input_fmap_104[47:32]) +
	 15'sd 10623 * $signed(input_fmap_104[63:48]) +
	 13'sd 4083 * $signed(input_fmap_104[79:64]) +
	 10'sd 394 * $signed(input_fmap_104[95:80]) +
	 15'sd 11400 * $signed(input_fmap_104[111:96]) +
	 14'sd 5372 * $signed(input_fmap_104[127:112]) +
	 15'sd 9717 * $signed(input_fmap_104[143:128]);

logic signed [31:0] dw_conv_mac_105;
assign dw_conv_mac_105 = 
	 16'sd 23076 * $signed(input_fmap_105[15:0]) +
	 15'sd 10113 * $signed(input_fmap_105[31:16]) +
	 16'sd 18260 * $signed(input_fmap_105[47:32]) +
	 16'sd 20415 * $signed(input_fmap_105[63:48]) +
	 16'sd 25499 * $signed(input_fmap_105[79:64]) +
	 14'sd 6898 * $signed(input_fmap_105[95:80]) +
	 14'sd 5728 * $signed(input_fmap_105[111:96]) +
	 13'sd 3224 * $signed(input_fmap_105[127:112]) +
	 15'sd 9997 * $signed(input_fmap_105[143:128]);

logic signed [31:0] dw_conv_mac_106;
assign dw_conv_mac_106 = 
	 16'sd 20567 * $signed(input_fmap_106[15:0]) +
	 16'sd 21568 * $signed(input_fmap_106[31:16]) +
	 14'sd 6463 * $signed(input_fmap_106[47:32]) +
	 16'sd 25965 * $signed(input_fmap_106[63:48]) +
	 16'sd 18833 * $signed(input_fmap_106[79:64]) +
	 15'sd 13672 * $signed(input_fmap_106[95:80]) +
	 15'sd 16367 * $signed(input_fmap_106[111:96]) +
	 16'sd 18484 * $signed(input_fmap_106[127:112]) +
	 15'sd 12103 * $signed(input_fmap_106[143:128]);

logic signed [31:0] dw_conv_mac_107;
assign dw_conv_mac_107 = 
	 13'sd 2380 * $signed(input_fmap_107[15:0]) +
	 16'sd 29467 * $signed(input_fmap_107[31:16]) +
	 13'sd 3852 * $signed(input_fmap_107[47:32]) +
	 14'sd 5241 * $signed(input_fmap_107[63:48]) +
	 16'sd 26388 * $signed(input_fmap_107[79:64]) +
	 16'sd 25423 * $signed(input_fmap_107[95:80]) +
	 14'sd 5971 * $signed(input_fmap_107[111:96]) +
	 16'sd 27721 * $signed(input_fmap_107[127:112]) +
	 14'sd 5927 * $signed(input_fmap_107[143:128]);

logic signed [31:0] dw_conv_mac_108;
assign dw_conv_mac_108 = 
	 14'sd 6442 * $signed(input_fmap_108[15:0]) +
	 12'sd 1926 * $signed(input_fmap_108[31:16]) +
	 14'sd 4900 * $signed(input_fmap_108[47:32]) +
	 15'sd 10249 * $signed(input_fmap_108[63:48]) +
	 14'sd 7016 * $signed(input_fmap_108[79:64]) +
	 16'sd 25841 * $signed(input_fmap_108[95:80]) +
	 16'sd 17137 * $signed(input_fmap_108[111:96]) +
	 13'sd 2608 * $signed(input_fmap_108[127:112]) +
	 16'sd 22227 * $signed(input_fmap_108[143:128]);

logic signed [31:0] dw_conv_mac_109;
assign dw_conv_mac_109 = 
	 16'sd 25950 * $signed(input_fmap_109[15:0]) +
	 15'sd 10891 * $signed(input_fmap_109[31:16]) +
	 15'sd 9833 * $signed(input_fmap_109[47:32]) +
	 16'sd 29292 * $signed(input_fmap_109[63:48]) +
	 15'sd 15665 * $signed(input_fmap_109[79:64]) +
	 11'sd 938 * $signed(input_fmap_109[95:80]) +
	 12'sd 1488 * $signed(input_fmap_109[111:96]) +
	 16'sd 23822 * $signed(input_fmap_109[127:112]) +
	 14'sd 7843 * $signed(input_fmap_109[143:128]);

logic signed [31:0] dw_conv_mac_110;
assign dw_conv_mac_110 = 
	 16'sd 29728 * $signed(input_fmap_110[15:0]) +
	 14'sd 7265 * $signed(input_fmap_110[31:16]) +
	 15'sd 15143 * $signed(input_fmap_110[47:32]) +
	 14'sd 5225 * $signed(input_fmap_110[63:48]) +
	 15'sd 9241 * $signed(input_fmap_110[79:64]) +
	 16'sd 25791 * $signed(input_fmap_110[95:80]) +
	 16'sd 32657 * $signed(input_fmap_110[111:96]) +
	 14'sd 8159 * $signed(input_fmap_110[127:112]) +
	 16'sd 28052 * $signed(input_fmap_110[143:128]);

logic signed [31:0] dw_conv_mac_111;
assign dw_conv_mac_111 = 
	 11'sd 975 * $signed(input_fmap_111[15:0]) +
	 13'sd 3280 * $signed(input_fmap_111[31:16]) +
	 14'sd 7573 * $signed(input_fmap_111[47:32]) +
	 16'sd 26741 * $signed(input_fmap_111[63:48]) +
	 15'sd 15382 * $signed(input_fmap_111[79:64]) +
	 16'sd 30930 * $signed(input_fmap_111[95:80]) +
	 16'sd 27124 * $signed(input_fmap_111[111:96]) +
	 15'sd 12554 * $signed(input_fmap_111[127:112]) +
	 13'sd 2125 * $signed(input_fmap_111[143:128]);

logic signed [31:0] dw_conv_mac_112;
assign dw_conv_mac_112 = 
	 11'sd 830 * $signed(input_fmap_112[15:0]) +
	 14'sd 4266 * $signed(input_fmap_112[31:16]) +
	 15'sd 14768 * $signed(input_fmap_112[47:32]) +
	 16'sd 26176 * $signed(input_fmap_112[63:48]) +
	 15'sd 13406 * $signed(input_fmap_112[79:64]) +
	 16'sd 24065 * $signed(input_fmap_112[95:80]) +
	 15'sd 8524 * $signed(input_fmap_112[111:96]) +
	 16'sd 16677 * $signed(input_fmap_112[127:112]) +
	 15'sd 15083 * $signed(input_fmap_112[143:128]);

logic signed [31:0] dw_conv_mac_113;
assign dw_conv_mac_113 = 
	 16'sd 21258 * $signed(input_fmap_113[15:0]) +
	 16'sd 25201 * $signed(input_fmap_113[31:16]) +
	 16'sd 20500 * $signed(input_fmap_113[47:32]) +
	 16'sd 21109 * $signed(input_fmap_113[63:48]) +
	 12'sd 1545 * $signed(input_fmap_113[79:64]) +
	 16'sd 20416 * $signed(input_fmap_113[95:80]) +
	 16'sd 16857 * $signed(input_fmap_113[111:96]) +
	 14'sd 4786 * $signed(input_fmap_113[127:112]) +
	 16'sd 21668 * $signed(input_fmap_113[143:128]);

logic signed [31:0] dw_conv_mac_114;
assign dw_conv_mac_114 = 
	 16'sd 31127 * $signed(input_fmap_114[15:0]) +
	 16'sd 26249 * $signed(input_fmap_114[31:16]) +
	 13'sd 2165 * $signed(input_fmap_114[47:32]) +
	 16'sd 20781 * $signed(input_fmap_114[63:48]) +
	 16'sd 26753 * $signed(input_fmap_114[79:64]) +
	 16'sd 18714 * $signed(input_fmap_114[95:80]) +
	 16'sd 17957 * $signed(input_fmap_114[111:96]) +
	 15'sd 13514 * $signed(input_fmap_114[127:112]) +
	 15'sd 13260 * $signed(input_fmap_114[143:128]);

logic signed [31:0] dw_conv_mac_115;
assign dw_conv_mac_115 = 
	 13'sd 2923 * $signed(input_fmap_115[15:0]) +
	 16'sd 22837 * $signed(input_fmap_115[31:16]) +
	 11'sd 758 * $signed(input_fmap_115[47:32]) +
	 15'sd 9504 * $signed(input_fmap_115[63:48]) +
	 14'sd 7400 * $signed(input_fmap_115[79:64]) +
	 16'sd 22425 * $signed(input_fmap_115[95:80]) +
	 13'sd 3435 * $signed(input_fmap_115[111:96]) +
	 16'sd 28890 * $signed(input_fmap_115[127:112]) +
	 14'sd 6009 * $signed(input_fmap_115[143:128]);

logic signed [31:0] dw_conv_mac_116;
assign dw_conv_mac_116 = 
	 12'sd 1359 * $signed(input_fmap_116[15:0]) +
	 16'sd 17276 * $signed(input_fmap_116[31:16]) +
	 14'sd 6013 * $signed(input_fmap_116[47:32]) +
	 16'sd 27333 * $signed(input_fmap_116[63:48]) +
	 12'sd 1815 * $signed(input_fmap_116[79:64]) +
	 16'sd 29896 * $signed(input_fmap_116[95:80]) +
	 14'sd 4279 * $signed(input_fmap_116[111:96]) +
	 14'sd 4912 * $signed(input_fmap_116[127:112]) +
	 16'sd 17787 * $signed(input_fmap_116[143:128]);

logic signed [31:0] dw_conv_mac_117;
assign dw_conv_mac_117 = 
	 16'sd 16577 * $signed(input_fmap_117[15:0]) +
	 15'sd 14998 * $signed(input_fmap_117[31:16]) +
	 15'sd 9860 * $signed(input_fmap_117[47:32]) +
	 16'sd 28786 * $signed(input_fmap_117[63:48]) +
	 15'sd 10586 * $signed(input_fmap_117[79:64]) +
	 14'sd 5621 * $signed(input_fmap_117[95:80]) +
	 16'sd 20233 * $signed(input_fmap_117[111:96]) +
	 15'sd 13780 * $signed(input_fmap_117[127:112]) +
	 15'sd 12332 * $signed(input_fmap_117[143:128]);

logic signed [31:0] dw_conv_mac_118;
assign dw_conv_mac_118 = 
	 16'sd 27293 * $signed(input_fmap_118[15:0]) +
	 13'sd 2863 * $signed(input_fmap_118[31:16]) +
	 16'sd 21140 * $signed(input_fmap_118[47:32]) +
	 16'sd 20172 * $signed(input_fmap_118[63:48]) +
	 13'sd 2793 * $signed(input_fmap_118[79:64]) +
	 16'sd 22592 * $signed(input_fmap_118[95:80]) +
	 15'sd 12676 * $signed(input_fmap_118[111:96]) +
	 16'sd 26417 * $signed(input_fmap_118[127:112]) +
	 14'sd 7952 * $signed(input_fmap_118[143:128]);

logic signed [31:0] dw_conv_mac_119;
assign dw_conv_mac_119 = 
	 16'sd 30800 * $signed(input_fmap_119[15:0]) +
	 16'sd 17681 * $signed(input_fmap_119[31:16]) +
	 16'sd 26445 * $signed(input_fmap_119[47:32]) +
	 16'sd 27336 * $signed(input_fmap_119[63:48]) +
	 16'sd 16598 * $signed(input_fmap_119[79:64]) +
	 15'sd 13992 * $signed(input_fmap_119[95:80]) +
	 16'sd 27893 * $signed(input_fmap_119[111:96]) +
	 15'sd 10783 * $signed(input_fmap_119[127:112]) +
	 16'sd 27098 * $signed(input_fmap_119[143:128]);

logic signed [31:0] dw_conv_mac_120;
assign dw_conv_mac_120 = 
	 15'sd 12517 * $signed(input_fmap_120[15:0]) +
	 16'sd 24070 * $signed(input_fmap_120[31:16]) +
	 16'sd 17982 * $signed(input_fmap_120[47:32]) +
	 15'sd 13898 * $signed(input_fmap_120[63:48]) +
	 16'sd 32588 * $signed(input_fmap_120[79:64]) +
	 16'sd 20281 * $signed(input_fmap_120[95:80]) +
	 11'sd 534 * $signed(input_fmap_120[111:96]) +
	 15'sd 8463 * $signed(input_fmap_120[127:112]) +
	 13'sd 4027 * $signed(input_fmap_120[143:128]);

logic signed [31:0] dw_conv_mac_121;
assign dw_conv_mac_121 = 
	 15'sd 8285 * $signed(input_fmap_121[15:0]) +
	 16'sd 30660 * $signed(input_fmap_121[31:16]) +
	 16'sd 19356 * $signed(input_fmap_121[47:32]) +
	 16'sd 26623 * $signed(input_fmap_121[63:48]) +
	 16'sd 32708 * $signed(input_fmap_121[79:64]) +
	 15'sd 11683 * $signed(input_fmap_121[95:80]) +
	 16'sd 28493 * $signed(input_fmap_121[111:96]) +
	 16'sd 19921 * $signed(input_fmap_121[127:112]) +
	 16'sd 26814 * $signed(input_fmap_121[143:128]);

logic signed [31:0] dw_conv_mac_122;
assign dw_conv_mac_122 = 
	 16'sd 23016 * $signed(input_fmap_122[15:0]) +
	 16'sd 19796 * $signed(input_fmap_122[31:16]) +
	 16'sd 17479 * $signed(input_fmap_122[47:32]) +
	 14'sd 4505 * $signed(input_fmap_122[63:48]) +
	 15'sd 12534 * $signed(input_fmap_122[79:64]) +
	 16'sd 31439 * $signed(input_fmap_122[95:80]) +
	 16'sd 24664 * $signed(input_fmap_122[111:96]) +
	 15'sd 9274 * $signed(input_fmap_122[127:112]) +
	 16'sd 20430 * $signed(input_fmap_122[143:128]);

logic signed [31:0] dw_conv_mac_123;
assign dw_conv_mac_123 = 
	 15'sd 13509 * $signed(input_fmap_123[15:0]) +
	 16'sd 26369 * $signed(input_fmap_123[31:16]) +
	 16'sd 25521 * $signed(input_fmap_123[47:32]) +
	 16'sd 20861 * $signed(input_fmap_123[63:48]) +
	 16'sd 26497 * $signed(input_fmap_123[79:64]) +
	 15'sd 8998 * $signed(input_fmap_123[95:80]) +
	 16'sd 26152 * $signed(input_fmap_123[111:96]) +
	 16'sd 30846 * $signed(input_fmap_123[127:112]) +
	 16'sd 29198 * $signed(input_fmap_123[143:128]);

logic signed [31:0] dw_conv_mac_124;
assign dw_conv_mac_124 = 
	 16'sd 27949 * $signed(input_fmap_124[15:0]) +
	 13'sd 3834 * $signed(input_fmap_124[31:16]) +
	 15'sd 14833 * $signed(input_fmap_124[47:32]) +
	 16'sd 20423 * $signed(input_fmap_124[63:48]) +
	 16'sd 22778 * $signed(input_fmap_124[79:64]) +
	 14'sd 7388 * $signed(input_fmap_124[95:80]) +
	 16'sd 28954 * $signed(input_fmap_124[111:96]) +
	 14'sd 5021 * $signed(input_fmap_124[127:112]) +
	 15'sd 14297 * $signed(input_fmap_124[143:128]);

logic signed [31:0] dw_conv_mac_125;
assign dw_conv_mac_125 = 
	 15'sd 12323 * $signed(input_fmap_125[15:0]) +
	 15'sd 15443 * $signed(input_fmap_125[31:16]) +
	 13'sd 2445 * $signed(input_fmap_125[47:32]) +
	 16'sd 23647 * $signed(input_fmap_125[63:48]) +
	 15'sd 8956 * $signed(input_fmap_125[79:64]) +
	 16'sd 23116 * $signed(input_fmap_125[95:80]) +
	 15'sd 15270 * $signed(input_fmap_125[111:96]) +
	 16'sd 24512 * $signed(input_fmap_125[127:112]) +
	 14'sd 5424 * $signed(input_fmap_125[143:128]);

logic signed [31:0] dw_conv_mac_126;
assign dw_conv_mac_126 = 
	 16'sd 28591 * $signed(input_fmap_126[15:0]) +
	 16'sd 26447 * $signed(input_fmap_126[31:16]) +
	 12'sd 1126 * $signed(input_fmap_126[47:32]) +
	 16'sd 25875 * $signed(input_fmap_126[63:48]) +
	 16'sd 25070 * $signed(input_fmap_126[79:64]) +
	 16'sd 31434 * $signed(input_fmap_126[95:80]) +
	 16'sd 21584 * $signed(input_fmap_126[111:96]) +
	 14'sd 6987 * $signed(input_fmap_126[127:112]) +
	 13'sd 2288 * $signed(input_fmap_126[143:128]);

logic signed [31:0] dw_conv_mac_127;
assign dw_conv_mac_127 = 
	 16'sd 20015 * $signed(input_fmap_127[15:0]) +
	 16'sd 31674 * $signed(input_fmap_127[31:16]) +
	 14'sd 4175 * $signed(input_fmap_127[47:32]) +
	 13'sd 2665 * $signed(input_fmap_127[63:48]) +
	 15'sd 9460 * $signed(input_fmap_127[79:64]) +
	 15'sd 8828 * $signed(input_fmap_127[95:80]) +
	 16'sd 18987 * $signed(input_fmap_127[111:96]) +
	 16'sd 19311 * $signed(input_fmap_127[127:112]) +
	 15'sd 10471 * $signed(input_fmap_127[143:128]);

logic signed [31:0] dw_conv_mac_128;
assign dw_conv_mac_128 = 
	 16'sd 22973 * $signed(input_fmap_128[15:0]) +
	 15'sd 8507 * $signed(input_fmap_128[31:16]) +
	 16'sd 25887 * $signed(input_fmap_128[47:32]) +
	 15'sd 15131 * $signed(input_fmap_128[63:48]) +
	 16'sd 31419 * $signed(input_fmap_128[79:64]) +
	 15'sd 10957 * $signed(input_fmap_128[95:80]) +
	 16'sd 17761 * $signed(input_fmap_128[111:96]) +
	 12'sd 1231 * $signed(input_fmap_128[127:112]) +
	 16'sd 28026 * $signed(input_fmap_128[143:128]);

logic signed [31:0] dw_conv_mac_129;
assign dw_conv_mac_129 = 
	 14'sd 6235 * $signed(input_fmap_129[15:0]) +
	 16'sd 27425 * $signed(input_fmap_129[31:16]) +
	 16'sd 24222 * $signed(input_fmap_129[47:32]) +
	 14'sd 8077 * $signed(input_fmap_129[63:48]) +
	 16'sd 24229 * $signed(input_fmap_129[79:64]) +
	 14'sd 4485 * $signed(input_fmap_129[95:80]) +
	 16'sd 27023 * $signed(input_fmap_129[111:96]) +
	 13'sd 3194 * $signed(input_fmap_129[127:112]) +
	 16'sd 26079 * $signed(input_fmap_129[143:128]);

logic signed [31:0] dw_conv_mac_130;
assign dw_conv_mac_130 = 
	 16'sd 22740 * $signed(input_fmap_130[15:0]) +
	 16'sd 29491 * $signed(input_fmap_130[31:16]) +
	 16'sd 32726 * $signed(input_fmap_130[47:32]) +
	 16'sd 26883 * $signed(input_fmap_130[63:48]) +
	 16'sd 30979 * $signed(input_fmap_130[79:64]) +
	 16'sd 28950 * $signed(input_fmap_130[95:80]) +
	 15'sd 12966 * $signed(input_fmap_130[111:96]) +
	 16'sd 26323 * $signed(input_fmap_130[127:112]) +
	 16'sd 17352 * $signed(input_fmap_130[143:128]);

logic signed [31:0] dw_conv_mac_131;
assign dw_conv_mac_131 = 
	 16'sd 23617 * $signed(input_fmap_131[15:0]) +
	 13'sd 2869 * $signed(input_fmap_131[31:16]) +
	 16'sd 21528 * $signed(input_fmap_131[47:32]) +
	 12'sd 1554 * $signed(input_fmap_131[63:48]) +
	 16'sd 30331 * $signed(input_fmap_131[79:64]) +
	 14'sd 5111 * $signed(input_fmap_131[95:80]) +
	 16'sd 28663 * $signed(input_fmap_131[111:96]) +
	 16'sd 25483 * $signed(input_fmap_131[127:112]) +
	 14'sd 6504 * $signed(input_fmap_131[143:128]);

logic signed [31:0] dw_conv_mac_132;
assign dw_conv_mac_132 = 
	 16'sd 17866 * $signed(input_fmap_132[15:0]) +
	 16'sd 19380 * $signed(input_fmap_132[31:16]) +
	 15'sd 10684 * $signed(input_fmap_132[47:32]) +
	 16'sd 24797 * $signed(input_fmap_132[63:48]) +
	 16'sd 30695 * $signed(input_fmap_132[79:64]) +
	 15'sd 11431 * $signed(input_fmap_132[95:80]) +
	 16'sd 27260 * $signed(input_fmap_132[111:96]) +
	 14'sd 5153 * $signed(input_fmap_132[127:112]) +
	 14'sd 4831 * $signed(input_fmap_132[143:128]);

logic signed [31:0] dw_conv_mac_133;
assign dw_conv_mac_133 = 
	 16'sd 23288 * $signed(input_fmap_133[15:0]) +
	 15'sd 12745 * $signed(input_fmap_133[31:16]) +
	 14'sd 5092 * $signed(input_fmap_133[47:32]) +
	 14'sd 4601 * $signed(input_fmap_133[63:48]) +
	 16'sd 22794 * $signed(input_fmap_133[79:64]) +
	 11'sd 919 * $signed(input_fmap_133[95:80]) +
	 16'sd 22691 * $signed(input_fmap_133[111:96]) +
	 14'sd 7866 * $signed(input_fmap_133[127:112]) +
	 16'sd 30545 * $signed(input_fmap_133[143:128]);

logic signed [31:0] dw_conv_mac_134;
assign dw_conv_mac_134 = 
	 14'sd 5450 * $signed(input_fmap_134[15:0]) +
	 15'sd 9032 * $signed(input_fmap_134[31:16]) +
	 15'sd 10910 * $signed(input_fmap_134[47:32]) +
	 16'sd 22927 * $signed(input_fmap_134[63:48]) +
	 16'sd 17395 * $signed(input_fmap_134[79:64]) +
	 15'sd 10504 * $signed(input_fmap_134[95:80]) +
	 13'sd 3487 * $signed(input_fmap_134[111:96]) +
	 15'sd 9632 * $signed(input_fmap_134[127:112]) +
	 16'sd 23595 * $signed(input_fmap_134[143:128]);

logic signed [31:0] dw_conv_mac_135;
assign dw_conv_mac_135 = 
	 16'sd 30503 * $signed(input_fmap_135[15:0]) +
	 15'sd 15538 * $signed(input_fmap_135[31:16]) +
	 16'sd 16546 * $signed(input_fmap_135[47:32]) +
	 16'sd 31304 * $signed(input_fmap_135[63:48]) +
	 14'sd 6971 * $signed(input_fmap_135[79:64]) +
	 15'sd 11006 * $signed(input_fmap_135[95:80]) +
	 15'sd 13888 * $signed(input_fmap_135[111:96]) +
	 13'sd 3695 * $signed(input_fmap_135[127:112]) +
	 16'sd 29454 * $signed(input_fmap_135[143:128]);

logic signed [31:0] dw_conv_mac_136;
assign dw_conv_mac_136 = 
	 16'sd 32321 * $signed(input_fmap_136[15:0]) +
	 16'sd 19740 * $signed(input_fmap_136[31:16]) +
	 16'sd 26222 * $signed(input_fmap_136[47:32]) +
	 15'sd 9768 * $signed(input_fmap_136[63:48]) +
	 16'sd 22863 * $signed(input_fmap_136[79:64]) +
	 16'sd 30117 * $signed(input_fmap_136[95:80]) +
	 13'sd 3781 * $signed(input_fmap_136[111:96]) +
	 16'sd 28397 * $signed(input_fmap_136[127:112]) +
	 15'sd 16045 * $signed(input_fmap_136[143:128]);

logic signed [31:0] dw_conv_mac_137;
assign dw_conv_mac_137 = 
	 15'sd 10166 * $signed(input_fmap_137[15:0]) +
	 13'sd 3696 * $signed(input_fmap_137[31:16]) +
	 11'sd 979 * $signed(input_fmap_137[47:32]) +
	 15'sd 9865 * $signed(input_fmap_137[63:48]) +
	 16'sd 29681 * $signed(input_fmap_137[79:64]) +
	 16'sd 32658 * $signed(input_fmap_137[95:80]) +
	 15'sd 9881 * $signed(input_fmap_137[111:96]) +
	 15'sd 8970 * $signed(input_fmap_137[127:112]) +
	 15'sd 9104 * $signed(input_fmap_137[143:128]);

logic signed [31:0] dw_conv_mac_138;
assign dw_conv_mac_138 = 
	 16'sd 19809 * $signed(input_fmap_138[15:0]) +
	 15'sd 14727 * $signed(input_fmap_138[31:16]) +
	 15'sd 16318 * $signed(input_fmap_138[47:32]) +
	 13'sd 3836 * $signed(input_fmap_138[63:48]) +
	 12'sd 1850 * $signed(input_fmap_138[79:64]) +
	 15'sd 16181 * $signed(input_fmap_138[95:80]) +
	 11'sd 622 * $signed(input_fmap_138[111:96]) +
	 16'sd 20054 * $signed(input_fmap_138[127:112]) +
	 16'sd 23673 * $signed(input_fmap_138[143:128]);

logic signed [31:0] dw_conv_mac_139;
assign dw_conv_mac_139 = 
	 14'sd 4837 * $signed(input_fmap_139[15:0]) +
	 15'sd 13858 * $signed(input_fmap_139[31:16]) +
	 16'sd 17057 * $signed(input_fmap_139[47:32]) +
	 15'sd 9143 * $signed(input_fmap_139[63:48]) +
	 16'sd 18791 * $signed(input_fmap_139[79:64]) +
	 15'sd 9666 * $signed(input_fmap_139[95:80]) +
	 16'sd 26010 * $signed(input_fmap_139[111:96]) +
	 15'sd 15030 * $signed(input_fmap_139[127:112]) +
	 15'sd 15371 * $signed(input_fmap_139[143:128]);

logic signed [31:0] dw_conv_mac_140;
assign dw_conv_mac_140 = 
	 13'sd 2915 * $signed(input_fmap_140[15:0]) +
	 15'sd 13044 * $signed(input_fmap_140[31:16]) +
	 16'sd 28962 * $signed(input_fmap_140[47:32]) +
	 14'sd 7830 * $signed(input_fmap_140[63:48]) +
	 15'sd 13033 * $signed(input_fmap_140[79:64]) +
	 16'sd 16431 * $signed(input_fmap_140[95:80]) +
	 16'sd 20453 * $signed(input_fmap_140[111:96]) +
	 16'sd 31237 * $signed(input_fmap_140[127:112]) +
	 16'sd 22806 * $signed(input_fmap_140[143:128]);

logic signed [31:0] dw_conv_mac_141;
assign dw_conv_mac_141 = 
	 16'sd 30576 * $signed(input_fmap_141[15:0]) +
	 16'sd 23267 * $signed(input_fmap_141[31:16]) +
	 15'sd 12383 * $signed(input_fmap_141[47:32]) +
	 14'sd 5282 * $signed(input_fmap_141[63:48]) +
	 16'sd 19634 * $signed(input_fmap_141[79:64]) +
	 16'sd 21906 * $signed(input_fmap_141[95:80]) +
	 16'sd 21890 * $signed(input_fmap_141[111:96]) +
	 16'sd 23371 * $signed(input_fmap_141[127:112]) +
	 16'sd 30762 * $signed(input_fmap_141[143:128]);

logic signed [31:0] dw_conv_mac_142;
assign dw_conv_mac_142 = 
	 15'sd 15312 * $signed(input_fmap_142[15:0]) +
	 9'sd 195 * $signed(input_fmap_142[31:16]) +
	 16'sd 21949 * $signed(input_fmap_142[47:32]) +
	 16'sd 27975 * $signed(input_fmap_142[63:48]) +
	 15'sd 12821 * $signed(input_fmap_142[79:64]) +
	 16'sd 19653 * $signed(input_fmap_142[95:80]) +
	 15'sd 13024 * $signed(input_fmap_142[111:96]) +
	 15'sd 15040 * $signed(input_fmap_142[127:112]) +
	 16'sd 19242 * $signed(input_fmap_142[143:128]);

logic signed [31:0] dw_conv_mac_143;
assign dw_conv_mac_143 = 
	 15'sd 9037 * $signed(input_fmap_143[15:0]) +
	 15'sd 15466 * $signed(input_fmap_143[31:16]) +
	 12'sd 1199 * $signed(input_fmap_143[47:32]) +
	 11'sd 916 * $signed(input_fmap_143[63:48]) +
	 16'sd 28692 * $signed(input_fmap_143[79:64]) +
	 15'sd 9906 * $signed(input_fmap_143[95:80]) +
	 16'sd 30155 * $signed(input_fmap_143[111:96]) +
	 16'sd 18286 * $signed(input_fmap_143[127:112]) +
	 12'sd 1370 * $signed(input_fmap_143[143:128]);

logic signed [31:0] dw_conv_mac_144;
assign dw_conv_mac_144 = 
	 16'sd 26391 * $signed(input_fmap_144[15:0]) +
	 12'sd 1353 * $signed(input_fmap_144[31:16]) +
	 15'sd 14385 * $signed(input_fmap_144[47:32]) +
	 16'sd 26091 * $signed(input_fmap_144[63:48]) +
	 15'sd 9565 * $signed(input_fmap_144[79:64]) +
	 16'sd 30489 * $signed(input_fmap_144[95:80]) +
	 12'sd 1574 * $signed(input_fmap_144[111:96]) +
	 16'sd 31741 * $signed(input_fmap_144[127:112]) +
	 14'sd 5259 * $signed(input_fmap_144[143:128]);

logic signed [31:0] dw_conv_mac_145;
assign dw_conv_mac_145 = 
	 13'sd 2757 * $signed(input_fmap_145[15:0]) +
	 15'sd 11579 * $signed(input_fmap_145[31:16]) +
	 16'sd 27766 * $signed(input_fmap_145[47:32]) +
	 16'sd 28825 * $signed(input_fmap_145[63:48]) +
	 14'sd 8062 * $signed(input_fmap_145[79:64]) +
	 16'sd 31184 * $signed(input_fmap_145[95:80]) +
	 7'sd 52 * $signed(input_fmap_145[111:96]) +
	 16'sd 24092 * $signed(input_fmap_145[127:112]) +
	 16'sd 27247 * $signed(input_fmap_145[143:128]);

logic signed [31:0] dw_conv_mac_146;
assign dw_conv_mac_146 = 
	 15'sd 14954 * $signed(input_fmap_146[15:0]) +
	 15'sd 15458 * $signed(input_fmap_146[31:16]) +
	 15'sd 12659 * $signed(input_fmap_146[47:32]) +
	 16'sd 23205 * $signed(input_fmap_146[63:48]) +
	 15'sd 11161 * $signed(input_fmap_146[79:64]) +
	 16'sd 21758 * $signed(input_fmap_146[95:80]) +
	 12'sd 1654 * $signed(input_fmap_146[111:96]) +
	 16'sd 16842 * $signed(input_fmap_146[127:112]) +
	 15'sd 13882 * $signed(input_fmap_146[143:128]);

logic signed [31:0] dw_conv_mac_147;
assign dw_conv_mac_147 = 
	 16'sd 24810 * $signed(input_fmap_147[15:0]) +
	 15'sd 13357 * $signed(input_fmap_147[31:16]) +
	 16'sd 19399 * $signed(input_fmap_147[47:32]) +
	 16'sd 25359 * $signed(input_fmap_147[63:48]) +
	 16'sd 24741 * $signed(input_fmap_147[79:64]) +
	 16'sd 20575 * $signed(input_fmap_147[95:80]) +
	 16'sd 18124 * $signed(input_fmap_147[111:96]) +
	 16'sd 16685 * $signed(input_fmap_147[127:112]) +
	 16'sd 26049 * $signed(input_fmap_147[143:128]);

logic signed [31:0] dw_conv_mac_148;
assign dw_conv_mac_148 = 
	 16'sd 26859 * $signed(input_fmap_148[15:0]) +
	 16'sd 29563 * $signed(input_fmap_148[31:16]) +
	 13'sd 2075 * $signed(input_fmap_148[47:32]) +
	 16'sd 27429 * $signed(input_fmap_148[63:48]) +
	 14'sd 5623 * $signed(input_fmap_148[79:64]) +
	 13'sd 3781 * $signed(input_fmap_148[95:80]) +
	 15'sd 10992 * $signed(input_fmap_148[111:96]) +
	 15'sd 8467 * $signed(input_fmap_148[127:112]) +
	 14'sd 6054 * $signed(input_fmap_148[143:128]);

logic signed [31:0] dw_conv_mac_149;
assign dw_conv_mac_149 = 
	 15'sd 14004 * $signed(input_fmap_149[15:0]) +
	 16'sd 24368 * $signed(input_fmap_149[31:16]) +
	 16'sd 31822 * $signed(input_fmap_149[47:32]) +
	 16'sd 24623 * $signed(input_fmap_149[63:48]) +
	 16'sd 19205 * $signed(input_fmap_149[79:64]) +
	 15'sd 10369 * $signed(input_fmap_149[95:80]) +
	 16'sd 21854 * $signed(input_fmap_149[111:96]) +
	 15'sd 12589 * $signed(input_fmap_149[127:112]) +
	 15'sd 9671 * $signed(input_fmap_149[143:128]);

logic signed [31:0] dw_conv_mac_150;
assign dw_conv_mac_150 = 
	 13'sd 2918 * $signed(input_fmap_150[15:0]) +
	 16'sd 25071 * $signed(input_fmap_150[31:16]) +
	 16'sd 22099 * $signed(input_fmap_150[47:32]) +
	 16'sd 28493 * $signed(input_fmap_150[63:48]) +
	 16'sd 30556 * $signed(input_fmap_150[79:64]) +
	 13'sd 2907 * $signed(input_fmap_150[95:80]) +
	 16'sd 25361 * $signed(input_fmap_150[111:96]) +
	 13'sd 3813 * $signed(input_fmap_150[127:112]) +
	 16'sd 18072 * $signed(input_fmap_150[143:128]);

logic signed [31:0] dw_conv_mac_151;
assign dw_conv_mac_151 = 
	 15'sd 12955 * $signed(input_fmap_151[15:0]) +
	 16'sd 18189 * $signed(input_fmap_151[31:16]) +
	 16'sd 30590 * $signed(input_fmap_151[47:32]) +
	 13'sd 3506 * $signed(input_fmap_151[63:48]) +
	 16'sd 21442 * $signed(input_fmap_151[79:64]) +
	 15'sd 12963 * $signed(input_fmap_151[95:80]) +
	 16'sd 28462 * $signed(input_fmap_151[111:96]) +
	 16'sd 17056 * $signed(input_fmap_151[127:112]) +
	 14'sd 8032 * $signed(input_fmap_151[143:128]);

logic signed [31:0] dw_conv_mac_152;
assign dw_conv_mac_152 = 
	 16'sd 20633 * $signed(input_fmap_152[15:0]) +
	 16'sd 22202 * $signed(input_fmap_152[31:16]) +
	 16'sd 25548 * $signed(input_fmap_152[47:32]) +
	 16'sd 27103 * $signed(input_fmap_152[63:48]) +
	 16'sd 23738 * $signed(input_fmap_152[79:64]) +
	 16'sd 32618 * $signed(input_fmap_152[95:80]) +
	 15'sd 11144 * $signed(input_fmap_152[111:96]) +
	 16'sd 31871 * $signed(input_fmap_152[127:112]) +
	 16'sd 26726 * $signed(input_fmap_152[143:128]);

logic signed [31:0] dw_conv_mac_153;
assign dw_conv_mac_153 = 
	 16'sd 25146 * $signed(input_fmap_153[15:0]) +
	 16'sd 22894 * $signed(input_fmap_153[31:16]) +
	 11'sd 539 * $signed(input_fmap_153[47:32]) +
	 13'sd 4027 * $signed(input_fmap_153[63:48]) +
	 16'sd 32050 * $signed(input_fmap_153[79:64]) +
	 16'sd 17919 * $signed(input_fmap_153[95:80]) +
	 16'sd 22135 * $signed(input_fmap_153[111:96]) +
	 15'sd 12151 * $signed(input_fmap_153[127:112]) +
	 16'sd 21891 * $signed(input_fmap_153[143:128]);

logic signed [31:0] dw_conv_mac_154;
assign dw_conv_mac_154 = 
	 15'sd 11233 * $signed(input_fmap_154[15:0]) +
	 13'sd 2058 * $signed(input_fmap_154[31:16]) +
	 16'sd 31856 * $signed(input_fmap_154[47:32]) +
	 12'sd 1415 * $signed(input_fmap_154[63:48]) +
	 15'sd 15038 * $signed(input_fmap_154[79:64]) +
	 14'sd 7515 * $signed(input_fmap_154[95:80]) +
	 16'sd 18918 * $signed(input_fmap_154[111:96]) +
	 16'sd 31774 * $signed(input_fmap_154[127:112]) +
	 16'sd 24153 * $signed(input_fmap_154[143:128]);

logic signed [31:0] dw_conv_mac_155;
assign dw_conv_mac_155 = 
	 16'sd 30715 * $signed(input_fmap_155[15:0]) +
	 14'sd 4331 * $signed(input_fmap_155[31:16]) +
	 14'sd 4195 * $signed(input_fmap_155[47:32]) +
	 16'sd 32412 * $signed(input_fmap_155[63:48]) +
	 16'sd 25207 * $signed(input_fmap_155[79:64]) +
	 16'sd 32613 * $signed(input_fmap_155[95:80]) +
	 16'sd 27844 * $signed(input_fmap_155[111:96]) +
	 14'sd 4216 * $signed(input_fmap_155[127:112]) +
	 15'sd 13935 * $signed(input_fmap_155[143:128]);

logic signed [31:0] dw_conv_mac_156;
assign dw_conv_mac_156 = 
	 15'sd 13041 * $signed(input_fmap_156[15:0]) +
	 15'sd 11462 * $signed(input_fmap_156[31:16]) +
	 16'sd 16710 * $signed(input_fmap_156[47:32]) +
	 15'sd 8663 * $signed(input_fmap_156[63:48]) +
	 16'sd 23679 * $signed(input_fmap_156[79:64]) +
	 15'sd 13374 * $signed(input_fmap_156[95:80]) +
	 15'sd 12128 * $signed(input_fmap_156[111:96]) +
	 16'sd 17494 * $signed(input_fmap_156[127:112]) +
	 15'sd 13368 * $signed(input_fmap_156[143:128]);

logic signed [31:0] dw_conv_mac_157;
assign dw_conv_mac_157 = 
	 16'sd 28677 * $signed(input_fmap_157[15:0]) +
	 16'sd 29555 * $signed(input_fmap_157[31:16]) +
	 16'sd 25369 * $signed(input_fmap_157[47:32]) +
	 16'sd 16933 * $signed(input_fmap_157[63:48]) +
	 15'sd 15009 * $signed(input_fmap_157[79:64]) +
	 15'sd 12287 * $signed(input_fmap_157[95:80]) +
	 16'sd 19003 * $signed(input_fmap_157[111:96]) +
	 14'sd 7315 * $signed(input_fmap_157[127:112]) +
	 13'sd 3153 * $signed(input_fmap_157[143:128]);

logic signed [31:0] dw_conv_mac_158;
assign dw_conv_mac_158 = 
	 14'sd 4475 * $signed(input_fmap_158[15:0]) +
	 12'sd 1655 * $signed(input_fmap_158[31:16]) +
	 16'sd 19953 * $signed(input_fmap_158[47:32]) +
	 16'sd 27883 * $signed(input_fmap_158[63:48]) +
	 16'sd 30749 * $signed(input_fmap_158[79:64]) +
	 16'sd 29066 * $signed(input_fmap_158[95:80]) +
	 14'sd 7435 * $signed(input_fmap_158[111:96]) +
	 14'sd 5535 * $signed(input_fmap_158[127:112]) +
	 14'sd 7985 * $signed(input_fmap_158[143:128]);

logic signed [31:0] dw_conv_mac_159;
assign dw_conv_mac_159 = 
	 16'sd 23983 * $signed(input_fmap_159[15:0]) +
	 15'sd 15413 * $signed(input_fmap_159[31:16]) +
	 15'sd 8874 * $signed(input_fmap_159[47:32]) +
	 15'sd 14072 * $signed(input_fmap_159[63:48]) +
	 14'sd 6222 * $signed(input_fmap_159[79:64]) +
	 16'sd 20955 * $signed(input_fmap_159[95:80]) +
	 16'sd 27072 * $signed(input_fmap_159[111:96]) +
	 16'sd 32068 * $signed(input_fmap_159[127:112]) +
	 15'sd 14324 * $signed(input_fmap_159[143:128]);

logic signed [31:0] dw_conv_mac_160;
assign dw_conv_mac_160 = 
	 16'sd 31223 * $signed(input_fmap_160[15:0]) +
	 15'sd 10765 * $signed(input_fmap_160[31:16]) +
	 16'sd 29190 * $signed(input_fmap_160[47:32]) +
	 14'sd 5516 * $signed(input_fmap_160[63:48]) +
	 16'sd 29293 * $signed(input_fmap_160[79:64]) +
	 16'sd 18088 * $signed(input_fmap_160[95:80]) +
	 16'sd 27914 * $signed(input_fmap_160[111:96]) +
	 16'sd 19764 * $signed(input_fmap_160[127:112]) +
	 16'sd 27475 * $signed(input_fmap_160[143:128]);

logic signed [31:0] dw_conv_mac_161;
assign dw_conv_mac_161 = 
	 16'sd 31278 * $signed(input_fmap_161[15:0]) +
	 15'sd 11260 * $signed(input_fmap_161[31:16]) +
	 16'sd 30161 * $signed(input_fmap_161[47:32]) +
	 16'sd 25369 * $signed(input_fmap_161[63:48]) +
	 16'sd 29959 * $signed(input_fmap_161[79:64]) +
	 16'sd 23820 * $signed(input_fmap_161[95:80]) +
	 16'sd 22939 * $signed(input_fmap_161[111:96]) +
	 16'sd 17622 * $signed(input_fmap_161[127:112]) +
	 13'sd 2644 * $signed(input_fmap_161[143:128]);

logic signed [31:0] dw_conv_mac_162;
assign dw_conv_mac_162 = 
	 16'sd 16714 * $signed(input_fmap_162[15:0]) +
	 15'sd 10021 * $signed(input_fmap_162[31:16]) +
	 13'sd 3985 * $signed(input_fmap_162[47:32]) +
	 14'sd 7841 * $signed(input_fmap_162[63:48]) +
	 13'sd 3362 * $signed(input_fmap_162[79:64]) +
	 15'sd 11694 * $signed(input_fmap_162[95:80]) +
	 12'sd 1690 * $signed(input_fmap_162[111:96]) +
	 16'sd 18894 * $signed(input_fmap_162[127:112]) +
	 15'sd 8575 * $signed(input_fmap_162[143:128]);

logic signed [31:0] dw_conv_mac_163;
assign dw_conv_mac_163 = 
	 16'sd 30775 * $signed(input_fmap_163[15:0]) +
	 14'sd 7064 * $signed(input_fmap_163[31:16]) +
	 15'sd 10088 * $signed(input_fmap_163[47:32]) +
	 14'sd 5491 * $signed(input_fmap_163[63:48]) +
	 12'sd 1842 * $signed(input_fmap_163[79:64]) +
	 16'sd 21445 * $signed(input_fmap_163[95:80]) +
	 16'sd 31963 * $signed(input_fmap_163[111:96]) +
	 12'sd 1341 * $signed(input_fmap_163[127:112]) +
	 16'sd 26640 * $signed(input_fmap_163[143:128]);

logic signed [31:0] dw_conv_mac_164;
assign dw_conv_mac_164 = 
	 15'sd 14159 * $signed(input_fmap_164[15:0]) +
	 13'sd 2270 * $signed(input_fmap_164[31:16]) +
	 16'sd 27482 * $signed(input_fmap_164[47:32]) +
	 13'sd 3691 * $signed(input_fmap_164[63:48]) +
	 16'sd 18337 * $signed(input_fmap_164[79:64]) +
	 16'sd 29378 * $signed(input_fmap_164[95:80]) +
	 16'sd 24848 * $signed(input_fmap_164[111:96]) +
	 16'sd 28799 * $signed(input_fmap_164[127:112]) +
	 14'sd 7089 * $signed(input_fmap_164[143:128]);

logic signed [31:0] dw_conv_mac_165;
assign dw_conv_mac_165 = 
	 16'sd 32355 * $signed(input_fmap_165[15:0]) +
	 13'sd 3875 * $signed(input_fmap_165[31:16]) +
	 16'sd 29100 * $signed(input_fmap_165[47:32]) +
	 16'sd 25926 * $signed(input_fmap_165[63:48]) +
	 16'sd 21915 * $signed(input_fmap_165[79:64]) +
	 15'sd 14706 * $signed(input_fmap_165[95:80]) +
	 16'sd 19293 * $signed(input_fmap_165[111:96]) +
	 12'sd 1992 * $signed(input_fmap_165[127:112]) +
	 16'sd 28171 * $signed(input_fmap_165[143:128]);

logic signed [31:0] dw_conv_mac_166;
assign dw_conv_mac_166 = 
	 16'sd 28524 * $signed(input_fmap_166[15:0]) +
	 15'sd 12488 * $signed(input_fmap_166[31:16]) +
	 14'sd 7838 * $signed(input_fmap_166[47:32]) +
	 16'sd 20414 * $signed(input_fmap_166[63:48]) +
	 9'sd 180 * $signed(input_fmap_166[79:64]) +
	 15'sd 13132 * $signed(input_fmap_166[95:80]) +
	 15'sd 8443 * $signed(input_fmap_166[111:96]) +
	 16'sd 19883 * $signed(input_fmap_166[127:112]) +
	 14'sd 4856 * $signed(input_fmap_166[143:128]);

logic signed [31:0] dw_conv_mac_167;
assign dw_conv_mac_167 = 
	 13'sd 3277 * $signed(input_fmap_167[15:0]) +
	 16'sd 29958 * $signed(input_fmap_167[31:16]) +
	 14'sd 7460 * $signed(input_fmap_167[47:32]) +
	 14'sd 6537 * $signed(input_fmap_167[63:48]) +
	 16'sd 22856 * $signed(input_fmap_167[79:64]) +
	 14'sd 5430 * $signed(input_fmap_167[95:80]) +
	 16'sd 29696 * $signed(input_fmap_167[111:96]) +
	 14'sd 7090 * $signed(input_fmap_167[127:112]) +
	 11'sd 972 * $signed(input_fmap_167[143:128]);

logic signed [31:0] dw_conv_mac_168;
assign dw_conv_mac_168 = 
	 16'sd 19649 * $signed(input_fmap_168[15:0]) +
	 15'sd 13787 * $signed(input_fmap_168[31:16]) +
	 16'sd 25796 * $signed(input_fmap_168[47:32]) +
	 15'sd 13418 * $signed(input_fmap_168[63:48]) +
	 13'sd 3729 * $signed(input_fmap_168[79:64]) +
	 16'sd 22092 * $signed(input_fmap_168[95:80]) +
	 16'sd 28643 * $signed(input_fmap_168[111:96]) +
	 16'sd 28072 * $signed(input_fmap_168[127:112]) +
	 16'sd 26253 * $signed(input_fmap_168[143:128]);

logic signed [31:0] dw_conv_mac_169;
assign dw_conv_mac_169 = 
	 14'sd 7103 * $signed(input_fmap_169[15:0]) +
	 15'sd 8688 * $signed(input_fmap_169[31:16]) +
	 16'sd 23220 * $signed(input_fmap_169[47:32]) +
	 16'sd 18452 * $signed(input_fmap_169[63:48]) +
	 15'sd 14742 * $signed(input_fmap_169[79:64]) +
	 16'sd 16471 * $signed(input_fmap_169[95:80]) +
	 16'sd 25834 * $signed(input_fmap_169[111:96]) +
	 14'sd 5597 * $signed(input_fmap_169[127:112]) +
	 16'sd 26704 * $signed(input_fmap_169[143:128]);

logic signed [31:0] dw_conv_mac_170;
assign dw_conv_mac_170 = 
	 15'sd 12023 * $signed(input_fmap_170[15:0]) +
	 16'sd 21509 * $signed(input_fmap_170[31:16]) +
	 15'sd 11939 * $signed(input_fmap_170[47:32]) +
	 16'sd 18083 * $signed(input_fmap_170[63:48]) +
	 15'sd 14641 * $signed(input_fmap_170[79:64]) +
	 15'sd 10662 * $signed(input_fmap_170[95:80]) +
	 14'sd 4496 * $signed(input_fmap_170[111:96]) +
	 14'sd 7937 * $signed(input_fmap_170[127:112]) +
	 14'sd 6318 * $signed(input_fmap_170[143:128]);

logic signed [31:0] dw_conv_mac_171;
assign dw_conv_mac_171 = 
	 15'sd 13170 * $signed(input_fmap_171[15:0]) +
	 15'sd 9212 * $signed(input_fmap_171[31:16]) +
	 15'sd 15771 * $signed(input_fmap_171[47:32]) +
	 16'sd 32722 * $signed(input_fmap_171[63:48]) +
	 16'sd 29536 * $signed(input_fmap_171[79:64]) +
	 15'sd 13655 * $signed(input_fmap_171[95:80]) +
	 12'sd 1856 * $signed(input_fmap_171[111:96]) +
	 16'sd 19563 * $signed(input_fmap_171[127:112]) +
	 15'sd 14039 * $signed(input_fmap_171[143:128]);

logic signed [31:0] dw_conv_mac_172;
assign dw_conv_mac_172 = 
	 15'sd 9474 * $signed(input_fmap_172[15:0]) +
	 14'sd 6390 * $signed(input_fmap_172[31:16]) +
	 16'sd 21617 * $signed(input_fmap_172[47:32]) +
	 14'sd 7174 * $signed(input_fmap_172[63:48]) +
	 16'sd 21549 * $signed(input_fmap_172[79:64]) +
	 13'sd 2050 * $signed(input_fmap_172[95:80]) +
	 16'sd 30899 * $signed(input_fmap_172[111:96]) +
	 14'sd 6254 * $signed(input_fmap_172[127:112]) +
	 16'sd 32426 * $signed(input_fmap_172[143:128]);

logic signed [31:0] dw_conv_mac_173;
assign dw_conv_mac_173 = 
	 13'sd 2093 * $signed(input_fmap_173[15:0]) +
	 15'sd 15145 * $signed(input_fmap_173[31:16]) +
	 12'sd 1894 * $signed(input_fmap_173[47:32]) +
	 15'sd 9075 * $signed(input_fmap_173[63:48]) +
	 14'sd 6297 * $signed(input_fmap_173[79:64]) +
	 15'sd 11861 * $signed(input_fmap_173[95:80]) +
	 16'sd 31273 * $signed(input_fmap_173[111:96]) +
	 16'sd 25197 * $signed(input_fmap_173[127:112]) +
	 15'sd 9546 * $signed(input_fmap_173[143:128]);

logic signed [31:0] dw_conv_mac_174;
assign dw_conv_mac_174 = 
	 16'sd 20345 * $signed(input_fmap_174[15:0]) +
	 15'sd 11596 * $signed(input_fmap_174[31:16]) +
	 16'sd 22736 * $signed(input_fmap_174[47:32]) +
	 16'sd 26211 * $signed(input_fmap_174[63:48]) +
	 15'sd 8991 * $signed(input_fmap_174[79:64]) +
	 16'sd 27438 * $signed(input_fmap_174[95:80]) +
	 15'sd 13181 * $signed(input_fmap_174[111:96]) +
	 16'sd 18417 * $signed(input_fmap_174[127:112]) +
	 16'sd 31949 * $signed(input_fmap_174[143:128]);

logic signed [31:0] dw_conv_mac_175;
assign dw_conv_mac_175 = 
	 16'sd 21690 * $signed(input_fmap_175[15:0]) +
	 16'sd 18872 * $signed(input_fmap_175[31:16]) +
	 14'sd 6616 * $signed(input_fmap_175[47:32]) +
	 15'sd 9252 * $signed(input_fmap_175[63:48]) +
	 14'sd 4644 * $signed(input_fmap_175[79:64]) +
	 16'sd 28452 * $signed(input_fmap_175[95:80]) +
	 12'sd 1707 * $signed(input_fmap_175[111:96]) +
	 15'sd 9166 * $signed(input_fmap_175[127:112]) +
	 12'sd 1714 * $signed(input_fmap_175[143:128]);

logic signed [31:0] dw_conv_mac_176;
assign dw_conv_mac_176 = 
	 16'sd 21868 * $signed(input_fmap_176[15:0]) +
	 14'sd 8155 * $signed(input_fmap_176[31:16]) +
	 16'sd 25658 * $signed(input_fmap_176[47:32]) +
	 12'sd 1969 * $signed(input_fmap_176[63:48]) +
	 15'sd 15373 * $signed(input_fmap_176[79:64]) +
	 15'sd 12614 * $signed(input_fmap_176[95:80]) +
	 14'sd 6235 * $signed(input_fmap_176[111:96]) +
	 15'sd 13506 * $signed(input_fmap_176[127:112]) +
	 15'sd 11249 * $signed(input_fmap_176[143:128]);

logic signed [31:0] dw_conv_mac_177;
assign dw_conv_mac_177 = 
	 15'sd 9616 * $signed(input_fmap_177[15:0]) +
	 14'sd 7347 * $signed(input_fmap_177[31:16]) +
	 14'sd 4983 * $signed(input_fmap_177[47:32]) +
	 15'sd 14130 * $signed(input_fmap_177[63:48]) +
	 15'sd 10381 * $signed(input_fmap_177[79:64]) +
	 15'sd 11637 * $signed(input_fmap_177[95:80]) +
	 16'sd 25671 * $signed(input_fmap_177[111:96]) +
	 15'sd 10064 * $signed(input_fmap_177[127:112]) +
	 16'sd 25671 * $signed(input_fmap_177[143:128]);

logic signed [31:0] dw_conv_mac_178;
assign dw_conv_mac_178 = 
	 14'sd 5447 * $signed(input_fmap_178[15:0]) +
	 15'sd 10750 * $signed(input_fmap_178[31:16]) +
	 15'sd 11872 * $signed(input_fmap_178[47:32]) +
	 16'sd 23572 * $signed(input_fmap_178[63:48]) +
	 15'sd 10198 * $signed(input_fmap_178[79:64]) +
	 16'sd 22008 * $signed(input_fmap_178[95:80]) +
	 14'sd 4524 * $signed(input_fmap_178[111:96]) +
	 16'sd 18373 * $signed(input_fmap_178[127:112]) +
	 16'sd 22150 * $signed(input_fmap_178[143:128]);

logic signed [31:0] dw_conv_mac_179;
assign dw_conv_mac_179 = 
	 16'sd 25213 * $signed(input_fmap_179[15:0]) +
	 15'sd 14635 * $signed(input_fmap_179[31:16]) +
	 15'sd 13731 * $signed(input_fmap_179[47:32]) +
	 16'sd 31215 * $signed(input_fmap_179[63:48]) +
	 12'sd 2047 * $signed(input_fmap_179[79:64]) +
	 16'sd 22598 * $signed(input_fmap_179[95:80]) +
	 14'sd 7600 * $signed(input_fmap_179[111:96]) +
	 15'sd 11334 * $signed(input_fmap_179[127:112]) +
	 16'sd 22149 * $signed(input_fmap_179[143:128]);

logic signed [31:0] dw_conv_mac_180;
assign dw_conv_mac_180 = 
	 15'sd 15232 * $signed(input_fmap_180[15:0]) +
	 11'sd 899 * $signed(input_fmap_180[31:16]) +
	 15'sd 13404 * $signed(input_fmap_180[47:32]) +
	 15'sd 9745 * $signed(input_fmap_180[63:48]) +
	 16'sd 17686 * $signed(input_fmap_180[79:64]) +
	 16'sd 23049 * $signed(input_fmap_180[95:80]) +
	 16'sd 28187 * $signed(input_fmap_180[111:96]) +
	 16'sd 24134 * $signed(input_fmap_180[127:112]) +
	 15'sd 15704 * $signed(input_fmap_180[143:128]);

logic signed [31:0] dw_conv_mac_181;
assign dw_conv_mac_181 = 
	 16'sd 31598 * $signed(input_fmap_181[15:0]) +
	 16'sd 17767 * $signed(input_fmap_181[31:16]) +
	 14'sd 6392 * $signed(input_fmap_181[47:32]) +
	 16'sd 20275 * $signed(input_fmap_181[63:48]) +
	 12'sd 1923 * $signed(input_fmap_181[79:64]) +
	 14'sd 4429 * $signed(input_fmap_181[95:80]) +
	 16'sd 25456 * $signed(input_fmap_181[111:96]) +
	 16'sd 25211 * $signed(input_fmap_181[127:112]) +
	 15'sd 8870 * $signed(input_fmap_181[143:128]);

logic signed [31:0] dw_conv_mac_182;
assign dw_conv_mac_182 = 
	 16'sd 21513 * $signed(input_fmap_182[15:0]) +
	 15'sd 16183 * $signed(input_fmap_182[31:16]) +
	 16'sd 22821 * $signed(input_fmap_182[47:32]) +
	 14'sd 5880 * $signed(input_fmap_182[63:48]) +
	 16'sd 27544 * $signed(input_fmap_182[79:64]) +
	 14'sd 4144 * $signed(input_fmap_182[95:80]) +
	 16'sd 21296 * $signed(input_fmap_182[111:96]) +
	 13'sd 3115 * $signed(input_fmap_182[127:112]) +
	 15'sd 15156 * $signed(input_fmap_182[143:128]);

logic signed [31:0] dw_conv_mac_183;
assign dw_conv_mac_183 = 
	 15'sd 9096 * $signed(input_fmap_183[15:0]) +
	 16'sd 18694 * $signed(input_fmap_183[31:16]) +
	 16'sd 18823 * $signed(input_fmap_183[47:32]) +
	 16'sd 19269 * $signed(input_fmap_183[63:48]) +
	 16'sd 16798 * $signed(input_fmap_183[79:64]) +
	 14'sd 7975 * $signed(input_fmap_183[95:80]) +
	 14'sd 5261 * $signed(input_fmap_183[111:96]) +
	 14'sd 5563 * $signed(input_fmap_183[127:112]) +
	 13'sd 3922 * $signed(input_fmap_183[143:128]);

logic signed [31:0] dw_conv_mac_184;
assign dw_conv_mac_184 = 
	 16'sd 28742 * $signed(input_fmap_184[15:0]) +
	 16'sd 25631 * $signed(input_fmap_184[31:16]) +
	 13'sd 2794 * $signed(input_fmap_184[47:32]) +
	 16'sd 16390 * $signed(input_fmap_184[63:48]) +
	 16'sd 17935 * $signed(input_fmap_184[79:64]) +
	 16'sd 18552 * $signed(input_fmap_184[95:80]) +
	 16'sd 19866 * $signed(input_fmap_184[111:96]) +
	 16'sd 29311 * $signed(input_fmap_184[127:112]) +
	 16'sd 17269 * $signed(input_fmap_184[143:128]);

logic signed [31:0] dw_conv_mac_185;
assign dw_conv_mac_185 = 
	 14'sd 6424 * $signed(input_fmap_185[15:0]) +
	 14'sd 5529 * $signed(input_fmap_185[31:16]) +
	 15'sd 9515 * $signed(input_fmap_185[47:32]) +
	 16'sd 24183 * $signed(input_fmap_185[63:48]) +
	 15'sd 11774 * $signed(input_fmap_185[79:64]) +
	 15'sd 12101 * $signed(input_fmap_185[95:80]) +
	 14'sd 6534 * $signed(input_fmap_185[111:96]) +
	 15'sd 9786 * $signed(input_fmap_185[127:112]) +
	 15'sd 8430 * $signed(input_fmap_185[143:128]);

logic signed [31:0] dw_conv_mac_186;
assign dw_conv_mac_186 = 
	 16'sd 19403 * $signed(input_fmap_186[15:0]) +
	 16'sd 30272 * $signed(input_fmap_186[31:16]) +
	 14'sd 5682 * $signed(input_fmap_186[47:32]) +
	 12'sd 1772 * $signed(input_fmap_186[63:48]) +
	 13'sd 2649 * $signed(input_fmap_186[79:64]) +
	 11'sd 918 * $signed(input_fmap_186[95:80]) +
	 15'sd 14839 * $signed(input_fmap_186[111:96]) +
	 16'sd 18491 * $signed(input_fmap_186[127:112]) +
	 16'sd 22278 * $signed(input_fmap_186[143:128]);

logic signed [31:0] dw_conv_mac_187;
assign dw_conv_mac_187 = 
	 15'sd 13876 * $signed(input_fmap_187[15:0]) +
	 15'sd 8545 * $signed(input_fmap_187[31:16]) +
	 16'sd 20702 * $signed(input_fmap_187[47:32]) +
	 15'sd 11766 * $signed(input_fmap_187[63:48]) +
	 13'sd 3610 * $signed(input_fmap_187[79:64]) +
	 16'sd 18971 * $signed(input_fmap_187[95:80]) +
	 16'sd 20204 * $signed(input_fmap_187[111:96]) +
	 9'sd 194 * $signed(input_fmap_187[127:112]) +
	 16'sd 21215 * $signed(input_fmap_187[143:128]);

logic signed [31:0] dw_conv_mac_188;
assign dw_conv_mac_188 = 
	 15'sd 9051 * $signed(input_fmap_188[15:0]) +
	 16'sd 31895 * $signed(input_fmap_188[31:16]) +
	 13'sd 2124 * $signed(input_fmap_188[47:32]) +
	 16'sd 27459 * $signed(input_fmap_188[63:48]) +
	 14'sd 5714 * $signed(input_fmap_188[79:64]) +
	 16'sd 28394 * $signed(input_fmap_188[95:80]) +
	 16'sd 25062 * $signed(input_fmap_188[111:96]) +
	 14'sd 6638 * $signed(input_fmap_188[127:112]) +
	 16'sd 24653 * $signed(input_fmap_188[143:128]);

logic signed [31:0] dw_conv_mac_189;
assign dw_conv_mac_189 = 
	 11'sd 589 * $signed(input_fmap_189[15:0]) +
	 16'sd 17383 * $signed(input_fmap_189[31:16]) +
	 15'sd 15476 * $signed(input_fmap_189[47:32]) +
	 16'sd 17298 * $signed(input_fmap_189[63:48]) +
	 15'sd 11279 * $signed(input_fmap_189[79:64]) +
	 15'sd 14439 * $signed(input_fmap_189[95:80]) +
	 16'sd 30061 * $signed(input_fmap_189[111:96]) +
	 16'sd 28261 * $signed(input_fmap_189[127:112]) +
	 15'sd 15540 * $signed(input_fmap_189[143:128]);

logic signed [31:0] dw_conv_mac_190;
assign dw_conv_mac_190 = 
	 15'sd 11818 * $signed(input_fmap_190[15:0]) +
	 11'sd 906 * $signed(input_fmap_190[31:16]) +
	 14'sd 6711 * $signed(input_fmap_190[47:32]) +
	 15'sd 15752 * $signed(input_fmap_190[63:48]) +
	 16'sd 18681 * $signed(input_fmap_190[79:64]) +
	 15'sd 10478 * $signed(input_fmap_190[95:80]) +
	 16'sd 30460 * $signed(input_fmap_190[111:96]) +
	 16'sd 21755 * $signed(input_fmap_190[127:112]) +
	 10'sd 325 * $signed(input_fmap_190[143:128]);

logic signed [31:0] dw_conv_mac_191;
assign dw_conv_mac_191 = 
	 14'sd 6537 * $signed(input_fmap_191[15:0]) +
	 16'sd 21605 * $signed(input_fmap_191[31:16]) +
	 13'sd 3418 * $signed(input_fmap_191[47:32]) +
	 15'sd 12109 * $signed(input_fmap_191[63:48]) +
	 12'sd 1050 * $signed(input_fmap_191[79:64]) +
	 16'sd 23378 * $signed(input_fmap_191[95:80]) +
	 16'sd 27374 * $signed(input_fmap_191[111:96]) +
	 15'sd 15386 * $signed(input_fmap_191[127:112]) +
	 16'sd 26731 * $signed(input_fmap_191[143:128]);

logic signed [31:0] dw_conv_mac_192;
assign dw_conv_mac_192 = 
	 14'sd 5065 * $signed(input_fmap_192[15:0]) +
	 9'sd 159 * $signed(input_fmap_192[31:16]) +
	 16'sd 17134 * $signed(input_fmap_192[47:32]) +
	 16'sd 28116 * $signed(input_fmap_192[63:48]) +
	 16'sd 26126 * $signed(input_fmap_192[79:64]) +
	 15'sd 8219 * $signed(input_fmap_192[95:80]) +
	 16'sd 30390 * $signed(input_fmap_192[111:96]) +
	 12'sd 1491 * $signed(input_fmap_192[127:112]) +
	 16'sd 21701 * $signed(input_fmap_192[143:128]);

logic signed [31:0] dw_conv_mac_193;
assign dw_conv_mac_193 = 
	 16'sd 32487 * $signed(input_fmap_193[15:0]) +
	 16'sd 20469 * $signed(input_fmap_193[31:16]) +
	 13'sd 3444 * $signed(input_fmap_193[47:32]) +
	 14'sd 6255 * $signed(input_fmap_193[63:48]) +
	 15'sd 14055 * $signed(input_fmap_193[79:64]) +
	 14'sd 5654 * $signed(input_fmap_193[95:80]) +
	 15'sd 8313 * $signed(input_fmap_193[111:96]) +
	 15'sd 13258 * $signed(input_fmap_193[127:112]) +
	 12'sd 1908 * $signed(input_fmap_193[143:128]);

logic signed [31:0] dw_conv_mac_194;
assign dw_conv_mac_194 = 
	 8'sd 90 * $signed(input_fmap_194[15:0]) +
	 16'sd 17440 * $signed(input_fmap_194[31:16]) +
	 15'sd 11939 * $signed(input_fmap_194[47:32]) +
	 13'sd 2475 * $signed(input_fmap_194[63:48]) +
	 13'sd 3762 * $signed(input_fmap_194[79:64]) +
	 14'sd 7260 * $signed(input_fmap_194[95:80]) +
	 13'sd 3132 * $signed(input_fmap_194[111:96]) +
	 16'sd 29627 * $signed(input_fmap_194[127:112]) +
	 16'sd 21295 * $signed(input_fmap_194[143:128]);

logic signed [31:0] dw_conv_mac_195;
assign dw_conv_mac_195 = 
	 16'sd 27867 * $signed(input_fmap_195[15:0]) +
	 14'sd 4263 * $signed(input_fmap_195[31:16]) +
	 16'sd 17303 * $signed(input_fmap_195[47:32]) +
	 16'sd 18298 * $signed(input_fmap_195[63:48]) +
	 12'sd 1530 * $signed(input_fmap_195[79:64]) +
	 15'sd 10745 * $signed(input_fmap_195[95:80]) +
	 16'sd 25733 * $signed(input_fmap_195[111:96]) +
	 13'sd 2171 * $signed(input_fmap_195[127:112]) +
	 16'sd 23943 * $signed(input_fmap_195[143:128]);

logic signed [31:0] dw_conv_mac_196;
assign dw_conv_mac_196 = 
	 15'sd 10818 * $signed(input_fmap_196[15:0]) +
	 16'sd 19116 * $signed(input_fmap_196[31:16]) +
	 16'sd 27599 * $signed(input_fmap_196[47:32]) +
	 15'sd 9707 * $signed(input_fmap_196[63:48]) +
	 15'sd 15020 * $signed(input_fmap_196[79:64]) +
	 16'sd 24808 * $signed(input_fmap_196[95:80]) +
	 15'sd 9751 * $signed(input_fmap_196[111:96]) +
	 16'sd 30621 * $signed(input_fmap_196[127:112]) +
	 15'sd 14628 * $signed(input_fmap_196[143:128]);

logic signed [31:0] dw_conv_mac_197;
assign dw_conv_mac_197 = 
	 16'sd 23179 * $signed(input_fmap_197[15:0]) +
	 12'sd 1545 * $signed(input_fmap_197[31:16]) +
	 15'sd 10185 * $signed(input_fmap_197[47:32]) +
	 16'sd 31192 * $signed(input_fmap_197[63:48]) +
	 16'sd 21315 * $signed(input_fmap_197[79:64]) +
	 16'sd 28591 * $signed(input_fmap_197[95:80]) +
	 15'sd 15618 * $signed(input_fmap_197[111:96]) +
	 14'sd 8079 * $signed(input_fmap_197[127:112]) +
	 16'sd 31056 * $signed(input_fmap_197[143:128]);

logic signed [31:0] dw_conv_mac_198;
assign dw_conv_mac_198 = 
	 15'sd 10054 * $signed(input_fmap_198[15:0]) +
	 9'sd 234 * $signed(input_fmap_198[31:16]) +
	 16'sd 24502 * $signed(input_fmap_198[47:32]) +
	 16'sd 30402 * $signed(input_fmap_198[63:48]) +
	 15'sd 8256 * $signed(input_fmap_198[79:64]) +
	 16'sd 32368 * $signed(input_fmap_198[95:80]) +
	 15'sd 10444 * $signed(input_fmap_198[111:96]) +
	 15'sd 13559 * $signed(input_fmap_198[127:112]) +
	 16'sd 25843 * $signed(input_fmap_198[143:128]);

logic signed [31:0] dw_conv_mac_199;
assign dw_conv_mac_199 = 
	 15'sd 11097 * $signed(input_fmap_199[15:0]) +
	 14'sd 7710 * $signed(input_fmap_199[31:16]) +
	 16'sd 16922 * $signed(input_fmap_199[47:32]) +
	 16'sd 25440 * $signed(input_fmap_199[63:48]) +
	 13'sd 2502 * $signed(input_fmap_199[79:64]) +
	 16'sd 20254 * $signed(input_fmap_199[95:80]) +
	 15'sd 12799 * $signed(input_fmap_199[111:96]) +
	 16'sd 20093 * $signed(input_fmap_199[127:112]) +
	 11'sd 779 * $signed(input_fmap_199[143:128]);

logic signed [31:0] dw_conv_mac_200;
assign dw_conv_mac_200 = 
	 16'sd 21571 * $signed(input_fmap_200[15:0]) +
	 16'sd 17468 * $signed(input_fmap_200[31:16]) +
	 16'sd 23086 * $signed(input_fmap_200[47:32]) +
	 16'sd 30083 * $signed(input_fmap_200[63:48]) +
	 16'sd 25164 * $signed(input_fmap_200[79:64]) +
	 13'sd 2742 * $signed(input_fmap_200[95:80]) +
	 16'sd 27277 * $signed(input_fmap_200[111:96]) +
	 15'sd 11016 * $signed(input_fmap_200[127:112]) +
	 13'sd 3904 * $signed(input_fmap_200[143:128]);

logic signed [31:0] dw_conv_mac_201;
assign dw_conv_mac_201 = 
	 16'sd 31228 * $signed(input_fmap_201[15:0]) +
	 15'sd 9726 * $signed(input_fmap_201[31:16]) +
	 16'sd 18103 * $signed(input_fmap_201[47:32]) +
	 16'sd 18560 * $signed(input_fmap_201[63:48]) +
	 16'sd 32497 * $signed(input_fmap_201[79:64]) +
	 13'sd 3538 * $signed(input_fmap_201[95:80]) +
	 15'sd 13273 * $signed(input_fmap_201[111:96]) +
	 16'sd 32464 * $signed(input_fmap_201[127:112]) +
	 16'sd 22274 * $signed(input_fmap_201[143:128]);

logic signed [31:0] dw_conv_mac_202;
assign dw_conv_mac_202 = 
	 15'sd 12211 * $signed(input_fmap_202[15:0]) +
	 16'sd 20931 * $signed(input_fmap_202[31:16]) +
	 14'sd 8082 * $signed(input_fmap_202[47:32]) +
	 16'sd 28447 * $signed(input_fmap_202[63:48]) +
	 14'sd 4277 * $signed(input_fmap_202[79:64]) +
	 15'sd 16336 * $signed(input_fmap_202[95:80]) +
	 16'sd 18452 * $signed(input_fmap_202[111:96]) +
	 16'sd 19475 * $signed(input_fmap_202[127:112]) +
	 13'sd 3405 * $signed(input_fmap_202[143:128]);

logic signed [31:0] dw_conv_mac_203;
assign dw_conv_mac_203 = 
	 15'sd 16262 * $signed(input_fmap_203[15:0]) +
	 13'sd 3928 * $signed(input_fmap_203[31:16]) +
	 16'sd 19282 * $signed(input_fmap_203[47:32]) +
	 13'sd 3640 * $signed(input_fmap_203[63:48]) +
	 13'sd 2523 * $signed(input_fmap_203[79:64]) +
	 16'sd 32165 * $signed(input_fmap_203[95:80]) +
	 11'sd 912 * $signed(input_fmap_203[111:96]) +
	 16'sd 24635 * $signed(input_fmap_203[127:112]) +
	 13'sd 3597 * $signed(input_fmap_203[143:128]);

logic signed [31:0] dw_conv_mac_204;
assign dw_conv_mac_204 = 
	 12'sd 1600 * $signed(input_fmap_204[15:0]) +
	 12'sd 1936 * $signed(input_fmap_204[31:16]) +
	 15'sd 11932 * $signed(input_fmap_204[47:32]) +
	 15'sd 8400 * $signed(input_fmap_204[63:48]) +
	 16'sd 24716 * $signed(input_fmap_204[79:64]) +
	 14'sd 8014 * $signed(input_fmap_204[95:80]) +
	 15'sd 13392 * $signed(input_fmap_204[111:96]) +
	 16'sd 27633 * $signed(input_fmap_204[127:112]) +
	 16'sd 19351 * $signed(input_fmap_204[143:128]);

logic signed [31:0] dw_conv_mac_205;
assign dw_conv_mac_205 = 
	 16'sd 31802 * $signed(input_fmap_205[15:0]) +
	 13'sd 3735 * $signed(input_fmap_205[31:16]) +
	 13'sd 3358 * $signed(input_fmap_205[47:32]) +
	 16'sd 23306 * $signed(input_fmap_205[63:48]) +
	 14'sd 4843 * $signed(input_fmap_205[79:64]) +
	 16'sd 32594 * $signed(input_fmap_205[95:80]) +
	 13'sd 2325 * $signed(input_fmap_205[111:96]) +
	 15'sd 8309 * $signed(input_fmap_205[127:112]) +
	 15'sd 10266 * $signed(input_fmap_205[143:128]);

logic signed [31:0] dw_conv_mac_206;
assign dw_conv_mac_206 = 
	 15'sd 14627 * $signed(input_fmap_206[15:0]) +
	 9'sd 189 * $signed(input_fmap_206[31:16]) +
	 16'sd 17141 * $signed(input_fmap_206[47:32]) +
	 16'sd 26096 * $signed(input_fmap_206[63:48]) +
	 15'sd 15847 * $signed(input_fmap_206[79:64]) +
	 15'sd 13955 * $signed(input_fmap_206[95:80]) +
	 15'sd 12234 * $signed(input_fmap_206[111:96]) +
	 15'sd 12660 * $signed(input_fmap_206[127:112]) +
	 15'sd 8482 * $signed(input_fmap_206[143:128]);

logic signed [31:0] dw_conv_mac_207;
assign dw_conv_mac_207 = 
	 15'sd 12345 * $signed(input_fmap_207[15:0]) +
	 16'sd 18123 * $signed(input_fmap_207[31:16]) +
	 14'sd 6603 * $signed(input_fmap_207[47:32]) +
	 16'sd 20607 * $signed(input_fmap_207[63:48]) +
	 16'sd 30449 * $signed(input_fmap_207[79:64]) +
	 16'sd 19277 * $signed(input_fmap_207[95:80]) +
	 16'sd 25805 * $signed(input_fmap_207[111:96]) +
	 15'sd 10268 * $signed(input_fmap_207[127:112]) +
	 15'sd 11658 * $signed(input_fmap_207[143:128]);

logic signed [31:0] dw_conv_mac_208;
assign dw_conv_mac_208 = 
	 14'sd 7075 * $signed(input_fmap_208[15:0]) +
	 16'sd 23001 * $signed(input_fmap_208[31:16]) +
	 14'sd 4858 * $signed(input_fmap_208[47:32]) +
	 16'sd 20716 * $signed(input_fmap_208[63:48]) +
	 16'sd 23279 * $signed(input_fmap_208[79:64]) +
	 15'sd 9174 * $signed(input_fmap_208[95:80]) +
	 16'sd 26421 * $signed(input_fmap_208[111:96]) +
	 14'sd 4327 * $signed(input_fmap_208[127:112]) +
	 16'sd 21935 * $signed(input_fmap_208[143:128]);

logic signed [31:0] dw_conv_mac_209;
assign dw_conv_mac_209 = 
	 14'sd 6038 * $signed(input_fmap_209[15:0]) +
	 15'sd 12081 * $signed(input_fmap_209[31:16]) +
	 15'sd 11301 * $signed(input_fmap_209[47:32]) +
	 16'sd 21549 * $signed(input_fmap_209[63:48]) +
	 14'sd 5728 * $signed(input_fmap_209[79:64]) +
	 16'sd 31340 * $signed(input_fmap_209[95:80]) +
	 16'sd 27149 * $signed(input_fmap_209[111:96]) +
	 12'sd 1712 * $signed(input_fmap_209[127:112]) +
	 16'sd 20960 * $signed(input_fmap_209[143:128]);

logic signed [31:0] dw_conv_mac_210;
assign dw_conv_mac_210 = 
	 16'sd 32435 * $signed(input_fmap_210[15:0]) +
	 15'sd 8641 * $signed(input_fmap_210[31:16]) +
	 16'sd 23140 * $signed(input_fmap_210[47:32]) +
	 14'sd 5720 * $signed(input_fmap_210[63:48]) +
	 15'sd 15499 * $signed(input_fmap_210[79:64]) +
	 15'sd 8762 * $signed(input_fmap_210[95:80]) +
	 15'sd 10385 * $signed(input_fmap_210[111:96]) +
	 15'sd 11623 * $signed(input_fmap_210[127:112]) +
	 14'sd 5185 * $signed(input_fmap_210[143:128]);

logic signed [31:0] dw_conv_mac_211;
assign dw_conv_mac_211 = 
	 16'sd 26055 * $signed(input_fmap_211[15:0]) +
	 14'sd 4113 * $signed(input_fmap_211[31:16]) +
	 13'sd 2327 * $signed(input_fmap_211[47:32]) +
	 13'sd 2243 * $signed(input_fmap_211[63:48]) +
	 16'sd 29385 * $signed(input_fmap_211[79:64]) +
	 16'sd 31436 * $signed(input_fmap_211[95:80]) +
	 16'sd 25375 * $signed(input_fmap_211[111:96]) +
	 16'sd 17412 * $signed(input_fmap_211[127:112]) +
	 16'sd 27690 * $signed(input_fmap_211[143:128]);

logic signed [31:0] dw_conv_mac_212;
assign dw_conv_mac_212 = 
	 15'sd 14118 * $signed(input_fmap_212[15:0]) +
	 16'sd 32353 * $signed(input_fmap_212[31:16]) +
	 16'sd 23477 * $signed(input_fmap_212[47:32]) +
	 16'sd 17807 * $signed(input_fmap_212[63:48]) +
	 16'sd 18563 * $signed(input_fmap_212[79:64]) +
	 16'sd 25841 * $signed(input_fmap_212[95:80]) +
	 16'sd 22347 * $signed(input_fmap_212[111:96]) +
	 15'sd 8848 * $signed(input_fmap_212[127:112]) +
	 14'sd 6767 * $signed(input_fmap_212[143:128]);

logic signed [31:0] dw_conv_mac_213;
assign dw_conv_mac_213 = 
	 13'sd 3755 * $signed(input_fmap_213[15:0]) +
	 16'sd 23197 * $signed(input_fmap_213[31:16]) +
	 15'sd 11105 * $signed(input_fmap_213[47:32]) +
	 15'sd 14895 * $signed(input_fmap_213[63:48]) +
	 14'sd 7675 * $signed(input_fmap_213[79:64]) +
	 15'sd 15098 * $signed(input_fmap_213[95:80]) +
	 15'sd 12245 * $signed(input_fmap_213[111:96]) +
	 16'sd 18169 * $signed(input_fmap_213[127:112]) +
	 14'sd 7189 * $signed(input_fmap_213[143:128]);

logic signed [31:0] dw_conv_mac_214;
assign dw_conv_mac_214 = 
	 12'sd 1333 * $signed(input_fmap_214[15:0]) +
	 15'sd 12463 * $signed(input_fmap_214[31:16]) +
	 16'sd 25204 * $signed(input_fmap_214[47:32]) +
	 16'sd 17046 * $signed(input_fmap_214[63:48]) +
	 15'sd 9134 * $signed(input_fmap_214[79:64]) +
	 15'sd 16052 * $signed(input_fmap_214[95:80]) +
	 16'sd 32354 * $signed(input_fmap_214[111:96]) +
	 16'sd 26531 * $signed(input_fmap_214[127:112]) +
	 16'sd 19136 * $signed(input_fmap_214[143:128]);

logic signed [31:0] dw_conv_mac_215;
assign dw_conv_mac_215 = 
	 15'sd 10191 * $signed(input_fmap_215[15:0]) +
	 15'sd 8623 * $signed(input_fmap_215[31:16]) +
	 16'sd 17873 * $signed(input_fmap_215[47:32]) +
	 15'sd 8479 * $signed(input_fmap_215[63:48]) +
	 16'sd 18928 * $signed(input_fmap_215[79:64]) +
	 16'sd 27471 * $signed(input_fmap_215[95:80]) +
	 16'sd 24687 * $signed(input_fmap_215[111:96]) +
	 14'sd 7008 * $signed(input_fmap_215[127:112]) +
	 16'sd 26690 * $signed(input_fmap_215[143:128]);

logic signed [31:0] dw_conv_mac_216;
assign dw_conv_mac_216 = 
	 15'sd 10802 * $signed(input_fmap_216[15:0]) +
	 16'sd 21006 * $signed(input_fmap_216[31:16]) +
	 16'sd 25471 * $signed(input_fmap_216[47:32]) +
	 13'sd 3736 * $signed(input_fmap_216[63:48]) +
	 16'sd 21160 * $signed(input_fmap_216[79:64]) +
	 15'sd 9439 * $signed(input_fmap_216[95:80]) +
	 15'sd 12885 * $signed(input_fmap_216[111:96]) +
	 16'sd 19303 * $signed(input_fmap_216[127:112]) +
	 10'sd 425 * $signed(input_fmap_216[143:128]);

logic signed [31:0] dw_conv_mac_217;
assign dw_conv_mac_217 = 
	 15'sd 9120 * $signed(input_fmap_217[15:0]) +
	 16'sd 17197 * $signed(input_fmap_217[31:16]) +
	 12'sd 1364 * $signed(input_fmap_217[47:32]) +
	 15'sd 13500 * $signed(input_fmap_217[63:48]) +
	 15'sd 8843 * $signed(input_fmap_217[79:64]) +
	 12'sd 1470 * $signed(input_fmap_217[95:80]) +
	 15'sd 9003 * $signed(input_fmap_217[111:96]) +
	 15'sd 10049 * $signed(input_fmap_217[127:112]) +
	 16'sd 19261 * $signed(input_fmap_217[143:128]);

logic signed [31:0] dw_conv_mac_218;
assign dw_conv_mac_218 = 
	 13'sd 3852 * $signed(input_fmap_218[15:0]) +
	 14'sd 6829 * $signed(input_fmap_218[31:16]) +
	 13'sd 3212 * $signed(input_fmap_218[47:32]) +
	 16'sd 18548 * $signed(input_fmap_218[63:48]) +
	 14'sd 7953 * $signed(input_fmap_218[79:64]) +
	 15'sd 14123 * $signed(input_fmap_218[95:80]) +
	 16'sd 26153 * $signed(input_fmap_218[111:96]) +
	 15'sd 11892 * $signed(input_fmap_218[127:112]) +
	 16'sd 28518 * $signed(input_fmap_218[143:128]);

logic signed [31:0] dw_conv_mac_219;
assign dw_conv_mac_219 = 
	 16'sd 18900 * $signed(input_fmap_219[15:0]) +
	 16'sd 18228 * $signed(input_fmap_219[31:16]) +
	 15'sd 14152 * $signed(input_fmap_219[47:32]) +
	 16'sd 22204 * $signed(input_fmap_219[63:48]) +
	 15'sd 12980 * $signed(input_fmap_219[79:64]) +
	 14'sd 5880 * $signed(input_fmap_219[95:80]) +
	 16'sd 19966 * $signed(input_fmap_219[111:96]) +
	 14'sd 6775 * $signed(input_fmap_219[127:112]) +
	 15'sd 11008 * $signed(input_fmap_219[143:128]);

logic signed [31:0] dw_conv_mac_220;
assign dw_conv_mac_220 = 
	 15'sd 10849 * $signed(input_fmap_220[15:0]) +
	 13'sd 2077 * $signed(input_fmap_220[31:16]) +
	 16'sd 22866 * $signed(input_fmap_220[47:32]) +
	 15'sd 14691 * $signed(input_fmap_220[63:48]) +
	 16'sd 29947 * $signed(input_fmap_220[79:64]) +
	 15'sd 11939 * $signed(input_fmap_220[95:80]) +
	 15'sd 12128 * $signed(input_fmap_220[111:96]) +
	 16'sd 24793 * $signed(input_fmap_220[127:112]) +
	 16'sd 24078 * $signed(input_fmap_220[143:128]);

logic signed [31:0] dw_conv_mac_221;
assign dw_conv_mac_221 = 
	 12'sd 1394 * $signed(input_fmap_221[15:0]) +
	 16'sd 18250 * $signed(input_fmap_221[31:16]) +
	 16'sd 31552 * $signed(input_fmap_221[47:32]) +
	 14'sd 6917 * $signed(input_fmap_221[63:48]) +
	 16'sd 27674 * $signed(input_fmap_221[79:64]) +
	 14'sd 5099 * $signed(input_fmap_221[95:80]) +
	 16'sd 17265 * $signed(input_fmap_221[111:96]) +
	 16'sd 27572 * $signed(input_fmap_221[127:112]) +
	 13'sd 2675 * $signed(input_fmap_221[143:128]);

logic signed [31:0] dw_conv_mac_222;
assign dw_conv_mac_222 = 
	 16'sd 30893 * $signed(input_fmap_222[15:0]) +
	 16'sd 31090 * $signed(input_fmap_222[31:16]) +
	 16'sd 29546 * $signed(input_fmap_222[47:32]) +
	 16'sd 24644 * $signed(input_fmap_222[63:48]) +
	 16'sd 29503 * $signed(input_fmap_222[79:64]) +
	 16'sd 21140 * $signed(input_fmap_222[95:80]) +
	 16'sd 28232 * $signed(input_fmap_222[111:96]) +
	 16'sd 20305 * $signed(input_fmap_222[127:112]) +
	 16'sd 22186 * $signed(input_fmap_222[143:128]);

logic signed [31:0] dw_conv_mac_223;
assign dw_conv_mac_223 = 
	 15'sd 12551 * $signed(input_fmap_223[15:0]) +
	 12'sd 1329 * $signed(input_fmap_223[31:16]) +
	 14'sd 4815 * $signed(input_fmap_223[47:32]) +
	 15'sd 8845 * $signed(input_fmap_223[63:48]) +
	 16'sd 17492 * $signed(input_fmap_223[79:64]) +
	 16'sd 19950 * $signed(input_fmap_223[95:80]) +
	 16'sd 32218 * $signed(input_fmap_223[111:96]) +
	 15'sd 9258 * $signed(input_fmap_223[127:112]) +
	 13'sd 2405 * $signed(input_fmap_223[143:128]);

logic signed [31:0] dw_conv_mac_224;
assign dw_conv_mac_224 = 
	 16'sd 30323 * $signed(input_fmap_224[15:0]) +
	 16'sd 25674 * $signed(input_fmap_224[31:16]) +
	 15'sd 9700 * $signed(input_fmap_224[47:32]) +
	 15'sd 12055 * $signed(input_fmap_224[63:48]) +
	 15'sd 14770 * $signed(input_fmap_224[79:64]) +
	 16'sd 19479 * $signed(input_fmap_224[95:80]) +
	 16'sd 17716 * $signed(input_fmap_224[111:96]) +
	 16'sd 21659 * $signed(input_fmap_224[127:112]) +
	 16'sd 30653 * $signed(input_fmap_224[143:128]);

logic signed [31:0] dw_conv_mac_225;
assign dw_conv_mac_225 = 
	 15'sd 11377 * $signed(input_fmap_225[15:0]) +
	 16'sd 29906 * $signed(input_fmap_225[31:16]) +
	 14'sd 6099 * $signed(input_fmap_225[47:32]) +
	 16'sd 29037 * $signed(input_fmap_225[63:48]) +
	 16'sd 16508 * $signed(input_fmap_225[79:64]) +
	 16'sd 27209 * $signed(input_fmap_225[95:80]) +
	 16'sd 20592 * $signed(input_fmap_225[111:96]) +
	 16'sd 28074 * $signed(input_fmap_225[127:112]) +
	 16'sd 25856 * $signed(input_fmap_225[143:128]);

logic signed [31:0] dw_conv_mac_226;
assign dw_conv_mac_226 = 
	 13'sd 2978 * $signed(input_fmap_226[15:0]) +
	 14'sd 5869 * $signed(input_fmap_226[31:16]) +
	 15'sd 12186 * $signed(input_fmap_226[47:32]) +
	 16'sd 18110 * $signed(input_fmap_226[63:48]) +
	 13'sd 2334 * $signed(input_fmap_226[79:64]) +
	 15'sd 13951 * $signed(input_fmap_226[95:80]) +
	 15'sd 11053 * $signed(input_fmap_226[111:96]) +
	 14'sd 6285 * $signed(input_fmap_226[127:112]) +
	 16'sd 27561 * $signed(input_fmap_226[143:128]);

logic signed [31:0] dw_conv_mac_227;
assign dw_conv_mac_227 = 
	 16'sd 24168 * $signed(input_fmap_227[15:0]) +
	 16'sd 20352 * $signed(input_fmap_227[31:16]) +
	 14'sd 5347 * $signed(input_fmap_227[47:32]) +
	 16'sd 24988 * $signed(input_fmap_227[63:48]) +
	 14'sd 4346 * $signed(input_fmap_227[79:64]) +
	 14'sd 6376 * $signed(input_fmap_227[95:80]) +
	 16'sd 25143 * $signed(input_fmap_227[111:96]) +
	 16'sd 22498 * $signed(input_fmap_227[127:112]) +
	 16'sd 17009 * $signed(input_fmap_227[143:128]);

logic signed [31:0] dw_conv_mac_228;
assign dw_conv_mac_228 = 
	 16'sd 29459 * $signed(input_fmap_228[15:0]) +
	 15'sd 14291 * $signed(input_fmap_228[31:16]) +
	 16'sd 25446 * $signed(input_fmap_228[47:32]) +
	 15'sd 8787 * $signed(input_fmap_228[63:48]) +
	 16'sd 21511 * $signed(input_fmap_228[79:64]) +
	 15'sd 12882 * $signed(input_fmap_228[95:80]) +
	 14'sd 5384 * $signed(input_fmap_228[111:96]) +
	 15'sd 13703 * $signed(input_fmap_228[127:112]) +
	 15'sd 12651 * $signed(input_fmap_228[143:128]);

logic signed [31:0] dw_conv_mac_229;
assign dw_conv_mac_229 = 
	 13'sd 2258 * $signed(input_fmap_229[15:0]) +
	 16'sd 28891 * $signed(input_fmap_229[31:16]) +
	 13'sd 2439 * $signed(input_fmap_229[47:32]) +
	 16'sd 27319 * $signed(input_fmap_229[63:48]) +
	 14'sd 7525 * $signed(input_fmap_229[79:64]) +
	 15'sd 15020 * $signed(input_fmap_229[95:80]) +
	 16'sd 27182 * $signed(input_fmap_229[111:96]) +
	 11'sd 758 * $signed(input_fmap_229[127:112]) +
	 16'sd 25725 * $signed(input_fmap_229[143:128]);

logic signed [31:0] dw_conv_mac_230;
assign dw_conv_mac_230 = 
	 16'sd 23829 * $signed(input_fmap_230[15:0]) +
	 14'sd 7716 * $signed(input_fmap_230[31:16]) +
	 14'sd 7957 * $signed(input_fmap_230[47:32]) +
	 15'sd 10697 * $signed(input_fmap_230[63:48]) +
	 16'sd 16893 * $signed(input_fmap_230[79:64]) +
	 14'sd 5350 * $signed(input_fmap_230[95:80]) +
	 16'sd 30187 * $signed(input_fmap_230[111:96]) +
	 13'sd 3317 * $signed(input_fmap_230[127:112]) +
	 16'sd 27581 * $signed(input_fmap_230[143:128]);

logic signed [31:0] dw_conv_mac_231;
assign dw_conv_mac_231 = 
	 14'sd 6840 * $signed(input_fmap_231[15:0]) +
	 16'sd 28080 * $signed(input_fmap_231[31:16]) +
	 11'sd 805 * $signed(input_fmap_231[47:32]) +
	 15'sd 13060 * $signed(input_fmap_231[63:48]) +
	 15'sd 13538 * $signed(input_fmap_231[79:64]) +
	 13'sd 3255 * $signed(input_fmap_231[95:80]) +
	 14'sd 4516 * $signed(input_fmap_231[111:96]) +
	 16'sd 32587 * $signed(input_fmap_231[127:112]) +
	 15'sd 9598 * $signed(input_fmap_231[143:128]);

logic signed [31:0] dw_conv_mac_232;
assign dw_conv_mac_232 = 
	 16'sd 25859 * $signed(input_fmap_232[15:0]) +
	 14'sd 7894 * $signed(input_fmap_232[31:16]) +
	 15'sd 15330 * $signed(input_fmap_232[47:32]) +
	 16'sd 20146 * $signed(input_fmap_232[63:48]) +
	 16'sd 24293 * $signed(input_fmap_232[79:64]) +
	 14'sd 7186 * $signed(input_fmap_232[95:80]) +
	 13'sd 4014 * $signed(input_fmap_232[111:96]) +
	 15'sd 10535 * $signed(input_fmap_232[127:112]) +
	 15'sd 8313 * $signed(input_fmap_232[143:128]);

logic signed [31:0] dw_conv_mac_233;
assign dw_conv_mac_233 = 
	 13'sd 4057 * $signed(input_fmap_233[15:0]) +
	 16'sd 25555 * $signed(input_fmap_233[31:16]) +
	 8'sd 83 * $signed(input_fmap_233[47:32]) +
	 15'sd 14314 * $signed(input_fmap_233[63:48]) +
	 16'sd 18768 * $signed(input_fmap_233[79:64]) +
	 12'sd 2034 * $signed(input_fmap_233[95:80]) +
	 16'sd 30576 * $signed(input_fmap_233[111:96]) +
	 16'sd 17852 * $signed(input_fmap_233[127:112]) +
	 16'sd 26389 * $signed(input_fmap_233[143:128]);

logic signed [31:0] dw_conv_mac_234;
assign dw_conv_mac_234 = 
	 15'sd 12390 * $signed(input_fmap_234[15:0]) +
	 16'sd 30763 * $signed(input_fmap_234[31:16]) +
	 16'sd 32556 * $signed(input_fmap_234[47:32]) +
	 14'sd 6363 * $signed(input_fmap_234[63:48]) +
	 13'sd 2400 * $signed(input_fmap_234[79:64]) +
	 11'sd 581 * $signed(input_fmap_234[95:80]) +
	 16'sd 30347 * $signed(input_fmap_234[111:96]) +
	 16'sd 25920 * $signed(input_fmap_234[127:112]) +
	 16'sd 29320 * $signed(input_fmap_234[143:128]);

logic signed [31:0] dw_conv_mac_235;
assign dw_conv_mac_235 = 
	 14'sd 6323 * $signed(input_fmap_235[15:0]) +
	 16'sd 32034 * $signed(input_fmap_235[31:16]) +
	 15'sd 14889 * $signed(input_fmap_235[47:32]) +
	 16'sd 29098 * $signed(input_fmap_235[63:48]) +
	 14'sd 4978 * $signed(input_fmap_235[79:64]) +
	 16'sd 16543 * $signed(input_fmap_235[95:80]) +
	 16'sd 25972 * $signed(input_fmap_235[111:96]) +
	 14'sd 4350 * $signed(input_fmap_235[127:112]) +
	 14'sd 6166 * $signed(input_fmap_235[143:128]);

logic signed [31:0] dw_conv_mac_236;
assign dw_conv_mac_236 = 
	 14'sd 5061 * $signed(input_fmap_236[15:0]) +
	 16'sd 27760 * $signed(input_fmap_236[31:16]) +
	 14'sd 7672 * $signed(input_fmap_236[47:32]) +
	 15'sd 10800 * $signed(input_fmap_236[63:48]) +
	 16'sd 23218 * $signed(input_fmap_236[79:64]) +
	 16'sd 31519 * $signed(input_fmap_236[95:80]) +
	 16'sd 30009 * $signed(input_fmap_236[111:96]) +
	 16'sd 19357 * $signed(input_fmap_236[127:112]) +
	 15'sd 13623 * $signed(input_fmap_236[143:128]);

logic signed [31:0] dw_conv_mac_237;
assign dw_conv_mac_237 = 
	 15'sd 11080 * $signed(input_fmap_237[15:0]) +
	 15'sd 16144 * $signed(input_fmap_237[31:16]) +
	 16'sd 21514 * $signed(input_fmap_237[47:32]) +
	 16'sd 22248 * $signed(input_fmap_237[63:48]) +
	 9'sd 131 * $signed(input_fmap_237[79:64]) +
	 16'sd 19670 * $signed(input_fmap_237[95:80]) +
	 13'sd 2834 * $signed(input_fmap_237[111:96]) +
	 16'sd 31812 * $signed(input_fmap_237[127:112]) +
	 14'sd 6306 * $signed(input_fmap_237[143:128]);

logic signed [31:0] dw_conv_mac_238;
assign dw_conv_mac_238 = 
	 14'sd 6515 * $signed(input_fmap_238[15:0]) +
	 15'sd 14006 * $signed(input_fmap_238[31:16]) +
	 16'sd 29650 * $signed(input_fmap_238[47:32]) +
	 15'sd 12042 * $signed(input_fmap_238[63:48]) +
	 16'sd 24326 * $signed(input_fmap_238[79:64]) +
	 16'sd 19672 * $signed(input_fmap_238[95:80]) +
	 12'sd 1394 * $signed(input_fmap_238[111:96]) +
	 16'sd 29748 * $signed(input_fmap_238[127:112]) +
	 15'sd 11385 * $signed(input_fmap_238[143:128]);

logic signed [31:0] dw_conv_mac_239;
assign dw_conv_mac_239 = 
	 14'sd 7991 * $signed(input_fmap_239[15:0]) +
	 16'sd 29592 * $signed(input_fmap_239[31:16]) +
	 16'sd 19004 * $signed(input_fmap_239[47:32]) +
	 15'sd 14751 * $signed(input_fmap_239[63:48]) +
	 13'sd 2762 * $signed(input_fmap_239[79:64]) +
	 16'sd 25534 * $signed(input_fmap_239[95:80]) +
	 15'sd 12979 * $signed(input_fmap_239[111:96]) +
	 16'sd 17645 * $signed(input_fmap_239[127:112]) +
	 16'sd 32338 * $signed(input_fmap_239[143:128]);

logic signed [31:0] dw_conv_mac_240;
assign dw_conv_mac_240 = 
	 13'sd 2277 * $signed(input_fmap_240[15:0]) +
	 16'sd 22842 * $signed(input_fmap_240[31:16]) +
	 16'sd 17904 * $signed(input_fmap_240[47:32]) +
	 15'sd 14494 * $signed(input_fmap_240[63:48]) +
	 16'sd 32206 * $signed(input_fmap_240[79:64]) +
	 16'sd 32398 * $signed(input_fmap_240[95:80]) +
	 14'sd 6943 * $signed(input_fmap_240[111:96]) +
	 15'sd 9650 * $signed(input_fmap_240[127:112]) +
	 16'sd 17665 * $signed(input_fmap_240[143:128]);

logic signed [31:0] dw_conv_mac_241;
assign dw_conv_mac_241 = 
	 12'sd 1641 * $signed(input_fmap_241[15:0]) +
	 16'sd 26469 * $signed(input_fmap_241[31:16]) +
	 10'sd 484 * $signed(input_fmap_241[47:32]) +
	 14'sd 4888 * $signed(input_fmap_241[63:48]) +
	 15'sd 15354 * $signed(input_fmap_241[79:64]) +
	 15'sd 10618 * $signed(input_fmap_241[95:80]) +
	 16'sd 24704 * $signed(input_fmap_241[111:96]) +
	 15'sd 10840 * $signed(input_fmap_241[127:112]) +
	 16'sd 31261 * $signed(input_fmap_241[143:128]);

logic signed [31:0] dw_conv_mac_242;
assign dw_conv_mac_242 = 
	 14'sd 6234 * $signed(input_fmap_242[15:0]) +
	 16'sd 20589 * $signed(input_fmap_242[31:16]) +
	 16'sd 27043 * $signed(input_fmap_242[47:32]) +
	 16'sd 29636 * $signed(input_fmap_242[63:48]) +
	 16'sd 29315 * $signed(input_fmap_242[79:64]) +
	 16'sd 22661 * $signed(input_fmap_242[95:80]) +
	 16'sd 29791 * $signed(input_fmap_242[111:96]) +
	 14'sd 4744 * $signed(input_fmap_242[127:112]) +
	 16'sd 27172 * $signed(input_fmap_242[143:128]);

logic signed [31:0] dw_conv_mac_243;
assign dw_conv_mac_243 = 
	 16'sd 30582 * $signed(input_fmap_243[15:0]) +
	 16'sd 26155 * $signed(input_fmap_243[31:16]) +
	 10'sd 332 * $signed(input_fmap_243[47:32]) +
	 12'sd 1389 * $signed(input_fmap_243[63:48]) +
	 13'sd 3166 * $signed(input_fmap_243[79:64]) +
	 14'sd 5894 * $signed(input_fmap_243[95:80]) +
	 16'sd 25591 * $signed(input_fmap_243[111:96]) +
	 16'sd 26120 * $signed(input_fmap_243[127:112]) +
	 15'sd 12546 * $signed(input_fmap_243[143:128]);

logic signed [31:0] dw_conv_mac_244;
assign dw_conv_mac_244 = 
	 16'sd 26046 * $signed(input_fmap_244[15:0]) +
	 16'sd 25357 * $signed(input_fmap_244[31:16]) +
	 16'sd 17679 * $signed(input_fmap_244[47:32]) +
	 15'sd 12374 * $signed(input_fmap_244[63:48]) +
	 16'sd 24937 * $signed(input_fmap_244[79:64]) +
	 15'sd 13584 * $signed(input_fmap_244[95:80]) +
	 16'sd 30970 * $signed(input_fmap_244[111:96]) +
	 16'sd 19545 * $signed(input_fmap_244[127:112]) +
	 16'sd 30119 * $signed(input_fmap_244[143:128]);

logic signed [31:0] dw_conv_mac_245;
assign dw_conv_mac_245 = 
	 13'sd 2191 * $signed(input_fmap_245[15:0]) +
	 15'sd 14962 * $signed(input_fmap_245[31:16]) +
	 16'sd 32521 * $signed(input_fmap_245[47:32]) +
	 16'sd 20095 * $signed(input_fmap_245[63:48]) +
	 14'sd 4625 * $signed(input_fmap_245[79:64]) +
	 14'sd 7737 * $signed(input_fmap_245[95:80]) +
	 14'sd 6005 * $signed(input_fmap_245[111:96]) +
	 16'sd 21998 * $signed(input_fmap_245[127:112]) +
	 16'sd 21281 * $signed(input_fmap_245[143:128]);

logic signed [31:0] dw_conv_mac_246;
assign dw_conv_mac_246 = 
	 16'sd 19221 * $signed(input_fmap_246[15:0]) +
	 16'sd 27377 * $signed(input_fmap_246[31:16]) +
	 16'sd 24439 * $signed(input_fmap_246[47:32]) +
	 14'sd 4992 * $signed(input_fmap_246[63:48]) +
	 16'sd 17978 * $signed(input_fmap_246[79:64]) +
	 15'sd 11717 * $signed(input_fmap_246[95:80]) +
	 16'sd 27173 * $signed(input_fmap_246[111:96]) +
	 15'sd 15870 * $signed(input_fmap_246[127:112]) +
	 16'sd 25785 * $signed(input_fmap_246[143:128]);

logic signed [31:0] dw_conv_mac_247;
assign dw_conv_mac_247 = 
	 14'sd 4435 * $signed(input_fmap_247[15:0]) +
	 16'sd 16928 * $signed(input_fmap_247[31:16]) +
	 16'sd 18638 * $signed(input_fmap_247[47:32]) +
	 12'sd 1623 * $signed(input_fmap_247[63:48]) +
	 14'sd 8006 * $signed(input_fmap_247[79:64]) +
	 15'sd 16366 * $signed(input_fmap_247[95:80]) +
	 15'sd 12544 * $signed(input_fmap_247[111:96]) +
	 15'sd 12850 * $signed(input_fmap_247[127:112]) +
	 16'sd 26090 * $signed(input_fmap_247[143:128]);

logic signed [31:0] dw_conv_mac_248;
assign dw_conv_mac_248 = 
	 16'sd 22305 * $signed(input_fmap_248[15:0]) +
	 15'sd 14685 * $signed(input_fmap_248[31:16]) +
	 15'sd 14536 * $signed(input_fmap_248[47:32]) +
	 16'sd 22438 * $signed(input_fmap_248[63:48]) +
	 15'sd 11959 * $signed(input_fmap_248[79:64]) +
	 15'sd 14825 * $signed(input_fmap_248[95:80]) +
	 16'sd 23237 * $signed(input_fmap_248[111:96]) +
	 15'sd 12873 * $signed(input_fmap_248[127:112]) +
	 13'sd 3613 * $signed(input_fmap_248[143:128]);

logic signed [31:0] dw_conv_mac_249;
assign dw_conv_mac_249 = 
	 16'sd 29084 * $signed(input_fmap_249[15:0]) +
	 16'sd 19871 * $signed(input_fmap_249[31:16]) +
	 15'sd 9882 * $signed(input_fmap_249[47:32]) +
	 16'sd 25984 * $signed(input_fmap_249[63:48]) +
	 13'sd 3063 * $signed(input_fmap_249[79:64]) +
	 14'sd 8040 * $signed(input_fmap_249[95:80]) +
	 16'sd 25863 * $signed(input_fmap_249[111:96]) +
	 16'sd 26867 * $signed(input_fmap_249[127:112]) +
	 16'sd 20014 * $signed(input_fmap_249[143:128]);

logic signed [31:0] dw_conv_mac_250;
assign dw_conv_mac_250 = 
	 15'sd 16280 * $signed(input_fmap_250[15:0]) +
	 16'sd 28503 * $signed(input_fmap_250[31:16]) +
	 13'sd 2604 * $signed(input_fmap_250[47:32]) +
	 16'sd 22148 * $signed(input_fmap_250[63:48]) +
	 16'sd 26009 * $signed(input_fmap_250[79:64]) +
	 16'sd 25091 * $signed(input_fmap_250[95:80]) +
	 16'sd 29463 * $signed(input_fmap_250[111:96]) +
	 13'sd 2057 * $signed(input_fmap_250[127:112]) +
	 16'sd 22095 * $signed(input_fmap_250[143:128]);

logic signed [31:0] dw_conv_mac_251;
assign dw_conv_mac_251 = 
	 12'sd 1170 * $signed(input_fmap_251[15:0]) +
	 16'sd 21049 * $signed(input_fmap_251[31:16]) +
	 16'sd 19608 * $signed(input_fmap_251[47:32]) +
	 16'sd 23646 * $signed(input_fmap_251[63:48]) +
	 15'sd 12934 * $signed(input_fmap_251[79:64]) +
	 16'sd 28835 * $signed(input_fmap_251[95:80]) +
	 15'sd 12061 * $signed(input_fmap_251[111:96]) +
	 16'sd 16692 * $signed(input_fmap_251[127:112]) +
	 16'sd 27121 * $signed(input_fmap_251[143:128]);

logic signed [31:0] dw_conv_mac_252;
assign dw_conv_mac_252 = 
	 16'sd 25096 * $signed(input_fmap_252[15:0]) +
	 12'sd 1828 * $signed(input_fmap_252[31:16]) +
	 16'sd 18849 * $signed(input_fmap_252[47:32]) +
	 12'sd 1454 * $signed(input_fmap_252[63:48]) +
	 15'sd 13535 * $signed(input_fmap_252[79:64]) +
	 16'sd 30001 * $signed(input_fmap_252[95:80]) +
	 16'sd 17371 * $signed(input_fmap_252[111:96]) +
	 16'sd 22479 * $signed(input_fmap_252[127:112]) +
	 16'sd 30446 * $signed(input_fmap_252[143:128]);

logic signed [31:0] dw_conv_mac_253;
assign dw_conv_mac_253 = 
	 16'sd 31897 * $signed(input_fmap_253[15:0]) +
	 16'sd 24898 * $signed(input_fmap_253[31:16]) +
	 16'sd 28712 * $signed(input_fmap_253[47:32]) +
	 16'sd 21714 * $signed(input_fmap_253[63:48]) +
	 16'sd 30042 * $signed(input_fmap_253[79:64]) +
	 16'sd 28472 * $signed(input_fmap_253[95:80]) +
	 16'sd 27952 * $signed(input_fmap_253[111:96]) +
	 16'sd 28673 * $signed(input_fmap_253[127:112]) +
	 16'sd 28717 * $signed(input_fmap_253[143:128]);

logic signed [31:0] dw_conv_mac_254;
assign dw_conv_mac_254 = 
	 14'sd 7316 * $signed(input_fmap_254[15:0]) +
	 16'sd 30297 * $signed(input_fmap_254[31:16]) +
	 16'sd 24114 * $signed(input_fmap_254[47:32]) +
	 16'sd 17147 * $signed(input_fmap_254[63:48]) +
	 15'sd 14693 * $signed(input_fmap_254[79:64]) +
	 15'sd 11153 * $signed(input_fmap_254[95:80]) +
	 16'sd 21351 * $signed(input_fmap_254[111:96]) +
	 12'sd 2027 * $signed(input_fmap_254[127:112]) +
	 16'sd 24765 * $signed(input_fmap_254[143:128]);

logic signed [31:0] dw_conv_mac_255;
assign dw_conv_mac_255 = 
	 16'sd 19962 * $signed(input_fmap_255[15:0]) +
	 16'sd 27302 * $signed(input_fmap_255[31:16]) +
	 13'sd 3494 * $signed(input_fmap_255[47:32]) +
	 13'sd 3463 * $signed(input_fmap_255[63:48]) +
	 13'sd 3370 * $signed(input_fmap_255[79:64]) +
	 15'sd 16032 * $signed(input_fmap_255[95:80]) +
	 16'sd 29127 * $signed(input_fmap_255[111:96]) +
	 16'sd 32097 * $signed(input_fmap_255[127:112]) +
	 15'sd 10801 * $signed(input_fmap_255[143:128]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 16'd31245;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 16'd22447;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 16'd16854;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 15'd8962;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 15'd10101;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 13'd2198;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 15'd8969;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 14'd7624;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 13'd3930;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 15'd13744;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 16'd24099;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 15'd14697;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 16'd25504;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 16'd16963;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 13'd3477;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 15'd10916;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 16'd28174;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 15'd8615;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18 + 13'd3610;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 16'd21784;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 16'd31803;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21 + 15'd9731;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22 + 16'd32142;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 15'd10891;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24 + 12'd2047;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25 + 15'd15696;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 16'd22867;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 13'd3244;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28 + 12'd1744;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 15'd11573;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 15'd11177;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 16'd25948;
logic [31:0] bias_add_32;
assign bias_add_32 = dw_conv_mac_32 + 12'd1910;
logic [31:0] bias_add_33;
assign bias_add_33 = dw_conv_mac_33 + 14'd4487;
logic [31:0] bias_add_34;
assign bias_add_34 = dw_conv_mac_34 + 16'd22633;
logic [31:0] bias_add_35;
assign bias_add_35 = dw_conv_mac_35 + 12'd1068;
logic [31:0] bias_add_36;
assign bias_add_36 = dw_conv_mac_36 + 15'd8532;
logic [31:0] bias_add_37;
assign bias_add_37 = dw_conv_mac_37 + 16'd24572;
logic [31:0] bias_add_38;
assign bias_add_38 = dw_conv_mac_38 + 16'd30803;
logic [31:0] bias_add_39;
assign bias_add_39 = dw_conv_mac_39 + 16'd21492;
logic [31:0] bias_add_40;
assign bias_add_40 = dw_conv_mac_40 + 15'd15444;
logic [31:0] bias_add_41;
assign bias_add_41 = dw_conv_mac_41 + 13'd2580;
logic [31:0] bias_add_42;
assign bias_add_42 = dw_conv_mac_42 + 16'd27848;
logic [31:0] bias_add_43;
assign bias_add_43 = dw_conv_mac_43 + 16'd19471;
logic [31:0] bias_add_44;
assign bias_add_44 = dw_conv_mac_44 + 16'd26448;
logic [31:0] bias_add_45;
assign bias_add_45 = dw_conv_mac_45 + 16'd31831;
logic [31:0] bias_add_46;
assign bias_add_46 = dw_conv_mac_46 + 13'd3835;
logic [31:0] bias_add_47;
assign bias_add_47 = dw_conv_mac_47 + 16'd31871;
logic [31:0] bias_add_48;
assign bias_add_48 = dw_conv_mac_48 + 15'd13873;
logic [31:0] bias_add_49;
assign bias_add_49 = dw_conv_mac_49 + 14'd6548;
logic [31:0] bias_add_50;
assign bias_add_50 = dw_conv_mac_50 + 15'd16112;
logic [31:0] bias_add_51;
assign bias_add_51 = dw_conv_mac_51 + 15'd12060;
logic [31:0] bias_add_52;
assign bias_add_52 = dw_conv_mac_52 + 15'd15027;
logic [31:0] bias_add_53;
assign bias_add_53 = dw_conv_mac_53 + 16'd22317;
logic [31:0] bias_add_54;
assign bias_add_54 = dw_conv_mac_54 + 15'd10568;
logic [31:0] bias_add_55;
assign bias_add_55 = dw_conv_mac_55 + 16'd24055;
logic [31:0] bias_add_56;
assign bias_add_56 = dw_conv_mac_56 + 16'd20675;
logic [31:0] bias_add_57;
assign bias_add_57 = dw_conv_mac_57 + 16'd29195;
logic [31:0] bias_add_58;
assign bias_add_58 = dw_conv_mac_58 + 16'd21961;
logic [31:0] bias_add_59;
assign bias_add_59 = dw_conv_mac_59 + 16'd28856;
logic [31:0] bias_add_60;
assign bias_add_60 = dw_conv_mac_60 + 13'd2138;
logic [31:0] bias_add_61;
assign bias_add_61 = dw_conv_mac_61 + 12'd1573;
logic [31:0] bias_add_62;
assign bias_add_62 = dw_conv_mac_62 + 16'd17693;
logic [31:0] bias_add_63;
assign bias_add_63 = dw_conv_mac_63 + 16'd28386;
logic [31:0] bias_add_64;
assign bias_add_64 = dw_conv_mac_64 + 14'd7308;
logic [31:0] bias_add_65;
assign bias_add_65 = dw_conv_mac_65 + 16'd29449;
logic [31:0] bias_add_66;
assign bias_add_66 = dw_conv_mac_66 + 16'd32700;
logic [31:0] bias_add_67;
assign bias_add_67 = dw_conv_mac_67 + 15'd13218;
logic [31:0] bias_add_68;
assign bias_add_68 = dw_conv_mac_68 + 15'd13948;
logic [31:0] bias_add_69;
assign bias_add_69 = dw_conv_mac_69 + 14'd7555;
logic [31:0] bias_add_70;
assign bias_add_70 = dw_conv_mac_70 + 15'd9071;
logic [31:0] bias_add_71;
assign bias_add_71 = dw_conv_mac_71 + 16'd17817;
logic [31:0] bias_add_72;
assign bias_add_72 = dw_conv_mac_72 + 15'd15215;
logic [31:0] bias_add_73;
assign bias_add_73 = dw_conv_mac_73 + 14'd7374;
logic [31:0] bias_add_74;
assign bias_add_74 = dw_conv_mac_74 + 10'd258;
logic [31:0] bias_add_75;
assign bias_add_75 = dw_conv_mac_75 + 16'd28827;
logic [31:0] bias_add_76;
assign bias_add_76 = dw_conv_mac_76 + 16'd16468;
logic [31:0] bias_add_77;
assign bias_add_77 = dw_conv_mac_77 + 16'd29831;
logic [31:0] bias_add_78;
assign bias_add_78 = dw_conv_mac_78 + 16'd26576;
logic [31:0] bias_add_79;
assign bias_add_79 = dw_conv_mac_79 + 14'd4601;
logic [31:0] bias_add_80;
assign bias_add_80 = dw_conv_mac_80 + 14'd4688;
logic [31:0] bias_add_81;
assign bias_add_81 = dw_conv_mac_81 + 15'd11687;
logic [31:0] bias_add_82;
assign bias_add_82 = dw_conv_mac_82 + 15'd12149;
logic [31:0] bias_add_83;
assign bias_add_83 = dw_conv_mac_83 + 11'd709;
logic [31:0] bias_add_84;
assign bias_add_84 = dw_conv_mac_84 + 16'd30991;
logic [31:0] bias_add_85;
assign bias_add_85 = dw_conv_mac_85 + 16'd19058;
logic [31:0] bias_add_86;
assign bias_add_86 = dw_conv_mac_86 + 14'd5494;
logic [31:0] bias_add_87;
assign bias_add_87 = dw_conv_mac_87 + 15'd9174;
logic [31:0] bias_add_88;
assign bias_add_88 = dw_conv_mac_88 + 15'd16105;
logic [31:0] bias_add_89;
assign bias_add_89 = dw_conv_mac_89 + 16'd28565;
logic [31:0] bias_add_90;
assign bias_add_90 = dw_conv_mac_90 + 16'd25911;
logic [31:0] bias_add_91;
assign bias_add_91 = dw_conv_mac_91 + 15'd10812;
logic [31:0] bias_add_92;
assign bias_add_92 = dw_conv_mac_92 + 11'd889;
logic [31:0] bias_add_93;
assign bias_add_93 = dw_conv_mac_93 + 14'd6886;
logic [31:0] bias_add_94;
assign bias_add_94 = dw_conv_mac_94 + 13'd4026;
logic [31:0] bias_add_95;
assign bias_add_95 = dw_conv_mac_95 + 16'd23734;
logic [31:0] bias_add_96;
assign bias_add_96 = dw_conv_mac_96 + 16'd22224;
logic [31:0] bias_add_97;
assign bias_add_97 = dw_conv_mac_97 + 16'd20658;
logic [31:0] bias_add_98;
assign bias_add_98 = dw_conv_mac_98 + 16'd26979;
logic [31:0] bias_add_99;
assign bias_add_99 = dw_conv_mac_99 + 16'd21017;
logic [31:0] bias_add_100;
assign bias_add_100 = dw_conv_mac_100 + 15'd8991;
logic [31:0] bias_add_101;
assign bias_add_101 = dw_conv_mac_101 + 13'd2296;
logic [31:0] bias_add_102;
assign bias_add_102 = dw_conv_mac_102 + 7'd62;
logic [31:0] bias_add_103;
assign bias_add_103 = dw_conv_mac_103 + 13'd2193;
logic [31:0] bias_add_104;
assign bias_add_104 = dw_conv_mac_104 + 15'd13393;
logic [31:0] bias_add_105;
assign bias_add_105 = dw_conv_mac_105 + 15'd14325;
logic [31:0] bias_add_106;
assign bias_add_106 = dw_conv_mac_106 + 15'd14745;
logic [31:0] bias_add_107;
assign bias_add_107 = dw_conv_mac_107 + 15'd9532;
logic [31:0] bias_add_108;
assign bias_add_108 = dw_conv_mac_108 + 15'd12451;
logic [31:0] bias_add_109;
assign bias_add_109 = dw_conv_mac_109 + 12'd1712;
logic [31:0] bias_add_110;
assign bias_add_110 = dw_conv_mac_110 + 14'd7186;
logic [31:0] bias_add_111;
assign bias_add_111 = dw_conv_mac_111 + 13'd2678;
logic [31:0] bias_add_112;
assign bias_add_112 = dw_conv_mac_112 + 15'd12702;
logic [31:0] bias_add_113;
assign bias_add_113 = dw_conv_mac_113 + 16'd28865;
logic [31:0] bias_add_114;
assign bias_add_114 = dw_conv_mac_114 + 16'd30738;
logic [31:0] bias_add_115;
assign bias_add_115 = dw_conv_mac_115 + 14'd8183;
logic [31:0] bias_add_116;
assign bias_add_116 = dw_conv_mac_116 + 16'd22172;
logic [31:0] bias_add_117;
assign bias_add_117 = dw_conv_mac_117 + 14'd4465;
logic [31:0] bias_add_118;
assign bias_add_118 = dw_conv_mac_118 + 15'd8558;
logic [31:0] bias_add_119;
assign bias_add_119 = dw_conv_mac_119 + 15'd13260;
logic [31:0] bias_add_120;
assign bias_add_120 = dw_conv_mac_120 + 13'd3467;
logic [31:0] bias_add_121;
assign bias_add_121 = dw_conv_mac_121 + 16'd19619;
logic [31:0] bias_add_122;
assign bias_add_122 = dw_conv_mac_122 + 16'd28343;
logic [31:0] bias_add_123;
assign bias_add_123 = dw_conv_mac_123 + 15'd10858;
logic [31:0] bias_add_124;
assign bias_add_124 = dw_conv_mac_124 + 16'd31334;
logic [31:0] bias_add_125;
assign bias_add_125 = dw_conv_mac_125 + 16'd30903;
logic [31:0] bias_add_126;
assign bias_add_126 = dw_conv_mac_126 + 16'd30571;
logic [31:0] bias_add_127;
assign bias_add_127 = dw_conv_mac_127 + 16'd28443;
logic [31:0] bias_add_128;
assign bias_add_128 = dw_conv_mac_128 + 13'd3602;
logic [31:0] bias_add_129;
assign bias_add_129 = dw_conv_mac_129 + 16'd22823;
logic [31:0] bias_add_130;
assign bias_add_130 = dw_conv_mac_130 + 15'd13290;
logic [31:0] bias_add_131;
assign bias_add_131 = dw_conv_mac_131 + 15'd14777;
logic [31:0] bias_add_132;
assign bias_add_132 = dw_conv_mac_132 + 15'd12793;
logic [31:0] bias_add_133;
assign bias_add_133 = dw_conv_mac_133 + 16'd32100;
logic [31:0] bias_add_134;
assign bias_add_134 = dw_conv_mac_134 + 12'd1507;
logic [31:0] bias_add_135;
assign bias_add_135 = dw_conv_mac_135 + 14'd4846;
logic [31:0] bias_add_136;
assign bias_add_136 = dw_conv_mac_136 + 16'd23304;
logic [31:0] bias_add_137;
assign bias_add_137 = dw_conv_mac_137 + 13'd2284;
logic [31:0] bias_add_138;
assign bias_add_138 = dw_conv_mac_138 + 12'd1297;
logic [31:0] bias_add_139;
assign bias_add_139 = dw_conv_mac_139 + 16'd16429;
logic [31:0] bias_add_140;
assign bias_add_140 = dw_conv_mac_140 + 16'd30252;
logic [31:0] bias_add_141;
assign bias_add_141 = dw_conv_mac_141 + 11'd988;
logic [31:0] bias_add_142;
assign bias_add_142 = dw_conv_mac_142 + 13'd3599;
logic [31:0] bias_add_143;
assign bias_add_143 = dw_conv_mac_143 + 16'd29584;
logic [31:0] bias_add_144;
assign bias_add_144 = dw_conv_mac_144 + 16'd29256;
logic [31:0] bias_add_145;
assign bias_add_145 = dw_conv_mac_145 + 15'd13319;
logic [31:0] bias_add_146;
assign bias_add_146 = dw_conv_mac_146 + 14'd6016;
logic [31:0] bias_add_147;
assign bias_add_147 = dw_conv_mac_147 + 15'd12406;
logic [31:0] bias_add_148;
assign bias_add_148 = dw_conv_mac_148 + 15'd10777;
logic [31:0] bias_add_149;
assign bias_add_149 = dw_conv_mac_149 + 16'd25480;
logic [31:0] bias_add_150;
assign bias_add_150 = dw_conv_mac_150 + 14'd5875;
logic [31:0] bias_add_151;
assign bias_add_151 = dw_conv_mac_151 + 15'd12252;
logic [31:0] bias_add_152;
assign bias_add_152 = dw_conv_mac_152 + 14'd4995;
logic [31:0] bias_add_153;
assign bias_add_153 = dw_conv_mac_153 + 16'd21580;
logic [31:0] bias_add_154;
assign bias_add_154 = dw_conv_mac_154 + 16'd30095;
logic [31:0] bias_add_155;
assign bias_add_155 = dw_conv_mac_155 + 16'd32252;
logic [31:0] bias_add_156;
assign bias_add_156 = dw_conv_mac_156 + 14'd7528;
logic [31:0] bias_add_157;
assign bias_add_157 = dw_conv_mac_157 + 11'd1002;
logic [31:0] bias_add_158;
assign bias_add_158 = dw_conv_mac_158 + 16'd17471;
logic [31:0] bias_add_159;
assign bias_add_159 = dw_conv_mac_159 + 16'd28175;
logic [31:0] bias_add_160;
assign bias_add_160 = dw_conv_mac_160 + 14'd8082;
logic [31:0] bias_add_161;
assign bias_add_161 = dw_conv_mac_161 + 16'd20265;
logic [31:0] bias_add_162;
assign bias_add_162 = dw_conv_mac_162 + 15'd13859;
logic [31:0] bias_add_163;
assign bias_add_163 = dw_conv_mac_163 + 16'd20689;
logic [31:0] bias_add_164;
assign bias_add_164 = dw_conv_mac_164 + 12'd1843;
logic [31:0] bias_add_165;
assign bias_add_165 = dw_conv_mac_165 + 15'd11598;
logic [31:0] bias_add_166;
assign bias_add_166 = dw_conv_mac_166 + 15'd8228;
logic [31:0] bias_add_167;
assign bias_add_167 = dw_conv_mac_167 + 16'd32083;
logic [31:0] bias_add_168;
assign bias_add_168 = dw_conv_mac_168 + 15'd9005;
logic [31:0] bias_add_169;
assign bias_add_169 = dw_conv_mac_169 + 15'd9978;
logic [31:0] bias_add_170;
assign bias_add_170 = dw_conv_mac_170 + 15'd15096;
logic [31:0] bias_add_171;
assign bias_add_171 = dw_conv_mac_171 + 16'd20261;
logic [31:0] bias_add_172;
assign bias_add_172 = dw_conv_mac_172 + 16'd22262;
logic [31:0] bias_add_173;
assign bias_add_173 = dw_conv_mac_173 + 16'd27297;
logic [31:0] bias_add_174;
assign bias_add_174 = dw_conv_mac_174 + 12'd1250;
logic [31:0] bias_add_175;
assign bias_add_175 = dw_conv_mac_175 + 16'd17548;
logic [31:0] bias_add_176;
assign bias_add_176 = dw_conv_mac_176 + 15'd8856;
logic [31:0] bias_add_177;
assign bias_add_177 = dw_conv_mac_177 + 13'd3462;
logic [31:0] bias_add_178;
assign bias_add_178 = dw_conv_mac_178 + 16'd21796;
logic [31:0] bias_add_179;
assign bias_add_179 = dw_conv_mac_179 + 15'd13983;
logic [31:0] bias_add_180;
assign bias_add_180 = dw_conv_mac_180 + 16'd29550;
logic [31:0] bias_add_181;
assign bias_add_181 = dw_conv_mac_181 + 14'd7585;
logic [31:0] bias_add_182;
assign bias_add_182 = dw_conv_mac_182 + 16'd31645;
logic [31:0] bias_add_183;
assign bias_add_183 = dw_conv_mac_183 + 16'd17402;
logic [31:0] bias_add_184;
assign bias_add_184 = dw_conv_mac_184 + 14'd4591;
logic [31:0] bias_add_185;
assign bias_add_185 = dw_conv_mac_185 + 15'd15994;
logic [31:0] bias_add_186;
assign bias_add_186 = dw_conv_mac_186 + 16'd27011;
logic [31:0] bias_add_187;
assign bias_add_187 = dw_conv_mac_187 + 13'd2577;
logic [31:0] bias_add_188;
assign bias_add_188 = dw_conv_mac_188 + 16'd25980;
logic [31:0] bias_add_189;
assign bias_add_189 = dw_conv_mac_189 + 16'd30472;
logic [31:0] bias_add_190;
assign bias_add_190 = dw_conv_mac_190 + 16'd23720;
logic [31:0] bias_add_191;
assign bias_add_191 = dw_conv_mac_191 + 16'd18973;
logic [31:0] bias_add_192;
assign bias_add_192 = dw_conv_mac_192 + 16'd18242;
logic [31:0] bias_add_193;
assign bias_add_193 = dw_conv_mac_193 + 16'd31706;
logic [31:0] bias_add_194;
assign bias_add_194 = dw_conv_mac_194 + 16'd31773;
logic [31:0] bias_add_195;
assign bias_add_195 = dw_conv_mac_195 + 15'd14301;
logic [31:0] bias_add_196;
assign bias_add_196 = dw_conv_mac_196 + 16'd27829;
logic [31:0] bias_add_197;
assign bias_add_197 = dw_conv_mac_197 + 16'd24727;
logic [31:0] bias_add_198;
assign bias_add_198 = dw_conv_mac_198 + 16'd23617;
logic [31:0] bias_add_199;
assign bias_add_199 = dw_conv_mac_199 + 16'd31970;
logic [31:0] bias_add_200;
assign bias_add_200 = dw_conv_mac_200 + 16'd18017;
logic [31:0] bias_add_201;
assign bias_add_201 = dw_conv_mac_201 + 14'd6740;
logic [31:0] bias_add_202;
assign bias_add_202 = dw_conv_mac_202 + 11'd941;
logic [31:0] bias_add_203;
assign bias_add_203 = dw_conv_mac_203 + 16'd30809;
logic [31:0] bias_add_204;
assign bias_add_204 = dw_conv_mac_204 + 15'd13545;
logic [31:0] bias_add_205;
assign bias_add_205 = dw_conv_mac_205 + 16'd24748;
logic [31:0] bias_add_206;
assign bias_add_206 = dw_conv_mac_206 + 16'd22940;
logic [31:0] bias_add_207;
assign bias_add_207 = dw_conv_mac_207 + 15'd8806;
logic [31:0] bias_add_208;
assign bias_add_208 = dw_conv_mac_208 + 16'd26888;
logic [31:0] bias_add_209;
assign bias_add_209 = dw_conv_mac_209 + 15'd16226;
logic [31:0] bias_add_210;
assign bias_add_210 = dw_conv_mac_210 + 16'd26048;
logic [31:0] bias_add_211;
assign bias_add_211 = dw_conv_mac_211 + 14'd4577;
logic [31:0] bias_add_212;
assign bias_add_212 = dw_conv_mac_212 + 16'd21368;
logic [31:0] bias_add_213;
assign bias_add_213 = dw_conv_mac_213 + 15'd10804;
logic [31:0] bias_add_214;
assign bias_add_214 = dw_conv_mac_214 + 15'd9958;
logic [31:0] bias_add_215;
assign bias_add_215 = dw_conv_mac_215 + 16'd22820;
logic [31:0] bias_add_216;
assign bias_add_216 = dw_conv_mac_216 + 16'd30441;
logic [31:0] bias_add_217;
assign bias_add_217 = dw_conv_mac_217 + 16'd29933;
logic [31:0] bias_add_218;
assign bias_add_218 = dw_conv_mac_218 + 16'd31510;
logic [31:0] bias_add_219;
assign bias_add_219 = dw_conv_mac_219 + 14'd4775;
logic [31:0] bias_add_220;
assign bias_add_220 = dw_conv_mac_220 + 15'd12763;
logic [31:0] bias_add_221;
assign bias_add_221 = dw_conv_mac_221 + 11'd795;
logic [31:0] bias_add_222;
assign bias_add_222 = dw_conv_mac_222 + 16'd19475;
logic [31:0] bias_add_223;
assign bias_add_223 = dw_conv_mac_223 + 16'd25217;
logic [31:0] bias_add_224;
assign bias_add_224 = dw_conv_mac_224 + 16'd21441;
logic [31:0] bias_add_225;
assign bias_add_225 = dw_conv_mac_225 + 16'd26443;
logic [31:0] bias_add_226;
assign bias_add_226 = dw_conv_mac_226 + 16'd27198;
logic [31:0] bias_add_227;
assign bias_add_227 = dw_conv_mac_227 + 14'd6952;
logic [31:0] bias_add_228;
assign bias_add_228 = dw_conv_mac_228 + 16'd31857;
logic [31:0] bias_add_229;
assign bias_add_229 = dw_conv_mac_229 + 14'd5469;
logic [31:0] bias_add_230;
assign bias_add_230 = dw_conv_mac_230 + 16'd18348;
logic [31:0] bias_add_231;
assign bias_add_231 = dw_conv_mac_231 + 13'd3476;
logic [31:0] bias_add_232;
assign bias_add_232 = dw_conv_mac_232 + 13'd3997;
logic [31:0] bias_add_233;
assign bias_add_233 = dw_conv_mac_233 + 16'd28628;
logic [31:0] bias_add_234;
assign bias_add_234 = dw_conv_mac_234 + 14'd5885;
logic [31:0] bias_add_235;
assign bias_add_235 = dw_conv_mac_235 + 14'd7148;
logic [31:0] bias_add_236;
assign bias_add_236 = dw_conv_mac_236 + 13'd3706;
logic [31:0] bias_add_237;
assign bias_add_237 = dw_conv_mac_237 + 15'd11881;
logic [31:0] bias_add_238;
assign bias_add_238 = dw_conv_mac_238 + 16'd18703;
logic [31:0] bias_add_239;
assign bias_add_239 = dw_conv_mac_239 + 16'd19582;
logic [31:0] bias_add_240;
assign bias_add_240 = dw_conv_mac_240 + 15'd13568;
logic [31:0] bias_add_241;
assign bias_add_241 = dw_conv_mac_241 + 15'd15813;
logic [31:0] bias_add_242;
assign bias_add_242 = dw_conv_mac_242 + 15'd10710;
logic [31:0] bias_add_243;
assign bias_add_243 = dw_conv_mac_243 + 15'd8752;
logic [31:0] bias_add_244;
assign bias_add_244 = dw_conv_mac_244 + 16'd28100;
logic [31:0] bias_add_245;
assign bias_add_245 = dw_conv_mac_245 + 16'd18282;
logic [31:0] bias_add_246;
assign bias_add_246 = dw_conv_mac_246 + 14'd7916;
logic [31:0] bias_add_247;
assign bias_add_247 = dw_conv_mac_247 + 16'd24270;
logic [31:0] bias_add_248;
assign bias_add_248 = dw_conv_mac_248 + 16'd29353;
logic [31:0] bias_add_249;
assign bias_add_249 = dw_conv_mac_249 + 15'd12677;
logic [31:0] bias_add_250;
assign bias_add_250 = dw_conv_mac_250 + 13'd3679;
logic [31:0] bias_add_251;
assign bias_add_251 = dw_conv_mac_251 + 14'd6600;
logic [31:0] bias_add_252;
assign bias_add_252 = dw_conv_mac_252 + 15'd12577;
logic [31:0] bias_add_253;
assign bias_add_253 = dw_conv_mac_253 + 16'd23971;
logic [31:0] bias_add_254;
assign bias_add_254 = dw_conv_mac_254 + 14'd7155;
logic [31:0] bias_add_255;
assign bias_add_255 = dw_conv_mac_255 + 16'd20659;

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
logic [15:0] relu_128;
assign relu_128[15:0] = (bias_add_128[31]==0) ? ((bias_add_128<3'd6) ? {{bias_add_128[31],bias_add_128[29:15]}} :'d6) : '0;
logic [15:0] relu_129;
assign relu_129[15:0] = (bias_add_129[31]==0) ? ((bias_add_129<3'd6) ? {{bias_add_129[31],bias_add_129[29:15]}} :'d6) : '0;
logic [15:0] relu_130;
assign relu_130[15:0] = (bias_add_130[31]==0) ? ((bias_add_130<3'd6) ? {{bias_add_130[31],bias_add_130[29:15]}} :'d6) : '0;
logic [15:0] relu_131;
assign relu_131[15:0] = (bias_add_131[31]==0) ? ((bias_add_131<3'd6) ? {{bias_add_131[31],bias_add_131[29:15]}} :'d6) : '0;
logic [15:0] relu_132;
assign relu_132[15:0] = (bias_add_132[31]==0) ? ((bias_add_132<3'd6) ? {{bias_add_132[31],bias_add_132[29:15]}} :'d6) : '0;
logic [15:0] relu_133;
assign relu_133[15:0] = (bias_add_133[31]==0) ? ((bias_add_133<3'd6) ? {{bias_add_133[31],bias_add_133[29:15]}} :'d6) : '0;
logic [15:0] relu_134;
assign relu_134[15:0] = (bias_add_134[31]==0) ? ((bias_add_134<3'd6) ? {{bias_add_134[31],bias_add_134[29:15]}} :'d6) : '0;
logic [15:0] relu_135;
assign relu_135[15:0] = (bias_add_135[31]==0) ? ((bias_add_135<3'd6) ? {{bias_add_135[31],bias_add_135[29:15]}} :'d6) : '0;
logic [15:0] relu_136;
assign relu_136[15:0] = (bias_add_136[31]==0) ? ((bias_add_136<3'd6) ? {{bias_add_136[31],bias_add_136[29:15]}} :'d6) : '0;
logic [15:0] relu_137;
assign relu_137[15:0] = (bias_add_137[31]==0) ? ((bias_add_137<3'd6) ? {{bias_add_137[31],bias_add_137[29:15]}} :'d6) : '0;
logic [15:0] relu_138;
assign relu_138[15:0] = (bias_add_138[31]==0) ? ((bias_add_138<3'd6) ? {{bias_add_138[31],bias_add_138[29:15]}} :'d6) : '0;
logic [15:0] relu_139;
assign relu_139[15:0] = (bias_add_139[31]==0) ? ((bias_add_139<3'd6) ? {{bias_add_139[31],bias_add_139[29:15]}} :'d6) : '0;
logic [15:0] relu_140;
assign relu_140[15:0] = (bias_add_140[31]==0) ? ((bias_add_140<3'd6) ? {{bias_add_140[31],bias_add_140[29:15]}} :'d6) : '0;
logic [15:0] relu_141;
assign relu_141[15:0] = (bias_add_141[31]==0) ? ((bias_add_141<3'd6) ? {{bias_add_141[31],bias_add_141[29:15]}} :'d6) : '0;
logic [15:0] relu_142;
assign relu_142[15:0] = (bias_add_142[31]==0) ? ((bias_add_142<3'd6) ? {{bias_add_142[31],bias_add_142[29:15]}} :'d6) : '0;
logic [15:0] relu_143;
assign relu_143[15:0] = (bias_add_143[31]==0) ? ((bias_add_143<3'd6) ? {{bias_add_143[31],bias_add_143[29:15]}} :'d6) : '0;
logic [15:0] relu_144;
assign relu_144[15:0] = (bias_add_144[31]==0) ? ((bias_add_144<3'd6) ? {{bias_add_144[31],bias_add_144[29:15]}} :'d6) : '0;
logic [15:0] relu_145;
assign relu_145[15:0] = (bias_add_145[31]==0) ? ((bias_add_145<3'd6) ? {{bias_add_145[31],bias_add_145[29:15]}} :'d6) : '0;
logic [15:0] relu_146;
assign relu_146[15:0] = (bias_add_146[31]==0) ? ((bias_add_146<3'd6) ? {{bias_add_146[31],bias_add_146[29:15]}} :'d6) : '0;
logic [15:0] relu_147;
assign relu_147[15:0] = (bias_add_147[31]==0) ? ((bias_add_147<3'd6) ? {{bias_add_147[31],bias_add_147[29:15]}} :'d6) : '0;
logic [15:0] relu_148;
assign relu_148[15:0] = (bias_add_148[31]==0) ? ((bias_add_148<3'd6) ? {{bias_add_148[31],bias_add_148[29:15]}} :'d6) : '0;
logic [15:0] relu_149;
assign relu_149[15:0] = (bias_add_149[31]==0) ? ((bias_add_149<3'd6) ? {{bias_add_149[31],bias_add_149[29:15]}} :'d6) : '0;
logic [15:0] relu_150;
assign relu_150[15:0] = (bias_add_150[31]==0) ? ((bias_add_150<3'd6) ? {{bias_add_150[31],bias_add_150[29:15]}} :'d6) : '0;
logic [15:0] relu_151;
assign relu_151[15:0] = (bias_add_151[31]==0) ? ((bias_add_151<3'd6) ? {{bias_add_151[31],bias_add_151[29:15]}} :'d6) : '0;
logic [15:0] relu_152;
assign relu_152[15:0] = (bias_add_152[31]==0) ? ((bias_add_152<3'd6) ? {{bias_add_152[31],bias_add_152[29:15]}} :'d6) : '0;
logic [15:0] relu_153;
assign relu_153[15:0] = (bias_add_153[31]==0) ? ((bias_add_153<3'd6) ? {{bias_add_153[31],bias_add_153[29:15]}} :'d6) : '0;
logic [15:0] relu_154;
assign relu_154[15:0] = (bias_add_154[31]==0) ? ((bias_add_154<3'd6) ? {{bias_add_154[31],bias_add_154[29:15]}} :'d6) : '0;
logic [15:0] relu_155;
assign relu_155[15:0] = (bias_add_155[31]==0) ? ((bias_add_155<3'd6) ? {{bias_add_155[31],bias_add_155[29:15]}} :'d6) : '0;
logic [15:0] relu_156;
assign relu_156[15:0] = (bias_add_156[31]==0) ? ((bias_add_156<3'd6) ? {{bias_add_156[31],bias_add_156[29:15]}} :'d6) : '0;
logic [15:0] relu_157;
assign relu_157[15:0] = (bias_add_157[31]==0) ? ((bias_add_157<3'd6) ? {{bias_add_157[31],bias_add_157[29:15]}} :'d6) : '0;
logic [15:0] relu_158;
assign relu_158[15:0] = (bias_add_158[31]==0) ? ((bias_add_158<3'd6) ? {{bias_add_158[31],bias_add_158[29:15]}} :'d6) : '0;
logic [15:0] relu_159;
assign relu_159[15:0] = (bias_add_159[31]==0) ? ((bias_add_159<3'd6) ? {{bias_add_159[31],bias_add_159[29:15]}} :'d6) : '0;
logic [15:0] relu_160;
assign relu_160[15:0] = (bias_add_160[31]==0) ? ((bias_add_160<3'd6) ? {{bias_add_160[31],bias_add_160[29:15]}} :'d6) : '0;
logic [15:0] relu_161;
assign relu_161[15:0] = (bias_add_161[31]==0) ? ((bias_add_161<3'd6) ? {{bias_add_161[31],bias_add_161[29:15]}} :'d6) : '0;
logic [15:0] relu_162;
assign relu_162[15:0] = (bias_add_162[31]==0) ? ((bias_add_162<3'd6) ? {{bias_add_162[31],bias_add_162[29:15]}} :'d6) : '0;
logic [15:0] relu_163;
assign relu_163[15:0] = (bias_add_163[31]==0) ? ((bias_add_163<3'd6) ? {{bias_add_163[31],bias_add_163[29:15]}} :'d6) : '0;
logic [15:0] relu_164;
assign relu_164[15:0] = (bias_add_164[31]==0) ? ((bias_add_164<3'd6) ? {{bias_add_164[31],bias_add_164[29:15]}} :'d6) : '0;
logic [15:0] relu_165;
assign relu_165[15:0] = (bias_add_165[31]==0) ? ((bias_add_165<3'd6) ? {{bias_add_165[31],bias_add_165[29:15]}} :'d6) : '0;
logic [15:0] relu_166;
assign relu_166[15:0] = (bias_add_166[31]==0) ? ((bias_add_166<3'd6) ? {{bias_add_166[31],bias_add_166[29:15]}} :'d6) : '0;
logic [15:0] relu_167;
assign relu_167[15:0] = (bias_add_167[31]==0) ? ((bias_add_167<3'd6) ? {{bias_add_167[31],bias_add_167[29:15]}} :'d6) : '0;
logic [15:0] relu_168;
assign relu_168[15:0] = (bias_add_168[31]==0) ? ((bias_add_168<3'd6) ? {{bias_add_168[31],bias_add_168[29:15]}} :'d6) : '0;
logic [15:0] relu_169;
assign relu_169[15:0] = (bias_add_169[31]==0) ? ((bias_add_169<3'd6) ? {{bias_add_169[31],bias_add_169[29:15]}} :'d6) : '0;
logic [15:0] relu_170;
assign relu_170[15:0] = (bias_add_170[31]==0) ? ((bias_add_170<3'd6) ? {{bias_add_170[31],bias_add_170[29:15]}} :'d6) : '0;
logic [15:0] relu_171;
assign relu_171[15:0] = (bias_add_171[31]==0) ? ((bias_add_171<3'd6) ? {{bias_add_171[31],bias_add_171[29:15]}} :'d6) : '0;
logic [15:0] relu_172;
assign relu_172[15:0] = (bias_add_172[31]==0) ? ((bias_add_172<3'd6) ? {{bias_add_172[31],bias_add_172[29:15]}} :'d6) : '0;
logic [15:0] relu_173;
assign relu_173[15:0] = (bias_add_173[31]==0) ? ((bias_add_173<3'd6) ? {{bias_add_173[31],bias_add_173[29:15]}} :'d6) : '0;
logic [15:0] relu_174;
assign relu_174[15:0] = (bias_add_174[31]==0) ? ((bias_add_174<3'd6) ? {{bias_add_174[31],bias_add_174[29:15]}} :'d6) : '0;
logic [15:0] relu_175;
assign relu_175[15:0] = (bias_add_175[31]==0) ? ((bias_add_175<3'd6) ? {{bias_add_175[31],bias_add_175[29:15]}} :'d6) : '0;
logic [15:0] relu_176;
assign relu_176[15:0] = (bias_add_176[31]==0) ? ((bias_add_176<3'd6) ? {{bias_add_176[31],bias_add_176[29:15]}} :'d6) : '0;
logic [15:0] relu_177;
assign relu_177[15:0] = (bias_add_177[31]==0) ? ((bias_add_177<3'd6) ? {{bias_add_177[31],bias_add_177[29:15]}} :'d6) : '0;
logic [15:0] relu_178;
assign relu_178[15:0] = (bias_add_178[31]==0) ? ((bias_add_178<3'd6) ? {{bias_add_178[31],bias_add_178[29:15]}} :'d6) : '0;
logic [15:0] relu_179;
assign relu_179[15:0] = (bias_add_179[31]==0) ? ((bias_add_179<3'd6) ? {{bias_add_179[31],bias_add_179[29:15]}} :'d6) : '0;
logic [15:0] relu_180;
assign relu_180[15:0] = (bias_add_180[31]==0) ? ((bias_add_180<3'd6) ? {{bias_add_180[31],bias_add_180[29:15]}} :'d6) : '0;
logic [15:0] relu_181;
assign relu_181[15:0] = (bias_add_181[31]==0) ? ((bias_add_181<3'd6) ? {{bias_add_181[31],bias_add_181[29:15]}} :'d6) : '0;
logic [15:0] relu_182;
assign relu_182[15:0] = (bias_add_182[31]==0) ? ((bias_add_182<3'd6) ? {{bias_add_182[31],bias_add_182[29:15]}} :'d6) : '0;
logic [15:0] relu_183;
assign relu_183[15:0] = (bias_add_183[31]==0) ? ((bias_add_183<3'd6) ? {{bias_add_183[31],bias_add_183[29:15]}} :'d6) : '0;
logic [15:0] relu_184;
assign relu_184[15:0] = (bias_add_184[31]==0) ? ((bias_add_184<3'd6) ? {{bias_add_184[31],bias_add_184[29:15]}} :'d6) : '0;
logic [15:0] relu_185;
assign relu_185[15:0] = (bias_add_185[31]==0) ? ((bias_add_185<3'd6) ? {{bias_add_185[31],bias_add_185[29:15]}} :'d6) : '0;
logic [15:0] relu_186;
assign relu_186[15:0] = (bias_add_186[31]==0) ? ((bias_add_186<3'd6) ? {{bias_add_186[31],bias_add_186[29:15]}} :'d6) : '0;
logic [15:0] relu_187;
assign relu_187[15:0] = (bias_add_187[31]==0) ? ((bias_add_187<3'd6) ? {{bias_add_187[31],bias_add_187[29:15]}} :'d6) : '0;
logic [15:0] relu_188;
assign relu_188[15:0] = (bias_add_188[31]==0) ? ((bias_add_188<3'd6) ? {{bias_add_188[31],bias_add_188[29:15]}} :'d6) : '0;
logic [15:0] relu_189;
assign relu_189[15:0] = (bias_add_189[31]==0) ? ((bias_add_189<3'd6) ? {{bias_add_189[31],bias_add_189[29:15]}} :'d6) : '0;
logic [15:0] relu_190;
assign relu_190[15:0] = (bias_add_190[31]==0) ? ((bias_add_190<3'd6) ? {{bias_add_190[31],bias_add_190[29:15]}} :'d6) : '0;
logic [15:0] relu_191;
assign relu_191[15:0] = (bias_add_191[31]==0) ? ((bias_add_191<3'd6) ? {{bias_add_191[31],bias_add_191[29:15]}} :'d6) : '0;
logic [15:0] relu_192;
assign relu_192[15:0] = (bias_add_192[31]==0) ? ((bias_add_192<3'd6) ? {{bias_add_192[31],bias_add_192[29:15]}} :'d6) : '0;
logic [15:0] relu_193;
assign relu_193[15:0] = (bias_add_193[31]==0) ? ((bias_add_193<3'd6) ? {{bias_add_193[31],bias_add_193[29:15]}} :'d6) : '0;
logic [15:0] relu_194;
assign relu_194[15:0] = (bias_add_194[31]==0) ? ((bias_add_194<3'd6) ? {{bias_add_194[31],bias_add_194[29:15]}} :'d6) : '0;
logic [15:0] relu_195;
assign relu_195[15:0] = (bias_add_195[31]==0) ? ((bias_add_195<3'd6) ? {{bias_add_195[31],bias_add_195[29:15]}} :'d6) : '0;
logic [15:0] relu_196;
assign relu_196[15:0] = (bias_add_196[31]==0) ? ((bias_add_196<3'd6) ? {{bias_add_196[31],bias_add_196[29:15]}} :'d6) : '0;
logic [15:0] relu_197;
assign relu_197[15:0] = (bias_add_197[31]==0) ? ((bias_add_197<3'd6) ? {{bias_add_197[31],bias_add_197[29:15]}} :'d6) : '0;
logic [15:0] relu_198;
assign relu_198[15:0] = (bias_add_198[31]==0) ? ((bias_add_198<3'd6) ? {{bias_add_198[31],bias_add_198[29:15]}} :'d6) : '0;
logic [15:0] relu_199;
assign relu_199[15:0] = (bias_add_199[31]==0) ? ((bias_add_199<3'd6) ? {{bias_add_199[31],bias_add_199[29:15]}} :'d6) : '0;
logic [15:0] relu_200;
assign relu_200[15:0] = (bias_add_200[31]==0) ? ((bias_add_200<3'd6) ? {{bias_add_200[31],bias_add_200[29:15]}} :'d6) : '0;
logic [15:0] relu_201;
assign relu_201[15:0] = (bias_add_201[31]==0) ? ((bias_add_201<3'd6) ? {{bias_add_201[31],bias_add_201[29:15]}} :'d6) : '0;
logic [15:0] relu_202;
assign relu_202[15:0] = (bias_add_202[31]==0) ? ((bias_add_202<3'd6) ? {{bias_add_202[31],bias_add_202[29:15]}} :'d6) : '0;
logic [15:0] relu_203;
assign relu_203[15:0] = (bias_add_203[31]==0) ? ((bias_add_203<3'd6) ? {{bias_add_203[31],bias_add_203[29:15]}} :'d6) : '0;
logic [15:0] relu_204;
assign relu_204[15:0] = (bias_add_204[31]==0) ? ((bias_add_204<3'd6) ? {{bias_add_204[31],bias_add_204[29:15]}} :'d6) : '0;
logic [15:0] relu_205;
assign relu_205[15:0] = (bias_add_205[31]==0) ? ((bias_add_205<3'd6) ? {{bias_add_205[31],bias_add_205[29:15]}} :'d6) : '0;
logic [15:0] relu_206;
assign relu_206[15:0] = (bias_add_206[31]==0) ? ((bias_add_206<3'd6) ? {{bias_add_206[31],bias_add_206[29:15]}} :'d6) : '0;
logic [15:0] relu_207;
assign relu_207[15:0] = (bias_add_207[31]==0) ? ((bias_add_207<3'd6) ? {{bias_add_207[31],bias_add_207[29:15]}} :'d6) : '0;
logic [15:0] relu_208;
assign relu_208[15:0] = (bias_add_208[31]==0) ? ((bias_add_208<3'd6) ? {{bias_add_208[31],bias_add_208[29:15]}} :'d6) : '0;
logic [15:0] relu_209;
assign relu_209[15:0] = (bias_add_209[31]==0) ? ((bias_add_209<3'd6) ? {{bias_add_209[31],bias_add_209[29:15]}} :'d6) : '0;
logic [15:0] relu_210;
assign relu_210[15:0] = (bias_add_210[31]==0) ? ((bias_add_210<3'd6) ? {{bias_add_210[31],bias_add_210[29:15]}} :'d6) : '0;
logic [15:0] relu_211;
assign relu_211[15:0] = (bias_add_211[31]==0) ? ((bias_add_211<3'd6) ? {{bias_add_211[31],bias_add_211[29:15]}} :'d6) : '0;
logic [15:0] relu_212;
assign relu_212[15:0] = (bias_add_212[31]==0) ? ((bias_add_212<3'd6) ? {{bias_add_212[31],bias_add_212[29:15]}} :'d6) : '0;
logic [15:0] relu_213;
assign relu_213[15:0] = (bias_add_213[31]==0) ? ((bias_add_213<3'd6) ? {{bias_add_213[31],bias_add_213[29:15]}} :'d6) : '0;
logic [15:0] relu_214;
assign relu_214[15:0] = (bias_add_214[31]==0) ? ((bias_add_214<3'd6) ? {{bias_add_214[31],bias_add_214[29:15]}} :'d6) : '0;
logic [15:0] relu_215;
assign relu_215[15:0] = (bias_add_215[31]==0) ? ((bias_add_215<3'd6) ? {{bias_add_215[31],bias_add_215[29:15]}} :'d6) : '0;
logic [15:0] relu_216;
assign relu_216[15:0] = (bias_add_216[31]==0) ? ((bias_add_216<3'd6) ? {{bias_add_216[31],bias_add_216[29:15]}} :'d6) : '0;
logic [15:0] relu_217;
assign relu_217[15:0] = (bias_add_217[31]==0) ? ((bias_add_217<3'd6) ? {{bias_add_217[31],bias_add_217[29:15]}} :'d6) : '0;
logic [15:0] relu_218;
assign relu_218[15:0] = (bias_add_218[31]==0) ? ((bias_add_218<3'd6) ? {{bias_add_218[31],bias_add_218[29:15]}} :'d6) : '0;
logic [15:0] relu_219;
assign relu_219[15:0] = (bias_add_219[31]==0) ? ((bias_add_219<3'd6) ? {{bias_add_219[31],bias_add_219[29:15]}} :'d6) : '0;
logic [15:0] relu_220;
assign relu_220[15:0] = (bias_add_220[31]==0) ? ((bias_add_220<3'd6) ? {{bias_add_220[31],bias_add_220[29:15]}} :'d6) : '0;
logic [15:0] relu_221;
assign relu_221[15:0] = (bias_add_221[31]==0) ? ((bias_add_221<3'd6) ? {{bias_add_221[31],bias_add_221[29:15]}} :'d6) : '0;
logic [15:0] relu_222;
assign relu_222[15:0] = (bias_add_222[31]==0) ? ((bias_add_222<3'd6) ? {{bias_add_222[31],bias_add_222[29:15]}} :'d6) : '0;
logic [15:0] relu_223;
assign relu_223[15:0] = (bias_add_223[31]==0) ? ((bias_add_223<3'd6) ? {{bias_add_223[31],bias_add_223[29:15]}} :'d6) : '0;
logic [15:0] relu_224;
assign relu_224[15:0] = (bias_add_224[31]==0) ? ((bias_add_224<3'd6) ? {{bias_add_224[31],bias_add_224[29:15]}} :'d6) : '0;
logic [15:0] relu_225;
assign relu_225[15:0] = (bias_add_225[31]==0) ? ((bias_add_225<3'd6) ? {{bias_add_225[31],bias_add_225[29:15]}} :'d6) : '0;
logic [15:0] relu_226;
assign relu_226[15:0] = (bias_add_226[31]==0) ? ((bias_add_226<3'd6) ? {{bias_add_226[31],bias_add_226[29:15]}} :'d6) : '0;
logic [15:0] relu_227;
assign relu_227[15:0] = (bias_add_227[31]==0) ? ((bias_add_227<3'd6) ? {{bias_add_227[31],bias_add_227[29:15]}} :'d6) : '0;
logic [15:0] relu_228;
assign relu_228[15:0] = (bias_add_228[31]==0) ? ((bias_add_228<3'd6) ? {{bias_add_228[31],bias_add_228[29:15]}} :'d6) : '0;
logic [15:0] relu_229;
assign relu_229[15:0] = (bias_add_229[31]==0) ? ((bias_add_229<3'd6) ? {{bias_add_229[31],bias_add_229[29:15]}} :'d6) : '0;
logic [15:0] relu_230;
assign relu_230[15:0] = (bias_add_230[31]==0) ? ((bias_add_230<3'd6) ? {{bias_add_230[31],bias_add_230[29:15]}} :'d6) : '0;
logic [15:0] relu_231;
assign relu_231[15:0] = (bias_add_231[31]==0) ? ((bias_add_231<3'd6) ? {{bias_add_231[31],bias_add_231[29:15]}} :'d6) : '0;
logic [15:0] relu_232;
assign relu_232[15:0] = (bias_add_232[31]==0) ? ((bias_add_232<3'd6) ? {{bias_add_232[31],bias_add_232[29:15]}} :'d6) : '0;
logic [15:0] relu_233;
assign relu_233[15:0] = (bias_add_233[31]==0) ? ((bias_add_233<3'd6) ? {{bias_add_233[31],bias_add_233[29:15]}} :'d6) : '0;
logic [15:0] relu_234;
assign relu_234[15:0] = (bias_add_234[31]==0) ? ((bias_add_234<3'd6) ? {{bias_add_234[31],bias_add_234[29:15]}} :'d6) : '0;
logic [15:0] relu_235;
assign relu_235[15:0] = (bias_add_235[31]==0) ? ((bias_add_235<3'd6) ? {{bias_add_235[31],bias_add_235[29:15]}} :'d6) : '0;
logic [15:0] relu_236;
assign relu_236[15:0] = (bias_add_236[31]==0) ? ((bias_add_236<3'd6) ? {{bias_add_236[31],bias_add_236[29:15]}} :'d6) : '0;
logic [15:0] relu_237;
assign relu_237[15:0] = (bias_add_237[31]==0) ? ((bias_add_237<3'd6) ? {{bias_add_237[31],bias_add_237[29:15]}} :'d6) : '0;
logic [15:0] relu_238;
assign relu_238[15:0] = (bias_add_238[31]==0) ? ((bias_add_238<3'd6) ? {{bias_add_238[31],bias_add_238[29:15]}} :'d6) : '0;
logic [15:0] relu_239;
assign relu_239[15:0] = (bias_add_239[31]==0) ? ((bias_add_239<3'd6) ? {{bias_add_239[31],bias_add_239[29:15]}} :'d6) : '0;
logic [15:0] relu_240;
assign relu_240[15:0] = (bias_add_240[31]==0) ? ((bias_add_240<3'd6) ? {{bias_add_240[31],bias_add_240[29:15]}} :'d6) : '0;
logic [15:0] relu_241;
assign relu_241[15:0] = (bias_add_241[31]==0) ? ((bias_add_241<3'd6) ? {{bias_add_241[31],bias_add_241[29:15]}} :'d6) : '0;
logic [15:0] relu_242;
assign relu_242[15:0] = (bias_add_242[31]==0) ? ((bias_add_242<3'd6) ? {{bias_add_242[31],bias_add_242[29:15]}} :'d6) : '0;
logic [15:0] relu_243;
assign relu_243[15:0] = (bias_add_243[31]==0) ? ((bias_add_243<3'd6) ? {{bias_add_243[31],bias_add_243[29:15]}} :'d6) : '0;
logic [15:0] relu_244;
assign relu_244[15:0] = (bias_add_244[31]==0) ? ((bias_add_244<3'd6) ? {{bias_add_244[31],bias_add_244[29:15]}} :'d6) : '0;
logic [15:0] relu_245;
assign relu_245[15:0] = (bias_add_245[31]==0) ? ((bias_add_245<3'd6) ? {{bias_add_245[31],bias_add_245[29:15]}} :'d6) : '0;
logic [15:0] relu_246;
assign relu_246[15:0] = (bias_add_246[31]==0) ? ((bias_add_246<3'd6) ? {{bias_add_246[31],bias_add_246[29:15]}} :'d6) : '0;
logic [15:0] relu_247;
assign relu_247[15:0] = (bias_add_247[31]==0) ? ((bias_add_247<3'd6) ? {{bias_add_247[31],bias_add_247[29:15]}} :'d6) : '0;
logic [15:0] relu_248;
assign relu_248[15:0] = (bias_add_248[31]==0) ? ((bias_add_248<3'd6) ? {{bias_add_248[31],bias_add_248[29:15]}} :'d6) : '0;
logic [15:0] relu_249;
assign relu_249[15:0] = (bias_add_249[31]==0) ? ((bias_add_249<3'd6) ? {{bias_add_249[31],bias_add_249[29:15]}} :'d6) : '0;
logic [15:0] relu_250;
assign relu_250[15:0] = (bias_add_250[31]==0) ? ((bias_add_250<3'd6) ? {{bias_add_250[31],bias_add_250[29:15]}} :'d6) : '0;
logic [15:0] relu_251;
assign relu_251[15:0] = (bias_add_251[31]==0) ? ((bias_add_251<3'd6) ? {{bias_add_251[31],bias_add_251[29:15]}} :'d6) : '0;
logic [15:0] relu_252;
assign relu_252[15:0] = (bias_add_252[31]==0) ? ((bias_add_252<3'd6) ? {{bias_add_252[31],bias_add_252[29:15]}} :'d6) : '0;
logic [15:0] relu_253;
assign relu_253[15:0] = (bias_add_253[31]==0) ? ((bias_add_253<3'd6) ? {{bias_add_253[31],bias_add_253[29:15]}} :'d6) : '0;
logic [15:0] relu_254;
assign relu_254[15:0] = (bias_add_254[31]==0) ? ((bias_add_254<3'd6) ? {{bias_add_254[31],bias_add_254[29:15]}} :'d6) : '0;
logic [15:0] relu_255;
assign relu_255[15:0] = (bias_add_255[31]==0) ? ((bias_add_255<3'd6) ? {{bias_add_255[31],bias_add_255[29:15]}} :'d6) : '0;

assign output_act = {
	relu_255,
	relu_254,
	relu_253,
	relu_252,
	relu_251,
	relu_250,
	relu_249,
	relu_248,
	relu_247,
	relu_246,
	relu_245,
	relu_244,
	relu_243,
	relu_242,
	relu_241,
	relu_240,
	relu_239,
	relu_238,
	relu_237,
	relu_236,
	relu_235,
	relu_234,
	relu_233,
	relu_232,
	relu_231,
	relu_230,
	relu_229,
	relu_228,
	relu_227,
	relu_226,
	relu_225,
	relu_224,
	relu_223,
	relu_222,
	relu_221,
	relu_220,
	relu_219,
	relu_218,
	relu_217,
	relu_216,
	relu_215,
	relu_214,
	relu_213,
	relu_212,
	relu_211,
	relu_210,
	relu_209,
	relu_208,
	relu_207,
	relu_206,
	relu_205,
	relu_204,
	relu_203,
	relu_202,
	relu_201,
	relu_200,
	relu_199,
	relu_198,
	relu_197,
	relu_196,
	relu_195,
	relu_194,
	relu_193,
	relu_192,
	relu_191,
	relu_190,
	relu_189,
	relu_188,
	relu_187,
	relu_186,
	relu_185,
	relu_184,
	relu_183,
	relu_182,
	relu_181,
	relu_180,
	relu_179,
	relu_178,
	relu_177,
	relu_176,
	relu_175,
	relu_174,
	relu_173,
	relu_172,
	relu_171,
	relu_170,
	relu_169,
	relu_168,
	relu_167,
	relu_166,
	relu_165,
	relu_164,
	relu_163,
	relu_162,
	relu_161,
	relu_160,
	relu_159,
	relu_158,
	relu_157,
	relu_156,
	relu_155,
	relu_154,
	relu_153,
	relu_152,
	relu_151,
	relu_150,
	relu_149,
	relu_148,
	relu_147,
	relu_146,
	relu_145,
	relu_144,
	relu_143,
	relu_142,
	relu_141,
	relu_140,
	relu_139,
	relu_138,
	relu_137,
	relu_136,
	relu_135,
	relu_134,
	relu_133,
	relu_132,
	relu_131,
	relu_130,
	relu_129,
	relu_128,
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
