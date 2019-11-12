module conv14_dw (
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
logic [71:0] input_fmap_128;
assign input_fmap_128 = input_act_ff[9287:9216];
logic [71:0] input_fmap_129;
assign input_fmap_129 = input_act_ff[9359:9288];
logic [71:0] input_fmap_130;
assign input_fmap_130 = input_act_ff[9431:9360];
logic [71:0] input_fmap_131;
assign input_fmap_131 = input_act_ff[9503:9432];
logic [71:0] input_fmap_132;
assign input_fmap_132 = input_act_ff[9575:9504];
logic [71:0] input_fmap_133;
assign input_fmap_133 = input_act_ff[9647:9576];
logic [71:0] input_fmap_134;
assign input_fmap_134 = input_act_ff[9719:9648];
logic [71:0] input_fmap_135;
assign input_fmap_135 = input_act_ff[9791:9720];
logic [71:0] input_fmap_136;
assign input_fmap_136 = input_act_ff[9863:9792];
logic [71:0] input_fmap_137;
assign input_fmap_137 = input_act_ff[9935:9864];
logic [71:0] input_fmap_138;
assign input_fmap_138 = input_act_ff[10007:9936];
logic [71:0] input_fmap_139;
assign input_fmap_139 = input_act_ff[10079:10008];
logic [71:0] input_fmap_140;
assign input_fmap_140 = input_act_ff[10151:10080];
logic [71:0] input_fmap_141;
assign input_fmap_141 = input_act_ff[10223:10152];
logic [71:0] input_fmap_142;
assign input_fmap_142 = input_act_ff[10295:10224];
logic [71:0] input_fmap_143;
assign input_fmap_143 = input_act_ff[10367:10296];
logic [71:0] input_fmap_144;
assign input_fmap_144 = input_act_ff[10439:10368];
logic [71:0] input_fmap_145;
assign input_fmap_145 = input_act_ff[10511:10440];
logic [71:0] input_fmap_146;
assign input_fmap_146 = input_act_ff[10583:10512];
logic [71:0] input_fmap_147;
assign input_fmap_147 = input_act_ff[10655:10584];
logic [71:0] input_fmap_148;
assign input_fmap_148 = input_act_ff[10727:10656];
logic [71:0] input_fmap_149;
assign input_fmap_149 = input_act_ff[10799:10728];
logic [71:0] input_fmap_150;
assign input_fmap_150 = input_act_ff[10871:10800];
logic [71:0] input_fmap_151;
assign input_fmap_151 = input_act_ff[10943:10872];
logic [71:0] input_fmap_152;
assign input_fmap_152 = input_act_ff[11015:10944];
logic [71:0] input_fmap_153;
assign input_fmap_153 = input_act_ff[11087:11016];
logic [71:0] input_fmap_154;
assign input_fmap_154 = input_act_ff[11159:11088];
logic [71:0] input_fmap_155;
assign input_fmap_155 = input_act_ff[11231:11160];
logic [71:0] input_fmap_156;
assign input_fmap_156 = input_act_ff[11303:11232];
logic [71:0] input_fmap_157;
assign input_fmap_157 = input_act_ff[11375:11304];
logic [71:0] input_fmap_158;
assign input_fmap_158 = input_act_ff[11447:11376];
logic [71:0] input_fmap_159;
assign input_fmap_159 = input_act_ff[11519:11448];
logic [71:0] input_fmap_160;
assign input_fmap_160 = input_act_ff[11591:11520];
logic [71:0] input_fmap_161;
assign input_fmap_161 = input_act_ff[11663:11592];
logic [71:0] input_fmap_162;
assign input_fmap_162 = input_act_ff[11735:11664];
logic [71:0] input_fmap_163;
assign input_fmap_163 = input_act_ff[11807:11736];
logic [71:0] input_fmap_164;
assign input_fmap_164 = input_act_ff[11879:11808];
logic [71:0] input_fmap_165;
assign input_fmap_165 = input_act_ff[11951:11880];
logic [71:0] input_fmap_166;
assign input_fmap_166 = input_act_ff[12023:11952];
logic [71:0] input_fmap_167;
assign input_fmap_167 = input_act_ff[12095:12024];
logic [71:0] input_fmap_168;
assign input_fmap_168 = input_act_ff[12167:12096];
logic [71:0] input_fmap_169;
assign input_fmap_169 = input_act_ff[12239:12168];
logic [71:0] input_fmap_170;
assign input_fmap_170 = input_act_ff[12311:12240];
logic [71:0] input_fmap_171;
assign input_fmap_171 = input_act_ff[12383:12312];
logic [71:0] input_fmap_172;
assign input_fmap_172 = input_act_ff[12455:12384];
logic [71:0] input_fmap_173;
assign input_fmap_173 = input_act_ff[12527:12456];
logic [71:0] input_fmap_174;
assign input_fmap_174 = input_act_ff[12599:12528];
logic [71:0] input_fmap_175;
assign input_fmap_175 = input_act_ff[12671:12600];
logic [71:0] input_fmap_176;
assign input_fmap_176 = input_act_ff[12743:12672];
logic [71:0] input_fmap_177;
assign input_fmap_177 = input_act_ff[12815:12744];
logic [71:0] input_fmap_178;
assign input_fmap_178 = input_act_ff[12887:12816];
logic [71:0] input_fmap_179;
assign input_fmap_179 = input_act_ff[12959:12888];
logic [71:0] input_fmap_180;
assign input_fmap_180 = input_act_ff[13031:12960];
logic [71:0] input_fmap_181;
assign input_fmap_181 = input_act_ff[13103:13032];
logic [71:0] input_fmap_182;
assign input_fmap_182 = input_act_ff[13175:13104];
logic [71:0] input_fmap_183;
assign input_fmap_183 = input_act_ff[13247:13176];
logic [71:0] input_fmap_184;
assign input_fmap_184 = input_act_ff[13319:13248];
logic [71:0] input_fmap_185;
assign input_fmap_185 = input_act_ff[13391:13320];
logic [71:0] input_fmap_186;
assign input_fmap_186 = input_act_ff[13463:13392];
logic [71:0] input_fmap_187;
assign input_fmap_187 = input_act_ff[13535:13464];
logic [71:0] input_fmap_188;
assign input_fmap_188 = input_act_ff[13607:13536];
logic [71:0] input_fmap_189;
assign input_fmap_189 = input_act_ff[13679:13608];
logic [71:0] input_fmap_190;
assign input_fmap_190 = input_act_ff[13751:13680];
logic [71:0] input_fmap_191;
assign input_fmap_191 = input_act_ff[13823:13752];
logic [71:0] input_fmap_192;
assign input_fmap_192 = input_act_ff[13895:13824];
logic [71:0] input_fmap_193;
assign input_fmap_193 = input_act_ff[13967:13896];
logic [71:0] input_fmap_194;
assign input_fmap_194 = input_act_ff[14039:13968];
logic [71:0] input_fmap_195;
assign input_fmap_195 = input_act_ff[14111:14040];
logic [71:0] input_fmap_196;
assign input_fmap_196 = input_act_ff[14183:14112];
logic [71:0] input_fmap_197;
assign input_fmap_197 = input_act_ff[14255:14184];
logic [71:0] input_fmap_198;
assign input_fmap_198 = input_act_ff[14327:14256];
logic [71:0] input_fmap_199;
assign input_fmap_199 = input_act_ff[14399:14328];
logic [71:0] input_fmap_200;
assign input_fmap_200 = input_act_ff[14471:14400];
logic [71:0] input_fmap_201;
assign input_fmap_201 = input_act_ff[14543:14472];
logic [71:0] input_fmap_202;
assign input_fmap_202 = input_act_ff[14615:14544];
logic [71:0] input_fmap_203;
assign input_fmap_203 = input_act_ff[14687:14616];
logic [71:0] input_fmap_204;
assign input_fmap_204 = input_act_ff[14759:14688];
logic [71:0] input_fmap_205;
assign input_fmap_205 = input_act_ff[14831:14760];
logic [71:0] input_fmap_206;
assign input_fmap_206 = input_act_ff[14903:14832];
logic [71:0] input_fmap_207;
assign input_fmap_207 = input_act_ff[14975:14904];
logic [71:0] input_fmap_208;
assign input_fmap_208 = input_act_ff[15047:14976];
logic [71:0] input_fmap_209;
assign input_fmap_209 = input_act_ff[15119:15048];
logic [71:0] input_fmap_210;
assign input_fmap_210 = input_act_ff[15191:15120];
logic [71:0] input_fmap_211;
assign input_fmap_211 = input_act_ff[15263:15192];
logic [71:0] input_fmap_212;
assign input_fmap_212 = input_act_ff[15335:15264];
logic [71:0] input_fmap_213;
assign input_fmap_213 = input_act_ff[15407:15336];
logic [71:0] input_fmap_214;
assign input_fmap_214 = input_act_ff[15479:15408];
logic [71:0] input_fmap_215;
assign input_fmap_215 = input_act_ff[15551:15480];
logic [71:0] input_fmap_216;
assign input_fmap_216 = input_act_ff[15623:15552];
logic [71:0] input_fmap_217;
assign input_fmap_217 = input_act_ff[15695:15624];
logic [71:0] input_fmap_218;
assign input_fmap_218 = input_act_ff[15767:15696];
logic [71:0] input_fmap_219;
assign input_fmap_219 = input_act_ff[15839:15768];
logic [71:0] input_fmap_220;
assign input_fmap_220 = input_act_ff[15911:15840];
logic [71:0] input_fmap_221;
assign input_fmap_221 = input_act_ff[15983:15912];
logic [71:0] input_fmap_222;
assign input_fmap_222 = input_act_ff[16055:15984];
logic [71:0] input_fmap_223;
assign input_fmap_223 = input_act_ff[16127:16056];
logic [71:0] input_fmap_224;
assign input_fmap_224 = input_act_ff[16199:16128];
logic [71:0] input_fmap_225;
assign input_fmap_225 = input_act_ff[16271:16200];
logic [71:0] input_fmap_226;
assign input_fmap_226 = input_act_ff[16343:16272];
logic [71:0] input_fmap_227;
assign input_fmap_227 = input_act_ff[16415:16344];
logic [71:0] input_fmap_228;
assign input_fmap_228 = input_act_ff[16487:16416];
logic [71:0] input_fmap_229;
assign input_fmap_229 = input_act_ff[16559:16488];
logic [71:0] input_fmap_230;
assign input_fmap_230 = input_act_ff[16631:16560];
logic [71:0] input_fmap_231;
assign input_fmap_231 = input_act_ff[16703:16632];
logic [71:0] input_fmap_232;
assign input_fmap_232 = input_act_ff[16775:16704];
logic [71:0] input_fmap_233;
assign input_fmap_233 = input_act_ff[16847:16776];
logic [71:0] input_fmap_234;
assign input_fmap_234 = input_act_ff[16919:16848];
logic [71:0] input_fmap_235;
assign input_fmap_235 = input_act_ff[16991:16920];
logic [71:0] input_fmap_236;
assign input_fmap_236 = input_act_ff[17063:16992];
logic [71:0] input_fmap_237;
assign input_fmap_237 = input_act_ff[17135:17064];
logic [71:0] input_fmap_238;
assign input_fmap_238 = input_act_ff[17207:17136];
logic [71:0] input_fmap_239;
assign input_fmap_239 = input_act_ff[17279:17208];
logic [71:0] input_fmap_240;
assign input_fmap_240 = input_act_ff[17351:17280];
logic [71:0] input_fmap_241;
assign input_fmap_241 = input_act_ff[17423:17352];
logic [71:0] input_fmap_242;
assign input_fmap_242 = input_act_ff[17495:17424];
logic [71:0] input_fmap_243;
assign input_fmap_243 = input_act_ff[17567:17496];
logic [71:0] input_fmap_244;
assign input_fmap_244 = input_act_ff[17639:17568];
logic [71:0] input_fmap_245;
assign input_fmap_245 = input_act_ff[17711:17640];
logic [71:0] input_fmap_246;
assign input_fmap_246 = input_act_ff[17783:17712];
logic [71:0] input_fmap_247;
assign input_fmap_247 = input_act_ff[17855:17784];
logic [71:0] input_fmap_248;
assign input_fmap_248 = input_act_ff[17927:17856];
logic [71:0] input_fmap_249;
assign input_fmap_249 = input_act_ff[17999:17928];
logic [71:0] input_fmap_250;
assign input_fmap_250 = input_act_ff[18071:18000];
logic [71:0] input_fmap_251;
assign input_fmap_251 = input_act_ff[18143:18072];
logic [71:0] input_fmap_252;
assign input_fmap_252 = input_act_ff[18215:18144];
logic [71:0] input_fmap_253;
assign input_fmap_253 = input_act_ff[18287:18216];
logic [71:0] input_fmap_254;
assign input_fmap_254 = input_act_ff[18359:18288];
logic [71:0] input_fmap_255;
assign input_fmap_255 = input_act_ff[18431:18360];

logic signed [31:0] dw_conv_mac_0;
assign dw_conv_mac_0 = 
	 4'sd 7 * $signed(input_fmap_0[7:0]) +
	 4'sd 4 * $signed(input_fmap_0[15:8]) +
	 4'sd 4 * $signed(input_fmap_0[23:16]) +
	 2'sd 1 * $signed(input_fmap_0[31:24]) +
	 4'sd 7 * $signed(input_fmap_0[39:32]) +
	 3'sd 3 * $signed(input_fmap_0[47:40]) +
	 4'sd 6 * $signed(input_fmap_0[55:48]) +
	 3'sd 2 * $signed(input_fmap_0[63:56]) +
	 3'sd 3 * $signed(input_fmap_0[71:64]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 4'sd 5 * $signed(input_fmap_1[7:0]) +
	 4'sd 7 * $signed(input_fmap_1[15:8]) +
	 5'sd 8 * $signed(input_fmap_1[23:16]) +
	 3'sd 2 * $signed(input_fmap_1[31:24]) +
	 4'sd 4 * $signed(input_fmap_1[39:32]) +
	 4'sd 6 * $signed(input_fmap_1[47:40]) +
	 4'sd 5 * $signed(input_fmap_1[55:48]) +
	 2'sd 1 * $signed(input_fmap_1[63:56]) +
	 3'sd 2 * $signed(input_fmap_1[71:64]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 4'sd 4 * $signed(input_fmap_2[7:0]) +
	 4'sd 6 * $signed(input_fmap_2[15:8]) +
	 3'sd 2 * $signed(input_fmap_2[23:16]) +
	 5'sd 8 * $signed(input_fmap_2[31:24]) +
	 4'sd 4 * $signed(input_fmap_2[39:32]) +
	 4'sd 4 * $signed(input_fmap_2[47:40]) +
	 2'sd 1 * $signed(input_fmap_2[55:48]) +
	 4'sd 7 * $signed(input_fmap_2[63:56]) +
	 3'sd 3 * $signed(input_fmap_2[71:64]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 3'sd 2 * $signed(input_fmap_3[7:0]) +
	 4'sd 7 * $signed(input_fmap_3[15:8]) +
	 4'sd 7 * $signed(input_fmap_3[23:16]) +
	 4'sd 6 * $signed(input_fmap_3[31:24]) +
	 3'sd 3 * $signed(input_fmap_3[39:32]) +
	 4'sd 7 * $signed(input_fmap_3[55:48]) +
	 2'sd 1 * $signed(input_fmap_3[63:56]) +
	 2'sd 1 * $signed(input_fmap_3[71:64]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 4'sd 5 * $signed(input_fmap_4[15:8]) +
	 4'sd 6 * $signed(input_fmap_4[23:16]) +
	 3'sd 3 * $signed(input_fmap_4[31:24]) +
	 4'sd 5 * $signed(input_fmap_4[39:32]) +
	 3'sd 3 * $signed(input_fmap_4[47:40]) +
	 4'sd 5 * $signed(input_fmap_4[55:48]) +
	 2'sd 1 * $signed(input_fmap_4[63:56]) +
	 4'sd 4 * $signed(input_fmap_4[71:64]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 4'sd 5 * $signed(input_fmap_5[15:8]) +
	 4'sd 5 * $signed(input_fmap_5[23:16]) +
	 3'sd 2 * $signed(input_fmap_5[31:24]) +
	 3'sd 2 * $signed(input_fmap_5[39:32]) +
	 3'sd 3 * $signed(input_fmap_5[47:40]) +
	 2'sd 1 * $signed(input_fmap_5[55:48]) +
	 3'sd 2 * $signed(input_fmap_5[63:56]) +
	 4'sd 6 * $signed(input_fmap_5[71:64]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 2'sd 1 * $signed(input_fmap_6[7:0]) +
	 4'sd 4 * $signed(input_fmap_6[15:8]) +
	 4'sd 6 * $signed(input_fmap_6[23:16]) +
	 4'sd 5 * $signed(input_fmap_6[31:24]) +
	 3'sd 3 * $signed(input_fmap_6[39:32]) +
	 4'sd 6 * $signed(input_fmap_6[47:40]) +
	 3'sd 2 * $signed(input_fmap_6[55:48]) +
	 2'sd 1 * $signed(input_fmap_6[63:56]) +
	 2'sd 1 * $signed(input_fmap_6[71:64]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 4'sd 5 * $signed(input_fmap_7[7:0]) +
	 4'sd 7 * $signed(input_fmap_7[23:16]) +
	 4'sd 4 * $signed(input_fmap_7[31:24]) +
	 4'sd 7 * $signed(input_fmap_7[39:32]) +
	 3'sd 3 * $signed(input_fmap_7[47:40]) +
	 3'sd 3 * $signed(input_fmap_7[55:48]) +
	 4'sd 5 * $signed(input_fmap_7[63:56]) +
	 4'sd 7 * $signed(input_fmap_7[71:64]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 4'sd 4 * $signed(input_fmap_8[7:0]) +
	 4'sd 4 * $signed(input_fmap_8[15:8]) +
	 3'sd 3 * $signed(input_fmap_8[23:16]) +
	 4'sd 6 * $signed(input_fmap_8[31:24]) +
	 4'sd 6 * $signed(input_fmap_8[47:40]) +
	 4'sd 4 * $signed(input_fmap_8[55:48]) +
	 3'sd 2 * $signed(input_fmap_8[63:56]) +
	 3'sd 2 * $signed(input_fmap_8[71:64]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 3'sd 3 * $signed(input_fmap_9[7:0]) +
	 3'sd 2 * $signed(input_fmap_9[15:8]) +
	 4'sd 5 * $signed(input_fmap_9[23:16]) +
	 4'sd 4 * $signed(input_fmap_9[31:24]) +
	 2'sd 1 * $signed(input_fmap_9[39:32]) +
	 5'sd 8 * $signed(input_fmap_9[47:40]) +
	 3'sd 2 * $signed(input_fmap_9[55:48]) +
	 4'sd 5 * $signed(input_fmap_9[63:56]) +
	 4'sd 5 * $signed(input_fmap_9[71:64]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 4'sd 5 * $signed(input_fmap_10[7:0]) +
	 4'sd 7 * $signed(input_fmap_10[15:8]) +
	 4'sd 5 * $signed(input_fmap_10[23:16]) +
	 4'sd 7 * $signed(input_fmap_10[31:24]) +
	 4'sd 6 * $signed(input_fmap_10[39:32]) +
	 2'sd 1 * $signed(input_fmap_10[47:40]) +
	 4'sd 6 * $signed(input_fmap_10[55:48]) +
	 4'sd 6 * $signed(input_fmap_10[63:56]) +
	 2'sd 1 * $signed(input_fmap_10[71:64]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 3'sd 3 * $signed(input_fmap_11[7:0]) +
	 3'sd 2 * $signed(input_fmap_11[15:8]) +
	 4'sd 4 * $signed(input_fmap_11[23:16]) +
	 4'sd 7 * $signed(input_fmap_11[31:24]) +
	 2'sd 1 * $signed(input_fmap_11[39:32]) +
	 4'sd 4 * $signed(input_fmap_11[47:40]) +
	 2'sd 1 * $signed(input_fmap_11[55:48]) +
	 4'sd 6 * $signed(input_fmap_11[63:56]) +
	 3'sd 2 * $signed(input_fmap_11[71:64]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 2'sd 1 * $signed(input_fmap_12[7:0]) +
	 2'sd 1 * $signed(input_fmap_12[15:8]) +
	 4'sd 5 * $signed(input_fmap_12[23:16]) +
	 2'sd 1 * $signed(input_fmap_12[31:24]) +
	 4'sd 7 * $signed(input_fmap_12[39:32]) +
	 3'sd 3 * $signed(input_fmap_12[47:40]) +
	 4'sd 5 * $signed(input_fmap_12[55:48]) +
	 4'sd 7 * $signed(input_fmap_12[63:56]) +
	 4'sd 7 * $signed(input_fmap_12[71:64]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 4'sd 5 * $signed(input_fmap_13[7:0]) +
	 5'sd 8 * $signed(input_fmap_13[23:16]) +
	 4'sd 4 * $signed(input_fmap_13[31:24]) +
	 3'sd 2 * $signed(input_fmap_13[39:32]) +
	 2'sd 1 * $signed(input_fmap_13[47:40]) +
	 4'sd 7 * $signed(input_fmap_13[55:48]) +
	 2'sd 1 * $signed(input_fmap_13[63:56]) +
	 4'sd 6 * $signed(input_fmap_13[71:64]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 4'sd 5 * $signed(input_fmap_14[7:0]) +
	 3'sd 3 * $signed(input_fmap_14[15:8]) +
	 4'sd 4 * $signed(input_fmap_14[23:16]) +
	 3'sd 3 * $signed(input_fmap_14[39:32]) +
	 2'sd 1 * $signed(input_fmap_14[47:40]) +
	 5'sd 8 * $signed(input_fmap_14[55:48]) +
	 3'sd 2 * $signed(input_fmap_14[63:56]) +
	 4'sd 7 * $signed(input_fmap_14[71:64]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 4'sd 4 * $signed(input_fmap_15[7:0]) +
	 3'sd 2 * $signed(input_fmap_15[15:8]) +
	 4'sd 5 * $signed(input_fmap_15[23:16]) +
	 4'sd 6 * $signed(input_fmap_15[31:24]) +
	 3'sd 2 * $signed(input_fmap_15[39:32]) +
	 2'sd 1 * $signed(input_fmap_15[47:40]) +
	 3'sd 2 * $signed(input_fmap_15[55:48]) +
	 4'sd 4 * $signed(input_fmap_15[63:56]) +
	 3'sd 3 * $signed(input_fmap_15[71:64]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 4'sd 7 * $signed(input_fmap_16[7:0]) +
	 4'sd 5 * $signed(input_fmap_16[15:8]) +
	 2'sd 1 * $signed(input_fmap_16[23:16]) +
	 4'sd 4 * $signed(input_fmap_16[31:24]) +
	 4'sd 5 * $signed(input_fmap_16[39:32]) +
	 5'sd 8 * $signed(input_fmap_16[47:40]) +
	 3'sd 3 * $signed(input_fmap_16[55:48]) +
	 3'sd 3 * $signed(input_fmap_16[63:56]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 4'sd 7 * $signed(input_fmap_17[7:0]) +
	 2'sd 1 * $signed(input_fmap_17[15:8]) +
	 4'sd 5 * $signed(input_fmap_17[23:16]) +
	 5'sd 8 * $signed(input_fmap_17[31:24]) +
	 5'sd 8 * $signed(input_fmap_17[39:32]) +
	 2'sd 1 * $signed(input_fmap_17[47:40]) +
	 4'sd 4 * $signed(input_fmap_17[55:48]) +
	 4'sd 4 * $signed(input_fmap_17[63:56]) +
	 4'sd 4 * $signed(input_fmap_17[71:64]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 5'sd 8 * $signed(input_fmap_18[7:0]) +
	 2'sd 1 * $signed(input_fmap_18[15:8]) +
	 4'sd 6 * $signed(input_fmap_18[23:16]) +
	 3'sd 2 * $signed(input_fmap_18[31:24]) +
	 3'sd 3 * $signed(input_fmap_18[39:32]) +
	 4'sd 6 * $signed(input_fmap_18[47:40]) +
	 3'sd 2 * $signed(input_fmap_18[55:48]) +
	 4'sd 4 * $signed(input_fmap_18[63:56]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 4'sd 5 * $signed(input_fmap_19[7:0]) +
	 4'sd 7 * $signed(input_fmap_19[15:8]) +
	 4'sd 7 * $signed(input_fmap_19[23:16]) +
	 4'sd 6 * $signed(input_fmap_19[31:24]) +
	 5'sd 8 * $signed(input_fmap_19[39:32]) +
	 3'sd 2 * $signed(input_fmap_19[47:40]) +
	 4'sd 7 * $signed(input_fmap_19[55:48]) +
	 4'sd 7 * $signed(input_fmap_19[63:56]) +
	 3'sd 2 * $signed(input_fmap_19[71:64]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 4'sd 7 * $signed(input_fmap_20[15:8]) +
	 2'sd 1 * $signed(input_fmap_20[23:16]) +
	 4'sd 7 * $signed(input_fmap_20[31:24]) +
	 4'sd 6 * $signed(input_fmap_20[39:32]) +
	 5'sd 8 * $signed(input_fmap_20[47:40]) +
	 2'sd 1 * $signed(input_fmap_20[55:48]) +
	 4'sd 6 * $signed(input_fmap_20[63:56]) +
	 2'sd 1 * $signed(input_fmap_20[71:64]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 2'sd 1 * $signed(input_fmap_21[15:8]) +
	 4'sd 7 * $signed(input_fmap_21[31:24]) +
	 5'sd 8 * $signed(input_fmap_21[39:32]) +
	 2'sd 1 * $signed(input_fmap_21[47:40]) +
	 3'sd 3 * $signed(input_fmap_21[63:56]) +
	 3'sd 2 * $signed(input_fmap_21[71:64]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 4'sd 4 * $signed(input_fmap_22[7:0]) +
	 4'sd 4 * $signed(input_fmap_22[15:8]) +
	 4'sd 5 * $signed(input_fmap_22[23:16]) +
	 4'sd 6 * $signed(input_fmap_22[31:24]) +
	 4'sd 4 * $signed(input_fmap_22[39:32]) +
	 4'sd 6 * $signed(input_fmap_22[47:40]) +
	 4'sd 7 * $signed(input_fmap_22[55:48]) +
	 3'sd 3 * $signed(input_fmap_22[63:56]) +
	 4'sd 6 * $signed(input_fmap_22[71:64]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 4'sd 7 * $signed(input_fmap_23[7:0]) +
	 4'sd 5 * $signed(input_fmap_23[15:8]) +
	 3'sd 3 * $signed(input_fmap_23[23:16]) +
	 4'sd 5 * $signed(input_fmap_23[31:24]) +
	 4'sd 7 * $signed(input_fmap_23[39:32]) +
	 4'sd 6 * $signed(input_fmap_23[47:40]) +
	 3'sd 2 * $signed(input_fmap_23[55:48]) +
	 4'sd 5 * $signed(input_fmap_23[63:56]) +
	 3'sd 3 * $signed(input_fmap_23[71:64]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 4'sd 6 * $signed(input_fmap_24[7:0]) +
	 4'sd 6 * $signed(input_fmap_24[23:16]) +
	 4'sd 6 * $signed(input_fmap_24[31:24]) +
	 2'sd 1 * $signed(input_fmap_24[39:32]) +
	 4'sd 4 * $signed(input_fmap_24[47:40]) +
	 4'sd 5 * $signed(input_fmap_24[55:48]) +
	 4'sd 7 * $signed(input_fmap_24[63:56]) +
	 4'sd 4 * $signed(input_fmap_24[71:64]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 4'sd 4 * $signed(input_fmap_25[7:0]) +
	 3'sd 2 * $signed(input_fmap_25[15:8]) +
	 2'sd 1 * $signed(input_fmap_25[23:16]) +
	 3'sd 2 * $signed(input_fmap_25[31:24]) +
	 3'sd 3 * $signed(input_fmap_25[39:32]) +
	 2'sd 1 * $signed(input_fmap_25[47:40]) +
	 3'sd 2 * $signed(input_fmap_25[55:48]) +
	 2'sd 1 * $signed(input_fmap_25[63:56]) +
	 4'sd 5 * $signed(input_fmap_25[71:64]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 4'sd 5 * $signed(input_fmap_26[7:0]) +
	 4'sd 5 * $signed(input_fmap_26[15:8]) +
	 4'sd 7 * $signed(input_fmap_26[23:16]) +
	 5'sd 8 * $signed(input_fmap_26[31:24]) +
	 4'sd 7 * $signed(input_fmap_26[39:32]) +
	 4'sd 4 * $signed(input_fmap_26[47:40]) +
	 2'sd 1 * $signed(input_fmap_26[55:48]) +
	 4'sd 7 * $signed(input_fmap_26[63:56]) +
	 4'sd 7 * $signed(input_fmap_26[71:64]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 4'sd 6 * $signed(input_fmap_27[7:0]) +
	 2'sd 1 * $signed(input_fmap_27[15:8]) +
	 4'sd 5 * $signed(input_fmap_27[23:16]) +
	 4'sd 4 * $signed(input_fmap_27[31:24]) +
	 3'sd 3 * $signed(input_fmap_27[39:32]) +
	 4'sd 6 * $signed(input_fmap_27[47:40]) +
	 4'sd 4 * $signed(input_fmap_27[55:48]) +
	 3'sd 2 * $signed(input_fmap_27[63:56]) +
	 3'sd 2 * $signed(input_fmap_27[71:64]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 4'sd 7 * $signed(input_fmap_28[7:0]) +
	 4'sd 7 * $signed(input_fmap_28[15:8]) +
	 3'sd 2 * $signed(input_fmap_28[23:16]) +
	 3'sd 2 * $signed(input_fmap_28[31:24]) +
	 3'sd 3 * $signed(input_fmap_28[39:32]) +
	 4'sd 4 * $signed(input_fmap_28[47:40]) +
	 3'sd 2 * $signed(input_fmap_28[55:48]) +
	 4'sd 4 * $signed(input_fmap_28[63:56]) +
	 2'sd 1 * $signed(input_fmap_28[71:64]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 3'sd 2 * $signed(input_fmap_29[7:0]) +
	 5'sd 8 * $signed(input_fmap_29[15:8]) +
	 4'sd 4 * $signed(input_fmap_29[23:16]) +
	 3'sd 2 * $signed(input_fmap_29[31:24]) +
	 4'sd 7 * $signed(input_fmap_29[39:32]) +
	 4'sd 5 * $signed(input_fmap_29[47:40]) +
	 4'sd 4 * $signed(input_fmap_29[55:48]) +
	 3'sd 3 * $signed(input_fmap_29[63:56]) +
	 4'sd 5 * $signed(input_fmap_29[71:64]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 4'sd 5 * $signed(input_fmap_30[7:0]) +
	 4'sd 4 * $signed(input_fmap_30[15:8]) +
	 4'sd 4 * $signed(input_fmap_30[23:16]) +
	 2'sd 1 * $signed(input_fmap_30[31:24]) +
	 4'sd 6 * $signed(input_fmap_30[39:32]) +
	 5'sd 8 * $signed(input_fmap_30[47:40]) +
	 3'sd 2 * $signed(input_fmap_30[55:48]) +
	 4'sd 5 * $signed(input_fmap_30[71:64]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 3'sd 3 * $signed(input_fmap_31[7:0]) +
	 4'sd 6 * $signed(input_fmap_31[15:8]) +
	 4'sd 5 * $signed(input_fmap_31[23:16]) +
	 4'sd 7 * $signed(input_fmap_31[31:24]) +
	 4'sd 4 * $signed(input_fmap_31[39:32]) +
	 4'sd 5 * $signed(input_fmap_31[47:40]) +
	 3'sd 2 * $signed(input_fmap_31[55:48]) +
	 3'sd 3 * $signed(input_fmap_31[63:56]) +
	 4'sd 4 * $signed(input_fmap_31[71:64]);

logic signed [31:0] dw_conv_mac_32;
assign dw_conv_mac_32 = 
	 4'sd 7 * $signed(input_fmap_32[7:0]) +
	 4'sd 6 * $signed(input_fmap_32[15:8]) +
	 3'sd 3 * $signed(input_fmap_32[23:16]) +
	 4'sd 4 * $signed(input_fmap_32[31:24]) +
	 4'sd 7 * $signed(input_fmap_32[39:32]) +
	 4'sd 5 * $signed(input_fmap_32[55:48]) +
	 4'sd 6 * $signed(input_fmap_32[63:56]) +
	 4'sd 4 * $signed(input_fmap_32[71:64]);

logic signed [31:0] dw_conv_mac_33;
assign dw_conv_mac_33 = 
	 3'sd 3 * $signed(input_fmap_33[7:0]) +
	 2'sd 1 * $signed(input_fmap_33[15:8]) +
	 4'sd 5 * $signed(input_fmap_33[23:16]) +
	 4'sd 6 * $signed(input_fmap_33[31:24]) +
	 4'sd 6 * $signed(input_fmap_33[39:32]) +
	 4'sd 5 * $signed(input_fmap_33[47:40]) +
	 4'sd 5 * $signed(input_fmap_33[55:48]) +
	 4'sd 6 * $signed(input_fmap_33[63:56]);

logic signed [31:0] dw_conv_mac_34;
assign dw_conv_mac_34 = 
	 4'sd 6 * $signed(input_fmap_34[7:0]) +
	 4'sd 4 * $signed(input_fmap_34[15:8]) +
	 3'sd 3 * $signed(input_fmap_34[23:16]) +
	 3'sd 2 * $signed(input_fmap_34[31:24]) +
	 3'sd 2 * $signed(input_fmap_34[39:32]) +
	 5'sd 8 * $signed(input_fmap_34[47:40]) +
	 3'sd 3 * $signed(input_fmap_34[55:48]) +
	 3'sd 2 * $signed(input_fmap_34[63:56]) +
	 5'sd 8 * $signed(input_fmap_34[71:64]);

logic signed [31:0] dw_conv_mac_35;
assign dw_conv_mac_35 = 
	 4'sd 6 * $signed(input_fmap_35[7:0]) +
	 3'sd 2 * $signed(input_fmap_35[15:8]) +
	 2'sd 1 * $signed(input_fmap_35[23:16]) +
	 4'sd 6 * $signed(input_fmap_35[31:24]) +
	 3'sd 3 * $signed(input_fmap_35[39:32]) +
	 2'sd 1 * $signed(input_fmap_35[47:40]) +
	 4'sd 5 * $signed(input_fmap_35[55:48]) +
	 4'sd 6 * $signed(input_fmap_35[63:56]) +
	 4'sd 5 * $signed(input_fmap_35[71:64]);

logic signed [31:0] dw_conv_mac_36;
assign dw_conv_mac_36 = 
	 4'sd 4 * $signed(input_fmap_36[7:0]) +
	 4'sd 6 * $signed(input_fmap_36[15:8]) +
	 4'sd 6 * $signed(input_fmap_36[23:16]) +
	 4'sd 5 * $signed(input_fmap_36[31:24]) +
	 4'sd 4 * $signed(input_fmap_36[39:32]) +
	 4'sd 7 * $signed(input_fmap_36[55:48]) +
	 4'sd 5 * $signed(input_fmap_36[63:56]) +
	 2'sd 1 * $signed(input_fmap_36[71:64]);

logic signed [31:0] dw_conv_mac_37;
assign dw_conv_mac_37 = 
	 3'sd 2 * $signed(input_fmap_37[7:0]) +
	 2'sd 1 * $signed(input_fmap_37[23:16]) +
	 2'sd 1 * $signed(input_fmap_37[39:32]) +
	 4'sd 7 * $signed(input_fmap_37[47:40]) +
	 4'sd 5 * $signed(input_fmap_37[55:48]) +
	 4'sd 7 * $signed(input_fmap_37[63:56]) +
	 3'sd 3 * $signed(input_fmap_37[71:64]);

logic signed [31:0] dw_conv_mac_38;
assign dw_conv_mac_38 = 
	 2'sd 1 * $signed(input_fmap_38[7:0]) +
	 4'sd 7 * $signed(input_fmap_38[15:8]) +
	 4'sd 4 * $signed(input_fmap_38[23:16]) +
	 5'sd 8 * $signed(input_fmap_38[31:24]) +
	 2'sd 1 * $signed(input_fmap_38[39:32]) +
	 3'sd 2 * $signed(input_fmap_38[47:40]) +
	 4'sd 4 * $signed(input_fmap_38[55:48]) +
	 4'sd 6 * $signed(input_fmap_38[63:56]) +
	 5'sd 8 * $signed(input_fmap_38[71:64]);

logic signed [31:0] dw_conv_mac_39;
assign dw_conv_mac_39 = 
	 2'sd 1 * $signed(input_fmap_39[7:0]) +
	 3'sd 3 * $signed(input_fmap_39[15:8]) +
	 4'sd 4 * $signed(input_fmap_39[23:16]) +
	 4'sd 7 * $signed(input_fmap_39[31:24]) +
	 4'sd 6 * $signed(input_fmap_39[39:32]) +
	 4'sd 4 * $signed(input_fmap_39[47:40]) +
	 3'sd 2 * $signed(input_fmap_39[55:48]) +
	 3'sd 3 * $signed(input_fmap_39[63:56]) +
	 4'sd 6 * $signed(input_fmap_39[71:64]);

logic signed [31:0] dw_conv_mac_40;
assign dw_conv_mac_40 = 
	 3'sd 2 * $signed(input_fmap_40[7:0]) +
	 5'sd 8 * $signed(input_fmap_40[15:8]) +
	 4'sd 6 * $signed(input_fmap_40[23:16]) +
	 4'sd 7 * $signed(input_fmap_40[31:24]) +
	 4'sd 4 * $signed(input_fmap_40[39:32]) +
	 3'sd 2 * $signed(input_fmap_40[47:40]) +
	 4'sd 4 * $signed(input_fmap_40[55:48]) +
	 4'sd 6 * $signed(input_fmap_40[63:56]) +
	 3'sd 2 * $signed(input_fmap_40[71:64]);

logic signed [31:0] dw_conv_mac_41;
assign dw_conv_mac_41 = 
	 3'sd 2 * $signed(input_fmap_41[7:0]) +
	 4'sd 5 * $signed(input_fmap_41[15:8]) +
	 4'sd 6 * $signed(input_fmap_41[23:16]) +
	 3'sd 3 * $signed(input_fmap_41[31:24]) +
	 4'sd 5 * $signed(input_fmap_41[39:32]) +
	 4'sd 5 * $signed(input_fmap_41[47:40]) +
	 3'sd 3 * $signed(input_fmap_41[55:48]) +
	 4'sd 6 * $signed(input_fmap_41[63:56]) +
	 4'sd 5 * $signed(input_fmap_41[71:64]);

logic signed [31:0] dw_conv_mac_42;
assign dw_conv_mac_42 = 
	 3'sd 2 * $signed(input_fmap_42[23:16]) +
	 4'sd 4 * $signed(input_fmap_42[31:24]) +
	 2'sd 1 * $signed(input_fmap_42[39:32]) +
	 2'sd 1 * $signed(input_fmap_42[47:40]) +
	 3'sd 3 * $signed(input_fmap_42[55:48]) +
	 4'sd 7 * $signed(input_fmap_42[63:56]) +
	 2'sd 1 * $signed(input_fmap_42[71:64]);

logic signed [31:0] dw_conv_mac_43;
assign dw_conv_mac_43 = 
	 2'sd 1 * $signed(input_fmap_43[7:0]) +
	 3'sd 3 * $signed(input_fmap_43[15:8]) +
	 4'sd 5 * $signed(input_fmap_43[23:16]) +
	 4'sd 5 * $signed(input_fmap_43[31:24]) +
	 4'sd 6 * $signed(input_fmap_43[39:32]) +
	 4'sd 6 * $signed(input_fmap_43[47:40]) +
	 4'sd 7 * $signed(input_fmap_43[55:48]) +
	 5'sd 8 * $signed(input_fmap_43[63:56]) +
	 4'sd 7 * $signed(input_fmap_43[71:64]);

logic signed [31:0] dw_conv_mac_44;
assign dw_conv_mac_44 = 
	 4'sd 4 * $signed(input_fmap_44[7:0]) +
	 2'sd 1 * $signed(input_fmap_44[15:8]) +
	 3'sd 3 * $signed(input_fmap_44[23:16]) +
	 3'sd 3 * $signed(input_fmap_44[31:24]) +
	 4'sd 6 * $signed(input_fmap_44[39:32]) +
	 2'sd 1 * $signed(input_fmap_44[47:40]) +
	 3'sd 2 * $signed(input_fmap_44[55:48]) +
	 4'sd 6 * $signed(input_fmap_44[63:56]) +
	 4'sd 5 * $signed(input_fmap_44[71:64]);

logic signed [31:0] dw_conv_mac_45;
assign dw_conv_mac_45 = 
	 4'sd 5 * $signed(input_fmap_45[7:0]) +
	 3'sd 3 * $signed(input_fmap_45[15:8]) +
	 4'sd 6 * $signed(input_fmap_45[23:16]) +
	 3'sd 3 * $signed(input_fmap_45[31:24]) +
	 5'sd 8 * $signed(input_fmap_45[39:32]) +
	 5'sd 8 * $signed(input_fmap_45[47:40]) +
	 4'sd 5 * $signed(input_fmap_45[55:48]) +
	 5'sd 8 * $signed(input_fmap_45[63:56]) +
	 3'sd 2 * $signed(input_fmap_45[71:64]);

logic signed [31:0] dw_conv_mac_46;
assign dw_conv_mac_46 = 
	 4'sd 5 * $signed(input_fmap_46[7:0]) +
	 3'sd 3 * $signed(input_fmap_46[15:8]) +
	 2'sd 1 * $signed(input_fmap_46[23:16]) +
	 5'sd 8 * $signed(input_fmap_46[31:24]) +
	 4'sd 4 * $signed(input_fmap_46[39:32]) +
	 3'sd 3 * $signed(input_fmap_46[47:40]) +
	 3'sd 3 * $signed(input_fmap_46[55:48]) +
	 3'sd 2 * $signed(input_fmap_46[63:56]) +
	 2'sd 1 * $signed(input_fmap_46[71:64]);

logic signed [31:0] dw_conv_mac_47;
assign dw_conv_mac_47 = 
	 3'sd 3 * $signed(input_fmap_47[7:0]) +
	 2'sd 1 * $signed(input_fmap_47[15:8]) +
	 4'sd 6 * $signed(input_fmap_47[23:16]) +
	 4'sd 5 * $signed(input_fmap_47[31:24]) +
	 4'sd 7 * $signed(input_fmap_47[39:32]) +
	 2'sd 1 * $signed(input_fmap_47[55:48]) +
	 2'sd 1 * $signed(input_fmap_47[63:56]) +
	 4'sd 6 * $signed(input_fmap_47[71:64]);

logic signed [31:0] dw_conv_mac_48;
assign dw_conv_mac_48 = 
	 2'sd 1 * $signed(input_fmap_48[7:0]) +
	 3'sd 2 * $signed(input_fmap_48[15:8]) +
	 2'sd 1 * $signed(input_fmap_48[23:16]) +
	 4'sd 5 * $signed(input_fmap_48[31:24]) +
	 4'sd 7 * $signed(input_fmap_48[39:32]) +
	 3'sd 3 * $signed(input_fmap_48[47:40]) +
	 4'sd 5 * $signed(input_fmap_48[55:48]) +
	 4'sd 4 * $signed(input_fmap_48[63:56]) +
	 2'sd 1 * $signed(input_fmap_48[71:64]);

logic signed [31:0] dw_conv_mac_49;
assign dw_conv_mac_49 = 
	 2'sd 1 * $signed(input_fmap_49[7:0]) +
	 4'sd 7 * $signed(input_fmap_49[15:8]) +
	 4'sd 5 * $signed(input_fmap_49[23:16]) +
	 4'sd 5 * $signed(input_fmap_49[31:24]) +
	 3'sd 2 * $signed(input_fmap_49[39:32]) +
	 4'sd 6 * $signed(input_fmap_49[47:40]) +
	 3'sd 3 * $signed(input_fmap_49[55:48]) +
	 4'sd 7 * $signed(input_fmap_49[63:56]) +
	 4'sd 6 * $signed(input_fmap_49[71:64]);

logic signed [31:0] dw_conv_mac_50;
assign dw_conv_mac_50 = 
	 4'sd 7 * $signed(input_fmap_50[7:0]) +
	 3'sd 3 * $signed(input_fmap_50[15:8]) +
	 4'sd 4 * $signed(input_fmap_50[23:16]) +
	 4'sd 6 * $signed(input_fmap_50[31:24]) +
	 3'sd 3 * $signed(input_fmap_50[39:32]) +
	 4'sd 6 * $signed(input_fmap_50[47:40]) +
	 4'sd 6 * $signed(input_fmap_50[63:56]) +
	 4'sd 4 * $signed(input_fmap_50[71:64]);

logic signed [31:0] dw_conv_mac_51;
assign dw_conv_mac_51 = 
	 4'sd 5 * $signed(input_fmap_51[7:0]) +
	 2'sd 1 * $signed(input_fmap_51[15:8]) +
	 4'sd 6 * $signed(input_fmap_51[23:16]) +
	 2'sd 1 * $signed(input_fmap_51[31:24]) +
	 2'sd 1 * $signed(input_fmap_51[39:32]) +
	 2'sd 1 * $signed(input_fmap_51[47:40]) +
	 3'sd 3 * $signed(input_fmap_51[55:48]) +
	 4'sd 7 * $signed(input_fmap_51[63:56]) +
	 3'sd 2 * $signed(input_fmap_51[71:64]);

logic signed [31:0] dw_conv_mac_52;
assign dw_conv_mac_52 = 
	 4'sd 5 * $signed(input_fmap_52[7:0]) +
	 4'sd 5 * $signed(input_fmap_52[23:16]) +
	 4'sd 7 * $signed(input_fmap_52[31:24]) +
	 4'sd 6 * $signed(input_fmap_52[39:32]) +
	 4'sd 7 * $signed(input_fmap_52[47:40]) +
	 4'sd 5 * $signed(input_fmap_52[55:48]) +
	 5'sd 8 * $signed(input_fmap_52[63:56]) +
	 3'sd 2 * $signed(input_fmap_52[71:64]);

logic signed [31:0] dw_conv_mac_53;
assign dw_conv_mac_53 = 
	 2'sd 1 * $signed(input_fmap_53[15:8]) +
	 4'sd 4 * $signed(input_fmap_53[23:16]) +
	 4'sd 5 * $signed(input_fmap_53[31:24]) +
	 3'sd 3 * $signed(input_fmap_53[39:32]) +
	 4'sd 4 * $signed(input_fmap_53[47:40]) +
	 4'sd 4 * $signed(input_fmap_53[55:48]) +
	 2'sd 1 * $signed(input_fmap_53[63:56]) +
	 2'sd 1 * $signed(input_fmap_53[71:64]);

logic signed [31:0] dw_conv_mac_54;
assign dw_conv_mac_54 = 
	 4'sd 4 * $signed(input_fmap_54[7:0]) +
	 3'sd 2 * $signed(input_fmap_54[23:16]) +
	 2'sd 1 * $signed(input_fmap_54[31:24]) +
	 4'sd 4 * $signed(input_fmap_54[39:32]) +
	 4'sd 5 * $signed(input_fmap_54[47:40]) +
	 2'sd 1 * $signed(input_fmap_54[55:48]) +
	 4'sd 5 * $signed(input_fmap_54[63:56]) +
	 3'sd 3 * $signed(input_fmap_54[71:64]);

logic signed [31:0] dw_conv_mac_55;
assign dw_conv_mac_55 = 
	 4'sd 6 * $signed(input_fmap_55[7:0]) +
	 3'sd 3 * $signed(input_fmap_55[15:8]) +
	 2'sd 1 * $signed(input_fmap_55[23:16]) +
	 2'sd 1 * $signed(input_fmap_55[31:24]) +
	 2'sd 1 * $signed(input_fmap_55[39:32]) +
	 3'sd 3 * $signed(input_fmap_55[47:40]) +
	 4'sd 5 * $signed(input_fmap_55[55:48]) +
	 3'sd 2 * $signed(input_fmap_55[63:56]) +
	 5'sd 8 * $signed(input_fmap_55[71:64]);

logic signed [31:0] dw_conv_mac_56;
assign dw_conv_mac_56 = 
	 2'sd 1 * $signed(input_fmap_56[7:0]) +
	 3'sd 3 * $signed(input_fmap_56[15:8]) +
	 4'sd 4 * $signed(input_fmap_56[23:16]) +
	 3'sd 2 * $signed(input_fmap_56[31:24]) +
	 3'sd 3 * $signed(input_fmap_56[39:32]) +
	 4'sd 6 * $signed(input_fmap_56[47:40]) +
	 4'sd 7 * $signed(input_fmap_56[55:48]) +
	 4'sd 6 * $signed(input_fmap_56[63:56]) +
	 5'sd 8 * $signed(input_fmap_56[71:64]);

logic signed [31:0] dw_conv_mac_57;
assign dw_conv_mac_57 = 
	 4'sd 7 * $signed(input_fmap_57[7:0]) +
	 2'sd 1 * $signed(input_fmap_57[15:8]) +
	 4'sd 7 * $signed(input_fmap_57[23:16]) +
	 4'sd 7 * $signed(input_fmap_57[31:24]) +
	 5'sd 8 * $signed(input_fmap_57[39:32]) +
	 3'sd 3 * $signed(input_fmap_57[47:40]) +
	 4'sd 5 * $signed(input_fmap_57[55:48]) +
	 3'sd 3 * $signed(input_fmap_57[63:56]) +
	 3'sd 2 * $signed(input_fmap_57[71:64]);

logic signed [31:0] dw_conv_mac_58;
assign dw_conv_mac_58 = 
	 4'sd 7 * $signed(input_fmap_58[7:0]) +
	 3'sd 2 * $signed(input_fmap_58[15:8]) +
	 3'sd 2 * $signed(input_fmap_58[23:16]) +
	 4'sd 5 * $signed(input_fmap_58[31:24]) +
	 3'sd 2 * $signed(input_fmap_58[39:32]) +
	 4'sd 6 * $signed(input_fmap_58[47:40]) +
	 3'sd 3 * $signed(input_fmap_58[55:48]) +
	 2'sd 1 * $signed(input_fmap_58[63:56]) +
	 4'sd 4 * $signed(input_fmap_58[71:64]);

logic signed [31:0] dw_conv_mac_59;
assign dw_conv_mac_59 = 
	 4'sd 7 * $signed(input_fmap_59[7:0]) +
	 4'sd 7 * $signed(input_fmap_59[15:8]) +
	 4'sd 7 * $signed(input_fmap_59[23:16]) +
	 4'sd 7 * $signed(input_fmap_59[31:24]) +
	 2'sd 1 * $signed(input_fmap_59[39:32]) +
	 2'sd 1 * $signed(input_fmap_59[47:40]) +
	 4'sd 6 * $signed(input_fmap_59[55:48]) +
	 4'sd 6 * $signed(input_fmap_59[63:56]) +
	 4'sd 5 * $signed(input_fmap_59[71:64]);

logic signed [31:0] dw_conv_mac_60;
assign dw_conv_mac_60 = 
	 4'sd 7 * $signed(input_fmap_60[7:0]) +
	 4'sd 7 * $signed(input_fmap_60[15:8]) +
	 3'sd 2 * $signed(input_fmap_60[23:16]) +
	 2'sd 1 * $signed(input_fmap_60[31:24]) +
	 4'sd 7 * $signed(input_fmap_60[39:32]) +
	 3'sd 2 * $signed(input_fmap_60[47:40]) +
	 3'sd 2 * $signed(input_fmap_60[55:48]) +
	 3'sd 2 * $signed(input_fmap_60[63:56]) +
	 4'sd 7 * $signed(input_fmap_60[71:64]);

logic signed [31:0] dw_conv_mac_61;
assign dw_conv_mac_61 = 
	 3'sd 3 * $signed(input_fmap_61[7:0]) +
	 4'sd 4 * $signed(input_fmap_61[15:8]) +
	 4'sd 4 * $signed(input_fmap_61[23:16]) +
	 4'sd 5 * $signed(input_fmap_61[31:24]) +
	 3'sd 3 * $signed(input_fmap_61[39:32]) +
	 4'sd 7 * $signed(input_fmap_61[47:40]) +
	 4'sd 5 * $signed(input_fmap_61[55:48]) +
	 4'sd 7 * $signed(input_fmap_61[71:64]);

logic signed [31:0] dw_conv_mac_62;
assign dw_conv_mac_62 = 
	 4'sd 6 * $signed(input_fmap_62[7:0]) +
	 4'sd 5 * $signed(input_fmap_62[15:8]) +
	 4'sd 5 * $signed(input_fmap_62[23:16]) +
	 2'sd 1 * $signed(input_fmap_62[31:24]) +
	 4'sd 6 * $signed(input_fmap_62[39:32]) +
	 4'sd 5 * $signed(input_fmap_62[47:40]) +
	 4'sd 4 * $signed(input_fmap_62[55:48]) +
	 3'sd 2 * $signed(input_fmap_62[63:56]) +
	 4'sd 4 * $signed(input_fmap_62[71:64]);

logic signed [31:0] dw_conv_mac_63;
assign dw_conv_mac_63 = 
	 4'sd 4 * $signed(input_fmap_63[7:0]) +
	 4'sd 6 * $signed(input_fmap_63[15:8]) +
	 4'sd 6 * $signed(input_fmap_63[23:16]) +
	 4'sd 4 * $signed(input_fmap_63[39:32]) +
	 3'sd 2 * $signed(input_fmap_63[47:40]) +
	 5'sd 8 * $signed(input_fmap_63[55:48]) +
	 4'sd 6 * $signed(input_fmap_63[63:56]) +
	 3'sd 2 * $signed(input_fmap_63[71:64]);

logic signed [31:0] dw_conv_mac_64;
assign dw_conv_mac_64 = 
	 4'sd 4 * $signed(input_fmap_64[7:0]) +
	 5'sd 8 * $signed(input_fmap_64[15:8]) +
	 3'sd 3 * $signed(input_fmap_64[23:16]) +
	 3'sd 2 * $signed(input_fmap_64[31:24]) +
	 4'sd 4 * $signed(input_fmap_64[39:32]) +
	 4'sd 6 * $signed(input_fmap_64[47:40]) +
	 3'sd 2 * $signed(input_fmap_64[55:48]) +
	 4'sd 4 * $signed(input_fmap_64[63:56]) +
	 3'sd 3 * $signed(input_fmap_64[71:64]);

logic signed [31:0] dw_conv_mac_65;
assign dw_conv_mac_65 = 
	 4'sd 7 * $signed(input_fmap_65[7:0]) +
	 3'sd 2 * $signed(input_fmap_65[15:8]) +
	 2'sd 1 * $signed(input_fmap_65[23:16]) +
	 4'sd 7 * $signed(input_fmap_65[31:24]) +
	 3'sd 2 * $signed(input_fmap_65[39:32]) +
	 4'sd 4 * $signed(input_fmap_65[47:40]) +
	 4'sd 5 * $signed(input_fmap_65[55:48]) +
	 4'sd 5 * $signed(input_fmap_65[63:56]) +
	 4'sd 4 * $signed(input_fmap_65[71:64]);

logic signed [31:0] dw_conv_mac_66;
assign dw_conv_mac_66 = 
	 2'sd 1 * $signed(input_fmap_66[7:0]) +
	 4'sd 4 * $signed(input_fmap_66[15:8]) +
	 4'sd 5 * $signed(input_fmap_66[23:16]) +
	 3'sd 3 * $signed(input_fmap_66[31:24]) +
	 2'sd 1 * $signed(input_fmap_66[39:32]) +
	 4'sd 5 * $signed(input_fmap_66[47:40]) +
	 4'sd 5 * $signed(input_fmap_66[55:48]) +
	 3'sd 2 * $signed(input_fmap_66[63:56]) +
	 4'sd 6 * $signed(input_fmap_66[71:64]);

logic signed [31:0] dw_conv_mac_67;
assign dw_conv_mac_67 = 
	 2'sd 1 * $signed(input_fmap_67[7:0]) +
	 3'sd 3 * $signed(input_fmap_67[15:8]) +
	 3'sd 2 * $signed(input_fmap_67[23:16]) +
	 3'sd 3 * $signed(input_fmap_67[31:24]) +
	 4'sd 4 * $signed(input_fmap_67[39:32]) +
	 2'sd 1 * $signed(input_fmap_67[47:40]) +
	 3'sd 2 * $signed(input_fmap_67[63:56]) +
	 4'sd 5 * $signed(input_fmap_67[71:64]);

logic signed [31:0] dw_conv_mac_68;
assign dw_conv_mac_68 = 
	 2'sd 1 * $signed(input_fmap_68[7:0]) +
	 2'sd 1 * $signed(input_fmap_68[15:8]) +
	 2'sd 1 * $signed(input_fmap_68[23:16]) +
	 4'sd 7 * $signed(input_fmap_68[31:24]) +
	 3'sd 2 * $signed(input_fmap_68[39:32]) +
	 4'sd 4 * $signed(input_fmap_68[47:40]) +
	 4'sd 5 * $signed(input_fmap_68[55:48]) +
	 4'sd 6 * $signed(input_fmap_68[71:64]);

logic signed [31:0] dw_conv_mac_69;
assign dw_conv_mac_69 = 
	 5'sd 8 * $signed(input_fmap_69[7:0]) +
	 2'sd 1 * $signed(input_fmap_69[15:8]) +
	 4'sd 6 * $signed(input_fmap_69[23:16]) +
	 2'sd 1 * $signed(input_fmap_69[31:24]) +
	 3'sd 2 * $signed(input_fmap_69[39:32]) +
	 2'sd 1 * $signed(input_fmap_69[47:40]) +
	 4'sd 5 * $signed(input_fmap_69[55:48]) +
	 4'sd 7 * $signed(input_fmap_69[63:56]) +
	 4'sd 6 * $signed(input_fmap_69[71:64]);

logic signed [31:0] dw_conv_mac_70;
assign dw_conv_mac_70 = 
	 4'sd 5 * $signed(input_fmap_70[7:0]) +
	 3'sd 3 * $signed(input_fmap_70[15:8]) +
	 4'sd 4 * $signed(input_fmap_70[23:16]) +
	 3'sd 2 * $signed(input_fmap_70[31:24]) +
	 4'sd 4 * $signed(input_fmap_70[39:32]) +
	 3'sd 2 * $signed(input_fmap_70[47:40]) +
	 2'sd 1 * $signed(input_fmap_70[55:48]) +
	 4'sd 7 * $signed(input_fmap_70[63:56]) +
	 4'sd 4 * $signed(input_fmap_70[71:64]);

logic signed [31:0] dw_conv_mac_71;
assign dw_conv_mac_71 = 
	 4'sd 6 * $signed(input_fmap_71[7:0]) +
	 3'sd 2 * $signed(input_fmap_71[15:8]) +
	 4'sd 7 * $signed(input_fmap_71[23:16]) +
	 4'sd 6 * $signed(input_fmap_71[39:32]) +
	 4'sd 7 * $signed(input_fmap_71[47:40]) +
	 5'sd 8 * $signed(input_fmap_71[55:48]) +
	 4'sd 7 * $signed(input_fmap_71[63:56]) +
	 4'sd 5 * $signed(input_fmap_71[71:64]);

logic signed [31:0] dw_conv_mac_72;
assign dw_conv_mac_72 = 
	 3'sd 2 * $signed(input_fmap_72[7:0]) +
	 4'sd 7 * $signed(input_fmap_72[15:8]) +
	 4'sd 6 * $signed(input_fmap_72[23:16]) +
	 4'sd 6 * $signed(input_fmap_72[31:24]) +
	 5'sd 8 * $signed(input_fmap_72[39:32]) +
	 3'sd 3 * $signed(input_fmap_72[47:40]) +
	 2'sd 1 * $signed(input_fmap_72[55:48]) +
	 3'sd 2 * $signed(input_fmap_72[63:56]) +
	 4'sd 5 * $signed(input_fmap_72[71:64]);

logic signed [31:0] dw_conv_mac_73;
assign dw_conv_mac_73 = 
	 3'sd 3 * $signed(input_fmap_73[15:8]) +
	 2'sd 1 * $signed(input_fmap_73[23:16]) +
	 4'sd 4 * $signed(input_fmap_73[31:24]) +
	 4'sd 6 * $signed(input_fmap_73[39:32]) +
	 3'sd 3 * $signed(input_fmap_73[47:40]) +
	 2'sd 1 * $signed(input_fmap_73[55:48]) +
	 4'sd 5 * $signed(input_fmap_73[63:56]) +
	 3'sd 2 * $signed(input_fmap_73[71:64]);

logic signed [31:0] dw_conv_mac_74;
assign dw_conv_mac_74 = 
	 4'sd 6 * $signed(input_fmap_74[7:0]) +
	 5'sd 8 * $signed(input_fmap_74[15:8]) +
	 2'sd 1 * $signed(input_fmap_74[23:16]) +
	 4'sd 6 * $signed(input_fmap_74[39:32]) +
	 3'sd 2 * $signed(input_fmap_74[47:40]) +
	 4'sd 5 * $signed(input_fmap_74[55:48]) +
	 4'sd 4 * $signed(input_fmap_74[63:56]) +
	 3'sd 3 * $signed(input_fmap_74[71:64]);

logic signed [31:0] dw_conv_mac_75;
assign dw_conv_mac_75 = 
	 2'sd 1 * $signed(input_fmap_75[7:0]) +
	 4'sd 4 * $signed(input_fmap_75[15:8]) +
	 4'sd 5 * $signed(input_fmap_75[23:16]) +
	 3'sd 3 * $signed(input_fmap_75[31:24]) +
	 2'sd 1 * $signed(input_fmap_75[39:32]) +
	 3'sd 2 * $signed(input_fmap_75[47:40]) +
	 2'sd 1 * $signed(input_fmap_75[55:48]) +
	 3'sd 2 * $signed(input_fmap_75[63:56]) +
	 4'sd 4 * $signed(input_fmap_75[71:64]);

logic signed [31:0] dw_conv_mac_76;
assign dw_conv_mac_76 = 
	 4'sd 7 * $signed(input_fmap_76[7:0]) +
	 4'sd 5 * $signed(input_fmap_76[15:8]) +
	 4'sd 5 * $signed(input_fmap_76[23:16]) +
	 3'sd 3 * $signed(input_fmap_76[31:24]) +
	 3'sd 3 * $signed(input_fmap_76[39:32]) +
	 4'sd 5 * $signed(input_fmap_76[47:40]) +
	 2'sd 1 * $signed(input_fmap_76[55:48]) +
	 2'sd 1 * $signed(input_fmap_76[63:56]) +
	 5'sd 8 * $signed(input_fmap_76[71:64]);

logic signed [31:0] dw_conv_mac_77;
assign dw_conv_mac_77 = 
	 3'sd 3 * $signed(input_fmap_77[7:0]) +
	 4'sd 7 * $signed(input_fmap_77[15:8]) +
	 4'sd 7 * $signed(input_fmap_77[23:16]) +
	 5'sd 8 * $signed(input_fmap_77[31:24]) +
	 4'sd 5 * $signed(input_fmap_77[39:32]) +
	 3'sd 2 * $signed(input_fmap_77[47:40]) +
	 2'sd 1 * $signed(input_fmap_77[55:48]) +
	 4'sd 6 * $signed(input_fmap_77[63:56]) +
	 2'sd 1 * $signed(input_fmap_77[71:64]);

logic signed [31:0] dw_conv_mac_78;
assign dw_conv_mac_78 = 
	 4'sd 4 * $signed(input_fmap_78[7:0]) +
	 4'sd 6 * $signed(input_fmap_78[15:8]) +
	 4'sd 5 * $signed(input_fmap_78[23:16]) +
	 4'sd 5 * $signed(input_fmap_78[31:24]) +
	 4'sd 7 * $signed(input_fmap_78[39:32]) +
	 2'sd 1 * $signed(input_fmap_78[47:40]) +
	 4'sd 5 * $signed(input_fmap_78[55:48]) +
	 2'sd 1 * $signed(input_fmap_78[63:56]) +
	 4'sd 4 * $signed(input_fmap_78[71:64]);

logic signed [31:0] dw_conv_mac_79;
assign dw_conv_mac_79 = 
	 2'sd 1 * $signed(input_fmap_79[7:0]) +
	 4'sd 7 * $signed(input_fmap_79[15:8]) +
	 3'sd 3 * $signed(input_fmap_79[23:16]) +
	 3'sd 2 * $signed(input_fmap_79[31:24]) +
	 3'sd 2 * $signed(input_fmap_79[39:32]) +
	 4'sd 6 * $signed(input_fmap_79[47:40]) +
	 3'sd 2 * $signed(input_fmap_79[55:48]) +
	 2'sd 1 * $signed(input_fmap_79[63:56]);

logic signed [31:0] dw_conv_mac_80;
assign dw_conv_mac_80 = 
	 4'sd 6 * $signed(input_fmap_80[7:0]) +
	 2'sd 1 * $signed(input_fmap_80[23:16]) +
	 4'sd 7 * $signed(input_fmap_80[31:24]) +
	 4'sd 5 * $signed(input_fmap_80[47:40]) +
	 4'sd 6 * $signed(input_fmap_80[55:48]) +
	 3'sd 3 * $signed(input_fmap_80[63:56]) +
	 5'sd 8 * $signed(input_fmap_80[71:64]);

logic signed [31:0] dw_conv_mac_81;
assign dw_conv_mac_81 = 
	 3'sd 2 * $signed(input_fmap_81[7:0]) +
	 3'sd 3 * $signed(input_fmap_81[15:8]) +
	 3'sd 3 * $signed(input_fmap_81[23:16]) +
	 5'sd 8 * $signed(input_fmap_81[31:24]) +
	 4'sd 4 * $signed(input_fmap_81[39:32]) +
	 4'sd 7 * $signed(input_fmap_81[47:40]) +
	 4'sd 5 * $signed(input_fmap_81[55:48]) +
	 4'sd 7 * $signed(input_fmap_81[63:56]) +
	 4'sd 4 * $signed(input_fmap_81[71:64]);

logic signed [31:0] dw_conv_mac_82;
assign dw_conv_mac_82 = 
	 3'sd 3 * $signed(input_fmap_82[7:0]) +
	 4'sd 5 * $signed(input_fmap_82[15:8]) +
	 4'sd 6 * $signed(input_fmap_82[23:16]) +
	 2'sd 1 * $signed(input_fmap_82[39:32]) +
	 4'sd 7 * $signed(input_fmap_82[47:40]) +
	 4'sd 5 * $signed(input_fmap_82[55:48]) +
	 5'sd 8 * $signed(input_fmap_82[63:56]) +
	 4'sd 5 * $signed(input_fmap_82[71:64]);

logic signed [31:0] dw_conv_mac_83;
assign dw_conv_mac_83 = 
	 4'sd 7 * $signed(input_fmap_83[7:0]) +
	 3'sd 3 * $signed(input_fmap_83[15:8]) +
	 3'sd 2 * $signed(input_fmap_83[23:16]) +
	 4'sd 7 * $signed(input_fmap_83[31:24]) +
	 2'sd 1 * $signed(input_fmap_83[39:32]) +
	 4'sd 7 * $signed(input_fmap_83[47:40]) +
	 5'sd 8 * $signed(input_fmap_83[55:48]) +
	 3'sd 3 * $signed(input_fmap_83[63:56]) +
	 3'sd 2 * $signed(input_fmap_83[71:64]);

logic signed [31:0] dw_conv_mac_84;
assign dw_conv_mac_84 = 
	 4'sd 4 * $signed(input_fmap_84[7:0]) +
	 3'sd 3 * $signed(input_fmap_84[15:8]) +
	 4'sd 7 * $signed(input_fmap_84[23:16]) +
	 4'sd 5 * $signed(input_fmap_84[31:24]) +
	 3'sd 2 * $signed(input_fmap_84[39:32]) +
	 4'sd 6 * $signed(input_fmap_84[55:48]) +
	 3'sd 3 * $signed(input_fmap_84[63:56]) +
	 4'sd 5 * $signed(input_fmap_84[71:64]);

logic signed [31:0] dw_conv_mac_85;
assign dw_conv_mac_85 = 
	 4'sd 4 * $signed(input_fmap_85[7:0]) +
	 4'sd 5 * $signed(input_fmap_85[15:8]) +
	 4'sd 6 * $signed(input_fmap_85[23:16]) +
	 4'sd 4 * $signed(input_fmap_85[31:24]) +
	 2'sd 1 * $signed(input_fmap_85[39:32]) +
	 4'sd 4 * $signed(input_fmap_85[47:40]) +
	 3'sd 3 * $signed(input_fmap_85[55:48]) +
	 3'sd 2 * $signed(input_fmap_85[63:56]) +
	 4'sd 5 * $signed(input_fmap_85[71:64]);

logic signed [31:0] dw_conv_mac_86;
assign dw_conv_mac_86 = 
	 4'sd 7 * $signed(input_fmap_86[7:0]) +
	 3'sd 3 * $signed(input_fmap_86[15:8]) +
	 2'sd 1 * $signed(input_fmap_86[23:16]) +
	 4'sd 6 * $signed(input_fmap_86[31:24]) +
	 5'sd 8 * $signed(input_fmap_86[39:32]) +
	 4'sd 6 * $signed(input_fmap_86[47:40]) +
	 4'sd 4 * $signed(input_fmap_86[55:48]) +
	 4'sd 6 * $signed(input_fmap_86[63:56]) +
	 4'sd 5 * $signed(input_fmap_86[71:64]);

logic signed [31:0] dw_conv_mac_87;
assign dw_conv_mac_87 = 
	 2'sd 1 * $signed(input_fmap_87[7:0]) +
	 4'sd 5 * $signed(input_fmap_87[15:8]) +
	 3'sd 2 * $signed(input_fmap_87[23:16]) +
	 3'sd 3 * $signed(input_fmap_87[31:24]) +
	 2'sd 1 * $signed(input_fmap_87[39:32]) +
	 4'sd 4 * $signed(input_fmap_87[47:40]) +
	 4'sd 7 * $signed(input_fmap_87[55:48]) +
	 4'sd 7 * $signed(input_fmap_87[63:56]) +
	 4'sd 4 * $signed(input_fmap_87[71:64]);

logic signed [31:0] dw_conv_mac_88;
assign dw_conv_mac_88 = 
	 4'sd 6 * $signed(input_fmap_88[7:0]) +
	 3'sd 3 * $signed(input_fmap_88[15:8]) +
	 4'sd 6 * $signed(input_fmap_88[31:24]) +
	 4'sd 6 * $signed(input_fmap_88[39:32]) +
	 4'sd 6 * $signed(input_fmap_88[47:40]) +
	 4'sd 6 * $signed(input_fmap_88[55:48]) +
	 4'sd 7 * $signed(input_fmap_88[63:56]) +
	 3'sd 2 * $signed(input_fmap_88[71:64]);

logic signed [31:0] dw_conv_mac_89;
assign dw_conv_mac_89 = 
	 5'sd 8 * $signed(input_fmap_89[15:8]) +
	 2'sd 1 * $signed(input_fmap_89[23:16]) +
	 3'sd 2 * $signed(input_fmap_89[31:24]) +
	 4'sd 5 * $signed(input_fmap_89[39:32]) +
	 4'sd 4 * $signed(input_fmap_89[47:40]) +
	 2'sd 1 * $signed(input_fmap_89[55:48]) +
	 5'sd 8 * $signed(input_fmap_89[63:56]) +
	 2'sd 1 * $signed(input_fmap_89[71:64]);

logic signed [31:0] dw_conv_mac_90;
assign dw_conv_mac_90 = 
	 4'sd 5 * $signed(input_fmap_90[7:0]) +
	 3'sd 3 * $signed(input_fmap_90[23:16]) +
	 3'sd 2 * $signed(input_fmap_90[31:24]) +
	 3'sd 2 * $signed(input_fmap_90[39:32]) +
	 4'sd 6 * $signed(input_fmap_90[47:40]) +
	 4'sd 5 * $signed(input_fmap_90[63:56]) +
	 3'sd 3 * $signed(input_fmap_90[71:64]);

logic signed [31:0] dw_conv_mac_91;
assign dw_conv_mac_91 = 
	 3'sd 3 * $signed(input_fmap_91[7:0]) +
	 4'sd 7 * $signed(input_fmap_91[15:8]) +
	 4'sd 5 * $signed(input_fmap_91[23:16]) +
	 3'sd 3 * $signed(input_fmap_91[31:24]) +
	 4'sd 6 * $signed(input_fmap_91[39:32]) +
	 4'sd 4 * $signed(input_fmap_91[47:40]) +
	 3'sd 2 * $signed(input_fmap_91[55:48]) +
	 4'sd 6 * $signed(input_fmap_91[63:56]) +
	 5'sd 8 * $signed(input_fmap_91[71:64]);

logic signed [31:0] dw_conv_mac_92;
assign dw_conv_mac_92 = 
	 3'sd 3 * $signed(input_fmap_92[7:0]) +
	 4'sd 6 * $signed(input_fmap_92[15:8]) +
	 4'sd 7 * $signed(input_fmap_92[23:16]) +
	 2'sd 1 * $signed(input_fmap_92[31:24]) +
	 3'sd 3 * $signed(input_fmap_92[39:32]) +
	 3'sd 3 * $signed(input_fmap_92[47:40]) +
	 4'sd 6 * $signed(input_fmap_92[55:48]) +
	 3'sd 2 * $signed(input_fmap_92[63:56]) +
	 4'sd 7 * $signed(input_fmap_92[71:64]);

logic signed [31:0] dw_conv_mac_93;
assign dw_conv_mac_93 = 
	 4'sd 6 * $signed(input_fmap_93[7:0]) +
	 4'sd 7 * $signed(input_fmap_93[15:8]) +
	 3'sd 3 * $signed(input_fmap_93[23:16]) +
	 4'sd 4 * $signed(input_fmap_93[31:24]) +
	 3'sd 3 * $signed(input_fmap_93[39:32]) +
	 4'sd 6 * $signed(input_fmap_93[47:40]) +
	 4'sd 6 * $signed(input_fmap_93[55:48]) +
	 4'sd 4 * $signed(input_fmap_93[63:56]) +
	 4'sd 5 * $signed(input_fmap_93[71:64]);

logic signed [31:0] dw_conv_mac_94;
assign dw_conv_mac_94 = 
	 4'sd 5 * $signed(input_fmap_94[7:0]) +
	 4'sd 5 * $signed(input_fmap_94[15:8]) +
	 2'sd 1 * $signed(input_fmap_94[23:16]) +
	 2'sd 1 * $signed(input_fmap_94[31:24]) +
	 4'sd 5 * $signed(input_fmap_94[39:32]) +
	 4'sd 7 * $signed(input_fmap_94[47:40]) +
	 4'sd 5 * $signed(input_fmap_94[55:48]) +
	 4'sd 4 * $signed(input_fmap_94[63:56]) +
	 3'sd 3 * $signed(input_fmap_94[71:64]);

logic signed [31:0] dw_conv_mac_95;
assign dw_conv_mac_95 = 
	 4'sd 6 * $signed(input_fmap_95[7:0]) +
	 4'sd 5 * $signed(input_fmap_95[15:8]) +
	 4'sd 6 * $signed(input_fmap_95[23:16]) +
	 4'sd 6 * $signed(input_fmap_95[31:24]) +
	 2'sd 1 * $signed(input_fmap_95[39:32]) +
	 4'sd 5 * $signed(input_fmap_95[47:40]) +
	 4'sd 7 * $signed(input_fmap_95[55:48]) +
	 4'sd 4 * $signed(input_fmap_95[63:56]) +
	 3'sd 2 * $signed(input_fmap_95[71:64]);

logic signed [31:0] dw_conv_mac_96;
assign dw_conv_mac_96 = 
	 4'sd 7 * $signed(input_fmap_96[7:0]) +
	 4'sd 7 * $signed(input_fmap_96[15:8]) +
	 2'sd 1 * $signed(input_fmap_96[23:16]) +
	 4'sd 6 * $signed(input_fmap_96[31:24]) +
	 5'sd 8 * $signed(input_fmap_96[39:32]) +
	 4'sd 4 * $signed(input_fmap_96[47:40]) +
	 4'sd 6 * $signed(input_fmap_96[55:48]) +
	 4'sd 5 * $signed(input_fmap_96[63:56]) +
	 4'sd 4 * $signed(input_fmap_96[71:64]);

logic signed [31:0] dw_conv_mac_97;
assign dw_conv_mac_97 = 
	 2'sd 1 * $signed(input_fmap_97[7:0]) +
	 4'sd 5 * $signed(input_fmap_97[15:8]) +
	 4'sd 5 * $signed(input_fmap_97[23:16]) +
	 4'sd 6 * $signed(input_fmap_97[31:24]) +
	 4'sd 7 * $signed(input_fmap_97[39:32]) +
	 4'sd 7 * $signed(input_fmap_97[47:40]) +
	 3'sd 3 * $signed(input_fmap_97[55:48]) +
	 4'sd 7 * $signed(input_fmap_97[63:56]) +
	 4'sd 6 * $signed(input_fmap_97[71:64]);

logic signed [31:0] dw_conv_mac_98;
assign dw_conv_mac_98 = 
	 4'sd 5 * $signed(input_fmap_98[15:8]) +
	 4'sd 7 * $signed(input_fmap_98[23:16]) +
	 4'sd 4 * $signed(input_fmap_98[31:24]) +
	 2'sd 1 * $signed(input_fmap_98[39:32]) +
	 3'sd 3 * $signed(input_fmap_98[55:48]) +
	 4'sd 5 * $signed(input_fmap_98[63:56]) +
	 4'sd 5 * $signed(input_fmap_98[71:64]);

logic signed [31:0] dw_conv_mac_99;
assign dw_conv_mac_99 = 
	 4'sd 6 * $signed(input_fmap_99[7:0]) +
	 4'sd 4 * $signed(input_fmap_99[15:8]) +
	 3'sd 3 * $signed(input_fmap_99[23:16]) +
	 4'sd 5 * $signed(input_fmap_99[31:24]) +
	 5'sd 8 * $signed(input_fmap_99[39:32]) +
	 4'sd 7 * $signed(input_fmap_99[47:40]) +
	 4'sd 7 * $signed(input_fmap_99[55:48]) +
	 4'sd 5 * $signed(input_fmap_99[63:56]) +
	 4'sd 6 * $signed(input_fmap_99[71:64]);

logic signed [31:0] dw_conv_mac_100;
assign dw_conv_mac_100 = 
	 4'sd 5 * $signed(input_fmap_100[7:0]) +
	 3'sd 2 * $signed(input_fmap_100[15:8]) +
	 3'sd 3 * $signed(input_fmap_100[23:16]) +
	 4'sd 5 * $signed(input_fmap_100[31:24]) +
	 3'sd 2 * $signed(input_fmap_100[39:32]) +
	 4'sd 7 * $signed(input_fmap_100[47:40]) +
	 2'sd 1 * $signed(input_fmap_100[55:48]) +
	 4'sd 7 * $signed(input_fmap_100[63:56]) +
	 4'sd 4 * $signed(input_fmap_100[71:64]);

logic signed [31:0] dw_conv_mac_101;
assign dw_conv_mac_101 = 
	 2'sd 1 * $signed(input_fmap_101[7:0]) +
	 3'sd 3 * $signed(input_fmap_101[15:8]) +
	 4'sd 5 * $signed(input_fmap_101[23:16]) +
	 4'sd 5 * $signed(input_fmap_101[31:24]) +
	 3'sd 3 * $signed(input_fmap_101[39:32]) +
	 4'sd 5 * $signed(input_fmap_101[47:40]) +
	 2'sd 1 * $signed(input_fmap_101[55:48]) +
	 2'sd 1 * $signed(input_fmap_101[63:56]) +
	 3'sd 3 * $signed(input_fmap_101[71:64]);

logic signed [31:0] dw_conv_mac_102;
assign dw_conv_mac_102 = 
	 2'sd 1 * $signed(input_fmap_102[7:0]) +
	 4'sd 6 * $signed(input_fmap_102[15:8]) +
	 2'sd 1 * $signed(input_fmap_102[23:16]) +
	 2'sd 1 * $signed(input_fmap_102[31:24]) +
	 3'sd 3 * $signed(input_fmap_102[39:32]) +
	 4'sd 7 * $signed(input_fmap_102[47:40]) +
	 2'sd 1 * $signed(input_fmap_102[55:48]) +
	 4'sd 4 * $signed(input_fmap_102[71:64]);

logic signed [31:0] dw_conv_mac_103;
assign dw_conv_mac_103 = 
	 4'sd 6 * $signed(input_fmap_103[7:0]) +
	 4'sd 5 * $signed(input_fmap_103[15:8]) +
	 3'sd 3 * $signed(input_fmap_103[23:16]) +
	 4'sd 4 * $signed(input_fmap_103[31:24]) +
	 4'sd 6 * $signed(input_fmap_103[39:32]) +
	 4'sd 4 * $signed(input_fmap_103[47:40]) +
	 4'sd 5 * $signed(input_fmap_103[55:48]) +
	 3'sd 3 * $signed(input_fmap_103[63:56]) +
	 4'sd 7 * $signed(input_fmap_103[71:64]);

logic signed [31:0] dw_conv_mac_104;
assign dw_conv_mac_104 = 
	 4'sd 6 * $signed(input_fmap_104[7:0]) +
	 5'sd 8 * $signed(input_fmap_104[15:8]) +
	 4'sd 4 * $signed(input_fmap_104[23:16]) +
	 3'sd 3 * $signed(input_fmap_104[31:24]) +
	 2'sd 1 * $signed(input_fmap_104[39:32]) +
	 3'sd 3 * $signed(input_fmap_104[55:48]) +
	 2'sd 1 * $signed(input_fmap_104[63:56]) +
	 3'sd 2 * $signed(input_fmap_104[71:64]);

logic signed [31:0] dw_conv_mac_105;
assign dw_conv_mac_105 = 
	 4'sd 6 * $signed(input_fmap_105[7:0]) +
	 3'sd 2 * $signed(input_fmap_105[15:8]) +
	 4'sd 4 * $signed(input_fmap_105[23:16]) +
	 4'sd 5 * $signed(input_fmap_105[31:24]) +
	 4'sd 6 * $signed(input_fmap_105[39:32]) +
	 3'sd 2 * $signed(input_fmap_105[47:40]) +
	 2'sd 1 * $signed(input_fmap_105[55:48]) +
	 2'sd 1 * $signed(input_fmap_105[63:56]) +
	 3'sd 2 * $signed(input_fmap_105[71:64]);

logic signed [31:0] dw_conv_mac_106;
assign dw_conv_mac_106 = 
	 4'sd 5 * $signed(input_fmap_106[7:0]) +
	 4'sd 5 * $signed(input_fmap_106[15:8]) +
	 3'sd 2 * $signed(input_fmap_106[23:16]) +
	 4'sd 6 * $signed(input_fmap_106[31:24]) +
	 4'sd 5 * $signed(input_fmap_106[39:32]) +
	 3'sd 3 * $signed(input_fmap_106[47:40]) +
	 4'sd 4 * $signed(input_fmap_106[55:48]) +
	 4'sd 5 * $signed(input_fmap_106[63:56]) +
	 3'sd 3 * $signed(input_fmap_106[71:64]);

logic signed [31:0] dw_conv_mac_107;
assign dw_conv_mac_107 = 
	 2'sd 1 * $signed(input_fmap_107[7:0]) +
	 4'sd 7 * $signed(input_fmap_107[15:8]) +
	 2'sd 1 * $signed(input_fmap_107[23:16]) +
	 2'sd 1 * $signed(input_fmap_107[31:24]) +
	 4'sd 6 * $signed(input_fmap_107[39:32]) +
	 4'sd 6 * $signed(input_fmap_107[47:40]) +
	 2'sd 1 * $signed(input_fmap_107[55:48]) +
	 4'sd 7 * $signed(input_fmap_107[63:56]) +
	 2'sd 1 * $signed(input_fmap_107[71:64]);

logic signed [31:0] dw_conv_mac_108;
assign dw_conv_mac_108 = 
	 3'sd 2 * $signed(input_fmap_108[7:0]) +
	 2'sd 1 * $signed(input_fmap_108[23:16]) +
	 3'sd 3 * $signed(input_fmap_108[31:24]) +
	 3'sd 2 * $signed(input_fmap_108[39:32]) +
	 4'sd 6 * $signed(input_fmap_108[47:40]) +
	 4'sd 4 * $signed(input_fmap_108[55:48]) +
	 2'sd 1 * $signed(input_fmap_108[63:56]) +
	 4'sd 5 * $signed(input_fmap_108[71:64]);

logic signed [31:0] dw_conv_mac_109;
assign dw_conv_mac_109 = 
	 4'sd 6 * $signed(input_fmap_109[7:0]) +
	 3'sd 3 * $signed(input_fmap_109[15:8]) +
	 3'sd 2 * $signed(input_fmap_109[23:16]) +
	 4'sd 7 * $signed(input_fmap_109[31:24]) +
	 4'sd 4 * $signed(input_fmap_109[39:32]) +
	 4'sd 6 * $signed(input_fmap_109[63:56]) +
	 3'sd 2 * $signed(input_fmap_109[71:64]);

logic signed [31:0] dw_conv_mac_110;
assign dw_conv_mac_110 = 
	 4'sd 7 * $signed(input_fmap_110[7:0]) +
	 3'sd 2 * $signed(input_fmap_110[15:8]) +
	 4'sd 4 * $signed(input_fmap_110[23:16]) +
	 2'sd 1 * $signed(input_fmap_110[31:24]) +
	 3'sd 2 * $signed(input_fmap_110[39:32]) +
	 4'sd 6 * $signed(input_fmap_110[47:40]) +
	 5'sd 8 * $signed(input_fmap_110[55:48]) +
	 3'sd 2 * $signed(input_fmap_110[63:56]) +
	 4'sd 7 * $signed(input_fmap_110[71:64]);

logic signed [31:0] dw_conv_mac_111;
assign dw_conv_mac_111 = 
	 2'sd 1 * $signed(input_fmap_111[15:8]) +
	 3'sd 2 * $signed(input_fmap_111[23:16]) +
	 4'sd 7 * $signed(input_fmap_111[31:24]) +
	 4'sd 4 * $signed(input_fmap_111[39:32]) +
	 5'sd 8 * $signed(input_fmap_111[47:40]) +
	 4'sd 7 * $signed(input_fmap_111[55:48]) +
	 3'sd 3 * $signed(input_fmap_111[63:56]) +
	 2'sd 1 * $signed(input_fmap_111[71:64]);

logic signed [31:0] dw_conv_mac_112;
assign dw_conv_mac_112 = 
	 2'sd 1 * $signed(input_fmap_112[15:8]) +
	 4'sd 4 * $signed(input_fmap_112[23:16]) +
	 4'sd 6 * $signed(input_fmap_112[31:24]) +
	 3'sd 3 * $signed(input_fmap_112[39:32]) +
	 4'sd 6 * $signed(input_fmap_112[47:40]) +
	 3'sd 2 * $signed(input_fmap_112[55:48]) +
	 4'sd 4 * $signed(input_fmap_112[63:56]) +
	 4'sd 4 * $signed(input_fmap_112[71:64]);

logic signed [31:0] dw_conv_mac_113;
assign dw_conv_mac_113 = 
	 4'sd 5 * $signed(input_fmap_113[7:0]) +
	 4'sd 6 * $signed(input_fmap_113[15:8]) +
	 4'sd 5 * $signed(input_fmap_113[23:16]) +
	 4'sd 5 * $signed(input_fmap_113[31:24]) +
	 4'sd 5 * $signed(input_fmap_113[47:40]) +
	 4'sd 4 * $signed(input_fmap_113[55:48]) +
	 2'sd 1 * $signed(input_fmap_113[63:56]) +
	 4'sd 5 * $signed(input_fmap_113[71:64]);

logic signed [31:0] dw_conv_mac_114;
assign dw_conv_mac_114 = 
	 5'sd 8 * $signed(input_fmap_114[7:0]) +
	 4'sd 6 * $signed(input_fmap_114[15:8]) +
	 2'sd 1 * $signed(input_fmap_114[23:16]) +
	 4'sd 5 * $signed(input_fmap_114[31:24]) +
	 4'sd 7 * $signed(input_fmap_114[39:32]) +
	 4'sd 5 * $signed(input_fmap_114[47:40]) +
	 4'sd 4 * $signed(input_fmap_114[55:48]) +
	 3'sd 3 * $signed(input_fmap_114[63:56]) +
	 3'sd 3 * $signed(input_fmap_114[71:64]);

logic signed [31:0] dw_conv_mac_115;
assign dw_conv_mac_115 = 
	 2'sd 1 * $signed(input_fmap_115[7:0]) +
	 4'sd 6 * $signed(input_fmap_115[15:8]) +
	 3'sd 2 * $signed(input_fmap_115[31:24]) +
	 3'sd 2 * $signed(input_fmap_115[39:32]) +
	 4'sd 5 * $signed(input_fmap_115[47:40]) +
	 2'sd 1 * $signed(input_fmap_115[55:48]) +
	 4'sd 7 * $signed(input_fmap_115[63:56]) +
	 2'sd 1 * $signed(input_fmap_115[71:64]);

logic signed [31:0] dw_conv_mac_116;
assign dw_conv_mac_116 = 
	 4'sd 4 * $signed(input_fmap_116[15:8]) +
	 2'sd 1 * $signed(input_fmap_116[23:16]) +
	 4'sd 7 * $signed(input_fmap_116[31:24]) +
	 4'sd 7 * $signed(input_fmap_116[47:40]) +
	 2'sd 1 * $signed(input_fmap_116[55:48]) +
	 2'sd 1 * $signed(input_fmap_116[63:56]) +
	 4'sd 4 * $signed(input_fmap_116[71:64]);

logic signed [31:0] dw_conv_mac_117;
assign dw_conv_mac_117 = 
	 4'sd 4 * $signed(input_fmap_117[7:0]) +
	 4'sd 4 * $signed(input_fmap_117[15:8]) +
	 3'sd 2 * $signed(input_fmap_117[23:16]) +
	 4'sd 7 * $signed(input_fmap_117[31:24]) +
	 3'sd 3 * $signed(input_fmap_117[39:32]) +
	 2'sd 1 * $signed(input_fmap_117[47:40]) +
	 4'sd 5 * $signed(input_fmap_117[55:48]) +
	 3'sd 3 * $signed(input_fmap_117[63:56]) +
	 3'sd 3 * $signed(input_fmap_117[71:64]);

logic signed [31:0] dw_conv_mac_118;
assign dw_conv_mac_118 = 
	 4'sd 7 * $signed(input_fmap_118[7:0]) +
	 2'sd 1 * $signed(input_fmap_118[15:8]) +
	 4'sd 5 * $signed(input_fmap_118[23:16]) +
	 4'sd 5 * $signed(input_fmap_118[31:24]) +
	 2'sd 1 * $signed(input_fmap_118[39:32]) +
	 4'sd 6 * $signed(input_fmap_118[47:40]) +
	 3'sd 3 * $signed(input_fmap_118[55:48]) +
	 4'sd 6 * $signed(input_fmap_118[63:56]) +
	 3'sd 2 * $signed(input_fmap_118[71:64]);

logic signed [31:0] dw_conv_mac_119;
assign dw_conv_mac_119 = 
	 5'sd 8 * $signed(input_fmap_119[7:0]) +
	 4'sd 4 * $signed(input_fmap_119[15:8]) +
	 4'sd 6 * $signed(input_fmap_119[23:16]) +
	 4'sd 7 * $signed(input_fmap_119[31:24]) +
	 4'sd 4 * $signed(input_fmap_119[39:32]) +
	 3'sd 3 * $signed(input_fmap_119[47:40]) +
	 4'sd 7 * $signed(input_fmap_119[55:48]) +
	 3'sd 3 * $signed(input_fmap_119[63:56]) +
	 4'sd 7 * $signed(input_fmap_119[71:64]);

logic signed [31:0] dw_conv_mac_120;
assign dw_conv_mac_120 = 
	 3'sd 3 * $signed(input_fmap_120[7:0]) +
	 4'sd 6 * $signed(input_fmap_120[15:8]) +
	 4'sd 4 * $signed(input_fmap_120[23:16]) +
	 3'sd 3 * $signed(input_fmap_120[31:24]) +
	 5'sd 8 * $signed(input_fmap_120[39:32]) +
	 4'sd 5 * $signed(input_fmap_120[47:40]) +
	 3'sd 2 * $signed(input_fmap_120[63:56]) +
	 2'sd 1 * $signed(input_fmap_120[71:64]);

logic signed [31:0] dw_conv_mac_121;
assign dw_conv_mac_121 = 
	 3'sd 2 * $signed(input_fmap_121[7:0]) +
	 4'sd 7 * $signed(input_fmap_121[15:8]) +
	 4'sd 5 * $signed(input_fmap_121[23:16]) +
	 4'sd 6 * $signed(input_fmap_121[31:24]) +
	 5'sd 8 * $signed(input_fmap_121[39:32]) +
	 3'sd 3 * $signed(input_fmap_121[47:40]) +
	 4'sd 7 * $signed(input_fmap_121[55:48]) +
	 4'sd 5 * $signed(input_fmap_121[63:56]) +
	 4'sd 7 * $signed(input_fmap_121[71:64]);

logic signed [31:0] dw_conv_mac_122;
assign dw_conv_mac_122 = 
	 4'sd 6 * $signed(input_fmap_122[7:0]) +
	 4'sd 5 * $signed(input_fmap_122[15:8]) +
	 4'sd 4 * $signed(input_fmap_122[23:16]) +
	 2'sd 1 * $signed(input_fmap_122[31:24]) +
	 3'sd 3 * $signed(input_fmap_122[39:32]) +
	 5'sd 8 * $signed(input_fmap_122[47:40]) +
	 4'sd 6 * $signed(input_fmap_122[55:48]) +
	 3'sd 2 * $signed(input_fmap_122[63:56]) +
	 4'sd 5 * $signed(input_fmap_122[71:64]);

logic signed [31:0] dw_conv_mac_123;
assign dw_conv_mac_123 = 
	 3'sd 3 * $signed(input_fmap_123[7:0]) +
	 4'sd 6 * $signed(input_fmap_123[15:8]) +
	 4'sd 6 * $signed(input_fmap_123[23:16]) +
	 4'sd 5 * $signed(input_fmap_123[31:24]) +
	 4'sd 6 * $signed(input_fmap_123[39:32]) +
	 3'sd 2 * $signed(input_fmap_123[47:40]) +
	 4'sd 6 * $signed(input_fmap_123[55:48]) +
	 5'sd 8 * $signed(input_fmap_123[63:56]) +
	 4'sd 7 * $signed(input_fmap_123[71:64]);

logic signed [31:0] dw_conv_mac_124;
assign dw_conv_mac_124 = 
	 4'sd 7 * $signed(input_fmap_124[7:0]) +
	 2'sd 1 * $signed(input_fmap_124[15:8]) +
	 4'sd 4 * $signed(input_fmap_124[23:16]) +
	 4'sd 5 * $signed(input_fmap_124[31:24]) +
	 4'sd 6 * $signed(input_fmap_124[39:32]) +
	 3'sd 2 * $signed(input_fmap_124[47:40]) +
	 4'sd 7 * $signed(input_fmap_124[55:48]) +
	 2'sd 1 * $signed(input_fmap_124[63:56]) +
	 3'sd 3 * $signed(input_fmap_124[71:64]);

logic signed [31:0] dw_conv_mac_125;
assign dw_conv_mac_125 = 
	 3'sd 3 * $signed(input_fmap_125[7:0]) +
	 4'sd 4 * $signed(input_fmap_125[15:8]) +
	 2'sd 1 * $signed(input_fmap_125[23:16]) +
	 4'sd 6 * $signed(input_fmap_125[31:24]) +
	 3'sd 2 * $signed(input_fmap_125[39:32]) +
	 4'sd 6 * $signed(input_fmap_125[47:40]) +
	 4'sd 4 * $signed(input_fmap_125[55:48]) +
	 4'sd 6 * $signed(input_fmap_125[63:56]) +
	 2'sd 1 * $signed(input_fmap_125[71:64]);

logic signed [31:0] dw_conv_mac_126;
assign dw_conv_mac_126 = 
	 4'sd 7 * $signed(input_fmap_126[7:0]) +
	 4'sd 6 * $signed(input_fmap_126[15:8]) +
	 4'sd 6 * $signed(input_fmap_126[31:24]) +
	 4'sd 6 * $signed(input_fmap_126[39:32]) +
	 5'sd 8 * $signed(input_fmap_126[47:40]) +
	 4'sd 5 * $signed(input_fmap_126[55:48]) +
	 3'sd 2 * $signed(input_fmap_126[63:56]) +
	 2'sd 1 * $signed(input_fmap_126[71:64]);

logic signed [31:0] dw_conv_mac_127;
assign dw_conv_mac_127 = 
	 4'sd 5 * $signed(input_fmap_127[7:0]) +
	 5'sd 8 * $signed(input_fmap_127[15:8]) +
	 2'sd 1 * $signed(input_fmap_127[23:16]) +
	 2'sd 1 * $signed(input_fmap_127[31:24]) +
	 3'sd 2 * $signed(input_fmap_127[39:32]) +
	 3'sd 2 * $signed(input_fmap_127[47:40]) +
	 4'sd 5 * $signed(input_fmap_127[55:48]) +
	 4'sd 5 * $signed(input_fmap_127[63:56]) +
	 3'sd 3 * $signed(input_fmap_127[71:64]);

logic signed [31:0] dw_conv_mac_128;
assign dw_conv_mac_128 = 
	 4'sd 6 * $signed(input_fmap_128[7:0]) +
	 3'sd 2 * $signed(input_fmap_128[15:8]) +
	 4'sd 6 * $signed(input_fmap_128[23:16]) +
	 4'sd 4 * $signed(input_fmap_128[31:24]) +
	 5'sd 8 * $signed(input_fmap_128[39:32]) +
	 3'sd 3 * $signed(input_fmap_128[47:40]) +
	 4'sd 4 * $signed(input_fmap_128[55:48]) +
	 4'sd 7 * $signed(input_fmap_128[71:64]);

logic signed [31:0] dw_conv_mac_129;
assign dw_conv_mac_129 = 
	 3'sd 2 * $signed(input_fmap_129[7:0]) +
	 4'sd 7 * $signed(input_fmap_129[15:8]) +
	 4'sd 6 * $signed(input_fmap_129[23:16]) +
	 3'sd 2 * $signed(input_fmap_129[31:24]) +
	 4'sd 6 * $signed(input_fmap_129[39:32]) +
	 2'sd 1 * $signed(input_fmap_129[47:40]) +
	 4'sd 7 * $signed(input_fmap_129[55:48]) +
	 2'sd 1 * $signed(input_fmap_129[63:56]) +
	 4'sd 6 * $signed(input_fmap_129[71:64]);

logic signed [31:0] dw_conv_mac_130;
assign dw_conv_mac_130 = 
	 4'sd 6 * $signed(input_fmap_130[7:0]) +
	 4'sd 7 * $signed(input_fmap_130[15:8]) +
	 5'sd 8 * $signed(input_fmap_130[23:16]) +
	 4'sd 7 * $signed(input_fmap_130[31:24]) +
	 5'sd 8 * $signed(input_fmap_130[39:32]) +
	 4'sd 7 * $signed(input_fmap_130[47:40]) +
	 3'sd 3 * $signed(input_fmap_130[55:48]) +
	 4'sd 6 * $signed(input_fmap_130[63:56]) +
	 4'sd 4 * $signed(input_fmap_130[71:64]);

logic signed [31:0] dw_conv_mac_131;
assign dw_conv_mac_131 = 
	 4'sd 6 * $signed(input_fmap_131[7:0]) +
	 2'sd 1 * $signed(input_fmap_131[15:8]) +
	 4'sd 5 * $signed(input_fmap_131[23:16]) +
	 4'sd 7 * $signed(input_fmap_131[39:32]) +
	 2'sd 1 * $signed(input_fmap_131[47:40]) +
	 4'sd 7 * $signed(input_fmap_131[55:48]) +
	 4'sd 6 * $signed(input_fmap_131[63:56]) +
	 3'sd 2 * $signed(input_fmap_131[71:64]);

logic signed [31:0] dw_conv_mac_132;
assign dw_conv_mac_132 = 
	 4'sd 4 * $signed(input_fmap_132[7:0]) +
	 4'sd 5 * $signed(input_fmap_132[15:8]) +
	 3'sd 3 * $signed(input_fmap_132[23:16]) +
	 4'sd 6 * $signed(input_fmap_132[31:24]) +
	 4'sd 7 * $signed(input_fmap_132[39:32]) +
	 3'sd 3 * $signed(input_fmap_132[47:40]) +
	 4'sd 7 * $signed(input_fmap_132[55:48]) +
	 2'sd 1 * $signed(input_fmap_132[63:56]) +
	 2'sd 1 * $signed(input_fmap_132[71:64]);

logic signed [31:0] dw_conv_mac_133;
assign dw_conv_mac_133 = 
	 4'sd 6 * $signed(input_fmap_133[7:0]) +
	 3'sd 3 * $signed(input_fmap_133[15:8]) +
	 2'sd 1 * $signed(input_fmap_133[23:16]) +
	 2'sd 1 * $signed(input_fmap_133[31:24]) +
	 4'sd 6 * $signed(input_fmap_133[39:32]) +
	 4'sd 6 * $signed(input_fmap_133[55:48]) +
	 3'sd 2 * $signed(input_fmap_133[63:56]) +
	 4'sd 7 * $signed(input_fmap_133[71:64]);

logic signed [31:0] dw_conv_mac_134;
assign dw_conv_mac_134 = 
	 2'sd 1 * $signed(input_fmap_134[7:0]) +
	 3'sd 2 * $signed(input_fmap_134[15:8]) +
	 3'sd 3 * $signed(input_fmap_134[23:16]) +
	 4'sd 6 * $signed(input_fmap_134[31:24]) +
	 4'sd 4 * $signed(input_fmap_134[39:32]) +
	 3'sd 3 * $signed(input_fmap_134[47:40]) +
	 2'sd 1 * $signed(input_fmap_134[55:48]) +
	 3'sd 2 * $signed(input_fmap_134[63:56]) +
	 4'sd 6 * $signed(input_fmap_134[71:64]);

logic signed [31:0] dw_conv_mac_135;
assign dw_conv_mac_135 = 
	 4'sd 7 * $signed(input_fmap_135[7:0]) +
	 4'sd 4 * $signed(input_fmap_135[15:8]) +
	 4'sd 4 * $signed(input_fmap_135[23:16]) +
	 5'sd 8 * $signed(input_fmap_135[31:24]) +
	 3'sd 2 * $signed(input_fmap_135[39:32]) +
	 3'sd 3 * $signed(input_fmap_135[47:40]) +
	 3'sd 3 * $signed(input_fmap_135[55:48]) +
	 2'sd 1 * $signed(input_fmap_135[63:56]) +
	 4'sd 7 * $signed(input_fmap_135[71:64]);

logic signed [31:0] dw_conv_mac_136;
assign dw_conv_mac_136 = 
	 5'sd 8 * $signed(input_fmap_136[7:0]) +
	 4'sd 5 * $signed(input_fmap_136[15:8]) +
	 4'sd 6 * $signed(input_fmap_136[23:16]) +
	 3'sd 2 * $signed(input_fmap_136[31:24]) +
	 4'sd 6 * $signed(input_fmap_136[39:32]) +
	 4'sd 7 * $signed(input_fmap_136[47:40]) +
	 2'sd 1 * $signed(input_fmap_136[55:48]) +
	 4'sd 7 * $signed(input_fmap_136[63:56]) +
	 4'sd 4 * $signed(input_fmap_136[71:64]);

logic signed [31:0] dw_conv_mac_137;
assign dw_conv_mac_137 = 
	 3'sd 2 * $signed(input_fmap_137[7:0]) +
	 2'sd 1 * $signed(input_fmap_137[15:8]) +
	 3'sd 2 * $signed(input_fmap_137[31:24]) +
	 4'sd 7 * $signed(input_fmap_137[39:32]) +
	 5'sd 8 * $signed(input_fmap_137[47:40]) +
	 3'sd 2 * $signed(input_fmap_137[55:48]) +
	 3'sd 2 * $signed(input_fmap_137[63:56]) +
	 3'sd 2 * $signed(input_fmap_137[71:64]);

logic signed [31:0] dw_conv_mac_138;
assign dw_conv_mac_138 = 
	 4'sd 5 * $signed(input_fmap_138[7:0]) +
	 4'sd 4 * $signed(input_fmap_138[15:8]) +
	 4'sd 4 * $signed(input_fmap_138[23:16]) +
	 2'sd 1 * $signed(input_fmap_138[31:24]) +
	 4'sd 4 * $signed(input_fmap_138[47:40]) +
	 4'sd 5 * $signed(input_fmap_138[63:56]) +
	 4'sd 6 * $signed(input_fmap_138[71:64]);

logic signed [31:0] dw_conv_mac_139;
assign dw_conv_mac_139 = 
	 2'sd 1 * $signed(input_fmap_139[7:0]) +
	 3'sd 3 * $signed(input_fmap_139[15:8]) +
	 4'sd 4 * $signed(input_fmap_139[23:16]) +
	 3'sd 2 * $signed(input_fmap_139[31:24]) +
	 4'sd 5 * $signed(input_fmap_139[39:32]) +
	 3'sd 2 * $signed(input_fmap_139[47:40]) +
	 4'sd 6 * $signed(input_fmap_139[55:48]) +
	 4'sd 4 * $signed(input_fmap_139[63:56]) +
	 4'sd 4 * $signed(input_fmap_139[71:64]);

logic signed [31:0] dw_conv_mac_140;
assign dw_conv_mac_140 = 
	 2'sd 1 * $signed(input_fmap_140[7:0]) +
	 3'sd 3 * $signed(input_fmap_140[15:8]) +
	 4'sd 7 * $signed(input_fmap_140[23:16]) +
	 3'sd 2 * $signed(input_fmap_140[31:24]) +
	 3'sd 3 * $signed(input_fmap_140[39:32]) +
	 4'sd 4 * $signed(input_fmap_140[47:40]) +
	 4'sd 5 * $signed(input_fmap_140[55:48]) +
	 5'sd 8 * $signed(input_fmap_140[63:56]) +
	 4'sd 6 * $signed(input_fmap_140[71:64]);

logic signed [31:0] dw_conv_mac_141;
assign dw_conv_mac_141 = 
	 4'sd 7 * $signed(input_fmap_141[7:0]) +
	 4'sd 6 * $signed(input_fmap_141[15:8]) +
	 3'sd 3 * $signed(input_fmap_141[23:16]) +
	 2'sd 1 * $signed(input_fmap_141[31:24]) +
	 4'sd 5 * $signed(input_fmap_141[39:32]) +
	 4'sd 5 * $signed(input_fmap_141[47:40]) +
	 4'sd 5 * $signed(input_fmap_141[55:48]) +
	 4'sd 6 * $signed(input_fmap_141[63:56]) +
	 5'sd 8 * $signed(input_fmap_141[71:64]);

logic signed [31:0] dw_conv_mac_142;
assign dw_conv_mac_142 = 
	 4'sd 4 * $signed(input_fmap_142[7:0]) +
	 4'sd 5 * $signed(input_fmap_142[23:16]) +
	 4'sd 7 * $signed(input_fmap_142[31:24]) +
	 3'sd 3 * $signed(input_fmap_142[39:32]) +
	 4'sd 5 * $signed(input_fmap_142[47:40]) +
	 3'sd 3 * $signed(input_fmap_142[55:48]) +
	 4'sd 4 * $signed(input_fmap_142[63:56]) +
	 4'sd 5 * $signed(input_fmap_142[71:64]);

logic signed [31:0] dw_conv_mac_143;
assign dw_conv_mac_143 = 
	 3'sd 2 * $signed(input_fmap_143[7:0]) +
	 4'sd 4 * $signed(input_fmap_143[15:8]) +
	 4'sd 7 * $signed(input_fmap_143[39:32]) +
	 3'sd 2 * $signed(input_fmap_143[47:40]) +
	 4'sd 7 * $signed(input_fmap_143[55:48]) +
	 4'sd 4 * $signed(input_fmap_143[63:56]);

logic signed [31:0] dw_conv_mac_144;
assign dw_conv_mac_144 = 
	 4'sd 6 * $signed(input_fmap_144[7:0]) +
	 4'sd 4 * $signed(input_fmap_144[23:16]) +
	 4'sd 6 * $signed(input_fmap_144[31:24]) +
	 3'sd 2 * $signed(input_fmap_144[39:32]) +
	 4'sd 7 * $signed(input_fmap_144[47:40]) +
	 5'sd 8 * $signed(input_fmap_144[63:56]) +
	 2'sd 1 * $signed(input_fmap_144[71:64]);

logic signed [31:0] dw_conv_mac_145;
assign dw_conv_mac_145 = 
	 2'sd 1 * $signed(input_fmap_145[7:0]) +
	 3'sd 3 * $signed(input_fmap_145[15:8]) +
	 4'sd 7 * $signed(input_fmap_145[23:16]) +
	 4'sd 7 * $signed(input_fmap_145[31:24]) +
	 3'sd 2 * $signed(input_fmap_145[39:32]) +
	 5'sd 8 * $signed(input_fmap_145[47:40]) +
	 4'sd 6 * $signed(input_fmap_145[63:56]) +
	 4'sd 7 * $signed(input_fmap_145[71:64]);

logic signed [31:0] dw_conv_mac_146;
assign dw_conv_mac_146 = 
	 4'sd 4 * $signed(input_fmap_146[7:0]) +
	 4'sd 4 * $signed(input_fmap_146[15:8]) +
	 3'sd 3 * $signed(input_fmap_146[23:16]) +
	 4'sd 6 * $signed(input_fmap_146[31:24]) +
	 3'sd 3 * $signed(input_fmap_146[39:32]) +
	 4'sd 5 * $signed(input_fmap_146[47:40]) +
	 4'sd 4 * $signed(input_fmap_146[63:56]) +
	 3'sd 3 * $signed(input_fmap_146[71:64]);

logic signed [31:0] dw_conv_mac_147;
assign dw_conv_mac_147 = 
	 4'sd 6 * $signed(input_fmap_147[7:0]) +
	 3'sd 3 * $signed(input_fmap_147[15:8]) +
	 4'sd 5 * $signed(input_fmap_147[23:16]) +
	 4'sd 6 * $signed(input_fmap_147[31:24]) +
	 4'sd 6 * $signed(input_fmap_147[39:32]) +
	 4'sd 5 * $signed(input_fmap_147[47:40]) +
	 4'sd 4 * $signed(input_fmap_147[55:48]) +
	 4'sd 4 * $signed(input_fmap_147[63:56]) +
	 4'sd 6 * $signed(input_fmap_147[71:64]);

logic signed [31:0] dw_conv_mac_148;
assign dw_conv_mac_148 = 
	 4'sd 7 * $signed(input_fmap_148[7:0]) +
	 4'sd 7 * $signed(input_fmap_148[15:8]) +
	 2'sd 1 * $signed(input_fmap_148[23:16]) +
	 4'sd 7 * $signed(input_fmap_148[31:24]) +
	 2'sd 1 * $signed(input_fmap_148[39:32]) +
	 2'sd 1 * $signed(input_fmap_148[47:40]) +
	 3'sd 3 * $signed(input_fmap_148[55:48]) +
	 3'sd 2 * $signed(input_fmap_148[63:56]) +
	 2'sd 1 * $signed(input_fmap_148[71:64]);

logic signed [31:0] dw_conv_mac_149;
assign dw_conv_mac_149 = 
	 3'sd 3 * $signed(input_fmap_149[7:0]) +
	 4'sd 6 * $signed(input_fmap_149[15:8]) +
	 5'sd 8 * $signed(input_fmap_149[23:16]) +
	 4'sd 6 * $signed(input_fmap_149[31:24]) +
	 4'sd 5 * $signed(input_fmap_149[39:32]) +
	 3'sd 3 * $signed(input_fmap_149[47:40]) +
	 4'sd 5 * $signed(input_fmap_149[55:48]) +
	 3'sd 3 * $signed(input_fmap_149[63:56]) +
	 3'sd 2 * $signed(input_fmap_149[71:64]);

logic signed [31:0] dw_conv_mac_150;
assign dw_conv_mac_150 = 
	 2'sd 1 * $signed(input_fmap_150[7:0]) +
	 4'sd 6 * $signed(input_fmap_150[15:8]) +
	 4'sd 5 * $signed(input_fmap_150[23:16]) +
	 4'sd 7 * $signed(input_fmap_150[31:24]) +
	 4'sd 7 * $signed(input_fmap_150[39:32]) +
	 2'sd 1 * $signed(input_fmap_150[47:40]) +
	 4'sd 6 * $signed(input_fmap_150[55:48]) +
	 2'sd 1 * $signed(input_fmap_150[63:56]) +
	 4'sd 4 * $signed(input_fmap_150[71:64]);

logic signed [31:0] dw_conv_mac_151;
assign dw_conv_mac_151 = 
	 3'sd 3 * $signed(input_fmap_151[7:0]) +
	 4'sd 4 * $signed(input_fmap_151[15:8]) +
	 4'sd 7 * $signed(input_fmap_151[23:16]) +
	 2'sd 1 * $signed(input_fmap_151[31:24]) +
	 4'sd 5 * $signed(input_fmap_151[39:32]) +
	 3'sd 3 * $signed(input_fmap_151[47:40]) +
	 4'sd 7 * $signed(input_fmap_151[55:48]) +
	 4'sd 4 * $signed(input_fmap_151[63:56]) +
	 3'sd 2 * $signed(input_fmap_151[71:64]);

logic signed [31:0] dw_conv_mac_152;
assign dw_conv_mac_152 = 
	 4'sd 5 * $signed(input_fmap_152[7:0]) +
	 4'sd 5 * $signed(input_fmap_152[15:8]) +
	 4'sd 6 * $signed(input_fmap_152[23:16]) +
	 4'sd 7 * $signed(input_fmap_152[31:24]) +
	 4'sd 6 * $signed(input_fmap_152[39:32]) +
	 5'sd 8 * $signed(input_fmap_152[47:40]) +
	 3'sd 3 * $signed(input_fmap_152[55:48]) +
	 5'sd 8 * $signed(input_fmap_152[63:56]) +
	 4'sd 7 * $signed(input_fmap_152[71:64]);

logic signed [31:0] dw_conv_mac_153;
assign dw_conv_mac_153 = 
	 4'sd 6 * $signed(input_fmap_153[7:0]) +
	 4'sd 6 * $signed(input_fmap_153[15:8]) +
	 2'sd 1 * $signed(input_fmap_153[31:24]) +
	 5'sd 8 * $signed(input_fmap_153[39:32]) +
	 4'sd 4 * $signed(input_fmap_153[47:40]) +
	 4'sd 5 * $signed(input_fmap_153[55:48]) +
	 3'sd 3 * $signed(input_fmap_153[63:56]) +
	 4'sd 5 * $signed(input_fmap_153[71:64]);

logic signed [31:0] dw_conv_mac_154;
assign dw_conv_mac_154 = 
	 3'sd 3 * $signed(input_fmap_154[7:0]) +
	 2'sd 1 * $signed(input_fmap_154[15:8]) +
	 5'sd 8 * $signed(input_fmap_154[23:16]) +
	 4'sd 4 * $signed(input_fmap_154[39:32]) +
	 3'sd 2 * $signed(input_fmap_154[47:40]) +
	 4'sd 5 * $signed(input_fmap_154[55:48]) +
	 5'sd 8 * $signed(input_fmap_154[63:56]) +
	 4'sd 6 * $signed(input_fmap_154[71:64]);

logic signed [31:0] dw_conv_mac_155;
assign dw_conv_mac_155 = 
	 4'sd 7 * $signed(input_fmap_155[7:0]) +
	 2'sd 1 * $signed(input_fmap_155[15:8]) +
	 2'sd 1 * $signed(input_fmap_155[23:16]) +
	 5'sd 8 * $signed(input_fmap_155[31:24]) +
	 4'sd 6 * $signed(input_fmap_155[39:32]) +
	 5'sd 8 * $signed(input_fmap_155[47:40]) +
	 4'sd 7 * $signed(input_fmap_155[55:48]) +
	 2'sd 1 * $signed(input_fmap_155[63:56]) +
	 3'sd 3 * $signed(input_fmap_155[71:64]);

logic signed [31:0] dw_conv_mac_156;
assign dw_conv_mac_156 = 
	 3'sd 3 * $signed(input_fmap_156[7:0]) +
	 3'sd 3 * $signed(input_fmap_156[15:8]) +
	 4'sd 4 * $signed(input_fmap_156[23:16]) +
	 3'sd 2 * $signed(input_fmap_156[31:24]) +
	 4'sd 6 * $signed(input_fmap_156[39:32]) +
	 3'sd 3 * $signed(input_fmap_156[47:40]) +
	 3'sd 3 * $signed(input_fmap_156[55:48]) +
	 4'sd 4 * $signed(input_fmap_156[63:56]) +
	 3'sd 3 * $signed(input_fmap_156[71:64]);

logic signed [31:0] dw_conv_mac_157;
assign dw_conv_mac_157 = 
	 4'sd 7 * $signed(input_fmap_157[7:0]) +
	 4'sd 7 * $signed(input_fmap_157[15:8]) +
	 4'sd 6 * $signed(input_fmap_157[23:16]) +
	 4'sd 4 * $signed(input_fmap_157[31:24]) +
	 4'sd 4 * $signed(input_fmap_157[39:32]) +
	 3'sd 3 * $signed(input_fmap_157[47:40]) +
	 4'sd 5 * $signed(input_fmap_157[55:48]) +
	 3'sd 2 * $signed(input_fmap_157[63:56]) +
	 2'sd 1 * $signed(input_fmap_157[71:64]);

logic signed [31:0] dw_conv_mac_158;
assign dw_conv_mac_158 = 
	 2'sd 1 * $signed(input_fmap_158[7:0]) +
	 4'sd 5 * $signed(input_fmap_158[23:16]) +
	 4'sd 7 * $signed(input_fmap_158[31:24]) +
	 5'sd 8 * $signed(input_fmap_158[39:32]) +
	 4'sd 7 * $signed(input_fmap_158[47:40]) +
	 3'sd 2 * $signed(input_fmap_158[55:48]) +
	 2'sd 1 * $signed(input_fmap_158[63:56]) +
	 3'sd 2 * $signed(input_fmap_158[71:64]);

logic signed [31:0] dw_conv_mac_159;
assign dw_conv_mac_159 = 
	 4'sd 6 * $signed(input_fmap_159[7:0]) +
	 4'sd 4 * $signed(input_fmap_159[15:8]) +
	 3'sd 2 * $signed(input_fmap_159[23:16]) +
	 3'sd 3 * $signed(input_fmap_159[31:24]) +
	 3'sd 2 * $signed(input_fmap_159[39:32]) +
	 4'sd 5 * $signed(input_fmap_159[47:40]) +
	 4'sd 7 * $signed(input_fmap_159[55:48]) +
	 5'sd 8 * $signed(input_fmap_159[63:56]) +
	 3'sd 3 * $signed(input_fmap_159[71:64]);

logic signed [31:0] dw_conv_mac_160;
assign dw_conv_mac_160 = 
	 5'sd 8 * $signed(input_fmap_160[7:0]) +
	 3'sd 3 * $signed(input_fmap_160[15:8]) +
	 4'sd 7 * $signed(input_fmap_160[23:16]) +
	 2'sd 1 * $signed(input_fmap_160[31:24]) +
	 4'sd 7 * $signed(input_fmap_160[39:32]) +
	 4'sd 4 * $signed(input_fmap_160[47:40]) +
	 4'sd 7 * $signed(input_fmap_160[55:48]) +
	 4'sd 5 * $signed(input_fmap_160[63:56]) +
	 4'sd 7 * $signed(input_fmap_160[71:64]);

logic signed [31:0] dw_conv_mac_161;
assign dw_conv_mac_161 = 
	 5'sd 8 * $signed(input_fmap_161[7:0]) +
	 3'sd 3 * $signed(input_fmap_161[15:8]) +
	 4'sd 7 * $signed(input_fmap_161[23:16]) +
	 4'sd 6 * $signed(input_fmap_161[31:24]) +
	 4'sd 7 * $signed(input_fmap_161[39:32]) +
	 4'sd 6 * $signed(input_fmap_161[47:40]) +
	 4'sd 6 * $signed(input_fmap_161[55:48]) +
	 4'sd 4 * $signed(input_fmap_161[63:56]) +
	 2'sd 1 * $signed(input_fmap_161[71:64]);

logic signed [31:0] dw_conv_mac_162;
assign dw_conv_mac_162 = 
	 4'sd 4 * $signed(input_fmap_162[7:0]) +
	 3'sd 2 * $signed(input_fmap_162[15:8]) +
	 2'sd 1 * $signed(input_fmap_162[23:16]) +
	 3'sd 2 * $signed(input_fmap_162[31:24]) +
	 2'sd 1 * $signed(input_fmap_162[39:32]) +
	 3'sd 3 * $signed(input_fmap_162[47:40]) +
	 4'sd 5 * $signed(input_fmap_162[63:56]) +
	 3'sd 2 * $signed(input_fmap_162[71:64]);

logic signed [31:0] dw_conv_mac_163;
assign dw_conv_mac_163 = 
	 5'sd 8 * $signed(input_fmap_163[7:0]) +
	 3'sd 2 * $signed(input_fmap_163[15:8]) +
	 3'sd 2 * $signed(input_fmap_163[23:16]) +
	 2'sd 1 * $signed(input_fmap_163[31:24]) +
	 4'sd 5 * $signed(input_fmap_163[47:40]) +
	 5'sd 8 * $signed(input_fmap_163[55:48]) +
	 4'sd 7 * $signed(input_fmap_163[71:64]);

logic signed [31:0] dw_conv_mac_164;
assign dw_conv_mac_164 = 
	 3'sd 3 * $signed(input_fmap_164[7:0]) +
	 2'sd 1 * $signed(input_fmap_164[15:8]) +
	 4'sd 7 * $signed(input_fmap_164[23:16]) +
	 2'sd 1 * $signed(input_fmap_164[31:24]) +
	 4'sd 4 * $signed(input_fmap_164[39:32]) +
	 4'sd 7 * $signed(input_fmap_164[47:40]) +
	 4'sd 6 * $signed(input_fmap_164[55:48]) +
	 4'sd 7 * $signed(input_fmap_164[63:56]) +
	 3'sd 2 * $signed(input_fmap_164[71:64]);

logic signed [31:0] dw_conv_mac_165;
assign dw_conv_mac_165 = 
	 5'sd 8 * $signed(input_fmap_165[7:0]) +
	 2'sd 1 * $signed(input_fmap_165[15:8]) +
	 4'sd 7 * $signed(input_fmap_165[23:16]) +
	 4'sd 6 * $signed(input_fmap_165[31:24]) +
	 4'sd 5 * $signed(input_fmap_165[39:32]) +
	 4'sd 4 * $signed(input_fmap_165[47:40]) +
	 4'sd 5 * $signed(input_fmap_165[55:48]) +
	 4'sd 7 * $signed(input_fmap_165[71:64]);

logic signed [31:0] dw_conv_mac_166;
assign dw_conv_mac_166 = 
	 4'sd 7 * $signed(input_fmap_166[7:0]) +
	 3'sd 3 * $signed(input_fmap_166[15:8]) +
	 3'sd 2 * $signed(input_fmap_166[23:16]) +
	 4'sd 5 * $signed(input_fmap_166[31:24]) +
	 3'sd 3 * $signed(input_fmap_166[47:40]) +
	 3'sd 2 * $signed(input_fmap_166[55:48]) +
	 4'sd 5 * $signed(input_fmap_166[63:56]) +
	 2'sd 1 * $signed(input_fmap_166[71:64]);

logic signed [31:0] dw_conv_mac_167;
assign dw_conv_mac_167 = 
	 2'sd 1 * $signed(input_fmap_167[7:0]) +
	 4'sd 7 * $signed(input_fmap_167[15:8]) +
	 3'sd 2 * $signed(input_fmap_167[23:16]) +
	 3'sd 2 * $signed(input_fmap_167[31:24]) +
	 4'sd 6 * $signed(input_fmap_167[39:32]) +
	 2'sd 1 * $signed(input_fmap_167[47:40]) +
	 4'sd 7 * $signed(input_fmap_167[55:48]) +
	 3'sd 2 * $signed(input_fmap_167[63:56]);

logic signed [31:0] dw_conv_mac_168;
assign dw_conv_mac_168 = 
	 4'sd 5 * $signed(input_fmap_168[7:0]) +
	 3'sd 3 * $signed(input_fmap_168[15:8]) +
	 4'sd 6 * $signed(input_fmap_168[23:16]) +
	 3'sd 3 * $signed(input_fmap_168[31:24]) +
	 2'sd 1 * $signed(input_fmap_168[39:32]) +
	 4'sd 5 * $signed(input_fmap_168[47:40]) +
	 4'sd 7 * $signed(input_fmap_168[55:48]) +
	 4'sd 7 * $signed(input_fmap_168[63:56]) +
	 4'sd 6 * $signed(input_fmap_168[71:64]);

logic signed [31:0] dw_conv_mac_169;
assign dw_conv_mac_169 = 
	 3'sd 2 * $signed(input_fmap_169[7:0]) +
	 3'sd 2 * $signed(input_fmap_169[15:8]) +
	 4'sd 6 * $signed(input_fmap_169[23:16]) +
	 4'sd 5 * $signed(input_fmap_169[31:24]) +
	 4'sd 4 * $signed(input_fmap_169[39:32]) +
	 4'sd 4 * $signed(input_fmap_169[47:40]) +
	 4'sd 6 * $signed(input_fmap_169[55:48]) +
	 2'sd 1 * $signed(input_fmap_169[63:56]) +
	 4'sd 7 * $signed(input_fmap_169[71:64]);

logic signed [31:0] dw_conv_mac_170;
assign dw_conv_mac_170 = 
	 3'sd 3 * $signed(input_fmap_170[7:0]) +
	 4'sd 5 * $signed(input_fmap_170[15:8]) +
	 3'sd 3 * $signed(input_fmap_170[23:16]) +
	 4'sd 4 * $signed(input_fmap_170[31:24]) +
	 4'sd 4 * $signed(input_fmap_170[39:32]) +
	 3'sd 3 * $signed(input_fmap_170[47:40]) +
	 2'sd 1 * $signed(input_fmap_170[55:48]) +
	 3'sd 2 * $signed(input_fmap_170[63:56]) +
	 3'sd 2 * $signed(input_fmap_170[71:64]);

logic signed [31:0] dw_conv_mac_171;
assign dw_conv_mac_171 = 
	 3'sd 3 * $signed(input_fmap_171[7:0]) +
	 3'sd 2 * $signed(input_fmap_171[15:8]) +
	 4'sd 4 * $signed(input_fmap_171[23:16]) +
	 5'sd 8 * $signed(input_fmap_171[31:24]) +
	 4'sd 7 * $signed(input_fmap_171[39:32]) +
	 3'sd 3 * $signed(input_fmap_171[47:40]) +
	 4'sd 5 * $signed(input_fmap_171[63:56]) +
	 3'sd 3 * $signed(input_fmap_171[71:64]);

logic signed [31:0] dw_conv_mac_172;
assign dw_conv_mac_172 = 
	 3'sd 2 * $signed(input_fmap_172[7:0]) +
	 3'sd 2 * $signed(input_fmap_172[15:8]) +
	 4'sd 5 * $signed(input_fmap_172[23:16]) +
	 3'sd 2 * $signed(input_fmap_172[31:24]) +
	 4'sd 5 * $signed(input_fmap_172[39:32]) +
	 2'sd 1 * $signed(input_fmap_172[47:40]) +
	 5'sd 8 * $signed(input_fmap_172[55:48]) +
	 3'sd 2 * $signed(input_fmap_172[63:56]) +
	 5'sd 8 * $signed(input_fmap_172[71:64]);

logic signed [31:0] dw_conv_mac_173;
assign dw_conv_mac_173 = 
	 2'sd 1 * $signed(input_fmap_173[7:0]) +
	 4'sd 4 * $signed(input_fmap_173[15:8]) +
	 3'sd 2 * $signed(input_fmap_173[31:24]) +
	 3'sd 2 * $signed(input_fmap_173[39:32]) +
	 3'sd 3 * $signed(input_fmap_173[47:40]) +
	 5'sd 8 * $signed(input_fmap_173[55:48]) +
	 4'sd 6 * $signed(input_fmap_173[63:56]) +
	 3'sd 2 * $signed(input_fmap_173[71:64]);

logic signed [31:0] dw_conv_mac_174;
assign dw_conv_mac_174 = 
	 4'sd 5 * $signed(input_fmap_174[7:0]) +
	 3'sd 3 * $signed(input_fmap_174[15:8]) +
	 4'sd 6 * $signed(input_fmap_174[23:16]) +
	 4'sd 6 * $signed(input_fmap_174[31:24]) +
	 3'sd 2 * $signed(input_fmap_174[39:32]) +
	 4'sd 7 * $signed(input_fmap_174[47:40]) +
	 3'sd 3 * $signed(input_fmap_174[55:48]) +
	 4'sd 4 * $signed(input_fmap_174[63:56]) +
	 5'sd 8 * $signed(input_fmap_174[71:64]);

logic signed [31:0] dw_conv_mac_175;
assign dw_conv_mac_175 = 
	 4'sd 5 * $signed(input_fmap_175[7:0]) +
	 4'sd 5 * $signed(input_fmap_175[15:8]) +
	 3'sd 2 * $signed(input_fmap_175[23:16]) +
	 3'sd 2 * $signed(input_fmap_175[31:24]) +
	 2'sd 1 * $signed(input_fmap_175[39:32]) +
	 4'sd 7 * $signed(input_fmap_175[47:40]) +
	 3'sd 2 * $signed(input_fmap_175[63:56]);

logic signed [31:0] dw_conv_mac_176;
assign dw_conv_mac_176 = 
	 4'sd 5 * $signed(input_fmap_176[7:0]) +
	 3'sd 2 * $signed(input_fmap_176[15:8]) +
	 4'sd 6 * $signed(input_fmap_176[23:16]) +
	 4'sd 4 * $signed(input_fmap_176[39:32]) +
	 3'sd 3 * $signed(input_fmap_176[47:40]) +
	 3'sd 2 * $signed(input_fmap_176[55:48]) +
	 3'sd 3 * $signed(input_fmap_176[63:56]) +
	 3'sd 3 * $signed(input_fmap_176[71:64]);

logic signed [31:0] dw_conv_mac_177;
assign dw_conv_mac_177 = 
	 3'sd 2 * $signed(input_fmap_177[7:0]) +
	 3'sd 2 * $signed(input_fmap_177[15:8]) +
	 2'sd 1 * $signed(input_fmap_177[23:16]) +
	 3'sd 3 * $signed(input_fmap_177[31:24]) +
	 3'sd 3 * $signed(input_fmap_177[39:32]) +
	 3'sd 3 * $signed(input_fmap_177[47:40]) +
	 4'sd 6 * $signed(input_fmap_177[55:48]) +
	 3'sd 2 * $signed(input_fmap_177[63:56]) +
	 4'sd 6 * $signed(input_fmap_177[71:64]);

logic signed [31:0] dw_conv_mac_178;
assign dw_conv_mac_178 = 
	 2'sd 1 * $signed(input_fmap_178[7:0]) +
	 3'sd 3 * $signed(input_fmap_178[15:8]) +
	 3'sd 3 * $signed(input_fmap_178[23:16]) +
	 4'sd 6 * $signed(input_fmap_178[31:24]) +
	 3'sd 2 * $signed(input_fmap_178[39:32]) +
	 4'sd 5 * $signed(input_fmap_178[47:40]) +
	 2'sd 1 * $signed(input_fmap_178[55:48]) +
	 4'sd 4 * $signed(input_fmap_178[63:56]) +
	 4'sd 5 * $signed(input_fmap_178[71:64]);

logic signed [31:0] dw_conv_mac_179;
assign dw_conv_mac_179 = 
	 4'sd 6 * $signed(input_fmap_179[7:0]) +
	 4'sd 4 * $signed(input_fmap_179[15:8]) +
	 3'sd 3 * $signed(input_fmap_179[23:16]) +
	 5'sd 8 * $signed(input_fmap_179[31:24]) +
	 4'sd 6 * $signed(input_fmap_179[47:40]) +
	 3'sd 2 * $signed(input_fmap_179[55:48]) +
	 3'sd 3 * $signed(input_fmap_179[63:56]) +
	 4'sd 5 * $signed(input_fmap_179[71:64]);

logic signed [31:0] dw_conv_mac_180;
assign dw_conv_mac_180 = 
	 4'sd 4 * $signed(input_fmap_180[7:0]) +
	 3'sd 3 * $signed(input_fmap_180[23:16]) +
	 3'sd 2 * $signed(input_fmap_180[31:24]) +
	 4'sd 4 * $signed(input_fmap_180[39:32]) +
	 4'sd 6 * $signed(input_fmap_180[47:40]) +
	 4'sd 7 * $signed(input_fmap_180[55:48]) +
	 4'sd 6 * $signed(input_fmap_180[63:56]) +
	 4'sd 4 * $signed(input_fmap_180[71:64]);

logic signed [31:0] dw_conv_mac_181;
assign dw_conv_mac_181 = 
	 5'sd 8 * $signed(input_fmap_181[7:0]) +
	 4'sd 4 * $signed(input_fmap_181[15:8]) +
	 3'sd 2 * $signed(input_fmap_181[23:16]) +
	 4'sd 5 * $signed(input_fmap_181[31:24]) +
	 2'sd 1 * $signed(input_fmap_181[47:40]) +
	 4'sd 6 * $signed(input_fmap_181[55:48]) +
	 4'sd 6 * $signed(input_fmap_181[63:56]) +
	 3'sd 2 * $signed(input_fmap_181[71:64]);

logic signed [31:0] dw_conv_mac_182;
assign dw_conv_mac_182 = 
	 4'sd 5 * $signed(input_fmap_182[7:0]) +
	 4'sd 4 * $signed(input_fmap_182[15:8]) +
	 4'sd 6 * $signed(input_fmap_182[23:16]) +
	 2'sd 1 * $signed(input_fmap_182[31:24]) +
	 4'sd 7 * $signed(input_fmap_182[39:32]) +
	 2'sd 1 * $signed(input_fmap_182[47:40]) +
	 4'sd 5 * $signed(input_fmap_182[55:48]) +
	 2'sd 1 * $signed(input_fmap_182[63:56]) +
	 4'sd 4 * $signed(input_fmap_182[71:64]);

logic signed [31:0] dw_conv_mac_183;
assign dw_conv_mac_183 = 
	 3'sd 2 * $signed(input_fmap_183[7:0]) +
	 4'sd 5 * $signed(input_fmap_183[15:8]) +
	 4'sd 5 * $signed(input_fmap_183[23:16]) +
	 4'sd 5 * $signed(input_fmap_183[31:24]) +
	 4'sd 4 * $signed(input_fmap_183[39:32]) +
	 3'sd 2 * $signed(input_fmap_183[47:40]) +
	 2'sd 1 * $signed(input_fmap_183[55:48]) +
	 2'sd 1 * $signed(input_fmap_183[63:56]) +
	 2'sd 1 * $signed(input_fmap_183[71:64]);

logic signed [31:0] dw_conv_mac_184;
assign dw_conv_mac_184 = 
	 4'sd 7 * $signed(input_fmap_184[7:0]) +
	 4'sd 6 * $signed(input_fmap_184[15:8]) +
	 2'sd 1 * $signed(input_fmap_184[23:16]) +
	 4'sd 4 * $signed(input_fmap_184[31:24]) +
	 4'sd 4 * $signed(input_fmap_184[39:32]) +
	 4'sd 5 * $signed(input_fmap_184[47:40]) +
	 4'sd 5 * $signed(input_fmap_184[55:48]) +
	 4'sd 7 * $signed(input_fmap_184[63:56]) +
	 4'sd 4 * $signed(input_fmap_184[71:64]);

logic signed [31:0] dw_conv_mac_185;
assign dw_conv_mac_185 = 
	 3'sd 2 * $signed(input_fmap_185[7:0]) +
	 2'sd 1 * $signed(input_fmap_185[15:8]) +
	 3'sd 2 * $signed(input_fmap_185[23:16]) +
	 4'sd 6 * $signed(input_fmap_185[31:24]) +
	 3'sd 3 * $signed(input_fmap_185[39:32]) +
	 3'sd 3 * $signed(input_fmap_185[47:40]) +
	 3'sd 2 * $signed(input_fmap_185[55:48]) +
	 3'sd 2 * $signed(input_fmap_185[63:56]) +
	 3'sd 2 * $signed(input_fmap_185[71:64]);

logic signed [31:0] dw_conv_mac_186;
assign dw_conv_mac_186 = 
	 4'sd 5 * $signed(input_fmap_186[7:0]) +
	 4'sd 7 * $signed(input_fmap_186[15:8]) +
	 2'sd 1 * $signed(input_fmap_186[23:16]) +
	 2'sd 1 * $signed(input_fmap_186[39:32]) +
	 4'sd 4 * $signed(input_fmap_186[55:48]) +
	 4'sd 5 * $signed(input_fmap_186[63:56]) +
	 4'sd 5 * $signed(input_fmap_186[71:64]);

logic signed [31:0] dw_conv_mac_187;
assign dw_conv_mac_187 = 
	 3'sd 3 * $signed(input_fmap_187[7:0]) +
	 3'sd 2 * $signed(input_fmap_187[15:8]) +
	 4'sd 5 * $signed(input_fmap_187[23:16]) +
	 3'sd 3 * $signed(input_fmap_187[31:24]) +
	 2'sd 1 * $signed(input_fmap_187[39:32]) +
	 4'sd 5 * $signed(input_fmap_187[47:40]) +
	 4'sd 5 * $signed(input_fmap_187[55:48]) +
	 4'sd 5 * $signed(input_fmap_187[71:64]);

logic signed [31:0] dw_conv_mac_188;
assign dw_conv_mac_188 = 
	 3'sd 2 * $signed(input_fmap_188[7:0]) +
	 5'sd 8 * $signed(input_fmap_188[15:8]) +
	 2'sd 1 * $signed(input_fmap_188[23:16]) +
	 4'sd 7 * $signed(input_fmap_188[31:24]) +
	 2'sd 1 * $signed(input_fmap_188[39:32]) +
	 4'sd 7 * $signed(input_fmap_188[47:40]) +
	 4'sd 6 * $signed(input_fmap_188[55:48]) +
	 3'sd 2 * $signed(input_fmap_188[63:56]) +
	 4'sd 6 * $signed(input_fmap_188[71:64]);

logic signed [31:0] dw_conv_mac_189;
assign dw_conv_mac_189 = 
	 4'sd 4 * $signed(input_fmap_189[15:8]) +
	 4'sd 4 * $signed(input_fmap_189[23:16]) +
	 4'sd 4 * $signed(input_fmap_189[31:24]) +
	 3'sd 3 * $signed(input_fmap_189[39:32]) +
	 4'sd 4 * $signed(input_fmap_189[47:40]) +
	 4'sd 7 * $signed(input_fmap_189[55:48]) +
	 4'sd 7 * $signed(input_fmap_189[63:56]) +
	 4'sd 4 * $signed(input_fmap_189[71:64]);

logic signed [31:0] dw_conv_mac_190;
assign dw_conv_mac_190 = 
	 3'sd 3 * $signed(input_fmap_190[7:0]) +
	 3'sd 2 * $signed(input_fmap_190[23:16]) +
	 4'sd 4 * $signed(input_fmap_190[31:24]) +
	 4'sd 5 * $signed(input_fmap_190[39:32]) +
	 3'sd 3 * $signed(input_fmap_190[47:40]) +
	 4'sd 7 * $signed(input_fmap_190[55:48]) +
	 4'sd 5 * $signed(input_fmap_190[63:56]);

logic signed [31:0] dw_conv_mac_191;
assign dw_conv_mac_191 = 
	 3'sd 2 * $signed(input_fmap_191[7:0]) +
	 4'sd 5 * $signed(input_fmap_191[15:8]) +
	 2'sd 1 * $signed(input_fmap_191[23:16]) +
	 3'sd 3 * $signed(input_fmap_191[31:24]) +
	 4'sd 6 * $signed(input_fmap_191[47:40]) +
	 4'sd 7 * $signed(input_fmap_191[55:48]) +
	 4'sd 4 * $signed(input_fmap_191[63:56]) +
	 4'sd 7 * $signed(input_fmap_191[71:64]);

logic signed [31:0] dw_conv_mac_192;
assign dw_conv_mac_192 = 
	 2'sd 1 * $signed(input_fmap_192[7:0]) +
	 4'sd 4 * $signed(input_fmap_192[23:16]) +
	 4'sd 7 * $signed(input_fmap_192[31:24]) +
	 4'sd 6 * $signed(input_fmap_192[39:32]) +
	 3'sd 2 * $signed(input_fmap_192[47:40]) +
	 4'sd 7 * $signed(input_fmap_192[55:48]) +
	 4'sd 5 * $signed(input_fmap_192[71:64]);

logic signed [31:0] dw_conv_mac_193;
assign dw_conv_mac_193 = 
	 5'sd 8 * $signed(input_fmap_193[7:0]) +
	 4'sd 5 * $signed(input_fmap_193[15:8]) +
	 2'sd 1 * $signed(input_fmap_193[23:16]) +
	 3'sd 2 * $signed(input_fmap_193[31:24]) +
	 3'sd 3 * $signed(input_fmap_193[39:32]) +
	 2'sd 1 * $signed(input_fmap_193[47:40]) +
	 3'sd 2 * $signed(input_fmap_193[55:48]) +
	 3'sd 3 * $signed(input_fmap_193[63:56]);

logic signed [31:0] dw_conv_mac_194;
assign dw_conv_mac_194 = 
	 4'sd 4 * $signed(input_fmap_194[15:8]) +
	 3'sd 3 * $signed(input_fmap_194[23:16]) +
	 2'sd 1 * $signed(input_fmap_194[31:24]) +
	 2'sd 1 * $signed(input_fmap_194[39:32]) +
	 3'sd 2 * $signed(input_fmap_194[47:40]) +
	 2'sd 1 * $signed(input_fmap_194[55:48]) +
	 4'sd 7 * $signed(input_fmap_194[63:56]) +
	 4'sd 5 * $signed(input_fmap_194[71:64]);

logic signed [31:0] dw_conv_mac_195;
assign dw_conv_mac_195 = 
	 4'sd 7 * $signed(input_fmap_195[7:0]) +
	 2'sd 1 * $signed(input_fmap_195[15:8]) +
	 4'sd 4 * $signed(input_fmap_195[23:16]) +
	 4'sd 4 * $signed(input_fmap_195[31:24]) +
	 3'sd 3 * $signed(input_fmap_195[47:40]) +
	 4'sd 6 * $signed(input_fmap_195[55:48]) +
	 2'sd 1 * $signed(input_fmap_195[63:56]) +
	 4'sd 6 * $signed(input_fmap_195[71:64]);

logic signed [31:0] dw_conv_mac_196;
assign dw_conv_mac_196 = 
	 3'sd 3 * $signed(input_fmap_196[7:0]) +
	 4'sd 5 * $signed(input_fmap_196[15:8]) +
	 4'sd 7 * $signed(input_fmap_196[23:16]) +
	 3'sd 2 * $signed(input_fmap_196[31:24]) +
	 4'sd 4 * $signed(input_fmap_196[39:32]) +
	 4'sd 6 * $signed(input_fmap_196[47:40]) +
	 3'sd 2 * $signed(input_fmap_196[55:48]) +
	 4'sd 7 * $signed(input_fmap_196[63:56]) +
	 4'sd 4 * $signed(input_fmap_196[71:64]);

logic signed [31:0] dw_conv_mac_197;
assign dw_conv_mac_197 = 
	 4'sd 6 * $signed(input_fmap_197[7:0]) +
	 3'sd 2 * $signed(input_fmap_197[23:16]) +
	 5'sd 8 * $signed(input_fmap_197[31:24]) +
	 4'sd 5 * $signed(input_fmap_197[39:32]) +
	 4'sd 7 * $signed(input_fmap_197[47:40]) +
	 4'sd 4 * $signed(input_fmap_197[55:48]) +
	 3'sd 2 * $signed(input_fmap_197[63:56]) +
	 5'sd 8 * $signed(input_fmap_197[71:64]);

logic signed [31:0] dw_conv_mac_198;
assign dw_conv_mac_198 = 
	 3'sd 2 * $signed(input_fmap_198[7:0]) +
	 4'sd 6 * $signed(input_fmap_198[23:16]) +
	 4'sd 7 * $signed(input_fmap_198[31:24]) +
	 3'sd 2 * $signed(input_fmap_198[39:32]) +
	 5'sd 8 * $signed(input_fmap_198[47:40]) +
	 3'sd 3 * $signed(input_fmap_198[55:48]) +
	 3'sd 3 * $signed(input_fmap_198[63:56]) +
	 4'sd 6 * $signed(input_fmap_198[71:64]);

logic signed [31:0] dw_conv_mac_199;
assign dw_conv_mac_199 = 
	 3'sd 3 * $signed(input_fmap_199[7:0]) +
	 3'sd 2 * $signed(input_fmap_199[15:8]) +
	 4'sd 4 * $signed(input_fmap_199[23:16]) +
	 4'sd 6 * $signed(input_fmap_199[31:24]) +
	 2'sd 1 * $signed(input_fmap_199[39:32]) +
	 4'sd 5 * $signed(input_fmap_199[47:40]) +
	 3'sd 3 * $signed(input_fmap_199[55:48]) +
	 4'sd 5 * $signed(input_fmap_199[63:56]);

logic signed [31:0] dw_conv_mac_200;
assign dw_conv_mac_200 = 
	 4'sd 5 * $signed(input_fmap_200[7:0]) +
	 4'sd 4 * $signed(input_fmap_200[15:8]) +
	 4'sd 6 * $signed(input_fmap_200[23:16]) +
	 4'sd 7 * $signed(input_fmap_200[31:24]) +
	 4'sd 6 * $signed(input_fmap_200[39:32]) +
	 2'sd 1 * $signed(input_fmap_200[47:40]) +
	 4'sd 7 * $signed(input_fmap_200[55:48]) +
	 3'sd 3 * $signed(input_fmap_200[63:56]) +
	 2'sd 1 * $signed(input_fmap_200[71:64]);

logic signed [31:0] dw_conv_mac_201;
assign dw_conv_mac_201 = 
	 5'sd 8 * $signed(input_fmap_201[7:0]) +
	 3'sd 2 * $signed(input_fmap_201[15:8]) +
	 4'sd 4 * $signed(input_fmap_201[23:16]) +
	 4'sd 5 * $signed(input_fmap_201[31:24]) +
	 5'sd 8 * $signed(input_fmap_201[39:32]) +
	 2'sd 1 * $signed(input_fmap_201[47:40]) +
	 3'sd 3 * $signed(input_fmap_201[55:48]) +
	 5'sd 8 * $signed(input_fmap_201[63:56]) +
	 4'sd 5 * $signed(input_fmap_201[71:64]);

logic signed [31:0] dw_conv_mac_202;
assign dw_conv_mac_202 = 
	 3'sd 3 * $signed(input_fmap_202[7:0]) +
	 4'sd 5 * $signed(input_fmap_202[15:8]) +
	 3'sd 2 * $signed(input_fmap_202[23:16]) +
	 4'sd 7 * $signed(input_fmap_202[31:24]) +
	 2'sd 1 * $signed(input_fmap_202[39:32]) +
	 4'sd 4 * $signed(input_fmap_202[47:40]) +
	 4'sd 5 * $signed(input_fmap_202[55:48]) +
	 4'sd 5 * $signed(input_fmap_202[63:56]) +
	 2'sd 1 * $signed(input_fmap_202[71:64]);

logic signed [31:0] dw_conv_mac_203;
assign dw_conv_mac_203 = 
	 4'sd 4 * $signed(input_fmap_203[7:0]) +
	 2'sd 1 * $signed(input_fmap_203[15:8]) +
	 4'sd 5 * $signed(input_fmap_203[23:16]) +
	 2'sd 1 * $signed(input_fmap_203[31:24]) +
	 2'sd 1 * $signed(input_fmap_203[39:32]) +
	 5'sd 8 * $signed(input_fmap_203[47:40]) +
	 4'sd 6 * $signed(input_fmap_203[63:56]) +
	 2'sd 1 * $signed(input_fmap_203[71:64]);

logic signed [31:0] dw_conv_mac_204;
assign dw_conv_mac_204 = 
	 3'sd 3 * $signed(input_fmap_204[23:16]) +
	 3'sd 2 * $signed(input_fmap_204[31:24]) +
	 4'sd 6 * $signed(input_fmap_204[39:32]) +
	 3'sd 2 * $signed(input_fmap_204[47:40]) +
	 3'sd 3 * $signed(input_fmap_204[55:48]) +
	 4'sd 7 * $signed(input_fmap_204[63:56]) +
	 4'sd 5 * $signed(input_fmap_204[71:64]);

logic signed [31:0] dw_conv_mac_205;
assign dw_conv_mac_205 = 
	 5'sd 8 * $signed(input_fmap_205[7:0]) +
	 2'sd 1 * $signed(input_fmap_205[15:8]) +
	 2'sd 1 * $signed(input_fmap_205[23:16]) +
	 4'sd 6 * $signed(input_fmap_205[31:24]) +
	 2'sd 1 * $signed(input_fmap_205[39:32]) +
	 5'sd 8 * $signed(input_fmap_205[47:40]) +
	 2'sd 1 * $signed(input_fmap_205[55:48]) +
	 3'sd 2 * $signed(input_fmap_205[63:56]) +
	 3'sd 3 * $signed(input_fmap_205[71:64]);

logic signed [31:0] dw_conv_mac_206;
assign dw_conv_mac_206 = 
	 4'sd 4 * $signed(input_fmap_206[7:0]) +
	 4'sd 4 * $signed(input_fmap_206[23:16]) +
	 4'sd 6 * $signed(input_fmap_206[31:24]) +
	 4'sd 4 * $signed(input_fmap_206[39:32]) +
	 3'sd 3 * $signed(input_fmap_206[47:40]) +
	 3'sd 3 * $signed(input_fmap_206[55:48]) +
	 3'sd 3 * $signed(input_fmap_206[63:56]) +
	 3'sd 2 * $signed(input_fmap_206[71:64]);

logic signed [31:0] dw_conv_mac_207;
assign dw_conv_mac_207 = 
	 3'sd 3 * $signed(input_fmap_207[7:0]) +
	 4'sd 4 * $signed(input_fmap_207[15:8]) +
	 3'sd 2 * $signed(input_fmap_207[23:16]) +
	 4'sd 5 * $signed(input_fmap_207[31:24]) +
	 4'sd 7 * $signed(input_fmap_207[39:32]) +
	 4'sd 5 * $signed(input_fmap_207[47:40]) +
	 4'sd 6 * $signed(input_fmap_207[55:48]) +
	 3'sd 3 * $signed(input_fmap_207[63:56]) +
	 3'sd 3 * $signed(input_fmap_207[71:64]);

logic signed [31:0] dw_conv_mac_208;
assign dw_conv_mac_208 = 
	 3'sd 2 * $signed(input_fmap_208[7:0]) +
	 4'sd 6 * $signed(input_fmap_208[15:8]) +
	 2'sd 1 * $signed(input_fmap_208[23:16]) +
	 4'sd 5 * $signed(input_fmap_208[31:24]) +
	 4'sd 6 * $signed(input_fmap_208[39:32]) +
	 3'sd 2 * $signed(input_fmap_208[47:40]) +
	 4'sd 6 * $signed(input_fmap_208[55:48]) +
	 2'sd 1 * $signed(input_fmap_208[63:56]) +
	 4'sd 5 * $signed(input_fmap_208[71:64]);

logic signed [31:0] dw_conv_mac_209;
assign dw_conv_mac_209 = 
	 2'sd 1 * $signed(input_fmap_209[7:0]) +
	 3'sd 3 * $signed(input_fmap_209[15:8]) +
	 3'sd 3 * $signed(input_fmap_209[23:16]) +
	 4'sd 5 * $signed(input_fmap_209[31:24]) +
	 2'sd 1 * $signed(input_fmap_209[39:32]) +
	 5'sd 8 * $signed(input_fmap_209[47:40]) +
	 4'sd 7 * $signed(input_fmap_209[55:48]) +
	 4'sd 5 * $signed(input_fmap_209[71:64]);

logic signed [31:0] dw_conv_mac_210;
assign dw_conv_mac_210 = 
	 5'sd 8 * $signed(input_fmap_210[7:0]) +
	 3'sd 2 * $signed(input_fmap_210[15:8]) +
	 4'sd 6 * $signed(input_fmap_210[23:16]) +
	 2'sd 1 * $signed(input_fmap_210[31:24]) +
	 4'sd 4 * $signed(input_fmap_210[39:32]) +
	 3'sd 2 * $signed(input_fmap_210[47:40]) +
	 3'sd 3 * $signed(input_fmap_210[55:48]) +
	 3'sd 3 * $signed(input_fmap_210[63:56]) +
	 2'sd 1 * $signed(input_fmap_210[71:64]);

logic signed [31:0] dw_conv_mac_211;
assign dw_conv_mac_211 = 
	 4'sd 6 * $signed(input_fmap_211[7:0]) +
	 2'sd 1 * $signed(input_fmap_211[15:8]) +
	 2'sd 1 * $signed(input_fmap_211[23:16]) +
	 2'sd 1 * $signed(input_fmap_211[31:24]) +
	 4'sd 7 * $signed(input_fmap_211[39:32]) +
	 5'sd 8 * $signed(input_fmap_211[47:40]) +
	 4'sd 6 * $signed(input_fmap_211[55:48]) +
	 4'sd 4 * $signed(input_fmap_211[63:56]) +
	 4'sd 7 * $signed(input_fmap_211[71:64]);

logic signed [31:0] dw_conv_mac_212;
assign dw_conv_mac_212 = 
	 3'sd 3 * $signed(input_fmap_212[7:0]) +
	 5'sd 8 * $signed(input_fmap_212[15:8]) +
	 4'sd 6 * $signed(input_fmap_212[23:16]) +
	 4'sd 4 * $signed(input_fmap_212[31:24]) +
	 4'sd 5 * $signed(input_fmap_212[39:32]) +
	 4'sd 6 * $signed(input_fmap_212[47:40]) +
	 4'sd 5 * $signed(input_fmap_212[55:48]) +
	 3'sd 2 * $signed(input_fmap_212[63:56]) +
	 3'sd 2 * $signed(input_fmap_212[71:64]);

logic signed [31:0] dw_conv_mac_213;
assign dw_conv_mac_213 = 
	 2'sd 1 * $signed(input_fmap_213[7:0]) +
	 4'sd 6 * $signed(input_fmap_213[15:8]) +
	 3'sd 3 * $signed(input_fmap_213[23:16]) +
	 4'sd 4 * $signed(input_fmap_213[31:24]) +
	 3'sd 2 * $signed(input_fmap_213[39:32]) +
	 4'sd 4 * $signed(input_fmap_213[47:40]) +
	 3'sd 3 * $signed(input_fmap_213[55:48]) +
	 4'sd 4 * $signed(input_fmap_213[63:56]) +
	 3'sd 2 * $signed(input_fmap_213[71:64]);

logic signed [31:0] dw_conv_mac_214;
assign dw_conv_mac_214 = 
	 3'sd 3 * $signed(input_fmap_214[15:8]) +
	 4'sd 6 * $signed(input_fmap_214[23:16]) +
	 4'sd 4 * $signed(input_fmap_214[31:24]) +
	 3'sd 2 * $signed(input_fmap_214[39:32]) +
	 4'sd 4 * $signed(input_fmap_214[47:40]) +
	 5'sd 8 * $signed(input_fmap_214[55:48]) +
	 4'sd 6 * $signed(input_fmap_214[63:56]) +
	 4'sd 5 * $signed(input_fmap_214[71:64]);

logic signed [31:0] dw_conv_mac_215;
assign dw_conv_mac_215 = 
	 3'sd 2 * $signed(input_fmap_215[7:0]) +
	 3'sd 2 * $signed(input_fmap_215[15:8]) +
	 4'sd 4 * $signed(input_fmap_215[23:16]) +
	 3'sd 2 * $signed(input_fmap_215[31:24]) +
	 4'sd 5 * $signed(input_fmap_215[39:32]) +
	 4'sd 7 * $signed(input_fmap_215[47:40]) +
	 4'sd 6 * $signed(input_fmap_215[55:48]) +
	 3'sd 2 * $signed(input_fmap_215[63:56]) +
	 4'sd 7 * $signed(input_fmap_215[71:64]);

logic signed [31:0] dw_conv_mac_216;
assign dw_conv_mac_216 = 
	 3'sd 3 * $signed(input_fmap_216[7:0]) +
	 4'sd 5 * $signed(input_fmap_216[15:8]) +
	 4'sd 6 * $signed(input_fmap_216[23:16]) +
	 2'sd 1 * $signed(input_fmap_216[31:24]) +
	 4'sd 5 * $signed(input_fmap_216[39:32]) +
	 3'sd 2 * $signed(input_fmap_216[47:40]) +
	 3'sd 3 * $signed(input_fmap_216[55:48]) +
	 4'sd 5 * $signed(input_fmap_216[63:56]);

logic signed [31:0] dw_conv_mac_217;
assign dw_conv_mac_217 = 
	 3'sd 2 * $signed(input_fmap_217[7:0]) +
	 4'sd 4 * $signed(input_fmap_217[15:8]) +
	 3'sd 3 * $signed(input_fmap_217[31:24]) +
	 3'sd 2 * $signed(input_fmap_217[39:32]) +
	 3'sd 2 * $signed(input_fmap_217[55:48]) +
	 3'sd 2 * $signed(input_fmap_217[63:56]) +
	 4'sd 5 * $signed(input_fmap_217[71:64]);

logic signed [31:0] dw_conv_mac_218;
assign dw_conv_mac_218 = 
	 2'sd 1 * $signed(input_fmap_218[7:0]) +
	 3'sd 2 * $signed(input_fmap_218[15:8]) +
	 2'sd 1 * $signed(input_fmap_218[23:16]) +
	 4'sd 5 * $signed(input_fmap_218[31:24]) +
	 3'sd 2 * $signed(input_fmap_218[39:32]) +
	 3'sd 3 * $signed(input_fmap_218[47:40]) +
	 4'sd 6 * $signed(input_fmap_218[55:48]) +
	 3'sd 3 * $signed(input_fmap_218[63:56]) +
	 4'sd 7 * $signed(input_fmap_218[71:64]);

logic signed [31:0] dw_conv_mac_219;
assign dw_conv_mac_219 = 
	 4'sd 5 * $signed(input_fmap_219[7:0]) +
	 4'sd 4 * $signed(input_fmap_219[15:8]) +
	 3'sd 3 * $signed(input_fmap_219[23:16]) +
	 4'sd 5 * $signed(input_fmap_219[31:24]) +
	 3'sd 3 * $signed(input_fmap_219[39:32]) +
	 2'sd 1 * $signed(input_fmap_219[47:40]) +
	 4'sd 5 * $signed(input_fmap_219[55:48]) +
	 3'sd 2 * $signed(input_fmap_219[63:56]) +
	 3'sd 3 * $signed(input_fmap_219[71:64]);

logic signed [31:0] dw_conv_mac_220;
assign dw_conv_mac_220 = 
	 3'sd 3 * $signed(input_fmap_220[7:0]) +
	 2'sd 1 * $signed(input_fmap_220[15:8]) +
	 4'sd 6 * $signed(input_fmap_220[23:16]) +
	 4'sd 4 * $signed(input_fmap_220[31:24]) +
	 4'sd 7 * $signed(input_fmap_220[39:32]) +
	 3'sd 3 * $signed(input_fmap_220[47:40]) +
	 3'sd 3 * $signed(input_fmap_220[55:48]) +
	 4'sd 6 * $signed(input_fmap_220[63:56]) +
	 4'sd 6 * $signed(input_fmap_220[71:64]);

logic signed [31:0] dw_conv_mac_221;
assign dw_conv_mac_221 = 
	 4'sd 4 * $signed(input_fmap_221[15:8]) +
	 5'sd 8 * $signed(input_fmap_221[23:16]) +
	 3'sd 2 * $signed(input_fmap_221[31:24]) +
	 4'sd 7 * $signed(input_fmap_221[39:32]) +
	 2'sd 1 * $signed(input_fmap_221[47:40]) +
	 4'sd 4 * $signed(input_fmap_221[55:48]) +
	 4'sd 7 * $signed(input_fmap_221[63:56]) +
	 2'sd 1 * $signed(input_fmap_221[71:64]);

logic signed [31:0] dw_conv_mac_222;
assign dw_conv_mac_222 = 
	 5'sd 8 * $signed(input_fmap_222[7:0]) +
	 5'sd 8 * $signed(input_fmap_222[15:8]) +
	 4'sd 7 * $signed(input_fmap_222[23:16]) +
	 4'sd 6 * $signed(input_fmap_222[31:24]) +
	 4'sd 7 * $signed(input_fmap_222[39:32]) +
	 4'sd 5 * $signed(input_fmap_222[47:40]) +
	 4'sd 7 * $signed(input_fmap_222[55:48]) +
	 4'sd 5 * $signed(input_fmap_222[63:56]) +
	 4'sd 5 * $signed(input_fmap_222[71:64]);

logic signed [31:0] dw_conv_mac_223;
assign dw_conv_mac_223 = 
	 3'sd 3 * $signed(input_fmap_223[7:0]) +
	 2'sd 1 * $signed(input_fmap_223[23:16]) +
	 3'sd 2 * $signed(input_fmap_223[31:24]) +
	 4'sd 4 * $signed(input_fmap_223[39:32]) +
	 4'sd 5 * $signed(input_fmap_223[47:40]) +
	 5'sd 8 * $signed(input_fmap_223[55:48]) +
	 3'sd 2 * $signed(input_fmap_223[63:56]) +
	 2'sd 1 * $signed(input_fmap_223[71:64]);

logic signed [31:0] dw_conv_mac_224;
assign dw_conv_mac_224 = 
	 4'sd 7 * $signed(input_fmap_224[7:0]) +
	 4'sd 6 * $signed(input_fmap_224[15:8]) +
	 3'sd 2 * $signed(input_fmap_224[23:16]) +
	 3'sd 3 * $signed(input_fmap_224[31:24]) +
	 4'sd 4 * $signed(input_fmap_224[39:32]) +
	 4'sd 5 * $signed(input_fmap_224[47:40]) +
	 4'sd 4 * $signed(input_fmap_224[55:48]) +
	 4'sd 5 * $signed(input_fmap_224[63:56]) +
	 4'sd 7 * $signed(input_fmap_224[71:64]);

logic signed [31:0] dw_conv_mac_225;
assign dw_conv_mac_225 = 
	 3'sd 3 * $signed(input_fmap_225[7:0]) +
	 4'sd 7 * $signed(input_fmap_225[15:8]) +
	 2'sd 1 * $signed(input_fmap_225[23:16]) +
	 4'sd 7 * $signed(input_fmap_225[31:24]) +
	 4'sd 4 * $signed(input_fmap_225[39:32]) +
	 4'sd 7 * $signed(input_fmap_225[47:40]) +
	 4'sd 5 * $signed(input_fmap_225[55:48]) +
	 4'sd 7 * $signed(input_fmap_225[63:56]) +
	 4'sd 6 * $signed(input_fmap_225[71:64]);

logic signed [31:0] dw_conv_mac_226;
assign dw_conv_mac_226 = 
	 2'sd 1 * $signed(input_fmap_226[7:0]) +
	 2'sd 1 * $signed(input_fmap_226[15:8]) +
	 3'sd 3 * $signed(input_fmap_226[23:16]) +
	 4'sd 4 * $signed(input_fmap_226[31:24]) +
	 2'sd 1 * $signed(input_fmap_226[39:32]) +
	 3'sd 3 * $signed(input_fmap_226[47:40]) +
	 3'sd 3 * $signed(input_fmap_226[55:48]) +
	 3'sd 2 * $signed(input_fmap_226[63:56]) +
	 4'sd 7 * $signed(input_fmap_226[71:64]);

logic signed [31:0] dw_conv_mac_227;
assign dw_conv_mac_227 = 
	 4'sd 6 * $signed(input_fmap_227[7:0]) +
	 4'sd 5 * $signed(input_fmap_227[15:8]) +
	 2'sd 1 * $signed(input_fmap_227[23:16]) +
	 4'sd 6 * $signed(input_fmap_227[31:24]) +
	 2'sd 1 * $signed(input_fmap_227[39:32]) +
	 3'sd 2 * $signed(input_fmap_227[47:40]) +
	 4'sd 6 * $signed(input_fmap_227[55:48]) +
	 4'sd 5 * $signed(input_fmap_227[63:56]) +
	 4'sd 4 * $signed(input_fmap_227[71:64]);

logic signed [31:0] dw_conv_mac_228;
assign dw_conv_mac_228 = 
	 4'sd 7 * $signed(input_fmap_228[7:0]) +
	 3'sd 3 * $signed(input_fmap_228[15:8]) +
	 4'sd 6 * $signed(input_fmap_228[23:16]) +
	 3'sd 2 * $signed(input_fmap_228[31:24]) +
	 4'sd 5 * $signed(input_fmap_228[39:32]) +
	 3'sd 3 * $signed(input_fmap_228[47:40]) +
	 2'sd 1 * $signed(input_fmap_228[55:48]) +
	 3'sd 3 * $signed(input_fmap_228[63:56]) +
	 3'sd 3 * $signed(input_fmap_228[71:64]);

logic signed [31:0] dw_conv_mac_229;
assign dw_conv_mac_229 = 
	 2'sd 1 * $signed(input_fmap_229[7:0]) +
	 4'sd 7 * $signed(input_fmap_229[15:8]) +
	 2'sd 1 * $signed(input_fmap_229[23:16]) +
	 4'sd 7 * $signed(input_fmap_229[31:24]) +
	 3'sd 2 * $signed(input_fmap_229[39:32]) +
	 4'sd 4 * $signed(input_fmap_229[47:40]) +
	 4'sd 7 * $signed(input_fmap_229[55:48]) +
	 4'sd 6 * $signed(input_fmap_229[71:64]);

logic signed [31:0] dw_conv_mac_230;
assign dw_conv_mac_230 = 
	 4'sd 6 * $signed(input_fmap_230[7:0]) +
	 3'sd 2 * $signed(input_fmap_230[15:8]) +
	 3'sd 2 * $signed(input_fmap_230[23:16]) +
	 3'sd 3 * $signed(input_fmap_230[31:24]) +
	 4'sd 4 * $signed(input_fmap_230[39:32]) +
	 2'sd 1 * $signed(input_fmap_230[47:40]) +
	 4'sd 7 * $signed(input_fmap_230[55:48]) +
	 2'sd 1 * $signed(input_fmap_230[63:56]) +
	 4'sd 7 * $signed(input_fmap_230[71:64]);

logic signed [31:0] dw_conv_mac_231;
assign dw_conv_mac_231 = 
	 3'sd 2 * $signed(input_fmap_231[7:0]) +
	 4'sd 7 * $signed(input_fmap_231[15:8]) +
	 3'sd 3 * $signed(input_fmap_231[31:24]) +
	 3'sd 3 * $signed(input_fmap_231[39:32]) +
	 2'sd 1 * $signed(input_fmap_231[47:40]) +
	 2'sd 1 * $signed(input_fmap_231[55:48]) +
	 5'sd 8 * $signed(input_fmap_231[63:56]) +
	 3'sd 2 * $signed(input_fmap_231[71:64]);

logic signed [31:0] dw_conv_mac_232;
assign dw_conv_mac_232 = 
	 4'sd 6 * $signed(input_fmap_232[7:0]) +
	 3'sd 2 * $signed(input_fmap_232[15:8]) +
	 4'sd 4 * $signed(input_fmap_232[23:16]) +
	 4'sd 5 * $signed(input_fmap_232[31:24]) +
	 4'sd 6 * $signed(input_fmap_232[39:32]) +
	 3'sd 2 * $signed(input_fmap_232[47:40]) +
	 2'sd 1 * $signed(input_fmap_232[55:48]) +
	 3'sd 3 * $signed(input_fmap_232[63:56]) +
	 3'sd 2 * $signed(input_fmap_232[71:64]);

logic signed [31:0] dw_conv_mac_233;
assign dw_conv_mac_233 = 
	 2'sd 1 * $signed(input_fmap_233[7:0]) +
	 4'sd 6 * $signed(input_fmap_233[15:8]) +
	 3'sd 3 * $signed(input_fmap_233[31:24]) +
	 4'sd 5 * $signed(input_fmap_233[39:32]) +
	 4'sd 7 * $signed(input_fmap_233[55:48]) +
	 4'sd 4 * $signed(input_fmap_233[63:56]) +
	 4'sd 6 * $signed(input_fmap_233[71:64]);

logic signed [31:0] dw_conv_mac_234;
assign dw_conv_mac_234 = 
	 3'sd 3 * $signed(input_fmap_234[7:0]) +
	 5'sd 8 * $signed(input_fmap_234[15:8]) +
	 5'sd 8 * $signed(input_fmap_234[23:16]) +
	 3'sd 2 * $signed(input_fmap_234[31:24]) +
	 2'sd 1 * $signed(input_fmap_234[39:32]) +
	 4'sd 7 * $signed(input_fmap_234[55:48]) +
	 4'sd 6 * $signed(input_fmap_234[63:56]) +
	 4'sd 7 * $signed(input_fmap_234[71:64]);

logic signed [31:0] dw_conv_mac_235;
assign dw_conv_mac_235 = 
	 3'sd 2 * $signed(input_fmap_235[7:0]) +
	 5'sd 8 * $signed(input_fmap_235[15:8]) +
	 4'sd 4 * $signed(input_fmap_235[23:16]) +
	 4'sd 7 * $signed(input_fmap_235[31:24]) +
	 2'sd 1 * $signed(input_fmap_235[39:32]) +
	 4'sd 4 * $signed(input_fmap_235[47:40]) +
	 4'sd 6 * $signed(input_fmap_235[55:48]) +
	 2'sd 1 * $signed(input_fmap_235[63:56]) +
	 3'sd 2 * $signed(input_fmap_235[71:64]);

logic signed [31:0] dw_conv_mac_236;
assign dw_conv_mac_236 = 
	 2'sd 1 * $signed(input_fmap_236[7:0]) +
	 4'sd 7 * $signed(input_fmap_236[15:8]) +
	 3'sd 2 * $signed(input_fmap_236[23:16]) +
	 3'sd 3 * $signed(input_fmap_236[31:24]) +
	 4'sd 6 * $signed(input_fmap_236[39:32]) +
	 5'sd 8 * $signed(input_fmap_236[47:40]) +
	 4'sd 7 * $signed(input_fmap_236[55:48]) +
	 4'sd 5 * $signed(input_fmap_236[63:56]) +
	 3'sd 3 * $signed(input_fmap_236[71:64]);

logic signed [31:0] dw_conv_mac_237;
assign dw_conv_mac_237 = 
	 3'sd 3 * $signed(input_fmap_237[7:0]) +
	 4'sd 4 * $signed(input_fmap_237[15:8]) +
	 4'sd 5 * $signed(input_fmap_237[23:16]) +
	 4'sd 5 * $signed(input_fmap_237[31:24]) +
	 4'sd 5 * $signed(input_fmap_237[47:40]) +
	 2'sd 1 * $signed(input_fmap_237[55:48]) +
	 5'sd 8 * $signed(input_fmap_237[63:56]) +
	 3'sd 2 * $signed(input_fmap_237[71:64]);

logic signed [31:0] dw_conv_mac_238;
assign dw_conv_mac_238 = 
	 3'sd 2 * $signed(input_fmap_238[7:0]) +
	 3'sd 3 * $signed(input_fmap_238[15:8]) +
	 4'sd 7 * $signed(input_fmap_238[23:16]) +
	 3'sd 3 * $signed(input_fmap_238[31:24]) +
	 4'sd 6 * $signed(input_fmap_238[39:32]) +
	 4'sd 5 * $signed(input_fmap_238[47:40]) +
	 4'sd 7 * $signed(input_fmap_238[63:56]) +
	 3'sd 3 * $signed(input_fmap_238[71:64]);

logic signed [31:0] dw_conv_mac_239;
assign dw_conv_mac_239 = 
	 3'sd 2 * $signed(input_fmap_239[7:0]) +
	 4'sd 7 * $signed(input_fmap_239[15:8]) +
	 4'sd 5 * $signed(input_fmap_239[23:16]) +
	 4'sd 4 * $signed(input_fmap_239[31:24]) +
	 2'sd 1 * $signed(input_fmap_239[39:32]) +
	 4'sd 6 * $signed(input_fmap_239[47:40]) +
	 3'sd 3 * $signed(input_fmap_239[55:48]) +
	 4'sd 4 * $signed(input_fmap_239[63:56]) +
	 5'sd 8 * $signed(input_fmap_239[71:64]);

logic signed [31:0] dw_conv_mac_240;
assign dw_conv_mac_240 = 
	 2'sd 1 * $signed(input_fmap_240[7:0]) +
	 4'sd 6 * $signed(input_fmap_240[15:8]) +
	 4'sd 4 * $signed(input_fmap_240[23:16]) +
	 4'sd 4 * $signed(input_fmap_240[31:24]) +
	 5'sd 8 * $signed(input_fmap_240[39:32]) +
	 5'sd 8 * $signed(input_fmap_240[47:40]) +
	 3'sd 2 * $signed(input_fmap_240[55:48]) +
	 3'sd 2 * $signed(input_fmap_240[63:56]) +
	 4'sd 4 * $signed(input_fmap_240[71:64]);

logic signed [31:0] dw_conv_mac_241;
assign dw_conv_mac_241 = 
	 4'sd 6 * $signed(input_fmap_241[15:8]) +
	 2'sd 1 * $signed(input_fmap_241[31:24]) +
	 4'sd 4 * $signed(input_fmap_241[39:32]) +
	 3'sd 3 * $signed(input_fmap_241[47:40]) +
	 4'sd 6 * $signed(input_fmap_241[55:48]) +
	 3'sd 3 * $signed(input_fmap_241[63:56]) +
	 5'sd 8 * $signed(input_fmap_241[71:64]);

logic signed [31:0] dw_conv_mac_242;
assign dw_conv_mac_242 = 
	 3'sd 2 * $signed(input_fmap_242[7:0]) +
	 4'sd 5 * $signed(input_fmap_242[15:8]) +
	 4'sd 7 * $signed(input_fmap_242[23:16]) +
	 4'sd 7 * $signed(input_fmap_242[31:24]) +
	 4'sd 7 * $signed(input_fmap_242[39:32]) +
	 4'sd 6 * $signed(input_fmap_242[47:40]) +
	 4'sd 7 * $signed(input_fmap_242[55:48]) +
	 2'sd 1 * $signed(input_fmap_242[63:56]) +
	 4'sd 7 * $signed(input_fmap_242[71:64]);

logic signed [31:0] dw_conv_mac_243;
assign dw_conv_mac_243 = 
	 4'sd 7 * $signed(input_fmap_243[7:0]) +
	 4'sd 6 * $signed(input_fmap_243[15:8]) +
	 2'sd 1 * $signed(input_fmap_243[39:32]) +
	 2'sd 1 * $signed(input_fmap_243[47:40]) +
	 4'sd 6 * $signed(input_fmap_243[55:48]) +
	 4'sd 6 * $signed(input_fmap_243[63:56]) +
	 3'sd 3 * $signed(input_fmap_243[71:64]);

logic signed [31:0] dw_conv_mac_244;
assign dw_conv_mac_244 = 
	 4'sd 6 * $signed(input_fmap_244[7:0]) +
	 4'sd 6 * $signed(input_fmap_244[15:8]) +
	 4'sd 4 * $signed(input_fmap_244[23:16]) +
	 3'sd 3 * $signed(input_fmap_244[31:24]) +
	 4'sd 6 * $signed(input_fmap_244[39:32]) +
	 3'sd 3 * $signed(input_fmap_244[47:40]) +
	 5'sd 8 * $signed(input_fmap_244[55:48]) +
	 4'sd 5 * $signed(input_fmap_244[63:56]) +
	 4'sd 7 * $signed(input_fmap_244[71:64]);

logic signed [31:0] dw_conv_mac_245;
assign dw_conv_mac_245 = 
	 2'sd 1 * $signed(input_fmap_245[7:0]) +
	 4'sd 4 * $signed(input_fmap_245[15:8]) +
	 5'sd 8 * $signed(input_fmap_245[23:16]) +
	 4'sd 5 * $signed(input_fmap_245[31:24]) +
	 2'sd 1 * $signed(input_fmap_245[39:32]) +
	 3'sd 2 * $signed(input_fmap_245[47:40]) +
	 2'sd 1 * $signed(input_fmap_245[55:48]) +
	 4'sd 5 * $signed(input_fmap_245[63:56]) +
	 4'sd 5 * $signed(input_fmap_245[71:64]);

logic signed [31:0] dw_conv_mac_246;
assign dw_conv_mac_246 = 
	 4'sd 5 * $signed(input_fmap_246[7:0]) +
	 4'sd 7 * $signed(input_fmap_246[15:8]) +
	 4'sd 6 * $signed(input_fmap_246[23:16]) +
	 2'sd 1 * $signed(input_fmap_246[31:24]) +
	 4'sd 4 * $signed(input_fmap_246[39:32]) +
	 3'sd 3 * $signed(input_fmap_246[47:40]) +
	 4'sd 7 * $signed(input_fmap_246[55:48]) +
	 4'sd 4 * $signed(input_fmap_246[63:56]) +
	 4'sd 6 * $signed(input_fmap_246[71:64]);

logic signed [31:0] dw_conv_mac_247;
assign dw_conv_mac_247 = 
	 2'sd 1 * $signed(input_fmap_247[7:0]) +
	 4'sd 4 * $signed(input_fmap_247[15:8]) +
	 4'sd 5 * $signed(input_fmap_247[23:16]) +
	 3'sd 2 * $signed(input_fmap_247[39:32]) +
	 4'sd 4 * $signed(input_fmap_247[47:40]) +
	 3'sd 3 * $signed(input_fmap_247[55:48]) +
	 3'sd 3 * $signed(input_fmap_247[63:56]) +
	 4'sd 6 * $signed(input_fmap_247[71:64]);

logic signed [31:0] dw_conv_mac_248;
assign dw_conv_mac_248 = 
	 4'sd 5 * $signed(input_fmap_248[7:0]) +
	 4'sd 4 * $signed(input_fmap_248[15:8]) +
	 4'sd 4 * $signed(input_fmap_248[23:16]) +
	 4'sd 5 * $signed(input_fmap_248[31:24]) +
	 3'sd 3 * $signed(input_fmap_248[39:32]) +
	 4'sd 4 * $signed(input_fmap_248[47:40]) +
	 4'sd 6 * $signed(input_fmap_248[55:48]) +
	 3'sd 3 * $signed(input_fmap_248[63:56]) +
	 2'sd 1 * $signed(input_fmap_248[71:64]);

logic signed [31:0] dw_conv_mac_249;
assign dw_conv_mac_249 = 
	 4'sd 7 * $signed(input_fmap_249[7:0]) +
	 4'sd 5 * $signed(input_fmap_249[15:8]) +
	 3'sd 2 * $signed(input_fmap_249[23:16]) +
	 4'sd 6 * $signed(input_fmap_249[31:24]) +
	 2'sd 1 * $signed(input_fmap_249[39:32]) +
	 3'sd 2 * $signed(input_fmap_249[47:40]) +
	 4'sd 6 * $signed(input_fmap_249[55:48]) +
	 4'sd 7 * $signed(input_fmap_249[63:56]) +
	 4'sd 5 * $signed(input_fmap_249[71:64]);

logic signed [31:0] dw_conv_mac_250;
assign dw_conv_mac_250 = 
	 4'sd 4 * $signed(input_fmap_250[7:0]) +
	 4'sd 7 * $signed(input_fmap_250[15:8]) +
	 2'sd 1 * $signed(input_fmap_250[23:16]) +
	 4'sd 5 * $signed(input_fmap_250[31:24]) +
	 4'sd 6 * $signed(input_fmap_250[39:32]) +
	 4'sd 6 * $signed(input_fmap_250[47:40]) +
	 4'sd 7 * $signed(input_fmap_250[55:48]) +
	 2'sd 1 * $signed(input_fmap_250[63:56]) +
	 4'sd 5 * $signed(input_fmap_250[71:64]);

logic signed [31:0] dw_conv_mac_251;
assign dw_conv_mac_251 = 
	 4'sd 5 * $signed(input_fmap_251[15:8]) +
	 4'sd 5 * $signed(input_fmap_251[23:16]) +
	 4'sd 6 * $signed(input_fmap_251[31:24]) +
	 3'sd 3 * $signed(input_fmap_251[39:32]) +
	 4'sd 7 * $signed(input_fmap_251[47:40]) +
	 3'sd 3 * $signed(input_fmap_251[55:48]) +
	 4'sd 4 * $signed(input_fmap_251[63:56]) +
	 4'sd 7 * $signed(input_fmap_251[71:64]);

logic signed [31:0] dw_conv_mac_252;
assign dw_conv_mac_252 = 
	 4'sd 6 * $signed(input_fmap_252[7:0]) +
	 4'sd 5 * $signed(input_fmap_252[23:16]) +
	 3'sd 3 * $signed(input_fmap_252[39:32]) +
	 4'sd 7 * $signed(input_fmap_252[47:40]) +
	 4'sd 4 * $signed(input_fmap_252[55:48]) +
	 4'sd 5 * $signed(input_fmap_252[63:56]) +
	 4'sd 7 * $signed(input_fmap_252[71:64]);

logic signed [31:0] dw_conv_mac_253;
assign dw_conv_mac_253 = 
	 5'sd 8 * $signed(input_fmap_253[7:0]) +
	 4'sd 6 * $signed(input_fmap_253[15:8]) +
	 4'sd 7 * $signed(input_fmap_253[23:16]) +
	 4'sd 5 * $signed(input_fmap_253[31:24]) +
	 4'sd 7 * $signed(input_fmap_253[39:32]) +
	 4'sd 7 * $signed(input_fmap_253[47:40]) +
	 4'sd 7 * $signed(input_fmap_253[55:48]) +
	 4'sd 7 * $signed(input_fmap_253[63:56]) +
	 4'sd 7 * $signed(input_fmap_253[71:64]);

logic signed [31:0] dw_conv_mac_254;
assign dw_conv_mac_254 = 
	 3'sd 2 * $signed(input_fmap_254[7:0]) +
	 4'sd 7 * $signed(input_fmap_254[15:8]) +
	 4'sd 6 * $signed(input_fmap_254[23:16]) +
	 4'sd 4 * $signed(input_fmap_254[31:24]) +
	 4'sd 4 * $signed(input_fmap_254[39:32]) +
	 3'sd 3 * $signed(input_fmap_254[47:40]) +
	 4'sd 5 * $signed(input_fmap_254[55:48]) +
	 4'sd 6 * $signed(input_fmap_254[71:64]);

logic signed [31:0] dw_conv_mac_255;
assign dw_conv_mac_255 = 
	 4'sd 5 * $signed(input_fmap_255[7:0]) +
	 4'sd 7 * $signed(input_fmap_255[15:8]) +
	 2'sd 1 * $signed(input_fmap_255[23:16]) +
	 2'sd 1 * $signed(input_fmap_255[31:24]) +
	 2'sd 1 * $signed(input_fmap_255[39:32]) +
	 4'sd 4 * $signed(input_fmap_255[47:40]) +
	 4'sd 7 * $signed(input_fmap_255[55:48]) +
	 5'sd 8 * $signed(input_fmap_255[63:56]) +
	 3'sd 3 * $signed(input_fmap_255[71:64]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 5'd8;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 4'd5;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 4'd4;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 3'd2;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 3'd2;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 2'd1;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 3'd2;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 3'd2;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 2'd1;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 3'd3;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 4'd6;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 4'd4;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 4'd6;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 4'd4;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 2'd1;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 3'd3;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 4'd7;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 3'd2;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18 + 2'd1;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 4'd5;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 5'd8;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21 + 3'd2;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22 + 5'd8;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 3'd3;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25 + 4'd4;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 4'd6;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 2'd1;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 3'd3;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 3'd3;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 4'd6;
logic [31:0] bias_add_32;
assign bias_add_32 = dw_conv_mac_32;
logic [31:0] bias_add_33;
assign bias_add_33 = dw_conv_mac_33 + 2'd1;
logic [31:0] bias_add_34;
assign bias_add_34 = dw_conv_mac_34 + 4'd6;
logic [31:0] bias_add_35;
assign bias_add_35 = dw_conv_mac_35;
logic [31:0] bias_add_36;
assign bias_add_36 = dw_conv_mac_36 + 3'd2;
logic [31:0] bias_add_37;
assign bias_add_37 = dw_conv_mac_37 + 4'd6;
logic [31:0] bias_add_38;
assign bias_add_38 = dw_conv_mac_38 + 5'd8;
logic [31:0] bias_add_39;
assign bias_add_39 = dw_conv_mac_39 + 4'd5;
logic [31:0] bias_add_40;
assign bias_add_40 = dw_conv_mac_40 + 4'd4;
logic [31:0] bias_add_41;
assign bias_add_41 = dw_conv_mac_41 + 2'd1;
logic [31:0] bias_add_42;
assign bias_add_42 = dw_conv_mac_42 + 4'd7;
logic [31:0] bias_add_43;
assign bias_add_43 = dw_conv_mac_43 + 4'd5;
logic [31:0] bias_add_44;
assign bias_add_44 = dw_conv_mac_44 + 4'd6;
logic [31:0] bias_add_45;
assign bias_add_45 = dw_conv_mac_45 + 5'd8;
logic [31:0] bias_add_46;
assign bias_add_46 = dw_conv_mac_46 + 2'd1;
logic [31:0] bias_add_47;
assign bias_add_47 = dw_conv_mac_47 + 5'd8;
logic [31:0] bias_add_48;
assign bias_add_48 = dw_conv_mac_48 + 3'd3;
logic [31:0] bias_add_49;
assign bias_add_49 = dw_conv_mac_49 + 3'd2;
logic [31:0] bias_add_50;
assign bias_add_50 = dw_conv_mac_50 + 4'd4;
logic [31:0] bias_add_51;
assign bias_add_51 = dw_conv_mac_51 + 3'd3;
logic [31:0] bias_add_52;
assign bias_add_52 = dw_conv_mac_52 + 4'd4;
logic [31:0] bias_add_53;
assign bias_add_53 = dw_conv_mac_53 + 4'd5;
logic [31:0] bias_add_54;
assign bias_add_54 = dw_conv_mac_54 + 3'd3;
logic [31:0] bias_add_55;
assign bias_add_55 = dw_conv_mac_55 + 4'd6;
logic [31:0] bias_add_56;
assign bias_add_56 = dw_conv_mac_56 + 4'd5;
logic [31:0] bias_add_57;
assign bias_add_57 = dw_conv_mac_57 + 4'd7;
logic [31:0] bias_add_58;
assign bias_add_58 = dw_conv_mac_58 + 4'd5;
logic [31:0] bias_add_59;
assign bias_add_59 = dw_conv_mac_59 + 4'd7;
logic [31:0] bias_add_60;
assign bias_add_60 = dw_conv_mac_60 + 2'd1;
logic [31:0] bias_add_61;
assign bias_add_61 = dw_conv_mac_61;
logic [31:0] bias_add_62;
assign bias_add_62 = dw_conv_mac_62 + 4'd4;
logic [31:0] bias_add_63;
assign bias_add_63 = dw_conv_mac_63 + 4'd7;
logic [31:0] bias_add_64;
assign bias_add_64 = dw_conv_mac_64 + 3'd2;
logic [31:0] bias_add_65;
assign bias_add_65 = dw_conv_mac_65 + 4'd7;
logic [31:0] bias_add_66;
assign bias_add_66 = dw_conv_mac_66 + 5'd8;
logic [31:0] bias_add_67;
assign bias_add_67 = dw_conv_mac_67 + 3'd3;
logic [31:0] bias_add_68;
assign bias_add_68 = dw_conv_mac_68 + 3'd3;
logic [31:0] bias_add_69;
assign bias_add_69 = dw_conv_mac_69 + 3'd2;
logic [31:0] bias_add_70;
assign bias_add_70 = dw_conv_mac_70 + 3'd2;
logic [31:0] bias_add_71;
assign bias_add_71 = dw_conv_mac_71 + 4'd4;
logic [31:0] bias_add_72;
assign bias_add_72 = dw_conv_mac_72 + 4'd4;
logic [31:0] bias_add_73;
assign bias_add_73 = dw_conv_mac_73 + 3'd2;
logic [31:0] bias_add_74;
assign bias_add_74 = dw_conv_mac_74;
logic [31:0] bias_add_75;
assign bias_add_75 = dw_conv_mac_75 + 4'd7;
logic [31:0] bias_add_76;
assign bias_add_76 = dw_conv_mac_76 + 4'd4;
logic [31:0] bias_add_77;
assign bias_add_77 = dw_conv_mac_77 + 4'd7;
logic [31:0] bias_add_78;
assign bias_add_78 = dw_conv_mac_78 + 4'd6;
logic [31:0] bias_add_79;
assign bias_add_79 = dw_conv_mac_79 + 2'd1;
logic [31:0] bias_add_80;
assign bias_add_80 = dw_conv_mac_80 + 2'd1;
logic [31:0] bias_add_81;
assign bias_add_81 = dw_conv_mac_81 + 3'd3;
logic [31:0] bias_add_82;
assign bias_add_82 = dw_conv_mac_82 + 3'd3;
logic [31:0] bias_add_83;
assign bias_add_83 = dw_conv_mac_83;
logic [31:0] bias_add_84;
assign bias_add_84 = dw_conv_mac_84 + 5'd8;
logic [31:0] bias_add_85;
assign bias_add_85 = dw_conv_mac_85 + 4'd5;
logic [31:0] bias_add_86;
assign bias_add_86 = dw_conv_mac_86 + 2'd1;
logic [31:0] bias_add_87;
assign bias_add_87 = dw_conv_mac_87 + 3'd2;
logic [31:0] bias_add_88;
assign bias_add_88 = dw_conv_mac_88 + 4'd4;
logic [31:0] bias_add_89;
assign bias_add_89 = dw_conv_mac_89 + 4'd7;
logic [31:0] bias_add_90;
assign bias_add_90 = dw_conv_mac_90 + 4'd6;
logic [31:0] bias_add_91;
assign bias_add_91 = dw_conv_mac_91 + 3'd3;
logic [31:0] bias_add_92;
assign bias_add_92 = dw_conv_mac_92;
logic [31:0] bias_add_93;
assign bias_add_93 = dw_conv_mac_93 + 3'd2;
logic [31:0] bias_add_94;
assign bias_add_94 = dw_conv_mac_94 + 2'd1;
logic [31:0] bias_add_95;
assign bias_add_95 = dw_conv_mac_95 + 4'd6;
logic [31:0] bias_add_96;
assign bias_add_96 = dw_conv_mac_96 + 4'd5;
logic [31:0] bias_add_97;
assign bias_add_97 = dw_conv_mac_97 + 4'd5;
logic [31:0] bias_add_98;
assign bias_add_98 = dw_conv_mac_98 + 4'd7;
logic [31:0] bias_add_99;
assign bias_add_99 = dw_conv_mac_99 + 4'd5;
logic [31:0] bias_add_100;
assign bias_add_100 = dw_conv_mac_100 + 3'd2;
logic [31:0] bias_add_101;
assign bias_add_101 = dw_conv_mac_101 + 2'd1;
logic [31:0] bias_add_102;
assign bias_add_102 = dw_conv_mac_102;
logic [31:0] bias_add_103;
assign bias_add_103 = dw_conv_mac_103 + 2'd1;
logic [31:0] bias_add_104;
assign bias_add_104 = dw_conv_mac_104 + 3'd3;
logic [31:0] bias_add_105;
assign bias_add_105 = dw_conv_mac_105 + 3'd3;
logic [31:0] bias_add_106;
assign bias_add_106 = dw_conv_mac_106 + 4'd4;
logic [31:0] bias_add_107;
assign bias_add_107 = dw_conv_mac_107 + 3'd2;
logic [31:0] bias_add_108;
assign bias_add_108 = dw_conv_mac_108 + 3'd3;
logic [31:0] bias_add_109;
assign bias_add_109 = dw_conv_mac_109;
logic [31:0] bias_add_110;
assign bias_add_110 = dw_conv_mac_110 + 3'd2;
logic [31:0] bias_add_111;
assign bias_add_111 = dw_conv_mac_111 + 2'd1;
logic [31:0] bias_add_112;
assign bias_add_112 = dw_conv_mac_112 + 3'd3;
logic [31:0] bias_add_113;
assign bias_add_113 = dw_conv_mac_113 + 4'd7;
logic [31:0] bias_add_114;
assign bias_add_114 = dw_conv_mac_114 + 5'd8;
logic [31:0] bias_add_115;
assign bias_add_115 = dw_conv_mac_115 + 3'd2;
logic [31:0] bias_add_116;
assign bias_add_116 = dw_conv_mac_116 + 4'd5;
logic [31:0] bias_add_117;
assign bias_add_117 = dw_conv_mac_117 + 2'd1;
logic [31:0] bias_add_118;
assign bias_add_118 = dw_conv_mac_118 + 3'd2;
logic [31:0] bias_add_119;
assign bias_add_119 = dw_conv_mac_119 + 3'd3;
logic [31:0] bias_add_120;
assign bias_add_120 = dw_conv_mac_120 + 2'd1;
logic [31:0] bias_add_121;
assign bias_add_121 = dw_conv_mac_121 + 4'd5;
logic [31:0] bias_add_122;
assign bias_add_122 = dw_conv_mac_122 + 4'd7;
logic [31:0] bias_add_123;
assign bias_add_123 = dw_conv_mac_123 + 3'd3;
logic [31:0] bias_add_124;
assign bias_add_124 = dw_conv_mac_124 + 5'd8;
logic [31:0] bias_add_125;
assign bias_add_125 = dw_conv_mac_125 + 5'd8;
logic [31:0] bias_add_126;
assign bias_add_126 = dw_conv_mac_126 + 4'd7;
logic [31:0] bias_add_127;
assign bias_add_127 = dw_conv_mac_127 + 4'd7;
logic [31:0] bias_add_128;
assign bias_add_128 = dw_conv_mac_128 + 2'd1;
logic [31:0] bias_add_129;
assign bias_add_129 = dw_conv_mac_129 + 4'd6;
logic [31:0] bias_add_130;
assign bias_add_130 = dw_conv_mac_130 + 3'd3;
logic [31:0] bias_add_131;
assign bias_add_131 = dw_conv_mac_131 + 4'd4;
logic [31:0] bias_add_132;
assign bias_add_132 = dw_conv_mac_132 + 3'd3;
logic [31:0] bias_add_133;
assign bias_add_133 = dw_conv_mac_133 + 5'd8;
logic [31:0] bias_add_134;
assign bias_add_134 = dw_conv_mac_134;
logic [31:0] bias_add_135;
assign bias_add_135 = dw_conv_mac_135 + 2'd1;
logic [31:0] bias_add_136;
assign bias_add_136 = dw_conv_mac_136 + 4'd6;
logic [31:0] bias_add_137;
assign bias_add_137 = dw_conv_mac_137 + 2'd1;
logic [31:0] bias_add_138;
assign bias_add_138 = dw_conv_mac_138;
logic [31:0] bias_add_139;
assign bias_add_139 = dw_conv_mac_139 + 4'd4;
logic [31:0] bias_add_140;
assign bias_add_140 = dw_conv_mac_140 + 4'd7;
logic [31:0] bias_add_141;
assign bias_add_141 = dw_conv_mac_141;
logic [31:0] bias_add_142;
assign bias_add_142 = dw_conv_mac_142 + 2'd1;
logic [31:0] bias_add_143;
assign bias_add_143 = dw_conv_mac_143 + 4'd7;
logic [31:0] bias_add_144;
assign bias_add_144 = dw_conv_mac_144 + 4'd7;
logic [31:0] bias_add_145;
assign bias_add_145 = dw_conv_mac_145 + 3'd3;
logic [31:0] bias_add_146;
assign bias_add_146 = dw_conv_mac_146 + 2'd1;
logic [31:0] bias_add_147;
assign bias_add_147 = dw_conv_mac_147 + 3'd3;
logic [31:0] bias_add_148;
assign bias_add_148 = dw_conv_mac_148 + 3'd3;
logic [31:0] bias_add_149;
assign bias_add_149 = dw_conv_mac_149 + 4'd6;
logic [31:0] bias_add_150;
assign bias_add_150 = dw_conv_mac_150 + 2'd1;
logic [31:0] bias_add_151;
assign bias_add_151 = dw_conv_mac_151 + 3'd3;
logic [31:0] bias_add_152;
assign bias_add_152 = dw_conv_mac_152 + 2'd1;
logic [31:0] bias_add_153;
assign bias_add_153 = dw_conv_mac_153 + 4'd5;
logic [31:0] bias_add_154;
assign bias_add_154 = dw_conv_mac_154 + 4'd7;
logic [31:0] bias_add_155;
assign bias_add_155 = dw_conv_mac_155 + 5'd8;
logic [31:0] bias_add_156;
assign bias_add_156 = dw_conv_mac_156 + 3'd2;
logic [31:0] bias_add_157;
assign bias_add_157 = dw_conv_mac_157;
logic [31:0] bias_add_158;
assign bias_add_158 = dw_conv_mac_158 + 4'd4;
logic [31:0] bias_add_159;
assign bias_add_159 = dw_conv_mac_159 + 4'd7;
logic [31:0] bias_add_160;
assign bias_add_160 = dw_conv_mac_160 + 3'd2;
logic [31:0] bias_add_161;
assign bias_add_161 = dw_conv_mac_161 + 4'd5;
logic [31:0] bias_add_162;
assign bias_add_162 = dw_conv_mac_162 + 3'd3;
logic [31:0] bias_add_163;
assign bias_add_163 = dw_conv_mac_163 + 4'd5;
logic [31:0] bias_add_164;
assign bias_add_164 = dw_conv_mac_164;
logic [31:0] bias_add_165;
assign bias_add_165 = dw_conv_mac_165 + 3'd3;
logic [31:0] bias_add_166;
assign bias_add_166 = dw_conv_mac_166 + 3'd2;
logic [31:0] bias_add_167;
assign bias_add_167 = dw_conv_mac_167 + 5'd8;
logic [31:0] bias_add_168;
assign bias_add_168 = dw_conv_mac_168 + 3'd2;
logic [31:0] bias_add_169;
assign bias_add_169 = dw_conv_mac_169 + 3'd2;
logic [31:0] bias_add_170;
assign bias_add_170 = dw_conv_mac_170 + 4'd4;
logic [31:0] bias_add_171;
assign bias_add_171 = dw_conv_mac_171 + 4'd5;
logic [31:0] bias_add_172;
assign bias_add_172 = dw_conv_mac_172 + 4'd5;
logic [31:0] bias_add_173;
assign bias_add_173 = dw_conv_mac_173 + 4'd7;
logic [31:0] bias_add_174;
assign bias_add_174 = dw_conv_mac_174;
logic [31:0] bias_add_175;
assign bias_add_175 = dw_conv_mac_175 + 4'd4;
logic [31:0] bias_add_176;
assign bias_add_176 = dw_conv_mac_176 + 3'd2;
logic [31:0] bias_add_177;
assign bias_add_177 = dw_conv_mac_177 + 2'd1;
logic [31:0] bias_add_178;
assign bias_add_178 = dw_conv_mac_178 + 4'd5;
logic [31:0] bias_add_179;
assign bias_add_179 = dw_conv_mac_179 + 3'd3;
logic [31:0] bias_add_180;
assign bias_add_180 = dw_conv_mac_180 + 4'd7;
logic [31:0] bias_add_181;
assign bias_add_181 = dw_conv_mac_181 + 3'd2;
logic [31:0] bias_add_182;
assign bias_add_182 = dw_conv_mac_182 + 5'd8;
logic [31:0] bias_add_183;
assign bias_add_183 = dw_conv_mac_183 + 4'd4;
logic [31:0] bias_add_184;
assign bias_add_184 = dw_conv_mac_184 + 2'd1;
logic [31:0] bias_add_185;
assign bias_add_185 = dw_conv_mac_185 + 4'd4;
logic [31:0] bias_add_186;
assign bias_add_186 = dw_conv_mac_186 + 4'd7;
logic [31:0] bias_add_187;
assign bias_add_187 = dw_conv_mac_187 + 2'd1;
logic [31:0] bias_add_188;
assign bias_add_188 = dw_conv_mac_188 + 4'd6;
logic [31:0] bias_add_189;
assign bias_add_189 = dw_conv_mac_189 + 4'd7;
logic [31:0] bias_add_190;
assign bias_add_190 = dw_conv_mac_190 + 4'd6;
logic [31:0] bias_add_191;
assign bias_add_191 = dw_conv_mac_191 + 4'd5;
logic [31:0] bias_add_192;
assign bias_add_192 = dw_conv_mac_192 + 4'd4;
logic [31:0] bias_add_193;
assign bias_add_193 = dw_conv_mac_193 + 5'd8;
logic [31:0] bias_add_194;
assign bias_add_194 = dw_conv_mac_194 + 5'd8;
logic [31:0] bias_add_195;
assign bias_add_195 = dw_conv_mac_195 + 3'd3;
logic [31:0] bias_add_196;
assign bias_add_196 = dw_conv_mac_196 + 4'd7;
logic [31:0] bias_add_197;
assign bias_add_197 = dw_conv_mac_197 + 4'd6;
logic [31:0] bias_add_198;
assign bias_add_198 = dw_conv_mac_198 + 4'd6;
logic [31:0] bias_add_199;
assign bias_add_199 = dw_conv_mac_199 + 5'd8;
logic [31:0] bias_add_200;
assign bias_add_200 = dw_conv_mac_200 + 4'd4;
logic [31:0] bias_add_201;
assign bias_add_201 = dw_conv_mac_201 + 3'd2;
logic [31:0] bias_add_202;
assign bias_add_202 = dw_conv_mac_202;
logic [31:0] bias_add_203;
assign bias_add_203 = dw_conv_mac_203 + 5'd8;
logic [31:0] bias_add_204;
assign bias_add_204 = dw_conv_mac_204 + 3'd3;
logic [31:0] bias_add_205;
assign bias_add_205 = dw_conv_mac_205 + 4'd6;
logic [31:0] bias_add_206;
assign bias_add_206 = dw_conv_mac_206 + 4'd6;
logic [31:0] bias_add_207;
assign bias_add_207 = dw_conv_mac_207 + 3'd2;
logic [31:0] bias_add_208;
assign bias_add_208 = dw_conv_mac_208 + 4'd7;
logic [31:0] bias_add_209;
assign bias_add_209 = dw_conv_mac_209 + 4'd4;
logic [31:0] bias_add_210;
assign bias_add_210 = dw_conv_mac_210 + 4'd6;
logic [31:0] bias_add_211;
assign bias_add_211 = dw_conv_mac_211 + 2'd1;
logic [31:0] bias_add_212;
assign bias_add_212 = dw_conv_mac_212 + 4'd5;
logic [31:0] bias_add_213;
assign bias_add_213 = dw_conv_mac_213 + 3'd3;
logic [31:0] bias_add_214;
assign bias_add_214 = dw_conv_mac_214 + 3'd2;
logic [31:0] bias_add_215;
assign bias_add_215 = dw_conv_mac_215 + 4'd6;
logic [31:0] bias_add_216;
assign bias_add_216 = dw_conv_mac_216 + 4'd7;
logic [31:0] bias_add_217;
assign bias_add_217 = dw_conv_mac_217 + 4'd7;
logic [31:0] bias_add_218;
assign bias_add_218 = dw_conv_mac_218 + 5'd8;
logic [31:0] bias_add_219;
assign bias_add_219 = dw_conv_mac_219 + 2'd1;
logic [31:0] bias_add_220;
assign bias_add_220 = dw_conv_mac_220 + 3'd3;
logic [31:0] bias_add_221;
assign bias_add_221 = dw_conv_mac_221;
logic [31:0] bias_add_222;
assign bias_add_222 = dw_conv_mac_222 + 4'd5;
logic [31:0] bias_add_223;
assign bias_add_223 = dw_conv_mac_223 + 4'd6;
logic [31:0] bias_add_224;
assign bias_add_224 = dw_conv_mac_224 + 4'd5;
logic [31:0] bias_add_225;
assign bias_add_225 = dw_conv_mac_225 + 4'd6;
logic [31:0] bias_add_226;
assign bias_add_226 = dw_conv_mac_226 + 4'd7;
logic [31:0] bias_add_227;
assign bias_add_227 = dw_conv_mac_227 + 3'd2;
logic [31:0] bias_add_228;
assign bias_add_228 = dw_conv_mac_228 + 5'd8;
logic [31:0] bias_add_229;
assign bias_add_229 = dw_conv_mac_229 + 2'd1;
logic [31:0] bias_add_230;
assign bias_add_230 = dw_conv_mac_230 + 4'd4;
logic [31:0] bias_add_231;
assign bias_add_231 = dw_conv_mac_231 + 2'd1;
logic [31:0] bias_add_232;
assign bias_add_232 = dw_conv_mac_232 + 2'd1;
logic [31:0] bias_add_233;
assign bias_add_233 = dw_conv_mac_233 + 4'd7;
logic [31:0] bias_add_234;
assign bias_add_234 = dw_conv_mac_234 + 2'd1;
logic [31:0] bias_add_235;
assign bias_add_235 = dw_conv_mac_235 + 3'd2;
logic [31:0] bias_add_236;
assign bias_add_236 = dw_conv_mac_236 + 2'd1;
logic [31:0] bias_add_237;
assign bias_add_237 = dw_conv_mac_237 + 3'd3;
logic [31:0] bias_add_238;
assign bias_add_238 = dw_conv_mac_238 + 4'd5;
logic [31:0] bias_add_239;
assign bias_add_239 = dw_conv_mac_239 + 4'd5;
logic [31:0] bias_add_240;
assign bias_add_240 = dw_conv_mac_240 + 3'd3;
logic [31:0] bias_add_241;
assign bias_add_241 = dw_conv_mac_241 + 4'd4;
logic [31:0] bias_add_242;
assign bias_add_242 = dw_conv_mac_242 + 3'd3;
logic [31:0] bias_add_243;
assign bias_add_243 = dw_conv_mac_243 + 3'd2;
logic [31:0] bias_add_244;
assign bias_add_244 = dw_conv_mac_244 + 4'd7;
logic [31:0] bias_add_245;
assign bias_add_245 = dw_conv_mac_245 + 4'd4;
logic [31:0] bias_add_246;
assign bias_add_246 = dw_conv_mac_246 + 3'd2;
logic [31:0] bias_add_247;
assign bias_add_247 = dw_conv_mac_247 + 4'd6;
logic [31:0] bias_add_248;
assign bias_add_248 = dw_conv_mac_248 + 4'd7;
logic [31:0] bias_add_249;
assign bias_add_249 = dw_conv_mac_249 + 3'd3;
logic [31:0] bias_add_250;
assign bias_add_250 = dw_conv_mac_250 + 2'd1;
logic [31:0] bias_add_251;
assign bias_add_251 = dw_conv_mac_251 + 3'd2;
logic [31:0] bias_add_252;
assign bias_add_252 = dw_conv_mac_252 + 3'd3;
logic [31:0] bias_add_253;
assign bias_add_253 = dw_conv_mac_253 + 4'd6;
logic [31:0] bias_add_254;
assign bias_add_254 = dw_conv_mac_254 + 3'd2;
logic [31:0] bias_add_255;
assign bias_add_255 = dw_conv_mac_255 + 4'd5;

logic [7:0] relu_0;
assign relu_0[7:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[9:3]}} :'d6) : '0;
logic [7:0] relu_1;
assign relu_1[7:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[9:3]}} :'d6) : '0;
logic [7:0] relu_2;
assign relu_2[7:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[9:3]}} :'d6) : '0;
logic [7:0] relu_3;
assign relu_3[7:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[9:3]}} :'d6) : '0;
logic [7:0] relu_4;
assign relu_4[7:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[9:3]}} :'d6) : '0;
logic [7:0] relu_5;
assign relu_5[7:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[9:3]}} :'d6) : '0;
logic [7:0] relu_6;
assign relu_6[7:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[9:3]}} :'d6) : '0;
logic [7:0] relu_7;
assign relu_7[7:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[9:3]}} :'d6) : '0;
logic [7:0] relu_8;
assign relu_8[7:0] = (bias_add_8[31]==0) ? ((bias_add_8<3'd6) ? {{bias_add_8[31],bias_add_8[9:3]}} :'d6) : '0;
logic [7:0] relu_9;
assign relu_9[7:0] = (bias_add_9[31]==0) ? ((bias_add_9<3'd6) ? {{bias_add_9[31],bias_add_9[9:3]}} :'d6) : '0;
logic [7:0] relu_10;
assign relu_10[7:0] = (bias_add_10[31]==0) ? ((bias_add_10<3'd6) ? {{bias_add_10[31],bias_add_10[9:3]}} :'d6) : '0;
logic [7:0] relu_11;
assign relu_11[7:0] = (bias_add_11[31]==0) ? ((bias_add_11<3'd6) ? {{bias_add_11[31],bias_add_11[9:3]}} :'d6) : '0;
logic [7:0] relu_12;
assign relu_12[7:0] = (bias_add_12[31]==0) ? ((bias_add_12<3'd6) ? {{bias_add_12[31],bias_add_12[9:3]}} :'d6) : '0;
logic [7:0] relu_13;
assign relu_13[7:0] = (bias_add_13[31]==0) ? ((bias_add_13<3'd6) ? {{bias_add_13[31],bias_add_13[9:3]}} :'d6) : '0;
logic [7:0] relu_14;
assign relu_14[7:0] = (bias_add_14[31]==0) ? ((bias_add_14<3'd6) ? {{bias_add_14[31],bias_add_14[9:3]}} :'d6) : '0;
logic [7:0] relu_15;
assign relu_15[7:0] = (bias_add_15[31]==0) ? ((bias_add_15<3'd6) ? {{bias_add_15[31],bias_add_15[9:3]}} :'d6) : '0;
logic [7:0] relu_16;
assign relu_16[7:0] = (bias_add_16[31]==0) ? ((bias_add_16<3'd6) ? {{bias_add_16[31],bias_add_16[9:3]}} :'d6) : '0;
logic [7:0] relu_17;
assign relu_17[7:0] = (bias_add_17[31]==0) ? ((bias_add_17<3'd6) ? {{bias_add_17[31],bias_add_17[9:3]}} :'d6) : '0;
logic [7:0] relu_18;
assign relu_18[7:0] = (bias_add_18[31]==0) ? ((bias_add_18<3'd6) ? {{bias_add_18[31],bias_add_18[9:3]}} :'d6) : '0;
logic [7:0] relu_19;
assign relu_19[7:0] = (bias_add_19[31]==0) ? ((bias_add_19<3'd6) ? {{bias_add_19[31],bias_add_19[9:3]}} :'d6) : '0;
logic [7:0] relu_20;
assign relu_20[7:0] = (bias_add_20[31]==0) ? ((bias_add_20<3'd6) ? {{bias_add_20[31],bias_add_20[9:3]}} :'d6) : '0;
logic [7:0] relu_21;
assign relu_21[7:0] = (bias_add_21[31]==0) ? ((bias_add_21<3'd6) ? {{bias_add_21[31],bias_add_21[9:3]}} :'d6) : '0;
logic [7:0] relu_22;
assign relu_22[7:0] = (bias_add_22[31]==0) ? ((bias_add_22<3'd6) ? {{bias_add_22[31],bias_add_22[9:3]}} :'d6) : '0;
logic [7:0] relu_23;
assign relu_23[7:0] = (bias_add_23[31]==0) ? ((bias_add_23<3'd6) ? {{bias_add_23[31],bias_add_23[9:3]}} :'d6) : '0;
logic [7:0] relu_24;
assign relu_24[7:0] = (bias_add_24[31]==0) ? ((bias_add_24<3'd6) ? {{bias_add_24[31],bias_add_24[9:3]}} :'d6) : '0;
logic [7:0] relu_25;
assign relu_25[7:0] = (bias_add_25[31]==0) ? ((bias_add_25<3'd6) ? {{bias_add_25[31],bias_add_25[9:3]}} :'d6) : '0;
logic [7:0] relu_26;
assign relu_26[7:0] = (bias_add_26[31]==0) ? ((bias_add_26<3'd6) ? {{bias_add_26[31],bias_add_26[9:3]}} :'d6) : '0;
logic [7:0] relu_27;
assign relu_27[7:0] = (bias_add_27[31]==0) ? ((bias_add_27<3'd6) ? {{bias_add_27[31],bias_add_27[9:3]}} :'d6) : '0;
logic [7:0] relu_28;
assign relu_28[7:0] = (bias_add_28[31]==0) ? ((bias_add_28<3'd6) ? {{bias_add_28[31],bias_add_28[9:3]}} :'d6) : '0;
logic [7:0] relu_29;
assign relu_29[7:0] = (bias_add_29[31]==0) ? ((bias_add_29<3'd6) ? {{bias_add_29[31],bias_add_29[9:3]}} :'d6) : '0;
logic [7:0] relu_30;
assign relu_30[7:0] = (bias_add_30[31]==0) ? ((bias_add_30<3'd6) ? {{bias_add_30[31],bias_add_30[9:3]}} :'d6) : '0;
logic [7:0] relu_31;
assign relu_31[7:0] = (bias_add_31[31]==0) ? ((bias_add_31<3'd6) ? {{bias_add_31[31],bias_add_31[9:3]}} :'d6) : '0;
logic [7:0] relu_32;
assign relu_32[7:0] = (bias_add_32[31]==0) ? ((bias_add_32<3'd6) ? {{bias_add_32[31],bias_add_32[9:3]}} :'d6) : '0;
logic [7:0] relu_33;
assign relu_33[7:0] = (bias_add_33[31]==0) ? ((bias_add_33<3'd6) ? {{bias_add_33[31],bias_add_33[9:3]}} :'d6) : '0;
logic [7:0] relu_34;
assign relu_34[7:0] = (bias_add_34[31]==0) ? ((bias_add_34<3'd6) ? {{bias_add_34[31],bias_add_34[9:3]}} :'d6) : '0;
logic [7:0] relu_35;
assign relu_35[7:0] = (bias_add_35[31]==0) ? ((bias_add_35<3'd6) ? {{bias_add_35[31],bias_add_35[9:3]}} :'d6) : '0;
logic [7:0] relu_36;
assign relu_36[7:0] = (bias_add_36[31]==0) ? ((bias_add_36<3'd6) ? {{bias_add_36[31],bias_add_36[9:3]}} :'d6) : '0;
logic [7:0] relu_37;
assign relu_37[7:0] = (bias_add_37[31]==0) ? ((bias_add_37<3'd6) ? {{bias_add_37[31],bias_add_37[9:3]}} :'d6) : '0;
logic [7:0] relu_38;
assign relu_38[7:0] = (bias_add_38[31]==0) ? ((bias_add_38<3'd6) ? {{bias_add_38[31],bias_add_38[9:3]}} :'d6) : '0;
logic [7:0] relu_39;
assign relu_39[7:0] = (bias_add_39[31]==0) ? ((bias_add_39<3'd6) ? {{bias_add_39[31],bias_add_39[9:3]}} :'d6) : '0;
logic [7:0] relu_40;
assign relu_40[7:0] = (bias_add_40[31]==0) ? ((bias_add_40<3'd6) ? {{bias_add_40[31],bias_add_40[9:3]}} :'d6) : '0;
logic [7:0] relu_41;
assign relu_41[7:0] = (bias_add_41[31]==0) ? ((bias_add_41<3'd6) ? {{bias_add_41[31],bias_add_41[9:3]}} :'d6) : '0;
logic [7:0] relu_42;
assign relu_42[7:0] = (bias_add_42[31]==0) ? ((bias_add_42<3'd6) ? {{bias_add_42[31],bias_add_42[9:3]}} :'d6) : '0;
logic [7:0] relu_43;
assign relu_43[7:0] = (bias_add_43[31]==0) ? ((bias_add_43<3'd6) ? {{bias_add_43[31],bias_add_43[9:3]}} :'d6) : '0;
logic [7:0] relu_44;
assign relu_44[7:0] = (bias_add_44[31]==0) ? ((bias_add_44<3'd6) ? {{bias_add_44[31],bias_add_44[9:3]}} :'d6) : '0;
logic [7:0] relu_45;
assign relu_45[7:0] = (bias_add_45[31]==0) ? ((bias_add_45<3'd6) ? {{bias_add_45[31],bias_add_45[9:3]}} :'d6) : '0;
logic [7:0] relu_46;
assign relu_46[7:0] = (bias_add_46[31]==0) ? ((bias_add_46<3'd6) ? {{bias_add_46[31],bias_add_46[9:3]}} :'d6) : '0;
logic [7:0] relu_47;
assign relu_47[7:0] = (bias_add_47[31]==0) ? ((bias_add_47<3'd6) ? {{bias_add_47[31],bias_add_47[9:3]}} :'d6) : '0;
logic [7:0] relu_48;
assign relu_48[7:0] = (bias_add_48[31]==0) ? ((bias_add_48<3'd6) ? {{bias_add_48[31],bias_add_48[9:3]}} :'d6) : '0;
logic [7:0] relu_49;
assign relu_49[7:0] = (bias_add_49[31]==0) ? ((bias_add_49<3'd6) ? {{bias_add_49[31],bias_add_49[9:3]}} :'d6) : '0;
logic [7:0] relu_50;
assign relu_50[7:0] = (bias_add_50[31]==0) ? ((bias_add_50<3'd6) ? {{bias_add_50[31],bias_add_50[9:3]}} :'d6) : '0;
logic [7:0] relu_51;
assign relu_51[7:0] = (bias_add_51[31]==0) ? ((bias_add_51<3'd6) ? {{bias_add_51[31],bias_add_51[9:3]}} :'d6) : '0;
logic [7:0] relu_52;
assign relu_52[7:0] = (bias_add_52[31]==0) ? ((bias_add_52<3'd6) ? {{bias_add_52[31],bias_add_52[9:3]}} :'d6) : '0;
logic [7:0] relu_53;
assign relu_53[7:0] = (bias_add_53[31]==0) ? ((bias_add_53<3'd6) ? {{bias_add_53[31],bias_add_53[9:3]}} :'d6) : '0;
logic [7:0] relu_54;
assign relu_54[7:0] = (bias_add_54[31]==0) ? ((bias_add_54<3'd6) ? {{bias_add_54[31],bias_add_54[9:3]}} :'d6) : '0;
logic [7:0] relu_55;
assign relu_55[7:0] = (bias_add_55[31]==0) ? ((bias_add_55<3'd6) ? {{bias_add_55[31],bias_add_55[9:3]}} :'d6) : '0;
logic [7:0] relu_56;
assign relu_56[7:0] = (bias_add_56[31]==0) ? ((bias_add_56<3'd6) ? {{bias_add_56[31],bias_add_56[9:3]}} :'d6) : '0;
logic [7:0] relu_57;
assign relu_57[7:0] = (bias_add_57[31]==0) ? ((bias_add_57<3'd6) ? {{bias_add_57[31],bias_add_57[9:3]}} :'d6) : '0;
logic [7:0] relu_58;
assign relu_58[7:0] = (bias_add_58[31]==0) ? ((bias_add_58<3'd6) ? {{bias_add_58[31],bias_add_58[9:3]}} :'d6) : '0;
logic [7:0] relu_59;
assign relu_59[7:0] = (bias_add_59[31]==0) ? ((bias_add_59<3'd6) ? {{bias_add_59[31],bias_add_59[9:3]}} :'d6) : '0;
logic [7:0] relu_60;
assign relu_60[7:0] = (bias_add_60[31]==0) ? ((bias_add_60<3'd6) ? {{bias_add_60[31],bias_add_60[9:3]}} :'d6) : '0;
logic [7:0] relu_61;
assign relu_61[7:0] = (bias_add_61[31]==0) ? ((bias_add_61<3'd6) ? {{bias_add_61[31],bias_add_61[9:3]}} :'d6) : '0;
logic [7:0] relu_62;
assign relu_62[7:0] = (bias_add_62[31]==0) ? ((bias_add_62<3'd6) ? {{bias_add_62[31],bias_add_62[9:3]}} :'d6) : '0;
logic [7:0] relu_63;
assign relu_63[7:0] = (bias_add_63[31]==0) ? ((bias_add_63<3'd6) ? {{bias_add_63[31],bias_add_63[9:3]}} :'d6) : '0;
logic [7:0] relu_64;
assign relu_64[7:0] = (bias_add_64[31]==0) ? ((bias_add_64<3'd6) ? {{bias_add_64[31],bias_add_64[9:3]}} :'d6) : '0;
logic [7:0] relu_65;
assign relu_65[7:0] = (bias_add_65[31]==0) ? ((bias_add_65<3'd6) ? {{bias_add_65[31],bias_add_65[9:3]}} :'d6) : '0;
logic [7:0] relu_66;
assign relu_66[7:0] = (bias_add_66[31]==0) ? ((bias_add_66<3'd6) ? {{bias_add_66[31],bias_add_66[9:3]}} :'d6) : '0;
logic [7:0] relu_67;
assign relu_67[7:0] = (bias_add_67[31]==0) ? ((bias_add_67<3'd6) ? {{bias_add_67[31],bias_add_67[9:3]}} :'d6) : '0;
logic [7:0] relu_68;
assign relu_68[7:0] = (bias_add_68[31]==0) ? ((bias_add_68<3'd6) ? {{bias_add_68[31],bias_add_68[9:3]}} :'d6) : '0;
logic [7:0] relu_69;
assign relu_69[7:0] = (bias_add_69[31]==0) ? ((bias_add_69<3'd6) ? {{bias_add_69[31],bias_add_69[9:3]}} :'d6) : '0;
logic [7:0] relu_70;
assign relu_70[7:0] = (bias_add_70[31]==0) ? ((bias_add_70<3'd6) ? {{bias_add_70[31],bias_add_70[9:3]}} :'d6) : '0;
logic [7:0] relu_71;
assign relu_71[7:0] = (bias_add_71[31]==0) ? ((bias_add_71<3'd6) ? {{bias_add_71[31],bias_add_71[9:3]}} :'d6) : '0;
logic [7:0] relu_72;
assign relu_72[7:0] = (bias_add_72[31]==0) ? ((bias_add_72<3'd6) ? {{bias_add_72[31],bias_add_72[9:3]}} :'d6) : '0;
logic [7:0] relu_73;
assign relu_73[7:0] = (bias_add_73[31]==0) ? ((bias_add_73<3'd6) ? {{bias_add_73[31],bias_add_73[9:3]}} :'d6) : '0;
logic [7:0] relu_74;
assign relu_74[7:0] = (bias_add_74[31]==0) ? ((bias_add_74<3'd6) ? {{bias_add_74[31],bias_add_74[9:3]}} :'d6) : '0;
logic [7:0] relu_75;
assign relu_75[7:0] = (bias_add_75[31]==0) ? ((bias_add_75<3'd6) ? {{bias_add_75[31],bias_add_75[9:3]}} :'d6) : '0;
logic [7:0] relu_76;
assign relu_76[7:0] = (bias_add_76[31]==0) ? ((bias_add_76<3'd6) ? {{bias_add_76[31],bias_add_76[9:3]}} :'d6) : '0;
logic [7:0] relu_77;
assign relu_77[7:0] = (bias_add_77[31]==0) ? ((bias_add_77<3'd6) ? {{bias_add_77[31],bias_add_77[9:3]}} :'d6) : '0;
logic [7:0] relu_78;
assign relu_78[7:0] = (bias_add_78[31]==0) ? ((bias_add_78<3'd6) ? {{bias_add_78[31],bias_add_78[9:3]}} :'d6) : '0;
logic [7:0] relu_79;
assign relu_79[7:0] = (bias_add_79[31]==0) ? ((bias_add_79<3'd6) ? {{bias_add_79[31],bias_add_79[9:3]}} :'d6) : '0;
logic [7:0] relu_80;
assign relu_80[7:0] = (bias_add_80[31]==0) ? ((bias_add_80<3'd6) ? {{bias_add_80[31],bias_add_80[9:3]}} :'d6) : '0;
logic [7:0] relu_81;
assign relu_81[7:0] = (bias_add_81[31]==0) ? ((bias_add_81<3'd6) ? {{bias_add_81[31],bias_add_81[9:3]}} :'d6) : '0;
logic [7:0] relu_82;
assign relu_82[7:0] = (bias_add_82[31]==0) ? ((bias_add_82<3'd6) ? {{bias_add_82[31],bias_add_82[9:3]}} :'d6) : '0;
logic [7:0] relu_83;
assign relu_83[7:0] = (bias_add_83[31]==0) ? ((bias_add_83<3'd6) ? {{bias_add_83[31],bias_add_83[9:3]}} :'d6) : '0;
logic [7:0] relu_84;
assign relu_84[7:0] = (bias_add_84[31]==0) ? ((bias_add_84<3'd6) ? {{bias_add_84[31],bias_add_84[9:3]}} :'d6) : '0;
logic [7:0] relu_85;
assign relu_85[7:0] = (bias_add_85[31]==0) ? ((bias_add_85<3'd6) ? {{bias_add_85[31],bias_add_85[9:3]}} :'d6) : '0;
logic [7:0] relu_86;
assign relu_86[7:0] = (bias_add_86[31]==0) ? ((bias_add_86<3'd6) ? {{bias_add_86[31],bias_add_86[9:3]}} :'d6) : '0;
logic [7:0] relu_87;
assign relu_87[7:0] = (bias_add_87[31]==0) ? ((bias_add_87<3'd6) ? {{bias_add_87[31],bias_add_87[9:3]}} :'d6) : '0;
logic [7:0] relu_88;
assign relu_88[7:0] = (bias_add_88[31]==0) ? ((bias_add_88<3'd6) ? {{bias_add_88[31],bias_add_88[9:3]}} :'d6) : '0;
logic [7:0] relu_89;
assign relu_89[7:0] = (bias_add_89[31]==0) ? ((bias_add_89<3'd6) ? {{bias_add_89[31],bias_add_89[9:3]}} :'d6) : '0;
logic [7:0] relu_90;
assign relu_90[7:0] = (bias_add_90[31]==0) ? ((bias_add_90<3'd6) ? {{bias_add_90[31],bias_add_90[9:3]}} :'d6) : '0;
logic [7:0] relu_91;
assign relu_91[7:0] = (bias_add_91[31]==0) ? ((bias_add_91<3'd6) ? {{bias_add_91[31],bias_add_91[9:3]}} :'d6) : '0;
logic [7:0] relu_92;
assign relu_92[7:0] = (bias_add_92[31]==0) ? ((bias_add_92<3'd6) ? {{bias_add_92[31],bias_add_92[9:3]}} :'d6) : '0;
logic [7:0] relu_93;
assign relu_93[7:0] = (bias_add_93[31]==0) ? ((bias_add_93<3'd6) ? {{bias_add_93[31],bias_add_93[9:3]}} :'d6) : '0;
logic [7:0] relu_94;
assign relu_94[7:0] = (bias_add_94[31]==0) ? ((bias_add_94<3'd6) ? {{bias_add_94[31],bias_add_94[9:3]}} :'d6) : '0;
logic [7:0] relu_95;
assign relu_95[7:0] = (bias_add_95[31]==0) ? ((bias_add_95<3'd6) ? {{bias_add_95[31],bias_add_95[9:3]}} :'d6) : '0;
logic [7:0] relu_96;
assign relu_96[7:0] = (bias_add_96[31]==0) ? ((bias_add_96<3'd6) ? {{bias_add_96[31],bias_add_96[9:3]}} :'d6) : '0;
logic [7:0] relu_97;
assign relu_97[7:0] = (bias_add_97[31]==0) ? ((bias_add_97<3'd6) ? {{bias_add_97[31],bias_add_97[9:3]}} :'d6) : '0;
logic [7:0] relu_98;
assign relu_98[7:0] = (bias_add_98[31]==0) ? ((bias_add_98<3'd6) ? {{bias_add_98[31],bias_add_98[9:3]}} :'d6) : '0;
logic [7:0] relu_99;
assign relu_99[7:0] = (bias_add_99[31]==0) ? ((bias_add_99<3'd6) ? {{bias_add_99[31],bias_add_99[9:3]}} :'d6) : '0;
logic [7:0] relu_100;
assign relu_100[7:0] = (bias_add_100[31]==0) ? ((bias_add_100<3'd6) ? {{bias_add_100[31],bias_add_100[9:3]}} :'d6) : '0;
logic [7:0] relu_101;
assign relu_101[7:0] = (bias_add_101[31]==0) ? ((bias_add_101<3'd6) ? {{bias_add_101[31],bias_add_101[9:3]}} :'d6) : '0;
logic [7:0] relu_102;
assign relu_102[7:0] = (bias_add_102[31]==0) ? ((bias_add_102<3'd6) ? {{bias_add_102[31],bias_add_102[9:3]}} :'d6) : '0;
logic [7:0] relu_103;
assign relu_103[7:0] = (bias_add_103[31]==0) ? ((bias_add_103<3'd6) ? {{bias_add_103[31],bias_add_103[9:3]}} :'d6) : '0;
logic [7:0] relu_104;
assign relu_104[7:0] = (bias_add_104[31]==0) ? ((bias_add_104<3'd6) ? {{bias_add_104[31],bias_add_104[9:3]}} :'d6) : '0;
logic [7:0] relu_105;
assign relu_105[7:0] = (bias_add_105[31]==0) ? ((bias_add_105<3'd6) ? {{bias_add_105[31],bias_add_105[9:3]}} :'d6) : '0;
logic [7:0] relu_106;
assign relu_106[7:0] = (bias_add_106[31]==0) ? ((bias_add_106<3'd6) ? {{bias_add_106[31],bias_add_106[9:3]}} :'d6) : '0;
logic [7:0] relu_107;
assign relu_107[7:0] = (bias_add_107[31]==0) ? ((bias_add_107<3'd6) ? {{bias_add_107[31],bias_add_107[9:3]}} :'d6) : '0;
logic [7:0] relu_108;
assign relu_108[7:0] = (bias_add_108[31]==0) ? ((bias_add_108<3'd6) ? {{bias_add_108[31],bias_add_108[9:3]}} :'d6) : '0;
logic [7:0] relu_109;
assign relu_109[7:0] = (bias_add_109[31]==0) ? ((bias_add_109<3'd6) ? {{bias_add_109[31],bias_add_109[9:3]}} :'d6) : '0;
logic [7:0] relu_110;
assign relu_110[7:0] = (bias_add_110[31]==0) ? ((bias_add_110<3'd6) ? {{bias_add_110[31],bias_add_110[9:3]}} :'d6) : '0;
logic [7:0] relu_111;
assign relu_111[7:0] = (bias_add_111[31]==0) ? ((bias_add_111<3'd6) ? {{bias_add_111[31],bias_add_111[9:3]}} :'d6) : '0;
logic [7:0] relu_112;
assign relu_112[7:0] = (bias_add_112[31]==0) ? ((bias_add_112<3'd6) ? {{bias_add_112[31],bias_add_112[9:3]}} :'d6) : '0;
logic [7:0] relu_113;
assign relu_113[7:0] = (bias_add_113[31]==0) ? ((bias_add_113<3'd6) ? {{bias_add_113[31],bias_add_113[9:3]}} :'d6) : '0;
logic [7:0] relu_114;
assign relu_114[7:0] = (bias_add_114[31]==0) ? ((bias_add_114<3'd6) ? {{bias_add_114[31],bias_add_114[9:3]}} :'d6) : '0;
logic [7:0] relu_115;
assign relu_115[7:0] = (bias_add_115[31]==0) ? ((bias_add_115<3'd6) ? {{bias_add_115[31],bias_add_115[9:3]}} :'d6) : '0;
logic [7:0] relu_116;
assign relu_116[7:0] = (bias_add_116[31]==0) ? ((bias_add_116<3'd6) ? {{bias_add_116[31],bias_add_116[9:3]}} :'d6) : '0;
logic [7:0] relu_117;
assign relu_117[7:0] = (bias_add_117[31]==0) ? ((bias_add_117<3'd6) ? {{bias_add_117[31],bias_add_117[9:3]}} :'d6) : '0;
logic [7:0] relu_118;
assign relu_118[7:0] = (bias_add_118[31]==0) ? ((bias_add_118<3'd6) ? {{bias_add_118[31],bias_add_118[9:3]}} :'d6) : '0;
logic [7:0] relu_119;
assign relu_119[7:0] = (bias_add_119[31]==0) ? ((bias_add_119<3'd6) ? {{bias_add_119[31],bias_add_119[9:3]}} :'d6) : '0;
logic [7:0] relu_120;
assign relu_120[7:0] = (bias_add_120[31]==0) ? ((bias_add_120<3'd6) ? {{bias_add_120[31],bias_add_120[9:3]}} :'d6) : '0;
logic [7:0] relu_121;
assign relu_121[7:0] = (bias_add_121[31]==0) ? ((bias_add_121<3'd6) ? {{bias_add_121[31],bias_add_121[9:3]}} :'d6) : '0;
logic [7:0] relu_122;
assign relu_122[7:0] = (bias_add_122[31]==0) ? ((bias_add_122<3'd6) ? {{bias_add_122[31],bias_add_122[9:3]}} :'d6) : '0;
logic [7:0] relu_123;
assign relu_123[7:0] = (bias_add_123[31]==0) ? ((bias_add_123<3'd6) ? {{bias_add_123[31],bias_add_123[9:3]}} :'d6) : '0;
logic [7:0] relu_124;
assign relu_124[7:0] = (bias_add_124[31]==0) ? ((bias_add_124<3'd6) ? {{bias_add_124[31],bias_add_124[9:3]}} :'d6) : '0;
logic [7:0] relu_125;
assign relu_125[7:0] = (bias_add_125[31]==0) ? ((bias_add_125<3'd6) ? {{bias_add_125[31],bias_add_125[9:3]}} :'d6) : '0;
logic [7:0] relu_126;
assign relu_126[7:0] = (bias_add_126[31]==0) ? ((bias_add_126<3'd6) ? {{bias_add_126[31],bias_add_126[9:3]}} :'d6) : '0;
logic [7:0] relu_127;
assign relu_127[7:0] = (bias_add_127[31]==0) ? ((bias_add_127<3'd6) ? {{bias_add_127[31],bias_add_127[9:3]}} :'d6) : '0;
logic [7:0] relu_128;
assign relu_128[7:0] = (bias_add_128[31]==0) ? ((bias_add_128<3'd6) ? {{bias_add_128[31],bias_add_128[9:3]}} :'d6) : '0;
logic [7:0] relu_129;
assign relu_129[7:0] = (bias_add_129[31]==0) ? ((bias_add_129<3'd6) ? {{bias_add_129[31],bias_add_129[9:3]}} :'d6) : '0;
logic [7:0] relu_130;
assign relu_130[7:0] = (bias_add_130[31]==0) ? ((bias_add_130<3'd6) ? {{bias_add_130[31],bias_add_130[9:3]}} :'d6) : '0;
logic [7:0] relu_131;
assign relu_131[7:0] = (bias_add_131[31]==0) ? ((bias_add_131<3'd6) ? {{bias_add_131[31],bias_add_131[9:3]}} :'d6) : '0;
logic [7:0] relu_132;
assign relu_132[7:0] = (bias_add_132[31]==0) ? ((bias_add_132<3'd6) ? {{bias_add_132[31],bias_add_132[9:3]}} :'d6) : '0;
logic [7:0] relu_133;
assign relu_133[7:0] = (bias_add_133[31]==0) ? ((bias_add_133<3'd6) ? {{bias_add_133[31],bias_add_133[9:3]}} :'d6) : '0;
logic [7:0] relu_134;
assign relu_134[7:0] = (bias_add_134[31]==0) ? ((bias_add_134<3'd6) ? {{bias_add_134[31],bias_add_134[9:3]}} :'d6) : '0;
logic [7:0] relu_135;
assign relu_135[7:0] = (bias_add_135[31]==0) ? ((bias_add_135<3'd6) ? {{bias_add_135[31],bias_add_135[9:3]}} :'d6) : '0;
logic [7:0] relu_136;
assign relu_136[7:0] = (bias_add_136[31]==0) ? ((bias_add_136<3'd6) ? {{bias_add_136[31],bias_add_136[9:3]}} :'d6) : '0;
logic [7:0] relu_137;
assign relu_137[7:0] = (bias_add_137[31]==0) ? ((bias_add_137<3'd6) ? {{bias_add_137[31],bias_add_137[9:3]}} :'d6) : '0;
logic [7:0] relu_138;
assign relu_138[7:0] = (bias_add_138[31]==0) ? ((bias_add_138<3'd6) ? {{bias_add_138[31],bias_add_138[9:3]}} :'d6) : '0;
logic [7:0] relu_139;
assign relu_139[7:0] = (bias_add_139[31]==0) ? ((bias_add_139<3'd6) ? {{bias_add_139[31],bias_add_139[9:3]}} :'d6) : '0;
logic [7:0] relu_140;
assign relu_140[7:0] = (bias_add_140[31]==0) ? ((bias_add_140<3'd6) ? {{bias_add_140[31],bias_add_140[9:3]}} :'d6) : '0;
logic [7:0] relu_141;
assign relu_141[7:0] = (bias_add_141[31]==0) ? ((bias_add_141<3'd6) ? {{bias_add_141[31],bias_add_141[9:3]}} :'d6) : '0;
logic [7:0] relu_142;
assign relu_142[7:0] = (bias_add_142[31]==0) ? ((bias_add_142<3'd6) ? {{bias_add_142[31],bias_add_142[9:3]}} :'d6) : '0;
logic [7:0] relu_143;
assign relu_143[7:0] = (bias_add_143[31]==0) ? ((bias_add_143<3'd6) ? {{bias_add_143[31],bias_add_143[9:3]}} :'d6) : '0;
logic [7:0] relu_144;
assign relu_144[7:0] = (bias_add_144[31]==0) ? ((bias_add_144<3'd6) ? {{bias_add_144[31],bias_add_144[9:3]}} :'d6) : '0;
logic [7:0] relu_145;
assign relu_145[7:0] = (bias_add_145[31]==0) ? ((bias_add_145<3'd6) ? {{bias_add_145[31],bias_add_145[9:3]}} :'d6) : '0;
logic [7:0] relu_146;
assign relu_146[7:0] = (bias_add_146[31]==0) ? ((bias_add_146<3'd6) ? {{bias_add_146[31],bias_add_146[9:3]}} :'d6) : '0;
logic [7:0] relu_147;
assign relu_147[7:0] = (bias_add_147[31]==0) ? ((bias_add_147<3'd6) ? {{bias_add_147[31],bias_add_147[9:3]}} :'d6) : '0;
logic [7:0] relu_148;
assign relu_148[7:0] = (bias_add_148[31]==0) ? ((bias_add_148<3'd6) ? {{bias_add_148[31],bias_add_148[9:3]}} :'d6) : '0;
logic [7:0] relu_149;
assign relu_149[7:0] = (bias_add_149[31]==0) ? ((bias_add_149<3'd6) ? {{bias_add_149[31],bias_add_149[9:3]}} :'d6) : '0;
logic [7:0] relu_150;
assign relu_150[7:0] = (bias_add_150[31]==0) ? ((bias_add_150<3'd6) ? {{bias_add_150[31],bias_add_150[9:3]}} :'d6) : '0;
logic [7:0] relu_151;
assign relu_151[7:0] = (bias_add_151[31]==0) ? ((bias_add_151<3'd6) ? {{bias_add_151[31],bias_add_151[9:3]}} :'d6) : '0;
logic [7:0] relu_152;
assign relu_152[7:0] = (bias_add_152[31]==0) ? ((bias_add_152<3'd6) ? {{bias_add_152[31],bias_add_152[9:3]}} :'d6) : '0;
logic [7:0] relu_153;
assign relu_153[7:0] = (bias_add_153[31]==0) ? ((bias_add_153<3'd6) ? {{bias_add_153[31],bias_add_153[9:3]}} :'d6) : '0;
logic [7:0] relu_154;
assign relu_154[7:0] = (bias_add_154[31]==0) ? ((bias_add_154<3'd6) ? {{bias_add_154[31],bias_add_154[9:3]}} :'d6) : '0;
logic [7:0] relu_155;
assign relu_155[7:0] = (bias_add_155[31]==0) ? ((bias_add_155<3'd6) ? {{bias_add_155[31],bias_add_155[9:3]}} :'d6) : '0;
logic [7:0] relu_156;
assign relu_156[7:0] = (bias_add_156[31]==0) ? ((bias_add_156<3'd6) ? {{bias_add_156[31],bias_add_156[9:3]}} :'d6) : '0;
logic [7:0] relu_157;
assign relu_157[7:0] = (bias_add_157[31]==0) ? ((bias_add_157<3'd6) ? {{bias_add_157[31],bias_add_157[9:3]}} :'d6) : '0;
logic [7:0] relu_158;
assign relu_158[7:0] = (bias_add_158[31]==0) ? ((bias_add_158<3'd6) ? {{bias_add_158[31],bias_add_158[9:3]}} :'d6) : '0;
logic [7:0] relu_159;
assign relu_159[7:0] = (bias_add_159[31]==0) ? ((bias_add_159<3'd6) ? {{bias_add_159[31],bias_add_159[9:3]}} :'d6) : '0;
logic [7:0] relu_160;
assign relu_160[7:0] = (bias_add_160[31]==0) ? ((bias_add_160<3'd6) ? {{bias_add_160[31],bias_add_160[9:3]}} :'d6) : '0;
logic [7:0] relu_161;
assign relu_161[7:0] = (bias_add_161[31]==0) ? ((bias_add_161<3'd6) ? {{bias_add_161[31],bias_add_161[9:3]}} :'d6) : '0;
logic [7:0] relu_162;
assign relu_162[7:0] = (bias_add_162[31]==0) ? ((bias_add_162<3'd6) ? {{bias_add_162[31],bias_add_162[9:3]}} :'d6) : '0;
logic [7:0] relu_163;
assign relu_163[7:0] = (bias_add_163[31]==0) ? ((bias_add_163<3'd6) ? {{bias_add_163[31],bias_add_163[9:3]}} :'d6) : '0;
logic [7:0] relu_164;
assign relu_164[7:0] = (bias_add_164[31]==0) ? ((bias_add_164<3'd6) ? {{bias_add_164[31],bias_add_164[9:3]}} :'d6) : '0;
logic [7:0] relu_165;
assign relu_165[7:0] = (bias_add_165[31]==0) ? ((bias_add_165<3'd6) ? {{bias_add_165[31],bias_add_165[9:3]}} :'d6) : '0;
logic [7:0] relu_166;
assign relu_166[7:0] = (bias_add_166[31]==0) ? ((bias_add_166<3'd6) ? {{bias_add_166[31],bias_add_166[9:3]}} :'d6) : '0;
logic [7:0] relu_167;
assign relu_167[7:0] = (bias_add_167[31]==0) ? ((bias_add_167<3'd6) ? {{bias_add_167[31],bias_add_167[9:3]}} :'d6) : '0;
logic [7:0] relu_168;
assign relu_168[7:0] = (bias_add_168[31]==0) ? ((bias_add_168<3'd6) ? {{bias_add_168[31],bias_add_168[9:3]}} :'d6) : '0;
logic [7:0] relu_169;
assign relu_169[7:0] = (bias_add_169[31]==0) ? ((bias_add_169<3'd6) ? {{bias_add_169[31],bias_add_169[9:3]}} :'d6) : '0;
logic [7:0] relu_170;
assign relu_170[7:0] = (bias_add_170[31]==0) ? ((bias_add_170<3'd6) ? {{bias_add_170[31],bias_add_170[9:3]}} :'d6) : '0;
logic [7:0] relu_171;
assign relu_171[7:0] = (bias_add_171[31]==0) ? ((bias_add_171<3'd6) ? {{bias_add_171[31],bias_add_171[9:3]}} :'d6) : '0;
logic [7:0] relu_172;
assign relu_172[7:0] = (bias_add_172[31]==0) ? ((bias_add_172<3'd6) ? {{bias_add_172[31],bias_add_172[9:3]}} :'d6) : '0;
logic [7:0] relu_173;
assign relu_173[7:0] = (bias_add_173[31]==0) ? ((bias_add_173<3'd6) ? {{bias_add_173[31],bias_add_173[9:3]}} :'d6) : '0;
logic [7:0] relu_174;
assign relu_174[7:0] = (bias_add_174[31]==0) ? ((bias_add_174<3'd6) ? {{bias_add_174[31],bias_add_174[9:3]}} :'d6) : '0;
logic [7:0] relu_175;
assign relu_175[7:0] = (bias_add_175[31]==0) ? ((bias_add_175<3'd6) ? {{bias_add_175[31],bias_add_175[9:3]}} :'d6) : '0;
logic [7:0] relu_176;
assign relu_176[7:0] = (bias_add_176[31]==0) ? ((bias_add_176<3'd6) ? {{bias_add_176[31],bias_add_176[9:3]}} :'d6) : '0;
logic [7:0] relu_177;
assign relu_177[7:0] = (bias_add_177[31]==0) ? ((bias_add_177<3'd6) ? {{bias_add_177[31],bias_add_177[9:3]}} :'d6) : '0;
logic [7:0] relu_178;
assign relu_178[7:0] = (bias_add_178[31]==0) ? ((bias_add_178<3'd6) ? {{bias_add_178[31],bias_add_178[9:3]}} :'d6) : '0;
logic [7:0] relu_179;
assign relu_179[7:0] = (bias_add_179[31]==0) ? ((bias_add_179<3'd6) ? {{bias_add_179[31],bias_add_179[9:3]}} :'d6) : '0;
logic [7:0] relu_180;
assign relu_180[7:0] = (bias_add_180[31]==0) ? ((bias_add_180<3'd6) ? {{bias_add_180[31],bias_add_180[9:3]}} :'d6) : '0;
logic [7:0] relu_181;
assign relu_181[7:0] = (bias_add_181[31]==0) ? ((bias_add_181<3'd6) ? {{bias_add_181[31],bias_add_181[9:3]}} :'d6) : '0;
logic [7:0] relu_182;
assign relu_182[7:0] = (bias_add_182[31]==0) ? ((bias_add_182<3'd6) ? {{bias_add_182[31],bias_add_182[9:3]}} :'d6) : '0;
logic [7:0] relu_183;
assign relu_183[7:0] = (bias_add_183[31]==0) ? ((bias_add_183<3'd6) ? {{bias_add_183[31],bias_add_183[9:3]}} :'d6) : '0;
logic [7:0] relu_184;
assign relu_184[7:0] = (bias_add_184[31]==0) ? ((bias_add_184<3'd6) ? {{bias_add_184[31],bias_add_184[9:3]}} :'d6) : '0;
logic [7:0] relu_185;
assign relu_185[7:0] = (bias_add_185[31]==0) ? ((bias_add_185<3'd6) ? {{bias_add_185[31],bias_add_185[9:3]}} :'d6) : '0;
logic [7:0] relu_186;
assign relu_186[7:0] = (bias_add_186[31]==0) ? ((bias_add_186<3'd6) ? {{bias_add_186[31],bias_add_186[9:3]}} :'d6) : '0;
logic [7:0] relu_187;
assign relu_187[7:0] = (bias_add_187[31]==0) ? ((bias_add_187<3'd6) ? {{bias_add_187[31],bias_add_187[9:3]}} :'d6) : '0;
logic [7:0] relu_188;
assign relu_188[7:0] = (bias_add_188[31]==0) ? ((bias_add_188<3'd6) ? {{bias_add_188[31],bias_add_188[9:3]}} :'d6) : '0;
logic [7:0] relu_189;
assign relu_189[7:0] = (bias_add_189[31]==0) ? ((bias_add_189<3'd6) ? {{bias_add_189[31],bias_add_189[9:3]}} :'d6) : '0;
logic [7:0] relu_190;
assign relu_190[7:0] = (bias_add_190[31]==0) ? ((bias_add_190<3'd6) ? {{bias_add_190[31],bias_add_190[9:3]}} :'d6) : '0;
logic [7:0] relu_191;
assign relu_191[7:0] = (bias_add_191[31]==0) ? ((bias_add_191<3'd6) ? {{bias_add_191[31],bias_add_191[9:3]}} :'d6) : '0;
logic [7:0] relu_192;
assign relu_192[7:0] = (bias_add_192[31]==0) ? ((bias_add_192<3'd6) ? {{bias_add_192[31],bias_add_192[9:3]}} :'d6) : '0;
logic [7:0] relu_193;
assign relu_193[7:0] = (bias_add_193[31]==0) ? ((bias_add_193<3'd6) ? {{bias_add_193[31],bias_add_193[9:3]}} :'d6) : '0;
logic [7:0] relu_194;
assign relu_194[7:0] = (bias_add_194[31]==0) ? ((bias_add_194<3'd6) ? {{bias_add_194[31],bias_add_194[9:3]}} :'d6) : '0;
logic [7:0] relu_195;
assign relu_195[7:0] = (bias_add_195[31]==0) ? ((bias_add_195<3'd6) ? {{bias_add_195[31],bias_add_195[9:3]}} :'d6) : '0;
logic [7:0] relu_196;
assign relu_196[7:0] = (bias_add_196[31]==0) ? ((bias_add_196<3'd6) ? {{bias_add_196[31],bias_add_196[9:3]}} :'d6) : '0;
logic [7:0] relu_197;
assign relu_197[7:0] = (bias_add_197[31]==0) ? ((bias_add_197<3'd6) ? {{bias_add_197[31],bias_add_197[9:3]}} :'d6) : '0;
logic [7:0] relu_198;
assign relu_198[7:0] = (bias_add_198[31]==0) ? ((bias_add_198<3'd6) ? {{bias_add_198[31],bias_add_198[9:3]}} :'d6) : '0;
logic [7:0] relu_199;
assign relu_199[7:0] = (bias_add_199[31]==0) ? ((bias_add_199<3'd6) ? {{bias_add_199[31],bias_add_199[9:3]}} :'d6) : '0;
logic [7:0] relu_200;
assign relu_200[7:0] = (bias_add_200[31]==0) ? ((bias_add_200<3'd6) ? {{bias_add_200[31],bias_add_200[9:3]}} :'d6) : '0;
logic [7:0] relu_201;
assign relu_201[7:0] = (bias_add_201[31]==0) ? ((bias_add_201<3'd6) ? {{bias_add_201[31],bias_add_201[9:3]}} :'d6) : '0;
logic [7:0] relu_202;
assign relu_202[7:0] = (bias_add_202[31]==0) ? ((bias_add_202<3'd6) ? {{bias_add_202[31],bias_add_202[9:3]}} :'d6) : '0;
logic [7:0] relu_203;
assign relu_203[7:0] = (bias_add_203[31]==0) ? ((bias_add_203<3'd6) ? {{bias_add_203[31],bias_add_203[9:3]}} :'d6) : '0;
logic [7:0] relu_204;
assign relu_204[7:0] = (bias_add_204[31]==0) ? ((bias_add_204<3'd6) ? {{bias_add_204[31],bias_add_204[9:3]}} :'d6) : '0;
logic [7:0] relu_205;
assign relu_205[7:0] = (bias_add_205[31]==0) ? ((bias_add_205<3'd6) ? {{bias_add_205[31],bias_add_205[9:3]}} :'d6) : '0;
logic [7:0] relu_206;
assign relu_206[7:0] = (bias_add_206[31]==0) ? ((bias_add_206<3'd6) ? {{bias_add_206[31],bias_add_206[9:3]}} :'d6) : '0;
logic [7:0] relu_207;
assign relu_207[7:0] = (bias_add_207[31]==0) ? ((bias_add_207<3'd6) ? {{bias_add_207[31],bias_add_207[9:3]}} :'d6) : '0;
logic [7:0] relu_208;
assign relu_208[7:0] = (bias_add_208[31]==0) ? ((bias_add_208<3'd6) ? {{bias_add_208[31],bias_add_208[9:3]}} :'d6) : '0;
logic [7:0] relu_209;
assign relu_209[7:0] = (bias_add_209[31]==0) ? ((bias_add_209<3'd6) ? {{bias_add_209[31],bias_add_209[9:3]}} :'d6) : '0;
logic [7:0] relu_210;
assign relu_210[7:0] = (bias_add_210[31]==0) ? ((bias_add_210<3'd6) ? {{bias_add_210[31],bias_add_210[9:3]}} :'d6) : '0;
logic [7:0] relu_211;
assign relu_211[7:0] = (bias_add_211[31]==0) ? ((bias_add_211<3'd6) ? {{bias_add_211[31],bias_add_211[9:3]}} :'d6) : '0;
logic [7:0] relu_212;
assign relu_212[7:0] = (bias_add_212[31]==0) ? ((bias_add_212<3'd6) ? {{bias_add_212[31],bias_add_212[9:3]}} :'d6) : '0;
logic [7:0] relu_213;
assign relu_213[7:0] = (bias_add_213[31]==0) ? ((bias_add_213<3'd6) ? {{bias_add_213[31],bias_add_213[9:3]}} :'d6) : '0;
logic [7:0] relu_214;
assign relu_214[7:0] = (bias_add_214[31]==0) ? ((bias_add_214<3'd6) ? {{bias_add_214[31],bias_add_214[9:3]}} :'d6) : '0;
logic [7:0] relu_215;
assign relu_215[7:0] = (bias_add_215[31]==0) ? ((bias_add_215<3'd6) ? {{bias_add_215[31],bias_add_215[9:3]}} :'d6) : '0;
logic [7:0] relu_216;
assign relu_216[7:0] = (bias_add_216[31]==0) ? ((bias_add_216<3'd6) ? {{bias_add_216[31],bias_add_216[9:3]}} :'d6) : '0;
logic [7:0] relu_217;
assign relu_217[7:0] = (bias_add_217[31]==0) ? ((bias_add_217<3'd6) ? {{bias_add_217[31],bias_add_217[9:3]}} :'d6) : '0;
logic [7:0] relu_218;
assign relu_218[7:0] = (bias_add_218[31]==0) ? ((bias_add_218<3'd6) ? {{bias_add_218[31],bias_add_218[9:3]}} :'d6) : '0;
logic [7:0] relu_219;
assign relu_219[7:0] = (bias_add_219[31]==0) ? ((bias_add_219<3'd6) ? {{bias_add_219[31],bias_add_219[9:3]}} :'d6) : '0;
logic [7:0] relu_220;
assign relu_220[7:0] = (bias_add_220[31]==0) ? ((bias_add_220<3'd6) ? {{bias_add_220[31],bias_add_220[9:3]}} :'d6) : '0;
logic [7:0] relu_221;
assign relu_221[7:0] = (bias_add_221[31]==0) ? ((bias_add_221<3'd6) ? {{bias_add_221[31],bias_add_221[9:3]}} :'d6) : '0;
logic [7:0] relu_222;
assign relu_222[7:0] = (bias_add_222[31]==0) ? ((bias_add_222<3'd6) ? {{bias_add_222[31],bias_add_222[9:3]}} :'d6) : '0;
logic [7:0] relu_223;
assign relu_223[7:0] = (bias_add_223[31]==0) ? ((bias_add_223<3'd6) ? {{bias_add_223[31],bias_add_223[9:3]}} :'d6) : '0;
logic [7:0] relu_224;
assign relu_224[7:0] = (bias_add_224[31]==0) ? ((bias_add_224<3'd6) ? {{bias_add_224[31],bias_add_224[9:3]}} :'d6) : '0;
logic [7:0] relu_225;
assign relu_225[7:0] = (bias_add_225[31]==0) ? ((bias_add_225<3'd6) ? {{bias_add_225[31],bias_add_225[9:3]}} :'d6) : '0;
logic [7:0] relu_226;
assign relu_226[7:0] = (bias_add_226[31]==0) ? ((bias_add_226<3'd6) ? {{bias_add_226[31],bias_add_226[9:3]}} :'d6) : '0;
logic [7:0] relu_227;
assign relu_227[7:0] = (bias_add_227[31]==0) ? ((bias_add_227<3'd6) ? {{bias_add_227[31],bias_add_227[9:3]}} :'d6) : '0;
logic [7:0] relu_228;
assign relu_228[7:0] = (bias_add_228[31]==0) ? ((bias_add_228<3'd6) ? {{bias_add_228[31],bias_add_228[9:3]}} :'d6) : '0;
logic [7:0] relu_229;
assign relu_229[7:0] = (bias_add_229[31]==0) ? ((bias_add_229<3'd6) ? {{bias_add_229[31],bias_add_229[9:3]}} :'d6) : '0;
logic [7:0] relu_230;
assign relu_230[7:0] = (bias_add_230[31]==0) ? ((bias_add_230<3'd6) ? {{bias_add_230[31],bias_add_230[9:3]}} :'d6) : '0;
logic [7:0] relu_231;
assign relu_231[7:0] = (bias_add_231[31]==0) ? ((bias_add_231<3'd6) ? {{bias_add_231[31],bias_add_231[9:3]}} :'d6) : '0;
logic [7:0] relu_232;
assign relu_232[7:0] = (bias_add_232[31]==0) ? ((bias_add_232<3'd6) ? {{bias_add_232[31],bias_add_232[9:3]}} :'d6) : '0;
logic [7:0] relu_233;
assign relu_233[7:0] = (bias_add_233[31]==0) ? ((bias_add_233<3'd6) ? {{bias_add_233[31],bias_add_233[9:3]}} :'d6) : '0;
logic [7:0] relu_234;
assign relu_234[7:0] = (bias_add_234[31]==0) ? ((bias_add_234<3'd6) ? {{bias_add_234[31],bias_add_234[9:3]}} :'d6) : '0;
logic [7:0] relu_235;
assign relu_235[7:0] = (bias_add_235[31]==0) ? ((bias_add_235<3'd6) ? {{bias_add_235[31],bias_add_235[9:3]}} :'d6) : '0;
logic [7:0] relu_236;
assign relu_236[7:0] = (bias_add_236[31]==0) ? ((bias_add_236<3'd6) ? {{bias_add_236[31],bias_add_236[9:3]}} :'d6) : '0;
logic [7:0] relu_237;
assign relu_237[7:0] = (bias_add_237[31]==0) ? ((bias_add_237<3'd6) ? {{bias_add_237[31],bias_add_237[9:3]}} :'d6) : '0;
logic [7:0] relu_238;
assign relu_238[7:0] = (bias_add_238[31]==0) ? ((bias_add_238<3'd6) ? {{bias_add_238[31],bias_add_238[9:3]}} :'d6) : '0;
logic [7:0] relu_239;
assign relu_239[7:0] = (bias_add_239[31]==0) ? ((bias_add_239<3'd6) ? {{bias_add_239[31],bias_add_239[9:3]}} :'d6) : '0;
logic [7:0] relu_240;
assign relu_240[7:0] = (bias_add_240[31]==0) ? ((bias_add_240<3'd6) ? {{bias_add_240[31],bias_add_240[9:3]}} :'d6) : '0;
logic [7:0] relu_241;
assign relu_241[7:0] = (bias_add_241[31]==0) ? ((bias_add_241<3'd6) ? {{bias_add_241[31],bias_add_241[9:3]}} :'d6) : '0;
logic [7:0] relu_242;
assign relu_242[7:0] = (bias_add_242[31]==0) ? ((bias_add_242<3'd6) ? {{bias_add_242[31],bias_add_242[9:3]}} :'d6) : '0;
logic [7:0] relu_243;
assign relu_243[7:0] = (bias_add_243[31]==0) ? ((bias_add_243<3'd6) ? {{bias_add_243[31],bias_add_243[9:3]}} :'d6) : '0;
logic [7:0] relu_244;
assign relu_244[7:0] = (bias_add_244[31]==0) ? ((bias_add_244<3'd6) ? {{bias_add_244[31],bias_add_244[9:3]}} :'d6) : '0;
logic [7:0] relu_245;
assign relu_245[7:0] = (bias_add_245[31]==0) ? ((bias_add_245<3'd6) ? {{bias_add_245[31],bias_add_245[9:3]}} :'d6) : '0;
logic [7:0] relu_246;
assign relu_246[7:0] = (bias_add_246[31]==0) ? ((bias_add_246<3'd6) ? {{bias_add_246[31],bias_add_246[9:3]}} :'d6) : '0;
logic [7:0] relu_247;
assign relu_247[7:0] = (bias_add_247[31]==0) ? ((bias_add_247<3'd6) ? {{bias_add_247[31],bias_add_247[9:3]}} :'d6) : '0;
logic [7:0] relu_248;
assign relu_248[7:0] = (bias_add_248[31]==0) ? ((bias_add_248<3'd6) ? {{bias_add_248[31],bias_add_248[9:3]}} :'d6) : '0;
logic [7:0] relu_249;
assign relu_249[7:0] = (bias_add_249[31]==0) ? ((bias_add_249<3'd6) ? {{bias_add_249[31],bias_add_249[9:3]}} :'d6) : '0;
logic [7:0] relu_250;
assign relu_250[7:0] = (bias_add_250[31]==0) ? ((bias_add_250<3'd6) ? {{bias_add_250[31],bias_add_250[9:3]}} :'d6) : '0;
logic [7:0] relu_251;
assign relu_251[7:0] = (bias_add_251[31]==0) ? ((bias_add_251<3'd6) ? {{bias_add_251[31],bias_add_251[9:3]}} :'d6) : '0;
logic [7:0] relu_252;
assign relu_252[7:0] = (bias_add_252[31]==0) ? ((bias_add_252<3'd6) ? {{bias_add_252[31],bias_add_252[9:3]}} :'d6) : '0;
logic [7:0] relu_253;
assign relu_253[7:0] = (bias_add_253[31]==0) ? ((bias_add_253<3'd6) ? {{bias_add_253[31],bias_add_253[9:3]}} :'d6) : '0;
logic [7:0] relu_254;
assign relu_254[7:0] = (bias_add_254[31]==0) ? ((bias_add_254<3'd6) ? {{bias_add_254[31],bias_add_254[9:3]}} :'d6) : '0;
logic [7:0] relu_255;
assign relu_255[7:0] = (bias_add_255[31]==0) ? ((bias_add_255<3'd6) ? {{bias_add_255[31],bias_add_255[9:3]}} :'d6) : '0;

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
