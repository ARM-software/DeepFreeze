module conv7_pw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [1024-1:0] input_act,
    output logic [2048-1:0] output_act,
    output logic ready
);

logic [1024-1:0] input_act_ff;
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

logic [15:0] input_fmap_0;
assign input_fmap_0 = input_act_ff[15:0];
logic [15:0] input_fmap_1;
assign input_fmap_1 = input_act_ff[31:16];
logic [15:0] input_fmap_2;
assign input_fmap_2 = input_act_ff[47:32];
logic [15:0] input_fmap_3;
assign input_fmap_3 = input_act_ff[63:48];
logic [15:0] input_fmap_4;
assign input_fmap_4 = input_act_ff[79:64];
logic [15:0] input_fmap_5;
assign input_fmap_5 = input_act_ff[95:80];
logic [15:0] input_fmap_6;
assign input_fmap_6 = input_act_ff[111:96];
logic [15:0] input_fmap_7;
assign input_fmap_7 = input_act_ff[127:112];
logic [15:0] input_fmap_8;
assign input_fmap_8 = input_act_ff[143:128];
logic [15:0] input_fmap_9;
assign input_fmap_9 = input_act_ff[159:144];
logic [15:0] input_fmap_10;
assign input_fmap_10 = input_act_ff[175:160];
logic [15:0] input_fmap_11;
assign input_fmap_11 = input_act_ff[191:176];
logic [15:0] input_fmap_12;
assign input_fmap_12 = input_act_ff[207:192];
logic [15:0] input_fmap_13;
assign input_fmap_13 = input_act_ff[223:208];
logic [15:0] input_fmap_14;
assign input_fmap_14 = input_act_ff[239:224];
logic [15:0] input_fmap_15;
assign input_fmap_15 = input_act_ff[255:240];
logic [15:0] input_fmap_16;
assign input_fmap_16 = input_act_ff[271:256];
logic [15:0] input_fmap_17;
assign input_fmap_17 = input_act_ff[287:272];
logic [15:0] input_fmap_18;
assign input_fmap_18 = input_act_ff[303:288];
logic [15:0] input_fmap_19;
assign input_fmap_19 = input_act_ff[319:304];
logic [15:0] input_fmap_20;
assign input_fmap_20 = input_act_ff[335:320];
logic [15:0] input_fmap_21;
assign input_fmap_21 = input_act_ff[351:336];
logic [15:0] input_fmap_22;
assign input_fmap_22 = input_act_ff[367:352];
logic [15:0] input_fmap_23;
assign input_fmap_23 = input_act_ff[383:368];
logic [15:0] input_fmap_24;
assign input_fmap_24 = input_act_ff[399:384];
logic [15:0] input_fmap_25;
assign input_fmap_25 = input_act_ff[415:400];
logic [15:0] input_fmap_26;
assign input_fmap_26 = input_act_ff[431:416];
logic [15:0] input_fmap_27;
assign input_fmap_27 = input_act_ff[447:432];
logic [15:0] input_fmap_28;
assign input_fmap_28 = input_act_ff[463:448];
logic [15:0] input_fmap_29;
assign input_fmap_29 = input_act_ff[479:464];
logic [15:0] input_fmap_30;
assign input_fmap_30 = input_act_ff[495:480];
logic [15:0] input_fmap_31;
assign input_fmap_31 = input_act_ff[511:496];
logic [15:0] input_fmap_32;
assign input_fmap_32 = input_act_ff[527:512];
logic [15:0] input_fmap_33;
assign input_fmap_33 = input_act_ff[543:528];
logic [15:0] input_fmap_34;
assign input_fmap_34 = input_act_ff[559:544];
logic [15:0] input_fmap_35;
assign input_fmap_35 = input_act_ff[575:560];
logic [15:0] input_fmap_36;
assign input_fmap_36 = input_act_ff[591:576];
logic [15:0] input_fmap_37;
assign input_fmap_37 = input_act_ff[607:592];
logic [15:0] input_fmap_38;
assign input_fmap_38 = input_act_ff[623:608];
logic [15:0] input_fmap_39;
assign input_fmap_39 = input_act_ff[639:624];
logic [15:0] input_fmap_40;
assign input_fmap_40 = input_act_ff[655:640];
logic [15:0] input_fmap_41;
assign input_fmap_41 = input_act_ff[671:656];
logic [15:0] input_fmap_42;
assign input_fmap_42 = input_act_ff[687:672];
logic [15:0] input_fmap_43;
assign input_fmap_43 = input_act_ff[703:688];
logic [15:0] input_fmap_44;
assign input_fmap_44 = input_act_ff[719:704];
logic [15:0] input_fmap_45;
assign input_fmap_45 = input_act_ff[735:720];
logic [15:0] input_fmap_46;
assign input_fmap_46 = input_act_ff[751:736];
logic [15:0] input_fmap_47;
assign input_fmap_47 = input_act_ff[767:752];
logic [15:0] input_fmap_48;
assign input_fmap_48 = input_act_ff[783:768];
logic [15:0] input_fmap_49;
assign input_fmap_49 = input_act_ff[799:784];
logic [15:0] input_fmap_50;
assign input_fmap_50 = input_act_ff[815:800];
logic [15:0] input_fmap_51;
assign input_fmap_51 = input_act_ff[831:816];
logic [15:0] input_fmap_52;
assign input_fmap_52 = input_act_ff[847:832];
logic [15:0] input_fmap_53;
assign input_fmap_53 = input_act_ff[863:848];
logic [15:0] input_fmap_54;
assign input_fmap_54 = input_act_ff[879:864];
logic [15:0] input_fmap_55;
assign input_fmap_55 = input_act_ff[895:880];
logic [15:0] input_fmap_56;
assign input_fmap_56 = input_act_ff[911:896];
logic [15:0] input_fmap_57;
assign input_fmap_57 = input_act_ff[927:912];
logic [15:0] input_fmap_58;
assign input_fmap_58 = input_act_ff[943:928];
logic [15:0] input_fmap_59;
assign input_fmap_59 = input_act_ff[959:944];
logic [15:0] input_fmap_60;
assign input_fmap_60 = input_act_ff[975:960];
logic [15:0] input_fmap_61;
assign input_fmap_61 = input_act_ff[991:976];
logic [15:0] input_fmap_62;
assign input_fmap_62 = input_act_ff[1007:992];
logic [15:0] input_fmap_63;
assign input_fmap_63 = input_act_ff[1023:1008];

logic signed [31:0] conv_mac_0;
assign conv_mac_0 = 
	( 16'sd 26318) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6956) * $signed(input_fmap_1[15:0]) +
	( 14'sd 6092) * $signed(input_fmap_2[15:0]) +
	( 14'sd 5583) * $signed(input_fmap_3[15:0]) +
	( 14'sd 7913) * $signed(input_fmap_4[15:0]) +
	( 16'sd 23407) * $signed(input_fmap_5[15:0]) +
	( 16'sd 17032) * $signed(input_fmap_6[15:0]) +
	( 15'sd 13145) * $signed(input_fmap_7[15:0]) +
	( 16'sd 23776) * $signed(input_fmap_8[15:0]) +
	( 15'sd 16373) * $signed(input_fmap_9[15:0]) +
	( 13'sd 3429) * $signed(input_fmap_10[15:0]) +
	( 16'sd 31565) * $signed(input_fmap_11[15:0]) +
	( 16'sd 19995) * $signed(input_fmap_12[15:0]) +
	( 10'sd 355) * $signed(input_fmap_13[15:0]) +
	( 16'sd 18443) * $signed(input_fmap_14[15:0]) +
	( 15'sd 14445) * $signed(input_fmap_15[15:0]) +
	( 16'sd 17881) * $signed(input_fmap_16[15:0]) +
	( 16'sd 31023) * $signed(input_fmap_17[15:0]) +
	( 15'sd 10197) * $signed(input_fmap_18[15:0]) +
	( 15'sd 9682) * $signed(input_fmap_19[15:0]) +
	( 16'sd 31225) * $signed(input_fmap_20[15:0]) +
	( 11'sd 981) * $signed(input_fmap_21[15:0]) +
	( 16'sd 31806) * $signed(input_fmap_22[15:0]) +
	( 16'sd 19335) * $signed(input_fmap_23[15:0]) +
	( 16'sd 23612) * $signed(input_fmap_24[15:0]) +
	( 13'sd 3805) * $signed(input_fmap_25[15:0]) +
	( 14'sd 6041) * $signed(input_fmap_26[15:0]) +
	( 14'sd 4521) * $signed(input_fmap_27[15:0]) +
	( 16'sd 25472) * $signed(input_fmap_28[15:0]) +
	( 14'sd 6797) * $signed(input_fmap_29[15:0]) +
	( 16'sd 22784) * $signed(input_fmap_30[15:0]) +
	( 15'sd 14838) * $signed(input_fmap_31[15:0]) +
	( 16'sd 18948) * $signed(input_fmap_32[15:0]) +
	( 15'sd 13327) * $signed(input_fmap_33[15:0]) +
	( 15'sd 13862) * $signed(input_fmap_34[15:0]) +
	( 15'sd 8419) * $signed(input_fmap_35[15:0]) +
	( 16'sd 17475) * $signed(input_fmap_36[15:0]) +
	( 14'sd 7973) * $signed(input_fmap_37[15:0]) +
	( 15'sd 9669) * $signed(input_fmap_38[15:0]) +
	( 16'sd 18952) * $signed(input_fmap_39[15:0]) +
	( 15'sd 15658) * $signed(input_fmap_40[15:0]) +
	( 16'sd 23433) * $signed(input_fmap_41[15:0]) +
	( 14'sd 5887) * $signed(input_fmap_42[15:0]) +
	( 16'sd 29927) * $signed(input_fmap_43[15:0]) +
	( 16'sd 16967) * $signed(input_fmap_44[15:0]) +
	( 16'sd 27077) * $signed(input_fmap_45[15:0]) +
	( 14'sd 4129) * $signed(input_fmap_46[15:0]) +
	( 14'sd 7058) * $signed(input_fmap_47[15:0]) +
	( 15'sd 10262) * $signed(input_fmap_48[15:0]) +
	( 13'sd 2520) * $signed(input_fmap_49[15:0]) +
	( 14'sd 7721) * $signed(input_fmap_50[15:0]) +
	( 15'sd 10073) * $signed(input_fmap_51[15:0]) +
	( 12'sd 1760) * $signed(input_fmap_52[15:0]) +
	( 13'sd 3188) * $signed(input_fmap_53[15:0]) +
	( 16'sd 20837) * $signed(input_fmap_54[15:0]) +
	( 16'sd 16953) * $signed(input_fmap_55[15:0]) +
	( 16'sd 31370) * $signed(input_fmap_56[15:0]) +
	( 16'sd 27056) * $signed(input_fmap_57[15:0]) +
	( 16'sd 19651) * $signed(input_fmap_58[15:0]) +
	( 16'sd 23297) * $signed(input_fmap_59[15:0]) +
	( 12'sd 1184) * $signed(input_fmap_60[15:0]) +
	( 16'sd 29291) * $signed(input_fmap_61[15:0]) +
	( 16'sd 23592) * $signed(input_fmap_62[15:0]) +
	( 16'sd 28296) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 15'sd 12939) * $signed(input_fmap_0[15:0]) +
	( 16'sd 27595) * $signed(input_fmap_1[15:0]) +
	( 16'sd 24454) * $signed(input_fmap_2[15:0]) +
	( 16'sd 16644) * $signed(input_fmap_3[15:0]) +
	( 16'sd 22671) * $signed(input_fmap_4[15:0]) +
	( 12'sd 1033) * $signed(input_fmap_5[15:0]) +
	( 16'sd 19045) * $signed(input_fmap_6[15:0]) +
	( 16'sd 22824) * $signed(input_fmap_7[15:0]) +
	( 16'sd 20663) * $signed(input_fmap_8[15:0]) +
	( 15'sd 14500) * $signed(input_fmap_9[15:0]) +
	( 16'sd 24628) * $signed(input_fmap_10[15:0]) +
	( 16'sd 22518) * $signed(input_fmap_11[15:0]) +
	( 14'sd 4286) * $signed(input_fmap_12[15:0]) +
	( 15'sd 16103) * $signed(input_fmap_13[15:0]) +
	( 12'sd 1078) * $signed(input_fmap_14[15:0]) +
	( 15'sd 12753) * $signed(input_fmap_15[15:0]) +
	( 16'sd 21284) * $signed(input_fmap_16[15:0]) +
	( 14'sd 5387) * $signed(input_fmap_17[15:0]) +
	( 16'sd 20258) * $signed(input_fmap_18[15:0]) +
	( 15'sd 13119) * $signed(input_fmap_19[15:0]) +
	( 15'sd 13878) * $signed(input_fmap_20[15:0]) +
	( 16'sd 21308) * $signed(input_fmap_21[15:0]) +
	( 16'sd 27706) * $signed(input_fmap_22[15:0]) +
	( 13'sd 3402) * $signed(input_fmap_23[15:0]) +
	( 15'sd 9557) * $signed(input_fmap_24[15:0]) +
	( 15'sd 12385) * $signed(input_fmap_25[15:0]) +
	( 15'sd 16248) * $signed(input_fmap_26[15:0]) +
	( 14'sd 6747) * $signed(input_fmap_27[15:0]) +
	( 14'sd 5403) * $signed(input_fmap_28[15:0]) +
	( 16'sd 29681) * $signed(input_fmap_29[15:0]) +
	( 16'sd 29875) * $signed(input_fmap_30[15:0]) +
	( 14'sd 6946) * $signed(input_fmap_31[15:0]) +
	( 16'sd 26851) * $signed(input_fmap_32[15:0]) +
	( 16'sd 32146) * $signed(input_fmap_33[15:0]) +
	( 14'sd 5456) * $signed(input_fmap_34[15:0]) +
	( 16'sd 22023) * $signed(input_fmap_35[15:0]) +
	( 12'sd 1057) * $signed(input_fmap_36[15:0]) +
	( 15'sd 15800) * $signed(input_fmap_37[15:0]) +
	( 16'sd 16641) * $signed(input_fmap_38[15:0]) +
	( 15'sd 10375) * $signed(input_fmap_39[15:0]) +
	( 15'sd 15233) * $signed(input_fmap_40[15:0]) +
	( 16'sd 24633) * $signed(input_fmap_41[15:0]) +
	( 16'sd 31381) * $signed(input_fmap_42[15:0]) +
	( 16'sd 21037) * $signed(input_fmap_43[15:0]) +
	( 15'sd 11572) * $signed(input_fmap_44[15:0]) +
	( 16'sd 21618) * $signed(input_fmap_45[15:0]) +
	( 11'sd 692) * $signed(input_fmap_46[15:0]) +
	( 12'sd 1500) * $signed(input_fmap_47[15:0]) +
	( 16'sd 26973) * $signed(input_fmap_48[15:0]) +
	( 16'sd 20436) * $signed(input_fmap_49[15:0]) +
	( 16'sd 23053) * $signed(input_fmap_50[15:0]) +
	( 15'sd 10883) * $signed(input_fmap_51[15:0]) +
	( 16'sd 16940) * $signed(input_fmap_52[15:0]) +
	( 16'sd 17013) * $signed(input_fmap_53[15:0]) +
	( 14'sd 4535) * $signed(input_fmap_54[15:0]) +
	( 16'sd 28161) * $signed(input_fmap_55[15:0]) +
	( 15'sd 12755) * $signed(input_fmap_56[15:0]) +
	( 13'sd 3514) * $signed(input_fmap_57[15:0]) +
	( 16'sd 27172) * $signed(input_fmap_58[15:0]) +
	( 16'sd 21158) * $signed(input_fmap_59[15:0]) +
	( 16'sd 30462) * $signed(input_fmap_60[15:0]) +
	( 13'sd 3435) * $signed(input_fmap_61[15:0]) +
	( 15'sd 15526) * $signed(input_fmap_62[15:0]) +
	( 16'sd 16712) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 15'sd 10220) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6462) * $signed(input_fmap_1[15:0]) +
	( 16'sd 23484) * $signed(input_fmap_2[15:0]) +
	( 15'sd 12467) * $signed(input_fmap_3[15:0]) +
	( 12'sd 1291) * $signed(input_fmap_4[15:0]) +
	( 16'sd 21186) * $signed(input_fmap_5[15:0]) +
	( 16'sd 32014) * $signed(input_fmap_6[15:0]) +
	( 16'sd 24936) * $signed(input_fmap_7[15:0]) +
	( 8'sd 107) * $signed(input_fmap_8[15:0]) +
	( 15'sd 13254) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1305) * $signed(input_fmap_10[15:0]) +
	( 16'sd 20265) * $signed(input_fmap_11[15:0]) +
	( 15'sd 12596) * $signed(input_fmap_12[15:0]) +
	( 15'sd 9286) * $signed(input_fmap_13[15:0]) +
	( 16'sd 20201) * $signed(input_fmap_14[15:0]) +
	( 16'sd 24944) * $signed(input_fmap_15[15:0]) +
	( 15'sd 14123) * $signed(input_fmap_16[15:0]) +
	( 15'sd 14548) * $signed(input_fmap_17[15:0]) +
	( 16'sd 16405) * $signed(input_fmap_18[15:0]) +
	( 16'sd 19445) * $signed(input_fmap_19[15:0]) +
	( 16'sd 31841) * $signed(input_fmap_20[15:0]) +
	( 15'sd 12413) * $signed(input_fmap_21[15:0]) +
	( 15'sd 10076) * $signed(input_fmap_22[15:0]) +
	( 15'sd 10208) * $signed(input_fmap_23[15:0]) +
	( 16'sd 28471) * $signed(input_fmap_24[15:0]) +
	( 16'sd 18514) * $signed(input_fmap_25[15:0]) +
	( 16'sd 21074) * $signed(input_fmap_26[15:0]) +
	( 13'sd 3122) * $signed(input_fmap_27[15:0]) +
	( 16'sd 22613) * $signed(input_fmap_28[15:0]) +
	( 16'sd 25366) * $signed(input_fmap_29[15:0]) +
	( 14'sd 7357) * $signed(input_fmap_30[15:0]) +
	( 11'sd 691) * $signed(input_fmap_31[15:0]) +
	( 16'sd 25324) * $signed(input_fmap_32[15:0]) +
	( 15'sd 14487) * $signed(input_fmap_33[15:0]) +
	( 16'sd 31646) * $signed(input_fmap_34[15:0]) +
	( 14'sd 7127) * $signed(input_fmap_35[15:0]) +
	( 16'sd 27508) * $signed(input_fmap_36[15:0]) +
	( 16'sd 28097) * $signed(input_fmap_37[15:0]) +
	( 14'sd 4912) * $signed(input_fmap_38[15:0]) +
	( 16'sd 30443) * $signed(input_fmap_39[15:0]) +
	( 13'sd 3469) * $signed(input_fmap_40[15:0]) +
	( 14'sd 7493) * $signed(input_fmap_41[15:0]) +
	( 16'sd 29461) * $signed(input_fmap_42[15:0]) +
	( 16'sd 29706) * $signed(input_fmap_43[15:0]) +
	( 16'sd 17728) * $signed(input_fmap_44[15:0]) +
	( 15'sd 10459) * $signed(input_fmap_45[15:0]) +
	( 16'sd 23083) * $signed(input_fmap_46[15:0]) +
	( 16'sd 29404) * $signed(input_fmap_47[15:0]) +
	( 16'sd 29065) * $signed(input_fmap_48[15:0]) +
	( 16'sd 19892) * $signed(input_fmap_49[15:0]) +
	( 15'sd 8530) * $signed(input_fmap_50[15:0]) +
	( 15'sd 13200) * $signed(input_fmap_51[15:0]) +
	( 14'sd 4247) * $signed(input_fmap_52[15:0]) +
	( 14'sd 5567) * $signed(input_fmap_53[15:0]) +
	( 16'sd 22502) * $signed(input_fmap_54[15:0]) +
	( 15'sd 8810) * $signed(input_fmap_55[15:0]) +
	( 16'sd 30041) * $signed(input_fmap_56[15:0]) +
	( 16'sd 22849) * $signed(input_fmap_57[15:0]) +
	( 16'sd 22548) * $signed(input_fmap_58[15:0]) +
	( 16'sd 26651) * $signed(input_fmap_59[15:0]) +
	( 16'sd 27874) * $signed(input_fmap_60[15:0]) +
	( 5'sd 14) * $signed(input_fmap_61[15:0]) +
	( 13'sd 2059) * $signed(input_fmap_62[15:0]) +
	( 15'sd 15441) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 16'sd 17035) * $signed(input_fmap_0[15:0]) +
	( 10'sd 484) * $signed(input_fmap_1[15:0]) +
	( 16'sd 30136) * $signed(input_fmap_2[15:0]) +
	( 15'sd 16098) * $signed(input_fmap_3[15:0]) +
	( 16'sd 17852) * $signed(input_fmap_4[15:0]) +
	( 14'sd 5814) * $signed(input_fmap_5[15:0]) +
	( 16'sd 20860) * $signed(input_fmap_6[15:0]) +
	( 16'sd 27577) * $signed(input_fmap_7[15:0]) +
	( 14'sd 4342) * $signed(input_fmap_8[15:0]) +
	( 13'sd 2624) * $signed(input_fmap_9[15:0]) +
	( 11'sd 643) * $signed(input_fmap_10[15:0]) +
	( 16'sd 29583) * $signed(input_fmap_11[15:0]) +
	( 16'sd 29528) * $signed(input_fmap_12[15:0]) +
	( 16'sd 21655) * $signed(input_fmap_13[15:0]) +
	( 16'sd 26141) * $signed(input_fmap_14[15:0]) +
	( 16'sd 26133) * $signed(input_fmap_15[15:0]) +
	( 15'sd 15028) * $signed(input_fmap_16[15:0]) +
	( 15'sd 11904) * $signed(input_fmap_17[15:0]) +
	( 16'sd 23539) * $signed(input_fmap_18[15:0]) +
	( 7'sd 45) * $signed(input_fmap_19[15:0]) +
	( 16'sd 26437) * $signed(input_fmap_20[15:0]) +
	( 15'sd 10256) * $signed(input_fmap_21[15:0]) +
	( 16'sd 23387) * $signed(input_fmap_22[15:0]) +
	( 15'sd 9006) * $signed(input_fmap_23[15:0]) +
	( 15'sd 11152) * $signed(input_fmap_24[15:0]) +
	( 16'sd 32362) * $signed(input_fmap_25[15:0]) +
	( 16'sd 25840) * $signed(input_fmap_26[15:0]) +
	( 16'sd 29467) * $signed(input_fmap_27[15:0]) +
	( 13'sd 2249) * $signed(input_fmap_28[15:0]) +
	( 16'sd 26337) * $signed(input_fmap_29[15:0]) +
	( 14'sd 7478) * $signed(input_fmap_30[15:0]) +
	( 13'sd 3256) * $signed(input_fmap_31[15:0]) +
	( 16'sd 21640) * $signed(input_fmap_32[15:0]) +
	( 16'sd 19203) * $signed(input_fmap_33[15:0]) +
	( 16'sd 23463) * $signed(input_fmap_34[15:0]) +
	( 16'sd 20256) * $signed(input_fmap_35[15:0]) +
	( 16'sd 18967) * $signed(input_fmap_36[15:0]) +
	( 16'sd 16540) * $signed(input_fmap_37[15:0]) +
	( 15'sd 10904) * $signed(input_fmap_38[15:0]) +
	( 15'sd 15870) * $signed(input_fmap_39[15:0]) +
	( 14'sd 4777) * $signed(input_fmap_40[15:0]) +
	( 16'sd 21814) * $signed(input_fmap_41[15:0]) +
	( 16'sd 22353) * $signed(input_fmap_42[15:0]) +
	( 16'sd 31791) * $signed(input_fmap_43[15:0]) +
	( 16'sd 16801) * $signed(input_fmap_44[15:0]) +
	( 15'sd 13949) * $signed(input_fmap_45[15:0]) +
	( 14'sd 7519) * $signed(input_fmap_46[15:0]) +
	( 16'sd 26972) * $signed(input_fmap_47[15:0]) +
	( 16'sd 18274) * $signed(input_fmap_48[15:0]) +
	( 15'sd 8623) * $signed(input_fmap_49[15:0]) +
	( 16'sd 29869) * $signed(input_fmap_50[15:0]) +
	( 13'sd 2546) * $signed(input_fmap_51[15:0]) +
	( 14'sd 6151) * $signed(input_fmap_52[15:0]) +
	( 16'sd 18326) * $signed(input_fmap_53[15:0]) +
	( 16'sd 21678) * $signed(input_fmap_54[15:0]) +
	( 16'sd 24380) * $signed(input_fmap_55[15:0]) +
	( 16'sd 27411) * $signed(input_fmap_56[15:0]) +
	( 12'sd 1950) * $signed(input_fmap_57[15:0]) +
	( 16'sd 19511) * $signed(input_fmap_58[15:0]) +
	( 12'sd 1277) * $signed(input_fmap_59[15:0]) +
	( 16'sd 30253) * $signed(input_fmap_60[15:0]) +
	( 13'sd 2974) * $signed(input_fmap_61[15:0]) +
	( 15'sd 11938) * $signed(input_fmap_62[15:0]) +
	( 16'sd 28514) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 12'sd 1234) * $signed(input_fmap_0[15:0]) +
	( 16'sd 24171) * $signed(input_fmap_1[15:0]) +
	( 16'sd 27825) * $signed(input_fmap_2[15:0]) +
	( 15'sd 16240) * $signed(input_fmap_3[15:0]) +
	( 16'sd 23245) * $signed(input_fmap_4[15:0]) +
	( 16'sd 18055) * $signed(input_fmap_5[15:0]) +
	( 16'sd 24090) * $signed(input_fmap_6[15:0]) +
	( 15'sd 15628) * $signed(input_fmap_7[15:0]) +
	( 16'sd 29700) * $signed(input_fmap_8[15:0]) +
	( 16'sd 21530) * $signed(input_fmap_9[15:0]) +
	( 11'sd 986) * $signed(input_fmap_10[15:0]) +
	( 15'sd 16015) * $signed(input_fmap_11[15:0]) +
	( 16'sd 31602) * $signed(input_fmap_12[15:0]) +
	( 15'sd 9440) * $signed(input_fmap_13[15:0]) +
	( 16'sd 32193) * $signed(input_fmap_14[15:0]) +
	( 16'sd 17309) * $signed(input_fmap_15[15:0]) +
	( 16'sd 18285) * $signed(input_fmap_16[15:0]) +
	( 16'sd 22593) * $signed(input_fmap_17[15:0]) +
	( 15'sd 13372) * $signed(input_fmap_18[15:0]) +
	( 16'sd 27804) * $signed(input_fmap_19[15:0]) +
	( 16'sd 25096) * $signed(input_fmap_20[15:0]) +
	( 16'sd 26149) * $signed(input_fmap_21[15:0]) +
	( 16'sd 21716) * $signed(input_fmap_22[15:0]) +
	( 15'sd 15529) * $signed(input_fmap_23[15:0]) +
	( 16'sd 24358) * $signed(input_fmap_24[15:0]) +
	( 16'sd 17415) * $signed(input_fmap_25[15:0]) +
	( 15'sd 9764) * $signed(input_fmap_26[15:0]) +
	( 16'sd 31308) * $signed(input_fmap_27[15:0]) +
	( 16'sd 17553) * $signed(input_fmap_28[15:0]) +
	( 16'sd 27883) * $signed(input_fmap_29[15:0]) +
	( 16'sd 27597) * $signed(input_fmap_30[15:0]) +
	( 15'sd 10025) * $signed(input_fmap_31[15:0]) +
	( 14'sd 6056) * $signed(input_fmap_32[15:0]) +
	( 16'sd 27808) * $signed(input_fmap_33[15:0]) +
	( 13'sd 3938) * $signed(input_fmap_34[15:0]) +
	( 14'sd 6097) * $signed(input_fmap_35[15:0]) +
	( 16'sd 25199) * $signed(input_fmap_36[15:0]) +
	( 15'sd 11198) * $signed(input_fmap_37[15:0]) +
	( 8'sd 92) * $signed(input_fmap_38[15:0]) +
	( 16'sd 28070) * $signed(input_fmap_39[15:0]) +
	( 14'sd 7252) * $signed(input_fmap_40[15:0]) +
	( 15'sd 14166) * $signed(input_fmap_41[15:0]) +
	( 15'sd 12076) * $signed(input_fmap_42[15:0]) +
	( 14'sd 7007) * $signed(input_fmap_43[15:0]) +
	( 15'sd 13064) * $signed(input_fmap_44[15:0]) +
	( 16'sd 23180) * $signed(input_fmap_45[15:0]) +
	( 16'sd 30998) * $signed(input_fmap_46[15:0]) +
	( 16'sd 22900) * $signed(input_fmap_47[15:0]) +
	( 14'sd 5294) * $signed(input_fmap_48[15:0]) +
	( 16'sd 32019) * $signed(input_fmap_49[15:0]) +
	( 16'sd 29619) * $signed(input_fmap_50[15:0]) +
	( 16'sd 23599) * $signed(input_fmap_51[15:0]) +
	( 15'sd 11540) * $signed(input_fmap_52[15:0]) +
	( 16'sd 16913) * $signed(input_fmap_53[15:0]) +
	( 16'sd 17023) * $signed(input_fmap_54[15:0]) +
	( 13'sd 3156) * $signed(input_fmap_55[15:0]) +
	( 13'sd 3725) * $signed(input_fmap_56[15:0]) +
	( 15'sd 12960) * $signed(input_fmap_57[15:0]) +
	( 16'sd 21660) * $signed(input_fmap_58[15:0]) +
	( 15'sd 15209) * $signed(input_fmap_59[15:0]) +
	( 16'sd 20672) * $signed(input_fmap_60[15:0]) +
	( 16'sd 30363) * $signed(input_fmap_61[15:0]) +
	( 16'sd 30953) * $signed(input_fmap_62[15:0]) +
	( 11'sd 913) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 15'sd 14355) * $signed(input_fmap_0[15:0]) +
	( 15'sd 10913) * $signed(input_fmap_1[15:0]) +
	( 16'sd 19390) * $signed(input_fmap_2[15:0]) +
	( 14'sd 4165) * $signed(input_fmap_3[15:0]) +
	( 11'sd 725) * $signed(input_fmap_4[15:0]) +
	( 16'sd 31002) * $signed(input_fmap_5[15:0]) +
	( 15'sd 14161) * $signed(input_fmap_6[15:0]) +
	( 16'sd 24144) * $signed(input_fmap_7[15:0]) +
	( 16'sd 22498) * $signed(input_fmap_8[15:0]) +
	( 16'sd 28344) * $signed(input_fmap_9[15:0]) +
	( 16'sd 23581) * $signed(input_fmap_10[15:0]) +
	( 15'sd 10622) * $signed(input_fmap_11[15:0]) +
	( 15'sd 14448) * $signed(input_fmap_12[15:0]) +
	( 16'sd 21397) * $signed(input_fmap_13[15:0]) +
	( 16'sd 28134) * $signed(input_fmap_14[15:0]) +
	( 15'sd 8433) * $signed(input_fmap_15[15:0]) +
	( 14'sd 7051) * $signed(input_fmap_16[15:0]) +
	( 15'sd 15663) * $signed(input_fmap_17[15:0]) +
	( 16'sd 30515) * $signed(input_fmap_18[15:0]) +
	( 15'sd 15210) * $signed(input_fmap_19[15:0]) +
	( 15'sd 14948) * $signed(input_fmap_20[15:0]) +
	( 16'sd 16818) * $signed(input_fmap_21[15:0]) +
	( 15'sd 13371) * $signed(input_fmap_22[15:0]) +
	( 16'sd 31286) * $signed(input_fmap_23[15:0]) +
	( 16'sd 29727) * $signed(input_fmap_24[15:0]) +
	( 16'sd 27356) * $signed(input_fmap_25[15:0]) +
	( 11'sd 793) * $signed(input_fmap_26[15:0]) +
	( 13'sd 2852) * $signed(input_fmap_27[15:0]) +
	( 15'sd 10091) * $signed(input_fmap_28[15:0]) +
	( 11'sd 705) * $signed(input_fmap_29[15:0]) +
	( 16'sd 20138) * $signed(input_fmap_30[15:0]) +
	( 14'sd 5405) * $signed(input_fmap_31[15:0]) +
	( 15'sd 9856) * $signed(input_fmap_32[15:0]) +
	( 16'sd 21079) * $signed(input_fmap_33[15:0]) +
	( 14'sd 5049) * $signed(input_fmap_34[15:0]) +
	( 16'sd 32137) * $signed(input_fmap_35[15:0]) +
	( 16'sd 20843) * $signed(input_fmap_36[15:0]) +
	( 16'sd 17780) * $signed(input_fmap_37[15:0]) +
	( 16'sd 23354) * $signed(input_fmap_38[15:0]) +
	( 16'sd 23311) * $signed(input_fmap_39[15:0]) +
	( 16'sd 29533) * $signed(input_fmap_40[15:0]) +
	( 13'sd 3043) * $signed(input_fmap_41[15:0]) +
	( 16'sd 25020) * $signed(input_fmap_42[15:0]) +
	( 16'sd 21101) * $signed(input_fmap_43[15:0]) +
	( 16'sd 26550) * $signed(input_fmap_44[15:0]) +
	( 16'sd 21087) * $signed(input_fmap_45[15:0]) +
	( 16'sd 21477) * $signed(input_fmap_46[15:0]) +
	( 16'sd 24524) * $signed(input_fmap_47[15:0]) +
	( 16'sd 20144) * $signed(input_fmap_48[15:0]) +
	( 16'sd 22369) * $signed(input_fmap_49[15:0]) +
	( 16'sd 23371) * $signed(input_fmap_50[15:0]) +
	( 16'sd 30768) * $signed(input_fmap_51[15:0]) +
	( 13'sd 2717) * $signed(input_fmap_52[15:0]) +
	( 16'sd 24317) * $signed(input_fmap_53[15:0]) +
	( 16'sd 32118) * $signed(input_fmap_54[15:0]) +
	( 16'sd 25034) * $signed(input_fmap_55[15:0]) +
	( 16'sd 22514) * $signed(input_fmap_56[15:0]) +
	( 16'sd 28184) * $signed(input_fmap_57[15:0]) +
	( 16'sd 28324) * $signed(input_fmap_58[15:0]) +
	( 16'sd 21844) * $signed(input_fmap_59[15:0]) +
	( 16'sd 28332) * $signed(input_fmap_60[15:0]) +
	( 15'sd 12469) * $signed(input_fmap_61[15:0]) +
	( 16'sd 30043) * $signed(input_fmap_62[15:0]) +
	( 13'sd 3829) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 15'sd 10728) * $signed(input_fmap_0[15:0]) +
	( 16'sd 20903) * $signed(input_fmap_1[15:0]) +
	( 16'sd 21416) * $signed(input_fmap_2[15:0]) +
	( 15'sd 9153) * $signed(input_fmap_3[15:0]) +
	( 15'sd 9635) * $signed(input_fmap_4[15:0]) +
	( 16'sd 18378) * $signed(input_fmap_5[15:0]) +
	( 16'sd 17995) * $signed(input_fmap_6[15:0]) +
	( 16'sd 29340) * $signed(input_fmap_7[15:0]) +
	( 15'sd 11028) * $signed(input_fmap_8[15:0]) +
	( 14'sd 6809) * $signed(input_fmap_9[15:0]) +
	( 15'sd 10347) * $signed(input_fmap_10[15:0]) +
	( 16'sd 25637) * $signed(input_fmap_11[15:0]) +
	( 16'sd 31992) * $signed(input_fmap_12[15:0]) +
	( 12'sd 1778) * $signed(input_fmap_13[15:0]) +
	( 16'sd 28503) * $signed(input_fmap_14[15:0]) +
	( 12'sd 1172) * $signed(input_fmap_15[15:0]) +
	( 16'sd 20887) * $signed(input_fmap_16[15:0]) +
	( 16'sd 20189) * $signed(input_fmap_17[15:0]) +
	( 16'sd 28579) * $signed(input_fmap_18[15:0]) +
	( 16'sd 28416) * $signed(input_fmap_19[15:0]) +
	( 16'sd 18101) * $signed(input_fmap_20[15:0]) +
	( 16'sd 18902) * $signed(input_fmap_21[15:0]) +
	( 12'sd 1810) * $signed(input_fmap_22[15:0]) +
	( 15'sd 10398) * $signed(input_fmap_23[15:0]) +
	( 14'sd 4302) * $signed(input_fmap_24[15:0]) +
	( 13'sd 2834) * $signed(input_fmap_25[15:0]) +
	( 14'sd 5910) * $signed(input_fmap_26[15:0]) +
	( 14'sd 5146) * $signed(input_fmap_27[15:0]) +
	( 16'sd 18443) * $signed(input_fmap_28[15:0]) +
	( 15'sd 8413) * $signed(input_fmap_29[15:0]) +
	( 16'sd 20138) * $signed(input_fmap_30[15:0]) +
	( 16'sd 19631) * $signed(input_fmap_31[15:0]) +
	( 16'sd 30457) * $signed(input_fmap_32[15:0]) +
	( 16'sd 27285) * $signed(input_fmap_33[15:0]) +
	( 12'sd 1581) * $signed(input_fmap_34[15:0]) +
	( 12'sd 1352) * $signed(input_fmap_35[15:0]) +
	( 13'sd 3918) * $signed(input_fmap_36[15:0]) +
	( 16'sd 32195) * $signed(input_fmap_37[15:0]) +
	( 16'sd 18857) * $signed(input_fmap_38[15:0]) +
	( 15'sd 8256) * $signed(input_fmap_39[15:0]) +
	( 16'sd 28351) * $signed(input_fmap_40[15:0]) +
	( 16'sd 31820) * $signed(input_fmap_41[15:0]) +
	( 14'sd 5707) * $signed(input_fmap_42[15:0]) +
	( 16'sd 25923) * $signed(input_fmap_43[15:0]) +
	( 16'sd 17649) * $signed(input_fmap_44[15:0]) +
	( 14'sd 6809) * $signed(input_fmap_45[15:0]) +
	( 16'sd 21754) * $signed(input_fmap_46[15:0]) +
	( 15'sd 9342) * $signed(input_fmap_47[15:0]) +
	( 16'sd 20079) * $signed(input_fmap_48[15:0]) +
	( 14'sd 8020) * $signed(input_fmap_49[15:0]) +
	( 16'sd 18168) * $signed(input_fmap_50[15:0]) +
	( 15'sd 9116) * $signed(input_fmap_51[15:0]) +
	( 16'sd 18136) * $signed(input_fmap_52[15:0]) +
	( 16'sd 25771) * $signed(input_fmap_53[15:0]) +
	( 14'sd 6945) * $signed(input_fmap_54[15:0]) +
	( 14'sd 6833) * $signed(input_fmap_55[15:0]) +
	( 16'sd 20004) * $signed(input_fmap_56[15:0]) +
	( 15'sd 13085) * $signed(input_fmap_57[15:0]) +
	( 14'sd 5905) * $signed(input_fmap_58[15:0]) +
	( 16'sd 17944) * $signed(input_fmap_59[15:0]) +
	( 16'sd 28290) * $signed(input_fmap_60[15:0]) +
	( 12'sd 1902) * $signed(input_fmap_61[15:0]) +
	( 16'sd 29074) * $signed(input_fmap_62[15:0]) +
	( 16'sd 32586) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 16'sd 22654) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6874) * $signed(input_fmap_1[15:0]) +
	( 16'sd 18516) * $signed(input_fmap_2[15:0]) +
	( 15'sd 9534) * $signed(input_fmap_3[15:0]) +
	( 16'sd 17875) * $signed(input_fmap_4[15:0]) +
	( 14'sd 7330) * $signed(input_fmap_5[15:0]) +
	( 14'sd 7405) * $signed(input_fmap_6[15:0]) +
	( 15'sd 13445) * $signed(input_fmap_7[15:0]) +
	( 15'sd 13208) * $signed(input_fmap_8[15:0]) +
	( 14'sd 7492) * $signed(input_fmap_9[15:0]) +
	( 16'sd 31992) * $signed(input_fmap_10[15:0]) +
	( 16'sd 26525) * $signed(input_fmap_11[15:0]) +
	( 16'sd 24628) * $signed(input_fmap_12[15:0]) +
	( 14'sd 6143) * $signed(input_fmap_13[15:0]) +
	( 15'sd 8391) * $signed(input_fmap_14[15:0]) +
	( 16'sd 21078) * $signed(input_fmap_15[15:0]) +
	( 16'sd 28457) * $signed(input_fmap_16[15:0]) +
	( 14'sd 6432) * $signed(input_fmap_17[15:0]) +
	( 15'sd 10698) * $signed(input_fmap_18[15:0]) +
	( 14'sd 6005) * $signed(input_fmap_19[15:0]) +
	( 15'sd 11247) * $signed(input_fmap_20[15:0]) +
	( 16'sd 31369) * $signed(input_fmap_21[15:0]) +
	( 15'sd 11162) * $signed(input_fmap_22[15:0]) +
	( 16'sd 22849) * $signed(input_fmap_23[15:0]) +
	( 16'sd 24458) * $signed(input_fmap_24[15:0]) +
	( 14'sd 4706) * $signed(input_fmap_25[15:0]) +
	( 14'sd 6706) * $signed(input_fmap_26[15:0]) +
	( 16'sd 30366) * $signed(input_fmap_27[15:0]) +
	( 16'sd 32524) * $signed(input_fmap_28[15:0]) +
	( 16'sd 27519) * $signed(input_fmap_29[15:0]) +
	( 16'sd 17613) * $signed(input_fmap_30[15:0]) +
	( 14'sd 4416) * $signed(input_fmap_31[15:0]) +
	( 16'sd 22399) * $signed(input_fmap_32[15:0]) +
	( 15'sd 15879) * $signed(input_fmap_33[15:0]) +
	( 15'sd 12240) * $signed(input_fmap_34[15:0]) +
	( 16'sd 24241) * $signed(input_fmap_35[15:0]) +
	( 16'sd 29042) * $signed(input_fmap_36[15:0]) +
	( 15'sd 10472) * $signed(input_fmap_37[15:0]) +
	( 15'sd 11633) * $signed(input_fmap_38[15:0]) +
	( 16'sd 18630) * $signed(input_fmap_39[15:0]) +
	( 16'sd 25468) * $signed(input_fmap_40[15:0]) +
	( 16'sd 19975) * $signed(input_fmap_41[15:0]) +
	( 10'sd 347) * $signed(input_fmap_42[15:0]) +
	( 13'sd 2688) * $signed(input_fmap_43[15:0]) +
	( 15'sd 13578) * $signed(input_fmap_44[15:0]) +
	( 14'sd 6724) * $signed(input_fmap_45[15:0]) +
	( 16'sd 22681) * $signed(input_fmap_46[15:0]) +
	( 15'sd 13341) * $signed(input_fmap_47[15:0]) +
	( 16'sd 22576) * $signed(input_fmap_48[15:0]) +
	( 13'sd 3511) * $signed(input_fmap_49[15:0]) +
	( 16'sd 28036) * $signed(input_fmap_50[15:0]) +
	( 16'sd 21518) * $signed(input_fmap_51[15:0]) +
	( 10'sd 271) * $signed(input_fmap_52[15:0]) +
	( 11'sd 862) * $signed(input_fmap_53[15:0]) +
	( 16'sd 18546) * $signed(input_fmap_54[15:0]) +
	( 16'sd 20989) * $signed(input_fmap_55[15:0]) +
	( 13'sd 3171) * $signed(input_fmap_56[15:0]) +
	( 14'sd 4757) * $signed(input_fmap_57[15:0]) +
	( 15'sd 10461) * $signed(input_fmap_58[15:0]) +
	( 14'sd 4894) * $signed(input_fmap_59[15:0]) +
	( 15'sd 12752) * $signed(input_fmap_60[15:0]) +
	( 15'sd 12084) * $signed(input_fmap_61[15:0]) +
	( 16'sd 21069) * $signed(input_fmap_62[15:0]) +
	( 16'sd 32675) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_8;
assign conv_mac_8 = 
	( 16'sd 29619) * $signed(input_fmap_0[15:0]) +
	( 13'sd 3641) * $signed(input_fmap_1[15:0]) +
	( 16'sd 19682) * $signed(input_fmap_2[15:0]) +
	( 16'sd 23694) * $signed(input_fmap_3[15:0]) +
	( 15'sd 11349) * $signed(input_fmap_4[15:0]) +
	( 16'sd 24804) * $signed(input_fmap_5[15:0]) +
	( 16'sd 20173) * $signed(input_fmap_6[15:0]) +
	( 12'sd 1087) * $signed(input_fmap_7[15:0]) +
	( 15'sd 9616) * $signed(input_fmap_8[15:0]) +
	( 14'sd 6950) * $signed(input_fmap_9[15:0]) +
	( 16'sd 27795) * $signed(input_fmap_10[15:0]) +
	( 15'sd 14443) * $signed(input_fmap_11[15:0]) +
	( 16'sd 25728) * $signed(input_fmap_12[15:0]) +
	( 16'sd 30292) * $signed(input_fmap_13[15:0]) +
	( 16'sd 17497) * $signed(input_fmap_14[15:0]) +
	( 16'sd 17078) * $signed(input_fmap_15[15:0]) +
	( 12'sd 1582) * $signed(input_fmap_16[15:0]) +
	( 14'sd 6188) * $signed(input_fmap_17[15:0]) +
	( 15'sd 12342) * $signed(input_fmap_18[15:0]) +
	( 14'sd 5153) * $signed(input_fmap_19[15:0]) +
	( 12'sd 1219) * $signed(input_fmap_20[15:0]) +
	( 15'sd 15127) * $signed(input_fmap_21[15:0]) +
	( 16'sd 17905) * $signed(input_fmap_22[15:0]) +
	( 15'sd 14628) * $signed(input_fmap_23[15:0]) +
	( 10'sd 369) * $signed(input_fmap_24[15:0]) +
	( 14'sd 6412) * $signed(input_fmap_25[15:0]) +
	( 15'sd 13559) * $signed(input_fmap_26[15:0]) +
	( 12'sd 1025) * $signed(input_fmap_27[15:0]) +
	( 16'sd 29329) * $signed(input_fmap_28[15:0]) +
	( 14'sd 5754) * $signed(input_fmap_29[15:0]) +
	( 16'sd 28122) * $signed(input_fmap_30[15:0]) +
	( 16'sd 30976) * $signed(input_fmap_31[15:0]) +
	( 16'sd 25940) * $signed(input_fmap_32[15:0]) +
	( 12'sd 1745) * $signed(input_fmap_33[15:0]) +
	( 16'sd 25417) * $signed(input_fmap_34[15:0]) +
	( 16'sd 16804) * $signed(input_fmap_35[15:0]) +
	( 15'sd 12730) * $signed(input_fmap_36[15:0]) +
	( 15'sd 11914) * $signed(input_fmap_37[15:0]) +
	( 8'sd 81) * $signed(input_fmap_38[15:0]) +
	( 15'sd 8858) * $signed(input_fmap_39[15:0]) +
	( 16'sd 21550) * $signed(input_fmap_40[15:0]) +
	( 16'sd 24291) * $signed(input_fmap_41[15:0]) +
	( 14'sd 6181) * $signed(input_fmap_42[15:0]) +
	( 16'sd 24684) * $signed(input_fmap_43[15:0]) +
	( 15'sd 14258) * $signed(input_fmap_44[15:0]) +
	( 15'sd 14516) * $signed(input_fmap_45[15:0]) +
	( 16'sd 18384) * $signed(input_fmap_46[15:0]) +
	( 14'sd 4296) * $signed(input_fmap_47[15:0]) +
	( 16'sd 27706) * $signed(input_fmap_48[15:0]) +
	( 14'sd 5355) * $signed(input_fmap_49[15:0]) +
	( 15'sd 8817) * $signed(input_fmap_50[15:0]) +
	( 15'sd 15233) * $signed(input_fmap_51[15:0]) +
	( 13'sd 2695) * $signed(input_fmap_52[15:0]) +
	( 16'sd 17762) * $signed(input_fmap_53[15:0]) +
	( 15'sd 12160) * $signed(input_fmap_54[15:0]) +
	( 16'sd 22352) * $signed(input_fmap_55[15:0]) +
	( 16'sd 31699) * $signed(input_fmap_56[15:0]) +
	( 16'sd 27474) * $signed(input_fmap_57[15:0]) +
	( 15'sd 13426) * $signed(input_fmap_58[15:0]) +
	( 16'sd 17901) * $signed(input_fmap_59[15:0]) +
	( 16'sd 24453) * $signed(input_fmap_60[15:0]) +
	( 16'sd 19701) * $signed(input_fmap_61[15:0]) +
	( 14'sd 4876) * $signed(input_fmap_62[15:0]) +
	( 16'sd 29453) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_9;
assign conv_mac_9 = 
	( 16'sd 30448) * $signed(input_fmap_0[15:0]) +
	( 16'sd 18101) * $signed(input_fmap_1[15:0]) +
	( 15'sd 15504) * $signed(input_fmap_2[15:0]) +
	( 16'sd 30489) * $signed(input_fmap_3[15:0]) +
	( 12'sd 1499) * $signed(input_fmap_4[15:0]) +
	( 16'sd 28805) * $signed(input_fmap_5[15:0]) +
	( 15'sd 12661) * $signed(input_fmap_6[15:0]) +
	( 14'sd 5609) * $signed(input_fmap_7[15:0]) +
	( 16'sd 22859) * $signed(input_fmap_8[15:0]) +
	( 16'sd 29383) * $signed(input_fmap_9[15:0]) +
	( 16'sd 27407) * $signed(input_fmap_10[15:0]) +
	( 14'sd 7683) * $signed(input_fmap_11[15:0]) +
	( 14'sd 6981) * $signed(input_fmap_12[15:0]) +
	( 16'sd 30773) * $signed(input_fmap_13[15:0]) +
	( 12'sd 2002) * $signed(input_fmap_14[15:0]) +
	( 16'sd 25300) * $signed(input_fmap_15[15:0]) +
	( 14'sd 7507) * $signed(input_fmap_16[15:0]) +
	( 13'sd 2960) * $signed(input_fmap_17[15:0]) +
	( 14'sd 7352) * $signed(input_fmap_18[15:0]) +
	( 16'sd 25538) * $signed(input_fmap_19[15:0]) +
	( 15'sd 14841) * $signed(input_fmap_20[15:0]) +
	( 14'sd 4399) * $signed(input_fmap_21[15:0]) +
	( 15'sd 11676) * $signed(input_fmap_22[15:0]) +
	( 16'sd 28575) * $signed(input_fmap_23[15:0]) +
	( 14'sd 7495) * $signed(input_fmap_24[15:0]) +
	( 16'sd 17746) * $signed(input_fmap_25[15:0]) +
	( 14'sd 7589) * $signed(input_fmap_26[15:0]) +
	( 15'sd 8217) * $signed(input_fmap_27[15:0]) +
	( 15'sd 15719) * $signed(input_fmap_28[15:0]) +
	( 16'sd 19017) * $signed(input_fmap_29[15:0]) +
	( 16'sd 23309) * $signed(input_fmap_30[15:0]) +
	( 14'sd 6793) * $signed(input_fmap_31[15:0]) +
	( 16'sd 17905) * $signed(input_fmap_32[15:0]) +
	( 14'sd 5680) * $signed(input_fmap_33[15:0]) +
	( 15'sd 13828) * $signed(input_fmap_34[15:0]) +
	( 16'sd 20007) * $signed(input_fmap_35[15:0]) +
	( 15'sd 11402) * $signed(input_fmap_36[15:0]) +
	( 16'sd 29289) * $signed(input_fmap_37[15:0]) +
	( 15'sd 9425) * $signed(input_fmap_38[15:0]) +
	( 13'sd 2086) * $signed(input_fmap_39[15:0]) +
	( 16'sd 19725) * $signed(input_fmap_40[15:0]) +
	( 16'sd 22528) * $signed(input_fmap_41[15:0]) +
	( 16'sd 22146) * $signed(input_fmap_42[15:0]) +
	( 16'sd 26655) * $signed(input_fmap_43[15:0]) +
	( 16'sd 27355) * $signed(input_fmap_44[15:0]) +
	( 16'sd 22441) * $signed(input_fmap_45[15:0]) +
	( 14'sd 6264) * $signed(input_fmap_46[15:0]) +
	( 14'sd 6418) * $signed(input_fmap_47[15:0]) +
	( 16'sd 19996) * $signed(input_fmap_48[15:0]) +
	( 16'sd 20935) * $signed(input_fmap_49[15:0]) +
	( 15'sd 8587) * $signed(input_fmap_50[15:0]) +
	( 16'sd 25026) * $signed(input_fmap_51[15:0]) +
	( 16'sd 26813) * $signed(input_fmap_52[15:0]) +
	( 16'sd 19533) * $signed(input_fmap_53[15:0]) +
	( 16'sd 21168) * $signed(input_fmap_54[15:0]) +
	( 16'sd 28991) * $signed(input_fmap_55[15:0]) +
	( 15'sd 13592) * $signed(input_fmap_56[15:0]) +
	( 13'sd 3063) * $signed(input_fmap_57[15:0]) +
	( 10'sd 455) * $signed(input_fmap_58[15:0]) +
	( 16'sd 25260) * $signed(input_fmap_59[15:0]) +
	( 15'sd 10044) * $signed(input_fmap_60[15:0]) +
	( 13'sd 3470) * $signed(input_fmap_61[15:0]) +
	( 16'sd 28404) * $signed(input_fmap_62[15:0]) +
	( 15'sd 15099) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_10;
assign conv_mac_10 = 
	( 16'sd 29084) * $signed(input_fmap_0[15:0]) +
	( 16'sd 30222) * $signed(input_fmap_1[15:0]) +
	( 16'sd 16826) * $signed(input_fmap_2[15:0]) +
	( 14'sd 7681) * $signed(input_fmap_3[15:0]) +
	( 14'sd 7961) * $signed(input_fmap_4[15:0]) +
	( 16'sd 23737) * $signed(input_fmap_5[15:0]) +
	( 14'sd 4884) * $signed(input_fmap_6[15:0]) +
	( 15'sd 11690) * $signed(input_fmap_7[15:0]) +
	( 15'sd 12133) * $signed(input_fmap_8[15:0]) +
	( 15'sd 11403) * $signed(input_fmap_9[15:0]) +
	( 16'sd 19872) * $signed(input_fmap_10[15:0]) +
	( 16'sd 17251) * $signed(input_fmap_11[15:0]) +
	( 16'sd 18187) * $signed(input_fmap_12[15:0]) +
	( 15'sd 14580) * $signed(input_fmap_13[15:0]) +
	( 16'sd 25918) * $signed(input_fmap_14[15:0]) +
	( 13'sd 2774) * $signed(input_fmap_15[15:0]) +
	( 15'sd 13868) * $signed(input_fmap_16[15:0]) +
	( 16'sd 19529) * $signed(input_fmap_17[15:0]) +
	( 16'sd 25635) * $signed(input_fmap_18[15:0]) +
	( 8'sd 67) * $signed(input_fmap_19[15:0]) +
	( 16'sd 29127) * $signed(input_fmap_20[15:0]) +
	( 15'sd 16266) * $signed(input_fmap_21[15:0]) +
	( 16'sd 21653) * $signed(input_fmap_22[15:0]) +
	( 15'sd 11080) * $signed(input_fmap_23[15:0]) +
	( 15'sd 12849) * $signed(input_fmap_24[15:0]) +
	( 15'sd 15540) * $signed(input_fmap_25[15:0]) +
	( 16'sd 17951) * $signed(input_fmap_26[15:0]) +
	( 15'sd 14686) * $signed(input_fmap_27[15:0]) +
	( 15'sd 12993) * $signed(input_fmap_28[15:0]) +
	( 16'sd 31258) * $signed(input_fmap_29[15:0]) +
	( 16'sd 26466) * $signed(input_fmap_30[15:0]) +
	( 14'sd 7777) * $signed(input_fmap_31[15:0]) +
	( 16'sd 24676) * $signed(input_fmap_32[15:0]) +
	( 13'sd 2666) * $signed(input_fmap_33[15:0]) +
	( 14'sd 7863) * $signed(input_fmap_34[15:0]) +
	( 15'sd 13103) * $signed(input_fmap_35[15:0]) +
	( 15'sd 12273) * $signed(input_fmap_36[15:0]) +
	( 15'sd 10454) * $signed(input_fmap_37[15:0]) +
	( 15'sd 16083) * $signed(input_fmap_38[15:0]) +
	( 16'sd 18585) * $signed(input_fmap_39[15:0]) +
	( 16'sd 19393) * $signed(input_fmap_40[15:0]) +
	( 16'sd 21872) * $signed(input_fmap_41[15:0]) +
	( 16'sd 16823) * $signed(input_fmap_42[15:0]) +
	( 16'sd 30319) * $signed(input_fmap_43[15:0]) +
	( 15'sd 10200) * $signed(input_fmap_44[15:0]) +
	( 14'sd 6378) * $signed(input_fmap_45[15:0]) +
	( 16'sd 19968) * $signed(input_fmap_46[15:0]) +
	( 15'sd 12976) * $signed(input_fmap_47[15:0]) +
	( 15'sd 13717) * $signed(input_fmap_48[15:0]) +
	( 16'sd 21460) * $signed(input_fmap_49[15:0]) +
	( 13'sd 2836) * $signed(input_fmap_50[15:0]) +
	( 16'sd 28851) * $signed(input_fmap_51[15:0]) +
	( 16'sd 32036) * $signed(input_fmap_52[15:0]) +
	( 16'sd 31165) * $signed(input_fmap_53[15:0]) +
	( 14'sd 8003) * $signed(input_fmap_54[15:0]) +
	( 15'sd 9554) * $signed(input_fmap_55[15:0]) +
	( 16'sd 25821) * $signed(input_fmap_56[15:0]) +
	( 5'sd 13) * $signed(input_fmap_57[15:0]) +
	( 12'sd 1384) * $signed(input_fmap_58[15:0]) +
	( 15'sd 11040) * $signed(input_fmap_59[15:0]) +
	( 13'sd 3998) * $signed(input_fmap_60[15:0]) +
	( 16'sd 21702) * $signed(input_fmap_61[15:0]) +
	( 16'sd 24654) * $signed(input_fmap_62[15:0]) +
	( 16'sd 26209) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_11;
assign conv_mac_11 = 
	( 16'sd 27812) * $signed(input_fmap_0[15:0]) +
	( 16'sd 23720) * $signed(input_fmap_1[15:0]) +
	( 16'sd 21048) * $signed(input_fmap_2[15:0]) +
	( 15'sd 12428) * $signed(input_fmap_3[15:0]) +
	( 16'sd 30232) * $signed(input_fmap_4[15:0]) +
	( 16'sd 25991) * $signed(input_fmap_5[15:0]) +
	( 16'sd 20089) * $signed(input_fmap_6[15:0]) +
	( 16'sd 31539) * $signed(input_fmap_7[15:0]) +
	( 15'sd 8837) * $signed(input_fmap_8[15:0]) +
	( 16'sd 30493) * $signed(input_fmap_9[15:0]) +
	( 14'sd 6057) * $signed(input_fmap_10[15:0]) +
	( 15'sd 8294) * $signed(input_fmap_11[15:0]) +
	( 16'sd 28448) * $signed(input_fmap_12[15:0]) +
	( 14'sd 7980) * $signed(input_fmap_13[15:0]) +
	( 16'sd 24151) * $signed(input_fmap_14[15:0]) +
	( 16'sd 26031) * $signed(input_fmap_15[15:0]) +
	( 14'sd 5734) * $signed(input_fmap_16[15:0]) +
	( 12'sd 1208) * $signed(input_fmap_17[15:0]) +
	( 13'sd 2788) * $signed(input_fmap_18[15:0]) +
	( 16'sd 28755) * $signed(input_fmap_19[15:0]) +
	( 12'sd 1500) * $signed(input_fmap_20[15:0]) +
	( 16'sd 22755) * $signed(input_fmap_21[15:0]) +
	( 14'sd 6407) * $signed(input_fmap_22[15:0]) +
	( 16'sd 31659) * $signed(input_fmap_23[15:0]) +
	( 15'sd 8426) * $signed(input_fmap_24[15:0]) +
	( 16'sd 20907) * $signed(input_fmap_25[15:0]) +
	( 15'sd 9129) * $signed(input_fmap_26[15:0]) +
	( 16'sd 23532) * $signed(input_fmap_27[15:0]) +
	( 13'sd 3852) * $signed(input_fmap_28[15:0]) +
	( 15'sd 9168) * $signed(input_fmap_29[15:0]) +
	( 14'sd 4359) * $signed(input_fmap_30[15:0]) +
	( 14'sd 7257) * $signed(input_fmap_31[15:0]) +
	( 16'sd 30890) * $signed(input_fmap_32[15:0]) +
	( 16'sd 16724) * $signed(input_fmap_33[15:0]) +
	( 16'sd 21873) * $signed(input_fmap_34[15:0]) +
	( 13'sd 2418) * $signed(input_fmap_35[15:0]) +
	( 15'sd 11082) * $signed(input_fmap_36[15:0]) +
	( 16'sd 21619) * $signed(input_fmap_37[15:0]) +
	( 16'sd 30331) * $signed(input_fmap_38[15:0]) +
	( 16'sd 30971) * $signed(input_fmap_39[15:0]) +
	( 15'sd 16192) * $signed(input_fmap_40[15:0]) +
	( 14'sd 5347) * $signed(input_fmap_41[15:0]) +
	( 16'sd 21611) * $signed(input_fmap_42[15:0]) +
	( 14'sd 6925) * $signed(input_fmap_43[15:0]) +
	( 15'sd 14889) * $signed(input_fmap_44[15:0]) +
	( 16'sd 18781) * $signed(input_fmap_45[15:0]) +
	( 16'sd 20135) * $signed(input_fmap_46[15:0]) +
	( 14'sd 6245) * $signed(input_fmap_47[15:0]) +
	( 11'sd 718) * $signed(input_fmap_48[15:0]) +
	( 15'sd 15099) * $signed(input_fmap_49[15:0]) +
	( 14'sd 4356) * $signed(input_fmap_50[15:0]) +
	( 16'sd 27799) * $signed(input_fmap_51[15:0]) +
	( 16'sd 29285) * $signed(input_fmap_52[15:0]) +
	( 13'sd 2991) * $signed(input_fmap_53[15:0]) +
	( 16'sd 29922) * $signed(input_fmap_54[15:0]) +
	( 16'sd 27890) * $signed(input_fmap_55[15:0]) +
	( 15'sd 15278) * $signed(input_fmap_56[15:0]) +
	( 16'sd 18170) * $signed(input_fmap_57[15:0]) +
	( 16'sd 28550) * $signed(input_fmap_58[15:0]) +
	( 9'sd 188) * $signed(input_fmap_59[15:0]) +
	( 16'sd 24480) * $signed(input_fmap_60[15:0]) +
	( 14'sd 5095) * $signed(input_fmap_61[15:0]) +
	( 15'sd 8916) * $signed(input_fmap_62[15:0]) +
	( 16'sd 29924) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_12;
assign conv_mac_12 = 
	( 15'sd 14515) * $signed(input_fmap_0[15:0]) +
	( 16'sd 31331) * $signed(input_fmap_1[15:0]) +
	( 16'sd 16521) * $signed(input_fmap_2[15:0]) +
	( 15'sd 9133) * $signed(input_fmap_3[15:0]) +
	( 16'sd 17098) * $signed(input_fmap_4[15:0]) +
	( 16'sd 28422) * $signed(input_fmap_5[15:0]) +
	( 16'sd 28401) * $signed(input_fmap_6[15:0]) +
	( 15'sd 8525) * $signed(input_fmap_7[15:0]) +
	( 16'sd 21180) * $signed(input_fmap_8[15:0]) +
	( 13'sd 3023) * $signed(input_fmap_9[15:0]) +
	( 14'sd 5861) * $signed(input_fmap_10[15:0]) +
	( 15'sd 12873) * $signed(input_fmap_11[15:0]) +
	( 15'sd 8927) * $signed(input_fmap_12[15:0]) +
	( 15'sd 11172) * $signed(input_fmap_13[15:0]) +
	( 13'sd 4082) * $signed(input_fmap_14[15:0]) +
	( 15'sd 13445) * $signed(input_fmap_15[15:0]) +
	( 14'sd 6979) * $signed(input_fmap_16[15:0]) +
	( 15'sd 12601) * $signed(input_fmap_17[15:0]) +
	( 16'sd 20045) * $signed(input_fmap_18[15:0]) +
	( 16'sd 30602) * $signed(input_fmap_19[15:0]) +
	( 12'sd 1455) * $signed(input_fmap_20[15:0]) +
	( 16'sd 17252) * $signed(input_fmap_21[15:0]) +
	( 16'sd 28538) * $signed(input_fmap_22[15:0]) +
	( 16'sd 30954) * $signed(input_fmap_23[15:0]) +
	( 16'sd 25120) * $signed(input_fmap_24[15:0]) +
	( 16'sd 32316) * $signed(input_fmap_25[15:0]) +
	( 14'sd 7383) * $signed(input_fmap_26[15:0]) +
	( 16'sd 32440) * $signed(input_fmap_27[15:0]) +
	( 15'sd 14187) * $signed(input_fmap_28[15:0]) +
	( 16'sd 27409) * $signed(input_fmap_29[15:0]) +
	( 16'sd 28514) * $signed(input_fmap_30[15:0]) +
	( 13'sd 2996) * $signed(input_fmap_31[15:0]) +
	( 16'sd 24053) * $signed(input_fmap_32[15:0]) +
	( 13'sd 4036) * $signed(input_fmap_33[15:0]) +
	( 14'sd 4802) * $signed(input_fmap_34[15:0]) +
	( 14'sd 6407) * $signed(input_fmap_35[15:0]) +
	( 16'sd 22523) * $signed(input_fmap_36[15:0]) +
	( 16'sd 28819) * $signed(input_fmap_37[15:0]) +
	( 15'sd 11379) * $signed(input_fmap_38[15:0]) +
	( 14'sd 4596) * $signed(input_fmap_39[15:0]) +
	( 16'sd 26843) * $signed(input_fmap_40[15:0]) +
	( 14'sd 7223) * $signed(input_fmap_41[15:0]) +
	( 15'sd 12006) * $signed(input_fmap_42[15:0]) +
	( 16'sd 20430) * $signed(input_fmap_43[15:0]) +
	( 16'sd 18513) * $signed(input_fmap_44[15:0]) +
	( 16'sd 19364) * $signed(input_fmap_45[15:0]) +
	( 16'sd 27824) * $signed(input_fmap_46[15:0]) +
	( 12'sd 1445) * $signed(input_fmap_47[15:0]) +
	( 16'sd 18900) * $signed(input_fmap_48[15:0]) +
	( 15'sd 11056) * $signed(input_fmap_49[15:0]) +
	( 15'sd 14511) * $signed(input_fmap_50[15:0]) +
	( 14'sd 7757) * $signed(input_fmap_51[15:0]) +
	( 15'sd 9968) * $signed(input_fmap_52[15:0]) +
	( 14'sd 6459) * $signed(input_fmap_53[15:0]) +
	( 15'sd 10626) * $signed(input_fmap_54[15:0]) +
	( 14'sd 7031) * $signed(input_fmap_55[15:0]) +
	( 14'sd 5501) * $signed(input_fmap_56[15:0]) +
	( 15'sd 8353) * $signed(input_fmap_57[15:0]) +
	( 15'sd 13211) * $signed(input_fmap_58[15:0]) +
	( 15'sd 11762) * $signed(input_fmap_59[15:0]) +
	( 14'sd 8112) * $signed(input_fmap_60[15:0]) +
	( 16'sd 23120) * $signed(input_fmap_61[15:0]) +
	( 15'sd 11721) * $signed(input_fmap_62[15:0]) +
	( 12'sd 1757) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_13;
assign conv_mac_13 = 
	( 15'sd 10463) * $signed(input_fmap_0[15:0]) +
	( 16'sd 24216) * $signed(input_fmap_1[15:0]) +
	( 15'sd 11572) * $signed(input_fmap_2[15:0]) +
	( 15'sd 9940) * $signed(input_fmap_3[15:0]) +
	( 16'sd 21901) * $signed(input_fmap_4[15:0]) +
	( 16'sd 31674) * $signed(input_fmap_5[15:0]) +
	( 16'sd 18015) * $signed(input_fmap_6[15:0]) +
	( 15'sd 8835) * $signed(input_fmap_7[15:0]) +
	( 15'sd 13796) * $signed(input_fmap_8[15:0]) +
	( 15'sd 11137) * $signed(input_fmap_9[15:0]) +
	( 16'sd 16919) * $signed(input_fmap_10[15:0]) +
	( 14'sd 7466) * $signed(input_fmap_11[15:0]) +
	( 16'sd 19166) * $signed(input_fmap_12[15:0]) +
	( 16'sd 27993) * $signed(input_fmap_13[15:0]) +
	( 16'sd 27491) * $signed(input_fmap_14[15:0]) +
	( 13'sd 3387) * $signed(input_fmap_15[15:0]) +
	( 16'sd 32240) * $signed(input_fmap_16[15:0]) +
	( 16'sd 26884) * $signed(input_fmap_17[15:0]) +
	( 16'sd 21054) * $signed(input_fmap_18[15:0]) +
	( 16'sd 29380) * $signed(input_fmap_19[15:0]) +
	( 16'sd 20721) * $signed(input_fmap_20[15:0]) +
	( 16'sd 27623) * $signed(input_fmap_21[15:0]) +
	( 16'sd 18381) * $signed(input_fmap_22[15:0]) +
	( 16'sd 18676) * $signed(input_fmap_23[15:0]) +
	( 13'sd 3842) * $signed(input_fmap_24[15:0]) +
	( 14'sd 7177) * $signed(input_fmap_25[15:0]) +
	( 15'sd 8784) * $signed(input_fmap_26[15:0]) +
	( 14'sd 7849) * $signed(input_fmap_27[15:0]) +
	( 16'sd 16573) * $signed(input_fmap_28[15:0]) +
	( 16'sd 21925) * $signed(input_fmap_29[15:0]) +
	( 15'sd 16372) * $signed(input_fmap_30[15:0]) +
	( 16'sd 27608) * $signed(input_fmap_31[15:0]) +
	( 16'sd 26659) * $signed(input_fmap_32[15:0]) +
	( 16'sd 21970) * $signed(input_fmap_33[15:0]) +
	( 16'sd 27497) * $signed(input_fmap_34[15:0]) +
	( 15'sd 12878) * $signed(input_fmap_35[15:0]) +
	( 16'sd 27034) * $signed(input_fmap_36[15:0]) +
	( 16'sd 32249) * $signed(input_fmap_37[15:0]) +
	( 16'sd 31883) * $signed(input_fmap_38[15:0]) +
	( 15'sd 11655) * $signed(input_fmap_39[15:0]) +
	( 15'sd 16152) * $signed(input_fmap_40[15:0]) +
	( 16'sd 28818) * $signed(input_fmap_41[15:0]) +
	( 15'sd 8357) * $signed(input_fmap_42[15:0]) +
	( 16'sd 22346) * $signed(input_fmap_43[15:0]) +
	( 13'sd 3218) * $signed(input_fmap_44[15:0]) +
	( 16'sd 24783) * $signed(input_fmap_45[15:0]) +
	( 15'sd 10054) * $signed(input_fmap_46[15:0]) +
	( 16'sd 31928) * $signed(input_fmap_47[15:0]) +
	( 16'sd 18099) * $signed(input_fmap_48[15:0]) +
	( 16'sd 29347) * $signed(input_fmap_49[15:0]) +
	( 16'sd 23718) * $signed(input_fmap_50[15:0]) +
	( 16'sd 29614) * $signed(input_fmap_51[15:0]) +
	( 16'sd 24603) * $signed(input_fmap_52[15:0]) +
	( 10'sd 489) * $signed(input_fmap_53[15:0]) +
	( 16'sd 18147) * $signed(input_fmap_54[15:0]) +
	( 16'sd 19534) * $signed(input_fmap_55[15:0]) +
	( 13'sd 3838) * $signed(input_fmap_56[15:0]) +
	( 15'sd 11507) * $signed(input_fmap_57[15:0]) +
	( 15'sd 11212) * $signed(input_fmap_58[15:0]) +
	( 16'sd 23357) * $signed(input_fmap_59[15:0]) +
	( 15'sd 15166) * $signed(input_fmap_60[15:0]) +
	( 16'sd 21995) * $signed(input_fmap_61[15:0]) +
	( 15'sd 9185) * $signed(input_fmap_62[15:0]) +
	( 16'sd 17789) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_14;
assign conv_mac_14 = 
	( 16'sd 28151) * $signed(input_fmap_0[15:0]) +
	( 13'sd 3545) * $signed(input_fmap_1[15:0]) +
	( 15'sd 11080) * $signed(input_fmap_2[15:0]) +
	( 15'sd 12239) * $signed(input_fmap_3[15:0]) +
	( 16'sd 30577) * $signed(input_fmap_4[15:0]) +
	( 15'sd 14409) * $signed(input_fmap_5[15:0]) +
	( 13'sd 2067) * $signed(input_fmap_6[15:0]) +
	( 16'sd 17167) * $signed(input_fmap_7[15:0]) +
	( 15'sd 10283) * $signed(input_fmap_8[15:0]) +
	( 14'sd 7794) * $signed(input_fmap_9[15:0]) +
	( 14'sd 6953) * $signed(input_fmap_10[15:0]) +
	( 15'sd 9851) * $signed(input_fmap_11[15:0]) +
	( 16'sd 21838) * $signed(input_fmap_12[15:0]) +
	( 13'sd 3702) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13083) * $signed(input_fmap_14[15:0]) +
	( 16'sd 21229) * $signed(input_fmap_15[15:0]) +
	( 16'sd 19875) * $signed(input_fmap_16[15:0]) +
	( 16'sd 24119) * $signed(input_fmap_17[15:0]) +
	( 13'sd 3125) * $signed(input_fmap_18[15:0]) +
	( 16'sd 19892) * $signed(input_fmap_19[15:0]) +
	( 15'sd 10636) * $signed(input_fmap_20[15:0]) +
	( 15'sd 8226) * $signed(input_fmap_21[15:0]) +
	( 15'sd 15576) * $signed(input_fmap_22[15:0]) +
	( 16'sd 16753) * $signed(input_fmap_23[15:0]) +
	( 14'sd 7496) * $signed(input_fmap_24[15:0]) +
	( 16'sd 26041) * $signed(input_fmap_25[15:0]) +
	( 8'sd 99) * $signed(input_fmap_26[15:0]) +
	( 16'sd 19028) * $signed(input_fmap_27[15:0]) +
	( 14'sd 7667) * $signed(input_fmap_28[15:0]) +
	( 16'sd 29323) * $signed(input_fmap_29[15:0]) +
	( 14'sd 7487) * $signed(input_fmap_30[15:0]) +
	( 15'sd 10758) * $signed(input_fmap_31[15:0]) +
	( 8'sd 66) * $signed(input_fmap_32[15:0]) +
	( 15'sd 9404) * $signed(input_fmap_33[15:0]) +
	( 15'sd 14013) * $signed(input_fmap_34[15:0]) +
	( 16'sd 23884) * $signed(input_fmap_35[15:0]) +
	( 15'sd 14824) * $signed(input_fmap_36[15:0]) +
	( 16'sd 29545) * $signed(input_fmap_37[15:0]) +
	( 12'sd 1361) * $signed(input_fmap_38[15:0]) +
	( 15'sd 9376) * $signed(input_fmap_39[15:0]) +
	( 16'sd 16862) * $signed(input_fmap_40[15:0]) +
	( 16'sd 31320) * $signed(input_fmap_41[15:0]) +
	( 15'sd 10395) * $signed(input_fmap_42[15:0]) +
	( 16'sd 22626) * $signed(input_fmap_43[15:0]) +
	( 13'sd 3748) * $signed(input_fmap_44[15:0]) +
	( 16'sd 21710) * $signed(input_fmap_45[15:0]) +
	( 15'sd 14976) * $signed(input_fmap_46[15:0]) +
	( 16'sd 23121) * $signed(input_fmap_47[15:0]) +
	( 16'sd 27748) * $signed(input_fmap_48[15:0]) +
	( 16'sd 22519) * $signed(input_fmap_49[15:0]) +
	( 16'sd 25893) * $signed(input_fmap_50[15:0]) +
	( 13'sd 2722) * $signed(input_fmap_51[15:0]) +
	( 16'sd 29368) * $signed(input_fmap_52[15:0]) +
	( 16'sd 31853) * $signed(input_fmap_53[15:0]) +
	( 15'sd 15770) * $signed(input_fmap_54[15:0]) +
	( 15'sd 15576) * $signed(input_fmap_55[15:0]) +
	( 11'sd 654) * $signed(input_fmap_56[15:0]) +
	( 15'sd 12674) * $signed(input_fmap_57[15:0]) +
	( 16'sd 20641) * $signed(input_fmap_58[15:0]) +
	( 15'sd 14913) * $signed(input_fmap_59[15:0]) +
	( 16'sd 24039) * $signed(input_fmap_60[15:0]) +
	( 12'sd 1360) * $signed(input_fmap_61[15:0]) +
	( 16'sd 30954) * $signed(input_fmap_62[15:0]) +
	( 16'sd 24407) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_15;
assign conv_mac_15 = 
	( 14'sd 5432) * $signed(input_fmap_0[15:0]) +
	( 16'sd 25482) * $signed(input_fmap_1[15:0]) +
	( 15'sd 13342) * $signed(input_fmap_2[15:0]) +
	( 16'sd 28911) * $signed(input_fmap_3[15:0]) +
	( 15'sd 12276) * $signed(input_fmap_4[15:0]) +
	( 16'sd 31368) * $signed(input_fmap_5[15:0]) +
	( 15'sd 9942) * $signed(input_fmap_6[15:0]) +
	( 13'sd 3107) * $signed(input_fmap_7[15:0]) +
	( 15'sd 14825) * $signed(input_fmap_8[15:0]) +
	( 16'sd 18843) * $signed(input_fmap_9[15:0]) +
	( 14'sd 6510) * $signed(input_fmap_10[15:0]) +
	( 14'sd 5914) * $signed(input_fmap_11[15:0]) +
	( 15'sd 8716) * $signed(input_fmap_12[15:0]) +
	( 16'sd 27270) * $signed(input_fmap_13[15:0]) +
	( 16'sd 26887) * $signed(input_fmap_14[15:0]) +
	( 16'sd 17371) * $signed(input_fmap_15[15:0]) +
	( 15'sd 12054) * $signed(input_fmap_16[15:0]) +
	( 16'sd 22470) * $signed(input_fmap_17[15:0]) +
	( 13'sd 2161) * $signed(input_fmap_18[15:0]) +
	( 15'sd 14440) * $signed(input_fmap_19[15:0]) +
	( 15'sd 12811) * $signed(input_fmap_20[15:0]) +
	( 14'sd 5437) * $signed(input_fmap_21[15:0]) +
	( 13'sd 3938) * $signed(input_fmap_22[15:0]) +
	( 15'sd 15752) * $signed(input_fmap_23[15:0]) +
	( 15'sd 8966) * $signed(input_fmap_24[15:0]) +
	( 11'sd 841) * $signed(input_fmap_25[15:0]) +
	( 15'sd 12775) * $signed(input_fmap_26[15:0]) +
	( 16'sd 18469) * $signed(input_fmap_27[15:0]) +
	( 14'sd 4537) * $signed(input_fmap_28[15:0]) +
	( 16'sd 24065) * $signed(input_fmap_29[15:0]) +
	( 16'sd 21078) * $signed(input_fmap_30[15:0]) +
	( 15'sd 14248) * $signed(input_fmap_31[15:0]) +
	( 16'sd 21930) * $signed(input_fmap_32[15:0]) +
	( 15'sd 15400) * $signed(input_fmap_33[15:0]) +
	( 15'sd 9828) * $signed(input_fmap_34[15:0]) +
	( 15'sd 8618) * $signed(input_fmap_35[15:0]) +
	( 16'sd 23017) * $signed(input_fmap_36[15:0]) +
	( 15'sd 14307) * $signed(input_fmap_37[15:0]) +
	( 15'sd 9720) * $signed(input_fmap_38[15:0]) +
	( 16'sd 30760) * $signed(input_fmap_39[15:0]) +
	( 16'sd 25696) * $signed(input_fmap_40[15:0]) +
	( 10'sd 462) * $signed(input_fmap_41[15:0]) +
	( 16'sd 20377) * $signed(input_fmap_42[15:0]) +
	( 16'sd 23863) * $signed(input_fmap_43[15:0]) +
	( 11'sd 597) * $signed(input_fmap_44[15:0]) +
	( 16'sd 18975) * $signed(input_fmap_45[15:0]) +
	( 11'sd 945) * $signed(input_fmap_46[15:0]) +
	( 16'sd 21496) * $signed(input_fmap_47[15:0]) +
	( 16'sd 25280) * $signed(input_fmap_48[15:0]) +
	( 16'sd 30022) * $signed(input_fmap_49[15:0]) +
	( 13'sd 3251) * $signed(input_fmap_50[15:0]) +
	( 15'sd 12083) * $signed(input_fmap_51[15:0]) +
	( 16'sd 22469) * $signed(input_fmap_52[15:0]) +
	( 12'sd 1963) * $signed(input_fmap_53[15:0]) +
	( 15'sd 8749) * $signed(input_fmap_54[15:0]) +
	( 14'sd 6537) * $signed(input_fmap_55[15:0]) +
	( 15'sd 11911) * $signed(input_fmap_56[15:0]) +
	( 14'sd 4292) * $signed(input_fmap_57[15:0]) +
	( 16'sd 29351) * $signed(input_fmap_58[15:0]) +
	( 15'sd 14926) * $signed(input_fmap_59[15:0]) +
	( 15'sd 10521) * $signed(input_fmap_60[15:0]) +
	( 16'sd 17867) * $signed(input_fmap_61[15:0]) +
	( 15'sd 12735) * $signed(input_fmap_62[15:0]) +
	( 16'sd 30225) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_16;
assign conv_mac_16 = 
	( 16'sd 31990) * $signed(input_fmap_0[15:0]) +
	( 15'sd 11637) * $signed(input_fmap_1[15:0]) +
	( 15'sd 14728) * $signed(input_fmap_2[15:0]) +
	( 15'sd 12609) * $signed(input_fmap_3[15:0]) +
	( 15'sd 8432) * $signed(input_fmap_4[15:0]) +
	( 13'sd 4043) * $signed(input_fmap_5[15:0]) +
	( 14'sd 7532) * $signed(input_fmap_6[15:0]) +
	( 16'sd 23143) * $signed(input_fmap_7[15:0]) +
	( 15'sd 13963) * $signed(input_fmap_8[15:0]) +
	( 15'sd 11113) * $signed(input_fmap_9[15:0]) +
	( 13'sd 3904) * $signed(input_fmap_10[15:0]) +
	( 13'sd 3546) * $signed(input_fmap_11[15:0]) +
	( 16'sd 30302) * $signed(input_fmap_12[15:0]) +
	( 15'sd 8624) * $signed(input_fmap_13[15:0]) +
	( 15'sd 9884) * $signed(input_fmap_14[15:0]) +
	( 13'sd 3197) * $signed(input_fmap_15[15:0]) +
	( 12'sd 1638) * $signed(input_fmap_16[15:0]) +
	( 15'sd 11222) * $signed(input_fmap_17[15:0]) +
	( 16'sd 30137) * $signed(input_fmap_18[15:0]) +
	( 14'sd 6644) * $signed(input_fmap_19[15:0]) +
	( 16'sd 19444) * $signed(input_fmap_20[15:0]) +
	( 15'sd 13022) * $signed(input_fmap_21[15:0]) +
	( 16'sd 17598) * $signed(input_fmap_22[15:0]) +
	( 15'sd 8417) * $signed(input_fmap_23[15:0]) +
	( 15'sd 11847) * $signed(input_fmap_24[15:0]) +
	( 15'sd 13579) * $signed(input_fmap_25[15:0]) +
	( 16'sd 22903) * $signed(input_fmap_26[15:0]) +
	( 15'sd 10363) * $signed(input_fmap_27[15:0]) +
	( 15'sd 14867) * $signed(input_fmap_28[15:0]) +
	( 14'sd 5805) * $signed(input_fmap_29[15:0]) +
	( 16'sd 20498) * $signed(input_fmap_30[15:0]) +
	( 16'sd 26517) * $signed(input_fmap_31[15:0]) +
	( 13'sd 3637) * $signed(input_fmap_32[15:0]) +
	( 13'sd 3701) * $signed(input_fmap_33[15:0]) +
	( 16'sd 21504) * $signed(input_fmap_34[15:0]) +
	( 16'sd 19603) * $signed(input_fmap_35[15:0]) +
	( 16'sd 29441) * $signed(input_fmap_36[15:0]) +
	( 16'sd 28735) * $signed(input_fmap_37[15:0]) +
	( 15'sd 12539) * $signed(input_fmap_38[15:0]) +
	( 15'sd 14306) * $signed(input_fmap_39[15:0]) +
	( 16'sd 26254) * $signed(input_fmap_40[15:0]) +
	( 16'sd 25138) * $signed(input_fmap_41[15:0]) +
	( 15'sd 12393) * $signed(input_fmap_42[15:0]) +
	( 16'sd 21049) * $signed(input_fmap_43[15:0]) +
	( 16'sd 21649) * $signed(input_fmap_44[15:0]) +
	( 16'sd 20419) * $signed(input_fmap_45[15:0]) +
	( 16'sd 19645) * $signed(input_fmap_46[15:0]) +
	( 12'sd 1876) * $signed(input_fmap_47[15:0]) +
	( 12'sd 1555) * $signed(input_fmap_48[15:0]) +
	( 16'sd 25200) * $signed(input_fmap_49[15:0]) +
	( 16'sd 21336) * $signed(input_fmap_50[15:0]) +
	( 16'sd 19761) * $signed(input_fmap_51[15:0]) +
	( 16'sd 30584) * $signed(input_fmap_52[15:0]) +
	( 14'sd 6505) * $signed(input_fmap_53[15:0]) +
	( 16'sd 19392) * $signed(input_fmap_54[15:0]) +
	( 16'sd 28397) * $signed(input_fmap_55[15:0]) +
	( 14'sd 5029) * $signed(input_fmap_56[15:0]) +
	( 14'sd 6994) * $signed(input_fmap_57[15:0]) +
	( 16'sd 26142) * $signed(input_fmap_58[15:0]) +
	( 13'sd 2514) * $signed(input_fmap_59[15:0]) +
	( 15'sd 8512) * $signed(input_fmap_60[15:0]) +
	( 14'sd 5596) * $signed(input_fmap_61[15:0]) +
	( 14'sd 7452) * $signed(input_fmap_62[15:0]) +
	( 15'sd 15232) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_17;
assign conv_mac_17 = 
	( 16'sd 21389) * $signed(input_fmap_0[15:0]) +
	( 15'sd 8361) * $signed(input_fmap_1[15:0]) +
	( 15'sd 10951) * $signed(input_fmap_2[15:0]) +
	( 15'sd 15264) * $signed(input_fmap_3[15:0]) +
	( 15'sd 14339) * $signed(input_fmap_4[15:0]) +
	( 16'sd 27536) * $signed(input_fmap_5[15:0]) +
	( 15'sd 10438) * $signed(input_fmap_6[15:0]) +
	( 16'sd 22329) * $signed(input_fmap_7[15:0]) +
	( 16'sd 31415) * $signed(input_fmap_8[15:0]) +
	( 16'sd 25369) * $signed(input_fmap_9[15:0]) +
	( 16'sd 32442) * $signed(input_fmap_10[15:0]) +
	( 16'sd 20242) * $signed(input_fmap_11[15:0]) +
	( 15'sd 11804) * $signed(input_fmap_12[15:0]) +
	( 10'sd 467) * $signed(input_fmap_13[15:0]) +
	( 16'sd 19468) * $signed(input_fmap_14[15:0]) +
	( 14'sd 6938) * $signed(input_fmap_15[15:0]) +
	( 13'sd 2705) * $signed(input_fmap_16[15:0]) +
	( 15'sd 16296) * $signed(input_fmap_17[15:0]) +
	( 15'sd 13921) * $signed(input_fmap_18[15:0]) +
	( 16'sd 25955) * $signed(input_fmap_19[15:0]) +
	( 16'sd 26887) * $signed(input_fmap_20[15:0]) +
	( 15'sd 9840) * $signed(input_fmap_21[15:0]) +
	( 16'sd 30678) * $signed(input_fmap_22[15:0]) +
	( 16'sd 21618) * $signed(input_fmap_23[15:0]) +
	( 16'sd 32113) * $signed(input_fmap_24[15:0]) +
	( 14'sd 7190) * $signed(input_fmap_25[15:0]) +
	( 16'sd 16933) * $signed(input_fmap_26[15:0]) +
	( 15'sd 16274) * $signed(input_fmap_27[15:0]) +
	( 15'sd 8510) * $signed(input_fmap_28[15:0]) +
	( 16'sd 28080) * $signed(input_fmap_29[15:0]) +
	( 15'sd 10788) * $signed(input_fmap_30[15:0]) +
	( 16'sd 21879) * $signed(input_fmap_31[15:0]) +
	( 12'sd 1959) * $signed(input_fmap_32[15:0]) +
	( 15'sd 15755) * $signed(input_fmap_33[15:0]) +
	( 13'sd 2103) * $signed(input_fmap_34[15:0]) +
	( 16'sd 18876) * $signed(input_fmap_35[15:0]) +
	( 15'sd 15400) * $signed(input_fmap_36[15:0]) +
	( 16'sd 25297) * $signed(input_fmap_37[15:0]) +
	( 15'sd 10463) * $signed(input_fmap_38[15:0]) +
	( 13'sd 3998) * $signed(input_fmap_39[15:0]) +
	( 16'sd 23505) * $signed(input_fmap_40[15:0]) +
	( 15'sd 10218) * $signed(input_fmap_41[15:0]) +
	( 14'sd 5365) * $signed(input_fmap_42[15:0]) +
	( 16'sd 26787) * $signed(input_fmap_43[15:0]) +
	( 14'sd 5541) * $signed(input_fmap_44[15:0]) +
	( 16'sd 28051) * $signed(input_fmap_45[15:0]) +
	( 16'sd 25715) * $signed(input_fmap_46[15:0]) +
	( 14'sd 5179) * $signed(input_fmap_47[15:0]) +
	( 16'sd 19599) * $signed(input_fmap_48[15:0]) +
	( 14'sd 5488) * $signed(input_fmap_49[15:0]) +
	( 16'sd 20487) * $signed(input_fmap_50[15:0]) +
	( 16'sd 18512) * $signed(input_fmap_51[15:0]) +
	( 14'sd 5699) * $signed(input_fmap_52[15:0]) +
	( 15'sd 9378) * $signed(input_fmap_53[15:0]) +
	( 16'sd 28659) * $signed(input_fmap_54[15:0]) +
	( 15'sd 10928) * $signed(input_fmap_55[15:0]) +
	( 12'sd 1975) * $signed(input_fmap_56[15:0]) +
	( 16'sd 29084) * $signed(input_fmap_57[15:0]) +
	( 15'sd 8600) * $signed(input_fmap_58[15:0]) +
	( 14'sd 6535) * $signed(input_fmap_59[15:0]) +
	( 16'sd 22426) * $signed(input_fmap_60[15:0]) +
	( 16'sd 27570) * $signed(input_fmap_61[15:0]) +
	( 16'sd 29779) * $signed(input_fmap_62[15:0]) +
	( 16'sd 31761) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_18;
assign conv_mac_18 = 
	( 16'sd 18808) * $signed(input_fmap_0[15:0]) +
	( 16'sd 25952) * $signed(input_fmap_1[15:0]) +
	( 13'sd 3210) * $signed(input_fmap_2[15:0]) +
	( 15'sd 9797) * $signed(input_fmap_3[15:0]) +
	( 16'sd 31054) * $signed(input_fmap_4[15:0]) +
	( 16'sd 29342) * $signed(input_fmap_5[15:0]) +
	( 16'sd 24379) * $signed(input_fmap_6[15:0]) +
	( 13'sd 3184) * $signed(input_fmap_7[15:0]) +
	( 15'sd 10424) * $signed(input_fmap_8[15:0]) +
	( 14'sd 5712) * $signed(input_fmap_9[15:0]) +
	( 16'sd 23336) * $signed(input_fmap_10[15:0]) +
	( 11'sd 648) * $signed(input_fmap_11[15:0]) +
	( 15'sd 11144) * $signed(input_fmap_12[15:0]) +
	( 15'sd 11136) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13366) * $signed(input_fmap_14[15:0]) +
	( 15'sd 14037) * $signed(input_fmap_15[15:0]) +
	( 15'sd 9079) * $signed(input_fmap_16[15:0]) +
	( 16'sd 31760) * $signed(input_fmap_17[15:0]) +
	( 14'sd 7071) * $signed(input_fmap_18[15:0]) +
	( 16'sd 25147) * $signed(input_fmap_19[15:0]) +
	( 15'sd 16077) * $signed(input_fmap_20[15:0]) +
	( 15'sd 9232) * $signed(input_fmap_21[15:0]) +
	( 16'sd 22884) * $signed(input_fmap_22[15:0]) +
	( 16'sd 22763) * $signed(input_fmap_23[15:0]) +
	( 16'sd 29837) * $signed(input_fmap_24[15:0]) +
	( 16'sd 28922) * $signed(input_fmap_25[15:0]) +
	( 14'sd 5536) * $signed(input_fmap_26[15:0]) +
	( 15'sd 8682) * $signed(input_fmap_27[15:0]) +
	( 15'sd 12753) * $signed(input_fmap_28[15:0]) +
	( 14'sd 8143) * $signed(input_fmap_29[15:0]) +
	( 14'sd 4523) * $signed(input_fmap_30[15:0]) +
	( 16'sd 26878) * $signed(input_fmap_31[15:0]) +
	( 14'sd 7243) * $signed(input_fmap_32[15:0]) +
	( 15'sd 8692) * $signed(input_fmap_33[15:0]) +
	( 11'sd 559) * $signed(input_fmap_34[15:0]) +
	( 11'sd 1008) * $signed(input_fmap_35[15:0]) +
	( 16'sd 19623) * $signed(input_fmap_36[15:0]) +
	( 16'sd 25889) * $signed(input_fmap_37[15:0]) +
	( 11'sd 762) * $signed(input_fmap_38[15:0]) +
	( 16'sd 28870) * $signed(input_fmap_39[15:0]) +
	( 16'sd 16689) * $signed(input_fmap_40[15:0]) +
	( 16'sd 31809) * $signed(input_fmap_41[15:0]) +
	( 14'sd 5087) * $signed(input_fmap_42[15:0]) +
	( 15'sd 13460) * $signed(input_fmap_43[15:0]) +
	( 15'sd 9114) * $signed(input_fmap_44[15:0]) +
	( 15'sd 16357) * $signed(input_fmap_45[15:0]) +
	( 16'sd 31283) * $signed(input_fmap_46[15:0]) +
	( 15'sd 15498) * $signed(input_fmap_47[15:0]) +
	( 16'sd 17956) * $signed(input_fmap_48[15:0]) +
	( 16'sd 20352) * $signed(input_fmap_49[15:0]) +
	( 16'sd 19196) * $signed(input_fmap_50[15:0]) +
	( 14'sd 7391) * $signed(input_fmap_51[15:0]) +
	( 16'sd 27210) * $signed(input_fmap_52[15:0]) +
	( 13'sd 3757) * $signed(input_fmap_53[15:0]) +
	( 16'sd 31312) * $signed(input_fmap_54[15:0]) +
	( 16'sd 30486) * $signed(input_fmap_55[15:0]) +
	( 16'sd 17213) * $signed(input_fmap_56[15:0]) +
	( 14'sd 6204) * $signed(input_fmap_57[15:0]) +
	( 15'sd 10327) * $signed(input_fmap_58[15:0]) +
	( 14'sd 7795) * $signed(input_fmap_59[15:0]) +
	( 13'sd 3590) * $signed(input_fmap_60[15:0]) +
	( 16'sd 30074) * $signed(input_fmap_61[15:0]) +
	( 15'sd 13177) * $signed(input_fmap_62[15:0]) +
	( 16'sd 28221) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_19;
assign conv_mac_19 = 
	( 16'sd 30122) * $signed(input_fmap_0[15:0]) +
	( 16'sd 24899) * $signed(input_fmap_1[15:0]) +
	( 16'sd 16594) * $signed(input_fmap_2[15:0]) +
	( 14'sd 4700) * $signed(input_fmap_3[15:0]) +
	( 16'sd 29109) * $signed(input_fmap_4[15:0]) +
	( 16'sd 30934) * $signed(input_fmap_5[15:0]) +
	( 16'sd 16460) * $signed(input_fmap_6[15:0]) +
	( 13'sd 4046) * $signed(input_fmap_7[15:0]) +
	( 15'sd 14813) * $signed(input_fmap_8[15:0]) +
	( 13'sd 2495) * $signed(input_fmap_9[15:0]) +
	( 15'sd 10345) * $signed(input_fmap_10[15:0]) +
	( 10'sd 306) * $signed(input_fmap_11[15:0]) +
	( 16'sd 29614) * $signed(input_fmap_12[15:0]) +
	( 15'sd 15169) * $signed(input_fmap_13[15:0]) +
	( 15'sd 9643) * $signed(input_fmap_14[15:0]) +
	( 15'sd 9199) * $signed(input_fmap_15[15:0]) +
	( 16'sd 25274) * $signed(input_fmap_16[15:0]) +
	( 15'sd 12666) * $signed(input_fmap_17[15:0]) +
	( 16'sd 27442) * $signed(input_fmap_18[15:0]) +
	( 14'sd 5517) * $signed(input_fmap_19[15:0]) +
	( 16'sd 25510) * $signed(input_fmap_20[15:0]) +
	( 16'sd 22806) * $signed(input_fmap_21[15:0]) +
	( 16'sd 17671) * $signed(input_fmap_22[15:0]) +
	( 12'sd 1445) * $signed(input_fmap_23[15:0]) +
	( 16'sd 22467) * $signed(input_fmap_24[15:0]) +
	( 12'sd 1718) * $signed(input_fmap_25[15:0]) +
	( 15'sd 14602) * $signed(input_fmap_26[15:0]) +
	( 16'sd 30087) * $signed(input_fmap_27[15:0]) +
	( 16'sd 23916) * $signed(input_fmap_28[15:0]) +
	( 15'sd 9451) * $signed(input_fmap_29[15:0]) +
	( 15'sd 8557) * $signed(input_fmap_30[15:0]) +
	( 11'sd 892) * $signed(input_fmap_31[15:0]) +
	( 16'sd 16538) * $signed(input_fmap_32[15:0]) +
	( 16'sd 23708) * $signed(input_fmap_33[15:0]) +
	( 13'sd 3720) * $signed(input_fmap_34[15:0]) +
	( 15'sd 8716) * $signed(input_fmap_35[15:0]) +
	( 14'sd 4816) * $signed(input_fmap_36[15:0]) +
	( 16'sd 16475) * $signed(input_fmap_37[15:0]) +
	( 15'sd 8966) * $signed(input_fmap_38[15:0]) +
	( 14'sd 7518) * $signed(input_fmap_39[15:0]) +
	( 16'sd 28703) * $signed(input_fmap_40[15:0]) +
	( 15'sd 12276) * $signed(input_fmap_41[15:0]) +
	( 13'sd 3499) * $signed(input_fmap_42[15:0]) +
	( 14'sd 6527) * $signed(input_fmap_43[15:0]) +
	( 8'sd 102) * $signed(input_fmap_44[15:0]) +
	( 16'sd 23123) * $signed(input_fmap_45[15:0]) +
	( 16'sd 18649) * $signed(input_fmap_46[15:0]) +
	( 16'sd 30287) * $signed(input_fmap_47[15:0]) +
	( 16'sd 31637) * $signed(input_fmap_48[15:0]) +
	( 16'sd 19598) * $signed(input_fmap_49[15:0]) +
	( 16'sd 22142) * $signed(input_fmap_50[15:0]) +
	( 12'sd 1864) * $signed(input_fmap_51[15:0]) +
	( 16'sd 20134) * $signed(input_fmap_52[15:0]) +
	( 16'sd 29719) * $signed(input_fmap_53[15:0]) +
	( 16'sd 22424) * $signed(input_fmap_54[15:0]) +
	( 16'sd 21134) * $signed(input_fmap_55[15:0]) +
	( 16'sd 23310) * $signed(input_fmap_56[15:0]) +
	( 16'sd 30237) * $signed(input_fmap_57[15:0]) +
	( 16'sd 31506) * $signed(input_fmap_58[15:0]) +
	( 8'sd 99) * $signed(input_fmap_59[15:0]) +
	( 15'sd 16276) * $signed(input_fmap_60[15:0]) +
	( 14'sd 6111) * $signed(input_fmap_61[15:0]) +
	( 12'sd 1234) * $signed(input_fmap_62[15:0]) +
	( 16'sd 19173) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_20;
assign conv_mac_20 = 
	( 15'sd 14524) * $signed(input_fmap_0[15:0]) +
	( 13'sd 2563) * $signed(input_fmap_1[15:0]) +
	( 13'sd 3340) * $signed(input_fmap_2[15:0]) +
	( 14'sd 7156) * $signed(input_fmap_3[15:0]) +
	( 14'sd 6871) * $signed(input_fmap_4[15:0]) +
	( 15'sd 8328) * $signed(input_fmap_5[15:0]) +
	( 15'sd 12855) * $signed(input_fmap_6[15:0]) +
	( 16'sd 29383) * $signed(input_fmap_7[15:0]) +
	( 15'sd 15529) * $signed(input_fmap_8[15:0]) +
	( 15'sd 15604) * $signed(input_fmap_9[15:0]) +
	( 5'sd 13) * $signed(input_fmap_10[15:0]) +
	( 16'sd 27083) * $signed(input_fmap_11[15:0]) +
	( 15'sd 12589) * $signed(input_fmap_12[15:0]) +
	( 15'sd 10621) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13263) * $signed(input_fmap_14[15:0]) +
	( 16'sd 19380) * $signed(input_fmap_15[15:0]) +
	( 13'sd 2395) * $signed(input_fmap_16[15:0]) +
	( 14'sd 5890) * $signed(input_fmap_17[15:0]) +
	( 15'sd 16011) * $signed(input_fmap_18[15:0]) +
	( 16'sd 19820) * $signed(input_fmap_19[15:0]) +
	( 15'sd 15782) * $signed(input_fmap_20[15:0]) +
	( 16'sd 28739) * $signed(input_fmap_21[15:0]) +
	( 16'sd 18963) * $signed(input_fmap_22[15:0]) +
	( 16'sd 18528) * $signed(input_fmap_23[15:0]) +
	( 16'sd 22110) * $signed(input_fmap_24[15:0]) +
	( 16'sd 19332) * $signed(input_fmap_25[15:0]) +
	( 15'sd 9582) * $signed(input_fmap_26[15:0]) +
	( 11'sd 841) * $signed(input_fmap_27[15:0]) +
	( 15'sd 15817) * $signed(input_fmap_28[15:0]) +
	( 13'sd 2201) * $signed(input_fmap_29[15:0]) +
	( 16'sd 32298) * $signed(input_fmap_30[15:0]) +
	( 16'sd 27205) * $signed(input_fmap_31[15:0]) +
	( 16'sd 16728) * $signed(input_fmap_32[15:0]) +
	( 16'sd 24400) * $signed(input_fmap_33[15:0]) +
	( 15'sd 11042) * $signed(input_fmap_34[15:0]) +
	( 16'sd 31965) * $signed(input_fmap_35[15:0]) +
	( 12'sd 1261) * $signed(input_fmap_36[15:0]) +
	( 14'sd 7756) * $signed(input_fmap_37[15:0]) +
	( 16'sd 27643) * $signed(input_fmap_38[15:0]) +
	( 15'sd 9461) * $signed(input_fmap_39[15:0]) +
	( 15'sd 8675) * $signed(input_fmap_40[15:0]) +
	( 15'sd 9436) * $signed(input_fmap_41[15:0]) +
	( 15'sd 10066) * $signed(input_fmap_42[15:0]) +
	( 16'sd 28774) * $signed(input_fmap_43[15:0]) +
	( 15'sd 9704) * $signed(input_fmap_44[15:0]) +
	( 16'sd 19003) * $signed(input_fmap_45[15:0]) +
	( 16'sd 31649) * $signed(input_fmap_46[15:0]) +
	( 15'sd 8271) * $signed(input_fmap_47[15:0]) +
	( 16'sd 17147) * $signed(input_fmap_48[15:0]) +
	( 14'sd 6274) * $signed(input_fmap_49[15:0]) +
	( 15'sd 8612) * $signed(input_fmap_50[15:0]) +
	( 16'sd 16391) * $signed(input_fmap_51[15:0]) +
	( 15'sd 8829) * $signed(input_fmap_52[15:0]) +
	( 15'sd 14003) * $signed(input_fmap_53[15:0]) +
	( 16'sd 31490) * $signed(input_fmap_54[15:0]) +
	( 16'sd 19160) * $signed(input_fmap_55[15:0]) +
	( 9'sd 234) * $signed(input_fmap_56[15:0]) +
	( 15'sd 12272) * $signed(input_fmap_57[15:0]) +
	( 16'sd 32570) * $signed(input_fmap_58[15:0]) +
	( 15'sd 13414) * $signed(input_fmap_59[15:0]) +
	( 14'sd 4538) * $signed(input_fmap_60[15:0]) +
	( 14'sd 7749) * $signed(input_fmap_61[15:0]) +
	( 15'sd 9783) * $signed(input_fmap_62[15:0]) +
	( 12'sd 1462) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_21;
assign conv_mac_21 = 
	( 16'sd 31630) * $signed(input_fmap_0[15:0]) +
	( 16'sd 27994) * $signed(input_fmap_1[15:0]) +
	( 15'sd 12702) * $signed(input_fmap_2[15:0]) +
	( 15'sd 11564) * $signed(input_fmap_3[15:0]) +
	( 14'sd 7408) * $signed(input_fmap_4[15:0]) +
	( 11'sd 803) * $signed(input_fmap_5[15:0]) +
	( 14'sd 7502) * $signed(input_fmap_6[15:0]) +
	( 14'sd 5887) * $signed(input_fmap_7[15:0]) +
	( 15'sd 10008) * $signed(input_fmap_8[15:0]) +
	( 16'sd 21119) * $signed(input_fmap_9[15:0]) +
	( 15'sd 16010) * $signed(input_fmap_10[15:0]) +
	( 14'sd 6597) * $signed(input_fmap_11[15:0]) +
	( 16'sd 23767) * $signed(input_fmap_12[15:0]) +
	( 12'sd 1144) * $signed(input_fmap_13[15:0]) +
	( 14'sd 4176) * $signed(input_fmap_14[15:0]) +
	( 16'sd 17606) * $signed(input_fmap_15[15:0]) +
	( 14'sd 4172) * $signed(input_fmap_16[15:0]) +
	( 16'sd 22643) * $signed(input_fmap_17[15:0]) +
	( 16'sd 31301) * $signed(input_fmap_18[15:0]) +
	( 16'sd 18399) * $signed(input_fmap_19[15:0]) +
	( 15'sd 16259) * $signed(input_fmap_20[15:0]) +
	( 16'sd 23898) * $signed(input_fmap_21[15:0]) +
	( 15'sd 12869) * $signed(input_fmap_22[15:0]) +
	( 15'sd 13804) * $signed(input_fmap_23[15:0]) +
	( 15'sd 15175) * $signed(input_fmap_24[15:0]) +
	( 16'sd 24815) * $signed(input_fmap_25[15:0]) +
	( 16'sd 21583) * $signed(input_fmap_26[15:0]) +
	( 15'sd 12951) * $signed(input_fmap_27[15:0]) +
	( 16'sd 17674) * $signed(input_fmap_28[15:0]) +
	( 15'sd 11287) * $signed(input_fmap_29[15:0]) +
	( 15'sd 9369) * $signed(input_fmap_30[15:0]) +
	( 15'sd 16253) * $signed(input_fmap_31[15:0]) +
	( 12'sd 1921) * $signed(input_fmap_32[15:0]) +
	( 16'sd 28550) * $signed(input_fmap_33[15:0]) +
	( 16'sd 18385) * $signed(input_fmap_34[15:0]) +
	( 16'sd 20651) * $signed(input_fmap_35[15:0]) +
	( 15'sd 9533) * $signed(input_fmap_36[15:0]) +
	( 16'sd 30000) * $signed(input_fmap_37[15:0]) +
	( 16'sd 21308) * $signed(input_fmap_38[15:0]) +
	( 14'sd 4296) * $signed(input_fmap_39[15:0]) +
	( 15'sd 9598) * $signed(input_fmap_40[15:0]) +
	( 12'sd 1065) * $signed(input_fmap_41[15:0]) +
	( 15'sd 9609) * $signed(input_fmap_42[15:0]) +
	( 15'sd 9355) * $signed(input_fmap_43[15:0]) +
	( 16'sd 21759) * $signed(input_fmap_44[15:0]) +
	( 16'sd 30354) * $signed(input_fmap_45[15:0]) +
	( 16'sd 26552) * $signed(input_fmap_46[15:0]) +
	( 15'sd 10005) * $signed(input_fmap_47[15:0]) +
	( 14'sd 5230) * $signed(input_fmap_48[15:0]) +
	( 16'sd 22843) * $signed(input_fmap_49[15:0]) +
	( 16'sd 29272) * $signed(input_fmap_50[15:0]) +
	( 9'sd 183) * $signed(input_fmap_51[15:0]) +
	( 16'sd 25112) * $signed(input_fmap_52[15:0]) +
	( 16'sd 26550) * $signed(input_fmap_53[15:0]) +
	( 16'sd 26447) * $signed(input_fmap_54[15:0]) +
	( 10'sd 507) * $signed(input_fmap_55[15:0]) +
	( 16'sd 25037) * $signed(input_fmap_56[15:0]) +
	( 15'sd 14277) * $signed(input_fmap_57[15:0]) +
	( 16'sd 32108) * $signed(input_fmap_58[15:0]) +
	( 10'sd 469) * $signed(input_fmap_59[15:0]) +
	( 15'sd 10109) * $signed(input_fmap_60[15:0]) +
	( 15'sd 12040) * $signed(input_fmap_61[15:0]) +
	( 16'sd 21781) * $signed(input_fmap_62[15:0]) +
	( 16'sd 17675) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_22;
assign conv_mac_22 = 
	( 16'sd 22550) * $signed(input_fmap_0[15:0]) +
	( 13'sd 2201) * $signed(input_fmap_1[15:0]) +
	( 15'sd 8914) * $signed(input_fmap_2[15:0]) +
	( 16'sd 26273) * $signed(input_fmap_3[15:0]) +
	( 13'sd 2445) * $signed(input_fmap_4[15:0]) +
	( 12'sd 1057) * $signed(input_fmap_5[15:0]) +
	( 16'sd 23377) * $signed(input_fmap_6[15:0]) +
	( 16'sd 28133) * $signed(input_fmap_7[15:0]) +
	( 12'sd 1358) * $signed(input_fmap_8[15:0]) +
	( 15'sd 14841) * $signed(input_fmap_9[15:0]) +
	( 16'sd 25223) * $signed(input_fmap_10[15:0]) +
	( 14'sd 4732) * $signed(input_fmap_11[15:0]) +
	( 15'sd 11005) * $signed(input_fmap_12[15:0]) +
	( 12'sd 1895) * $signed(input_fmap_13[15:0]) +
	( 16'sd 29372) * $signed(input_fmap_14[15:0]) +
	( 16'sd 17885) * $signed(input_fmap_15[15:0]) +
	( 14'sd 7109) * $signed(input_fmap_16[15:0]) +
	( 16'sd 32272) * $signed(input_fmap_17[15:0]) +
	( 16'sd 22189) * $signed(input_fmap_18[15:0]) +
	( 13'sd 2582) * $signed(input_fmap_19[15:0]) +
	( 16'sd 25680) * $signed(input_fmap_20[15:0]) +
	( 14'sd 7415) * $signed(input_fmap_21[15:0]) +
	( 14'sd 6701) * $signed(input_fmap_22[15:0]) +
	( 14'sd 5424) * $signed(input_fmap_23[15:0]) +
	( 16'sd 31616) * $signed(input_fmap_24[15:0]) +
	( 13'sd 2696) * $signed(input_fmap_25[15:0]) +
	( 15'sd 15069) * $signed(input_fmap_26[15:0]) +
	( 16'sd 27041) * $signed(input_fmap_27[15:0]) +
	( 16'sd 19166) * $signed(input_fmap_28[15:0]) +
	( 13'sd 3894) * $signed(input_fmap_29[15:0]) +
	( 16'sd 19248) * $signed(input_fmap_30[15:0]) +
	( 15'sd 9625) * $signed(input_fmap_31[15:0]) +
	( 16'sd 18098) * $signed(input_fmap_32[15:0]) +
	( 16'sd 27382) * $signed(input_fmap_33[15:0]) +
	( 14'sd 7843) * $signed(input_fmap_34[15:0]) +
	( 16'sd 20615) * $signed(input_fmap_35[15:0]) +
	( 16'sd 28939) * $signed(input_fmap_36[15:0]) +
	( 15'sd 14106) * $signed(input_fmap_37[15:0]) +
	( 16'sd 30698) * $signed(input_fmap_38[15:0]) +
	( 14'sd 8009) * $signed(input_fmap_39[15:0]) +
	( 16'sd 24493) * $signed(input_fmap_40[15:0]) +
	( 15'sd 11608) * $signed(input_fmap_41[15:0]) +
	( 15'sd 14461) * $signed(input_fmap_42[15:0]) +
	( 12'sd 2005) * $signed(input_fmap_43[15:0]) +
	( 16'sd 16865) * $signed(input_fmap_44[15:0]) +
	( 14'sd 5242) * $signed(input_fmap_45[15:0]) +
	( 15'sd 15215) * $signed(input_fmap_46[15:0]) +
	( 15'sd 13383) * $signed(input_fmap_47[15:0]) +
	( 16'sd 23673) * $signed(input_fmap_48[15:0]) +
	( 16'sd 19494) * $signed(input_fmap_49[15:0]) +
	( 16'sd 19524) * $signed(input_fmap_50[15:0]) +
	( 16'sd 26826) * $signed(input_fmap_51[15:0]) +
	( 14'sd 4362) * $signed(input_fmap_52[15:0]) +
	( 13'sd 3343) * $signed(input_fmap_53[15:0]) +
	( 15'sd 15455) * $signed(input_fmap_54[15:0]) +
	( 16'sd 21809) * $signed(input_fmap_55[15:0]) +
	( 16'sd 18291) * $signed(input_fmap_56[15:0]) +
	( 16'sd 30191) * $signed(input_fmap_57[15:0]) +
	( 16'sd 19395) * $signed(input_fmap_58[15:0]) +
	( 16'sd 31055) * $signed(input_fmap_59[15:0]) +
	( 16'sd 19709) * $signed(input_fmap_60[15:0]) +
	( 15'sd 8573) * $signed(input_fmap_61[15:0]) +
	( 16'sd 20210) * $signed(input_fmap_62[15:0]) +
	( 16'sd 18366) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_23;
assign conv_mac_23 = 
	( 11'sd 959) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6297) * $signed(input_fmap_1[15:0]) +
	( 16'sd 31943) * $signed(input_fmap_2[15:0]) +
	( 15'sd 11422) * $signed(input_fmap_3[15:0]) +
	( 15'sd 10538) * $signed(input_fmap_4[15:0]) +
	( 15'sd 11762) * $signed(input_fmap_5[15:0]) +
	( 13'sd 3555) * $signed(input_fmap_6[15:0]) +
	( 15'sd 13609) * $signed(input_fmap_7[15:0]) +
	( 15'sd 16242) * $signed(input_fmap_8[15:0]) +
	( 16'sd 21336) * $signed(input_fmap_9[15:0]) +
	( 14'sd 4463) * $signed(input_fmap_10[15:0]) +
	( 14'sd 5850) * $signed(input_fmap_11[15:0]) +
	( 16'sd 16754) * $signed(input_fmap_12[15:0]) +
	( 13'sd 3607) * $signed(input_fmap_13[15:0]) +
	( 11'sd 678) * $signed(input_fmap_14[15:0]) +
	( 15'sd 10407) * $signed(input_fmap_15[15:0]) +
	( 16'sd 16533) * $signed(input_fmap_16[15:0]) +
	( 15'sd 15321) * $signed(input_fmap_17[15:0]) +
	( 16'sd 21036) * $signed(input_fmap_18[15:0]) +
	( 15'sd 10723) * $signed(input_fmap_19[15:0]) +
	( 15'sd 13798) * $signed(input_fmap_20[15:0]) +
	( 16'sd 24445) * $signed(input_fmap_21[15:0]) +
	( 16'sd 28941) * $signed(input_fmap_22[15:0]) +
	( 15'sd 11354) * $signed(input_fmap_23[15:0]) +
	( 16'sd 30450) * $signed(input_fmap_24[15:0]) +
	( 16'sd 22571) * $signed(input_fmap_25[15:0]) +
	( 16'sd 21265) * $signed(input_fmap_26[15:0]) +
	( 15'sd 16008) * $signed(input_fmap_27[15:0]) +
	( 15'sd 15891) * $signed(input_fmap_28[15:0]) +
	( 13'sd 3634) * $signed(input_fmap_29[15:0]) +
	( 9'sd 244) * $signed(input_fmap_30[15:0]) +
	( 15'sd 12226) * $signed(input_fmap_31[15:0]) +
	( 15'sd 8393) * $signed(input_fmap_32[15:0]) +
	( 16'sd 30497) * $signed(input_fmap_33[15:0]) +
	( 16'sd 32566) * $signed(input_fmap_34[15:0]) +
	( 15'sd 8298) * $signed(input_fmap_35[15:0]) +
	( 9'sd 168) * $signed(input_fmap_36[15:0]) +
	( 16'sd 21567) * $signed(input_fmap_37[15:0]) +
	( 16'sd 17605) * $signed(input_fmap_38[15:0]) +
	( 14'sd 7575) * $signed(input_fmap_39[15:0]) +
	( 15'sd 12963) * $signed(input_fmap_40[15:0]) +
	( 13'sd 4015) * $signed(input_fmap_41[15:0]) +
	( 13'sd 3537) * $signed(input_fmap_42[15:0]) +
	( 16'sd 23080) * $signed(input_fmap_43[15:0]) +
	( 14'sd 7547) * $signed(input_fmap_44[15:0]) +
	( 14'sd 5828) * $signed(input_fmap_45[15:0]) +
	( 16'sd 21238) * $signed(input_fmap_46[15:0]) +
	( 16'sd 31547) * $signed(input_fmap_47[15:0]) +
	( 14'sd 4487) * $signed(input_fmap_48[15:0]) +
	( 15'sd 15486) * $signed(input_fmap_49[15:0]) +
	( 13'sd 3161) * $signed(input_fmap_50[15:0]) +
	( 16'sd 21791) * $signed(input_fmap_51[15:0]) +
	( 16'sd 24989) * $signed(input_fmap_52[15:0]) +
	( 16'sd 26054) * $signed(input_fmap_53[15:0]) +
	( 14'sd 5110) * $signed(input_fmap_54[15:0]) +
	( 16'sd 26742) * $signed(input_fmap_55[15:0]) +
	( 15'sd 14087) * $signed(input_fmap_56[15:0]) +
	( 14'sd 7617) * $signed(input_fmap_57[15:0]) +
	( 16'sd 31497) * $signed(input_fmap_58[15:0]) +
	( 16'sd 18320) * $signed(input_fmap_59[15:0]) +
	( 16'sd 26775) * $signed(input_fmap_60[15:0]) +
	( 15'sd 13678) * $signed(input_fmap_61[15:0]) +
	( 15'sd 10228) * $signed(input_fmap_62[15:0]) +
	( 15'sd 10060) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_24;
assign conv_mac_24 = 
	( 14'sd 4914) * $signed(input_fmap_0[15:0]) +
	( 12'sd 1295) * $signed(input_fmap_1[15:0]) +
	( 15'sd 12358) * $signed(input_fmap_2[15:0]) +
	( 13'sd 3536) * $signed(input_fmap_3[15:0]) +
	( 15'sd 12500) * $signed(input_fmap_4[15:0]) +
	( 16'sd 19158) * $signed(input_fmap_5[15:0]) +
	( 15'sd 14215) * $signed(input_fmap_6[15:0]) +
	( 16'sd 30296) * $signed(input_fmap_7[15:0]) +
	( 14'sd 7689) * $signed(input_fmap_8[15:0]) +
	( 13'sd 2732) * $signed(input_fmap_9[15:0]) +
	( 15'sd 16341) * $signed(input_fmap_10[15:0]) +
	( 15'sd 13075) * $signed(input_fmap_11[15:0]) +
	( 14'sd 5291) * $signed(input_fmap_12[15:0]) +
	( 16'sd 23095) * $signed(input_fmap_13[15:0]) +
	( 9'sd 202) * $signed(input_fmap_14[15:0]) +
	( 16'sd 26594) * $signed(input_fmap_15[15:0]) +
	( 16'sd 18920) * $signed(input_fmap_16[15:0]) +
	( 16'sd 31014) * $signed(input_fmap_17[15:0]) +
	( 16'sd 24076) * $signed(input_fmap_18[15:0]) +
	( 16'sd 25310) * $signed(input_fmap_19[15:0]) +
	( 14'sd 5399) * $signed(input_fmap_20[15:0]) +
	( 16'sd 32253) * $signed(input_fmap_21[15:0]) +
	( 16'sd 29132) * $signed(input_fmap_22[15:0]) +
	( 15'sd 8725) * $signed(input_fmap_23[15:0]) +
	( 15'sd 15173) * $signed(input_fmap_24[15:0]) +
	( 15'sd 13675) * $signed(input_fmap_25[15:0]) +
	( 14'sd 4689) * $signed(input_fmap_26[15:0]) +
	( 14'sd 4816) * $signed(input_fmap_27[15:0]) +
	( 15'sd 14910) * $signed(input_fmap_28[15:0]) +
	( 15'sd 10384) * $signed(input_fmap_29[15:0]) +
	( 16'sd 32438) * $signed(input_fmap_30[15:0]) +
	( 16'sd 23206) * $signed(input_fmap_31[15:0]) +
	( 15'sd 9131) * $signed(input_fmap_32[15:0]) +
	( 16'sd 29673) * $signed(input_fmap_33[15:0]) +
	( 15'sd 9285) * $signed(input_fmap_34[15:0]) +
	( 16'sd 29094) * $signed(input_fmap_35[15:0]) +
	( 16'sd 18651) * $signed(input_fmap_36[15:0]) +
	( 15'sd 10262) * $signed(input_fmap_37[15:0]) +
	( 11'sd 847) * $signed(input_fmap_38[15:0]) +
	( 16'sd 30656) * $signed(input_fmap_39[15:0]) +
	( 14'sd 7092) * $signed(input_fmap_40[15:0]) +
	( 14'sd 7612) * $signed(input_fmap_41[15:0]) +
	( 16'sd 17236) * $signed(input_fmap_42[15:0]) +
	( 16'sd 16990) * $signed(input_fmap_43[15:0]) +
	( 13'sd 2077) * $signed(input_fmap_44[15:0]) +
	( 10'sd 321) * $signed(input_fmap_45[15:0]) +
	( 16'sd 21548) * $signed(input_fmap_46[15:0]) +
	( 16'sd 20410) * $signed(input_fmap_47[15:0]) +
	( 16'sd 29970) * $signed(input_fmap_48[15:0]) +
	( 13'sd 3304) * $signed(input_fmap_49[15:0]) +
	( 16'sd 18619) * $signed(input_fmap_50[15:0]) +
	( 14'sd 6660) * $signed(input_fmap_51[15:0]) +
	( 16'sd 27943) * $signed(input_fmap_52[15:0]) +
	( 16'sd 19926) * $signed(input_fmap_53[15:0]) +
	( 16'sd 25565) * $signed(input_fmap_54[15:0]) +
	( 16'sd 17586) * $signed(input_fmap_55[15:0]) +
	( 16'sd 23116) * $signed(input_fmap_56[15:0]) +
	( 16'sd 16877) * $signed(input_fmap_57[15:0]) +
	( 11'sd 974) * $signed(input_fmap_58[15:0]) +
	( 13'sd 2140) * $signed(input_fmap_59[15:0]) +
	( 16'sd 24489) * $signed(input_fmap_60[15:0]) +
	( 14'sd 4524) * $signed(input_fmap_61[15:0]) +
	( 16'sd 32497) * $signed(input_fmap_62[15:0]) +
	( 16'sd 20499) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_25;
assign conv_mac_25 = 
	( 16'sd 28596) * $signed(input_fmap_0[15:0]) +
	( 16'sd 17155) * $signed(input_fmap_1[15:0]) +
	( 16'sd 22997) * $signed(input_fmap_2[15:0]) +
	( 14'sd 7221) * $signed(input_fmap_3[15:0]) +
	( 16'sd 28239) * $signed(input_fmap_4[15:0]) +
	( 15'sd 12857) * $signed(input_fmap_5[15:0]) +
	( 16'sd 26609) * $signed(input_fmap_6[15:0]) +
	( 15'sd 11272) * $signed(input_fmap_7[15:0]) +
	( 15'sd 9262) * $signed(input_fmap_8[15:0]) +
	( 15'sd 11504) * $signed(input_fmap_9[15:0]) +
	( 15'sd 8469) * $signed(input_fmap_10[15:0]) +
	( 16'sd 28392) * $signed(input_fmap_11[15:0]) +
	( 16'sd 28128) * $signed(input_fmap_12[15:0]) +
	( 16'sd 21837) * $signed(input_fmap_13[15:0]) +
	( 16'sd 21242) * $signed(input_fmap_14[15:0]) +
	( 12'sd 1912) * $signed(input_fmap_15[15:0]) +
	( 15'sd 10278) * $signed(input_fmap_16[15:0]) +
	( 13'sd 2579) * $signed(input_fmap_17[15:0]) +
	( 15'sd 12475) * $signed(input_fmap_18[15:0]) +
	( 15'sd 12085) * $signed(input_fmap_19[15:0]) +
	( 14'sd 5466) * $signed(input_fmap_20[15:0]) +
	( 15'sd 12397) * $signed(input_fmap_21[15:0]) +
	( 16'sd 27924) * $signed(input_fmap_22[15:0]) +
	( 16'sd 21761) * $signed(input_fmap_23[15:0]) +
	( 9'sd 155) * $signed(input_fmap_24[15:0]) +
	( 10'sd 277) * $signed(input_fmap_25[15:0]) +
	( 16'sd 22788) * $signed(input_fmap_26[15:0]) +
	( 15'sd 9489) * $signed(input_fmap_27[15:0]) +
	( 16'sd 18105) * $signed(input_fmap_28[15:0]) +
	( 15'sd 9183) * $signed(input_fmap_29[15:0]) +
	( 12'sd 1511) * $signed(input_fmap_30[15:0]) +
	( 14'sd 7606) * $signed(input_fmap_31[15:0]) +
	( 16'sd 27622) * $signed(input_fmap_32[15:0]) +
	( 16'sd 20085) * $signed(input_fmap_33[15:0]) +
	( 16'sd 29098) * $signed(input_fmap_34[15:0]) +
	( 16'sd 30284) * $signed(input_fmap_35[15:0]) +
	( 15'sd 14562) * $signed(input_fmap_36[15:0]) +
	( 16'sd 22117) * $signed(input_fmap_37[15:0]) +
	( 15'sd 12711) * $signed(input_fmap_38[15:0]) +
	( 12'sd 1596) * $signed(input_fmap_39[15:0]) +
	( 16'sd 28251) * $signed(input_fmap_40[15:0]) +
	( 16'sd 29064) * $signed(input_fmap_41[15:0]) +
	( 14'sd 4887) * $signed(input_fmap_42[15:0]) +
	( 14'sd 4241) * $signed(input_fmap_43[15:0]) +
	( 16'sd 25693) * $signed(input_fmap_44[15:0]) +
	( 14'sd 6247) * $signed(input_fmap_45[15:0]) +
	( 16'sd 24705) * $signed(input_fmap_46[15:0]) +
	( 14'sd 4539) * $signed(input_fmap_47[15:0]) +
	( 16'sd 26884) * $signed(input_fmap_48[15:0]) +
	( 15'sd 10486) * $signed(input_fmap_49[15:0]) +
	( 16'sd 24256) * $signed(input_fmap_50[15:0]) +
	( 15'sd 16330) * $signed(input_fmap_51[15:0]) +
	( 16'sd 29973) * $signed(input_fmap_52[15:0]) +
	( 16'sd 27553) * $signed(input_fmap_53[15:0]) +
	( 16'sd 29205) * $signed(input_fmap_54[15:0]) +
	( 16'sd 30994) * $signed(input_fmap_55[15:0]) +
	( 14'sd 5556) * $signed(input_fmap_56[15:0]) +
	( 14'sd 6423) * $signed(input_fmap_57[15:0]) +
	( 15'sd 10483) * $signed(input_fmap_58[15:0]) +
	( 16'sd 16611) * $signed(input_fmap_59[15:0]) +
	( 16'sd 26240) * $signed(input_fmap_60[15:0]) +
	( 16'sd 24253) * $signed(input_fmap_61[15:0]) +
	( 15'sd 16203) * $signed(input_fmap_62[15:0]) +
	( 16'sd 23120) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_26;
assign conv_mac_26 = 
	( 16'sd 24955) * $signed(input_fmap_0[15:0]) +
	( 15'sd 15122) * $signed(input_fmap_1[15:0]) +
	( 14'sd 8052) * $signed(input_fmap_2[15:0]) +
	( 16'sd 30750) * $signed(input_fmap_3[15:0]) +
	( 16'sd 32614) * $signed(input_fmap_4[15:0]) +
	( 16'sd 31370) * $signed(input_fmap_5[15:0]) +
	( 14'sd 7845) * $signed(input_fmap_6[15:0]) +
	( 16'sd 19275) * $signed(input_fmap_7[15:0]) +
	( 16'sd 31045) * $signed(input_fmap_8[15:0]) +
	( 16'sd 28996) * $signed(input_fmap_9[15:0]) +
	( 16'sd 16473) * $signed(input_fmap_10[15:0]) +
	( 14'sd 5770) * $signed(input_fmap_11[15:0]) +
	( 13'sd 3441) * $signed(input_fmap_12[15:0]) +
	( 16'sd 26092) * $signed(input_fmap_13[15:0]) +
	( 10'sd 360) * $signed(input_fmap_14[15:0]) +
	( 16'sd 27560) * $signed(input_fmap_15[15:0]) +
	( 15'sd 13853) * $signed(input_fmap_16[15:0]) +
	( 15'sd 13526) * $signed(input_fmap_17[15:0]) +
	( 14'sd 8153) * $signed(input_fmap_18[15:0]) +
	( 16'sd 21701) * $signed(input_fmap_19[15:0]) +
	( 16'sd 28079) * $signed(input_fmap_20[15:0]) +
	( 13'sd 3240) * $signed(input_fmap_21[15:0]) +
	( 16'sd 25941) * $signed(input_fmap_22[15:0]) +
	( 16'sd 18131) * $signed(input_fmap_23[15:0]) +
	( 16'sd 30513) * $signed(input_fmap_24[15:0]) +
	( 15'sd 16301) * $signed(input_fmap_25[15:0]) +
	( 16'sd 21194) * $signed(input_fmap_26[15:0]) +
	( 15'sd 13517) * $signed(input_fmap_27[15:0]) +
	( 13'sd 2910) * $signed(input_fmap_28[15:0]) +
	( 16'sd 30650) * $signed(input_fmap_29[15:0]) +
	( 16'sd 22067) * $signed(input_fmap_30[15:0]) +
	( 16'sd 20809) * $signed(input_fmap_31[15:0]) +
	( 15'sd 13876) * $signed(input_fmap_32[15:0]) +
	( 16'sd 27284) * $signed(input_fmap_33[15:0]) +
	( 10'sd 304) * $signed(input_fmap_34[15:0]) +
	( 12'sd 1141) * $signed(input_fmap_35[15:0]) +
	( 15'sd 13434) * $signed(input_fmap_36[15:0]) +
	( 16'sd 23047) * $signed(input_fmap_37[15:0]) +
	( 12'sd 1741) * $signed(input_fmap_38[15:0]) +
	( 15'sd 12633) * $signed(input_fmap_39[15:0]) +
	( 16'sd 26971) * $signed(input_fmap_40[15:0]) +
	( 14'sd 5065) * $signed(input_fmap_41[15:0]) +
	( 16'sd 27646) * $signed(input_fmap_42[15:0]) +
	( 15'sd 11114) * $signed(input_fmap_43[15:0]) +
	( 15'sd 13842) * $signed(input_fmap_44[15:0]) +
	( 16'sd 23450) * $signed(input_fmap_45[15:0]) +
	( 14'sd 6109) * $signed(input_fmap_46[15:0]) +
	( 10'sd 368) * $signed(input_fmap_47[15:0]) +
	( 16'sd 32290) * $signed(input_fmap_48[15:0]) +
	( 14'sd 4490) * $signed(input_fmap_49[15:0]) +
	( 16'sd 24067) * $signed(input_fmap_50[15:0]) +
	( 14'sd 5156) * $signed(input_fmap_51[15:0]) +
	( 15'sd 9566) * $signed(input_fmap_52[15:0]) +
	( 15'sd 12593) * $signed(input_fmap_53[15:0]) +
	( 16'sd 21519) * $signed(input_fmap_54[15:0]) +
	( 14'sd 4116) * $signed(input_fmap_55[15:0]) +
	( 16'sd 16779) * $signed(input_fmap_56[15:0]) +
	( 13'sd 2864) * $signed(input_fmap_57[15:0]) +
	( 15'sd 9658) * $signed(input_fmap_58[15:0]) +
	( 16'sd 29950) * $signed(input_fmap_59[15:0]) +
	( 15'sd 14146) * $signed(input_fmap_60[15:0]) +
	( 15'sd 14230) * $signed(input_fmap_61[15:0]) +
	( 16'sd 18760) * $signed(input_fmap_62[15:0]) +
	( 15'sd 14975) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_27;
assign conv_mac_27 = 
	( 16'sd 26427) * $signed(input_fmap_0[15:0]) +
	( 15'sd 11366) * $signed(input_fmap_1[15:0]) +
	( 14'sd 7174) * $signed(input_fmap_2[15:0]) +
	( 15'sd 11769) * $signed(input_fmap_3[15:0]) +
	( 15'sd 10008) * $signed(input_fmap_4[15:0]) +
	( 16'sd 24077) * $signed(input_fmap_5[15:0]) +
	( 16'sd 19599) * $signed(input_fmap_6[15:0]) +
	( 15'sd 9854) * $signed(input_fmap_7[15:0]) +
	( 16'sd 25872) * $signed(input_fmap_8[15:0]) +
	( 16'sd 26366) * $signed(input_fmap_9[15:0]) +
	( 16'sd 26176) * $signed(input_fmap_10[15:0]) +
	( 15'sd 10445) * $signed(input_fmap_11[15:0]) +
	( 14'sd 6518) * $signed(input_fmap_12[15:0]) +
	( 16'sd 19262) * $signed(input_fmap_13[15:0]) +
	( 16'sd 32602) * $signed(input_fmap_14[15:0]) +
	( 12'sd 1663) * $signed(input_fmap_15[15:0]) +
	( 15'sd 11984) * $signed(input_fmap_16[15:0]) +
	( 16'sd 25174) * $signed(input_fmap_17[15:0]) +
	( 13'sd 3510) * $signed(input_fmap_18[15:0]) +
	( 16'sd 19238) * $signed(input_fmap_19[15:0]) +
	( 16'sd 30847) * $signed(input_fmap_20[15:0]) +
	( 16'sd 22165) * $signed(input_fmap_21[15:0]) +
	( 15'sd 14216) * $signed(input_fmap_22[15:0]) +
	( 13'sd 3497) * $signed(input_fmap_23[15:0]) +
	( 16'sd 19296) * $signed(input_fmap_24[15:0]) +
	( 15'sd 9800) * $signed(input_fmap_25[15:0]) +
	( 14'sd 5780) * $signed(input_fmap_26[15:0]) +
	( 16'sd 20621) * $signed(input_fmap_27[15:0]) +
	( 16'sd 31058) * $signed(input_fmap_28[15:0]) +
	( 15'sd 11129) * $signed(input_fmap_29[15:0]) +
	( 14'sd 7392) * $signed(input_fmap_30[15:0]) +
	( 16'sd 25861) * $signed(input_fmap_31[15:0]) +
	( 13'sd 3889) * $signed(input_fmap_32[15:0]) +
	( 15'sd 8989) * $signed(input_fmap_33[15:0]) +
	( 15'sd 11287) * $signed(input_fmap_34[15:0]) +
	( 16'sd 29184) * $signed(input_fmap_35[15:0]) +
	( 13'sd 2148) * $signed(input_fmap_36[15:0]) +
	( 16'sd 28996) * $signed(input_fmap_37[15:0]) +
	( 16'sd 31553) * $signed(input_fmap_38[15:0]) +
	( 16'sd 30197) * $signed(input_fmap_39[15:0]) +
	( 16'sd 20452) * $signed(input_fmap_40[15:0]) +
	( 16'sd 28069) * $signed(input_fmap_41[15:0]) +
	( 16'sd 31923) * $signed(input_fmap_42[15:0]) +
	( 16'sd 20605) * $signed(input_fmap_43[15:0]) +
	( 13'sd 3360) * $signed(input_fmap_44[15:0]) +
	( 12'sd 1227) * $signed(input_fmap_45[15:0]) +
	( 16'sd 29718) * $signed(input_fmap_46[15:0]) +
	( 16'sd 25012) * $signed(input_fmap_47[15:0]) +
	( 16'sd 27737) * $signed(input_fmap_48[15:0]) +
	( 14'sd 5820) * $signed(input_fmap_49[15:0]) +
	( 16'sd 24582) * $signed(input_fmap_50[15:0]) +
	( 16'sd 26149) * $signed(input_fmap_51[15:0]) +
	( 15'sd 8868) * $signed(input_fmap_52[15:0]) +
	( 11'sd 1001) * $signed(input_fmap_53[15:0]) +
	( 16'sd 18663) * $signed(input_fmap_54[15:0]) +
	( 16'sd 19326) * $signed(input_fmap_55[15:0]) +
	( 15'sd 13248) * $signed(input_fmap_56[15:0]) +
	( 15'sd 14463) * $signed(input_fmap_57[15:0]) +
	( 16'sd 18131) * $signed(input_fmap_58[15:0]) +
	( 15'sd 11817) * $signed(input_fmap_59[15:0]) +
	( 16'sd 27802) * $signed(input_fmap_60[15:0]) +
	( 16'sd 21377) * $signed(input_fmap_61[15:0]) +
	( 16'sd 17767) * $signed(input_fmap_62[15:0]) +
	( 16'sd 30749) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_28;
assign conv_mac_28 = 
	( 16'sd 28546) * $signed(input_fmap_0[15:0]) +
	( 16'sd 16443) * $signed(input_fmap_1[15:0]) +
	( 16'sd 21327) * $signed(input_fmap_2[15:0]) +
	( 16'sd 29543) * $signed(input_fmap_3[15:0]) +
	( 14'sd 4685) * $signed(input_fmap_4[15:0]) +
	( 13'sd 3934) * $signed(input_fmap_5[15:0]) +
	( 16'sd 32702) * $signed(input_fmap_6[15:0]) +
	( 16'sd 22546) * $signed(input_fmap_7[15:0]) +
	( 16'sd 16530) * $signed(input_fmap_8[15:0]) +
	( 16'sd 27792) * $signed(input_fmap_9[15:0]) +
	( 16'sd 22494) * $signed(input_fmap_10[15:0]) +
	( 16'sd 26286) * $signed(input_fmap_11[15:0]) +
	( 14'sd 5226) * $signed(input_fmap_12[15:0]) +
	( 16'sd 29270) * $signed(input_fmap_13[15:0]) +
	( 16'sd 17999) * $signed(input_fmap_14[15:0]) +
	( 14'sd 7180) * $signed(input_fmap_15[15:0]) +
	( 16'sd 21263) * $signed(input_fmap_16[15:0]) +
	( 12'sd 1331) * $signed(input_fmap_17[15:0]) +
	( 15'sd 12062) * $signed(input_fmap_18[15:0]) +
	( 16'sd 25791) * $signed(input_fmap_19[15:0]) +
	( 15'sd 15339) * $signed(input_fmap_20[15:0]) +
	( 16'sd 17888) * $signed(input_fmap_21[15:0]) +
	( 16'sd 26329) * $signed(input_fmap_22[15:0]) +
	( 16'sd 26920) * $signed(input_fmap_23[15:0]) +
	( 15'sd 12538) * $signed(input_fmap_24[15:0]) +
	( 16'sd 28996) * $signed(input_fmap_25[15:0]) +
	( 14'sd 6504) * $signed(input_fmap_26[15:0]) +
	( 16'sd 28528) * $signed(input_fmap_27[15:0]) +
	( 15'sd 11118) * $signed(input_fmap_28[15:0]) +
	( 13'sd 2242) * $signed(input_fmap_29[15:0]) +
	( 14'sd 6866) * $signed(input_fmap_30[15:0]) +
	( 15'sd 8652) * $signed(input_fmap_31[15:0]) +
	( 14'sd 5379) * $signed(input_fmap_32[15:0]) +
	( 15'sd 11423) * $signed(input_fmap_33[15:0]) +
	( 15'sd 15639) * $signed(input_fmap_34[15:0]) +
	( 16'sd 18837) * $signed(input_fmap_35[15:0]) +
	( 16'sd 18294) * $signed(input_fmap_36[15:0]) +
	( 16'sd 23458) * $signed(input_fmap_37[15:0]) +
	( 15'sd 16142) * $signed(input_fmap_38[15:0]) +
	( 16'sd 20308) * $signed(input_fmap_39[15:0]) +
	( 15'sd 13690) * $signed(input_fmap_40[15:0]) +
	( 16'sd 25169) * $signed(input_fmap_41[15:0]) +
	( 14'sd 4098) * $signed(input_fmap_42[15:0]) +
	( 16'sd 19673) * $signed(input_fmap_43[15:0]) +
	( 16'sd 29510) * $signed(input_fmap_44[15:0]) +
	( 13'sd 3238) * $signed(input_fmap_45[15:0]) +
	( 16'sd 27962) * $signed(input_fmap_46[15:0]) +
	( 16'sd 19214) * $signed(input_fmap_47[15:0]) +
	( 16'sd 17578) * $signed(input_fmap_48[15:0]) +
	( 16'sd 25903) * $signed(input_fmap_49[15:0]) +
	( 14'sd 7332) * $signed(input_fmap_50[15:0]) +
	( 15'sd 13722) * $signed(input_fmap_51[15:0]) +
	( 16'sd 26911) * $signed(input_fmap_52[15:0]) +
	( 16'sd 18782) * $signed(input_fmap_53[15:0]) +
	( 16'sd 29882) * $signed(input_fmap_54[15:0]) +
	( 16'sd 19522) * $signed(input_fmap_55[15:0]) +
	( 14'sd 5660) * $signed(input_fmap_56[15:0]) +
	( 13'sd 3336) * $signed(input_fmap_57[15:0]) +
	( 14'sd 4281) * $signed(input_fmap_58[15:0]) +
	( 16'sd 19211) * $signed(input_fmap_59[15:0]) +
	( 16'sd 18117) * $signed(input_fmap_60[15:0]) +
	( 14'sd 5208) * $signed(input_fmap_61[15:0]) +
	( 12'sd 1475) * $signed(input_fmap_62[15:0]) +
	( 12'sd 1707) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_29;
assign conv_mac_29 = 
	( 14'sd 5182) * $signed(input_fmap_0[15:0]) +
	( 16'sd 18162) * $signed(input_fmap_1[15:0]) +
	( 15'sd 13641) * $signed(input_fmap_2[15:0]) +
	( 11'sd 689) * $signed(input_fmap_3[15:0]) +
	( 16'sd 32206) * $signed(input_fmap_4[15:0]) +
	( 13'sd 3907) * $signed(input_fmap_5[15:0]) +
	( 15'sd 15483) * $signed(input_fmap_6[15:0]) +
	( 16'sd 22380) * $signed(input_fmap_7[15:0]) +
	( 16'sd 18097) * $signed(input_fmap_8[15:0]) +
	( 16'sd 20895) * $signed(input_fmap_9[15:0]) +
	( 14'sd 8117) * $signed(input_fmap_10[15:0]) +
	( 15'sd 16294) * $signed(input_fmap_11[15:0]) +
	( 14'sd 5287) * $signed(input_fmap_12[15:0]) +
	( 16'sd 17579) * $signed(input_fmap_13[15:0]) +
	( 16'sd 28819) * $signed(input_fmap_14[15:0]) +
	( 16'sd 23248) * $signed(input_fmap_15[15:0]) +
	( 15'sd 11410) * $signed(input_fmap_16[15:0]) +
	( 15'sd 10165) * $signed(input_fmap_17[15:0]) +
	( 15'sd 10722) * $signed(input_fmap_18[15:0]) +
	( 15'sd 9609) * $signed(input_fmap_19[15:0]) +
	( 16'sd 27876) * $signed(input_fmap_20[15:0]) +
	( 15'sd 15976) * $signed(input_fmap_21[15:0]) +
	( 16'sd 22425) * $signed(input_fmap_22[15:0]) +
	( 15'sd 10125) * $signed(input_fmap_23[15:0]) +
	( 16'sd 32104) * $signed(input_fmap_24[15:0]) +
	( 16'sd 27507) * $signed(input_fmap_25[15:0]) +
	( 16'sd 18298) * $signed(input_fmap_26[15:0]) +
	( 15'sd 14223) * $signed(input_fmap_27[15:0]) +
	( 14'sd 7380) * $signed(input_fmap_28[15:0]) +
	( 16'sd 22431) * $signed(input_fmap_29[15:0]) +
	( 16'sd 19847) * $signed(input_fmap_30[15:0]) +
	( 15'sd 16366) * $signed(input_fmap_31[15:0]) +
	( 11'sd 1019) * $signed(input_fmap_32[15:0]) +
	( 15'sd 9663) * $signed(input_fmap_33[15:0]) +
	( 15'sd 13708) * $signed(input_fmap_34[15:0]) +
	( 16'sd 20261) * $signed(input_fmap_35[15:0]) +
	( 13'sd 2244) * $signed(input_fmap_36[15:0]) +
	( 13'sd 2794) * $signed(input_fmap_37[15:0]) +
	( 15'sd 11343) * $signed(input_fmap_38[15:0]) +
	( 14'sd 4785) * $signed(input_fmap_39[15:0]) +
	( 15'sd 12206) * $signed(input_fmap_40[15:0]) +
	( 15'sd 14224) * $signed(input_fmap_41[15:0]) +
	( 16'sd 17613) * $signed(input_fmap_42[15:0]) +
	( 12'sd 2004) * $signed(input_fmap_43[15:0]) +
	( 16'sd 24849) * $signed(input_fmap_44[15:0]) +
	( 15'sd 16051) * $signed(input_fmap_45[15:0]) +
	( 14'sd 5897) * $signed(input_fmap_46[15:0]) +
	( 15'sd 12086) * $signed(input_fmap_47[15:0]) +
	( 14'sd 5849) * $signed(input_fmap_48[15:0]) +
	( 14'sd 7112) * $signed(input_fmap_49[15:0]) +
	( 15'sd 12959) * $signed(input_fmap_50[15:0]) +
	( 16'sd 20830) * $signed(input_fmap_51[15:0]) +
	( 15'sd 15416) * $signed(input_fmap_52[15:0]) +
	( 14'sd 4805) * $signed(input_fmap_53[15:0]) +
	( 16'sd 21714) * $signed(input_fmap_54[15:0]) +
	( 16'sd 22905) * $signed(input_fmap_55[15:0]) +
	( 15'sd 14133) * $signed(input_fmap_56[15:0]) +
	( 16'sd 18255) * $signed(input_fmap_57[15:0]) +
	( 14'sd 7130) * $signed(input_fmap_58[15:0]) +
	( 13'sd 3170) * $signed(input_fmap_59[15:0]) +
	( 15'sd 16035) * $signed(input_fmap_60[15:0]) +
	( 16'sd 31190) * $signed(input_fmap_61[15:0]) +
	( 10'sd 262) * $signed(input_fmap_62[15:0]) +
	( 12'sd 1102) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_30;
assign conv_mac_30 = 
	( 14'sd 4683) * $signed(input_fmap_0[15:0]) +
	( 16'sd 27853) * $signed(input_fmap_1[15:0]) +
	( 16'sd 30986) * $signed(input_fmap_2[15:0]) +
	( 16'sd 23693) * $signed(input_fmap_3[15:0]) +
	( 15'sd 10936) * $signed(input_fmap_4[15:0]) +
	( 16'sd 21360) * $signed(input_fmap_5[15:0]) +
	( 15'sd 9057) * $signed(input_fmap_6[15:0]) +
	( 14'sd 5039) * $signed(input_fmap_7[15:0]) +
	( 16'sd 26812) * $signed(input_fmap_8[15:0]) +
	( 16'sd 18074) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1716) * $signed(input_fmap_10[15:0]) +
	( 12'sd 2036) * $signed(input_fmap_11[15:0]) +
	( 16'sd 19741) * $signed(input_fmap_12[15:0]) +
	( 16'sd 24129) * $signed(input_fmap_13[15:0]) +
	( 13'sd 2144) * $signed(input_fmap_14[15:0]) +
	( 15'sd 15822) * $signed(input_fmap_15[15:0]) +
	( 15'sd 15113) * $signed(input_fmap_16[15:0]) +
	( 16'sd 17302) * $signed(input_fmap_17[15:0]) +
	( 16'sd 21946) * $signed(input_fmap_18[15:0]) +
	( 16'sd 26811) * $signed(input_fmap_19[15:0]) +
	( 11'sd 847) * $signed(input_fmap_20[15:0]) +
	( 13'sd 3861) * $signed(input_fmap_21[15:0]) +
	( 15'sd 15667) * $signed(input_fmap_22[15:0]) +
	( 16'sd 31342) * $signed(input_fmap_23[15:0]) +
	( 15'sd 12396) * $signed(input_fmap_24[15:0]) +
	( 14'sd 7818) * $signed(input_fmap_25[15:0]) +
	( 15'sd 15591) * $signed(input_fmap_26[15:0]) +
	( 16'sd 18246) * $signed(input_fmap_27[15:0]) +
	( 15'sd 10920) * $signed(input_fmap_28[15:0]) +
	( 13'sd 3218) * $signed(input_fmap_29[15:0]) +
	( 11'sd 995) * $signed(input_fmap_30[15:0]) +
	( 16'sd 20518) * $signed(input_fmap_31[15:0]) +
	( 15'sd 15067) * $signed(input_fmap_32[15:0]) +
	( 15'sd 14175) * $signed(input_fmap_33[15:0]) +
	( 16'sd 21910) * $signed(input_fmap_34[15:0]) +
	( 16'sd 19247) * $signed(input_fmap_35[15:0]) +
	( 16'sd 23137) * $signed(input_fmap_36[15:0]) +
	( 16'sd 20219) * $signed(input_fmap_37[15:0]) +
	( 16'sd 21613) * $signed(input_fmap_38[15:0]) +
	( 16'sd 23019) * $signed(input_fmap_39[15:0]) +
	( 14'sd 5227) * $signed(input_fmap_40[15:0]) +
	( 15'sd 8366) * $signed(input_fmap_41[15:0]) +
	( 16'sd 24494) * $signed(input_fmap_42[15:0]) +
	( 16'sd 22387) * $signed(input_fmap_43[15:0]) +
	( 16'sd 32674) * $signed(input_fmap_44[15:0]) +
	( 14'sd 5236) * $signed(input_fmap_45[15:0]) +
	( 16'sd 29919) * $signed(input_fmap_46[15:0]) +
	( 15'sd 15472) * $signed(input_fmap_47[15:0]) +
	( 16'sd 23490) * $signed(input_fmap_48[15:0]) +
	( 15'sd 14001) * $signed(input_fmap_49[15:0]) +
	( 13'sd 2324) * $signed(input_fmap_50[15:0]) +
	( 16'sd 30849) * $signed(input_fmap_51[15:0]) +
	( 15'sd 13676) * $signed(input_fmap_52[15:0]) +
	( 15'sd 11925) * $signed(input_fmap_53[15:0]) +
	( 16'sd 20842) * $signed(input_fmap_54[15:0]) +
	( 16'sd 27173) * $signed(input_fmap_55[15:0]) +
	( 16'sd 32410) * $signed(input_fmap_56[15:0]) +
	( 15'sd 15273) * $signed(input_fmap_57[15:0]) +
	( 16'sd 25487) * $signed(input_fmap_58[15:0]) +
	( 16'sd 24609) * $signed(input_fmap_59[15:0]) +
	( 16'sd 20548) * $signed(input_fmap_60[15:0]) +
	( 16'sd 25456) * $signed(input_fmap_61[15:0]) +
	( 16'sd 28602) * $signed(input_fmap_62[15:0]) +
	( 16'sd 27150) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_31;
assign conv_mac_31 = 
	( 16'sd 20833) * $signed(input_fmap_0[15:0]) +
	( 15'sd 14528) * $signed(input_fmap_1[15:0]) +
	( 15'sd 16179) * $signed(input_fmap_2[15:0]) +
	( 15'sd 14841) * $signed(input_fmap_3[15:0]) +
	( 14'sd 7549) * $signed(input_fmap_4[15:0]) +
	( 15'sd 10815) * $signed(input_fmap_5[15:0]) +
	( 15'sd 13977) * $signed(input_fmap_6[15:0]) +
	( 5'sd 14) * $signed(input_fmap_7[15:0]) +
	( 11'sd 746) * $signed(input_fmap_8[15:0]) +
	( 16'sd 26836) * $signed(input_fmap_9[15:0]) +
	( 11'sd 1009) * $signed(input_fmap_10[15:0]) +
	( 14'sd 4295) * $signed(input_fmap_11[15:0]) +
	( 16'sd 25223) * $signed(input_fmap_12[15:0]) +
	( 16'sd 19288) * $signed(input_fmap_13[15:0]) +
	( 13'sd 3120) * $signed(input_fmap_14[15:0]) +
	( 16'sd 32738) * $signed(input_fmap_15[15:0]) +
	( 16'sd 32097) * $signed(input_fmap_16[15:0]) +
	( 16'sd 24887) * $signed(input_fmap_17[15:0]) +
	( 16'sd 30342) * $signed(input_fmap_18[15:0]) +
	( 16'sd 23113) * $signed(input_fmap_19[15:0]) +
	( 16'sd 28230) * $signed(input_fmap_20[15:0]) +
	( 16'sd 31392) * $signed(input_fmap_21[15:0]) +
	( 16'sd 20155) * $signed(input_fmap_22[15:0]) +
	( 16'sd 32589) * $signed(input_fmap_23[15:0]) +
	( 16'sd 22130) * $signed(input_fmap_24[15:0]) +
	( 15'sd 11096) * $signed(input_fmap_25[15:0]) +
	( 16'sd 27918) * $signed(input_fmap_26[15:0]) +
	( 16'sd 29500) * $signed(input_fmap_27[15:0]) +
	( 14'sd 6417) * $signed(input_fmap_28[15:0]) +
	( 15'sd 11714) * $signed(input_fmap_29[15:0]) +
	( 16'sd 23726) * $signed(input_fmap_30[15:0]) +
	( 16'sd 24877) * $signed(input_fmap_31[15:0]) +
	( 16'sd 16446) * $signed(input_fmap_32[15:0]) +
	( 16'sd 29637) * $signed(input_fmap_33[15:0]) +
	( 14'sd 5919) * $signed(input_fmap_34[15:0]) +
	( 16'sd 24214) * $signed(input_fmap_35[15:0]) +
	( 16'sd 27466) * $signed(input_fmap_36[15:0]) +
	( 16'sd 18470) * $signed(input_fmap_37[15:0]) +
	( 15'sd 13323) * $signed(input_fmap_38[15:0]) +
	( 16'sd 20769) * $signed(input_fmap_39[15:0]) +
	( 15'sd 11142) * $signed(input_fmap_40[15:0]) +
	( 15'sd 9277) * $signed(input_fmap_41[15:0]) +
	( 16'sd 32602) * $signed(input_fmap_42[15:0]) +
	( 16'sd 28725) * $signed(input_fmap_43[15:0]) +
	( 16'sd 19668) * $signed(input_fmap_44[15:0]) +
	( 15'sd 11242) * $signed(input_fmap_45[15:0]) +
	( 14'sd 6274) * $signed(input_fmap_46[15:0]) +
	( 16'sd 30613) * $signed(input_fmap_47[15:0]) +
	( 15'sd 10315) * $signed(input_fmap_48[15:0]) +
	( 15'sd 11226) * $signed(input_fmap_49[15:0]) +
	( 16'sd 25566) * $signed(input_fmap_50[15:0]) +
	( 14'sd 7857) * $signed(input_fmap_51[15:0]) +
	( 13'sd 2780) * $signed(input_fmap_52[15:0]) +
	( 15'sd 15471) * $signed(input_fmap_53[15:0]) +
	( 15'sd 15626) * $signed(input_fmap_54[15:0]) +
	( 13'sd 3599) * $signed(input_fmap_55[15:0]) +
	( 14'sd 6592) * $signed(input_fmap_56[15:0]) +
	( 15'sd 14977) * $signed(input_fmap_57[15:0]) +
	( 3'sd 3) * $signed(input_fmap_58[15:0]) +
	( 14'sd 5744) * $signed(input_fmap_59[15:0]) +
	( 16'sd 24221) * $signed(input_fmap_60[15:0]) +
	( 14'sd 8186) * $signed(input_fmap_61[15:0]) +
	( 16'sd 27419) * $signed(input_fmap_62[15:0]) +
	( 15'sd 10510) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_32;
assign conv_mac_32 = 
	( 16'sd 27124) * $signed(input_fmap_0[15:0]) +
	( 16'sd 26583) * $signed(input_fmap_1[15:0]) +
	( 13'sd 2519) * $signed(input_fmap_2[15:0]) +
	( 15'sd 13125) * $signed(input_fmap_3[15:0]) +
	( 12'sd 1155) * $signed(input_fmap_4[15:0]) +
	( 16'sd 20687) * $signed(input_fmap_5[15:0]) +
	( 16'sd 26780) * $signed(input_fmap_6[15:0]) +
	( 16'sd 27295) * $signed(input_fmap_7[15:0]) +
	( 16'sd 28152) * $signed(input_fmap_8[15:0]) +
	( 16'sd 27168) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1803) * $signed(input_fmap_10[15:0]) +
	( 16'sd 26946) * $signed(input_fmap_11[15:0]) +
	( 15'sd 10889) * $signed(input_fmap_12[15:0]) +
	( 14'sd 4714) * $signed(input_fmap_13[15:0]) +
	( 15'sd 12868) * $signed(input_fmap_14[15:0]) +
	( 14'sd 6189) * $signed(input_fmap_15[15:0]) +
	( 16'sd 31122) * $signed(input_fmap_16[15:0]) +
	( 16'sd 22981) * $signed(input_fmap_17[15:0]) +
	( 15'sd 10526) * $signed(input_fmap_18[15:0]) +
	( 16'sd 25435) * $signed(input_fmap_19[15:0]) +
	( 16'sd 21282) * $signed(input_fmap_20[15:0]) +
	( 16'sd 31917) * $signed(input_fmap_21[15:0]) +
	( 16'sd 29095) * $signed(input_fmap_22[15:0]) +
	( 16'sd 18480) * $signed(input_fmap_23[15:0]) +
	( 16'sd 32375) * $signed(input_fmap_24[15:0]) +
	( 16'sd 21500) * $signed(input_fmap_25[15:0]) +
	( 15'sd 9050) * $signed(input_fmap_26[15:0]) +
	( 16'sd 24707) * $signed(input_fmap_27[15:0]) +
	( 16'sd 23103) * $signed(input_fmap_28[15:0]) +
	( 16'sd 27941) * $signed(input_fmap_29[15:0]) +
	( 14'sd 4598) * $signed(input_fmap_30[15:0]) +
	( 16'sd 32613) * $signed(input_fmap_31[15:0]) +
	( 15'sd 8225) * $signed(input_fmap_32[15:0]) +
	( 15'sd 10200) * $signed(input_fmap_33[15:0]) +
	( 11'sd 740) * $signed(input_fmap_34[15:0]) +
	( 15'sd 11873) * $signed(input_fmap_35[15:0]) +
	( 15'sd 8951) * $signed(input_fmap_36[15:0]) +
	( 15'sd 14932) * $signed(input_fmap_37[15:0]) +
	( 16'sd 27590) * $signed(input_fmap_38[15:0]) +
	( 11'sd 827) * $signed(input_fmap_39[15:0]) +
	( 15'sd 8913) * $signed(input_fmap_40[15:0]) +
	( 16'sd 21757) * $signed(input_fmap_41[15:0]) +
	( 14'sd 6322) * $signed(input_fmap_42[15:0]) +
	( 16'sd 19128) * $signed(input_fmap_43[15:0]) +
	( 14'sd 4853) * $signed(input_fmap_44[15:0]) +
	( 16'sd 25720) * $signed(input_fmap_45[15:0]) +
	( 16'sd 31347) * $signed(input_fmap_46[15:0]) +
	( 16'sd 24082) * $signed(input_fmap_47[15:0]) +
	( 16'sd 23722) * $signed(input_fmap_48[15:0]) +
	( 14'sd 8053) * $signed(input_fmap_49[15:0]) +
	( 16'sd 21530) * $signed(input_fmap_50[15:0]) +
	( 15'sd 13037) * $signed(input_fmap_51[15:0]) +
	( 16'sd 22752) * $signed(input_fmap_52[15:0]) +
	( 15'sd 13549) * $signed(input_fmap_53[15:0]) +
	( 16'sd 29073) * $signed(input_fmap_54[15:0]) +
	( 16'sd 32664) * $signed(input_fmap_55[15:0]) +
	( 15'sd 10079) * $signed(input_fmap_56[15:0]) +
	( 14'sd 5511) * $signed(input_fmap_57[15:0]) +
	( 14'sd 6871) * $signed(input_fmap_58[15:0]) +
	( 16'sd 27824) * $signed(input_fmap_59[15:0]) +
	( 14'sd 6696) * $signed(input_fmap_60[15:0]) +
	( 16'sd 28253) * $signed(input_fmap_61[15:0]) +
	( 16'sd 17758) * $signed(input_fmap_62[15:0]) +
	( 14'sd 6285) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_33;
assign conv_mac_33 = 
	( 15'sd 14483) * $signed(input_fmap_0[15:0]) +
	( 12'sd 1638) * $signed(input_fmap_1[15:0]) +
	( 16'sd 29429) * $signed(input_fmap_2[15:0]) +
	( 12'sd 1883) * $signed(input_fmap_3[15:0]) +
	( 16'sd 26742) * $signed(input_fmap_4[15:0]) +
	( 15'sd 9254) * $signed(input_fmap_5[15:0]) +
	( 15'sd 12731) * $signed(input_fmap_6[15:0]) +
	( 16'sd 24713) * $signed(input_fmap_7[15:0]) +
	( 16'sd 31927) * $signed(input_fmap_8[15:0]) +
	( 16'sd 18911) * $signed(input_fmap_9[15:0]) +
	( 11'sd 544) * $signed(input_fmap_10[15:0]) +
	( 16'sd 26611) * $signed(input_fmap_11[15:0]) +
	( 16'sd 25121) * $signed(input_fmap_12[15:0]) +
	( 16'sd 32207) * $signed(input_fmap_13[15:0]) +
	( 15'sd 9440) * $signed(input_fmap_14[15:0]) +
	( 16'sd 31940) * $signed(input_fmap_15[15:0]) +
	( 16'sd 16592) * $signed(input_fmap_16[15:0]) +
	( 16'sd 23991) * $signed(input_fmap_17[15:0]) +
	( 14'sd 4853) * $signed(input_fmap_18[15:0]) +
	( 14'sd 6563) * $signed(input_fmap_19[15:0]) +
	( 16'sd 24628) * $signed(input_fmap_20[15:0]) +
	( 16'sd 21054) * $signed(input_fmap_21[15:0]) +
	( 16'sd 24086) * $signed(input_fmap_22[15:0]) +
	( 16'sd 26123) * $signed(input_fmap_23[15:0]) +
	( 15'sd 10514) * $signed(input_fmap_24[15:0]) +
	( 9'sd 247) * $signed(input_fmap_25[15:0]) +
	( 16'sd 31558) * $signed(input_fmap_26[15:0]) +
	( 16'sd 21557) * $signed(input_fmap_27[15:0]) +
	( 13'sd 3272) * $signed(input_fmap_28[15:0]) +
	( 16'sd 23767) * $signed(input_fmap_29[15:0]) +
	( 14'sd 5010) * $signed(input_fmap_30[15:0]) +
	( 16'sd 24008) * $signed(input_fmap_31[15:0]) +
	( 12'sd 1459) * $signed(input_fmap_32[15:0]) +
	( 14'sd 5205) * $signed(input_fmap_33[15:0]) +
	( 15'sd 15419) * $signed(input_fmap_34[15:0]) +
	( 16'sd 19357) * $signed(input_fmap_35[15:0]) +
	( 11'sd 959) * $signed(input_fmap_36[15:0]) +
	( 16'sd 22455) * $signed(input_fmap_37[15:0]) +
	( 16'sd 24966) * $signed(input_fmap_38[15:0]) +
	( 16'sd 17843) * $signed(input_fmap_39[15:0]) +
	( 14'sd 5140) * $signed(input_fmap_40[15:0]) +
	( 12'sd 1098) * $signed(input_fmap_41[15:0]) +
	( 16'sd 27877) * $signed(input_fmap_42[15:0]) +
	( 15'sd 11858) * $signed(input_fmap_43[15:0]) +
	( 14'sd 6979) * $signed(input_fmap_44[15:0]) +
	( 14'sd 5307) * $signed(input_fmap_45[15:0]) +
	( 13'sd 3151) * $signed(input_fmap_46[15:0]) +
	( 12'sd 1514) * $signed(input_fmap_47[15:0]) +
	( 16'sd 22637) * $signed(input_fmap_48[15:0]) +
	( 13'sd 2980) * $signed(input_fmap_49[15:0]) +
	( 16'sd 28418) * $signed(input_fmap_50[15:0]) +
	( 16'sd 20276) * $signed(input_fmap_51[15:0]) +
	( 16'sd 25642) * $signed(input_fmap_52[15:0]) +
	( 15'sd 14592) * $signed(input_fmap_53[15:0]) +
	( 13'sd 3260) * $signed(input_fmap_54[15:0]) +
	( 16'sd 27834) * $signed(input_fmap_55[15:0]) +
	( 16'sd 22397) * $signed(input_fmap_56[15:0]) +
	( 16'sd 20510) * $signed(input_fmap_57[15:0]) +
	( 16'sd 26836) * $signed(input_fmap_58[15:0]) +
	( 14'sd 6180) * $signed(input_fmap_59[15:0]) +
	( 10'sd 419) * $signed(input_fmap_60[15:0]) +
	( 15'sd 12462) * $signed(input_fmap_61[15:0]) +
	( 16'sd 32166) * $signed(input_fmap_62[15:0]) +
	( 14'sd 6087) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_34;
assign conv_mac_34 = 
	( 16'sd 21564) * $signed(input_fmap_0[15:0]) +
	( 15'sd 8943) * $signed(input_fmap_1[15:0]) +
	( 13'sd 4049) * $signed(input_fmap_2[15:0]) +
	( 15'sd 8193) * $signed(input_fmap_3[15:0]) +
	( 16'sd 19813) * $signed(input_fmap_4[15:0]) +
	( 16'sd 27836) * $signed(input_fmap_5[15:0]) +
	( 14'sd 7235) * $signed(input_fmap_6[15:0]) +
	( 14'sd 5581) * $signed(input_fmap_7[15:0]) +
	( 15'sd 10562) * $signed(input_fmap_8[15:0]) +
	( 16'sd 25394) * $signed(input_fmap_9[15:0]) +
	( 16'sd 21380) * $signed(input_fmap_10[15:0]) +
	( 12'sd 1280) * $signed(input_fmap_11[15:0]) +
	( 15'sd 16111) * $signed(input_fmap_12[15:0]) +
	( 11'sd 710) * $signed(input_fmap_13[15:0]) +
	( 15'sd 12867) * $signed(input_fmap_14[15:0]) +
	( 16'sd 27106) * $signed(input_fmap_15[15:0]) +
	( 14'sd 5511) * $signed(input_fmap_16[15:0]) +
	( 16'sd 17561) * $signed(input_fmap_17[15:0]) +
	( 16'sd 32380) * $signed(input_fmap_18[15:0]) +
	( 13'sd 3314) * $signed(input_fmap_19[15:0]) +
	( 11'sd 601) * $signed(input_fmap_20[15:0]) +
	( 16'sd 17402) * $signed(input_fmap_21[15:0]) +
	( 15'sd 15866) * $signed(input_fmap_22[15:0]) +
	( 16'sd 30007) * $signed(input_fmap_23[15:0]) +
	( 16'sd 21676) * $signed(input_fmap_24[15:0]) +
	( 16'sd 26794) * $signed(input_fmap_25[15:0]) +
	( 13'sd 3857) * $signed(input_fmap_26[15:0]) +
	( 16'sd 28357) * $signed(input_fmap_27[15:0]) +
	( 13'sd 3551) * $signed(input_fmap_28[15:0]) +
	( 16'sd 18215) * $signed(input_fmap_29[15:0]) +
	( 16'sd 21937) * $signed(input_fmap_30[15:0]) +
	( 16'sd 29903) * $signed(input_fmap_31[15:0]) +
	( 16'sd 17193) * $signed(input_fmap_32[15:0]) +
	( 16'sd 19105) * $signed(input_fmap_33[15:0]) +
	( 16'sd 32658) * $signed(input_fmap_34[15:0]) +
	( 15'sd 9798) * $signed(input_fmap_35[15:0]) +
	( 14'sd 4959) * $signed(input_fmap_36[15:0]) +
	( 16'sd 17563) * $signed(input_fmap_37[15:0]) +
	( 16'sd 22547) * $signed(input_fmap_38[15:0]) +
	( 15'sd 12973) * $signed(input_fmap_39[15:0]) +
	( 16'sd 22998) * $signed(input_fmap_40[15:0]) +
	( 16'sd 27543) * $signed(input_fmap_41[15:0]) +
	( 15'sd 12158) * $signed(input_fmap_42[15:0]) +
	( 16'sd 32010) * $signed(input_fmap_43[15:0]) +
	( 15'sd 12111) * $signed(input_fmap_44[15:0]) +
	( 16'sd 18541) * $signed(input_fmap_45[15:0]) +
	( 16'sd 32031) * $signed(input_fmap_46[15:0]) +
	( 13'sd 3558) * $signed(input_fmap_47[15:0]) +
	( 16'sd 32414) * $signed(input_fmap_48[15:0]) +
	( 14'sd 7318) * $signed(input_fmap_49[15:0]) +
	( 16'sd 29011) * $signed(input_fmap_50[15:0]) +
	( 13'sd 3095) * $signed(input_fmap_51[15:0]) +
	( 13'sd 3619) * $signed(input_fmap_52[15:0]) +
	( 16'sd 27702) * $signed(input_fmap_53[15:0]) +
	( 16'sd 31039) * $signed(input_fmap_54[15:0]) +
	( 16'sd 25532) * $signed(input_fmap_55[15:0]) +
	( 16'sd 18509) * $signed(input_fmap_56[15:0]) +
	( 15'sd 15239) * $signed(input_fmap_57[15:0]) +
	( 15'sd 12229) * $signed(input_fmap_58[15:0]) +
	( 16'sd 31414) * $signed(input_fmap_59[15:0]) +
	( 16'sd 28799) * $signed(input_fmap_60[15:0]) +
	( 14'sd 5873) * $signed(input_fmap_61[15:0]) +
	( 16'sd 26918) * $signed(input_fmap_62[15:0]) +
	( 16'sd 26317) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_35;
assign conv_mac_35 = 
	( 16'sd 18549) * $signed(input_fmap_0[15:0]) +
	( 16'sd 29017) * $signed(input_fmap_1[15:0]) +
	( 15'sd 10713) * $signed(input_fmap_2[15:0]) +
	( 16'sd 23614) * $signed(input_fmap_3[15:0]) +
	( 16'sd 22024) * $signed(input_fmap_4[15:0]) +
	( 16'sd 31871) * $signed(input_fmap_5[15:0]) +
	( 15'sd 9678) * $signed(input_fmap_6[15:0]) +
	( 16'sd 32674) * $signed(input_fmap_7[15:0]) +
	( 14'sd 7524) * $signed(input_fmap_8[15:0]) +
	( 15'sd 9767) * $signed(input_fmap_9[15:0]) +
	( 14'sd 7986) * $signed(input_fmap_10[15:0]) +
	( 13'sd 3771) * $signed(input_fmap_11[15:0]) +
	( 15'sd 12512) * $signed(input_fmap_12[15:0]) +
	( 16'sd 26838) * $signed(input_fmap_13[15:0]) +
	( 15'sd 10426) * $signed(input_fmap_14[15:0]) +
	( 14'sd 5678) * $signed(input_fmap_15[15:0]) +
	( 14'sd 7217) * $signed(input_fmap_16[15:0]) +
	( 16'sd 29457) * $signed(input_fmap_17[15:0]) +
	( 16'sd 29906) * $signed(input_fmap_18[15:0]) +
	( 14'sd 5967) * $signed(input_fmap_19[15:0]) +
	( 13'sd 2865) * $signed(input_fmap_20[15:0]) +
	( 16'sd 28136) * $signed(input_fmap_21[15:0]) +
	( 15'sd 9798) * $signed(input_fmap_22[15:0]) +
	( 16'sd 20685) * $signed(input_fmap_23[15:0]) +
	( 16'sd 21266) * $signed(input_fmap_24[15:0]) +
	( 16'sd 23305) * $signed(input_fmap_25[15:0]) +
	( 16'sd 24712) * $signed(input_fmap_26[15:0]) +
	( 14'sd 4435) * $signed(input_fmap_27[15:0]) +
	( 13'sd 3440) * $signed(input_fmap_28[15:0]) +
	( 16'sd 29359) * $signed(input_fmap_29[15:0]) +
	( 14'sd 8052) * $signed(input_fmap_30[15:0]) +
	( 16'sd 19586) * $signed(input_fmap_31[15:0]) +
	( 16'sd 27223) * $signed(input_fmap_32[15:0]) +
	( 16'sd 30299) * $signed(input_fmap_33[15:0]) +
	( 14'sd 4609) * $signed(input_fmap_34[15:0]) +
	( 15'sd 13462) * $signed(input_fmap_35[15:0]) +
	( 16'sd 23581) * $signed(input_fmap_36[15:0]) +
	( 16'sd 30982) * $signed(input_fmap_37[15:0]) +
	( 16'sd 30510) * $signed(input_fmap_38[15:0]) +
	( 13'sd 2483) * $signed(input_fmap_39[15:0]) +
	( 15'sd 13164) * $signed(input_fmap_40[15:0]) +
	( 16'sd 19161) * $signed(input_fmap_41[15:0]) +
	( 14'sd 4451) * $signed(input_fmap_42[15:0]) +
	( 16'sd 26663) * $signed(input_fmap_43[15:0]) +
	( 16'sd 18269) * $signed(input_fmap_44[15:0]) +
	( 15'sd 13138) * $signed(input_fmap_45[15:0]) +
	( 16'sd 18304) * $signed(input_fmap_46[15:0]) +
	( 16'sd 31569) * $signed(input_fmap_47[15:0]) +
	( 15'sd 12827) * $signed(input_fmap_48[15:0]) +
	( 13'sd 3085) * $signed(input_fmap_49[15:0]) +
	( 15'sd 10189) * $signed(input_fmap_50[15:0]) +
	( 15'sd 11923) * $signed(input_fmap_51[15:0]) +
	( 15'sd 9447) * $signed(input_fmap_52[15:0]) +
	( 15'sd 12597) * $signed(input_fmap_53[15:0]) +
	( 16'sd 25555) * $signed(input_fmap_54[15:0]) +
	( 16'sd 21560) * $signed(input_fmap_55[15:0]) +
	( 16'sd 22572) * $signed(input_fmap_56[15:0]) +
	( 15'sd 12197) * $signed(input_fmap_57[15:0]) +
	( 15'sd 15383) * $signed(input_fmap_58[15:0]) +
	( 14'sd 7718) * $signed(input_fmap_59[15:0]) +
	( 11'sd 939) * $signed(input_fmap_60[15:0]) +
	( 15'sd 14293) * $signed(input_fmap_61[15:0]) +
	( 15'sd 14681) * $signed(input_fmap_62[15:0]) +
	( 16'sd 24932) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_36;
assign conv_mac_36 = 
	( 14'sd 6306) * $signed(input_fmap_0[15:0]) +
	( 15'sd 12723) * $signed(input_fmap_1[15:0]) +
	( 14'sd 6268) * $signed(input_fmap_2[15:0]) +
	( 16'sd 17313) * $signed(input_fmap_3[15:0]) +
	( 9'sd 130) * $signed(input_fmap_4[15:0]) +
	( 13'sd 3245) * $signed(input_fmap_5[15:0]) +
	( 16'sd 26455) * $signed(input_fmap_6[15:0]) +
	( 16'sd 24645) * $signed(input_fmap_7[15:0]) +
	( 16'sd 21814) * $signed(input_fmap_8[15:0]) +
	( 16'sd 28593) * $signed(input_fmap_9[15:0]) +
	( 16'sd 22133) * $signed(input_fmap_10[15:0]) +
	( 16'sd 16976) * $signed(input_fmap_11[15:0]) +
	( 16'sd 29819) * $signed(input_fmap_12[15:0]) +
	( 15'sd 13311) * $signed(input_fmap_13[15:0]) +
	( 16'sd 18441) * $signed(input_fmap_14[15:0]) +
	( 14'sd 6531) * $signed(input_fmap_15[15:0]) +
	( 15'sd 8454) * $signed(input_fmap_16[15:0]) +
	( 16'sd 30874) * $signed(input_fmap_17[15:0]) +
	( 16'sd 19522) * $signed(input_fmap_18[15:0]) +
	( 16'sd 26776) * $signed(input_fmap_19[15:0]) +
	( 13'sd 2131) * $signed(input_fmap_20[15:0]) +
	( 16'sd 29815) * $signed(input_fmap_21[15:0]) +
	( 15'sd 14106) * $signed(input_fmap_22[15:0]) +
	( 15'sd 12055) * $signed(input_fmap_23[15:0]) +
	( 13'sd 3810) * $signed(input_fmap_24[15:0]) +
	( 16'sd 20071) * $signed(input_fmap_25[15:0]) +
	( 14'sd 4225) * $signed(input_fmap_26[15:0]) +
	( 16'sd 29569) * $signed(input_fmap_27[15:0]) +
	( 16'sd 23212) * $signed(input_fmap_28[15:0]) +
	( 16'sd 25518) * $signed(input_fmap_29[15:0]) +
	( 12'sd 1361) * $signed(input_fmap_30[15:0]) +
	( 15'sd 15089) * $signed(input_fmap_31[15:0]) +
	( 14'sd 7614) * $signed(input_fmap_32[15:0]) +
	( 14'sd 4387) * $signed(input_fmap_33[15:0]) +
	( 16'sd 21543) * $signed(input_fmap_34[15:0]) +
	( 16'sd 22451) * $signed(input_fmap_35[15:0]) +
	( 16'sd 20112) * $signed(input_fmap_36[15:0]) +
	( 15'sd 10949) * $signed(input_fmap_37[15:0]) +
	( 16'sd 30524) * $signed(input_fmap_38[15:0]) +
	( 16'sd 30504) * $signed(input_fmap_39[15:0]) +
	( 16'sd 23519) * $signed(input_fmap_40[15:0]) +
	( 16'sd 17484) * $signed(input_fmap_41[15:0]) +
	( 15'sd 11558) * $signed(input_fmap_42[15:0]) +
	( 15'sd 11590) * $signed(input_fmap_43[15:0]) +
	( 15'sd 14047) * $signed(input_fmap_44[15:0]) +
	( 13'sd 2055) * $signed(input_fmap_45[15:0]) +
	( 16'sd 17139) * $signed(input_fmap_46[15:0]) +
	( 16'sd 17650) * $signed(input_fmap_47[15:0]) +
	( 16'sd 29339) * $signed(input_fmap_48[15:0]) +
	( 13'sd 2767) * $signed(input_fmap_49[15:0]) +
	( 16'sd 21480) * $signed(input_fmap_50[15:0]) +
	( 15'sd 15966) * $signed(input_fmap_51[15:0]) +
	( 16'sd 17040) * $signed(input_fmap_52[15:0]) +
	( 16'sd 26101) * $signed(input_fmap_53[15:0]) +
	( 16'sd 23610) * $signed(input_fmap_54[15:0]) +
	( 15'sd 14344) * $signed(input_fmap_55[15:0]) +
	( 10'sd 367) * $signed(input_fmap_56[15:0]) +
	( 14'sd 8182) * $signed(input_fmap_57[15:0]) +
	( 15'sd 16231) * $signed(input_fmap_58[15:0]) +
	( 16'sd 29979) * $signed(input_fmap_59[15:0]) +
	( 10'sd 281) * $signed(input_fmap_60[15:0]) +
	( 16'sd 19261) * $signed(input_fmap_61[15:0]) +
	( 13'sd 2507) * $signed(input_fmap_62[15:0]) +
	( 16'sd 20754) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_37;
assign conv_mac_37 = 
	( 16'sd 19802) * $signed(input_fmap_0[15:0]) +
	( 13'sd 3017) * $signed(input_fmap_1[15:0]) +
	( 16'sd 21936) * $signed(input_fmap_2[15:0]) +
	( 16'sd 25208) * $signed(input_fmap_3[15:0]) +
	( 16'sd 17123) * $signed(input_fmap_4[15:0]) +
	( 15'sd 15430) * $signed(input_fmap_5[15:0]) +
	( 12'sd 1562) * $signed(input_fmap_6[15:0]) +
	( 12'sd 1497) * $signed(input_fmap_7[15:0]) +
	( 14'sd 4244) * $signed(input_fmap_8[15:0]) +
	( 12'sd 1559) * $signed(input_fmap_9[15:0]) +
	( 16'sd 31065) * $signed(input_fmap_10[15:0]) +
	( 13'sd 3586) * $signed(input_fmap_11[15:0]) +
	( 15'sd 12947) * $signed(input_fmap_12[15:0]) +
	( 16'sd 21610) * $signed(input_fmap_13[15:0]) +
	( 16'sd 22159) * $signed(input_fmap_14[15:0]) +
	( 11'sd 872) * $signed(input_fmap_15[15:0]) +
	( 16'sd 30783) * $signed(input_fmap_16[15:0]) +
	( 16'sd 24424) * $signed(input_fmap_17[15:0]) +
	( 16'sd 18081) * $signed(input_fmap_18[15:0]) +
	( 15'sd 9696) * $signed(input_fmap_19[15:0]) +
	( 13'sd 3157) * $signed(input_fmap_20[15:0]) +
	( 14'sd 7334) * $signed(input_fmap_21[15:0]) +
	( 16'sd 21333) * $signed(input_fmap_22[15:0]) +
	( 16'sd 27914) * $signed(input_fmap_23[15:0]) +
	( 16'sd 17287) * $signed(input_fmap_24[15:0]) +
	( 15'sd 12135) * $signed(input_fmap_25[15:0]) +
	( 15'sd 12197) * $signed(input_fmap_26[15:0]) +
	( 16'sd 29492) * $signed(input_fmap_27[15:0]) +
	( 15'sd 8336) * $signed(input_fmap_28[15:0]) +
	( 16'sd 22383) * $signed(input_fmap_29[15:0]) +
	( 14'sd 5023) * $signed(input_fmap_30[15:0]) +
	( 16'sd 24325) * $signed(input_fmap_31[15:0]) +
	( 16'sd 19655) * $signed(input_fmap_32[15:0]) +
	( 13'sd 2662) * $signed(input_fmap_33[15:0]) +
	( 15'sd 10467) * $signed(input_fmap_34[15:0]) +
	( 16'sd 22736) * $signed(input_fmap_35[15:0]) +
	( 15'sd 9337) * $signed(input_fmap_36[15:0]) +
	( 14'sd 5420) * $signed(input_fmap_37[15:0]) +
	( 16'sd 18848) * $signed(input_fmap_38[15:0]) +
	( 16'sd 24110) * $signed(input_fmap_39[15:0]) +
	( 12'sd 1623) * $signed(input_fmap_40[15:0]) +
	( 15'sd 14805) * $signed(input_fmap_41[15:0]) +
	( 16'sd 30465) * $signed(input_fmap_42[15:0]) +
	( 15'sd 15935) * $signed(input_fmap_43[15:0]) +
	( 14'sd 6908) * $signed(input_fmap_44[15:0]) +
	( 14'sd 5636) * $signed(input_fmap_45[15:0]) +
	( 15'sd 10986) * $signed(input_fmap_46[15:0]) +
	( 16'sd 22724) * $signed(input_fmap_47[15:0]) +
	( 15'sd 15748) * $signed(input_fmap_48[15:0]) +
	( 15'sd 8374) * $signed(input_fmap_49[15:0]) +
	( 13'sd 3000) * $signed(input_fmap_50[15:0]) +
	( 15'sd 14327) * $signed(input_fmap_51[15:0]) +
	( 16'sd 32110) * $signed(input_fmap_52[15:0]) +
	( 15'sd 13556) * $signed(input_fmap_53[15:0]) +
	( 16'sd 22438) * $signed(input_fmap_54[15:0]) +
	( 16'sd 21183) * $signed(input_fmap_55[15:0]) +
	( 16'sd 18447) * $signed(input_fmap_56[15:0]) +
	( 10'sd 425) * $signed(input_fmap_57[15:0]) +
	( 14'sd 5692) * $signed(input_fmap_58[15:0]) +
	( 12'sd 1416) * $signed(input_fmap_59[15:0]) +
	( 14'sd 7211) * $signed(input_fmap_60[15:0]) +
	( 15'sd 9427) * $signed(input_fmap_61[15:0]) +
	( 16'sd 27018) * $signed(input_fmap_62[15:0]) +
	( 16'sd 28376) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_38;
assign conv_mac_38 = 
	( 15'sd 13051) * $signed(input_fmap_0[15:0]) +
	( 16'sd 31054) * $signed(input_fmap_1[15:0]) +
	( 16'sd 28511) * $signed(input_fmap_2[15:0]) +
	( 15'sd 9156) * $signed(input_fmap_3[15:0]) +
	( 15'sd 13878) * $signed(input_fmap_4[15:0]) +
	( 16'sd 22423) * $signed(input_fmap_5[15:0]) +
	( 16'sd 30556) * $signed(input_fmap_6[15:0]) +
	( 16'sd 19543) * $signed(input_fmap_7[15:0]) +
	( 16'sd 25207) * $signed(input_fmap_8[15:0]) +
	( 16'sd 24301) * $signed(input_fmap_9[15:0]) +
	( 16'sd 28510) * $signed(input_fmap_10[15:0]) +
	( 15'sd 9038) * $signed(input_fmap_11[15:0]) +
	( 16'sd 27253) * $signed(input_fmap_12[15:0]) +
	( 15'sd 11519) * $signed(input_fmap_13[15:0]) +
	( 15'sd 10914) * $signed(input_fmap_14[15:0]) +
	( 15'sd 10114) * $signed(input_fmap_15[15:0]) +
	( 14'sd 6958) * $signed(input_fmap_16[15:0]) +
	( 12'sd 1822) * $signed(input_fmap_17[15:0]) +
	( 14'sd 5685) * $signed(input_fmap_18[15:0]) +
	( 16'sd 22476) * $signed(input_fmap_19[15:0]) +
	( 15'sd 8573) * $signed(input_fmap_20[15:0]) +
	( 15'sd 9812) * $signed(input_fmap_21[15:0]) +
	( 14'sd 6472) * $signed(input_fmap_22[15:0]) +
	( 16'sd 28481) * $signed(input_fmap_23[15:0]) +
	( 16'sd 16475) * $signed(input_fmap_24[15:0]) +
	( 16'sd 23117) * $signed(input_fmap_25[15:0]) +
	( 16'sd 26583) * $signed(input_fmap_26[15:0]) +
	( 15'sd 9438) * $signed(input_fmap_27[15:0]) +
	( 16'sd 23631) * $signed(input_fmap_28[15:0]) +
	( 11'sd 837) * $signed(input_fmap_29[15:0]) +
	( 14'sd 4454) * $signed(input_fmap_30[15:0]) +
	( 15'sd 11369) * $signed(input_fmap_31[15:0]) +
	( 14'sd 7933) * $signed(input_fmap_32[15:0]) +
	( 14'sd 4674) * $signed(input_fmap_33[15:0]) +
	( 10'sd 377) * $signed(input_fmap_34[15:0]) +
	( 15'sd 15403) * $signed(input_fmap_35[15:0]) +
	( 14'sd 7592) * $signed(input_fmap_36[15:0]) +
	( 14'sd 4881) * $signed(input_fmap_37[15:0]) +
	( 14'sd 4177) * $signed(input_fmap_38[15:0]) +
	( 16'sd 17368) * $signed(input_fmap_39[15:0]) +
	( 14'sd 6723) * $signed(input_fmap_40[15:0]) +
	( 16'sd 22132) * $signed(input_fmap_41[15:0]) +
	( 15'sd 16127) * $signed(input_fmap_42[15:0]) +
	( 14'sd 5644) * $signed(input_fmap_43[15:0]) +
	( 16'sd 20219) * $signed(input_fmap_44[15:0]) +
	( 15'sd 12660) * $signed(input_fmap_45[15:0]) +
	( 16'sd 27347) * $signed(input_fmap_46[15:0]) +
	( 16'sd 18104) * $signed(input_fmap_47[15:0]) +
	( 15'sd 13727) * $signed(input_fmap_48[15:0]) +
	( 12'sd 1092) * $signed(input_fmap_49[15:0]) +
	( 16'sd 27437) * $signed(input_fmap_50[15:0]) +
	( 16'sd 29765) * $signed(input_fmap_51[15:0]) +
	( 16'sd 30272) * $signed(input_fmap_52[15:0]) +
	( 14'sd 6724) * $signed(input_fmap_53[15:0]) +
	( 15'sd 16041) * $signed(input_fmap_54[15:0]) +
	( 16'sd 17804) * $signed(input_fmap_55[15:0]) +
	( 16'sd 20623) * $signed(input_fmap_56[15:0]) +
	( 12'sd 1807) * $signed(input_fmap_57[15:0]) +
	( 16'sd 23607) * $signed(input_fmap_58[15:0]) +
	( 13'sd 2232) * $signed(input_fmap_59[15:0]) +
	( 16'sd 25792) * $signed(input_fmap_60[15:0]) +
	( 16'sd 23104) * $signed(input_fmap_61[15:0]) +
	( 16'sd 29047) * $signed(input_fmap_62[15:0]) +
	( 14'sd 5034) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_39;
assign conv_mac_39 = 
	( 15'sd 14340) * $signed(input_fmap_0[15:0]) +
	( 16'sd 16836) * $signed(input_fmap_1[15:0]) +
	( 10'sd 356) * $signed(input_fmap_2[15:0]) +
	( 14'sd 7306) * $signed(input_fmap_3[15:0]) +
	( 16'sd 27012) * $signed(input_fmap_4[15:0]) +
	( 16'sd 28816) * $signed(input_fmap_5[15:0]) +
	( 12'sd 1815) * $signed(input_fmap_6[15:0]) +
	( 16'sd 25999) * $signed(input_fmap_7[15:0]) +
	( 16'sd 31948) * $signed(input_fmap_8[15:0]) +
	( 16'sd 31108) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1242) * $signed(input_fmap_10[15:0]) +
	( 15'sd 14337) * $signed(input_fmap_11[15:0]) +
	( 14'sd 6448) * $signed(input_fmap_12[15:0]) +
	( 16'sd 28060) * $signed(input_fmap_13[15:0]) +
	( 16'sd 24094) * $signed(input_fmap_14[15:0]) +
	( 10'sd 301) * $signed(input_fmap_15[15:0]) +
	( 16'sd 27546) * $signed(input_fmap_16[15:0]) +
	( 16'sd 25501) * $signed(input_fmap_17[15:0]) +
	( 11'sd 529) * $signed(input_fmap_18[15:0]) +
	( 15'sd 8691) * $signed(input_fmap_19[15:0]) +
	( 16'sd 29054) * $signed(input_fmap_20[15:0]) +
	( 16'sd 28189) * $signed(input_fmap_21[15:0]) +
	( 16'sd 27125) * $signed(input_fmap_22[15:0]) +
	( 13'sd 3851) * $signed(input_fmap_23[15:0]) +
	( 16'sd 17861) * $signed(input_fmap_24[15:0]) +
	( 16'sd 21012) * $signed(input_fmap_25[15:0]) +
	( 16'sd 29649) * $signed(input_fmap_26[15:0]) +
	( 15'sd 9480) * $signed(input_fmap_27[15:0]) +
	( 16'sd 26274) * $signed(input_fmap_28[15:0]) +
	( 16'sd 29636) * $signed(input_fmap_29[15:0]) +
	( 16'sd 31875) * $signed(input_fmap_30[15:0]) +
	( 11'sd 692) * $signed(input_fmap_31[15:0]) +
	( 14'sd 6345) * $signed(input_fmap_32[15:0]) +
	( 15'sd 15064) * $signed(input_fmap_33[15:0]) +
	( 12'sd 1063) * $signed(input_fmap_34[15:0]) +
	( 11'sd 614) * $signed(input_fmap_35[15:0]) +
	( 16'sd 24815) * $signed(input_fmap_36[15:0]) +
	( 15'sd 9862) * $signed(input_fmap_37[15:0]) +
	( 16'sd 24437) * $signed(input_fmap_38[15:0]) +
	( 16'sd 28794) * $signed(input_fmap_39[15:0]) +
	( 16'sd 32339) * $signed(input_fmap_40[15:0]) +
	( 16'sd 22229) * $signed(input_fmap_41[15:0]) +
	( 15'sd 10329) * $signed(input_fmap_42[15:0]) +
	( 16'sd 27550) * $signed(input_fmap_43[15:0]) +
	( 13'sd 3489) * $signed(input_fmap_44[15:0]) +
	( 15'sd 14427) * $signed(input_fmap_45[15:0]) +
	( 13'sd 2225) * $signed(input_fmap_46[15:0]) +
	( 16'sd 20977) * $signed(input_fmap_47[15:0]) +
	( 15'sd 11464) * $signed(input_fmap_48[15:0]) +
	( 14'sd 5301) * $signed(input_fmap_49[15:0]) +
	( 16'sd 26385) * $signed(input_fmap_50[15:0]) +
	( 16'sd 27338) * $signed(input_fmap_51[15:0]) +
	( 15'sd 9838) * $signed(input_fmap_52[15:0]) +
	( 15'sd 10088) * $signed(input_fmap_53[15:0]) +
	( 16'sd 22250) * $signed(input_fmap_54[15:0]) +
	( 16'sd 24700) * $signed(input_fmap_55[15:0]) +
	( 16'sd 26778) * $signed(input_fmap_56[15:0]) +
	( 16'sd 26732) * $signed(input_fmap_57[15:0]) +
	( 14'sd 5598) * $signed(input_fmap_58[15:0]) +
	( 15'sd 15271) * $signed(input_fmap_59[15:0]) +
	( 13'sd 3577) * $signed(input_fmap_60[15:0]) +
	( 16'sd 29482) * $signed(input_fmap_61[15:0]) +
	( 16'sd 26650) * $signed(input_fmap_62[15:0]) +
	( 16'sd 31921) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_40;
assign conv_mac_40 = 
	( 16'sd 22822) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6203) * $signed(input_fmap_1[15:0]) +
	( 16'sd 30467) * $signed(input_fmap_2[15:0]) +
	( 16'sd 26006) * $signed(input_fmap_3[15:0]) +
	( 16'sd 23314) * $signed(input_fmap_4[15:0]) +
	( 16'sd 22034) * $signed(input_fmap_5[15:0]) +
	( 16'sd 32325) * $signed(input_fmap_6[15:0]) +
	( 16'sd 19970) * $signed(input_fmap_7[15:0]) +
	( 14'sd 6043) * $signed(input_fmap_8[15:0]) +
	( 15'sd 12928) * $signed(input_fmap_9[15:0]) +
	( 16'sd 27756) * $signed(input_fmap_10[15:0]) +
	( 15'sd 11388) * $signed(input_fmap_11[15:0]) +
	( 16'sd 32723) * $signed(input_fmap_12[15:0]) +
	( 15'sd 14392) * $signed(input_fmap_13[15:0]) +
	( 12'sd 1240) * $signed(input_fmap_14[15:0]) +
	( 13'sd 2578) * $signed(input_fmap_15[15:0]) +
	( 12'sd 1441) * $signed(input_fmap_16[15:0]) +
	( 16'sd 31834) * $signed(input_fmap_17[15:0]) +
	( 14'sd 4842) * $signed(input_fmap_18[15:0]) +
	( 15'sd 10178) * $signed(input_fmap_19[15:0]) +
	( 15'sd 12888) * $signed(input_fmap_20[15:0]) +
	( 16'sd 29695) * $signed(input_fmap_21[15:0]) +
	( 9'sd 239) * $signed(input_fmap_22[15:0]) +
	( 16'sd 23206) * $signed(input_fmap_23[15:0]) +
	( 16'sd 30308) * $signed(input_fmap_24[15:0]) +
	( 15'sd 9270) * $signed(input_fmap_25[15:0]) +
	( 12'sd 1535) * $signed(input_fmap_26[15:0]) +
	( 15'sd 12777) * $signed(input_fmap_27[15:0]) +
	( 16'sd 30645) * $signed(input_fmap_28[15:0]) +
	( 16'sd 32321) * $signed(input_fmap_29[15:0]) +
	( 15'sd 14952) * $signed(input_fmap_30[15:0]) +
	( 16'sd 22919) * $signed(input_fmap_31[15:0]) +
	( 16'sd 23291) * $signed(input_fmap_32[15:0]) +
	( 16'sd 27165) * $signed(input_fmap_33[15:0]) +
	( 16'sd 24987) * $signed(input_fmap_34[15:0]) +
	( 16'sd 17251) * $signed(input_fmap_35[15:0]) +
	( 16'sd 21678) * $signed(input_fmap_36[15:0]) +
	( 13'sd 3487) * $signed(input_fmap_37[15:0]) +
	( 16'sd 23103) * $signed(input_fmap_38[15:0]) +
	( 16'sd 25178) * $signed(input_fmap_39[15:0]) +
	( 16'sd 32516) * $signed(input_fmap_40[15:0]) +
	( 15'sd 15351) * $signed(input_fmap_41[15:0]) +
	( 16'sd 21184) * $signed(input_fmap_42[15:0]) +
	( 15'sd 11186) * $signed(input_fmap_43[15:0]) +
	( 16'sd 31423) * $signed(input_fmap_44[15:0]) +
	( 11'sd 685) * $signed(input_fmap_45[15:0]) +
	( 16'sd 28487) * $signed(input_fmap_46[15:0]) +
	( 15'sd 9230) * $signed(input_fmap_47[15:0]) +
	( 14'sd 8139) * $signed(input_fmap_48[15:0]) +
	( 14'sd 7569) * $signed(input_fmap_49[15:0]) +
	( 16'sd 24753) * $signed(input_fmap_50[15:0]) +
	( 14'sd 5634) * $signed(input_fmap_51[15:0]) +
	( 16'sd 25069) * $signed(input_fmap_52[15:0]) +
	( 16'sd 25537) * $signed(input_fmap_53[15:0]) +
	( 16'sd 26170) * $signed(input_fmap_54[15:0]) +
	( 15'sd 14251) * $signed(input_fmap_55[15:0]) +
	( 15'sd 11652) * $signed(input_fmap_56[15:0]) +
	( 14'sd 6978) * $signed(input_fmap_57[15:0]) +
	( 15'sd 14412) * $signed(input_fmap_58[15:0]) +
	( 15'sd 9367) * $signed(input_fmap_59[15:0]) +
	( 16'sd 27949) * $signed(input_fmap_60[15:0]) +
	( 13'sd 2369) * $signed(input_fmap_61[15:0]) +
	( 16'sd 24504) * $signed(input_fmap_62[15:0]) +
	( 15'sd 10781) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_41;
assign conv_mac_41 = 
	( 16'sd 29886) * $signed(input_fmap_0[15:0]) +
	( 15'sd 15331) * $signed(input_fmap_1[15:0]) +
	( 12'sd 1050) * $signed(input_fmap_2[15:0]) +
	( 16'sd 29409) * $signed(input_fmap_3[15:0]) +
	( 15'sd 15198) * $signed(input_fmap_4[15:0]) +
	( 14'sd 4308) * $signed(input_fmap_5[15:0]) +
	( 14'sd 8119) * $signed(input_fmap_6[15:0]) +
	( 16'sd 29591) * $signed(input_fmap_7[15:0]) +
	( 16'sd 30535) * $signed(input_fmap_8[15:0]) +
	( 15'sd 10095) * $signed(input_fmap_9[15:0]) +
	( 15'sd 10787) * $signed(input_fmap_10[15:0]) +
	( 16'sd 18679) * $signed(input_fmap_11[15:0]) +
	( 16'sd 24300) * $signed(input_fmap_12[15:0]) +
	( 15'sd 15059) * $signed(input_fmap_13[15:0]) +
	( 16'sd 27664) * $signed(input_fmap_14[15:0]) +
	( 16'sd 25217) * $signed(input_fmap_15[15:0]) +
	( 16'sd 16960) * $signed(input_fmap_16[15:0]) +
	( 11'sd 666) * $signed(input_fmap_17[15:0]) +
	( 15'sd 9234) * $signed(input_fmap_18[15:0]) +
	( 13'sd 3546) * $signed(input_fmap_19[15:0]) +
	( 14'sd 4961) * $signed(input_fmap_20[15:0]) +
	( 16'sd 27273) * $signed(input_fmap_21[15:0]) +
	( 16'sd 18870) * $signed(input_fmap_22[15:0]) +
	( 16'sd 29249) * $signed(input_fmap_23[15:0]) +
	( 15'sd 14936) * $signed(input_fmap_24[15:0]) +
	( 15'sd 11598) * $signed(input_fmap_25[15:0]) +
	( 12'sd 1502) * $signed(input_fmap_26[15:0]) +
	( 16'sd 17208) * $signed(input_fmap_27[15:0]) +
	( 15'sd 16114) * $signed(input_fmap_28[15:0]) +
	( 16'sd 18483) * $signed(input_fmap_29[15:0]) +
	( 16'sd 20500) * $signed(input_fmap_30[15:0]) +
	( 16'sd 26980) * $signed(input_fmap_31[15:0]) +
	( 16'sd 22990) * $signed(input_fmap_32[15:0]) +
	( 16'sd 21346) * $signed(input_fmap_33[15:0]) +
	( 15'sd 15621) * $signed(input_fmap_34[15:0]) +
	( 16'sd 23806) * $signed(input_fmap_35[15:0]) +
	( 14'sd 7017) * $signed(input_fmap_36[15:0]) +
	( 16'sd 28497) * $signed(input_fmap_37[15:0]) +
	( 14'sd 6128) * $signed(input_fmap_38[15:0]) +
	( 15'sd 10136) * $signed(input_fmap_39[15:0]) +
	( 16'sd 20067) * $signed(input_fmap_40[15:0]) +
	( 13'sd 3550) * $signed(input_fmap_41[15:0]) +
	( 15'sd 10986) * $signed(input_fmap_42[15:0]) +
	( 14'sd 6214) * $signed(input_fmap_43[15:0]) +
	( 16'sd 18717) * $signed(input_fmap_44[15:0]) +
	( 15'sd 10426) * $signed(input_fmap_45[15:0]) +
	( 15'sd 11388) * $signed(input_fmap_46[15:0]) +
	( 16'sd 30745) * $signed(input_fmap_47[15:0]) +
	( 15'sd 10499) * $signed(input_fmap_48[15:0]) +
	( 16'sd 18654) * $signed(input_fmap_49[15:0]) +
	( 13'sd 3179) * $signed(input_fmap_50[15:0]) +
	( 14'sd 4754) * $signed(input_fmap_51[15:0]) +
	( 16'sd 27102) * $signed(input_fmap_52[15:0]) +
	( 16'sd 28702) * $signed(input_fmap_53[15:0]) +
	( 16'sd 23003) * $signed(input_fmap_54[15:0]) +
	( 14'sd 5592) * $signed(input_fmap_55[15:0]) +
	( 16'sd 26089) * $signed(input_fmap_56[15:0]) +
	( 16'sd 22774) * $signed(input_fmap_57[15:0]) +
	( 16'sd 32225) * $signed(input_fmap_58[15:0]) +
	( 11'sd 823) * $signed(input_fmap_59[15:0]) +
	( 16'sd 25993) * $signed(input_fmap_60[15:0]) +
	( 15'sd 13509) * $signed(input_fmap_61[15:0]) +
	( 15'sd 9537) * $signed(input_fmap_62[15:0]) +
	( 16'sd 27784) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_42;
assign conv_mac_42 = 
	( 14'sd 4483) * $signed(input_fmap_0[15:0]) +
	( 16'sd 23676) * $signed(input_fmap_1[15:0]) +
	( 16'sd 20421) * $signed(input_fmap_2[15:0]) +
	( 16'sd 28669) * $signed(input_fmap_3[15:0]) +
	( 15'sd 14657) * $signed(input_fmap_4[15:0]) +
	( 15'sd 13195) * $signed(input_fmap_5[15:0]) +
	( 16'sd 29063) * $signed(input_fmap_6[15:0]) +
	( 10'sd 343) * $signed(input_fmap_7[15:0]) +
	( 16'sd 19718) * $signed(input_fmap_8[15:0]) +
	( 13'sd 3933) * $signed(input_fmap_9[15:0]) +
	( 16'sd 32716) * $signed(input_fmap_10[15:0]) +
	( 16'sd 32264) * $signed(input_fmap_11[15:0]) +
	( 15'sd 14109) * $signed(input_fmap_12[15:0]) +
	( 14'sd 4659) * $signed(input_fmap_13[15:0]) +
	( 14'sd 4720) * $signed(input_fmap_14[15:0]) +
	( 15'sd 15818) * $signed(input_fmap_15[15:0]) +
	( 14'sd 4984) * $signed(input_fmap_16[15:0]) +
	( 16'sd 30362) * $signed(input_fmap_17[15:0]) +
	( 16'sd 21279) * $signed(input_fmap_18[15:0]) +
	( 16'sd 25702) * $signed(input_fmap_19[15:0]) +
	( 14'sd 7584) * $signed(input_fmap_20[15:0]) +
	( 16'sd 30342) * $signed(input_fmap_21[15:0]) +
	( 15'sd 14954) * $signed(input_fmap_22[15:0]) +
	( 16'sd 29447) * $signed(input_fmap_23[15:0]) +
	( 16'sd 18292) * $signed(input_fmap_24[15:0]) +
	( 14'sd 8001) * $signed(input_fmap_25[15:0]) +
	( 16'sd 19447) * $signed(input_fmap_26[15:0]) +
	( 16'sd 23992) * $signed(input_fmap_27[15:0]) +
	( 15'sd 11630) * $signed(input_fmap_28[15:0]) +
	( 16'sd 26733) * $signed(input_fmap_29[15:0]) +
	( 15'sd 16108) * $signed(input_fmap_30[15:0]) +
	( 15'sd 15428) * $signed(input_fmap_31[15:0]) +
	( 12'sd 1331) * $signed(input_fmap_32[15:0]) +
	( 16'sd 18636) * $signed(input_fmap_33[15:0]) +
	( 16'sd 21903) * $signed(input_fmap_34[15:0]) +
	( 16'sd 18892) * $signed(input_fmap_35[15:0]) +
	( 16'sd 26498) * $signed(input_fmap_36[15:0]) +
	( 16'sd 28618) * $signed(input_fmap_37[15:0]) +
	( 16'sd 24388) * $signed(input_fmap_38[15:0]) +
	( 16'sd 19479) * $signed(input_fmap_39[15:0]) +
	( 15'sd 14790) * $signed(input_fmap_40[15:0]) +
	( 16'sd 21719) * $signed(input_fmap_41[15:0]) +
	( 16'sd 27409) * $signed(input_fmap_42[15:0]) +
	( 16'sd 31347) * $signed(input_fmap_43[15:0]) +
	( 15'sd 8730) * $signed(input_fmap_44[15:0]) +
	( 16'sd 20950) * $signed(input_fmap_45[15:0]) +
	( 11'sd 979) * $signed(input_fmap_46[15:0]) +
	( 15'sd 9970) * $signed(input_fmap_47[15:0]) +
	( 15'sd 14406) * $signed(input_fmap_48[15:0]) +
	( 16'sd 28218) * $signed(input_fmap_49[15:0]) +
	( 14'sd 6026) * $signed(input_fmap_50[15:0]) +
	( 11'sd 897) * $signed(input_fmap_51[15:0]) +
	( 14'sd 4374) * $signed(input_fmap_52[15:0]) +
	( 14'sd 4550) * $signed(input_fmap_53[15:0]) +
	( 15'sd 11348) * $signed(input_fmap_54[15:0]) +
	( 16'sd 32109) * $signed(input_fmap_55[15:0]) +
	( 16'sd 32194) * $signed(input_fmap_56[15:0]) +
	( 13'sd 3561) * $signed(input_fmap_57[15:0]) +
	( 16'sd 16585) * $signed(input_fmap_58[15:0]) +
	( 15'sd 8938) * $signed(input_fmap_59[15:0]) +
	( 14'sd 4989) * $signed(input_fmap_60[15:0]) +
	( 15'sd 13450) * $signed(input_fmap_61[15:0]) +
	( 15'sd 12768) * $signed(input_fmap_62[15:0]) +
	( 16'sd 22478) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_43;
assign conv_mac_43 = 
	( 15'sd 12452) * $signed(input_fmap_0[15:0]) +
	( 14'sd 4392) * $signed(input_fmap_1[15:0]) +
	( 16'sd 17522) * $signed(input_fmap_2[15:0]) +
	( 16'sd 28186) * $signed(input_fmap_3[15:0]) +
	( 16'sd 30677) * $signed(input_fmap_4[15:0]) +
	( 12'sd 1227) * $signed(input_fmap_5[15:0]) +
	( 15'sd 12658) * $signed(input_fmap_6[15:0]) +
	( 14'sd 4449) * $signed(input_fmap_7[15:0]) +
	( 13'sd 2814) * $signed(input_fmap_8[15:0]) +
	( 13'sd 2363) * $signed(input_fmap_9[15:0]) +
	( 16'sd 18223) * $signed(input_fmap_10[15:0]) +
	( 16'sd 29262) * $signed(input_fmap_11[15:0]) +
	( 15'sd 8511) * $signed(input_fmap_12[15:0]) +
	( 16'sd 25844) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13374) * $signed(input_fmap_14[15:0]) +
	( 16'sd 20714) * $signed(input_fmap_15[15:0]) +
	( 16'sd 17405) * $signed(input_fmap_16[15:0]) +
	( 11'sd 670) * $signed(input_fmap_17[15:0]) +
	( 16'sd 29623) * $signed(input_fmap_18[15:0]) +
	( 16'sd 25307) * $signed(input_fmap_19[15:0]) +
	( 16'sd 22566) * $signed(input_fmap_20[15:0]) +
	( 16'sd 25436) * $signed(input_fmap_21[15:0]) +
	( 10'sd 287) * $signed(input_fmap_22[15:0]) +
	( 16'sd 24491) * $signed(input_fmap_23[15:0]) +
	( 15'sd 13103) * $signed(input_fmap_24[15:0]) +
	( 15'sd 14930) * $signed(input_fmap_25[15:0]) +
	( 16'sd 16530) * $signed(input_fmap_26[15:0]) +
	( 15'sd 16207) * $signed(input_fmap_27[15:0]) +
	( 16'sd 18791) * $signed(input_fmap_28[15:0]) +
	( 16'sd 20265) * $signed(input_fmap_29[15:0]) +
	( 15'sd 16312) * $signed(input_fmap_30[15:0]) +
	( 16'sd 30547) * $signed(input_fmap_31[15:0]) +
	( 16'sd 17501) * $signed(input_fmap_32[15:0]) +
	( 14'sd 6957) * $signed(input_fmap_33[15:0]) +
	( 14'sd 7563) * $signed(input_fmap_34[15:0]) +
	( 16'sd 26257) * $signed(input_fmap_35[15:0]) +
	( 16'sd 24609) * $signed(input_fmap_36[15:0]) +
	( 16'sd 28448) * $signed(input_fmap_37[15:0]) +
	( 16'sd 16945) * $signed(input_fmap_38[15:0]) +
	( 15'sd 8439) * $signed(input_fmap_39[15:0]) +
	( 16'sd 20227) * $signed(input_fmap_40[15:0]) +
	( 16'sd 18698) * $signed(input_fmap_41[15:0]) +
	( 16'sd 19865) * $signed(input_fmap_42[15:0]) +
	( 15'sd 10599) * $signed(input_fmap_43[15:0]) +
	( 15'sd 13974) * $signed(input_fmap_44[15:0]) +
	( 16'sd 30535) * $signed(input_fmap_45[15:0]) +
	( 14'sd 4963) * $signed(input_fmap_46[15:0]) +
	( 14'sd 5840) * $signed(input_fmap_47[15:0]) +
	( 16'sd 25072) * $signed(input_fmap_48[15:0]) +
	( 14'sd 6856) * $signed(input_fmap_49[15:0]) +
	( 14'sd 4407) * $signed(input_fmap_50[15:0]) +
	( 16'sd 23220) * $signed(input_fmap_51[15:0]) +
	( 16'sd 30216) * $signed(input_fmap_52[15:0]) +
	( 16'sd 28279) * $signed(input_fmap_53[15:0]) +
	( 16'sd 16899) * $signed(input_fmap_54[15:0]) +
	( 13'sd 3664) * $signed(input_fmap_55[15:0]) +
	( 16'sd 31257) * $signed(input_fmap_56[15:0]) +
	( 16'sd 16829) * $signed(input_fmap_57[15:0]) +
	( 15'sd 11114) * $signed(input_fmap_58[15:0]) +
	( 14'sd 5147) * $signed(input_fmap_59[15:0]) +
	( 16'sd 26491) * $signed(input_fmap_60[15:0]) +
	( 16'sd 17799) * $signed(input_fmap_61[15:0]) +
	( 16'sd 31442) * $signed(input_fmap_62[15:0]) +
	( 16'sd 23039) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_44;
assign conv_mac_44 = 
	( 16'sd 22739) * $signed(input_fmap_0[15:0]) +
	( 16'sd 23253) * $signed(input_fmap_1[15:0]) +
	( 15'sd 12433) * $signed(input_fmap_2[15:0]) +
	( 16'sd 18192) * $signed(input_fmap_3[15:0]) +
	( 15'sd 13226) * $signed(input_fmap_4[15:0]) +
	( 13'sd 3445) * $signed(input_fmap_5[15:0]) +
	( 14'sd 5058) * $signed(input_fmap_6[15:0]) +
	( 15'sd 13681) * $signed(input_fmap_7[15:0]) +
	( 16'sd 16499) * $signed(input_fmap_8[15:0]) +
	( 16'sd 19235) * $signed(input_fmap_9[15:0]) +
	( 15'sd 12830) * $signed(input_fmap_10[15:0]) +
	( 15'sd 11322) * $signed(input_fmap_11[15:0]) +
	( 16'sd 21078) * $signed(input_fmap_12[15:0]) +
	( 16'sd 31564) * $signed(input_fmap_13[15:0]) +
	( 16'sd 28592) * $signed(input_fmap_14[15:0]) +
	( 16'sd 31922) * $signed(input_fmap_15[15:0]) +
	( 16'sd 17640) * $signed(input_fmap_16[15:0]) +
	( 15'sd 13518) * $signed(input_fmap_17[15:0]) +
	( 15'sd 14284) * $signed(input_fmap_18[15:0]) +
	( 16'sd 22023) * $signed(input_fmap_19[15:0]) +
	( 16'sd 19579) * $signed(input_fmap_20[15:0]) +
	( 15'sd 10301) * $signed(input_fmap_21[15:0]) +
	( 15'sd 11994) * $signed(input_fmap_22[15:0]) +
	( 16'sd 21393) * $signed(input_fmap_23[15:0]) +
	( 15'sd 9218) * $signed(input_fmap_24[15:0]) +
	( 16'sd 30103) * $signed(input_fmap_25[15:0]) +
	( 15'sd 8652) * $signed(input_fmap_26[15:0]) +
	( 15'sd 15171) * $signed(input_fmap_27[15:0]) +
	( 16'sd 24957) * $signed(input_fmap_28[15:0]) +
	( 16'sd 21978) * $signed(input_fmap_29[15:0]) +
	( 15'sd 10188) * $signed(input_fmap_30[15:0]) +
	( 16'sd 31971) * $signed(input_fmap_31[15:0]) +
	( 15'sd 9219) * $signed(input_fmap_32[15:0]) +
	( 16'sd 26754) * $signed(input_fmap_33[15:0]) +
	( 11'sd 977) * $signed(input_fmap_34[15:0]) +
	( 14'sd 4606) * $signed(input_fmap_35[15:0]) +
	( 15'sd 15172) * $signed(input_fmap_36[15:0]) +
	( 16'sd 29818) * $signed(input_fmap_37[15:0]) +
	( 16'sd 25012) * $signed(input_fmap_38[15:0]) +
	( 15'sd 9704) * $signed(input_fmap_39[15:0]) +
	( 16'sd 22070) * $signed(input_fmap_40[15:0]) +
	( 16'sd 31164) * $signed(input_fmap_41[15:0]) +
	( 16'sd 31702) * $signed(input_fmap_42[15:0]) +
	( 16'sd 19354) * $signed(input_fmap_43[15:0]) +
	( 15'sd 13335) * $signed(input_fmap_44[15:0]) +
	( 16'sd 25446) * $signed(input_fmap_45[15:0]) +
	( 16'sd 26013) * $signed(input_fmap_46[15:0]) +
	( 14'sd 7158) * $signed(input_fmap_47[15:0]) +
	( 16'sd 23603) * $signed(input_fmap_48[15:0]) +
	( 11'sd 658) * $signed(input_fmap_49[15:0]) +
	( 14'sd 5259) * $signed(input_fmap_50[15:0]) +
	( 16'sd 20279) * $signed(input_fmap_51[15:0]) +
	( 15'sd 8404) * $signed(input_fmap_52[15:0]) +
	( 16'sd 29903) * $signed(input_fmap_53[15:0]) +
	( 15'sd 8417) * $signed(input_fmap_54[15:0]) +
	( 13'sd 2473) * $signed(input_fmap_55[15:0]) +
	( 15'sd 11144) * $signed(input_fmap_56[15:0]) +
	( 15'sd 15916) * $signed(input_fmap_57[15:0]) +
	( 15'sd 13756) * $signed(input_fmap_58[15:0]) +
	( 16'sd 26522) * $signed(input_fmap_59[15:0]) +
	( 16'sd 24870) * $signed(input_fmap_60[15:0]) +
	( 14'sd 5899) * $signed(input_fmap_61[15:0]) +
	( 12'sd 1039) * $signed(input_fmap_62[15:0]) +
	( 15'sd 15920) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_45;
assign conv_mac_45 = 
	( 12'sd 1827) * $signed(input_fmap_0[15:0]) +
	( 16'sd 16727) * $signed(input_fmap_1[15:0]) +
	( 16'sd 17930) * $signed(input_fmap_2[15:0]) +
	( 16'sd 19401) * $signed(input_fmap_3[15:0]) +
	( 15'sd 10851) * $signed(input_fmap_4[15:0]) +
	( 16'sd 17112) * $signed(input_fmap_5[15:0]) +
	( 16'sd 17945) * $signed(input_fmap_6[15:0]) +
	( 16'sd 27567) * $signed(input_fmap_7[15:0]) +
	( 14'sd 5598) * $signed(input_fmap_8[15:0]) +
	( 14'sd 4894) * $signed(input_fmap_9[15:0]) +
	( 15'sd 14031) * $signed(input_fmap_10[15:0]) +
	( 15'sd 9579) * $signed(input_fmap_11[15:0]) +
	( 15'sd 10471) * $signed(input_fmap_12[15:0]) +
	( 14'sd 5497) * $signed(input_fmap_13[15:0]) +
	( 16'sd 22355) * $signed(input_fmap_14[15:0]) +
	( 16'sd 22057) * $signed(input_fmap_15[15:0]) +
	( 13'sd 3779) * $signed(input_fmap_16[15:0]) +
	( 14'sd 7625) * $signed(input_fmap_17[15:0]) +
	( 14'sd 5104) * $signed(input_fmap_18[15:0]) +
	( 16'sd 22924) * $signed(input_fmap_19[15:0]) +
	( 16'sd 24439) * $signed(input_fmap_20[15:0]) +
	( 16'sd 19304) * $signed(input_fmap_21[15:0]) +
	( 16'sd 29742) * $signed(input_fmap_22[15:0]) +
	( 16'sd 18789) * $signed(input_fmap_23[15:0]) +
	( 16'sd 22480) * $signed(input_fmap_24[15:0]) +
	( 15'sd 11566) * $signed(input_fmap_25[15:0]) +
	( 16'sd 32122) * $signed(input_fmap_26[15:0]) +
	( 15'sd 9918) * $signed(input_fmap_27[15:0]) +
	( 13'sd 3802) * $signed(input_fmap_28[15:0]) +
	( 16'sd 30045) * $signed(input_fmap_29[15:0]) +
	( 15'sd 9155) * $signed(input_fmap_30[15:0]) +
	( 15'sd 11974) * $signed(input_fmap_31[15:0]) +
	( 16'sd 30077) * $signed(input_fmap_32[15:0]) +
	( 14'sd 5722) * $signed(input_fmap_33[15:0]) +
	( 15'sd 11097) * $signed(input_fmap_34[15:0]) +
	( 15'sd 8426) * $signed(input_fmap_35[15:0]) +
	( 15'sd 14656) * $signed(input_fmap_36[15:0]) +
	( 13'sd 2501) * $signed(input_fmap_37[15:0]) +
	( 15'sd 10869) * $signed(input_fmap_38[15:0]) +
	( 15'sd 11599) * $signed(input_fmap_39[15:0]) +
	( 16'sd 23506) * $signed(input_fmap_40[15:0]) +
	( 13'sd 2874) * $signed(input_fmap_41[15:0]) +
	( 15'sd 11330) * $signed(input_fmap_42[15:0]) +
	( 15'sd 8784) * $signed(input_fmap_43[15:0]) +
	( 15'sd 12888) * $signed(input_fmap_44[15:0]) +
	( 14'sd 7650) * $signed(input_fmap_45[15:0]) +
	( 13'sd 2875) * $signed(input_fmap_46[15:0]) +
	( 16'sd 25442) * $signed(input_fmap_47[15:0]) +
	( 16'sd 27241) * $signed(input_fmap_48[15:0]) +
	( 15'sd 11844) * $signed(input_fmap_49[15:0]) +
	( 15'sd 14172) * $signed(input_fmap_50[15:0]) +
	( 16'sd 20932) * $signed(input_fmap_51[15:0]) +
	( 12'sd 1338) * $signed(input_fmap_52[15:0]) +
	( 16'sd 23043) * $signed(input_fmap_53[15:0]) +
	( 16'sd 29759) * $signed(input_fmap_54[15:0]) +
	( 15'sd 11169) * $signed(input_fmap_55[15:0]) +
	( 16'sd 27969) * $signed(input_fmap_56[15:0]) +
	( 15'sd 12173) * $signed(input_fmap_57[15:0]) +
	( 16'sd 31325) * $signed(input_fmap_58[15:0]) +
	( 16'sd 30481) * $signed(input_fmap_59[15:0]) +
	( 15'sd 10198) * $signed(input_fmap_60[15:0]) +
	( 16'sd 16689) * $signed(input_fmap_61[15:0]) +
	( 16'sd 32594) * $signed(input_fmap_62[15:0]) +
	( 16'sd 23825) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_46;
assign conv_mac_46 = 
	( 16'sd 22523) * $signed(input_fmap_0[15:0]) +
	( 15'sd 14231) * $signed(input_fmap_1[15:0]) +
	( 16'sd 26400) * $signed(input_fmap_2[15:0]) +
	( 16'sd 19725) * $signed(input_fmap_3[15:0]) +
	( 16'sd 24265) * $signed(input_fmap_4[15:0]) +
	( 15'sd 14531) * $signed(input_fmap_5[15:0]) +
	( 16'sd 17631) * $signed(input_fmap_6[15:0]) +
	( 14'sd 7130) * $signed(input_fmap_7[15:0]) +
	( 16'sd 30315) * $signed(input_fmap_8[15:0]) +
	( 16'sd 26414) * $signed(input_fmap_9[15:0]) +
	( 15'sd 13244) * $signed(input_fmap_10[15:0]) +
	( 16'sd 28297) * $signed(input_fmap_11[15:0]) +
	( 16'sd 26217) * $signed(input_fmap_12[15:0]) +
	( 10'sd 371) * $signed(input_fmap_13[15:0]) +
	( 15'sd 9806) * $signed(input_fmap_14[15:0]) +
	( 15'sd 9721) * $signed(input_fmap_15[15:0]) +
	( 14'sd 7281) * $signed(input_fmap_16[15:0]) +
	( 16'sd 18692) * $signed(input_fmap_17[15:0]) +
	( 16'sd 25474) * $signed(input_fmap_18[15:0]) +
	( 9'sd 156) * $signed(input_fmap_19[15:0]) +
	( 16'sd 17682) * $signed(input_fmap_20[15:0]) +
	( 16'sd 22868) * $signed(input_fmap_21[15:0]) +
	( 15'sd 13799) * $signed(input_fmap_22[15:0]) +
	( 15'sd 9506) * $signed(input_fmap_23[15:0]) +
	( 16'sd 19281) * $signed(input_fmap_24[15:0]) +
	( 16'sd 23222) * $signed(input_fmap_25[15:0]) +
	( 16'sd 26694) * $signed(input_fmap_26[15:0]) +
	( 16'sd 25884) * $signed(input_fmap_27[15:0]) +
	( 16'sd 26396) * $signed(input_fmap_28[15:0]) +
	( 15'sd 11956) * $signed(input_fmap_29[15:0]) +
	( 16'sd 24846) * $signed(input_fmap_30[15:0]) +
	( 15'sd 13341) * $signed(input_fmap_31[15:0]) +
	( 14'sd 5073) * $signed(input_fmap_32[15:0]) +
	( 16'sd 20096) * $signed(input_fmap_33[15:0]) +
	( 15'sd 9479) * $signed(input_fmap_34[15:0]) +
	( 15'sd 11583) * $signed(input_fmap_35[15:0]) +
	( 14'sd 4812) * $signed(input_fmap_36[15:0]) +
	( 14'sd 7905) * $signed(input_fmap_37[15:0]) +
	( 13'sd 4027) * $signed(input_fmap_38[15:0]) +
	( 14'sd 4925) * $signed(input_fmap_39[15:0]) +
	( 16'sd 32004) * $signed(input_fmap_40[15:0]) +
	( 16'sd 30549) * $signed(input_fmap_41[15:0]) +
	( 16'sd 25429) * $signed(input_fmap_42[15:0]) +
	( 16'sd 18048) * $signed(input_fmap_43[15:0]) +
	( 16'sd 32455) * $signed(input_fmap_44[15:0]) +
	( 13'sd 2596) * $signed(input_fmap_45[15:0]) +
	( 15'sd 11168) * $signed(input_fmap_46[15:0]) +
	( 15'sd 12617) * $signed(input_fmap_47[15:0]) +
	( 13'sd 2546) * $signed(input_fmap_48[15:0]) +
	( 15'sd 9757) * $signed(input_fmap_49[15:0]) +
	( 16'sd 19243) * $signed(input_fmap_50[15:0]) +
	( 16'sd 18579) * $signed(input_fmap_51[15:0]) +
	( 15'sd 13947) * $signed(input_fmap_52[15:0]) +
	( 15'sd 14347) * $signed(input_fmap_53[15:0]) +
	( 12'sd 1986) * $signed(input_fmap_54[15:0]) +
	( 16'sd 23035) * $signed(input_fmap_55[15:0]) +
	( 15'sd 10279) * $signed(input_fmap_56[15:0]) +
	( 14'sd 8149) * $signed(input_fmap_57[15:0]) +
	( 15'sd 15804) * $signed(input_fmap_58[15:0]) +
	( 16'sd 22255) * $signed(input_fmap_59[15:0]) +
	( 13'sd 2840) * $signed(input_fmap_60[15:0]) +
	( 15'sd 15528) * $signed(input_fmap_61[15:0]) +
	( 14'sd 4846) * $signed(input_fmap_62[15:0]) +
	( 16'sd 30749) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_47;
assign conv_mac_47 = 
	( 16'sd 24704) * $signed(input_fmap_0[15:0]) +
	( 15'sd 12488) * $signed(input_fmap_1[15:0]) +
	( 16'sd 30402) * $signed(input_fmap_2[15:0]) +
	( 15'sd 8815) * $signed(input_fmap_3[15:0]) +
	( 14'sd 6444) * $signed(input_fmap_4[15:0]) +
	( 16'sd 26264) * $signed(input_fmap_5[15:0]) +
	( 14'sd 4382) * $signed(input_fmap_6[15:0]) +
	( 15'sd 9489) * $signed(input_fmap_7[15:0]) +
	( 16'sd 27293) * $signed(input_fmap_8[15:0]) +
	( 14'sd 4203) * $signed(input_fmap_9[15:0]) +
	( 14'sd 4753) * $signed(input_fmap_10[15:0]) +
	( 15'sd 14356) * $signed(input_fmap_11[15:0]) +
	( 16'sd 27845) * $signed(input_fmap_12[15:0]) +
	( 12'sd 1871) * $signed(input_fmap_13[15:0]) +
	( 16'sd 29557) * $signed(input_fmap_14[15:0]) +
	( 16'sd 29255) * $signed(input_fmap_15[15:0]) +
	( 16'sd 30566) * $signed(input_fmap_16[15:0]) +
	( 15'sd 12528) * $signed(input_fmap_17[15:0]) +
	( 16'sd 20776) * $signed(input_fmap_18[15:0]) +
	( 12'sd 1288) * $signed(input_fmap_19[15:0]) +
	( 16'sd 26667) * $signed(input_fmap_20[15:0]) +
	( 11'sd 613) * $signed(input_fmap_21[15:0]) +
	( 14'sd 8069) * $signed(input_fmap_22[15:0]) +
	( 14'sd 7204) * $signed(input_fmap_23[15:0]) +
	( 16'sd 17324) * $signed(input_fmap_24[15:0]) +
	( 14'sd 5409) * $signed(input_fmap_25[15:0]) +
	( 14'sd 6605) * $signed(input_fmap_26[15:0]) +
	( 16'sd 20001) * $signed(input_fmap_27[15:0]) +
	( 16'sd 30272) * $signed(input_fmap_28[15:0]) +
	( 16'sd 26532) * $signed(input_fmap_29[15:0]) +
	( 15'sd 9084) * $signed(input_fmap_30[15:0]) +
	( 16'sd 27898) * $signed(input_fmap_31[15:0]) +
	( 15'sd 12251) * $signed(input_fmap_32[15:0]) +
	( 15'sd 8575) * $signed(input_fmap_33[15:0]) +
	( 15'sd 13398) * $signed(input_fmap_34[15:0]) +
	( 16'sd 32056) * $signed(input_fmap_35[15:0]) +
	( 14'sd 6435) * $signed(input_fmap_36[15:0]) +
	( 16'sd 29872) * $signed(input_fmap_37[15:0]) +
	( 15'sd 11445) * $signed(input_fmap_38[15:0]) +
	( 16'sd 31394) * $signed(input_fmap_39[15:0]) +
	( 14'sd 5481) * $signed(input_fmap_40[15:0]) +
	( 15'sd 11220) * $signed(input_fmap_41[15:0]) +
	( 16'sd 23257) * $signed(input_fmap_42[15:0]) +
	( 13'sd 3101) * $signed(input_fmap_43[15:0]) +
	( 15'sd 8498) * $signed(input_fmap_44[15:0]) +
	( 15'sd 13991) * $signed(input_fmap_45[15:0]) +
	( 14'sd 6446) * $signed(input_fmap_46[15:0]) +
	( 15'sd 15027) * $signed(input_fmap_47[15:0]) +
	( 16'sd 30617) * $signed(input_fmap_48[15:0]) +
	( 13'sd 4041) * $signed(input_fmap_49[15:0]) +
	( 15'sd 15105) * $signed(input_fmap_50[15:0]) +
	( 16'sd 28164) * $signed(input_fmap_51[15:0]) +
	( 16'sd 16772) * $signed(input_fmap_52[15:0]) +
	( 13'sd 4066) * $signed(input_fmap_53[15:0]) +
	( 16'sd 31247) * $signed(input_fmap_54[15:0]) +
	( 16'sd 30971) * $signed(input_fmap_55[15:0]) +
	( 16'sd 19505) * $signed(input_fmap_56[15:0]) +
	( 16'sd 18681) * $signed(input_fmap_57[15:0]) +
	( 14'sd 6611) * $signed(input_fmap_58[15:0]) +
	( 15'sd 15230) * $signed(input_fmap_59[15:0]) +
	( 16'sd 18555) * $signed(input_fmap_60[15:0]) +
	( 16'sd 28467) * $signed(input_fmap_61[15:0]) +
	( 15'sd 11631) * $signed(input_fmap_62[15:0]) +
	( 16'sd 29061) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_48;
assign conv_mac_48 = 
	( 16'sd 20717) * $signed(input_fmap_0[15:0]) +
	( 15'sd 8977) * $signed(input_fmap_1[15:0]) +
	( 16'sd 23348) * $signed(input_fmap_2[15:0]) +
	( 9'sd 171) * $signed(input_fmap_3[15:0]) +
	( 16'sd 29769) * $signed(input_fmap_4[15:0]) +
	( 16'sd 28563) * $signed(input_fmap_5[15:0]) +
	( 13'sd 4080) * $signed(input_fmap_6[15:0]) +
	( 15'sd 11298) * $signed(input_fmap_7[15:0]) +
	( 12'sd 1056) * $signed(input_fmap_8[15:0]) +
	( 14'sd 6612) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1191) * $signed(input_fmap_10[15:0]) +
	( 15'sd 12844) * $signed(input_fmap_11[15:0]) +
	( 15'sd 9043) * $signed(input_fmap_12[15:0]) +
	( 16'sd 16791) * $signed(input_fmap_13[15:0]) +
	( 15'sd 11654) * $signed(input_fmap_14[15:0]) +
	( 15'sd 11253) * $signed(input_fmap_15[15:0]) +
	( 16'sd 28533) * $signed(input_fmap_16[15:0]) +
	( 15'sd 12932) * $signed(input_fmap_17[15:0]) +
	( 15'sd 13456) * $signed(input_fmap_18[15:0]) +
	( 15'sd 8643) * $signed(input_fmap_19[15:0]) +
	( 16'sd 32346) * $signed(input_fmap_20[15:0]) +
	( 16'sd 22844) * $signed(input_fmap_21[15:0]) +
	( 14'sd 6650) * $signed(input_fmap_22[15:0]) +
	( 15'sd 10054) * $signed(input_fmap_23[15:0]) +
	( 15'sd 14155) * $signed(input_fmap_24[15:0]) +
	( 16'sd 27602) * $signed(input_fmap_25[15:0]) +
	( 14'sd 7967) * $signed(input_fmap_26[15:0]) +
	( 16'sd 24110) * $signed(input_fmap_27[15:0]) +
	( 16'sd 28699) * $signed(input_fmap_28[15:0]) +
	( 16'sd 20126) * $signed(input_fmap_29[15:0]) +
	( 16'sd 20044) * $signed(input_fmap_30[15:0]) +
	( 16'sd 22638) * $signed(input_fmap_31[15:0]) +
	( 16'sd 32115) * $signed(input_fmap_32[15:0]) +
	( 16'sd 29133) * $signed(input_fmap_33[15:0]) +
	( 16'sd 32143) * $signed(input_fmap_34[15:0]) +
	( 14'sd 4161) * $signed(input_fmap_35[15:0]) +
	( 13'sd 3458) * $signed(input_fmap_36[15:0]) +
	( 12'sd 1345) * $signed(input_fmap_37[15:0]) +
	( 16'sd 17269) * $signed(input_fmap_38[15:0]) +
	( 15'sd 8349) * $signed(input_fmap_39[15:0]) +
	( 16'sd 24785) * $signed(input_fmap_40[15:0]) +
	( 13'sd 2312) * $signed(input_fmap_41[15:0]) +
	( 16'sd 32212) * $signed(input_fmap_42[15:0]) +
	( 10'sd 457) * $signed(input_fmap_43[15:0]) +
	( 16'sd 28793) * $signed(input_fmap_44[15:0]) +
	( 15'sd 13775) * $signed(input_fmap_45[15:0]) +
	( 16'sd 17366) * $signed(input_fmap_46[15:0]) +
	( 16'sd 31910) * $signed(input_fmap_47[15:0]) +
	( 15'sd 11469) * $signed(input_fmap_48[15:0]) +
	( 16'sd 24771) * $signed(input_fmap_49[15:0]) +
	( 16'sd 27065) * $signed(input_fmap_50[15:0]) +
	( 14'sd 7244) * $signed(input_fmap_51[15:0]) +
	( 16'sd 16642) * $signed(input_fmap_52[15:0]) +
	( 16'sd 17803) * $signed(input_fmap_53[15:0]) +
	( 16'sd 28512) * $signed(input_fmap_54[15:0]) +
	( 13'sd 3964) * $signed(input_fmap_55[15:0]) +
	( 16'sd 19267) * $signed(input_fmap_56[15:0]) +
	( 16'sd 26746) * $signed(input_fmap_57[15:0]) +
	( 16'sd 20786) * $signed(input_fmap_58[15:0]) +
	( 15'sd 12090) * $signed(input_fmap_59[15:0]) +
	( 15'sd 10834) * $signed(input_fmap_60[15:0]) +
	( 16'sd 32710) * $signed(input_fmap_61[15:0]) +
	( 12'sd 1856) * $signed(input_fmap_62[15:0]) +
	( 14'sd 5870) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_49;
assign conv_mac_49 = 
	( 16'sd 19496) * $signed(input_fmap_0[15:0]) +
	( 16'sd 23918) * $signed(input_fmap_1[15:0]) +
	( 16'sd 19821) * $signed(input_fmap_2[15:0]) +
	( 16'sd 20837) * $signed(input_fmap_3[15:0]) +
	( 16'sd 32542) * $signed(input_fmap_4[15:0]) +
	( 16'sd 25135) * $signed(input_fmap_5[15:0]) +
	( 16'sd 18935) * $signed(input_fmap_6[15:0]) +
	( 16'sd 30600) * $signed(input_fmap_7[15:0]) +
	( 12'sd 1690) * $signed(input_fmap_8[15:0]) +
	( 16'sd 20417) * $signed(input_fmap_9[15:0]) +
	( 7'sd 47) * $signed(input_fmap_10[15:0]) +
	( 16'sd 17042) * $signed(input_fmap_11[15:0]) +
	( 16'sd 31005) * $signed(input_fmap_12[15:0]) +
	( 16'sd 17522) * $signed(input_fmap_13[15:0]) +
	( 14'sd 7221) * $signed(input_fmap_14[15:0]) +
	( 15'sd 12014) * $signed(input_fmap_15[15:0]) +
	( 15'sd 12828) * $signed(input_fmap_16[15:0]) +
	( 15'sd 9857) * $signed(input_fmap_17[15:0]) +
	( 15'sd 13905) * $signed(input_fmap_18[15:0]) +
	( 15'sd 13638) * $signed(input_fmap_19[15:0]) +
	( 14'sd 6955) * $signed(input_fmap_20[15:0]) +
	( 16'sd 32215) * $signed(input_fmap_21[15:0]) +
	( 15'sd 9184) * $signed(input_fmap_22[15:0]) +
	( 16'sd 32520) * $signed(input_fmap_23[15:0]) +
	( 16'sd 21858) * $signed(input_fmap_24[15:0]) +
	( 15'sd 13904) * $signed(input_fmap_25[15:0]) +
	( 16'sd 29946) * $signed(input_fmap_26[15:0]) +
	( 14'sd 6285) * $signed(input_fmap_27[15:0]) +
	( 15'sd 9471) * $signed(input_fmap_28[15:0]) +
	( 10'sd 435) * $signed(input_fmap_29[15:0]) +
	( 16'sd 18256) * $signed(input_fmap_30[15:0]) +
	( 15'sd 11883) * $signed(input_fmap_31[15:0]) +
	( 14'sd 7132) * $signed(input_fmap_32[15:0]) +
	( 16'sd 28056) * $signed(input_fmap_33[15:0]) +
	( 16'sd 21097) * $signed(input_fmap_34[15:0]) +
	( 13'sd 4092) * $signed(input_fmap_35[15:0]) +
	( 14'sd 8118) * $signed(input_fmap_36[15:0]) +
	( 16'sd 21103) * $signed(input_fmap_37[15:0]) +
	( 15'sd 8989) * $signed(input_fmap_38[15:0]) +
	( 16'sd 16737) * $signed(input_fmap_39[15:0]) +
	( 13'sd 2520) * $signed(input_fmap_40[15:0]) +
	( 16'sd 32175) * $signed(input_fmap_41[15:0]) +
	( 16'sd 23248) * $signed(input_fmap_42[15:0]) +
	( 14'sd 8104) * $signed(input_fmap_43[15:0]) +
	( 16'sd 16793) * $signed(input_fmap_44[15:0]) +
	( 16'sd 27919) * $signed(input_fmap_45[15:0]) +
	( 16'sd 25381) * $signed(input_fmap_46[15:0]) +
	( 14'sd 7815) * $signed(input_fmap_47[15:0]) +
	( 15'sd 15683) * $signed(input_fmap_48[15:0]) +
	( 16'sd 32013) * $signed(input_fmap_49[15:0]) +
	( 14'sd 7916) * $signed(input_fmap_50[15:0]) +
	( 16'sd 20711) * $signed(input_fmap_51[15:0]) +
	( 15'sd 15297) * $signed(input_fmap_52[15:0]) +
	( 14'sd 7854) * $signed(input_fmap_53[15:0]) +
	( 16'sd 29011) * $signed(input_fmap_54[15:0]) +
	( 16'sd 18920) * $signed(input_fmap_55[15:0]) +
	( 10'sd 413) * $signed(input_fmap_56[15:0]) +
	( 16'sd 25432) * $signed(input_fmap_57[15:0]) +
	( 16'sd 22548) * $signed(input_fmap_58[15:0]) +
	( 15'sd 9379) * $signed(input_fmap_59[15:0]) +
	( 16'sd 30940) * $signed(input_fmap_60[15:0]) +
	( 15'sd 13370) * $signed(input_fmap_61[15:0]) +
	( 16'sd 25219) * $signed(input_fmap_62[15:0]) +
	( 15'sd 10238) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_50;
assign conv_mac_50 = 
	( 16'sd 31708) * $signed(input_fmap_0[15:0]) +
	( 16'sd 24202) * $signed(input_fmap_1[15:0]) +
	( 15'sd 9702) * $signed(input_fmap_2[15:0]) +
	( 15'sd 12117) * $signed(input_fmap_3[15:0]) +
	( 13'sd 2701) * $signed(input_fmap_4[15:0]) +
	( 14'sd 7199) * $signed(input_fmap_5[15:0]) +
	( 16'sd 28935) * $signed(input_fmap_6[15:0]) +
	( 9'sd 230) * $signed(input_fmap_7[15:0]) +
	( 16'sd 17958) * $signed(input_fmap_8[15:0]) +
	( 14'sd 6220) * $signed(input_fmap_9[15:0]) +
	( 16'sd 32086) * $signed(input_fmap_10[15:0]) +
	( 12'sd 1136) * $signed(input_fmap_11[15:0]) +
	( 16'sd 29891) * $signed(input_fmap_12[15:0]) +
	( 16'sd 26845) * $signed(input_fmap_13[15:0]) +
	( 15'sd 16371) * $signed(input_fmap_14[15:0]) +
	( 11'sd 1009) * $signed(input_fmap_15[15:0]) +
	( 15'sd 13024) * $signed(input_fmap_16[15:0]) +
	( 16'sd 29683) * $signed(input_fmap_17[15:0]) +
	( 16'sd 17553) * $signed(input_fmap_18[15:0]) +
	( 14'sd 4445) * $signed(input_fmap_19[15:0]) +
	( 14'sd 4613) * $signed(input_fmap_20[15:0]) +
	( 16'sd 24327) * $signed(input_fmap_21[15:0]) +
	( 16'sd 20942) * $signed(input_fmap_22[15:0]) +
	( 15'sd 16149) * $signed(input_fmap_23[15:0]) +
	( 14'sd 6916) * $signed(input_fmap_24[15:0]) +
	( 14'sd 5649) * $signed(input_fmap_25[15:0]) +
	( 16'sd 17238) * $signed(input_fmap_26[15:0]) +
	( 16'sd 27439) * $signed(input_fmap_27[15:0]) +
	( 16'sd 31676) * $signed(input_fmap_28[15:0]) +
	( 15'sd 13832) * $signed(input_fmap_29[15:0]) +
	( 15'sd 9730) * $signed(input_fmap_30[15:0]) +
	( 16'sd 24808) * $signed(input_fmap_31[15:0]) +
	( 15'sd 13441) * $signed(input_fmap_32[15:0]) +
	( 15'sd 8898) * $signed(input_fmap_33[15:0]) +
	( 15'sd 9934) * $signed(input_fmap_34[15:0]) +
	( 16'sd 17397) * $signed(input_fmap_35[15:0]) +
	( 16'sd 32413) * $signed(input_fmap_36[15:0]) +
	( 16'sd 23800) * $signed(input_fmap_37[15:0]) +
	( 15'sd 13909) * $signed(input_fmap_38[15:0]) +
	( 16'sd 31874) * $signed(input_fmap_39[15:0]) +
	( 15'sd 14214) * $signed(input_fmap_40[15:0]) +
	( 15'sd 10520) * $signed(input_fmap_41[15:0]) +
	( 16'sd 25478) * $signed(input_fmap_42[15:0]) +
	( 15'sd 14726) * $signed(input_fmap_43[15:0]) +
	( 16'sd 23228) * $signed(input_fmap_44[15:0]) +
	( 15'sd 15948) * $signed(input_fmap_45[15:0]) +
	( 16'sd 30180) * $signed(input_fmap_46[15:0]) +
	( 15'sd 15358) * $signed(input_fmap_47[15:0]) +
	( 16'sd 27977) * $signed(input_fmap_48[15:0]) +
	( 15'sd 9127) * $signed(input_fmap_49[15:0]) +
	( 16'sd 23735) * $signed(input_fmap_50[15:0]) +
	( 15'sd 12357) * $signed(input_fmap_51[15:0]) +
	( 16'sd 22012) * $signed(input_fmap_52[15:0]) +
	( 16'sd 22847) * $signed(input_fmap_53[15:0]) +
	( 15'sd 14513) * $signed(input_fmap_54[15:0]) +
	( 16'sd 24397) * $signed(input_fmap_55[15:0]) +
	( 16'sd 30513) * $signed(input_fmap_56[15:0]) +
	( 16'sd 21956) * $signed(input_fmap_57[15:0]) +
	( 16'sd 30672) * $signed(input_fmap_58[15:0]) +
	( 13'sd 2404) * $signed(input_fmap_59[15:0]) +
	( 16'sd 18020) * $signed(input_fmap_60[15:0]) +
	( 14'sd 6393) * $signed(input_fmap_61[15:0]) +
	( 16'sd 18959) * $signed(input_fmap_62[15:0]) +
	( 15'sd 15757) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_51;
assign conv_mac_51 = 
	( 16'sd 21302) * $signed(input_fmap_0[15:0]) +
	( 10'sd 391) * $signed(input_fmap_1[15:0]) +
	( 16'sd 31625) * $signed(input_fmap_2[15:0]) +
	( 16'sd 21128) * $signed(input_fmap_3[15:0]) +
	( 15'sd 11027) * $signed(input_fmap_4[15:0]) +
	( 14'sd 7271) * $signed(input_fmap_5[15:0]) +
	( 16'sd 18036) * $signed(input_fmap_6[15:0]) +
	( 15'sd 10686) * $signed(input_fmap_7[15:0]) +
	( 16'sd 20634) * $signed(input_fmap_8[15:0]) +
	( 14'sd 8018) * $signed(input_fmap_9[15:0]) +
	( 15'sd 12224) * $signed(input_fmap_10[15:0]) +
	( 15'sd 11630) * $signed(input_fmap_11[15:0]) +
	( 3'sd 3) * $signed(input_fmap_12[15:0]) +
	( 15'sd 16203) * $signed(input_fmap_13[15:0]) +
	( 12'sd 1888) * $signed(input_fmap_14[15:0]) +
	( 16'sd 21775) * $signed(input_fmap_15[15:0]) +
	( 12'sd 1547) * $signed(input_fmap_16[15:0]) +
	( 15'sd 15523) * $signed(input_fmap_17[15:0]) +
	( 16'sd 31400) * $signed(input_fmap_18[15:0]) +
	( 16'sd 22559) * $signed(input_fmap_19[15:0]) +
	( 16'sd 28036) * $signed(input_fmap_20[15:0]) +
	( 16'sd 31300) * $signed(input_fmap_21[15:0]) +
	( 16'sd 20671) * $signed(input_fmap_22[15:0]) +
	( 16'sd 18536) * $signed(input_fmap_23[15:0]) +
	( 15'sd 10576) * $signed(input_fmap_24[15:0]) +
	( 15'sd 11029) * $signed(input_fmap_25[15:0]) +
	( 15'sd 13825) * $signed(input_fmap_26[15:0]) +
	( 16'sd 21295) * $signed(input_fmap_27[15:0]) +
	( 12'sd 1570) * $signed(input_fmap_28[15:0]) +
	( 14'sd 5237) * $signed(input_fmap_29[15:0]) +
	( 16'sd 20323) * $signed(input_fmap_30[15:0]) +
	( 9'sd 226) * $signed(input_fmap_31[15:0]) +
	( 16'sd 21704) * $signed(input_fmap_32[15:0]) +
	( 14'sd 7956) * $signed(input_fmap_33[15:0]) +
	( 13'sd 2750) * $signed(input_fmap_34[15:0]) +
	( 15'sd 12097) * $signed(input_fmap_35[15:0]) +
	( 16'sd 31891) * $signed(input_fmap_36[15:0]) +
	( 15'sd 13931) * $signed(input_fmap_37[15:0]) +
	( 15'sd 11948) * $signed(input_fmap_38[15:0]) +
	( 14'sd 4201) * $signed(input_fmap_39[15:0]) +
	( 15'sd 9829) * $signed(input_fmap_40[15:0]) +
	( 16'sd 30871) * $signed(input_fmap_41[15:0]) +
	( 16'sd 18560) * $signed(input_fmap_42[15:0]) +
	( 14'sd 7442) * $signed(input_fmap_43[15:0]) +
	( 16'sd 24822) * $signed(input_fmap_44[15:0]) +
	( 16'sd 27455) * $signed(input_fmap_45[15:0]) +
	( 16'sd 23901) * $signed(input_fmap_46[15:0]) +
	( 16'sd 31598) * $signed(input_fmap_47[15:0]) +
	( 13'sd 4091) * $signed(input_fmap_48[15:0]) +
	( 15'sd 14698) * $signed(input_fmap_49[15:0]) +
	( 16'sd 24930) * $signed(input_fmap_50[15:0]) +
	( 15'sd 13998) * $signed(input_fmap_51[15:0]) +
	( 15'sd 15778) * $signed(input_fmap_52[15:0]) +
	( 15'sd 14701) * $signed(input_fmap_53[15:0]) +
	( 16'sd 31290) * $signed(input_fmap_54[15:0]) +
	( 16'sd 30881) * $signed(input_fmap_55[15:0]) +
	( 16'sd 22806) * $signed(input_fmap_56[15:0]) +
	( 15'sd 8578) * $signed(input_fmap_57[15:0]) +
	( 13'sd 2726) * $signed(input_fmap_58[15:0]) +
	( 14'sd 6352) * $signed(input_fmap_59[15:0]) +
	( 16'sd 18780) * $signed(input_fmap_60[15:0]) +
	( 16'sd 27211) * $signed(input_fmap_61[15:0]) +
	( 16'sd 22942) * $signed(input_fmap_62[15:0]) +
	( 16'sd 29099) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_52;
assign conv_mac_52 = 
	( 14'sd 6866) * $signed(input_fmap_0[15:0]) +
	( 15'sd 8947) * $signed(input_fmap_1[15:0]) +
	( 15'sd 10609) * $signed(input_fmap_2[15:0]) +
	( 16'sd 21443) * $signed(input_fmap_3[15:0]) +
	( 15'sd 13355) * $signed(input_fmap_4[15:0]) +
	( 14'sd 4943) * $signed(input_fmap_5[15:0]) +
	( 16'sd 22515) * $signed(input_fmap_6[15:0]) +
	( 16'sd 28513) * $signed(input_fmap_7[15:0]) +
	( 13'sd 2711) * $signed(input_fmap_8[15:0]) +
	( 16'sd 28130) * $signed(input_fmap_9[15:0]) +
	( 16'sd 21395) * $signed(input_fmap_10[15:0]) +
	( 16'sd 29637) * $signed(input_fmap_11[15:0]) +
	( 15'sd 11136) * $signed(input_fmap_12[15:0]) +
	( 12'sd 1180) * $signed(input_fmap_13[15:0]) +
	( 15'sd 12935) * $signed(input_fmap_14[15:0]) +
	( 12'sd 1919) * $signed(input_fmap_15[15:0]) +
	( 16'sd 24045) * $signed(input_fmap_16[15:0]) +
	( 14'sd 5499) * $signed(input_fmap_17[15:0]) +
	( 14'sd 7217) * $signed(input_fmap_18[15:0]) +
	( 16'sd 24408) * $signed(input_fmap_19[15:0]) +
	( 16'sd 19675) * $signed(input_fmap_20[15:0]) +
	( 16'sd 29293) * $signed(input_fmap_21[15:0]) +
	( 13'sd 2651) * $signed(input_fmap_22[15:0]) +
	( 15'sd 12251) * $signed(input_fmap_23[15:0]) +
	( 15'sd 8701) * $signed(input_fmap_24[15:0]) +
	( 16'sd 31807) * $signed(input_fmap_25[15:0]) +
	( 15'sd 12403) * $signed(input_fmap_26[15:0]) +
	( 14'sd 7423) * $signed(input_fmap_27[15:0]) +
	( 16'sd 18497) * $signed(input_fmap_28[15:0]) +
	( 15'sd 10114) * $signed(input_fmap_29[15:0]) +
	( 12'sd 1341) * $signed(input_fmap_30[15:0]) +
	( 16'sd 31281) * $signed(input_fmap_31[15:0]) +
	( 16'sd 28837) * $signed(input_fmap_32[15:0]) +
	( 16'sd 22867) * $signed(input_fmap_33[15:0]) +
	( 16'sd 22060) * $signed(input_fmap_34[15:0]) +
	( 14'sd 5271) * $signed(input_fmap_35[15:0]) +
	( 16'sd 32359) * $signed(input_fmap_36[15:0]) +
	( 16'sd 26908) * $signed(input_fmap_37[15:0]) +
	( 16'sd 22480) * $signed(input_fmap_38[15:0]) +
	( 16'sd 31392) * $signed(input_fmap_39[15:0]) +
	( 13'sd 3069) * $signed(input_fmap_40[15:0]) +
	( 16'sd 27138) * $signed(input_fmap_41[15:0]) +
	( 14'sd 4500) * $signed(input_fmap_42[15:0]) +
	( 14'sd 5026) * $signed(input_fmap_43[15:0]) +
	( 16'sd 25562) * $signed(input_fmap_44[15:0]) +
	( 15'sd 10373) * $signed(input_fmap_45[15:0]) +
	( 15'sd 14141) * $signed(input_fmap_46[15:0]) +
	( 14'sd 6508) * $signed(input_fmap_47[15:0]) +
	( 16'sd 21397) * $signed(input_fmap_48[15:0]) +
	( 12'sd 1788) * $signed(input_fmap_49[15:0]) +
	( 12'sd 1461) * $signed(input_fmap_50[15:0]) +
	( 16'sd 17563) * $signed(input_fmap_51[15:0]) +
	( 15'sd 15557) * $signed(input_fmap_52[15:0]) +
	( 16'sd 18395) * $signed(input_fmap_53[15:0]) +
	( 14'sd 4608) * $signed(input_fmap_54[15:0]) +
	( 16'sd 21134) * $signed(input_fmap_55[15:0]) +
	( 16'sd 31990) * $signed(input_fmap_56[15:0]) +
	( 16'sd 31586) * $signed(input_fmap_57[15:0]) +
	( 14'sd 5505) * $signed(input_fmap_58[15:0]) +
	( 16'sd 24362) * $signed(input_fmap_59[15:0]) +
	( 14'sd 4899) * $signed(input_fmap_60[15:0]) +
	( 16'sd 17816) * $signed(input_fmap_61[15:0]) +
	( 15'sd 11956) * $signed(input_fmap_62[15:0]) +
	( 16'sd 17602) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_53;
assign conv_mac_53 = 
	( 15'sd 11765) * $signed(input_fmap_0[15:0]) +
	( 15'sd 9292) * $signed(input_fmap_1[15:0]) +
	( 15'sd 11573) * $signed(input_fmap_2[15:0]) +
	( 16'sd 18033) * $signed(input_fmap_3[15:0]) +
	( 16'sd 26443) * $signed(input_fmap_4[15:0]) +
	( 16'sd 32294) * $signed(input_fmap_5[15:0]) +
	( 15'sd 10459) * $signed(input_fmap_6[15:0]) +
	( 16'sd 18266) * $signed(input_fmap_7[15:0]) +
	( 16'sd 22597) * $signed(input_fmap_8[15:0]) +
	( 16'sd 31357) * $signed(input_fmap_9[15:0]) +
	( 16'sd 28305) * $signed(input_fmap_10[15:0]) +
	( 13'sd 3234) * $signed(input_fmap_11[15:0]) +
	( 13'sd 2985) * $signed(input_fmap_12[15:0]) +
	( 15'sd 12704) * $signed(input_fmap_13[15:0]) +
	( 16'sd 31726) * $signed(input_fmap_14[15:0]) +
	( 14'sd 4553) * $signed(input_fmap_15[15:0]) +
	( 15'sd 14603) * $signed(input_fmap_16[15:0]) +
	( 15'sd 8666) * $signed(input_fmap_17[15:0]) +
	( 14'sd 5585) * $signed(input_fmap_18[15:0]) +
	( 11'sd 531) * $signed(input_fmap_19[15:0]) +
	( 16'sd 17856) * $signed(input_fmap_20[15:0]) +
	( 15'sd 13903) * $signed(input_fmap_21[15:0]) +
	( 14'sd 4597) * $signed(input_fmap_22[15:0]) +
	( 16'sd 23423) * $signed(input_fmap_23[15:0]) +
	( 16'sd 26333) * $signed(input_fmap_24[15:0]) +
	( 15'sd 12118) * $signed(input_fmap_25[15:0]) +
	( 16'sd 24121) * $signed(input_fmap_26[15:0]) +
	( 16'sd 23988) * $signed(input_fmap_27[15:0]) +
	( 11'sd 696) * $signed(input_fmap_28[15:0]) +
	( 16'sd 27663) * $signed(input_fmap_29[15:0]) +
	( 16'sd 24952) * $signed(input_fmap_30[15:0]) +
	( 16'sd 19855) * $signed(input_fmap_31[15:0]) +
	( 16'sd 18814) * $signed(input_fmap_32[15:0]) +
	( 14'sd 5541) * $signed(input_fmap_33[15:0]) +
	( 13'sd 2714) * $signed(input_fmap_34[15:0]) +
	( 16'sd 27070) * $signed(input_fmap_35[15:0]) +
	( 15'sd 13175) * $signed(input_fmap_36[15:0]) +
	( 16'sd 18656) * $signed(input_fmap_37[15:0]) +
	( 15'sd 15145) * $signed(input_fmap_38[15:0]) +
	( 13'sd 3876) * $signed(input_fmap_39[15:0]) +
	( 13'sd 3500) * $signed(input_fmap_40[15:0]) +
	( 14'sd 4819) * $signed(input_fmap_41[15:0]) +
	( 14'sd 4171) * $signed(input_fmap_42[15:0]) +
	( 16'sd 31429) * $signed(input_fmap_43[15:0]) +
	( 16'sd 21645) * $signed(input_fmap_44[15:0]) +
	( 14'sd 6740) * $signed(input_fmap_45[15:0]) +
	( 16'sd 31839) * $signed(input_fmap_46[15:0]) +
	( 15'sd 11235) * $signed(input_fmap_47[15:0]) +
	( 16'sd 27890) * $signed(input_fmap_48[15:0]) +
	( 16'sd 17931) * $signed(input_fmap_49[15:0]) +
	( 16'sd 16791) * $signed(input_fmap_50[15:0]) +
	( 15'sd 16114) * $signed(input_fmap_51[15:0]) +
	( 16'sd 26904) * $signed(input_fmap_52[15:0]) +
	( 14'sd 4281) * $signed(input_fmap_53[15:0]) +
	( 8'sd 120) * $signed(input_fmap_54[15:0]) +
	( 16'sd 30503) * $signed(input_fmap_55[15:0]) +
	( 11'sd 982) * $signed(input_fmap_56[15:0]) +
	( 16'sd 30238) * $signed(input_fmap_57[15:0]) +
	( 14'sd 7555) * $signed(input_fmap_58[15:0]) +
	( 16'sd 32592) * $signed(input_fmap_59[15:0]) +
	( 16'sd 24032) * $signed(input_fmap_60[15:0]) +
	( 15'sd 14309) * $signed(input_fmap_61[15:0]) +
	( 16'sd 16959) * $signed(input_fmap_62[15:0]) +
	( 16'sd 19036) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_54;
assign conv_mac_54 = 
	( 16'sd 29558) * $signed(input_fmap_0[15:0]) +
	( 13'sd 3487) * $signed(input_fmap_1[15:0]) +
	( 13'sd 3488) * $signed(input_fmap_2[15:0]) +
	( 15'sd 10899) * $signed(input_fmap_3[15:0]) +
	( 16'sd 28176) * $signed(input_fmap_4[15:0]) +
	( 15'sd 10150) * $signed(input_fmap_5[15:0]) +
	( 16'sd 17616) * $signed(input_fmap_6[15:0]) +
	( 16'sd 26008) * $signed(input_fmap_7[15:0]) +
	( 16'sd 18258) * $signed(input_fmap_8[15:0]) +
	( 15'sd 15952) * $signed(input_fmap_9[15:0]) +
	( 16'sd 23512) * $signed(input_fmap_10[15:0]) +
	( 16'sd 32543) * $signed(input_fmap_11[15:0]) +
	( 15'sd 11226) * $signed(input_fmap_12[15:0]) +
	( 14'sd 7505) * $signed(input_fmap_13[15:0]) +
	( 15'sd 16227) * $signed(input_fmap_14[15:0]) +
	( 14'sd 5569) * $signed(input_fmap_15[15:0]) +
	( 16'sd 30121) * $signed(input_fmap_16[15:0]) +
	( 15'sd 10818) * $signed(input_fmap_17[15:0]) +
	( 16'sd 26535) * $signed(input_fmap_18[15:0]) +
	( 15'sd 12662) * $signed(input_fmap_19[15:0]) +
	( 15'sd 11739) * $signed(input_fmap_20[15:0]) +
	( 14'sd 4947) * $signed(input_fmap_21[15:0]) +
	( 15'sd 13364) * $signed(input_fmap_22[15:0]) +
	( 16'sd 29513) * $signed(input_fmap_23[15:0]) +
	( 15'sd 14890) * $signed(input_fmap_24[15:0]) +
	( 16'sd 18188) * $signed(input_fmap_25[15:0]) +
	( 16'sd 19247) * $signed(input_fmap_26[15:0]) +
	( 16'sd 22635) * $signed(input_fmap_27[15:0]) +
	( 15'sd 10784) * $signed(input_fmap_28[15:0]) +
	( 15'sd 11858) * $signed(input_fmap_29[15:0]) +
	( 16'sd 17525) * $signed(input_fmap_30[15:0]) +
	( 14'sd 6216) * $signed(input_fmap_31[15:0]) +
	( 16'sd 32628) * $signed(input_fmap_32[15:0]) +
	( 16'sd 25166) * $signed(input_fmap_33[15:0]) +
	( 16'sd 23703) * $signed(input_fmap_34[15:0]) +
	( 16'sd 20440) * $signed(input_fmap_35[15:0]) +
	( 12'sd 1835) * $signed(input_fmap_36[15:0]) +
	( 15'sd 15906) * $signed(input_fmap_37[15:0]) +
	( 16'sd 29591) * $signed(input_fmap_38[15:0]) +
	( 14'sd 7800) * $signed(input_fmap_39[15:0]) +
	( 15'sd 12435) * $signed(input_fmap_40[15:0]) +
	( 16'sd 24163) * $signed(input_fmap_41[15:0]) +
	( 15'sd 8369) * $signed(input_fmap_42[15:0]) +
	( 15'sd 16178) * $signed(input_fmap_43[15:0]) +
	( 13'sd 3552) * $signed(input_fmap_44[15:0]) +
	( 16'sd 25386) * $signed(input_fmap_45[15:0]) +
	( 12'sd 1170) * $signed(input_fmap_46[15:0]) +
	( 16'sd 20379) * $signed(input_fmap_47[15:0]) +
	( 15'sd 15035) * $signed(input_fmap_48[15:0]) +
	( 14'sd 6821) * $signed(input_fmap_49[15:0]) +
	( 12'sd 1890) * $signed(input_fmap_50[15:0]) +
	( 14'sd 7767) * $signed(input_fmap_51[15:0]) +
	( 16'sd 23490) * $signed(input_fmap_52[15:0]) +
	( 16'sd 25864) * $signed(input_fmap_53[15:0]) +
	( 14'sd 6049) * $signed(input_fmap_54[15:0]) +
	( 12'sd 1923) * $signed(input_fmap_55[15:0]) +
	( 16'sd 21799) * $signed(input_fmap_56[15:0]) +
	( 15'sd 11419) * $signed(input_fmap_57[15:0]) +
	( 16'sd 24172) * $signed(input_fmap_58[15:0]) +
	( 16'sd 20699) * $signed(input_fmap_59[15:0]) +
	( 16'sd 30476) * $signed(input_fmap_60[15:0]) +
	( 16'sd 22086) * $signed(input_fmap_61[15:0]) +
	( 14'sd 4149) * $signed(input_fmap_62[15:0]) +
	( 16'sd 22860) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_55;
assign conv_mac_55 = 
	( 12'sd 1716) * $signed(input_fmap_0[15:0]) +
	( 16'sd 16979) * $signed(input_fmap_1[15:0]) +
	( 15'sd 9407) * $signed(input_fmap_2[15:0]) +
	( 15'sd 13840) * $signed(input_fmap_3[15:0]) +
	( 13'sd 2661) * $signed(input_fmap_4[15:0]) +
	( 16'sd 28325) * $signed(input_fmap_5[15:0]) +
	( 7'sd 54) * $signed(input_fmap_6[15:0]) +
	( 15'sd 11118) * $signed(input_fmap_7[15:0]) +
	( 16'sd 25375) * $signed(input_fmap_8[15:0]) +
	( 16'sd 24440) * $signed(input_fmap_9[15:0]) +
	( 16'sd 25301) * $signed(input_fmap_10[15:0]) +
	( 16'sd 27284) * $signed(input_fmap_11[15:0]) +
	( 16'sd 17318) * $signed(input_fmap_12[15:0]) +
	( 16'sd 31527) * $signed(input_fmap_13[15:0]) +
	( 16'sd 29423) * $signed(input_fmap_14[15:0]) +
	( 16'sd 31391) * $signed(input_fmap_15[15:0]) +
	( 16'sd 29668) * $signed(input_fmap_16[15:0]) +
	( 16'sd 19110) * $signed(input_fmap_17[15:0]) +
	( 13'sd 3254) * $signed(input_fmap_18[15:0]) +
	( 15'sd 9689) * $signed(input_fmap_19[15:0]) +
	( 15'sd 13444) * $signed(input_fmap_20[15:0]) +
	( 15'sd 12184) * $signed(input_fmap_21[15:0]) +
	( 15'sd 13510) * $signed(input_fmap_22[15:0]) +
	( 15'sd 15781) * $signed(input_fmap_23[15:0]) +
	( 12'sd 1619) * $signed(input_fmap_24[15:0]) +
	( 16'sd 29235) * $signed(input_fmap_25[15:0]) +
	( 14'sd 5197) * $signed(input_fmap_26[15:0]) +
	( 16'sd 31437) * $signed(input_fmap_27[15:0]) +
	( 16'sd 29669) * $signed(input_fmap_28[15:0]) +
	( 15'sd 8768) * $signed(input_fmap_29[15:0]) +
	( 15'sd 14709) * $signed(input_fmap_30[15:0]) +
	( 16'sd 23009) * $signed(input_fmap_31[15:0]) +
	( 15'sd 12403) * $signed(input_fmap_32[15:0]) +
	( 16'sd 19500) * $signed(input_fmap_33[15:0]) +
	( 14'sd 5222) * $signed(input_fmap_34[15:0]) +
	( 16'sd 28944) * $signed(input_fmap_35[15:0]) +
	( 16'sd 22225) * $signed(input_fmap_36[15:0]) +
	( 16'sd 29869) * $signed(input_fmap_37[15:0]) +
	( 16'sd 25548) * $signed(input_fmap_38[15:0]) +
	( 15'sd 10479) * $signed(input_fmap_39[15:0]) +
	( 16'sd 26195) * $signed(input_fmap_40[15:0]) +
	( 15'sd 11684) * $signed(input_fmap_41[15:0]) +
	( 16'sd 18840) * $signed(input_fmap_42[15:0]) +
	( 13'sd 2239) * $signed(input_fmap_43[15:0]) +
	( 16'sd 30123) * $signed(input_fmap_44[15:0]) +
	( 16'sd 30352) * $signed(input_fmap_45[15:0]) +
	( 15'sd 11990) * $signed(input_fmap_46[15:0]) +
	( 16'sd 16913) * $signed(input_fmap_47[15:0]) +
	( 16'sd 30075) * $signed(input_fmap_48[15:0]) +
	( 16'sd 29361) * $signed(input_fmap_49[15:0]) +
	( 15'sd 14652) * $signed(input_fmap_50[15:0]) +
	( 12'sd 1760) * $signed(input_fmap_51[15:0]) +
	( 13'sd 3054) * $signed(input_fmap_52[15:0]) +
	( 15'sd 9071) * $signed(input_fmap_53[15:0]) +
	( 16'sd 26574) * $signed(input_fmap_54[15:0]) +
	( 16'sd 25365) * $signed(input_fmap_55[15:0]) +
	( 16'sd 26027) * $signed(input_fmap_56[15:0]) +
	( 16'sd 32393) * $signed(input_fmap_57[15:0]) +
	( 13'sd 3442) * $signed(input_fmap_58[15:0]) +
	( 15'sd 12188) * $signed(input_fmap_59[15:0]) +
	( 16'sd 22136) * $signed(input_fmap_60[15:0]) +
	( 15'sd 10752) * $signed(input_fmap_61[15:0]) +
	( 14'sd 6791) * $signed(input_fmap_62[15:0]) +
	( 16'sd 27925) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_56;
assign conv_mac_56 = 
	( 13'sd 2266) * $signed(input_fmap_0[15:0]) +
	( 16'sd 25716) * $signed(input_fmap_1[15:0]) +
	( 16'sd 22113) * $signed(input_fmap_2[15:0]) +
	( 15'sd 10762) * $signed(input_fmap_3[15:0]) +
	( 16'sd 31225) * $signed(input_fmap_4[15:0]) +
	( 16'sd 22501) * $signed(input_fmap_5[15:0]) +
	( 16'sd 28624) * $signed(input_fmap_6[15:0]) +
	( 16'sd 19942) * $signed(input_fmap_7[15:0]) +
	( 15'sd 15161) * $signed(input_fmap_8[15:0]) +
	( 16'sd 30633) * $signed(input_fmap_9[15:0]) +
	( 13'sd 3459) * $signed(input_fmap_10[15:0]) +
	( 15'sd 16256) * $signed(input_fmap_11[15:0]) +
	( 15'sd 13404) * $signed(input_fmap_12[15:0]) +
	( 16'sd 24842) * $signed(input_fmap_13[15:0]) +
	( 16'sd 19676) * $signed(input_fmap_14[15:0]) +
	( 16'sd 23876) * $signed(input_fmap_15[15:0]) +
	( 16'sd 31653) * $signed(input_fmap_16[15:0]) +
	( 15'sd 14471) * $signed(input_fmap_17[15:0]) +
	( 13'sd 2886) * $signed(input_fmap_18[15:0]) +
	( 16'sd 25578) * $signed(input_fmap_19[15:0]) +
	( 16'sd 18601) * $signed(input_fmap_20[15:0]) +
	( 16'sd 27600) * $signed(input_fmap_21[15:0]) +
	( 14'sd 5369) * $signed(input_fmap_22[15:0]) +
	( 16'sd 28146) * $signed(input_fmap_23[15:0]) +
	( 15'sd 12605) * $signed(input_fmap_24[15:0]) +
	( 15'sd 10199) * $signed(input_fmap_25[15:0]) +
	( 16'sd 27168) * $signed(input_fmap_26[15:0]) +
	( 16'sd 20553) * $signed(input_fmap_27[15:0]) +
	( 12'sd 1682) * $signed(input_fmap_28[15:0]) +
	( 16'sd 26342) * $signed(input_fmap_29[15:0]) +
	( 14'sd 4260) * $signed(input_fmap_30[15:0]) +
	( 16'sd 25567) * $signed(input_fmap_31[15:0]) +
	( 16'sd 26155) * $signed(input_fmap_32[15:0]) +
	( 12'sd 1675) * $signed(input_fmap_33[15:0]) +
	( 16'sd 19622) * $signed(input_fmap_34[15:0]) +
	( 15'sd 12435) * $signed(input_fmap_35[15:0]) +
	( 14'sd 6929) * $signed(input_fmap_36[15:0]) +
	( 16'sd 26263) * $signed(input_fmap_37[15:0]) +
	( 16'sd 30112) * $signed(input_fmap_38[15:0]) +
	( 16'sd 23383) * $signed(input_fmap_39[15:0]) +
	( 16'sd 26915) * $signed(input_fmap_40[15:0]) +
	( 16'sd 23213) * $signed(input_fmap_41[15:0]) +
	( 16'sd 23250) * $signed(input_fmap_42[15:0]) +
	( 12'sd 1025) * $signed(input_fmap_43[15:0]) +
	( 16'sd 31494) * $signed(input_fmap_44[15:0]) +
	( 16'sd 16536) * $signed(input_fmap_45[15:0]) +
	( 16'sd 21270) * $signed(input_fmap_46[15:0]) +
	( 15'sd 15603) * $signed(input_fmap_47[15:0]) +
	( 16'sd 20122) * $signed(input_fmap_48[15:0]) +
	( 16'sd 21844) * $signed(input_fmap_49[15:0]) +
	( 16'sd 27645) * $signed(input_fmap_50[15:0]) +
	( 15'sd 12645) * $signed(input_fmap_51[15:0]) +
	( 14'sd 8057) * $signed(input_fmap_52[15:0]) +
	( 14'sd 4135) * $signed(input_fmap_53[15:0]) +
	( 14'sd 5861) * $signed(input_fmap_54[15:0]) +
	( 15'sd 12005) * $signed(input_fmap_55[15:0]) +
	( 16'sd 20755) * $signed(input_fmap_56[15:0]) +
	( 16'sd 20817) * $signed(input_fmap_57[15:0]) +
	( 16'sd 17934) * $signed(input_fmap_58[15:0]) +
	( 16'sd 25009) * $signed(input_fmap_59[15:0]) +
	( 16'sd 30772) * $signed(input_fmap_60[15:0]) +
	( 16'sd 24379) * $signed(input_fmap_61[15:0]) +
	( 16'sd 23855) * $signed(input_fmap_62[15:0]) +
	( 16'sd 28823) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_57;
assign conv_mac_57 = 
	( 11'sd 942) * $signed(input_fmap_0[15:0]) +
	( 13'sd 3490) * $signed(input_fmap_1[15:0]) +
	( 16'sd 29956) * $signed(input_fmap_2[15:0]) +
	( 10'sd 258) * $signed(input_fmap_3[15:0]) +
	( 16'sd 28978) * $signed(input_fmap_4[15:0]) +
	( 16'sd 28505) * $signed(input_fmap_5[15:0]) +
	( 12'sd 1914) * $signed(input_fmap_6[15:0]) +
	( 16'sd 24567) * $signed(input_fmap_7[15:0]) +
	( 16'sd 28168) * $signed(input_fmap_8[15:0]) +
	( 16'sd 18012) * $signed(input_fmap_9[15:0]) +
	( 16'sd 24271) * $signed(input_fmap_10[15:0]) +
	( 16'sd 32371) * $signed(input_fmap_11[15:0]) +
	( 15'sd 15288) * $signed(input_fmap_12[15:0]) +
	( 16'sd 27016) * $signed(input_fmap_13[15:0]) +
	( 16'sd 18764) * $signed(input_fmap_14[15:0]) +
	( 16'sd 23370) * $signed(input_fmap_15[15:0]) +
	( 16'sd 24810) * $signed(input_fmap_16[15:0]) +
	( 16'sd 30417) * $signed(input_fmap_17[15:0]) +
	( 16'sd 29303) * $signed(input_fmap_18[15:0]) +
	( 16'sd 28097) * $signed(input_fmap_19[15:0]) +
	( 15'sd 16323) * $signed(input_fmap_20[15:0]) +
	( 16'sd 21751) * $signed(input_fmap_21[15:0]) +
	( 15'sd 10160) * $signed(input_fmap_22[15:0]) +
	( 16'sd 18354) * $signed(input_fmap_23[15:0]) +
	( 16'sd 31502) * $signed(input_fmap_24[15:0]) +
	( 16'sd 17208) * $signed(input_fmap_25[15:0]) +
	( 15'sd 10084) * $signed(input_fmap_26[15:0]) +
	( 15'sd 10941) * $signed(input_fmap_27[15:0]) +
	( 16'sd 29335) * $signed(input_fmap_28[15:0]) +
	( 16'sd 23627) * $signed(input_fmap_29[15:0]) +
	( 13'sd 2063) * $signed(input_fmap_30[15:0]) +
	( 16'sd 22235) * $signed(input_fmap_31[15:0]) +
	( 16'sd 17707) * $signed(input_fmap_32[15:0]) +
	( 14'sd 4258) * $signed(input_fmap_33[15:0]) +
	( 14'sd 6007) * $signed(input_fmap_34[15:0]) +
	( 16'sd 24814) * $signed(input_fmap_35[15:0]) +
	( 14'sd 5006) * $signed(input_fmap_36[15:0]) +
	( 14'sd 4890) * $signed(input_fmap_37[15:0]) +
	( 14'sd 7042) * $signed(input_fmap_38[15:0]) +
	( 16'sd 27730) * $signed(input_fmap_39[15:0]) +
	( 15'sd 12855) * $signed(input_fmap_40[15:0]) +
	( 15'sd 10216) * $signed(input_fmap_41[15:0]) +
	( 16'sd 26755) * $signed(input_fmap_42[15:0]) +
	( 15'sd 10561) * $signed(input_fmap_43[15:0]) +
	( 15'sd 12533) * $signed(input_fmap_44[15:0]) +
	( 16'sd 23133) * $signed(input_fmap_45[15:0]) +
	( 13'sd 2864) * $signed(input_fmap_46[15:0]) +
	( 16'sd 29193) * $signed(input_fmap_47[15:0]) +
	( 16'sd 23202) * $signed(input_fmap_48[15:0]) +
	( 16'sd 25900) * $signed(input_fmap_49[15:0]) +
	( 15'sd 14620) * $signed(input_fmap_50[15:0]) +
	( 11'sd 969) * $signed(input_fmap_51[15:0]) +
	( 12'sd 1966) * $signed(input_fmap_52[15:0]) +
	( 16'sd 32041) * $signed(input_fmap_53[15:0]) +
	( 16'sd 30183) * $signed(input_fmap_54[15:0]) +
	( 15'sd 14936) * $signed(input_fmap_55[15:0]) +
	( 16'sd 32332) * $signed(input_fmap_56[15:0]) +
	( 16'sd 31590) * $signed(input_fmap_57[15:0]) +
	( 16'sd 30748) * $signed(input_fmap_58[15:0]) +
	( 15'sd 15785) * $signed(input_fmap_59[15:0]) +
	( 16'sd 30371) * $signed(input_fmap_60[15:0]) +
	( 15'sd 11395) * $signed(input_fmap_61[15:0]) +
	( 16'sd 26101) * $signed(input_fmap_62[15:0]) +
	( 16'sd 28512) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_58;
assign conv_mac_58 = 
	( 16'sd 31279) * $signed(input_fmap_0[15:0]) +
	( 16'sd 20325) * $signed(input_fmap_1[15:0]) +
	( 16'sd 21287) * $signed(input_fmap_2[15:0]) +
	( 16'sd 19186) * $signed(input_fmap_3[15:0]) +
	( 16'sd 29294) * $signed(input_fmap_4[15:0]) +
	( 16'sd 32187) * $signed(input_fmap_5[15:0]) +
	( 16'sd 22987) * $signed(input_fmap_6[15:0]) +
	( 15'sd 13338) * $signed(input_fmap_7[15:0]) +
	( 16'sd 19206) * $signed(input_fmap_8[15:0]) +
	( 16'sd 20765) * $signed(input_fmap_9[15:0]) +
	( 16'sd 27800) * $signed(input_fmap_10[15:0]) +
	( 16'sd 22194) * $signed(input_fmap_11[15:0]) +
	( 16'sd 16583) * $signed(input_fmap_12[15:0]) +
	( 16'sd 28014) * $signed(input_fmap_13[15:0]) +
	( 11'sd 700) * $signed(input_fmap_14[15:0]) +
	( 16'sd 32353) * $signed(input_fmap_15[15:0]) +
	( 16'sd 28440) * $signed(input_fmap_16[15:0]) +
	( 14'sd 5741) * $signed(input_fmap_17[15:0]) +
	( 14'sd 6736) * $signed(input_fmap_18[15:0]) +
	( 14'sd 4865) * $signed(input_fmap_19[15:0]) +
	( 15'sd 14175) * $signed(input_fmap_20[15:0]) +
	( 15'sd 9851) * $signed(input_fmap_21[15:0]) +
	( 16'sd 29398) * $signed(input_fmap_22[15:0]) +
	( 15'sd 9471) * $signed(input_fmap_23[15:0]) +
	( 15'sd 13394) * $signed(input_fmap_24[15:0]) +
	( 16'sd 20991) * $signed(input_fmap_25[15:0]) +
	( 16'sd 29183) * $signed(input_fmap_26[15:0]) +
	( 14'sd 8091) * $signed(input_fmap_27[15:0]) +
	( 14'sd 4513) * $signed(input_fmap_28[15:0]) +
	( 16'sd 27752) * $signed(input_fmap_29[15:0]) +
	( 16'sd 21486) * $signed(input_fmap_30[15:0]) +
	( 16'sd 18919) * $signed(input_fmap_31[15:0]) +
	( 14'sd 6015) * $signed(input_fmap_32[15:0]) +
	( 15'sd 14639) * $signed(input_fmap_33[15:0]) +
	( 12'sd 1570) * $signed(input_fmap_34[15:0]) +
	( 16'sd 23220) * $signed(input_fmap_35[15:0]) +
	( 15'sd 14613) * $signed(input_fmap_36[15:0]) +
	( 15'sd 9206) * $signed(input_fmap_37[15:0]) +
	( 16'sd 29759) * $signed(input_fmap_38[15:0]) +
	( 15'sd 9833) * $signed(input_fmap_39[15:0]) +
	( 15'sd 11331) * $signed(input_fmap_40[15:0]) +
	( 15'sd 10825) * $signed(input_fmap_41[15:0]) +
	( 14'sd 6746) * $signed(input_fmap_42[15:0]) +
	( 16'sd 24508) * $signed(input_fmap_43[15:0]) +
	( 15'sd 13199) * $signed(input_fmap_44[15:0]) +
	( 16'sd 25305) * $signed(input_fmap_45[15:0]) +
	( 16'sd 19787) * $signed(input_fmap_46[15:0]) +
	( 16'sd 20633) * $signed(input_fmap_47[15:0]) +
	( 16'sd 23454) * $signed(input_fmap_48[15:0]) +
	( 15'sd 9166) * $signed(input_fmap_49[15:0]) +
	( 14'sd 5309) * $signed(input_fmap_50[15:0]) +
	( 13'sd 2274) * $signed(input_fmap_51[15:0]) +
	( 16'sd 30499) * $signed(input_fmap_52[15:0]) +
	( 16'sd 21005) * $signed(input_fmap_53[15:0]) +
	( 14'sd 5842) * $signed(input_fmap_54[15:0]) +
	( 13'sd 3018) * $signed(input_fmap_55[15:0]) +
	( 16'sd 23663) * $signed(input_fmap_56[15:0]) +
	( 13'sd 2956) * $signed(input_fmap_57[15:0]) +
	( 16'sd 28446) * $signed(input_fmap_58[15:0]) +
	( 16'sd 25523) * $signed(input_fmap_59[15:0]) +
	( 16'sd 27625) * $signed(input_fmap_60[15:0]) +
	( 16'sd 28550) * $signed(input_fmap_61[15:0]) +
	( 15'sd 12394) * $signed(input_fmap_62[15:0]) +
	( 14'sd 6232) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_59;
assign conv_mac_59 = 
	( 16'sd 20463) * $signed(input_fmap_0[15:0]) +
	( 15'sd 16202) * $signed(input_fmap_1[15:0]) +
	( 16'sd 32152) * $signed(input_fmap_2[15:0]) +
	( 15'sd 8982) * $signed(input_fmap_3[15:0]) +
	( 16'sd 19987) * $signed(input_fmap_4[15:0]) +
	( 14'sd 5865) * $signed(input_fmap_5[15:0]) +
	( 16'sd 24051) * $signed(input_fmap_6[15:0]) +
	( 16'sd 18826) * $signed(input_fmap_7[15:0]) +
	( 14'sd 8120) * $signed(input_fmap_8[15:0]) +
	( 15'sd 12801) * $signed(input_fmap_9[15:0]) +
	( 16'sd 28617) * $signed(input_fmap_10[15:0]) +
	( 14'sd 5570) * $signed(input_fmap_11[15:0]) +
	( 16'sd 18309) * $signed(input_fmap_12[15:0]) +
	( 16'sd 21510) * $signed(input_fmap_13[15:0]) +
	( 10'sd 452) * $signed(input_fmap_14[15:0]) +
	( 14'sd 7008) * $signed(input_fmap_15[15:0]) +
	( 15'sd 8566) * $signed(input_fmap_16[15:0]) +
	( 16'sd 23336) * $signed(input_fmap_17[15:0]) +
	( 16'sd 23772) * $signed(input_fmap_18[15:0]) +
	( 16'sd 28269) * $signed(input_fmap_19[15:0]) +
	( 16'sd 28901) * $signed(input_fmap_20[15:0]) +
	( 16'sd 22935) * $signed(input_fmap_21[15:0]) +
	( 15'sd 14668) * $signed(input_fmap_22[15:0]) +
	( 15'sd 10106) * $signed(input_fmap_23[15:0]) +
	( 14'sd 6020) * $signed(input_fmap_24[15:0]) +
	( 15'sd 9664) * $signed(input_fmap_25[15:0]) +
	( 16'sd 25712) * $signed(input_fmap_26[15:0]) +
	( 16'sd 30762) * $signed(input_fmap_27[15:0]) +
	( 13'sd 2088) * $signed(input_fmap_28[15:0]) +
	( 8'sd 110) * $signed(input_fmap_29[15:0]) +
	( 16'sd 21956) * $signed(input_fmap_30[15:0]) +
	( 15'sd 10506) * $signed(input_fmap_31[15:0]) +
	( 16'sd 26355) * $signed(input_fmap_32[15:0]) +
	( 16'sd 29563) * $signed(input_fmap_33[15:0]) +
	( 13'sd 2469) * $signed(input_fmap_34[15:0]) +
	( 14'sd 5200) * $signed(input_fmap_35[15:0]) +
	( 14'sd 6499) * $signed(input_fmap_36[15:0]) +
	( 16'sd 27624) * $signed(input_fmap_37[15:0]) +
	( 16'sd 23875) * $signed(input_fmap_38[15:0]) +
	( 15'sd 10592) * $signed(input_fmap_39[15:0]) +
	( 12'sd 1617) * $signed(input_fmap_40[15:0]) +
	( 9'sd 235) * $signed(input_fmap_41[15:0]) +
	( 16'sd 22255) * $signed(input_fmap_42[15:0]) +
	( 16'sd 20552) * $signed(input_fmap_43[15:0]) +
	( 15'sd 9190) * $signed(input_fmap_44[15:0]) +
	( 16'sd 32160) * $signed(input_fmap_45[15:0]) +
	( 16'sd 28443) * $signed(input_fmap_46[15:0]) +
	( 15'sd 12146) * $signed(input_fmap_47[15:0]) +
	( 16'sd 17825) * $signed(input_fmap_48[15:0]) +
	( 15'sd 14080) * $signed(input_fmap_49[15:0]) +
	( 15'sd 15922) * $signed(input_fmap_50[15:0]) +
	( 16'sd 32505) * $signed(input_fmap_51[15:0]) +
	( 15'sd 12573) * $signed(input_fmap_52[15:0]) +
	( 16'sd 29973) * $signed(input_fmap_53[15:0]) +
	( 16'sd 32352) * $signed(input_fmap_54[15:0]) +
	( 16'sd 16986) * $signed(input_fmap_55[15:0]) +
	( 14'sd 5607) * $signed(input_fmap_56[15:0]) +
	( 16'sd 26547) * $signed(input_fmap_57[15:0]) +
	( 16'sd 30568) * $signed(input_fmap_58[15:0]) +
	( 15'sd 11289) * $signed(input_fmap_59[15:0]) +
	( 16'sd 32557) * $signed(input_fmap_60[15:0]) +
	( 16'sd 25240) * $signed(input_fmap_61[15:0]) +
	( 12'sd 1225) * $signed(input_fmap_62[15:0]) +
	( 14'sd 7201) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_60;
assign conv_mac_60 = 
	( 16'sd 17393) * $signed(input_fmap_0[15:0]) +
	( 10'sd 347) * $signed(input_fmap_1[15:0]) +
	( 16'sd 28627) * $signed(input_fmap_2[15:0]) +
	( 14'sd 5883) * $signed(input_fmap_3[15:0]) +
	( 12'sd 1035) * $signed(input_fmap_4[15:0]) +
	( 16'sd 22044) * $signed(input_fmap_5[15:0]) +
	( 15'sd 9875) * $signed(input_fmap_6[15:0]) +
	( 16'sd 18638) * $signed(input_fmap_7[15:0]) +
	( 15'sd 14677) * $signed(input_fmap_8[15:0]) +
	( 16'sd 30855) * $signed(input_fmap_9[15:0]) +
	( 16'sd 26885) * $signed(input_fmap_10[15:0]) +
	( 16'sd 16947) * $signed(input_fmap_11[15:0]) +
	( 16'sd 22892) * $signed(input_fmap_12[15:0]) +
	( 13'sd 2640) * $signed(input_fmap_13[15:0]) +
	( 16'sd 19916) * $signed(input_fmap_14[15:0]) +
	( 15'sd 14949) * $signed(input_fmap_15[15:0]) +
	( 16'sd 26927) * $signed(input_fmap_16[15:0]) +
	( 16'sd 31453) * $signed(input_fmap_17[15:0]) +
	( 15'sd 10193) * $signed(input_fmap_18[15:0]) +
	( 14'sd 7658) * $signed(input_fmap_19[15:0]) +
	( 16'sd 19716) * $signed(input_fmap_20[15:0]) +
	( 10'sd 298) * $signed(input_fmap_21[15:0]) +
	( 15'sd 10648) * $signed(input_fmap_22[15:0]) +
	( 16'sd 28299) * $signed(input_fmap_23[15:0]) +
	( 16'sd 27088) * $signed(input_fmap_24[15:0]) +
	( 16'sd 21059) * $signed(input_fmap_25[15:0]) +
	( 16'sd 25884) * $signed(input_fmap_26[15:0]) +
	( 15'sd 15482) * $signed(input_fmap_27[15:0]) +
	( 16'sd 24110) * $signed(input_fmap_28[15:0]) +
	( 13'sd 2552) * $signed(input_fmap_29[15:0]) +
	( 15'sd 10009) * $signed(input_fmap_30[15:0]) +
	( 14'sd 7442) * $signed(input_fmap_31[15:0]) +
	( 16'sd 26784) * $signed(input_fmap_32[15:0]) +
	( 12'sd 1335) * $signed(input_fmap_33[15:0]) +
	( 16'sd 19105) * $signed(input_fmap_34[15:0]) +
	( 15'sd 15864) * $signed(input_fmap_35[15:0]) +
	( 14'sd 4319) * $signed(input_fmap_36[15:0]) +
	( 15'sd 15086) * $signed(input_fmap_37[15:0]) +
	( 15'sd 12147) * $signed(input_fmap_38[15:0]) +
	( 16'sd 20349) * $signed(input_fmap_39[15:0]) +
	( 16'sd 25140) * $signed(input_fmap_40[15:0]) +
	( 15'sd 15772) * $signed(input_fmap_41[15:0]) +
	( 12'sd 1461) * $signed(input_fmap_42[15:0]) +
	( 16'sd 28261) * $signed(input_fmap_43[15:0]) +
	( 14'sd 5292) * $signed(input_fmap_44[15:0]) +
	( 15'sd 11658) * $signed(input_fmap_45[15:0]) +
	( 16'sd 24955) * $signed(input_fmap_46[15:0]) +
	( 16'sd 16881) * $signed(input_fmap_47[15:0]) +
	( 16'sd 21550) * $signed(input_fmap_48[15:0]) +
	( 15'sd 16019) * $signed(input_fmap_49[15:0]) +
	( 14'sd 7357) * $signed(input_fmap_50[15:0]) +
	( 16'sd 24397) * $signed(input_fmap_51[15:0]) +
	( 15'sd 13340) * $signed(input_fmap_52[15:0]) +
	( 16'sd 19740) * $signed(input_fmap_53[15:0]) +
	( 15'sd 9280) * $signed(input_fmap_54[15:0]) +
	( 16'sd 30140) * $signed(input_fmap_55[15:0]) +
	( 16'sd 24286) * $signed(input_fmap_56[15:0]) +
	( 16'sd 17917) * $signed(input_fmap_57[15:0]) +
	( 15'sd 15027) * $signed(input_fmap_58[15:0]) +
	( 16'sd 18059) * $signed(input_fmap_59[15:0]) +
	( 16'sd 24544) * $signed(input_fmap_60[15:0]) +
	( 16'sd 22693) * $signed(input_fmap_61[15:0]) +
	( 16'sd 26457) * $signed(input_fmap_62[15:0]) +
	( 16'sd 16547) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_61;
assign conv_mac_61 = 
	( 15'sd 13393) * $signed(input_fmap_0[15:0]) +
	( 16'sd 24381) * $signed(input_fmap_1[15:0]) +
	( 16'sd 20395) * $signed(input_fmap_2[15:0]) +
	( 12'sd 1944) * $signed(input_fmap_3[15:0]) +
	( 15'sd 9500) * $signed(input_fmap_4[15:0]) +
	( 16'sd 20310) * $signed(input_fmap_5[15:0]) +
	( 15'sd 10459) * $signed(input_fmap_6[15:0]) +
	( 16'sd 26131) * $signed(input_fmap_7[15:0]) +
	( 14'sd 4528) * $signed(input_fmap_8[15:0]) +
	( 16'sd 28393) * $signed(input_fmap_9[15:0]) +
	( 16'sd 21250) * $signed(input_fmap_10[15:0]) +
	( 14'sd 5102) * $signed(input_fmap_11[15:0]) +
	( 16'sd 28710) * $signed(input_fmap_12[15:0]) +
	( 11'sd 589) * $signed(input_fmap_13[15:0]) +
	( 10'sd 416) * $signed(input_fmap_14[15:0]) +
	( 16'sd 26702) * $signed(input_fmap_15[15:0]) +
	( 16'sd 23990) * $signed(input_fmap_16[15:0]) +
	( 14'sd 6391) * $signed(input_fmap_17[15:0]) +
	( 15'sd 14816) * $signed(input_fmap_18[15:0]) +
	( 14'sd 4281) * $signed(input_fmap_19[15:0]) +
	( 16'sd 32297) * $signed(input_fmap_20[15:0]) +
	( 13'sd 3209) * $signed(input_fmap_21[15:0]) +
	( 15'sd 15931) * $signed(input_fmap_22[15:0]) +
	( 16'sd 27170) * $signed(input_fmap_23[15:0]) +
	( 15'sd 11964) * $signed(input_fmap_24[15:0]) +
	( 16'sd 32559) * $signed(input_fmap_25[15:0]) +
	( 16'sd 24773) * $signed(input_fmap_26[15:0]) +
	( 16'sd 20565) * $signed(input_fmap_27[15:0]) +
	( 14'sd 5441) * $signed(input_fmap_28[15:0]) +
	( 16'sd 19592) * $signed(input_fmap_29[15:0]) +
	( 15'sd 8522) * $signed(input_fmap_30[15:0]) +
	( 16'sd 25200) * $signed(input_fmap_31[15:0]) +
	( 16'sd 20360) * $signed(input_fmap_32[15:0]) +
	( 16'sd 32721) * $signed(input_fmap_33[15:0]) +
	( 16'sd 24432) * $signed(input_fmap_34[15:0]) +
	( 15'sd 13087) * $signed(input_fmap_35[15:0]) +
	( 15'sd 12896) * $signed(input_fmap_36[15:0]) +
	( 13'sd 2487) * $signed(input_fmap_37[15:0]) +
	( 16'sd 23032) * $signed(input_fmap_38[15:0]) +
	( 16'sd 23099) * $signed(input_fmap_39[15:0]) +
	( 15'sd 11938) * $signed(input_fmap_40[15:0]) +
	( 16'sd 17432) * $signed(input_fmap_41[15:0]) +
	( 16'sd 18382) * $signed(input_fmap_42[15:0]) +
	( 16'sd 17952) * $signed(input_fmap_43[15:0]) +
	( 16'sd 30211) * $signed(input_fmap_44[15:0]) +
	( 15'sd 13174) * $signed(input_fmap_45[15:0]) +
	( 15'sd 12247) * $signed(input_fmap_46[15:0]) +
	( 14'sd 8006) * $signed(input_fmap_47[15:0]) +
	( 16'sd 23804) * $signed(input_fmap_48[15:0]) +
	( 16'sd 24162) * $signed(input_fmap_49[15:0]) +
	( 12'sd 1306) * $signed(input_fmap_50[15:0]) +
	( 16'sd 26051) * $signed(input_fmap_51[15:0]) +
	( 14'sd 4586) * $signed(input_fmap_52[15:0]) +
	( 13'sd 2824) * $signed(input_fmap_53[15:0]) +
	( 16'sd 28069) * $signed(input_fmap_54[15:0]) +
	( 11'sd 518) * $signed(input_fmap_55[15:0]) +
	( 15'sd 9825) * $signed(input_fmap_56[15:0]) +
	( 16'sd 26200) * $signed(input_fmap_57[15:0]) +
	( 15'sd 10084) * $signed(input_fmap_58[15:0]) +
	( 15'sd 15788) * $signed(input_fmap_59[15:0]) +
	( 13'sd 3467) * $signed(input_fmap_60[15:0]) +
	( 16'sd 31803) * $signed(input_fmap_61[15:0]) +
	( 14'sd 5791) * $signed(input_fmap_62[15:0]) +
	( 12'sd 1955) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_62;
assign conv_mac_62 = 
	( 16'sd 22019) * $signed(input_fmap_0[15:0]) +
	( 16'sd 22086) * $signed(input_fmap_1[15:0]) +
	( 16'sd 17826) * $signed(input_fmap_2[15:0]) +
	( 16'sd 25823) * $signed(input_fmap_3[15:0]) +
	( 16'sd 16615) * $signed(input_fmap_4[15:0]) +
	( 15'sd 8281) * $signed(input_fmap_5[15:0]) +
	( 14'sd 5017) * $signed(input_fmap_6[15:0]) +
	( 15'sd 15428) * $signed(input_fmap_7[15:0]) +
	( 16'sd 17184) * $signed(input_fmap_8[15:0]) +
	( 15'sd 9740) * $signed(input_fmap_9[15:0]) +
	( 15'sd 16088) * $signed(input_fmap_10[15:0]) +
	( 16'sd 25042) * $signed(input_fmap_11[15:0]) +
	( 14'sd 4721) * $signed(input_fmap_12[15:0]) +
	( 16'sd 18078) * $signed(input_fmap_13[15:0]) +
	( 16'sd 22168) * $signed(input_fmap_14[15:0]) +
	( 16'sd 30299) * $signed(input_fmap_15[15:0]) +
	( 15'sd 8934) * $signed(input_fmap_16[15:0]) +
	( 16'sd 24017) * $signed(input_fmap_17[15:0]) +
	( 11'sd 1009) * $signed(input_fmap_18[15:0]) +
	( 16'sd 16705) * $signed(input_fmap_19[15:0]) +
	( 15'sd 10531) * $signed(input_fmap_20[15:0]) +
	( 14'sd 4307) * $signed(input_fmap_21[15:0]) +
	( 16'sd 21498) * $signed(input_fmap_22[15:0]) +
	( 16'sd 26198) * $signed(input_fmap_23[15:0]) +
	( 13'sd 3636) * $signed(input_fmap_24[15:0]) +
	( 11'sd 840) * $signed(input_fmap_25[15:0]) +
	( 16'sd 21442) * $signed(input_fmap_26[15:0]) +
	( 16'sd 20060) * $signed(input_fmap_27[15:0]) +
	( 14'sd 6686) * $signed(input_fmap_28[15:0]) +
	( 13'sd 4024) * $signed(input_fmap_29[15:0]) +
	( 14'sd 6686) * $signed(input_fmap_30[15:0]) +
	( 9'sd 182) * $signed(input_fmap_31[15:0]) +
	( 15'sd 11035) * $signed(input_fmap_32[15:0]) +
	( 16'sd 21926) * $signed(input_fmap_33[15:0]) +
	( 13'sd 3067) * $signed(input_fmap_34[15:0]) +
	( 15'sd 10220) * $signed(input_fmap_35[15:0]) +
	( 16'sd 18599) * $signed(input_fmap_36[15:0]) +
	( 16'sd 31530) * $signed(input_fmap_37[15:0]) +
	( 16'sd 31843) * $signed(input_fmap_38[15:0]) +
	( 16'sd 28702) * $signed(input_fmap_39[15:0]) +
	( 16'sd 31301) * $signed(input_fmap_40[15:0]) +
	( 15'sd 16170) * $signed(input_fmap_41[15:0]) +
	( 15'sd 9081) * $signed(input_fmap_42[15:0]) +
	( 16'sd 32036) * $signed(input_fmap_43[15:0]) +
	( 16'sd 19497) * $signed(input_fmap_44[15:0]) +
	( 16'sd 19850) * $signed(input_fmap_45[15:0]) +
	( 14'sd 5327) * $signed(input_fmap_46[15:0]) +
	( 13'sd 2702) * $signed(input_fmap_47[15:0]) +
	( 14'sd 7920) * $signed(input_fmap_48[15:0]) +
	( 16'sd 22646) * $signed(input_fmap_49[15:0]) +
	( 16'sd 22796) * $signed(input_fmap_50[15:0]) +
	( 16'sd 16485) * $signed(input_fmap_51[15:0]) +
	( 16'sd 21549) * $signed(input_fmap_52[15:0]) +
	( 15'sd 10314) * $signed(input_fmap_53[15:0]) +
	( 14'sd 7606) * $signed(input_fmap_54[15:0]) +
	( 15'sd 12434) * $signed(input_fmap_55[15:0]) +
	( 13'sd 3018) * $signed(input_fmap_56[15:0]) +
	( 15'sd 13071) * $signed(input_fmap_57[15:0]) +
	( 15'sd 13229) * $signed(input_fmap_58[15:0]) +
	( 16'sd 18632) * $signed(input_fmap_59[15:0]) +
	( 16'sd 28367) * $signed(input_fmap_60[15:0]) +
	( 16'sd 31189) * $signed(input_fmap_61[15:0]) +
	( 15'sd 12998) * $signed(input_fmap_62[15:0]) +
	( 16'sd 29080) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_63;
assign conv_mac_63 = 
	( 15'sd 9635) * $signed(input_fmap_0[15:0]) +
	( 16'sd 22991) * $signed(input_fmap_1[15:0]) +
	( 12'sd 1720) * $signed(input_fmap_2[15:0]) +
	( 16'sd 28471) * $signed(input_fmap_3[15:0]) +
	( 13'sd 2767) * $signed(input_fmap_4[15:0]) +
	( 15'sd 12264) * $signed(input_fmap_5[15:0]) +
	( 15'sd 10161) * $signed(input_fmap_6[15:0]) +
	( 14'sd 6057) * $signed(input_fmap_7[15:0]) +
	( 16'sd 21538) * $signed(input_fmap_8[15:0]) +
	( 16'sd 17983) * $signed(input_fmap_9[15:0]) +
	( 16'sd 27663) * $signed(input_fmap_10[15:0]) +
	( 15'sd 12683) * $signed(input_fmap_11[15:0]) +
	( 16'sd 25576) * $signed(input_fmap_12[15:0]) +
	( 16'sd 22727) * $signed(input_fmap_13[15:0]) +
	( 16'sd 30708) * $signed(input_fmap_14[15:0]) +
	( 14'sd 5375) * $signed(input_fmap_15[15:0]) +
	( 13'sd 3603) * $signed(input_fmap_16[15:0]) +
	( 13'sd 3066) * $signed(input_fmap_17[15:0]) +
	( 13'sd 2663) * $signed(input_fmap_18[15:0]) +
	( 16'sd 17337) * $signed(input_fmap_19[15:0]) +
	( 15'sd 15729) * $signed(input_fmap_20[15:0]) +
	( 15'sd 9356) * $signed(input_fmap_21[15:0]) +
	( 16'sd 22747) * $signed(input_fmap_22[15:0]) +
	( 15'sd 10795) * $signed(input_fmap_23[15:0]) +
	( 16'sd 27507) * $signed(input_fmap_24[15:0]) +
	( 12'sd 1614) * $signed(input_fmap_25[15:0]) +
	( 16'sd 28458) * $signed(input_fmap_26[15:0]) +
	( 15'sd 9763) * $signed(input_fmap_27[15:0]) +
	( 16'sd 27793) * $signed(input_fmap_28[15:0]) +
	( 15'sd 13377) * $signed(input_fmap_29[15:0]) +
	( 16'sd 20773) * $signed(input_fmap_30[15:0]) +
	( 15'sd 13630) * $signed(input_fmap_31[15:0]) +
	( 16'sd 24625) * $signed(input_fmap_32[15:0]) +
	( 16'sd 17650) * $signed(input_fmap_33[15:0]) +
	( 15'sd 11023) * $signed(input_fmap_34[15:0]) +
	( 11'sd 971) * $signed(input_fmap_35[15:0]) +
	( 16'sd 22279) * $signed(input_fmap_36[15:0]) +
	( 11'sd 827) * $signed(input_fmap_37[15:0]) +
	( 16'sd 23089) * $signed(input_fmap_38[15:0]) +
	( 15'sd 14084) * $signed(input_fmap_39[15:0]) +
	( 16'sd 25975) * $signed(input_fmap_40[15:0]) +
	( 14'sd 6141) * $signed(input_fmap_41[15:0]) +
	( 16'sd 23921) * $signed(input_fmap_42[15:0]) +
	( 16'sd 29115) * $signed(input_fmap_43[15:0]) +
	( 10'sd 266) * $signed(input_fmap_44[15:0]) +
	( 16'sd 25514) * $signed(input_fmap_45[15:0]) +
	( 13'sd 2568) * $signed(input_fmap_46[15:0]) +
	( 16'sd 22240) * $signed(input_fmap_47[15:0]) +
	( 15'sd 8802) * $signed(input_fmap_48[15:0]) +
	( 14'sd 6578) * $signed(input_fmap_49[15:0]) +
	( 16'sd 23822) * $signed(input_fmap_50[15:0]) +
	( 15'sd 11474) * $signed(input_fmap_51[15:0]) +
	( 14'sd 4210) * $signed(input_fmap_52[15:0]) +
	( 15'sd 12588) * $signed(input_fmap_53[15:0]) +
	( 16'sd 17500) * $signed(input_fmap_54[15:0]) +
	( 14'sd 6116) * $signed(input_fmap_55[15:0]) +
	( 15'sd 15994) * $signed(input_fmap_56[15:0]) +
	( 16'sd 28732) * $signed(input_fmap_57[15:0]) +
	( 14'sd 6760) * $signed(input_fmap_58[15:0]) +
	( 14'sd 7279) * $signed(input_fmap_59[15:0]) +
	( 14'sd 6965) * $signed(input_fmap_60[15:0]) +
	( 16'sd 16850) * $signed(input_fmap_61[15:0]) +
	( 16'sd 27797) * $signed(input_fmap_62[15:0]) +
	( 16'sd 18597) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_64;
assign conv_mac_64 = 
	( 15'sd 15629) * $signed(input_fmap_0[15:0]) +
	( 16'sd 22763) * $signed(input_fmap_1[15:0]) +
	( 16'sd 25003) * $signed(input_fmap_2[15:0]) +
	( 16'sd 27713) * $signed(input_fmap_3[15:0]) +
	( 16'sd 19219) * $signed(input_fmap_4[15:0]) +
	( 15'sd 13714) * $signed(input_fmap_5[15:0]) +
	( 12'sd 2027) * $signed(input_fmap_6[15:0]) +
	( 12'sd 1182) * $signed(input_fmap_7[15:0]) +
	( 16'sd 31090) * $signed(input_fmap_8[15:0]) +
	( 16'sd 20403) * $signed(input_fmap_9[15:0]) +
	( 16'sd 29301) * $signed(input_fmap_10[15:0]) +
	( 16'sd 27573) * $signed(input_fmap_11[15:0]) +
	( 16'sd 31165) * $signed(input_fmap_12[15:0]) +
	( 16'sd 31678) * $signed(input_fmap_13[15:0]) +
	( 14'sd 5024) * $signed(input_fmap_14[15:0]) +
	( 16'sd 28946) * $signed(input_fmap_15[15:0]) +
	( 16'sd 24955) * $signed(input_fmap_16[15:0]) +
	( 16'sd 21359) * $signed(input_fmap_17[15:0]) +
	( 16'sd 27442) * $signed(input_fmap_18[15:0]) +
	( 16'sd 32180) * $signed(input_fmap_19[15:0]) +
	( 11'sd 609) * $signed(input_fmap_20[15:0]) +
	( 16'sd 27031) * $signed(input_fmap_21[15:0]) +
	( 16'sd 30448) * $signed(input_fmap_22[15:0]) +
	( 16'sd 26295) * $signed(input_fmap_23[15:0]) +
	( 16'sd 18497) * $signed(input_fmap_24[15:0]) +
	( 16'sd 30772) * $signed(input_fmap_25[15:0]) +
	( 15'sd 9087) * $signed(input_fmap_26[15:0]) +
	( 16'sd 20768) * $signed(input_fmap_27[15:0]) +
	( 16'sd 27639) * $signed(input_fmap_28[15:0]) +
	( 16'sd 25854) * $signed(input_fmap_29[15:0]) +
	( 16'sd 19369) * $signed(input_fmap_30[15:0]) +
	( 14'sd 4562) * $signed(input_fmap_31[15:0]) +
	( 16'sd 18849) * $signed(input_fmap_32[15:0]) +
	( 16'sd 23036) * $signed(input_fmap_33[15:0]) +
	( 14'sd 4745) * $signed(input_fmap_34[15:0]) +
	( 14'sd 6507) * $signed(input_fmap_35[15:0]) +
	( 16'sd 23586) * $signed(input_fmap_36[15:0]) +
	( 14'sd 7573) * $signed(input_fmap_37[15:0]) +
	( 15'sd 13578) * $signed(input_fmap_38[15:0]) +
	( 16'sd 25011) * $signed(input_fmap_39[15:0]) +
	( 15'sd 8531) * $signed(input_fmap_40[15:0]) +
	( 13'sd 2409) * $signed(input_fmap_41[15:0]) +
	( 12'sd 1509) * $signed(input_fmap_42[15:0]) +
	( 16'sd 19330) * $signed(input_fmap_43[15:0]) +
	( 16'sd 24179) * $signed(input_fmap_44[15:0]) +
	( 16'sd 18374) * $signed(input_fmap_45[15:0]) +
	( 16'sd 19413) * $signed(input_fmap_46[15:0]) +
	( 16'sd 22756) * $signed(input_fmap_47[15:0]) +
	( 16'sd 23849) * $signed(input_fmap_48[15:0]) +
	( 15'sd 15888) * $signed(input_fmap_49[15:0]) +
	( 16'sd 21094) * $signed(input_fmap_50[15:0]) +
	( 15'sd 9812) * $signed(input_fmap_51[15:0]) +
	( 15'sd 10644) * $signed(input_fmap_52[15:0]) +
	( 16'sd 20783) * $signed(input_fmap_53[15:0]) +
	( 16'sd 30103) * $signed(input_fmap_54[15:0]) +
	( 14'sd 7503) * $signed(input_fmap_55[15:0]) +
	( 16'sd 24520) * $signed(input_fmap_56[15:0]) +
	( 15'sd 13679) * $signed(input_fmap_57[15:0]) +
	( 16'sd 17366) * $signed(input_fmap_58[15:0]) +
	( 16'sd 20520) * $signed(input_fmap_59[15:0]) +
	( 14'sd 6720) * $signed(input_fmap_60[15:0]) +
	( 14'sd 8072) * $signed(input_fmap_61[15:0]) +
	( 16'sd 29493) * $signed(input_fmap_62[15:0]) +
	( 14'sd 6254) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_65;
assign conv_mac_65 = 
	( 14'sd 6200) * $signed(input_fmap_0[15:0]) +
	( 16'sd 21743) * $signed(input_fmap_1[15:0]) +
	( 16'sd 25735) * $signed(input_fmap_2[15:0]) +
	( 16'sd 22901) * $signed(input_fmap_3[15:0]) +
	( 15'sd 13149) * $signed(input_fmap_4[15:0]) +
	( 12'sd 1276) * $signed(input_fmap_5[15:0]) +
	( 16'sd 21388) * $signed(input_fmap_6[15:0]) +
	( 15'sd 12527) * $signed(input_fmap_7[15:0]) +
	( 16'sd 28297) * $signed(input_fmap_8[15:0]) +
	( 15'sd 15846) * $signed(input_fmap_9[15:0]) +
	( 16'sd 18316) * $signed(input_fmap_10[15:0]) +
	( 15'sd 10109) * $signed(input_fmap_11[15:0]) +
	( 16'sd 28014) * $signed(input_fmap_12[15:0]) +
	( 16'sd 19046) * $signed(input_fmap_13[15:0]) +
	( 16'sd 25271) * $signed(input_fmap_14[15:0]) +
	( 16'sd 20147) * $signed(input_fmap_15[15:0]) +
	( 13'sd 3547) * $signed(input_fmap_16[15:0]) +
	( 16'sd 31296) * $signed(input_fmap_17[15:0]) +
	( 14'sd 7016) * $signed(input_fmap_18[15:0]) +
	( 16'sd 20993) * $signed(input_fmap_19[15:0]) +
	( 16'sd 23201) * $signed(input_fmap_20[15:0]) +
	( 16'sd 24490) * $signed(input_fmap_21[15:0]) +
	( 16'sd 31661) * $signed(input_fmap_22[15:0]) +
	( 16'sd 19422) * $signed(input_fmap_23[15:0]) +
	( 16'sd 21263) * $signed(input_fmap_24[15:0]) +
	( 16'sd 18632) * $signed(input_fmap_25[15:0]) +
	( 16'sd 22536) * $signed(input_fmap_26[15:0]) +
	( 16'sd 23165) * $signed(input_fmap_27[15:0]) +
	( 16'sd 22697) * $signed(input_fmap_28[15:0]) +
	( 14'sd 6428) * $signed(input_fmap_29[15:0]) +
	( 15'sd 13700) * $signed(input_fmap_30[15:0]) +
	( 13'sd 3306) * $signed(input_fmap_31[15:0]) +
	( 14'sd 5116) * $signed(input_fmap_32[15:0]) +
	( 16'sd 31513) * $signed(input_fmap_33[15:0]) +
	( 16'sd 20347) * $signed(input_fmap_34[15:0]) +
	( 16'sd 30963) * $signed(input_fmap_35[15:0]) +
	( 14'sd 5764) * $signed(input_fmap_36[15:0]) +
	( 15'sd 10748) * $signed(input_fmap_37[15:0]) +
	( 15'sd 10227) * $signed(input_fmap_38[15:0]) +
	( 16'sd 22469) * $signed(input_fmap_39[15:0]) +
	( 15'sd 11302) * $signed(input_fmap_40[15:0]) +
	( 13'sd 2292) * $signed(input_fmap_41[15:0]) +
	( 16'sd 28416) * $signed(input_fmap_42[15:0]) +
	( 16'sd 26361) * $signed(input_fmap_43[15:0]) +
	( 15'sd 13276) * $signed(input_fmap_44[15:0]) +
	( 14'sd 7881) * $signed(input_fmap_45[15:0]) +
	( 15'sd 15074) * $signed(input_fmap_46[15:0]) +
	( 7'sd 37) * $signed(input_fmap_47[15:0]) +
	( 12'sd 1786) * $signed(input_fmap_48[15:0]) +
	( 14'sd 4841) * $signed(input_fmap_49[15:0]) +
	( 16'sd 24475) * $signed(input_fmap_50[15:0]) +
	( 16'sd 21602) * $signed(input_fmap_51[15:0]) +
	( 16'sd 16931) * $signed(input_fmap_52[15:0]) +
	( 16'sd 25992) * $signed(input_fmap_53[15:0]) +
	( 14'sd 7689) * $signed(input_fmap_54[15:0]) +
	( 15'sd 14278) * $signed(input_fmap_55[15:0]) +
	( 15'sd 12407) * $signed(input_fmap_56[15:0]) +
	( 16'sd 30887) * $signed(input_fmap_57[15:0]) +
	( 16'sd 19361) * $signed(input_fmap_58[15:0]) +
	( 15'sd 15873) * $signed(input_fmap_59[15:0]) +
	( 12'sd 1177) * $signed(input_fmap_60[15:0]) +
	( 15'sd 12462) * $signed(input_fmap_61[15:0]) +
	( 16'sd 29633) * $signed(input_fmap_62[15:0]) +
	( 16'sd 24862) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_66;
assign conv_mac_66 = 
	( 16'sd 32078) * $signed(input_fmap_0[15:0]) +
	( 15'sd 11404) * $signed(input_fmap_1[15:0]) +
	( 12'sd 1236) * $signed(input_fmap_2[15:0]) +
	( 15'sd 8720) * $signed(input_fmap_3[15:0]) +
	( 16'sd 16578) * $signed(input_fmap_4[15:0]) +
	( 15'sd 13234) * $signed(input_fmap_5[15:0]) +
	( 12'sd 1066) * $signed(input_fmap_6[15:0]) +
	( 15'sd 13796) * $signed(input_fmap_7[15:0]) +
	( 16'sd 20373) * $signed(input_fmap_8[15:0]) +
	( 14'sd 8038) * $signed(input_fmap_9[15:0]) +
	( 15'sd 11058) * $signed(input_fmap_10[15:0]) +
	( 14'sd 7261) * $signed(input_fmap_11[15:0]) +
	( 16'sd 29673) * $signed(input_fmap_12[15:0]) +
	( 15'sd 13408) * $signed(input_fmap_13[15:0]) +
	( 15'sd 14593) * $signed(input_fmap_14[15:0]) +
	( 13'sd 2387) * $signed(input_fmap_15[15:0]) +
	( 16'sd 29637) * $signed(input_fmap_16[15:0]) +
	( 15'sd 15097) * $signed(input_fmap_17[15:0]) +
	( 15'sd 15303) * $signed(input_fmap_18[15:0]) +
	( 12'sd 1273) * $signed(input_fmap_19[15:0]) +
	( 14'sd 5076) * $signed(input_fmap_20[15:0]) +
	( 14'sd 4324) * $signed(input_fmap_21[15:0]) +
	( 16'sd 21049) * $signed(input_fmap_22[15:0]) +
	( 14'sd 4351) * $signed(input_fmap_23[15:0]) +
	( 16'sd 23031) * $signed(input_fmap_24[15:0]) +
	( 15'sd 10130) * $signed(input_fmap_25[15:0]) +
	( 16'sd 18325) * $signed(input_fmap_26[15:0]) +
	( 16'sd 24370) * $signed(input_fmap_27[15:0]) +
	( 14'sd 4781) * $signed(input_fmap_28[15:0]) +
	( 15'sd 13442) * $signed(input_fmap_29[15:0]) +
	( 10'sd 418) * $signed(input_fmap_30[15:0]) +
	( 13'sd 3803) * $signed(input_fmap_31[15:0]) +
	( 16'sd 20207) * $signed(input_fmap_32[15:0]) +
	( 16'sd 27804) * $signed(input_fmap_33[15:0]) +
	( 14'sd 4990) * $signed(input_fmap_34[15:0]) +
	( 15'sd 9280) * $signed(input_fmap_35[15:0]) +
	( 15'sd 12778) * $signed(input_fmap_36[15:0]) +
	( 15'sd 15363) * $signed(input_fmap_37[15:0]) +
	( 11'sd 876) * $signed(input_fmap_38[15:0]) +
	( 16'sd 26175) * $signed(input_fmap_39[15:0]) +
	( 16'sd 25367) * $signed(input_fmap_40[15:0]) +
	( 14'sd 7427) * $signed(input_fmap_41[15:0]) +
	( 14'sd 5583) * $signed(input_fmap_42[15:0]) +
	( 16'sd 30978) * $signed(input_fmap_43[15:0]) +
	( 16'sd 18251) * $signed(input_fmap_44[15:0]) +
	( 15'sd 15707) * $signed(input_fmap_45[15:0]) +
	( 13'sd 2114) * $signed(input_fmap_46[15:0]) +
	( 16'sd 32172) * $signed(input_fmap_47[15:0]) +
	( 15'sd 10619) * $signed(input_fmap_48[15:0]) +
	( 15'sd 15623) * $signed(input_fmap_49[15:0]) +
	( 15'sd 8976) * $signed(input_fmap_50[15:0]) +
	( 11'sd 835) * $signed(input_fmap_51[15:0]) +
	( 16'sd 18498) * $signed(input_fmap_52[15:0]) +
	( 16'sd 28279) * $signed(input_fmap_53[15:0]) +
	( 16'sd 21349) * $signed(input_fmap_54[15:0]) +
	( 16'sd 27804) * $signed(input_fmap_55[15:0]) +
	( 15'sd 9027) * $signed(input_fmap_56[15:0]) +
	( 16'sd 22685) * $signed(input_fmap_57[15:0]) +
	( 16'sd 20755) * $signed(input_fmap_58[15:0]) +
	( 16'sd 28590) * $signed(input_fmap_59[15:0]) +
	( 16'sd 31466) * $signed(input_fmap_60[15:0]) +
	( 16'sd 27288) * $signed(input_fmap_61[15:0]) +
	( 15'sd 15508) * $signed(input_fmap_62[15:0]) +
	( 16'sd 20131) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_67;
assign conv_mac_67 = 
	( 13'sd 3842) * $signed(input_fmap_0[15:0]) +
	( 16'sd 21569) * $signed(input_fmap_1[15:0]) +
	( 16'sd 16789) * $signed(input_fmap_2[15:0]) +
	( 16'sd 28502) * $signed(input_fmap_3[15:0]) +
	( 16'sd 23223) * $signed(input_fmap_4[15:0]) +
	( 15'sd 12809) * $signed(input_fmap_5[15:0]) +
	( 15'sd 8843) * $signed(input_fmap_6[15:0]) +
	( 15'sd 15062) * $signed(input_fmap_7[15:0]) +
	( 16'sd 27589) * $signed(input_fmap_8[15:0]) +
	( 16'sd 26654) * $signed(input_fmap_9[15:0]) +
	( 16'sd 26058) * $signed(input_fmap_10[15:0]) +
	( 16'sd 30185) * $signed(input_fmap_11[15:0]) +
	( 16'sd 18197) * $signed(input_fmap_12[15:0]) +
	( 13'sd 3953) * $signed(input_fmap_13[15:0]) +
	( 16'sd 25890) * $signed(input_fmap_14[15:0]) +
	( 13'sd 3060) * $signed(input_fmap_15[15:0]) +
	( 11'sd 758) * $signed(input_fmap_16[15:0]) +
	( 14'sd 5462) * $signed(input_fmap_17[15:0]) +
	( 14'sd 6323) * $signed(input_fmap_18[15:0]) +
	( 8'sd 67) * $signed(input_fmap_19[15:0]) +
	( 16'sd 18609) * $signed(input_fmap_20[15:0]) +
	( 14'sd 5588) * $signed(input_fmap_21[15:0]) +
	( 16'sd 27231) * $signed(input_fmap_22[15:0]) +
	( 12'sd 1274) * $signed(input_fmap_23[15:0]) +
	( 15'sd 10365) * $signed(input_fmap_24[15:0]) +
	( 14'sd 5264) * $signed(input_fmap_25[15:0]) +
	( 15'sd 12066) * $signed(input_fmap_26[15:0]) +
	( 16'sd 17080) * $signed(input_fmap_27[15:0]) +
	( 16'sd 25195) * $signed(input_fmap_28[15:0]) +
	( 16'sd 31038) * $signed(input_fmap_29[15:0]) +
	( 16'sd 18113) * $signed(input_fmap_30[15:0]) +
	( 14'sd 7318) * $signed(input_fmap_31[15:0]) +
	( 16'sd 30953) * $signed(input_fmap_32[15:0]) +
	( 16'sd 27146) * $signed(input_fmap_33[15:0]) +
	( 16'sd 19647) * $signed(input_fmap_34[15:0]) +
	( 16'sd 28387) * $signed(input_fmap_35[15:0]) +
	( 16'sd 19806) * $signed(input_fmap_36[15:0]) +
	( 16'sd 29803) * $signed(input_fmap_37[15:0]) +
	( 16'sd 24197) * $signed(input_fmap_38[15:0]) +
	( 14'sd 5294) * $signed(input_fmap_39[15:0]) +
	( 14'sd 5185) * $signed(input_fmap_40[15:0]) +
	( 15'sd 15401) * $signed(input_fmap_41[15:0]) +
	( 16'sd 29379) * $signed(input_fmap_42[15:0]) +
	( 15'sd 13535) * $signed(input_fmap_43[15:0]) +
	( 16'sd 20801) * $signed(input_fmap_44[15:0]) +
	( 14'sd 4816) * $signed(input_fmap_45[15:0]) +
	( 16'sd 29426) * $signed(input_fmap_46[15:0]) +
	( 16'sd 30621) * $signed(input_fmap_47[15:0]) +
	( 15'sd 9243) * $signed(input_fmap_48[15:0]) +
	( 16'sd 17607) * $signed(input_fmap_49[15:0]) +
	( 15'sd 15229) * $signed(input_fmap_50[15:0]) +
	( 16'sd 22407) * $signed(input_fmap_51[15:0]) +
	( 15'sd 13713) * $signed(input_fmap_52[15:0]) +
	( 15'sd 9251) * $signed(input_fmap_53[15:0]) +
	( 16'sd 20746) * $signed(input_fmap_54[15:0]) +
	( 13'sd 2887) * $signed(input_fmap_55[15:0]) +
	( 16'sd 23432) * $signed(input_fmap_56[15:0]) +
	( 15'sd 13421) * $signed(input_fmap_57[15:0]) +
	( 16'sd 27455) * $signed(input_fmap_58[15:0]) +
	( 16'sd 27535) * $signed(input_fmap_59[15:0]) +
	( 15'sd 9477) * $signed(input_fmap_60[15:0]) +
	( 15'sd 14969) * $signed(input_fmap_61[15:0]) +
	( 16'sd 27348) * $signed(input_fmap_62[15:0]) +
	( 16'sd 25902) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_68;
assign conv_mac_68 = 
	( 16'sd 21678) * $signed(input_fmap_0[15:0]) +
	( 16'sd 26673) * $signed(input_fmap_1[15:0]) +
	( 15'sd 12057) * $signed(input_fmap_2[15:0]) +
	( 8'sd 122) * $signed(input_fmap_3[15:0]) +
	( 16'sd 26832) * $signed(input_fmap_4[15:0]) +
	( 16'sd 28976) * $signed(input_fmap_5[15:0]) +
	( 16'sd 27659) * $signed(input_fmap_6[15:0]) +
	( 16'sd 16875) * $signed(input_fmap_7[15:0]) +
	( 15'sd 13103) * $signed(input_fmap_8[15:0]) +
	( 13'sd 3710) * $signed(input_fmap_9[15:0]) +
	( 16'sd 23914) * $signed(input_fmap_10[15:0]) +
	( 16'sd 25434) * $signed(input_fmap_11[15:0]) +
	( 11'sd 588) * $signed(input_fmap_12[15:0]) +
	( 16'sd 26699) * $signed(input_fmap_13[15:0]) +
	( 16'sd 20851) * $signed(input_fmap_14[15:0]) +
	( 16'sd 22693) * $signed(input_fmap_15[15:0]) +
	( 16'sd 31155) * $signed(input_fmap_16[15:0]) +
	( 15'sd 15371) * $signed(input_fmap_17[15:0]) +
	( 16'sd 32681) * $signed(input_fmap_18[15:0]) +
	( 15'sd 11166) * $signed(input_fmap_19[15:0]) +
	( 16'sd 25357) * $signed(input_fmap_20[15:0]) +
	( 15'sd 15174) * $signed(input_fmap_21[15:0]) +
	( 14'sd 4603) * $signed(input_fmap_22[15:0]) +
	( 14'sd 6422) * $signed(input_fmap_23[15:0]) +
	( 16'sd 26478) * $signed(input_fmap_24[15:0]) +
	( 16'sd 17753) * $signed(input_fmap_25[15:0]) +
	( 15'sd 13364) * $signed(input_fmap_26[15:0]) +
	( 16'sd 18495) * $signed(input_fmap_27[15:0]) +
	( 16'sd 23230) * $signed(input_fmap_28[15:0]) +
	( 12'sd 1675) * $signed(input_fmap_29[15:0]) +
	( 16'sd 23281) * $signed(input_fmap_30[15:0]) +
	( 15'sd 8210) * $signed(input_fmap_31[15:0]) +
	( 15'sd 13525) * $signed(input_fmap_32[15:0]) +
	( 14'sd 5038) * $signed(input_fmap_33[15:0]) +
	( 8'sd 89) * $signed(input_fmap_34[15:0]) +
	( 15'sd 13132) * $signed(input_fmap_35[15:0]) +
	( 16'sd 31179) * $signed(input_fmap_36[15:0]) +
	( 16'sd 30813) * $signed(input_fmap_37[15:0]) +
	( 13'sd 3243) * $signed(input_fmap_38[15:0]) +
	( 16'sd 22172) * $signed(input_fmap_39[15:0]) +
	( 16'sd 23858) * $signed(input_fmap_40[15:0]) +
	( 15'sd 16063) * $signed(input_fmap_41[15:0]) +
	( 16'sd 19740) * $signed(input_fmap_42[15:0]) +
	( 16'sd 31184) * $signed(input_fmap_43[15:0]) +
	( 14'sd 4768) * $signed(input_fmap_44[15:0]) +
	( 11'sd 688) * $signed(input_fmap_45[15:0]) +
	( 13'sd 2354) * $signed(input_fmap_46[15:0]) +
	( 16'sd 21173) * $signed(input_fmap_47[15:0]) +
	( 16'sd 28227) * $signed(input_fmap_48[15:0]) +
	( 16'sd 22142) * $signed(input_fmap_49[15:0]) +
	( 16'sd 29830) * $signed(input_fmap_50[15:0]) +
	( 10'sd 489) * $signed(input_fmap_51[15:0]) +
	( 14'sd 5127) * $signed(input_fmap_52[15:0]) +
	( 15'sd 9585) * $signed(input_fmap_53[15:0]) +
	( 14'sd 6994) * $signed(input_fmap_54[15:0]) +
	( 14'sd 4146) * $signed(input_fmap_55[15:0]) +
	( 13'sd 2699) * $signed(input_fmap_56[15:0]) +
	( 14'sd 6064) * $signed(input_fmap_57[15:0]) +
	( 15'sd 13693) * $signed(input_fmap_58[15:0]) +
	( 16'sd 27586) * $signed(input_fmap_59[15:0]) +
	( 16'sd 18914) * $signed(input_fmap_60[15:0]) +
	( 16'sd 19200) * $signed(input_fmap_61[15:0]) +
	( 15'sd 13764) * $signed(input_fmap_62[15:0]) +
	( 15'sd 10757) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_69;
assign conv_mac_69 = 
	( 16'sd 29914) * $signed(input_fmap_0[15:0]) +
	( 15'sd 14491) * $signed(input_fmap_1[15:0]) +
	( 13'sd 3946) * $signed(input_fmap_2[15:0]) +
	( 13'sd 2988) * $signed(input_fmap_3[15:0]) +
	( 16'sd 27718) * $signed(input_fmap_4[15:0]) +
	( 15'sd 15059) * $signed(input_fmap_5[15:0]) +
	( 14'sd 6370) * $signed(input_fmap_6[15:0]) +
	( 14'sd 7594) * $signed(input_fmap_7[15:0]) +
	( 14'sd 7695) * $signed(input_fmap_8[15:0]) +
	( 15'sd 11204) * $signed(input_fmap_9[15:0]) +
	( 15'sd 8804) * $signed(input_fmap_10[15:0]) +
	( 12'sd 1703) * $signed(input_fmap_11[15:0]) +
	( 16'sd 20467) * $signed(input_fmap_12[15:0]) +
	( 11'sd 616) * $signed(input_fmap_13[15:0]) +
	( 16'sd 21855) * $signed(input_fmap_14[15:0]) +
	( 16'sd 28180) * $signed(input_fmap_15[15:0]) +
	( 12'sd 1910) * $signed(input_fmap_16[15:0]) +
	( 16'sd 21525) * $signed(input_fmap_17[15:0]) +
	( 16'sd 24548) * $signed(input_fmap_18[15:0]) +
	( 16'sd 22208) * $signed(input_fmap_19[15:0]) +
	( 16'sd 19800) * $signed(input_fmap_20[15:0]) +
	( 9'sd 223) * $signed(input_fmap_21[15:0]) +
	( 15'sd 10575) * $signed(input_fmap_22[15:0]) +
	( 13'sd 2199) * $signed(input_fmap_23[15:0]) +
	( 16'sd 30231) * $signed(input_fmap_24[15:0]) +
	( 16'sd 30629) * $signed(input_fmap_25[15:0]) +
	( 14'sd 6097) * $signed(input_fmap_26[15:0]) +
	( 16'sd 19252) * $signed(input_fmap_27[15:0]) +
	( 15'sd 11797) * $signed(input_fmap_28[15:0]) +
	( 16'sd 18869) * $signed(input_fmap_29[15:0]) +
	( 16'sd 29991) * $signed(input_fmap_30[15:0]) +
	( 15'sd 12775) * $signed(input_fmap_31[15:0]) +
	( 15'sd 12094) * $signed(input_fmap_32[15:0]) +
	( 14'sd 5724) * $signed(input_fmap_33[15:0]) +
	( 15'sd 14416) * $signed(input_fmap_34[15:0]) +
	( 16'sd 24442) * $signed(input_fmap_35[15:0]) +
	( 16'sd 26914) * $signed(input_fmap_36[15:0]) +
	( 14'sd 7183) * $signed(input_fmap_37[15:0]) +
	( 16'sd 25519) * $signed(input_fmap_38[15:0]) +
	( 15'sd 9086) * $signed(input_fmap_39[15:0]) +
	( 16'sd 30285) * $signed(input_fmap_40[15:0]) +
	( 16'sd 25985) * $signed(input_fmap_41[15:0]) +
	( 16'sd 31782) * $signed(input_fmap_42[15:0]) +
	( 13'sd 2433) * $signed(input_fmap_43[15:0]) +
	( 16'sd 17554) * $signed(input_fmap_44[15:0]) +
	( 16'sd 32734) * $signed(input_fmap_45[15:0]) +
	( 14'sd 5838) * $signed(input_fmap_46[15:0]) +
	( 15'sd 14122) * $signed(input_fmap_47[15:0]) +
	( 16'sd 22767) * $signed(input_fmap_48[15:0]) +
	( 16'sd 22051) * $signed(input_fmap_49[15:0]) +
	( 16'sd 32445) * $signed(input_fmap_50[15:0]) +
	( 16'sd 27516) * $signed(input_fmap_51[15:0]) +
	( 16'sd 27870) * $signed(input_fmap_52[15:0]) +
	( 14'sd 5702) * $signed(input_fmap_53[15:0]) +
	( 16'sd 25116) * $signed(input_fmap_54[15:0]) +
	( 14'sd 5014) * $signed(input_fmap_55[15:0]) +
	( 16'sd 22706) * $signed(input_fmap_56[15:0]) +
	( 14'sd 5545) * $signed(input_fmap_57[15:0]) +
	( 12'sd 1989) * $signed(input_fmap_58[15:0]) +
	( 16'sd 29661) * $signed(input_fmap_59[15:0]) +
	( 16'sd 23758) * $signed(input_fmap_60[15:0]) +
	( 14'sd 5062) * $signed(input_fmap_61[15:0]) +
	( 16'sd 26985) * $signed(input_fmap_62[15:0]) +
	( 16'sd 21133) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_70;
assign conv_mac_70 = 
	( 16'sd 28001) * $signed(input_fmap_0[15:0]) +
	( 16'sd 21348) * $signed(input_fmap_1[15:0]) +
	( 16'sd 28232) * $signed(input_fmap_2[15:0]) +
	( 15'sd 11398) * $signed(input_fmap_3[15:0]) +
	( 16'sd 26906) * $signed(input_fmap_4[15:0]) +
	( 16'sd 21728) * $signed(input_fmap_5[15:0]) +
	( 15'sd 15361) * $signed(input_fmap_6[15:0]) +
	( 13'sd 3924) * $signed(input_fmap_7[15:0]) +
	( 15'sd 13245) * $signed(input_fmap_8[15:0]) +
	( 16'sd 28434) * $signed(input_fmap_9[15:0]) +
	( 14'sd 4396) * $signed(input_fmap_10[15:0]) +
	( 15'sd 15283) * $signed(input_fmap_11[15:0]) +
	( 11'sd 583) * $signed(input_fmap_12[15:0]) +
	( 16'sd 32655) * $signed(input_fmap_13[15:0]) +
	( 16'sd 26293) * $signed(input_fmap_14[15:0]) +
	( 16'sd 24955) * $signed(input_fmap_15[15:0]) +
	( 11'sd 735) * $signed(input_fmap_16[15:0]) +
	( 16'sd 26256) * $signed(input_fmap_17[15:0]) +
	( 15'sd 8832) * $signed(input_fmap_18[15:0]) +
	( 15'sd 8968) * $signed(input_fmap_19[15:0]) +
	( 16'sd 21214) * $signed(input_fmap_20[15:0]) +
	( 15'sd 8248) * $signed(input_fmap_21[15:0]) +
	( 12'sd 1315) * $signed(input_fmap_22[15:0]) +
	( 16'sd 25779) * $signed(input_fmap_23[15:0]) +
	( 15'sd 14482) * $signed(input_fmap_24[15:0]) +
	( 16'sd 18361) * $signed(input_fmap_25[15:0]) +
	( 15'sd 10384) * $signed(input_fmap_26[15:0]) +
	( 12'sd 2022) * $signed(input_fmap_27[15:0]) +
	( 15'sd 16000) * $signed(input_fmap_28[15:0]) +
	( 16'sd 28438) * $signed(input_fmap_29[15:0]) +
	( 16'sd 31237) * $signed(input_fmap_30[15:0]) +
	( 16'sd 29533) * $signed(input_fmap_31[15:0]) +
	( 16'sd 22440) * $signed(input_fmap_32[15:0]) +
	( 16'sd 21245) * $signed(input_fmap_33[15:0]) +
	( 12'sd 2039) * $signed(input_fmap_34[15:0]) +
	( 15'sd 12593) * $signed(input_fmap_35[15:0]) +
	( 16'sd 31667) * $signed(input_fmap_36[15:0]) +
	( 14'sd 6206) * $signed(input_fmap_37[15:0]) +
	( 13'sd 3437) * $signed(input_fmap_38[15:0]) +
	( 16'sd 27449) * $signed(input_fmap_39[15:0]) +
	( 16'sd 26728) * $signed(input_fmap_40[15:0]) +
	( 16'sd 17292) * $signed(input_fmap_41[15:0]) +
	( 16'sd 24419) * $signed(input_fmap_42[15:0]) +
	( 16'sd 22958) * $signed(input_fmap_43[15:0]) +
	( 16'sd 26883) * $signed(input_fmap_44[15:0]) +
	( 16'sd 28639) * $signed(input_fmap_45[15:0]) +
	( 14'sd 5287) * $signed(input_fmap_46[15:0]) +
	( 15'sd 10756) * $signed(input_fmap_47[15:0]) +
	( 16'sd 24791) * $signed(input_fmap_48[15:0]) +
	( 15'sd 14318) * $signed(input_fmap_49[15:0]) +
	( 15'sd 13372) * $signed(input_fmap_50[15:0]) +
	( 16'sd 19158) * $signed(input_fmap_51[15:0]) +
	( 16'sd 32448) * $signed(input_fmap_52[15:0]) +
	( 14'sd 6550) * $signed(input_fmap_53[15:0]) +
	( 15'sd 12186) * $signed(input_fmap_54[15:0]) +
	( 15'sd 8303) * $signed(input_fmap_55[15:0]) +
	( 16'sd 25185) * $signed(input_fmap_56[15:0]) +
	( 16'sd 32001) * $signed(input_fmap_57[15:0]) +
	( 15'sd 15705) * $signed(input_fmap_58[15:0]) +
	( 14'sd 5181) * $signed(input_fmap_59[15:0]) +
	( 16'sd 26703) * $signed(input_fmap_60[15:0]) +
	( 15'sd 16150) * $signed(input_fmap_61[15:0]) +
	( 15'sd 11505) * $signed(input_fmap_62[15:0]) +
	( 14'sd 5508) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_71;
assign conv_mac_71 = 
	( 16'sd 17540) * $signed(input_fmap_0[15:0]) +
	( 16'sd 31944) * $signed(input_fmap_1[15:0]) +
	( 14'sd 6285) * $signed(input_fmap_2[15:0]) +
	( 16'sd 21841) * $signed(input_fmap_3[15:0]) +
	( 16'sd 21617) * $signed(input_fmap_4[15:0]) +
	( 14'sd 6329) * $signed(input_fmap_5[15:0]) +
	( 16'sd 24227) * $signed(input_fmap_6[15:0]) +
	( 16'sd 17996) * $signed(input_fmap_7[15:0]) +
	( 13'sd 2056) * $signed(input_fmap_8[15:0]) +
	( 15'sd 9393) * $signed(input_fmap_9[15:0]) +
	( 15'sd 12771) * $signed(input_fmap_10[15:0]) +
	( 16'sd 17086) * $signed(input_fmap_11[15:0]) +
	( 13'sd 3634) * $signed(input_fmap_12[15:0]) +
	( 16'sd 24572) * $signed(input_fmap_13[15:0]) +
	( 16'sd 26215) * $signed(input_fmap_14[15:0]) +
	( 11'sd 949) * $signed(input_fmap_15[15:0]) +
	( 14'sd 5450) * $signed(input_fmap_16[15:0]) +
	( 14'sd 8176) * $signed(input_fmap_17[15:0]) +
	( 16'sd 21792) * $signed(input_fmap_18[15:0]) +
	( 14'sd 7685) * $signed(input_fmap_19[15:0]) +
	( 16'sd 25918) * $signed(input_fmap_20[15:0]) +
	( 16'sd 21324) * $signed(input_fmap_21[15:0]) +
	( 11'sd 704) * $signed(input_fmap_22[15:0]) +
	( 16'sd 19917) * $signed(input_fmap_23[15:0]) +
	( 15'sd 14511) * $signed(input_fmap_24[15:0]) +
	( 15'sd 11720) * $signed(input_fmap_25[15:0]) +
	( 16'sd 17465) * $signed(input_fmap_26[15:0]) +
	( 15'sd 13155) * $signed(input_fmap_27[15:0]) +
	( 16'sd 16964) * $signed(input_fmap_28[15:0]) +
	( 16'sd 20229) * $signed(input_fmap_29[15:0]) +
	( 16'sd 29950) * $signed(input_fmap_30[15:0]) +
	( 15'sd 13446) * $signed(input_fmap_31[15:0]) +
	( 15'sd 11578) * $signed(input_fmap_32[15:0]) +
	( 15'sd 15316) * $signed(input_fmap_33[15:0]) +
	( 16'sd 25878) * $signed(input_fmap_34[15:0]) +
	( 15'sd 9074) * $signed(input_fmap_35[15:0]) +
	( 7'sd 53) * $signed(input_fmap_36[15:0]) +
	( 16'sd 30520) * $signed(input_fmap_37[15:0]) +
	( 16'sd 18861) * $signed(input_fmap_38[15:0]) +
	( 16'sd 27836) * $signed(input_fmap_39[15:0]) +
	( 16'sd 19029) * $signed(input_fmap_40[15:0]) +
	( 15'sd 11196) * $signed(input_fmap_41[15:0]) +
	( 16'sd 17442) * $signed(input_fmap_42[15:0]) +
	( 16'sd 28077) * $signed(input_fmap_43[15:0]) +
	( 16'sd 26105) * $signed(input_fmap_44[15:0]) +
	( 16'sd 21089) * $signed(input_fmap_45[15:0]) +
	( 15'sd 11651) * $signed(input_fmap_46[15:0]) +
	( 15'sd 11233) * $signed(input_fmap_47[15:0]) +
	( 15'sd 15413) * $signed(input_fmap_48[15:0]) +
	( 14'sd 7672) * $signed(input_fmap_49[15:0]) +
	( 15'sd 15025) * $signed(input_fmap_50[15:0]) +
	( 16'sd 29397) * $signed(input_fmap_51[15:0]) +
	( 16'sd 27025) * $signed(input_fmap_52[15:0]) +
	( 16'sd 17957) * $signed(input_fmap_53[15:0]) +
	( 16'sd 32638) * $signed(input_fmap_54[15:0]) +
	( 16'sd 18151) * $signed(input_fmap_55[15:0]) +
	( 16'sd 19109) * $signed(input_fmap_56[15:0]) +
	( 16'sd 24694) * $signed(input_fmap_57[15:0]) +
	( 11'sd 959) * $signed(input_fmap_58[15:0]) +
	( 16'sd 21776) * $signed(input_fmap_59[15:0]) +
	( 16'sd 30458) * $signed(input_fmap_60[15:0]) +
	( 14'sd 7383) * $signed(input_fmap_61[15:0]) +
	( 13'sd 2159) * $signed(input_fmap_62[15:0]) +
	( 14'sd 6473) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_72;
assign conv_mac_72 = 
	( 16'sd 22083) * $signed(input_fmap_0[15:0]) +
	( 16'sd 19182) * $signed(input_fmap_1[15:0]) +
	( 15'sd 14360) * $signed(input_fmap_2[15:0]) +
	( 15'sd 13419) * $signed(input_fmap_3[15:0]) +
	( 14'sd 6016) * $signed(input_fmap_4[15:0]) +
	( 16'sd 29573) * $signed(input_fmap_5[15:0]) +
	( 16'sd 17497) * $signed(input_fmap_6[15:0]) +
	( 16'sd 19621) * $signed(input_fmap_7[15:0]) +
	( 16'sd 22655) * $signed(input_fmap_8[15:0]) +
	( 16'sd 30115) * $signed(input_fmap_9[15:0]) +
	( 11'sd 990) * $signed(input_fmap_10[15:0]) +
	( 14'sd 5420) * $signed(input_fmap_11[15:0]) +
	( 15'sd 12746) * $signed(input_fmap_12[15:0]) +
	( 16'sd 22272) * $signed(input_fmap_13[15:0]) +
	( 14'sd 6399) * $signed(input_fmap_14[15:0]) +
	( 16'sd 16933) * $signed(input_fmap_15[15:0]) +
	( 15'sd 12254) * $signed(input_fmap_16[15:0]) +
	( 16'sd 22536) * $signed(input_fmap_17[15:0]) +
	( 14'sd 7763) * $signed(input_fmap_18[15:0]) +
	( 16'sd 30577) * $signed(input_fmap_19[15:0]) +
	( 14'sd 6014) * $signed(input_fmap_20[15:0]) +
	( 16'sd 22239) * $signed(input_fmap_21[15:0]) +
	( 16'sd 18091) * $signed(input_fmap_22[15:0]) +
	( 15'sd 13944) * $signed(input_fmap_23[15:0]) +
	( 14'sd 4275) * $signed(input_fmap_24[15:0]) +
	( 16'sd 17932) * $signed(input_fmap_25[15:0]) +
	( 16'sd 29668) * $signed(input_fmap_26[15:0]) +
	( 15'sd 15726) * $signed(input_fmap_27[15:0]) +
	( 16'sd 25528) * $signed(input_fmap_28[15:0]) +
	( 12'sd 1266) * $signed(input_fmap_29[15:0]) +
	( 16'sd 25516) * $signed(input_fmap_30[15:0]) +
	( 16'sd 29888) * $signed(input_fmap_31[15:0]) +
	( 15'sd 11095) * $signed(input_fmap_32[15:0]) +
	( 16'sd 29894) * $signed(input_fmap_33[15:0]) +
	( 16'sd 28816) * $signed(input_fmap_34[15:0]) +
	( 16'sd 22944) * $signed(input_fmap_35[15:0]) +
	( 14'sd 7264) * $signed(input_fmap_36[15:0]) +
	( 16'sd 31604) * $signed(input_fmap_37[15:0]) +
	( 13'sd 2576) * $signed(input_fmap_38[15:0]) +
	( 14'sd 6373) * $signed(input_fmap_39[15:0]) +
	( 14'sd 4779) * $signed(input_fmap_40[15:0]) +
	( 16'sd 27108) * $signed(input_fmap_41[15:0]) +
	( 16'sd 24177) * $signed(input_fmap_42[15:0]) +
	( 15'sd 12680) * $signed(input_fmap_43[15:0]) +
	( 16'sd 26655) * $signed(input_fmap_44[15:0]) +
	( 16'sd 30767) * $signed(input_fmap_45[15:0]) +
	( 16'sd 18448) * $signed(input_fmap_46[15:0]) +
	( 16'sd 23315) * $signed(input_fmap_47[15:0]) +
	( 16'sd 20348) * $signed(input_fmap_48[15:0]) +
	( 15'sd 16030) * $signed(input_fmap_49[15:0]) +
	( 16'sd 29366) * $signed(input_fmap_50[15:0]) +
	( 16'sd 28816) * $signed(input_fmap_51[15:0]) +
	( 14'sd 7166) * $signed(input_fmap_52[15:0]) +
	( 14'sd 5256) * $signed(input_fmap_53[15:0]) +
	( 13'sd 2961) * $signed(input_fmap_54[15:0]) +
	( 16'sd 28239) * $signed(input_fmap_55[15:0]) +
	( 16'sd 26436) * $signed(input_fmap_56[15:0]) +
	( 16'sd 18012) * $signed(input_fmap_57[15:0]) +
	( 16'sd 25039) * $signed(input_fmap_58[15:0]) +
	( 16'sd 26801) * $signed(input_fmap_59[15:0]) +
	( 15'sd 15933) * $signed(input_fmap_60[15:0]) +
	( 16'sd 22282) * $signed(input_fmap_61[15:0]) +
	( 16'sd 28507) * $signed(input_fmap_62[15:0]) +
	( 16'sd 19801) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_73;
assign conv_mac_73 = 
	( 16'sd 24641) * $signed(input_fmap_0[15:0]) +
	( 16'sd 27768) * $signed(input_fmap_1[15:0]) +
	( 16'sd 23224) * $signed(input_fmap_2[15:0]) +
	( 14'sd 5646) * $signed(input_fmap_3[15:0]) +
	( 16'sd 20229) * $signed(input_fmap_4[15:0]) +
	( 16'sd 23944) * $signed(input_fmap_5[15:0]) +
	( 16'sd 16631) * $signed(input_fmap_6[15:0]) +
	( 16'sd 17979) * $signed(input_fmap_7[15:0]) +
	( 16'sd 19512) * $signed(input_fmap_8[15:0]) +
	( 16'sd 20865) * $signed(input_fmap_9[15:0]) +
	( 11'sd 647) * $signed(input_fmap_10[15:0]) +
	( 16'sd 21189) * $signed(input_fmap_11[15:0]) +
	( 16'sd 27100) * $signed(input_fmap_12[15:0]) +
	( 14'sd 5418) * $signed(input_fmap_13[15:0]) +
	( 16'sd 27818) * $signed(input_fmap_14[15:0]) +
	( 16'sd 25368) * $signed(input_fmap_15[15:0]) +
	( 15'sd 12930) * $signed(input_fmap_16[15:0]) +
	( 15'sd 9021) * $signed(input_fmap_17[15:0]) +
	( 16'sd 23124) * $signed(input_fmap_18[15:0]) +
	( 16'sd 27028) * $signed(input_fmap_19[15:0]) +
	( 15'sd 10071) * $signed(input_fmap_20[15:0]) +
	( 15'sd 11209) * $signed(input_fmap_21[15:0]) +
	( 16'sd 17533) * $signed(input_fmap_22[15:0]) +
	( 15'sd 13090) * $signed(input_fmap_23[15:0]) +
	( 16'sd 29485) * $signed(input_fmap_24[15:0]) +
	( 16'sd 32150) * $signed(input_fmap_25[15:0]) +
	( 15'sd 16321) * $signed(input_fmap_26[15:0]) +
	( 16'sd 31061) * $signed(input_fmap_27[15:0]) +
	( 16'sd 29674) * $signed(input_fmap_28[15:0]) +
	( 15'sd 9217) * $signed(input_fmap_29[15:0]) +
	( 15'sd 8263) * $signed(input_fmap_30[15:0]) +
	( 15'sd 13210) * $signed(input_fmap_31[15:0]) +
	( 16'sd 32045) * $signed(input_fmap_32[15:0]) +
	( 14'sd 5472) * $signed(input_fmap_33[15:0]) +
	( 16'sd 17377) * $signed(input_fmap_34[15:0]) +
	( 13'sd 3355) * $signed(input_fmap_35[15:0]) +
	( 16'sd 17195) * $signed(input_fmap_36[15:0]) +
	( 14'sd 6485) * $signed(input_fmap_37[15:0]) +
	( 13'sd 2326) * $signed(input_fmap_38[15:0]) +
	( 15'sd 12172) * $signed(input_fmap_39[15:0]) +
	( 16'sd 18204) * $signed(input_fmap_40[15:0]) +
	( 13'sd 3294) * $signed(input_fmap_41[15:0]) +
	( 16'sd 29175) * $signed(input_fmap_42[15:0]) +
	( 16'sd 20381) * $signed(input_fmap_43[15:0]) +
	( 16'sd 27185) * $signed(input_fmap_44[15:0]) +
	( 14'sd 6309) * $signed(input_fmap_45[15:0]) +
	( 15'sd 14199) * $signed(input_fmap_46[15:0]) +
	( 16'sd 19697) * $signed(input_fmap_47[15:0]) +
	( 16'sd 29627) * $signed(input_fmap_48[15:0]) +
	( 14'sd 7912) * $signed(input_fmap_49[15:0]) +
	( 13'sd 3140) * $signed(input_fmap_50[15:0]) +
	( 15'sd 8873) * $signed(input_fmap_51[15:0]) +
	( 15'sd 8990) * $signed(input_fmap_52[15:0]) +
	( 15'sd 13968) * $signed(input_fmap_53[15:0]) +
	( 16'sd 28436) * $signed(input_fmap_54[15:0]) +
	( 15'sd 12523) * $signed(input_fmap_55[15:0]) +
	( 16'sd 21079) * $signed(input_fmap_56[15:0]) +
	( 16'sd 18887) * $signed(input_fmap_57[15:0]) +
	( 7'sd 56) * $signed(input_fmap_58[15:0]) +
	( 16'sd 19379) * $signed(input_fmap_59[15:0]) +
	( 15'sd 16108) * $signed(input_fmap_60[15:0]) +
	( 15'sd 11671) * $signed(input_fmap_61[15:0]) +
	( 15'sd 15679) * $signed(input_fmap_62[15:0]) +
	( 15'sd 9658) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_74;
assign conv_mac_74 = 
	( 16'sd 30638) * $signed(input_fmap_0[15:0]) +
	( 16'sd 28551) * $signed(input_fmap_1[15:0]) +
	( 16'sd 32443) * $signed(input_fmap_2[15:0]) +
	( 16'sd 27709) * $signed(input_fmap_3[15:0]) +
	( 16'sd 20472) * $signed(input_fmap_4[15:0]) +
	( 13'sd 3075) * $signed(input_fmap_5[15:0]) +
	( 13'sd 3407) * $signed(input_fmap_6[15:0]) +
	( 16'sd 19326) * $signed(input_fmap_7[15:0]) +
	( 16'sd 25707) * $signed(input_fmap_8[15:0]) +
	( 16'sd 31066) * $signed(input_fmap_9[15:0]) +
	( 16'sd 19244) * $signed(input_fmap_10[15:0]) +
	( 16'sd 31105) * $signed(input_fmap_11[15:0]) +
	( 14'sd 4843) * $signed(input_fmap_12[15:0]) +
	( 16'sd 20782) * $signed(input_fmap_13[15:0]) +
	( 16'sd 27875) * $signed(input_fmap_14[15:0]) +
	( 15'sd 14290) * $signed(input_fmap_15[15:0]) +
	( 15'sd 13576) * $signed(input_fmap_16[15:0]) +
	( 14'sd 7994) * $signed(input_fmap_17[15:0]) +
	( 16'sd 31850) * $signed(input_fmap_18[15:0]) +
	( 14'sd 8102) * $signed(input_fmap_19[15:0]) +
	( 14'sd 4510) * $signed(input_fmap_20[15:0]) +
	( 11'sd 583) * $signed(input_fmap_21[15:0]) +
	( 15'sd 9280) * $signed(input_fmap_22[15:0]) +
	( 13'sd 2993) * $signed(input_fmap_23[15:0]) +
	( 16'sd 18638) * $signed(input_fmap_24[15:0]) +
	( 16'sd 24970) * $signed(input_fmap_25[15:0]) +
	( 14'sd 4163) * $signed(input_fmap_26[15:0]) +
	( 13'sd 3901) * $signed(input_fmap_27[15:0]) +
	( 16'sd 27314) * $signed(input_fmap_28[15:0]) +
	( 9'sd 150) * $signed(input_fmap_29[15:0]) +
	( 16'sd 18690) * $signed(input_fmap_30[15:0]) +
	( 15'sd 10752) * $signed(input_fmap_31[15:0]) +
	( 16'sd 19085) * $signed(input_fmap_32[15:0]) +
	( 16'sd 21010) * $signed(input_fmap_33[15:0]) +
	( 16'sd 17185) * $signed(input_fmap_34[15:0]) +
	( 16'sd 23865) * $signed(input_fmap_35[15:0]) +
	( 14'sd 6250) * $signed(input_fmap_36[15:0]) +
	( 12'sd 1421) * $signed(input_fmap_37[15:0]) +
	( 15'sd 11817) * $signed(input_fmap_38[15:0]) +
	( 16'sd 26068) * $signed(input_fmap_39[15:0]) +
	( 15'sd 13535) * $signed(input_fmap_40[15:0]) +
	( 14'sd 6560) * $signed(input_fmap_41[15:0]) +
	( 15'sd 9878) * $signed(input_fmap_42[15:0]) +
	( 16'sd 23931) * $signed(input_fmap_43[15:0]) +
	( 16'sd 19917) * $signed(input_fmap_44[15:0]) +
	( 16'sd 30737) * $signed(input_fmap_45[15:0]) +
	( 16'sd 25838) * $signed(input_fmap_46[15:0]) +
	( 15'sd 11764) * $signed(input_fmap_47[15:0]) +
	( 16'sd 26365) * $signed(input_fmap_48[15:0]) +
	( 16'sd 19847) * $signed(input_fmap_49[15:0]) +
	( 13'sd 3469) * $signed(input_fmap_50[15:0]) +
	( 13'sd 3985) * $signed(input_fmap_51[15:0]) +
	( 16'sd 27800) * $signed(input_fmap_52[15:0]) +
	( 16'sd 24295) * $signed(input_fmap_53[15:0]) +
	( 16'sd 26873) * $signed(input_fmap_54[15:0]) +
	( 11'sd 924) * $signed(input_fmap_55[15:0]) +
	( 16'sd 24356) * $signed(input_fmap_56[15:0]) +
	( 13'sd 2499) * $signed(input_fmap_57[15:0]) +
	( 16'sd 27801) * $signed(input_fmap_58[15:0]) +
	( 16'sd 25574) * $signed(input_fmap_59[15:0]) +
	( 15'sd 12353) * $signed(input_fmap_60[15:0]) +
	( 14'sd 4321) * $signed(input_fmap_61[15:0]) +
	( 15'sd 11043) * $signed(input_fmap_62[15:0]) +
	( 12'sd 1910) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_75;
assign conv_mac_75 = 
	( 16'sd 18589) * $signed(input_fmap_0[15:0]) +
	( 16'sd 18355) * $signed(input_fmap_1[15:0]) +
	( 16'sd 19801) * $signed(input_fmap_2[15:0]) +
	( 15'sd 9243) * $signed(input_fmap_3[15:0]) +
	( 16'sd 18294) * $signed(input_fmap_4[15:0]) +
	( 15'sd 15458) * $signed(input_fmap_5[15:0]) +
	( 14'sd 4753) * $signed(input_fmap_6[15:0]) +
	( 15'sd 10160) * $signed(input_fmap_7[15:0]) +
	( 16'sd 27922) * $signed(input_fmap_8[15:0]) +
	( 12'sd 1486) * $signed(input_fmap_9[15:0]) +
	( 16'sd 19907) * $signed(input_fmap_10[15:0]) +
	( 14'sd 5793) * $signed(input_fmap_11[15:0]) +
	( 16'sd 30522) * $signed(input_fmap_12[15:0]) +
	( 14'sd 6882) * $signed(input_fmap_13[15:0]) +
	( 16'sd 22888) * $signed(input_fmap_14[15:0]) +
	( 16'sd 17709) * $signed(input_fmap_15[15:0]) +
	( 15'sd 12118) * $signed(input_fmap_16[15:0]) +
	( 15'sd 12092) * $signed(input_fmap_17[15:0]) +
	( 16'sd 19219) * $signed(input_fmap_18[15:0]) +
	( 16'sd 32752) * $signed(input_fmap_19[15:0]) +
	( 15'sd 16342) * $signed(input_fmap_20[15:0]) +
	( 8'sd 78) * $signed(input_fmap_21[15:0]) +
	( 13'sd 3593) * $signed(input_fmap_22[15:0]) +
	( 15'sd 12048) * $signed(input_fmap_23[15:0]) +
	( 16'sd 18519) * $signed(input_fmap_24[15:0]) +
	( 16'sd 27374) * $signed(input_fmap_25[15:0]) +
	( 15'sd 14690) * $signed(input_fmap_26[15:0]) +
	( 16'sd 16719) * $signed(input_fmap_27[15:0]) +
	( 16'sd 30795) * $signed(input_fmap_28[15:0]) +
	( 16'sd 18450) * $signed(input_fmap_29[15:0]) +
	( 14'sd 7047) * $signed(input_fmap_30[15:0]) +
	( 16'sd 32249) * $signed(input_fmap_31[15:0]) +
	( 16'sd 27770) * $signed(input_fmap_32[15:0]) +
	( 16'sd 26385) * $signed(input_fmap_33[15:0]) +
	( 16'sd 32460) * $signed(input_fmap_34[15:0]) +
	( 15'sd 10130) * $signed(input_fmap_35[15:0]) +
	( 16'sd 29330) * $signed(input_fmap_36[15:0]) +
	( 15'sd 11476) * $signed(input_fmap_37[15:0]) +
	( 12'sd 1285) * $signed(input_fmap_38[15:0]) +
	( 15'sd 8390) * $signed(input_fmap_39[15:0]) +
	( 16'sd 30424) * $signed(input_fmap_40[15:0]) +
	( 16'sd 32581) * $signed(input_fmap_41[15:0]) +
	( 16'sd 24510) * $signed(input_fmap_42[15:0]) +
	( 12'sd 2042) * $signed(input_fmap_43[15:0]) +
	( 15'sd 11888) * $signed(input_fmap_44[15:0]) +
	( 16'sd 22884) * $signed(input_fmap_45[15:0]) +
	( 15'sd 11473) * $signed(input_fmap_46[15:0]) +
	( 15'sd 12657) * $signed(input_fmap_47[15:0]) +
	( 16'sd 28687) * $signed(input_fmap_48[15:0]) +
	( 15'sd 14076) * $signed(input_fmap_49[15:0]) +
	( 16'sd 29371) * $signed(input_fmap_50[15:0]) +
	( 16'sd 19605) * $signed(input_fmap_51[15:0]) +
	( 16'sd 25414) * $signed(input_fmap_52[15:0]) +
	( 16'sd 19994) * $signed(input_fmap_53[15:0]) +
	( 16'sd 26378) * $signed(input_fmap_54[15:0]) +
	( 16'sd 25107) * $signed(input_fmap_55[15:0]) +
	( 12'sd 1490) * $signed(input_fmap_56[15:0]) +
	( 15'sd 10217) * $signed(input_fmap_57[15:0]) +
	( 16'sd 29355) * $signed(input_fmap_58[15:0]) +
	( 15'sd 10057) * $signed(input_fmap_59[15:0]) +
	( 14'sd 6147) * $signed(input_fmap_60[15:0]) +
	( 15'sd 13882) * $signed(input_fmap_61[15:0]) +
	( 12'sd 1650) * $signed(input_fmap_62[15:0]) +
	( 16'sd 16762) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_76;
assign conv_mac_76 = 
	( 16'sd 28688) * $signed(input_fmap_0[15:0]) +
	( 16'sd 18348) * $signed(input_fmap_1[15:0]) +
	( 14'sd 6607) * $signed(input_fmap_2[15:0]) +
	( 16'sd 29121) * $signed(input_fmap_3[15:0]) +
	( 12'sd 1609) * $signed(input_fmap_4[15:0]) +
	( 16'sd 32694) * $signed(input_fmap_5[15:0]) +
	( 15'sd 13199) * $signed(input_fmap_6[15:0]) +
	( 16'sd 18586) * $signed(input_fmap_7[15:0]) +
	( 15'sd 14684) * $signed(input_fmap_8[15:0]) +
	( 15'sd 16191) * $signed(input_fmap_9[15:0]) +
	( 16'sd 32131) * $signed(input_fmap_10[15:0]) +
	( 16'sd 30707) * $signed(input_fmap_11[15:0]) +
	( 11'sd 870) * $signed(input_fmap_12[15:0]) +
	( 15'sd 14399) * $signed(input_fmap_13[15:0]) +
	( 16'sd 24007) * $signed(input_fmap_14[15:0]) +
	( 16'sd 22271) * $signed(input_fmap_15[15:0]) +
	( 16'sd 26854) * $signed(input_fmap_16[15:0]) +
	( 15'sd 12493) * $signed(input_fmap_17[15:0]) +
	( 16'sd 28736) * $signed(input_fmap_18[15:0]) +
	( 16'sd 27968) * $signed(input_fmap_19[15:0]) +
	( 16'sd 30334) * $signed(input_fmap_20[15:0]) +
	( 16'sd 18924) * $signed(input_fmap_21[15:0]) +
	( 16'sd 31456) * $signed(input_fmap_22[15:0]) +
	( 16'sd 19953) * $signed(input_fmap_23[15:0]) +
	( 15'sd 10463) * $signed(input_fmap_24[15:0]) +
	( 16'sd 26961) * $signed(input_fmap_25[15:0]) +
	( 16'sd 22429) * $signed(input_fmap_26[15:0]) +
	( 16'sd 25055) * $signed(input_fmap_27[15:0]) +
	( 16'sd 18564) * $signed(input_fmap_28[15:0]) +
	( 16'sd 21362) * $signed(input_fmap_29[15:0]) +
	( 14'sd 7586) * $signed(input_fmap_30[15:0]) +
	( 9'sd 190) * $signed(input_fmap_31[15:0]) +
	( 13'sd 2058) * $signed(input_fmap_32[15:0]) +
	( 15'sd 10113) * $signed(input_fmap_33[15:0]) +
	( 14'sd 6664) * $signed(input_fmap_34[15:0]) +
	( 15'sd 13459) * $signed(input_fmap_35[15:0]) +
	( 16'sd 24977) * $signed(input_fmap_36[15:0]) +
	( 16'sd 26991) * $signed(input_fmap_37[15:0]) +
	( 15'sd 14215) * $signed(input_fmap_38[15:0]) +
	( 14'sd 6922) * $signed(input_fmap_39[15:0]) +
	( 15'sd 12127) * $signed(input_fmap_40[15:0]) +
	( 16'sd 25468) * $signed(input_fmap_41[15:0]) +
	( 16'sd 31511) * $signed(input_fmap_42[15:0]) +
	( 16'sd 28953) * $signed(input_fmap_43[15:0]) +
	( 14'sd 6874) * $signed(input_fmap_44[15:0]) +
	( 15'sd 9025) * $signed(input_fmap_45[15:0]) +
	( 14'sd 5387) * $signed(input_fmap_46[15:0]) +
	( 16'sd 20891) * $signed(input_fmap_47[15:0]) +
	( 16'sd 22012) * $signed(input_fmap_48[15:0]) +
	( 15'sd 11097) * $signed(input_fmap_49[15:0]) +
	( 16'sd 16782) * $signed(input_fmap_50[15:0]) +
	( 13'sd 2101) * $signed(input_fmap_51[15:0]) +
	( 14'sd 6640) * $signed(input_fmap_52[15:0]) +
	( 11'sd 901) * $signed(input_fmap_53[15:0]) +
	( 15'sd 11064) * $signed(input_fmap_54[15:0]) +
	( 15'sd 10617) * $signed(input_fmap_55[15:0]) +
	( 16'sd 23745) * $signed(input_fmap_56[15:0]) +
	( 16'sd 32494) * $signed(input_fmap_57[15:0]) +
	( 16'sd 26398) * $signed(input_fmap_58[15:0]) +
	( 15'sd 14304) * $signed(input_fmap_59[15:0]) +
	( 15'sd 10636) * $signed(input_fmap_60[15:0]) +
	( 16'sd 24076) * $signed(input_fmap_61[15:0]) +
	( 12'sd 1423) * $signed(input_fmap_62[15:0]) +
	( 16'sd 29980) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_77;
assign conv_mac_77 = 
	( 15'sd 8586) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6710) * $signed(input_fmap_1[15:0]) +
	( 16'sd 31612) * $signed(input_fmap_2[15:0]) +
	( 13'sd 3392) * $signed(input_fmap_3[15:0]) +
	( 15'sd 14237) * $signed(input_fmap_4[15:0]) +
	( 16'sd 21634) * $signed(input_fmap_5[15:0]) +
	( 13'sd 3197) * $signed(input_fmap_6[15:0]) +
	( 16'sd 29501) * $signed(input_fmap_7[15:0]) +
	( 16'sd 30501) * $signed(input_fmap_8[15:0]) +
	( 15'sd 11982) * $signed(input_fmap_9[15:0]) +
	( 15'sd 15907) * $signed(input_fmap_10[15:0]) +
	( 16'sd 19015) * $signed(input_fmap_11[15:0]) +
	( 16'sd 16470) * $signed(input_fmap_12[15:0]) +
	( 16'sd 26525) * $signed(input_fmap_13[15:0]) +
	( 16'sd 19525) * $signed(input_fmap_14[15:0]) +
	( 16'sd 17420) * $signed(input_fmap_15[15:0]) +
	( 16'sd 19893) * $signed(input_fmap_16[15:0]) +
	( 14'sd 5310) * $signed(input_fmap_17[15:0]) +
	( 16'sd 20741) * $signed(input_fmap_18[15:0]) +
	( 15'sd 13623) * $signed(input_fmap_19[15:0]) +
	( 14'sd 6199) * $signed(input_fmap_20[15:0]) +
	( 14'sd 4213) * $signed(input_fmap_21[15:0]) +
	( 16'sd 21480) * $signed(input_fmap_22[15:0]) +
	( 9'sd 233) * $signed(input_fmap_23[15:0]) +
	( 16'sd 28700) * $signed(input_fmap_24[15:0]) +
	( 16'sd 19295) * $signed(input_fmap_25[15:0]) +
	( 16'sd 27628) * $signed(input_fmap_26[15:0]) +
	( 14'sd 4157) * $signed(input_fmap_27[15:0]) +
	( 16'sd 23126) * $signed(input_fmap_28[15:0]) +
	( 12'sd 1515) * $signed(input_fmap_29[15:0]) +
	( 14'sd 7260) * $signed(input_fmap_30[15:0]) +
	( 16'sd 20774) * $signed(input_fmap_31[15:0]) +
	( 13'sd 3669) * $signed(input_fmap_32[15:0]) +
	( 14'sd 4299) * $signed(input_fmap_33[15:0]) +
	( 16'sd 32630) * $signed(input_fmap_34[15:0]) +
	( 16'sd 18316) * $signed(input_fmap_35[15:0]) +
	( 16'sd 27408) * $signed(input_fmap_36[15:0]) +
	( 15'sd 10412) * $signed(input_fmap_37[15:0]) +
	( 15'sd 11007) * $signed(input_fmap_38[15:0]) +
	( 14'sd 5476) * $signed(input_fmap_39[15:0]) +
	( 14'sd 6924) * $signed(input_fmap_40[15:0]) +
	( 16'sd 28609) * $signed(input_fmap_41[15:0]) +
	( 14'sd 6533) * $signed(input_fmap_42[15:0]) +
	( 15'sd 10886) * $signed(input_fmap_43[15:0]) +
	( 15'sd 14154) * $signed(input_fmap_44[15:0]) +
	( 16'sd 30856) * $signed(input_fmap_45[15:0]) +
	( 14'sd 4422) * $signed(input_fmap_46[15:0]) +
	( 16'sd 28086) * $signed(input_fmap_47[15:0]) +
	( 16'sd 19025) * $signed(input_fmap_48[15:0]) +
	( 15'sd 11415) * $signed(input_fmap_49[15:0]) +
	( 15'sd 10170) * $signed(input_fmap_50[15:0]) +
	( 15'sd 15094) * $signed(input_fmap_51[15:0]) +
	( 15'sd 13792) * $signed(input_fmap_52[15:0]) +
	( 14'sd 6066) * $signed(input_fmap_53[15:0]) +
	( 14'sd 7716) * $signed(input_fmap_54[15:0]) +
	( 16'sd 18632) * $signed(input_fmap_55[15:0]) +
	( 16'sd 29062) * $signed(input_fmap_56[15:0]) +
	( 16'sd 22763) * $signed(input_fmap_57[15:0]) +
	( 16'sd 27815) * $signed(input_fmap_58[15:0]) +
	( 16'sd 31901) * $signed(input_fmap_59[15:0]) +
	( 16'sd 22244) * $signed(input_fmap_60[15:0]) +
	( 15'sd 14980) * $signed(input_fmap_61[15:0]) +
	( 15'sd 9173) * $signed(input_fmap_62[15:0]) +
	( 16'sd 16494) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_78;
assign conv_mac_78 = 
	( 16'sd 27351) * $signed(input_fmap_0[15:0]) +
	( 15'sd 15892) * $signed(input_fmap_1[15:0]) +
	( 14'sd 7167) * $signed(input_fmap_2[15:0]) +
	( 11'sd 1015) * $signed(input_fmap_3[15:0]) +
	( 14'sd 5258) * $signed(input_fmap_4[15:0]) +
	( 14'sd 5617) * $signed(input_fmap_5[15:0]) +
	( 15'sd 15172) * $signed(input_fmap_6[15:0]) +
	( 13'sd 3712) * $signed(input_fmap_7[15:0]) +
	( 16'sd 27141) * $signed(input_fmap_8[15:0]) +
	( 16'sd 32685) * $signed(input_fmap_9[15:0]) +
	( 16'sd 31730) * $signed(input_fmap_10[15:0]) +
	( 14'sd 6681) * $signed(input_fmap_11[15:0]) +
	( 16'sd 19551) * $signed(input_fmap_12[15:0]) +
	( 14'sd 4487) * $signed(input_fmap_13[15:0]) +
	( 16'sd 27185) * $signed(input_fmap_14[15:0]) +
	( 15'sd 15331) * $signed(input_fmap_15[15:0]) +
	( 15'sd 13175) * $signed(input_fmap_16[15:0]) +
	( 16'sd 23880) * $signed(input_fmap_17[15:0]) +
	( 16'sd 31198) * $signed(input_fmap_18[15:0]) +
	( 15'sd 10484) * $signed(input_fmap_19[15:0]) +
	( 12'sd 1061) * $signed(input_fmap_20[15:0]) +
	( 13'sd 3268) * $signed(input_fmap_21[15:0]) +
	( 11'sd 556) * $signed(input_fmap_22[15:0]) +
	( 16'sd 19735) * $signed(input_fmap_23[15:0]) +
	( 16'sd 30486) * $signed(input_fmap_24[15:0]) +
	( 16'sd 16611) * $signed(input_fmap_25[15:0]) +
	( 16'sd 31599) * $signed(input_fmap_26[15:0]) +
	( 16'sd 26793) * $signed(input_fmap_27[15:0]) +
	( 16'sd 32234) * $signed(input_fmap_28[15:0]) +
	( 16'sd 28335) * $signed(input_fmap_29[15:0]) +
	( 15'sd 8231) * $signed(input_fmap_30[15:0]) +
	( 15'sd 13756) * $signed(input_fmap_31[15:0]) +
	( 14'sd 7562) * $signed(input_fmap_32[15:0]) +
	( 16'sd 30509) * $signed(input_fmap_33[15:0]) +
	( 16'sd 28943) * $signed(input_fmap_34[15:0]) +
	( 16'sd 25243) * $signed(input_fmap_35[15:0]) +
	( 15'sd 13097) * $signed(input_fmap_36[15:0]) +
	( 14'sd 5748) * $signed(input_fmap_37[15:0]) +
	( 16'sd 31334) * $signed(input_fmap_38[15:0]) +
	( 11'sd 688) * $signed(input_fmap_39[15:0]) +
	( 15'sd 11496) * $signed(input_fmap_40[15:0]) +
	( 14'sd 7446) * $signed(input_fmap_41[15:0]) +
	( 16'sd 32067) * $signed(input_fmap_42[15:0]) +
	( 15'sd 8963) * $signed(input_fmap_43[15:0]) +
	( 16'sd 17767) * $signed(input_fmap_44[15:0]) +
	( 14'sd 7026) * $signed(input_fmap_45[15:0]) +
	( 16'sd 19726) * $signed(input_fmap_46[15:0]) +
	( 16'sd 31300) * $signed(input_fmap_47[15:0]) +
	( 16'sd 17874) * $signed(input_fmap_48[15:0]) +
	( 15'sd 15122) * $signed(input_fmap_49[15:0]) +
	( 15'sd 10301) * $signed(input_fmap_50[15:0]) +
	( 15'sd 14497) * $signed(input_fmap_51[15:0]) +
	( 13'sd 3160) * $signed(input_fmap_52[15:0]) +
	( 16'sd 25929) * $signed(input_fmap_53[15:0]) +
	( 14'sd 8008) * $signed(input_fmap_54[15:0]) +
	( 16'sd 16967) * $signed(input_fmap_55[15:0]) +
	( 15'sd 10216) * $signed(input_fmap_56[15:0]) +
	( 16'sd 32297) * $signed(input_fmap_57[15:0]) +
	( 15'sd 9235) * $signed(input_fmap_58[15:0]) +
	( 15'sd 15455) * $signed(input_fmap_59[15:0]) +
	( 16'sd 29640) * $signed(input_fmap_60[15:0]) +
	( 14'sd 5560) * $signed(input_fmap_61[15:0]) +
	( 15'sd 14234) * $signed(input_fmap_62[15:0]) +
	( 15'sd 15009) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_79;
assign conv_mac_79 = 
	( 13'sd 2250) * $signed(input_fmap_0[15:0]) +
	( 16'sd 27039) * $signed(input_fmap_1[15:0]) +
	( 16'sd 32563) * $signed(input_fmap_2[15:0]) +
	( 13'sd 3080) * $signed(input_fmap_3[15:0]) +
	( 15'sd 13409) * $signed(input_fmap_4[15:0]) +
	( 16'sd 22459) * $signed(input_fmap_5[15:0]) +
	( 12'sd 1303) * $signed(input_fmap_6[15:0]) +
	( 14'sd 7692) * $signed(input_fmap_7[15:0]) +
	( 16'sd 24524) * $signed(input_fmap_8[15:0]) +
	( 15'sd 14036) * $signed(input_fmap_9[15:0]) +
	( 13'sd 3279) * $signed(input_fmap_10[15:0]) +
	( 15'sd 9067) * $signed(input_fmap_11[15:0]) +
	( 13'sd 2925) * $signed(input_fmap_12[15:0]) +
	( 13'sd 2434) * $signed(input_fmap_13[15:0]) +
	( 13'sd 2507) * $signed(input_fmap_14[15:0]) +
	( 16'sd 19759) * $signed(input_fmap_15[15:0]) +
	( 15'sd 13859) * $signed(input_fmap_16[15:0]) +
	( 15'sd 10199) * $signed(input_fmap_17[15:0]) +
	( 14'sd 4547) * $signed(input_fmap_18[15:0]) +
	( 15'sd 10230) * $signed(input_fmap_19[15:0]) +
	( 13'sd 3961) * $signed(input_fmap_20[15:0]) +
	( 14'sd 7355) * $signed(input_fmap_21[15:0]) +
	( 16'sd 22186) * $signed(input_fmap_22[15:0]) +
	( 15'sd 9924) * $signed(input_fmap_23[15:0]) +
	( 15'sd 15940) * $signed(input_fmap_24[15:0]) +
	( 16'sd 22683) * $signed(input_fmap_25[15:0]) +
	( 16'sd 24453) * $signed(input_fmap_26[15:0]) +
	( 13'sd 3164) * $signed(input_fmap_27[15:0]) +
	( 16'sd 25694) * $signed(input_fmap_28[15:0]) +
	( 15'sd 12384) * $signed(input_fmap_29[15:0]) +
	( 16'sd 20863) * $signed(input_fmap_30[15:0]) +
	( 16'sd 31668) * $signed(input_fmap_31[15:0]) +
	( 15'sd 12410) * $signed(input_fmap_32[15:0]) +
	( 15'sd 16334) * $signed(input_fmap_33[15:0]) +
	( 14'sd 7393) * $signed(input_fmap_34[15:0]) +
	( 14'sd 4344) * $signed(input_fmap_35[15:0]) +
	( 16'sd 25578) * $signed(input_fmap_36[15:0]) +
	( 12'sd 1559) * $signed(input_fmap_37[15:0]) +
	( 15'sd 14053) * $signed(input_fmap_38[15:0]) +
	( 16'sd 27878) * $signed(input_fmap_39[15:0]) +
	( 16'sd 23039) * $signed(input_fmap_40[15:0]) +
	( 13'sd 2654) * $signed(input_fmap_41[15:0]) +
	( 16'sd 23000) * $signed(input_fmap_42[15:0]) +
	( 16'sd 29166) * $signed(input_fmap_43[15:0]) +
	( 13'sd 2850) * $signed(input_fmap_44[15:0]) +
	( 15'sd 12983) * $signed(input_fmap_45[15:0]) +
	( 16'sd 32055) * $signed(input_fmap_46[15:0]) +
	( 16'sd 24052) * $signed(input_fmap_47[15:0]) +
	( 16'sd 21111) * $signed(input_fmap_48[15:0]) +
	( 16'sd 18671) * $signed(input_fmap_49[15:0]) +
	( 12'sd 1879) * $signed(input_fmap_50[15:0]) +
	( 14'sd 7221) * $signed(input_fmap_51[15:0]) +
	( 16'sd 28239) * $signed(input_fmap_52[15:0]) +
	( 15'sd 11911) * $signed(input_fmap_53[15:0]) +
	( 16'sd 20614) * $signed(input_fmap_54[15:0]) +
	( 16'sd 19074) * $signed(input_fmap_55[15:0]) +
	( 16'sd 21723) * $signed(input_fmap_56[15:0]) +
	( 10'sd 297) * $signed(input_fmap_57[15:0]) +
	( 16'sd 27321) * $signed(input_fmap_58[15:0]) +
	( 13'sd 2657) * $signed(input_fmap_59[15:0]) +
	( 13'sd 3613) * $signed(input_fmap_60[15:0]) +
	( 16'sd 22600) * $signed(input_fmap_61[15:0]) +
	( 14'sd 6518) * $signed(input_fmap_62[15:0]) +
	( 15'sd 15199) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_80;
assign conv_mac_80 = 
	( 13'sd 3906) * $signed(input_fmap_0[15:0]) +
	( 14'sd 4395) * $signed(input_fmap_1[15:0]) +
	( 16'sd 30025) * $signed(input_fmap_2[15:0]) +
	( 15'sd 8806) * $signed(input_fmap_3[15:0]) +
	( 14'sd 5238) * $signed(input_fmap_4[15:0]) +
	( 12'sd 1920) * $signed(input_fmap_5[15:0]) +
	( 14'sd 6049) * $signed(input_fmap_6[15:0]) +
	( 14'sd 5103) * $signed(input_fmap_7[15:0]) +
	( 14'sd 6519) * $signed(input_fmap_8[15:0]) +
	( 16'sd 22104) * $signed(input_fmap_9[15:0]) +
	( 14'sd 6917) * $signed(input_fmap_10[15:0]) +
	( 16'sd 21487) * $signed(input_fmap_11[15:0]) +
	( 15'sd 13495) * $signed(input_fmap_12[15:0]) +
	( 16'sd 24390) * $signed(input_fmap_13[15:0]) +
	( 15'sd 14011) * $signed(input_fmap_14[15:0]) +
	( 16'sd 24017) * $signed(input_fmap_15[15:0]) +
	( 16'sd 23275) * $signed(input_fmap_16[15:0]) +
	( 16'sd 19481) * $signed(input_fmap_17[15:0]) +
	( 16'sd 25426) * $signed(input_fmap_18[15:0]) +
	( 16'sd 22554) * $signed(input_fmap_19[15:0]) +
	( 15'sd 14533) * $signed(input_fmap_20[15:0]) +
	( 15'sd 8904) * $signed(input_fmap_21[15:0]) +
	( 12'sd 1843) * $signed(input_fmap_22[15:0]) +
	( 16'sd 28425) * $signed(input_fmap_23[15:0]) +
	( 16'sd 25753) * $signed(input_fmap_24[15:0]) +
	( 16'sd 32138) * $signed(input_fmap_25[15:0]) +
	( 14'sd 4978) * $signed(input_fmap_26[15:0]) +
	( 16'sd 23520) * $signed(input_fmap_27[15:0]) +
	( 14'sd 4302) * $signed(input_fmap_28[15:0]) +
	( 16'sd 26280) * $signed(input_fmap_29[15:0]) +
	( 12'sd 1611) * $signed(input_fmap_30[15:0]) +
	( 13'sd 2418) * $signed(input_fmap_31[15:0]) +
	( 16'sd 30706) * $signed(input_fmap_32[15:0]) +
	( 15'sd 13769) * $signed(input_fmap_33[15:0]) +
	( 13'sd 2463) * $signed(input_fmap_34[15:0]) +
	( 8'sd 96) * $signed(input_fmap_35[15:0]) +
	( 14'sd 4859) * $signed(input_fmap_36[15:0]) +
	( 16'sd 32755) * $signed(input_fmap_37[15:0]) +
	( 16'sd 17221) * $signed(input_fmap_38[15:0]) +
	( 13'sd 3109) * $signed(input_fmap_39[15:0]) +
	( 16'sd 18336) * $signed(input_fmap_40[15:0]) +
	( 15'sd 13606) * $signed(input_fmap_41[15:0]) +
	( 15'sd 14608) * $signed(input_fmap_42[15:0]) +
	( 13'sd 2806) * $signed(input_fmap_43[15:0]) +
	( 15'sd 9136) * $signed(input_fmap_44[15:0]) +
	( 12'sd 1776) * $signed(input_fmap_45[15:0]) +
	( 16'sd 18442) * $signed(input_fmap_46[15:0]) +
	( 15'sd 13760) * $signed(input_fmap_47[15:0]) +
	( 16'sd 22752) * $signed(input_fmap_48[15:0]) +
	( 13'sd 3181) * $signed(input_fmap_49[15:0]) +
	( 13'sd 2135) * $signed(input_fmap_50[15:0]) +
	( 16'sd 27225) * $signed(input_fmap_51[15:0]) +
	( 15'sd 11679) * $signed(input_fmap_52[15:0]) +
	( 14'sd 7622) * $signed(input_fmap_53[15:0]) +
	( 15'sd 12688) * $signed(input_fmap_54[15:0]) +
	( 16'sd 32273) * $signed(input_fmap_55[15:0]) +
	( 10'sd 292) * $signed(input_fmap_56[15:0]) +
	( 16'sd 30125) * $signed(input_fmap_57[15:0]) +
	( 15'sd 12175) * $signed(input_fmap_58[15:0]) +
	( 14'sd 5082) * $signed(input_fmap_59[15:0]) +
	( 16'sd 23202) * $signed(input_fmap_60[15:0]) +
	( 16'sd 18434) * $signed(input_fmap_61[15:0]) +
	( 11'sd 706) * $signed(input_fmap_62[15:0]) +
	( 16'sd 31077) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_81;
assign conv_mac_81 = 
	( 16'sd 28891) * $signed(input_fmap_0[15:0]) +
	( 16'sd 30879) * $signed(input_fmap_1[15:0]) +
	( 14'sd 5340) * $signed(input_fmap_2[15:0]) +
	( 14'sd 7880) * $signed(input_fmap_3[15:0]) +
	( 16'sd 17192) * $signed(input_fmap_4[15:0]) +
	( 16'sd 26081) * $signed(input_fmap_5[15:0]) +
	( 13'sd 3483) * $signed(input_fmap_6[15:0]) +
	( 15'sd 11135) * $signed(input_fmap_7[15:0]) +
	( 15'sd 11780) * $signed(input_fmap_8[15:0]) +
	( 16'sd 17554) * $signed(input_fmap_9[15:0]) +
	( 14'sd 7626) * $signed(input_fmap_10[15:0]) +
	( 15'sd 12167) * $signed(input_fmap_11[15:0]) +
	( 14'sd 5197) * $signed(input_fmap_12[15:0]) +
	( 16'sd 21063) * $signed(input_fmap_13[15:0]) +
	( 15'sd 14566) * $signed(input_fmap_14[15:0]) +
	( 16'sd 27784) * $signed(input_fmap_15[15:0]) +
	( 15'sd 11715) * $signed(input_fmap_16[15:0]) +
	( 15'sd 12216) * $signed(input_fmap_17[15:0]) +
	( 16'sd 23010) * $signed(input_fmap_18[15:0]) +
	( 15'sd 12620) * $signed(input_fmap_19[15:0]) +
	( 14'sd 5469) * $signed(input_fmap_20[15:0]) +
	( 16'sd 16639) * $signed(input_fmap_21[15:0]) +
	( 13'sd 3016) * $signed(input_fmap_22[15:0]) +
	( 14'sd 5931) * $signed(input_fmap_23[15:0]) +
	( 16'sd 24459) * $signed(input_fmap_24[15:0]) +
	( 16'sd 31045) * $signed(input_fmap_25[15:0]) +
	( 15'sd 11341) * $signed(input_fmap_26[15:0]) +
	( 16'sd 27236) * $signed(input_fmap_27[15:0]) +
	( 16'sd 24989) * $signed(input_fmap_28[15:0]) +
	( 16'sd 30974) * $signed(input_fmap_29[15:0]) +
	( 14'sd 4356) * $signed(input_fmap_30[15:0]) +
	( 14'sd 6834) * $signed(input_fmap_31[15:0]) +
	( 15'sd 11062) * $signed(input_fmap_32[15:0]) +
	( 10'sd 454) * $signed(input_fmap_33[15:0]) +
	( 16'sd 17872) * $signed(input_fmap_34[15:0]) +
	( 14'sd 6457) * $signed(input_fmap_35[15:0]) +
	( 16'sd 24846) * $signed(input_fmap_36[15:0]) +
	( 15'sd 16025) * $signed(input_fmap_37[15:0]) +
	( 16'sd 23008) * $signed(input_fmap_38[15:0]) +
	( 16'sd 23900) * $signed(input_fmap_39[15:0]) +
	( 16'sd 20310) * $signed(input_fmap_40[15:0]) +
	( 16'sd 21345) * $signed(input_fmap_41[15:0]) +
	( 15'sd 13398) * $signed(input_fmap_42[15:0]) +
	( 16'sd 26020) * $signed(input_fmap_43[15:0]) +
	( 15'sd 12999) * $signed(input_fmap_44[15:0]) +
	( 16'sd 20252) * $signed(input_fmap_45[15:0]) +
	( 16'sd 20487) * $signed(input_fmap_46[15:0]) +
	( 14'sd 4468) * $signed(input_fmap_47[15:0]) +
	( 16'sd 29154) * $signed(input_fmap_48[15:0]) +
	( 13'sd 4071) * $signed(input_fmap_49[15:0]) +
	( 16'sd 20897) * $signed(input_fmap_50[15:0]) +
	( 15'sd 8750) * $signed(input_fmap_51[15:0]) +
	( 16'sd 19492) * $signed(input_fmap_52[15:0]) +
	( 15'sd 9630) * $signed(input_fmap_53[15:0]) +
	( 13'sd 3634) * $signed(input_fmap_54[15:0]) +
	( 15'sd 10452) * $signed(input_fmap_55[15:0]) +
	( 16'sd 16576) * $signed(input_fmap_56[15:0]) +
	( 16'sd 19397) * $signed(input_fmap_57[15:0]) +
	( 16'sd 24020) * $signed(input_fmap_58[15:0]) +
	( 16'sd 16802) * $signed(input_fmap_59[15:0]) +
	( 16'sd 24630) * $signed(input_fmap_60[15:0]) +
	( 16'sd 19955) * $signed(input_fmap_61[15:0]) +
	( 15'sd 15223) * $signed(input_fmap_62[15:0]) +
	( 15'sd 12933) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_82;
assign conv_mac_82 = 
	( 16'sd 21869) * $signed(input_fmap_0[15:0]) +
	( 15'sd 11209) * $signed(input_fmap_1[15:0]) +
	( 16'sd 27948) * $signed(input_fmap_2[15:0]) +
	( 16'sd 18857) * $signed(input_fmap_3[15:0]) +
	( 16'sd 26869) * $signed(input_fmap_4[15:0]) +
	( 16'sd 26143) * $signed(input_fmap_5[15:0]) +
	( 15'sd 15711) * $signed(input_fmap_6[15:0]) +
	( 16'sd 19877) * $signed(input_fmap_7[15:0]) +
	( 16'sd 25192) * $signed(input_fmap_8[15:0]) +
	( 15'sd 12222) * $signed(input_fmap_9[15:0]) +
	( 16'sd 32192) * $signed(input_fmap_10[15:0]) +
	( 15'sd 12439) * $signed(input_fmap_11[15:0]) +
	( 16'sd 24051) * $signed(input_fmap_12[15:0]) +
	( 16'sd 28821) * $signed(input_fmap_13[15:0]) +
	( 14'sd 8016) * $signed(input_fmap_14[15:0]) +
	( 14'sd 6943) * $signed(input_fmap_15[15:0]) +
	( 14'sd 5823) * $signed(input_fmap_16[15:0]) +
	( 11'sd 899) * $signed(input_fmap_17[15:0]) +
	( 16'sd 18527) * $signed(input_fmap_18[15:0]) +
	( 15'sd 11094) * $signed(input_fmap_19[15:0]) +
	( 16'sd 30154) * $signed(input_fmap_20[15:0]) +
	( 16'sd 24214) * $signed(input_fmap_21[15:0]) +
	( 15'sd 11993) * $signed(input_fmap_22[15:0]) +
	( 16'sd 21981) * $signed(input_fmap_23[15:0]) +
	( 12'sd 1880) * $signed(input_fmap_24[15:0]) +
	( 15'sd 10414) * $signed(input_fmap_25[15:0]) +
	( 16'sd 20766) * $signed(input_fmap_26[15:0]) +
	( 16'sd 23971) * $signed(input_fmap_27[15:0]) +
	( 16'sd 20685) * $signed(input_fmap_28[15:0]) +
	( 16'sd 25221) * $signed(input_fmap_29[15:0]) +
	( 12'sd 1894) * $signed(input_fmap_30[15:0]) +
	( 12'sd 1723) * $signed(input_fmap_31[15:0]) +
	( 15'sd 15069) * $signed(input_fmap_32[15:0]) +
	( 16'sd 31253) * $signed(input_fmap_33[15:0]) +
	( 16'sd 32066) * $signed(input_fmap_34[15:0]) +
	( 15'sd 10450) * $signed(input_fmap_35[15:0]) +
	( 16'sd 30302) * $signed(input_fmap_36[15:0]) +
	( 13'sd 3127) * $signed(input_fmap_37[15:0]) +
	( 16'sd 22651) * $signed(input_fmap_38[15:0]) +
	( 16'sd 26703) * $signed(input_fmap_39[15:0]) +
	( 13'sd 3839) * $signed(input_fmap_40[15:0]) +
	( 16'sd 21967) * $signed(input_fmap_41[15:0]) +
	( 14'sd 6663) * $signed(input_fmap_42[15:0]) +
	( 16'sd 17073) * $signed(input_fmap_43[15:0]) +
	( 16'sd 31032) * $signed(input_fmap_44[15:0]) +
	( 14'sd 4972) * $signed(input_fmap_45[15:0]) +
	( 16'sd 29756) * $signed(input_fmap_46[15:0]) +
	( 16'sd 31265) * $signed(input_fmap_47[15:0]) +
	( 15'sd 14333) * $signed(input_fmap_48[15:0]) +
	( 14'sd 6423) * $signed(input_fmap_49[15:0]) +
	( 16'sd 17445) * $signed(input_fmap_50[15:0]) +
	( 16'sd 28699) * $signed(input_fmap_51[15:0]) +
	( 15'sd 14229) * $signed(input_fmap_52[15:0]) +
	( 14'sd 7693) * $signed(input_fmap_53[15:0]) +
	( 16'sd 20122) * $signed(input_fmap_54[15:0]) +
	( 15'sd 15242) * $signed(input_fmap_55[15:0]) +
	( 13'sd 2227) * $signed(input_fmap_56[15:0]) +
	( 16'sd 31068) * $signed(input_fmap_57[15:0]) +
	( 14'sd 7615) * $signed(input_fmap_58[15:0]) +
	( 16'sd 20858) * $signed(input_fmap_59[15:0]) +
	( 16'sd 22058) * $signed(input_fmap_60[15:0]) +
	( 15'sd 8305) * $signed(input_fmap_61[15:0]) +
	( 16'sd 19654) * $signed(input_fmap_62[15:0]) +
	( 16'sd 27440) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_83;
assign conv_mac_83 = 
	( 16'sd 31166) * $signed(input_fmap_0[15:0]) +
	( 16'sd 32329) * $signed(input_fmap_1[15:0]) +
	( 13'sd 2534) * $signed(input_fmap_2[15:0]) +
	( 16'sd 28920) * $signed(input_fmap_3[15:0]) +
	( 12'sd 1347) * $signed(input_fmap_4[15:0]) +
	( 14'sd 5651) * $signed(input_fmap_5[15:0]) +
	( 10'sd 324) * $signed(input_fmap_6[15:0]) +
	( 16'sd 18726) * $signed(input_fmap_7[15:0]) +
	( 16'sd 17747) * $signed(input_fmap_8[15:0]) +
	( 16'sd 28502) * $signed(input_fmap_9[15:0]) +
	( 11'sd 924) * $signed(input_fmap_10[15:0]) +
	( 13'sd 3440) * $signed(input_fmap_11[15:0]) +
	( 16'sd 26680) * $signed(input_fmap_12[15:0]) +
	( 14'sd 4753) * $signed(input_fmap_13[15:0]) +
	( 16'sd 28440) * $signed(input_fmap_14[15:0]) +
	( 16'sd 28316) * $signed(input_fmap_15[15:0]) +
	( 16'sd 28668) * $signed(input_fmap_16[15:0]) +
	( 13'sd 3566) * $signed(input_fmap_17[15:0]) +
	( 12'sd 1452) * $signed(input_fmap_18[15:0]) +
	( 16'sd 18696) * $signed(input_fmap_19[15:0]) +
	( 16'sd 21694) * $signed(input_fmap_20[15:0]) +
	( 15'sd 16074) * $signed(input_fmap_21[15:0]) +
	( 16'sd 21190) * $signed(input_fmap_22[15:0]) +
	( 16'sd 32219) * $signed(input_fmap_23[15:0]) +
	( 9'sd 193) * $signed(input_fmap_24[15:0]) +
	( 16'sd 17889) * $signed(input_fmap_25[15:0]) +
	( 15'sd 13598) * $signed(input_fmap_26[15:0]) +
	( 16'sd 29994) * $signed(input_fmap_27[15:0]) +
	( 16'sd 28840) * $signed(input_fmap_28[15:0]) +
	( 16'sd 27273) * $signed(input_fmap_29[15:0]) +
	( 13'sd 4062) * $signed(input_fmap_30[15:0]) +
	( 15'sd 10050) * $signed(input_fmap_31[15:0]) +
	( 16'sd 25875) * $signed(input_fmap_32[15:0]) +
	( 15'sd 12235) * $signed(input_fmap_33[15:0]) +
	( 16'sd 24497) * $signed(input_fmap_34[15:0]) +
	( 14'sd 4380) * $signed(input_fmap_35[15:0]) +
	( 7'sd 59) * $signed(input_fmap_36[15:0]) +
	( 14'sd 6743) * $signed(input_fmap_37[15:0]) +
	( 14'sd 7898) * $signed(input_fmap_38[15:0]) +
	( 16'sd 32103) * $signed(input_fmap_39[15:0]) +
	( 16'sd 25844) * $signed(input_fmap_40[15:0]) +
	( 15'sd 14490) * $signed(input_fmap_41[15:0]) +
	( 16'sd 16576) * $signed(input_fmap_42[15:0]) +
	( 16'sd 28713) * $signed(input_fmap_43[15:0]) +
	( 15'sd 8255) * $signed(input_fmap_44[15:0]) +
	( 13'sd 2339) * $signed(input_fmap_45[15:0]) +
	( 13'sd 4084) * $signed(input_fmap_46[15:0]) +
	( 16'sd 23727) * $signed(input_fmap_47[15:0]) +
	( 16'sd 30589) * $signed(input_fmap_48[15:0]) +
	( 16'sd 21908) * $signed(input_fmap_49[15:0]) +
	( 16'sd 30855) * $signed(input_fmap_50[15:0]) +
	( 16'sd 26872) * $signed(input_fmap_51[15:0]) +
	( 13'sd 3693) * $signed(input_fmap_52[15:0]) +
	( 16'sd 20920) * $signed(input_fmap_53[15:0]) +
	( 14'sd 5074) * $signed(input_fmap_54[15:0]) +
	( 16'sd 22754) * $signed(input_fmap_55[15:0]) +
	( 16'sd 18010) * $signed(input_fmap_56[15:0]) +
	( 16'sd 31063) * $signed(input_fmap_57[15:0]) +
	( 16'sd 24658) * $signed(input_fmap_58[15:0]) +
	( 16'sd 25435) * $signed(input_fmap_59[15:0]) +
	( 16'sd 30255) * $signed(input_fmap_60[15:0]) +
	( 16'sd 29564) * $signed(input_fmap_61[15:0]) +
	( 15'sd 10873) * $signed(input_fmap_62[15:0]) +
	( 14'sd 5894) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_84;
assign conv_mac_84 = 
	( 16'sd 16493) * $signed(input_fmap_0[15:0]) +
	( 16'sd 28380) * $signed(input_fmap_1[15:0]) +
	( 16'sd 28200) * $signed(input_fmap_2[15:0]) +
	( 16'sd 22062) * $signed(input_fmap_3[15:0]) +
	( 12'sd 1851) * $signed(input_fmap_4[15:0]) +
	( 15'sd 10417) * $signed(input_fmap_5[15:0]) +
	( 14'sd 4693) * $signed(input_fmap_6[15:0]) +
	( 16'sd 23186) * $signed(input_fmap_7[15:0]) +
	( 16'sd 32612) * $signed(input_fmap_8[15:0]) +
	( 16'sd 31521) * $signed(input_fmap_9[15:0]) +
	( 15'sd 10064) * $signed(input_fmap_10[15:0]) +
	( 15'sd 11082) * $signed(input_fmap_11[15:0]) +
	( 16'sd 28884) * $signed(input_fmap_12[15:0]) +
	( 13'sd 3158) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13672) * $signed(input_fmap_14[15:0]) +
	( 15'sd 12494) * $signed(input_fmap_15[15:0]) +
	( 14'sd 4469) * $signed(input_fmap_16[15:0]) +
	( 16'sd 18699) * $signed(input_fmap_17[15:0]) +
	( 16'sd 25605) * $signed(input_fmap_18[15:0]) +
	( 14'sd 7356) * $signed(input_fmap_19[15:0]) +
	( 15'sd 14770) * $signed(input_fmap_20[15:0]) +
	( 16'sd 19883) * $signed(input_fmap_21[15:0]) +
	( 16'sd 29739) * $signed(input_fmap_22[15:0]) +
	( 16'sd 23703) * $signed(input_fmap_23[15:0]) +
	( 16'sd 25888) * $signed(input_fmap_24[15:0]) +
	( 13'sd 3208) * $signed(input_fmap_25[15:0]) +
	( 15'sd 12231) * $signed(input_fmap_26[15:0]) +
	( 16'sd 21582) * $signed(input_fmap_27[15:0]) +
	( 14'sd 6211) * $signed(input_fmap_28[15:0]) +
	( 16'sd 29533) * $signed(input_fmap_29[15:0]) +
	( 16'sd 21453) * $signed(input_fmap_30[15:0]) +
	( 13'sd 2785) * $signed(input_fmap_31[15:0]) +
	( 16'sd 21746) * $signed(input_fmap_32[15:0]) +
	( 16'sd 23494) * $signed(input_fmap_33[15:0]) +
	( 16'sd 21383) * $signed(input_fmap_34[15:0]) +
	( 15'sd 10452) * $signed(input_fmap_35[15:0]) +
	( 15'sd 13170) * $signed(input_fmap_36[15:0]) +
	( 11'sd 739) * $signed(input_fmap_37[15:0]) +
	( 16'sd 29216) * $signed(input_fmap_38[15:0]) +
	( 16'sd 25057) * $signed(input_fmap_39[15:0]) +
	( 15'sd 9015) * $signed(input_fmap_40[15:0]) +
	( 15'sd 8607) * $signed(input_fmap_41[15:0]) +
	( 15'sd 16099) * $signed(input_fmap_42[15:0]) +
	( 16'sd 17140) * $signed(input_fmap_43[15:0]) +
	( 16'sd 24178) * $signed(input_fmap_44[15:0]) +
	( 14'sd 7008) * $signed(input_fmap_45[15:0]) +
	( 16'sd 27927) * $signed(input_fmap_46[15:0]) +
	( 13'sd 4048) * $signed(input_fmap_47[15:0]) +
	( 16'sd 27415) * $signed(input_fmap_48[15:0]) +
	( 15'sd 8550) * $signed(input_fmap_49[15:0]) +
	( 14'sd 7386) * $signed(input_fmap_50[15:0]) +
	( 15'sd 15778) * $signed(input_fmap_51[15:0]) +
	( 14'sd 4154) * $signed(input_fmap_52[15:0]) +
	( 16'sd 17129) * $signed(input_fmap_53[15:0]) +
	( 11'sd 986) * $signed(input_fmap_54[15:0]) +
	( 16'sd 30520) * $signed(input_fmap_55[15:0]) +
	( 16'sd 21446) * $signed(input_fmap_56[15:0]) +
	( 14'sd 6295) * $signed(input_fmap_57[15:0]) +
	( 15'sd 9792) * $signed(input_fmap_58[15:0]) +
	( 15'sd 11813) * $signed(input_fmap_59[15:0]) +
	( 14'sd 4577) * $signed(input_fmap_60[15:0]) +
	( 16'sd 30470) * $signed(input_fmap_61[15:0]) +
	( 15'sd 9703) * $signed(input_fmap_62[15:0]) +
	( 16'sd 32466) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_85;
assign conv_mac_85 = 
	( 14'sd 5881) * $signed(input_fmap_0[15:0]) +
	( 16'sd 18046) * $signed(input_fmap_1[15:0]) +
	( 16'sd 24433) * $signed(input_fmap_2[15:0]) +
	( 13'sd 2350) * $signed(input_fmap_3[15:0]) +
	( 14'sd 5490) * $signed(input_fmap_4[15:0]) +
	( 16'sd 26108) * $signed(input_fmap_5[15:0]) +
	( 16'sd 26492) * $signed(input_fmap_6[15:0]) +
	( 16'sd 24935) * $signed(input_fmap_7[15:0]) +
	( 16'sd 28223) * $signed(input_fmap_8[15:0]) +
	( 15'sd 9432) * $signed(input_fmap_9[15:0]) +
	( 16'sd 17300) * $signed(input_fmap_10[15:0]) +
	( 16'sd 17385) * $signed(input_fmap_11[15:0]) +
	( 15'sd 15055) * $signed(input_fmap_12[15:0]) +
	( 16'sd 24454) * $signed(input_fmap_13[15:0]) +
	( 15'sd 14751) * $signed(input_fmap_14[15:0]) +
	( 15'sd 9564) * $signed(input_fmap_15[15:0]) +
	( 16'sd 28499) * $signed(input_fmap_16[15:0]) +
	( 11'sd 575) * $signed(input_fmap_17[15:0]) +
	( 16'sd 24848) * $signed(input_fmap_18[15:0]) +
	( 14'sd 7154) * $signed(input_fmap_19[15:0]) +
	( 15'sd 10106) * $signed(input_fmap_20[15:0]) +
	( 15'sd 16176) * $signed(input_fmap_21[15:0]) +
	( 15'sd 15652) * $signed(input_fmap_22[15:0]) +
	( 13'sd 2793) * $signed(input_fmap_23[15:0]) +
	( 14'sd 7430) * $signed(input_fmap_24[15:0]) +
	( 15'sd 15118) * $signed(input_fmap_25[15:0]) +
	( 14'sd 7994) * $signed(input_fmap_26[15:0]) +
	( 15'sd 9498) * $signed(input_fmap_27[15:0]) +
	( 16'sd 24421) * $signed(input_fmap_28[15:0]) +
	( 16'sd 20297) * $signed(input_fmap_29[15:0]) +
	( 14'sd 4667) * $signed(input_fmap_30[15:0]) +
	( 16'sd 23294) * $signed(input_fmap_31[15:0]) +
	( 14'sd 8001) * $signed(input_fmap_32[15:0]) +
	( 16'sd 31251) * $signed(input_fmap_33[15:0]) +
	( 16'sd 23744) * $signed(input_fmap_34[15:0]) +
	( 16'sd 17982) * $signed(input_fmap_35[15:0]) +
	( 16'sd 18165) * $signed(input_fmap_36[15:0]) +
	( 14'sd 7015) * $signed(input_fmap_37[15:0]) +
	( 16'sd 21722) * $signed(input_fmap_38[15:0]) +
	( 15'sd 12990) * $signed(input_fmap_39[15:0]) +
	( 15'sd 10990) * $signed(input_fmap_40[15:0]) +
	( 15'sd 10098) * $signed(input_fmap_41[15:0]) +
	( 16'sd 26709) * $signed(input_fmap_42[15:0]) +
	( 16'sd 31069) * $signed(input_fmap_43[15:0]) +
	( 15'sd 8418) * $signed(input_fmap_44[15:0]) +
	( 16'sd 22189) * $signed(input_fmap_45[15:0]) +
	( 14'sd 4163) * $signed(input_fmap_46[15:0]) +
	( 15'sd 12179) * $signed(input_fmap_47[15:0]) +
	( 16'sd 31010) * $signed(input_fmap_48[15:0]) +
	( 16'sd 25560) * $signed(input_fmap_49[15:0]) +
	( 15'sd 15189) * $signed(input_fmap_50[15:0]) +
	( 12'sd 1846) * $signed(input_fmap_51[15:0]) +
	( 16'sd 26415) * $signed(input_fmap_52[15:0]) +
	( 16'sd 27343) * $signed(input_fmap_53[15:0]) +
	( 16'sd 30186) * $signed(input_fmap_54[15:0]) +
	( 15'sd 16187) * $signed(input_fmap_55[15:0]) +
	( 15'sd 15584) * $signed(input_fmap_56[15:0]) +
	( 16'sd 30075) * $signed(input_fmap_57[15:0]) +
	( 12'sd 1828) * $signed(input_fmap_58[15:0]) +
	( 16'sd 27578) * $signed(input_fmap_59[15:0]) +
	( 16'sd 19935) * $signed(input_fmap_60[15:0]) +
	( 11'sd 647) * $signed(input_fmap_61[15:0]) +
	( 16'sd 20287) * $signed(input_fmap_62[15:0]) +
	( 15'sd 13366) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_86;
assign conv_mac_86 = 
	( 15'sd 10189) * $signed(input_fmap_0[15:0]) +
	( 15'sd 11146) * $signed(input_fmap_1[15:0]) +
	( 16'sd 18427) * $signed(input_fmap_2[15:0]) +
	( 15'sd 10379) * $signed(input_fmap_3[15:0]) +
	( 16'sd 27897) * $signed(input_fmap_4[15:0]) +
	( 16'sd 31128) * $signed(input_fmap_5[15:0]) +
	( 16'sd 32254) * $signed(input_fmap_6[15:0]) +
	( 16'sd 31700) * $signed(input_fmap_7[15:0]) +
	( 15'sd 8773) * $signed(input_fmap_8[15:0]) +
	( 16'sd 21390) * $signed(input_fmap_9[15:0]) +
	( 14'sd 8068) * $signed(input_fmap_10[15:0]) +
	( 16'sd 16764) * $signed(input_fmap_11[15:0]) +
	( 15'sd 15249) * $signed(input_fmap_12[15:0]) +
	( 16'sd 20070) * $signed(input_fmap_13[15:0]) +
	( 16'sd 16744) * $signed(input_fmap_14[15:0]) +
	( 15'sd 11849) * $signed(input_fmap_15[15:0]) +
	( 16'sd 29567) * $signed(input_fmap_16[15:0]) +
	( 15'sd 11377) * $signed(input_fmap_17[15:0]) +
	( 15'sd 8583) * $signed(input_fmap_18[15:0]) +
	( 15'sd 15935) * $signed(input_fmap_19[15:0]) +
	( 16'sd 16750) * $signed(input_fmap_20[15:0]) +
	( 16'sd 27818) * $signed(input_fmap_21[15:0]) +
	( 16'sd 32542) * $signed(input_fmap_22[15:0]) +
	( 16'sd 19220) * $signed(input_fmap_23[15:0]) +
	( 15'sd 10671) * $signed(input_fmap_24[15:0]) +
	( 11'sd 1019) * $signed(input_fmap_25[15:0]) +
	( 16'sd 29945) * $signed(input_fmap_26[15:0]) +
	( 16'sd 22366) * $signed(input_fmap_27[15:0]) +
	( 15'sd 14763) * $signed(input_fmap_28[15:0]) +
	( 15'sd 8638) * $signed(input_fmap_29[15:0]) +
	( 11'sd 546) * $signed(input_fmap_30[15:0]) +
	( 15'sd 10108) * $signed(input_fmap_31[15:0]) +
	( 16'sd 17278) * $signed(input_fmap_32[15:0]) +
	( 16'sd 25326) * $signed(input_fmap_33[15:0]) +
	( 16'sd 20418) * $signed(input_fmap_34[15:0]) +
	( 13'sd 3510) * $signed(input_fmap_35[15:0]) +
	( 13'sd 3890) * $signed(input_fmap_36[15:0]) +
	( 16'sd 27432) * $signed(input_fmap_37[15:0]) +
	( 16'sd 25354) * $signed(input_fmap_38[15:0]) +
	( 15'sd 13749) * $signed(input_fmap_39[15:0]) +
	( 12'sd 1071) * $signed(input_fmap_40[15:0]) +
	( 15'sd 10849) * $signed(input_fmap_41[15:0]) +
	( 16'sd 22396) * $signed(input_fmap_42[15:0]) +
	( 16'sd 24992) * $signed(input_fmap_43[15:0]) +
	( 16'sd 23471) * $signed(input_fmap_44[15:0]) +
	( 16'sd 20684) * $signed(input_fmap_45[15:0]) +
	( 14'sd 8021) * $signed(input_fmap_46[15:0]) +
	( 16'sd 30297) * $signed(input_fmap_47[15:0]) +
	( 16'sd 19090) * $signed(input_fmap_48[15:0]) +
	( 16'sd 17034) * $signed(input_fmap_49[15:0]) +
	( 14'sd 6643) * $signed(input_fmap_50[15:0]) +
	( 14'sd 7983) * $signed(input_fmap_51[15:0]) +
	( 11'sd 798) * $signed(input_fmap_52[15:0]) +
	( 15'sd 16275) * $signed(input_fmap_53[15:0]) +
	( 16'sd 20600) * $signed(input_fmap_54[15:0]) +
	( 15'sd 8212) * $signed(input_fmap_55[15:0]) +
	( 15'sd 12806) * $signed(input_fmap_56[15:0]) +
	( 16'sd 27835) * $signed(input_fmap_57[15:0]) +
	( 15'sd 12925) * $signed(input_fmap_58[15:0]) +
	( 15'sd 15817) * $signed(input_fmap_59[15:0]) +
	( 16'sd 29732) * $signed(input_fmap_60[15:0]) +
	( 16'sd 31098) * $signed(input_fmap_61[15:0]) +
	( 15'sd 14734) * $signed(input_fmap_62[15:0]) +
	( 15'sd 15510) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_87;
assign conv_mac_87 = 
	( 14'sd 8088) * $signed(input_fmap_0[15:0]) +
	( 13'sd 3272) * $signed(input_fmap_1[15:0]) +
	( 16'sd 26471) * $signed(input_fmap_2[15:0]) +
	( 16'sd 27868) * $signed(input_fmap_3[15:0]) +
	( 14'sd 6784) * $signed(input_fmap_4[15:0]) +
	( 15'sd 9806) * $signed(input_fmap_5[15:0]) +
	( 14'sd 5075) * $signed(input_fmap_6[15:0]) +
	( 16'sd 19573) * $signed(input_fmap_7[15:0]) +
	( 15'sd 13697) * $signed(input_fmap_8[15:0]) +
	( 16'sd 17047) * $signed(input_fmap_9[15:0]) +
	( 16'sd 19919) * $signed(input_fmap_10[15:0]) +
	( 15'sd 11630) * $signed(input_fmap_11[15:0]) +
	( 15'sd 13162) * $signed(input_fmap_12[15:0]) +
	( 15'sd 11559) * $signed(input_fmap_13[15:0]) +
	( 16'sd 27969) * $signed(input_fmap_14[15:0]) +
	( 16'sd 24925) * $signed(input_fmap_15[15:0]) +
	( 15'sd 13759) * $signed(input_fmap_16[15:0]) +
	( 14'sd 5431) * $signed(input_fmap_17[15:0]) +
	( 14'sd 5291) * $signed(input_fmap_18[15:0]) +
	( 13'sd 2325) * $signed(input_fmap_19[15:0]) +
	( 14'sd 6977) * $signed(input_fmap_20[15:0]) +
	( 13'sd 3595) * $signed(input_fmap_21[15:0]) +
	( 14'sd 7421) * $signed(input_fmap_22[15:0]) +
	( 16'sd 23866) * $signed(input_fmap_23[15:0]) +
	( 16'sd 19714) * $signed(input_fmap_24[15:0]) +
	( 15'sd 10792) * $signed(input_fmap_25[15:0]) +
	( 15'sd 14802) * $signed(input_fmap_26[15:0]) +
	( 14'sd 6644) * $signed(input_fmap_27[15:0]) +
	( 13'sd 3382) * $signed(input_fmap_28[15:0]) +
	( 16'sd 18749) * $signed(input_fmap_29[15:0]) +
	( 16'sd 24935) * $signed(input_fmap_30[15:0]) +
	( 13'sd 3294) * $signed(input_fmap_31[15:0]) +
	( 13'sd 2317) * $signed(input_fmap_32[15:0]) +
	( 12'sd 1090) * $signed(input_fmap_33[15:0]) +
	( 16'sd 28306) * $signed(input_fmap_34[15:0]) +
	( 15'sd 14200) * $signed(input_fmap_35[15:0]) +
	( 16'sd 17641) * $signed(input_fmap_36[15:0]) +
	( 16'sd 21992) * $signed(input_fmap_37[15:0]) +
	( 15'sd 12783) * $signed(input_fmap_38[15:0]) +
	( 16'sd 18330) * $signed(input_fmap_39[15:0]) +
	( 8'sd 121) * $signed(input_fmap_40[15:0]) +
	( 13'sd 2642) * $signed(input_fmap_41[15:0]) +
	( 13'sd 2491) * $signed(input_fmap_42[15:0]) +
	( 13'sd 3626) * $signed(input_fmap_43[15:0]) +
	( 15'sd 13398) * $signed(input_fmap_44[15:0]) +
	( 12'sd 1998) * $signed(input_fmap_45[15:0]) +
	( 16'sd 18795) * $signed(input_fmap_46[15:0]) +
	( 16'sd 30781) * $signed(input_fmap_47[15:0]) +
	( 16'sd 27970) * $signed(input_fmap_48[15:0]) +
	( 15'sd 8417) * $signed(input_fmap_49[15:0]) +
	( 16'sd 26169) * $signed(input_fmap_50[15:0]) +
	( 14'sd 4675) * $signed(input_fmap_51[15:0]) +
	( 16'sd 22367) * $signed(input_fmap_52[15:0]) +
	( 14'sd 5144) * $signed(input_fmap_53[15:0]) +
	( 16'sd 19533) * $signed(input_fmap_54[15:0]) +
	( 15'sd 8367) * $signed(input_fmap_55[15:0]) +
	( 16'sd 20303) * $signed(input_fmap_56[15:0]) +
	( 16'sd 31047) * $signed(input_fmap_57[15:0]) +
	( 14'sd 4105) * $signed(input_fmap_58[15:0]) +
	( 16'sd 30034) * $signed(input_fmap_59[15:0]) +
	( 12'sd 1267) * $signed(input_fmap_60[15:0]) +
	( 11'sd 881) * $signed(input_fmap_61[15:0]) +
	( 11'sd 963) * $signed(input_fmap_62[15:0]) +
	( 16'sd 26534) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_88;
assign conv_mac_88 = 
	( 16'sd 30841) * $signed(input_fmap_0[15:0]) +
	( 16'sd 21870) * $signed(input_fmap_1[15:0]) +
	( 16'sd 29639) * $signed(input_fmap_2[15:0]) +
	( 16'sd 17508) * $signed(input_fmap_3[15:0]) +
	( 15'sd 15856) * $signed(input_fmap_4[15:0]) +
	( 16'sd 30865) * $signed(input_fmap_5[15:0]) +
	( 15'sd 16346) * $signed(input_fmap_6[15:0]) +
	( 14'sd 7041) * $signed(input_fmap_7[15:0]) +
	( 14'sd 5890) * $signed(input_fmap_8[15:0]) +
	( 16'sd 16468) * $signed(input_fmap_9[15:0]) +
	( 15'sd 11039) * $signed(input_fmap_10[15:0]) +
	( 16'sd 22032) * $signed(input_fmap_11[15:0]) +
	( 16'sd 26702) * $signed(input_fmap_12[15:0]) +
	( 13'sd 2780) * $signed(input_fmap_13[15:0]) +
	( 14'sd 4955) * $signed(input_fmap_14[15:0]) +
	( 16'sd 19096) * $signed(input_fmap_15[15:0]) +
	( 8'sd 75) * $signed(input_fmap_16[15:0]) +
	( 16'sd 24649) * $signed(input_fmap_17[15:0]) +
	( 15'sd 15638) * $signed(input_fmap_18[15:0]) +
	( 13'sd 3240) * $signed(input_fmap_19[15:0]) +
	( 16'sd 16690) * $signed(input_fmap_20[15:0]) +
	( 15'sd 13655) * $signed(input_fmap_21[15:0]) +
	( 16'sd 19342) * $signed(input_fmap_22[15:0]) +
	( 16'sd 30745) * $signed(input_fmap_23[15:0]) +
	( 15'sd 9573) * $signed(input_fmap_24[15:0]) +
	( 15'sd 9754) * $signed(input_fmap_25[15:0]) +
	( 16'sd 20590) * $signed(input_fmap_26[15:0]) +
	( 14'sd 7038) * $signed(input_fmap_27[15:0]) +
	( 9'sd 171) * $signed(input_fmap_28[15:0]) +
	( 15'sd 8576) * $signed(input_fmap_29[15:0]) +
	( 14'sd 5812) * $signed(input_fmap_30[15:0]) +
	( 16'sd 19874) * $signed(input_fmap_31[15:0]) +
	( 16'sd 24388) * $signed(input_fmap_32[15:0]) +
	( 16'sd 30164) * $signed(input_fmap_33[15:0]) +
	( 14'sd 6966) * $signed(input_fmap_34[15:0]) +
	( 16'sd 21961) * $signed(input_fmap_35[15:0]) +
	( 14'sd 7542) * $signed(input_fmap_36[15:0]) +
	( 15'sd 16312) * $signed(input_fmap_37[15:0]) +
	( 16'sd 24394) * $signed(input_fmap_38[15:0]) +
	( 16'sd 27731) * $signed(input_fmap_39[15:0]) +
	( 16'sd 31064) * $signed(input_fmap_40[15:0]) +
	( 15'sd 15354) * $signed(input_fmap_41[15:0]) +
	( 16'sd 19262) * $signed(input_fmap_42[15:0]) +
	( 16'sd 19088) * $signed(input_fmap_43[15:0]) +
	( 16'sd 16978) * $signed(input_fmap_44[15:0]) +
	( 16'sd 30993) * $signed(input_fmap_45[15:0]) +
	( 16'sd 27624) * $signed(input_fmap_46[15:0]) +
	( 15'sd 11726) * $signed(input_fmap_47[15:0]) +
	( 15'sd 12036) * $signed(input_fmap_48[15:0]) +
	( 9'sd 238) * $signed(input_fmap_49[15:0]) +
	( 16'sd 18627) * $signed(input_fmap_50[15:0]) +
	( 16'sd 18881) * $signed(input_fmap_51[15:0]) +
	( 13'sd 4028) * $signed(input_fmap_52[15:0]) +
	( 16'sd 26211) * $signed(input_fmap_53[15:0]) +
	( 15'sd 13652) * $signed(input_fmap_54[15:0]) +
	( 15'sd 13061) * $signed(input_fmap_55[15:0]) +
	( 16'sd 23535) * $signed(input_fmap_56[15:0]) +
	( 16'sd 18743) * $signed(input_fmap_57[15:0]) +
	( 12'sd 1263) * $signed(input_fmap_58[15:0]) +
	( 16'sd 18459) * $signed(input_fmap_59[15:0]) +
	( 15'sd 11985) * $signed(input_fmap_60[15:0]) +
	( 15'sd 9509) * $signed(input_fmap_61[15:0]) +
	( 16'sd 26409) * $signed(input_fmap_62[15:0]) +
	( 16'sd 27421) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_89;
assign conv_mac_89 = 
	( 15'sd 8711) * $signed(input_fmap_0[15:0]) +
	( 14'sd 7876) * $signed(input_fmap_1[15:0]) +
	( 14'sd 4101) * $signed(input_fmap_2[15:0]) +
	( 16'sd 27285) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 16'sd 27332) * $signed(input_fmap_5[15:0]) +
	( 16'sd 26920) * $signed(input_fmap_6[15:0]) +
	( 11'sd 783) * $signed(input_fmap_7[15:0]) +
	( 15'sd 15161) * $signed(input_fmap_8[15:0]) +
	( 14'sd 4647) * $signed(input_fmap_9[15:0]) +
	( 14'sd 6980) * $signed(input_fmap_10[15:0]) +
	( 15'sd 14708) * $signed(input_fmap_11[15:0]) +
	( 16'sd 25205) * $signed(input_fmap_12[15:0]) +
	( 14'sd 7161) * $signed(input_fmap_13[15:0]) +
	( 13'sd 4065) * $signed(input_fmap_14[15:0]) +
	( 14'sd 4975) * $signed(input_fmap_15[15:0]) +
	( 13'sd 3023) * $signed(input_fmap_16[15:0]) +
	( 9'sd 198) * $signed(input_fmap_17[15:0]) +
	( 16'sd 16905) * $signed(input_fmap_18[15:0]) +
	( 16'sd 26985) * $signed(input_fmap_19[15:0]) +
	( 16'sd 31681) * $signed(input_fmap_20[15:0]) +
	( 14'sd 7732) * $signed(input_fmap_21[15:0]) +
	( 16'sd 23219) * $signed(input_fmap_22[15:0]) +
	( 14'sd 8166) * $signed(input_fmap_23[15:0]) +
	( 15'sd 14488) * $signed(input_fmap_24[15:0]) +
	( 16'sd 26703) * $signed(input_fmap_25[15:0]) +
	( 13'sd 3839) * $signed(input_fmap_26[15:0]) +
	( 15'sd 10134) * $signed(input_fmap_27[15:0]) +
	( 16'sd 19425) * $signed(input_fmap_28[15:0]) +
	( 14'sd 7879) * $signed(input_fmap_29[15:0]) +
	( 15'sd 12263) * $signed(input_fmap_30[15:0]) +
	( 16'sd 22758) * $signed(input_fmap_31[15:0]) +
	( 16'sd 18947) * $signed(input_fmap_32[15:0]) +
	( 16'sd 22280) * $signed(input_fmap_33[15:0]) +
	( 16'sd 21518) * $signed(input_fmap_34[15:0]) +
	( 10'sd 346) * $signed(input_fmap_35[15:0]) +
	( 16'sd 32445) * $signed(input_fmap_36[15:0]) +
	( 16'sd 27499) * $signed(input_fmap_37[15:0]) +
	( 16'sd 25428) * $signed(input_fmap_38[15:0]) +
	( 13'sd 3307) * $signed(input_fmap_39[15:0]) +
	( 16'sd 23292) * $signed(input_fmap_40[15:0]) +
	( 15'sd 9460) * $signed(input_fmap_41[15:0]) +
	( 16'sd 28039) * $signed(input_fmap_42[15:0]) +
	( 16'sd 25133) * $signed(input_fmap_43[15:0]) +
	( 15'sd 9872) * $signed(input_fmap_44[15:0]) +
	( 15'sd 12586) * $signed(input_fmap_45[15:0]) +
	( 13'sd 3418) * $signed(input_fmap_46[15:0]) +
	( 15'sd 14584) * $signed(input_fmap_47[15:0]) +
	( 16'sd 21432) * $signed(input_fmap_48[15:0]) +
	( 16'sd 23746) * $signed(input_fmap_49[15:0]) +
	( 16'sd 32730) * $signed(input_fmap_50[15:0]) +
	( 16'sd 18024) * $signed(input_fmap_51[15:0]) +
	( 16'sd 29686) * $signed(input_fmap_52[15:0]) +
	( 16'sd 23505) * $signed(input_fmap_53[15:0]) +
	( 12'sd 1382) * $signed(input_fmap_54[15:0]) +
	( 16'sd 18654) * $signed(input_fmap_55[15:0]) +
	( 16'sd 23795) * $signed(input_fmap_56[15:0]) +
	( 15'sd 12444) * $signed(input_fmap_57[15:0]) +
	( 16'sd 31101) * $signed(input_fmap_58[15:0]) +
	( 16'sd 25594) * $signed(input_fmap_59[15:0]) +
	( 16'sd 26386) * $signed(input_fmap_60[15:0]) +
	( 16'sd 32618) * $signed(input_fmap_61[15:0]) +
	( 13'sd 2512) * $signed(input_fmap_62[15:0]) +
	( 15'sd 14484) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_90;
assign conv_mac_90 = 
	( 14'sd 6233) * $signed(input_fmap_0[15:0]) +
	( 13'sd 3643) * $signed(input_fmap_1[15:0]) +
	( 15'sd 14504) * $signed(input_fmap_2[15:0]) +
	( 16'sd 21959) * $signed(input_fmap_3[15:0]) +
	( 11'sd 851) * $signed(input_fmap_4[15:0]) +
	( 15'sd 9141) * $signed(input_fmap_5[15:0]) +
	( 16'sd 28619) * $signed(input_fmap_6[15:0]) +
	( 16'sd 26669) * $signed(input_fmap_7[15:0]) +
	( 13'sd 2203) * $signed(input_fmap_8[15:0]) +
	( 15'sd 16109) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1982) * $signed(input_fmap_10[15:0]) +
	( 16'sd 27991) * $signed(input_fmap_11[15:0]) +
	( 16'sd 21729) * $signed(input_fmap_12[15:0]) +
	( 16'sd 24662) * $signed(input_fmap_13[15:0]) +
	( 16'sd 28665) * $signed(input_fmap_14[15:0]) +
	( 16'sd 26411) * $signed(input_fmap_15[15:0]) +
	( 13'sd 2476) * $signed(input_fmap_16[15:0]) +
	( 16'sd 26764) * $signed(input_fmap_17[15:0]) +
	( 16'sd 27796) * $signed(input_fmap_18[15:0]) +
	( 16'sd 20927) * $signed(input_fmap_19[15:0]) +
	( 15'sd 13462) * $signed(input_fmap_20[15:0]) +
	( 14'sd 5360) * $signed(input_fmap_21[15:0]) +
	( 14'sd 6580) * $signed(input_fmap_22[15:0]) +
	( 16'sd 16535) * $signed(input_fmap_23[15:0]) +
	( 15'sd 15391) * $signed(input_fmap_24[15:0]) +
	( 16'sd 17965) * $signed(input_fmap_25[15:0]) +
	( 13'sd 3408) * $signed(input_fmap_26[15:0]) +
	( 16'sd 30229) * $signed(input_fmap_27[15:0]) +
	( 16'sd 21033) * $signed(input_fmap_28[15:0]) +
	( 16'sd 25280) * $signed(input_fmap_29[15:0]) +
	( 16'sd 27317) * $signed(input_fmap_30[15:0]) +
	( 13'sd 2290) * $signed(input_fmap_31[15:0]) +
	( 16'sd 25014) * $signed(input_fmap_32[15:0]) +
	( 16'sd 26438) * $signed(input_fmap_33[15:0]) +
	( 15'sd 11442) * $signed(input_fmap_34[15:0]) +
	( 16'sd 17509) * $signed(input_fmap_35[15:0]) +
	( 16'sd 30959) * $signed(input_fmap_36[15:0]) +
	( 15'sd 14821) * $signed(input_fmap_37[15:0]) +
	( 15'sd 9384) * $signed(input_fmap_38[15:0]) +
	( 15'sd 12623) * $signed(input_fmap_39[15:0]) +
	( 13'sd 2923) * $signed(input_fmap_40[15:0]) +
	( 14'sd 7104) * $signed(input_fmap_41[15:0]) +
	( 15'sd 14920) * $signed(input_fmap_42[15:0]) +
	( 15'sd 9869) * $signed(input_fmap_43[15:0]) +
	( 13'sd 3929) * $signed(input_fmap_44[15:0]) +
	( 15'sd 10854) * $signed(input_fmap_45[15:0]) +
	( 16'sd 27882) * $signed(input_fmap_46[15:0]) +
	( 12'sd 1655) * $signed(input_fmap_47[15:0]) +
	( 15'sd 10297) * $signed(input_fmap_48[15:0]) +
	( 12'sd 1878) * $signed(input_fmap_49[15:0]) +
	( 16'sd 22805) * $signed(input_fmap_50[15:0]) +
	( 11'sd 863) * $signed(input_fmap_51[15:0]) +
	( 16'sd 23298) * $signed(input_fmap_52[15:0]) +
	( 16'sd 22772) * $signed(input_fmap_53[15:0]) +
	( 16'sd 21963) * $signed(input_fmap_54[15:0]) +
	( 14'sd 6689) * $signed(input_fmap_55[15:0]) +
	( 16'sd 31498) * $signed(input_fmap_56[15:0]) +
	( 16'sd 19407) * $signed(input_fmap_57[15:0]) +
	( 15'sd 14616) * $signed(input_fmap_58[15:0]) +
	( 16'sd 32143) * $signed(input_fmap_59[15:0]) +
	( 16'sd 22417) * $signed(input_fmap_60[15:0]) +
	( 12'sd 1042) * $signed(input_fmap_61[15:0]) +
	( 15'sd 13019) * $signed(input_fmap_62[15:0]) +
	( 16'sd 26623) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_91;
assign conv_mac_91 = 
	( 15'sd 14590) * $signed(input_fmap_0[15:0]) +
	( 16'sd 19343) * $signed(input_fmap_1[15:0]) +
	( 16'sd 29357) * $signed(input_fmap_2[15:0]) +
	( 11'sd 591) * $signed(input_fmap_3[15:0]) +
	( 16'sd 24906) * $signed(input_fmap_4[15:0]) +
	( 16'sd 24724) * $signed(input_fmap_5[15:0]) +
	( 15'sd 10157) * $signed(input_fmap_6[15:0]) +
	( 13'sd 3413) * $signed(input_fmap_7[15:0]) +
	( 11'sd 569) * $signed(input_fmap_8[15:0]) +
	( 15'sd 11610) * $signed(input_fmap_9[15:0]) +
	( 16'sd 18942) * $signed(input_fmap_10[15:0]) +
	( 16'sd 19575) * $signed(input_fmap_11[15:0]) +
	( 9'sd 185) * $signed(input_fmap_12[15:0]) +
	( 16'sd 24334) * $signed(input_fmap_13[15:0]) +
	( 12'sd 1436) * $signed(input_fmap_14[15:0]) +
	( 16'sd 21230) * $signed(input_fmap_15[15:0]) +
	( 16'sd 18239) * $signed(input_fmap_16[15:0]) +
	( 16'sd 26834) * $signed(input_fmap_17[15:0]) +
	( 15'sd 10422) * $signed(input_fmap_18[15:0]) +
	( 15'sd 12779) * $signed(input_fmap_19[15:0]) +
	( 16'sd 26910) * $signed(input_fmap_20[15:0]) +
	( 15'sd 14581) * $signed(input_fmap_21[15:0]) +
	( 14'sd 7508) * $signed(input_fmap_22[15:0]) +
	( 16'sd 19107) * $signed(input_fmap_23[15:0]) +
	( 14'sd 7937) * $signed(input_fmap_24[15:0]) +
	( 14'sd 7559) * $signed(input_fmap_25[15:0]) +
	( 15'sd 12068) * $signed(input_fmap_26[15:0]) +
	( 16'sd 24899) * $signed(input_fmap_27[15:0]) +
	( 16'sd 21237) * $signed(input_fmap_28[15:0]) +
	( 16'sd 31642) * $signed(input_fmap_29[15:0]) +
	( 13'sd 3144) * $signed(input_fmap_30[15:0]) +
	( 16'sd 20274) * $signed(input_fmap_31[15:0]) +
	( 16'sd 17434) * $signed(input_fmap_32[15:0]) +
	( 16'sd 31739) * $signed(input_fmap_33[15:0]) +
	( 16'sd 18719) * $signed(input_fmap_34[15:0]) +
	( 16'sd 19498) * $signed(input_fmap_35[15:0]) +
	( 15'sd 15487) * $signed(input_fmap_36[15:0]) +
	( 16'sd 27492) * $signed(input_fmap_37[15:0]) +
	( 16'sd 30421) * $signed(input_fmap_38[15:0]) +
	( 16'sd 21219) * $signed(input_fmap_39[15:0]) +
	( 14'sd 5952) * $signed(input_fmap_40[15:0]) +
	( 15'sd 9111) * $signed(input_fmap_41[15:0]) +
	( 15'sd 14516) * $signed(input_fmap_42[15:0]) +
	( 15'sd 13363) * $signed(input_fmap_43[15:0]) +
	( 15'sd 12174) * $signed(input_fmap_44[15:0]) +
	( 16'sd 19514) * $signed(input_fmap_45[15:0]) +
	( 14'sd 7377) * $signed(input_fmap_46[15:0]) +
	( 16'sd 31849) * $signed(input_fmap_47[15:0]) +
	( 15'sd 15821) * $signed(input_fmap_48[15:0]) +
	( 15'sd 13846) * $signed(input_fmap_49[15:0]) +
	( 15'sd 15571) * $signed(input_fmap_50[15:0]) +
	( 16'sd 20171) * $signed(input_fmap_51[15:0]) +
	( 16'sd 31321) * $signed(input_fmap_52[15:0]) +
	( 15'sd 11311) * $signed(input_fmap_53[15:0]) +
	( 14'sd 4641) * $signed(input_fmap_54[15:0]) +
	( 16'sd 32547) * $signed(input_fmap_55[15:0]) +
	( 15'sd 12907) * $signed(input_fmap_56[15:0]) +
	( 15'sd 16148) * $signed(input_fmap_57[15:0]) +
	( 14'sd 4707) * $signed(input_fmap_58[15:0]) +
	( 16'sd 18928) * $signed(input_fmap_59[15:0]) +
	( 11'sd 519) * $signed(input_fmap_60[15:0]) +
	( 16'sd 25276) * $signed(input_fmap_61[15:0]) +
	( 15'sd 13389) * $signed(input_fmap_62[15:0]) +
	( 15'sd 10486) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_92;
assign conv_mac_92 = 
	( 11'sd 878) * $signed(input_fmap_0[15:0]) +
	( 16'sd 25748) * $signed(input_fmap_1[15:0]) +
	( 16'sd 30524) * $signed(input_fmap_2[15:0]) +
	( 12'sd 1605) * $signed(input_fmap_3[15:0]) +
	( 16'sd 16962) * $signed(input_fmap_4[15:0]) +
	( 16'sd 24655) * $signed(input_fmap_5[15:0]) +
	( 12'sd 1635) * $signed(input_fmap_6[15:0]) +
	( 16'sd 22071) * $signed(input_fmap_7[15:0]) +
	( 13'sd 2838) * $signed(input_fmap_8[15:0]) +
	( 16'sd 21396) * $signed(input_fmap_9[15:0]) +
	( 15'sd 9059) * $signed(input_fmap_10[15:0]) +
	( 15'sd 13295) * $signed(input_fmap_11[15:0]) +
	( 16'sd 18200) * $signed(input_fmap_12[15:0]) +
	( 13'sd 3239) * $signed(input_fmap_13[15:0]) +
	( 16'sd 28106) * $signed(input_fmap_14[15:0]) +
	( 15'sd 8562) * $signed(input_fmap_15[15:0]) +
	( 11'sd 732) * $signed(input_fmap_16[15:0]) +
	( 16'sd 27047) * $signed(input_fmap_17[15:0]) +
	( 15'sd 14737) * $signed(input_fmap_18[15:0]) +
	( 16'sd 29768) * $signed(input_fmap_19[15:0]) +
	( 16'sd 18655) * $signed(input_fmap_20[15:0]) +
	( 14'sd 7383) * $signed(input_fmap_21[15:0]) +
	( 16'sd 24276) * $signed(input_fmap_22[15:0]) +
	( 16'sd 17411) * $signed(input_fmap_23[15:0]) +
	( 15'sd 10390) * $signed(input_fmap_24[15:0]) +
	( 16'sd 21685) * $signed(input_fmap_25[15:0]) +
	( 15'sd 13308) * $signed(input_fmap_26[15:0]) +
	( 14'sd 5586) * $signed(input_fmap_27[15:0]) +
	( 12'sd 1730) * $signed(input_fmap_28[15:0]) +
	( 16'sd 23370) * $signed(input_fmap_29[15:0]) +
	( 15'sd 15989) * $signed(input_fmap_30[15:0]) +
	( 16'sd 24207) * $signed(input_fmap_31[15:0]) +
	( 8'sd 94) * $signed(input_fmap_32[15:0]) +
	( 13'sd 2969) * $signed(input_fmap_33[15:0]) +
	( 15'sd 13133) * $signed(input_fmap_34[15:0]) +
	( 16'sd 24558) * $signed(input_fmap_35[15:0]) +
	( 16'sd 32067) * $signed(input_fmap_36[15:0]) +
	( 16'sd 26974) * $signed(input_fmap_37[15:0]) +
	( 15'sd 13829) * $signed(input_fmap_38[15:0]) +
	( 16'sd 29828) * $signed(input_fmap_39[15:0]) +
	( 16'sd 22044) * $signed(input_fmap_40[15:0]) +
	( 14'sd 6176) * $signed(input_fmap_41[15:0]) +
	( 16'sd 22420) * $signed(input_fmap_42[15:0]) +
	( 16'sd 22466) * $signed(input_fmap_43[15:0]) +
	( 16'sd 30540) * $signed(input_fmap_44[15:0]) +
	( 10'sd 454) * $signed(input_fmap_45[15:0]) +
	( 14'sd 7660) * $signed(input_fmap_46[15:0]) +
	( 15'sd 14369) * $signed(input_fmap_47[15:0]) +
	( 14'sd 5369) * $signed(input_fmap_48[15:0]) +
	( 16'sd 26907) * $signed(input_fmap_49[15:0]) +
	( 16'sd 27972) * $signed(input_fmap_50[15:0]) +
	( 12'sd 1210) * $signed(input_fmap_51[15:0]) +
	( 16'sd 16530) * $signed(input_fmap_52[15:0]) +
	( 15'sd 15877) * $signed(input_fmap_53[15:0]) +
	( 16'sd 20548) * $signed(input_fmap_54[15:0]) +
	( 16'sd 29257) * $signed(input_fmap_55[15:0]) +
	( 16'sd 30019) * $signed(input_fmap_56[15:0]) +
	( 16'sd 20437) * $signed(input_fmap_57[15:0]) +
	( 15'sd 11892) * $signed(input_fmap_58[15:0]) +
	( 15'sd 8375) * $signed(input_fmap_59[15:0]) +
	( 14'sd 4944) * $signed(input_fmap_60[15:0]) +
	( 16'sd 27080) * $signed(input_fmap_61[15:0]) +
	( 16'sd 26872) * $signed(input_fmap_62[15:0]) +
	( 15'sd 13624) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_93;
assign conv_mac_93 = 
	( 16'sd 29659) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6271) * $signed(input_fmap_1[15:0]) +
	( 16'sd 30551) * $signed(input_fmap_2[15:0]) +
	( 11'sd 596) * $signed(input_fmap_3[15:0]) +
	( 15'sd 13728) * $signed(input_fmap_4[15:0]) +
	( 16'sd 24952) * $signed(input_fmap_5[15:0]) +
	( 16'sd 23940) * $signed(input_fmap_6[15:0]) +
	( 15'sd 12113) * $signed(input_fmap_7[15:0]) +
	( 16'sd 18412) * $signed(input_fmap_8[15:0]) +
	( 14'sd 7026) * $signed(input_fmap_9[15:0]) +
	( 16'sd 24024) * $signed(input_fmap_10[15:0]) +
	( 15'sd 11168) * $signed(input_fmap_11[15:0]) +
	( 15'sd 13803) * $signed(input_fmap_12[15:0]) +
	( 14'sd 6119) * $signed(input_fmap_13[15:0]) +
	( 14'sd 4443) * $signed(input_fmap_14[15:0]) +
	( 14'sd 5135) * $signed(input_fmap_15[15:0]) +
	( 15'sd 15936) * $signed(input_fmap_16[15:0]) +
	( 14'sd 6630) * $signed(input_fmap_17[15:0]) +
	( 11'sd 945) * $signed(input_fmap_18[15:0]) +
	( 11'sd 962) * $signed(input_fmap_19[15:0]) +
	( 13'sd 2456) * $signed(input_fmap_20[15:0]) +
	( 15'sd 10885) * $signed(input_fmap_21[15:0]) +
	( 16'sd 27328) * $signed(input_fmap_22[15:0]) +
	( 13'sd 3543) * $signed(input_fmap_23[15:0]) +
	( 16'sd 19633) * $signed(input_fmap_24[15:0]) +
	( 14'sd 6603) * $signed(input_fmap_25[15:0]) +
	( 16'sd 31454) * $signed(input_fmap_26[15:0]) +
	( 16'sd 26452) * $signed(input_fmap_27[15:0]) +
	( 14'sd 5406) * $signed(input_fmap_28[15:0]) +
	( 7'sd 33) * $signed(input_fmap_29[15:0]) +
	( 15'sd 16079) * $signed(input_fmap_30[15:0]) +
	( 16'sd 21371) * $signed(input_fmap_31[15:0]) +
	( 16'sd 21315) * $signed(input_fmap_32[15:0]) +
	( 14'sd 5147) * $signed(input_fmap_33[15:0]) +
	( 10'sd 308) * $signed(input_fmap_34[15:0]) +
	( 15'sd 12118) * $signed(input_fmap_35[15:0]) +
	( 16'sd 27635) * $signed(input_fmap_36[15:0]) +
	( 16'sd 30395) * $signed(input_fmap_37[15:0]) +
	( 16'sd 23985) * $signed(input_fmap_38[15:0]) +
	( 15'sd 8505) * $signed(input_fmap_39[15:0]) +
	( 15'sd 15434) * $signed(input_fmap_40[15:0]) +
	( 16'sd 24482) * $signed(input_fmap_41[15:0]) +
	( 16'sd 20583) * $signed(input_fmap_42[15:0]) +
	( 14'sd 7208) * $signed(input_fmap_43[15:0]) +
	( 15'sd 9538) * $signed(input_fmap_44[15:0]) +
	( 16'sd 29390) * $signed(input_fmap_45[15:0]) +
	( 16'sd 26459) * $signed(input_fmap_46[15:0]) +
	( 15'sd 15891) * $signed(input_fmap_47[15:0]) +
	( 15'sd 10630) * $signed(input_fmap_48[15:0]) +
	( 14'sd 4753) * $signed(input_fmap_49[15:0]) +
	( 16'sd 17941) * $signed(input_fmap_50[15:0]) +
	( 15'sd 9533) * $signed(input_fmap_51[15:0]) +
	( 14'sd 7590) * $signed(input_fmap_52[15:0]) +
	( 15'sd 8618) * $signed(input_fmap_53[15:0]) +
	( 16'sd 31434) * $signed(input_fmap_54[15:0]) +
	( 16'sd 21041) * $signed(input_fmap_55[15:0]) +
	( 16'sd 28888) * $signed(input_fmap_56[15:0]) +
	( 15'sd 8452) * $signed(input_fmap_57[15:0]) +
	( 14'sd 7044) * $signed(input_fmap_58[15:0]) +
	( 13'sd 2480) * $signed(input_fmap_59[15:0]) +
	( 14'sd 4724) * $signed(input_fmap_60[15:0]) +
	( 16'sd 23964) * $signed(input_fmap_61[15:0]) +
	( 16'sd 27630) * $signed(input_fmap_62[15:0]) +
	( 16'sd 22986) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_94;
assign conv_mac_94 = 
	( 16'sd 27857) * $signed(input_fmap_0[15:0]) +
	( 16'sd 18752) * $signed(input_fmap_1[15:0]) +
	( 16'sd 21915) * $signed(input_fmap_2[15:0]) +
	( 14'sd 5779) * $signed(input_fmap_3[15:0]) +
	( 16'sd 19976) * $signed(input_fmap_4[15:0]) +
	( 16'sd 28224) * $signed(input_fmap_5[15:0]) +
	( 16'sd 18594) * $signed(input_fmap_6[15:0]) +
	( 15'sd 12113) * $signed(input_fmap_7[15:0]) +
	( 16'sd 24254) * $signed(input_fmap_8[15:0]) +
	( 13'sd 2637) * $signed(input_fmap_9[15:0]) +
	( 16'sd 20963) * $signed(input_fmap_10[15:0]) +
	( 14'sd 6497) * $signed(input_fmap_11[15:0]) +
	( 16'sd 31299) * $signed(input_fmap_12[15:0]) +
	( 16'sd 23399) * $signed(input_fmap_13[15:0]) +
	( 13'sd 3653) * $signed(input_fmap_14[15:0]) +
	( 16'sd 26783) * $signed(input_fmap_15[15:0]) +
	( 16'sd 26412) * $signed(input_fmap_16[15:0]) +
	( 16'sd 27194) * $signed(input_fmap_17[15:0]) +
	( 14'sd 4844) * $signed(input_fmap_18[15:0]) +
	( 16'sd 23438) * $signed(input_fmap_19[15:0]) +
	( 9'sd 185) * $signed(input_fmap_20[15:0]) +
	( 16'sd 26812) * $signed(input_fmap_21[15:0]) +
	( 16'sd 31644) * $signed(input_fmap_22[15:0]) +
	( 15'sd 14770) * $signed(input_fmap_23[15:0]) +
	( 16'sd 17276) * $signed(input_fmap_24[15:0]) +
	( 16'sd 17150) * $signed(input_fmap_25[15:0]) +
	( 16'sd 30109) * $signed(input_fmap_26[15:0]) +
	( 16'sd 29116) * $signed(input_fmap_27[15:0]) +
	( 14'sd 7511) * $signed(input_fmap_28[15:0]) +
	( 16'sd 24504) * $signed(input_fmap_29[15:0]) +
	( 16'sd 28427) * $signed(input_fmap_30[15:0]) +
	( 14'sd 7468) * $signed(input_fmap_31[15:0]) +
	( 16'sd 19704) * $signed(input_fmap_32[15:0]) +
	( 16'sd 30885) * $signed(input_fmap_33[15:0]) +
	( 16'sd 20226) * $signed(input_fmap_34[15:0]) +
	( 15'sd 10389) * $signed(input_fmap_35[15:0]) +
	( 15'sd 10275) * $signed(input_fmap_36[15:0]) +
	( 15'sd 11743) * $signed(input_fmap_37[15:0]) +
	( 15'sd 12490) * $signed(input_fmap_38[15:0]) +
	( 14'sd 7526) * $signed(input_fmap_39[15:0]) +
	( 13'sd 3679) * $signed(input_fmap_40[15:0]) +
	( 14'sd 7848) * $signed(input_fmap_41[15:0]) +
	( 16'sd 31679) * $signed(input_fmap_42[15:0]) +
	( 11'sd 658) * $signed(input_fmap_43[15:0]) +
	( 15'sd 8283) * $signed(input_fmap_44[15:0]) +
	( 13'sd 3267) * $signed(input_fmap_45[15:0]) +
	( 16'sd 24495) * $signed(input_fmap_46[15:0]) +
	( 14'sd 6673) * $signed(input_fmap_47[15:0]) +
	( 16'sd 25650) * $signed(input_fmap_48[15:0]) +
	( 16'sd 27060) * $signed(input_fmap_49[15:0]) +
	( 16'sd 26609) * $signed(input_fmap_50[15:0]) +
	( 16'sd 30708) * $signed(input_fmap_51[15:0]) +
	( 14'sd 6393) * $signed(input_fmap_52[15:0]) +
	( 14'sd 5733) * $signed(input_fmap_53[15:0]) +
	( 14'sd 7164) * $signed(input_fmap_54[15:0]) +
	( 15'sd 9160) * $signed(input_fmap_55[15:0]) +
	( 15'sd 14367) * $signed(input_fmap_56[15:0]) +
	( 14'sd 4777) * $signed(input_fmap_57[15:0]) +
	( 13'sd 3051) * $signed(input_fmap_58[15:0]) +
	( 13'sd 3298) * $signed(input_fmap_59[15:0]) +
	( 15'sd 11226) * $signed(input_fmap_60[15:0]) +
	( 13'sd 2757) * $signed(input_fmap_61[15:0]) +
	( 14'sd 7017) * $signed(input_fmap_62[15:0]) +
	( 16'sd 18265) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_95;
assign conv_mac_95 = 
	( 16'sd 31150) * $signed(input_fmap_0[15:0]) +
	( 16'sd 30474) * $signed(input_fmap_1[15:0]) +
	( 15'sd 10342) * $signed(input_fmap_2[15:0]) +
	( 14'sd 6495) * $signed(input_fmap_3[15:0]) +
	( 16'sd 27355) * $signed(input_fmap_4[15:0]) +
	( 16'sd 23893) * $signed(input_fmap_5[15:0]) +
	( 15'sd 12630) * $signed(input_fmap_6[15:0]) +
	( 16'sd 30629) * $signed(input_fmap_7[15:0]) +
	( 13'sd 2541) * $signed(input_fmap_8[15:0]) +
	( 16'sd 24493) * $signed(input_fmap_9[15:0]) +
	( 15'sd 11244) * $signed(input_fmap_10[15:0]) +
	( 15'sd 11371) * $signed(input_fmap_11[15:0]) +
	( 16'sd 18695) * $signed(input_fmap_12[15:0]) +
	( 16'sd 29557) * $signed(input_fmap_13[15:0]) +
	( 16'sd 32144) * $signed(input_fmap_14[15:0]) +
	( 14'sd 6319) * $signed(input_fmap_15[15:0]) +
	( 15'sd 9381) * $signed(input_fmap_16[15:0]) +
	( 16'sd 23753) * $signed(input_fmap_17[15:0]) +
	( 15'sd 11996) * $signed(input_fmap_18[15:0]) +
	( 16'sd 25490) * $signed(input_fmap_19[15:0]) +
	( 16'sd 18165) * $signed(input_fmap_20[15:0]) +
	( 16'sd 26862) * $signed(input_fmap_21[15:0]) +
	( 14'sd 5392) * $signed(input_fmap_22[15:0]) +
	( 16'sd 25615) * $signed(input_fmap_23[15:0]) +
	( 15'sd 12595) * $signed(input_fmap_24[15:0]) +
	( 13'sd 3353) * $signed(input_fmap_25[15:0]) +
	( 16'sd 24524) * $signed(input_fmap_26[15:0]) +
	( 16'sd 21586) * $signed(input_fmap_27[15:0]) +
	( 13'sd 3042) * $signed(input_fmap_28[15:0]) +
	( 14'sd 7088) * $signed(input_fmap_29[15:0]) +
	( 14'sd 7572) * $signed(input_fmap_30[15:0]) +
	( 14'sd 5098) * $signed(input_fmap_31[15:0]) +
	( 15'sd 9921) * $signed(input_fmap_32[15:0]) +
	( 16'sd 16730) * $signed(input_fmap_33[15:0]) +
	( 16'sd 17777) * $signed(input_fmap_34[15:0]) +
	( 15'sd 11260) * $signed(input_fmap_35[15:0]) +
	( 16'sd 23228) * $signed(input_fmap_36[15:0]) +
	( 16'sd 19783) * $signed(input_fmap_37[15:0]) +
	( 16'sd 18664) * $signed(input_fmap_38[15:0]) +
	( 16'sd 28163) * $signed(input_fmap_39[15:0]) +
	( 16'sd 31502) * $signed(input_fmap_40[15:0]) +
	( 13'sd 2237) * $signed(input_fmap_41[15:0]) +
	( 16'sd 29371) * $signed(input_fmap_42[15:0]) +
	( 15'sd 9656) * $signed(input_fmap_43[15:0]) +
	( 16'sd 18341) * $signed(input_fmap_44[15:0]) +
	( 16'sd 28104) * $signed(input_fmap_45[15:0]) +
	( 16'sd 27707) * $signed(input_fmap_46[15:0]) +
	( 12'sd 1472) * $signed(input_fmap_47[15:0]) +
	( 13'sd 2228) * $signed(input_fmap_48[15:0]) +
	( 15'sd 12107) * $signed(input_fmap_49[15:0]) +
	( 15'sd 15038) * $signed(input_fmap_50[15:0]) +
	( 13'sd 2789) * $signed(input_fmap_51[15:0]) +
	( 16'sd 31437) * $signed(input_fmap_52[15:0]) +
	( 16'sd 26485) * $signed(input_fmap_53[15:0]) +
	( 16'sd 25573) * $signed(input_fmap_54[15:0]) +
	( 16'sd 27688) * $signed(input_fmap_55[15:0]) +
	( 16'sd 30437) * $signed(input_fmap_56[15:0]) +
	( 16'sd 24165) * $signed(input_fmap_57[15:0]) +
	( 12'sd 1081) * $signed(input_fmap_58[15:0]) +
	( 14'sd 5341) * $signed(input_fmap_59[15:0]) +
	( 16'sd 19901) * $signed(input_fmap_60[15:0]) +
	( 15'sd 15097) * $signed(input_fmap_61[15:0]) +
	( 16'sd 29656) * $signed(input_fmap_62[15:0]) +
	( 12'sd 1239) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_96;
assign conv_mac_96 = 
	( 16'sd 18417) * $signed(input_fmap_0[15:0]) +
	( 15'sd 13390) * $signed(input_fmap_1[15:0]) +
	( 14'sd 4110) * $signed(input_fmap_2[15:0]) +
	( 9'sd 136) * $signed(input_fmap_3[15:0]) +
	( 16'sd 29611) * $signed(input_fmap_4[15:0]) +
	( 9'sd 209) * $signed(input_fmap_5[15:0]) +
	( 15'sd 13589) * $signed(input_fmap_6[15:0]) +
	( 14'sd 6475) * $signed(input_fmap_7[15:0]) +
	( 16'sd 25301) * $signed(input_fmap_8[15:0]) +
	( 16'sd 30215) * $signed(input_fmap_9[15:0]) +
	( 14'sd 7438) * $signed(input_fmap_10[15:0]) +
	( 16'sd 21218) * $signed(input_fmap_11[15:0]) +
	( 16'sd 25951) * $signed(input_fmap_12[15:0]) +
	( 16'sd 18416) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13897) * $signed(input_fmap_14[15:0]) +
	( 15'sd 9421) * $signed(input_fmap_15[15:0]) +
	( 15'sd 10502) * $signed(input_fmap_16[15:0]) +
	( 16'sd 21617) * $signed(input_fmap_17[15:0]) +
	( 16'sd 20453) * $signed(input_fmap_18[15:0]) +
	( 16'sd 24032) * $signed(input_fmap_19[15:0]) +
	( 14'sd 4328) * $signed(input_fmap_20[15:0]) +
	( 12'sd 1132) * $signed(input_fmap_21[15:0]) +
	( 15'sd 9243) * $signed(input_fmap_22[15:0]) +
	( 16'sd 31589) * $signed(input_fmap_23[15:0]) +
	( 15'sd 10713) * $signed(input_fmap_24[15:0]) +
	( 15'sd 15509) * $signed(input_fmap_25[15:0]) +
	( 14'sd 7487) * $signed(input_fmap_26[15:0]) +
	( 16'sd 29499) * $signed(input_fmap_27[15:0]) +
	( 14'sd 7733) * $signed(input_fmap_28[15:0]) +
	( 16'sd 30021) * $signed(input_fmap_29[15:0]) +
	( 16'sd 30664) * $signed(input_fmap_30[15:0]) +
	( 16'sd 19560) * $signed(input_fmap_31[15:0]) +
	( 16'sd 31688) * $signed(input_fmap_32[15:0]) +
	( 16'sd 26095) * $signed(input_fmap_33[15:0]) +
	( 13'sd 3464) * $signed(input_fmap_34[15:0]) +
	( 16'sd 27129) * $signed(input_fmap_35[15:0]) +
	( 16'sd 24030) * $signed(input_fmap_36[15:0]) +
	( 15'sd 15147) * $signed(input_fmap_37[15:0]) +
	( 16'sd 20272) * $signed(input_fmap_38[15:0]) +
	( 14'sd 4911) * $signed(input_fmap_39[15:0]) +
	( 16'sd 23913) * $signed(input_fmap_40[15:0]) +
	( 13'sd 3553) * $signed(input_fmap_41[15:0]) +
	( 16'sd 20898) * $signed(input_fmap_42[15:0]) +
	( 16'sd 20437) * $signed(input_fmap_43[15:0]) +
	( 16'sd 19998) * $signed(input_fmap_44[15:0]) +
	( 16'sd 31211) * $signed(input_fmap_45[15:0]) +
	( 13'sd 3598) * $signed(input_fmap_46[15:0]) +
	( 12'sd 1055) * $signed(input_fmap_47[15:0]) +
	( 16'sd 26506) * $signed(input_fmap_48[15:0]) +
	( 16'sd 27824) * $signed(input_fmap_49[15:0]) +
	( 16'sd 20324) * $signed(input_fmap_50[15:0]) +
	( 14'sd 6777) * $signed(input_fmap_51[15:0]) +
	( 14'sd 7201) * $signed(input_fmap_52[15:0]) +
	( 16'sd 25323) * $signed(input_fmap_53[15:0]) +
	( 10'sd 320) * $signed(input_fmap_54[15:0]) +
	( 16'sd 30781) * $signed(input_fmap_55[15:0]) +
	( 16'sd 18050) * $signed(input_fmap_56[15:0]) +
	( 16'sd 17387) * $signed(input_fmap_57[15:0]) +
	( 16'sd 31603) * $signed(input_fmap_58[15:0]) +
	( 15'sd 9640) * $signed(input_fmap_59[15:0]) +
	( 16'sd 31211) * $signed(input_fmap_60[15:0]) +
	( 15'sd 11976) * $signed(input_fmap_61[15:0]) +
	( 16'sd 22275) * $signed(input_fmap_62[15:0]) +
	( 15'sd 14669) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_97;
assign conv_mac_97 = 
	( 14'sd 7997) * $signed(input_fmap_0[15:0]) +
	( 15'sd 15265) * $signed(input_fmap_1[15:0]) +
	( 14'sd 5743) * $signed(input_fmap_2[15:0]) +
	( 14'sd 6850) * $signed(input_fmap_3[15:0]) +
	( 16'sd 31802) * $signed(input_fmap_4[15:0]) +
	( 16'sd 24379) * $signed(input_fmap_5[15:0]) +
	( 14'sd 5081) * $signed(input_fmap_6[15:0]) +
	( 15'sd 8684) * $signed(input_fmap_7[15:0]) +
	( 16'sd 18207) * $signed(input_fmap_8[15:0]) +
	( 13'sd 2782) * $signed(input_fmap_9[15:0]) +
	( 16'sd 17247) * $signed(input_fmap_10[15:0]) +
	( 16'sd 18339) * $signed(input_fmap_11[15:0]) +
	( 15'sd 10304) * $signed(input_fmap_12[15:0]) +
	( 16'sd 24610) * $signed(input_fmap_13[15:0]) +
	( 16'sd 28998) * $signed(input_fmap_14[15:0]) +
	( 16'sd 27627) * $signed(input_fmap_15[15:0]) +
	( 15'sd 14462) * $signed(input_fmap_16[15:0]) +
	( 14'sd 7918) * $signed(input_fmap_17[15:0]) +
	( 16'sd 22862) * $signed(input_fmap_18[15:0]) +
	( 16'sd 18237) * $signed(input_fmap_19[15:0]) +
	( 16'sd 29568) * $signed(input_fmap_20[15:0]) +
	( 16'sd 17672) * $signed(input_fmap_21[15:0]) +
	( 16'sd 29845) * $signed(input_fmap_22[15:0]) +
	( 16'sd 24527) * $signed(input_fmap_23[15:0]) +
	( 14'sd 7353) * $signed(input_fmap_24[15:0]) +
	( 16'sd 19821) * $signed(input_fmap_25[15:0]) +
	( 16'sd 28974) * $signed(input_fmap_26[15:0]) +
	( 16'sd 22325) * $signed(input_fmap_27[15:0]) +
	( 14'sd 6381) * $signed(input_fmap_28[15:0]) +
	( 16'sd 17387) * $signed(input_fmap_29[15:0]) +
	( 15'sd 8392) * $signed(input_fmap_30[15:0]) +
	( 16'sd 23994) * $signed(input_fmap_31[15:0]) +
	( 13'sd 3955) * $signed(input_fmap_32[15:0]) +
	( 16'sd 16788) * $signed(input_fmap_33[15:0]) +
	( 16'sd 25377) * $signed(input_fmap_34[15:0]) +
	( 16'sd 20551) * $signed(input_fmap_35[15:0]) +
	( 15'sd 12431) * $signed(input_fmap_36[15:0]) +
	( 13'sd 2461) * $signed(input_fmap_37[15:0]) +
	( 16'sd 24586) * $signed(input_fmap_38[15:0]) +
	( 15'sd 11789) * $signed(input_fmap_39[15:0]) +
	( 16'sd 21358) * $signed(input_fmap_40[15:0]) +
	( 14'sd 4456) * $signed(input_fmap_41[15:0]) +
	( 15'sd 8566) * $signed(input_fmap_42[15:0]) +
	( 16'sd 21418) * $signed(input_fmap_43[15:0]) +
	( 15'sd 10801) * $signed(input_fmap_44[15:0]) +
	( 15'sd 14014) * $signed(input_fmap_45[15:0]) +
	( 15'sd 15155) * $signed(input_fmap_46[15:0]) +
	( 16'sd 29042) * $signed(input_fmap_47[15:0]) +
	( 16'sd 16787) * $signed(input_fmap_48[15:0]) +
	( 14'sd 5146) * $signed(input_fmap_49[15:0]) +
	( 16'sd 32568) * $signed(input_fmap_50[15:0]) +
	( 14'sd 5212) * $signed(input_fmap_51[15:0]) +
	( 16'sd 21819) * $signed(input_fmap_52[15:0]) +
	( 13'sd 3751) * $signed(input_fmap_53[15:0]) +
	( 16'sd 28815) * $signed(input_fmap_54[15:0]) +
	( 16'sd 20922) * $signed(input_fmap_55[15:0]) +
	( 16'sd 30882) * $signed(input_fmap_56[15:0]) +
	( 16'sd 29986) * $signed(input_fmap_57[15:0]) +
	( 15'sd 13600) * $signed(input_fmap_58[15:0]) +
	( 15'sd 9770) * $signed(input_fmap_59[15:0]) +
	( 12'sd 1708) * $signed(input_fmap_60[15:0]) +
	( 14'sd 5628) * $signed(input_fmap_61[15:0]) +
	( 14'sd 8117) * $signed(input_fmap_62[15:0]) +
	( 10'sd 373) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_98;
assign conv_mac_98 = 
	( 16'sd 29478) * $signed(input_fmap_0[15:0]) +
	( 16'sd 23818) * $signed(input_fmap_1[15:0]) +
	( 16'sd 25581) * $signed(input_fmap_2[15:0]) +
	( 15'sd 11012) * $signed(input_fmap_3[15:0]) +
	( 15'sd 11465) * $signed(input_fmap_4[15:0]) +
	( 13'sd 2131) * $signed(input_fmap_5[15:0]) +
	( 15'sd 9982) * $signed(input_fmap_6[15:0]) +
	( 15'sd 12455) * $signed(input_fmap_7[15:0]) +
	( 16'sd 17846) * $signed(input_fmap_8[15:0]) +
	( 12'sd 1262) * $signed(input_fmap_9[15:0]) +
	( 16'sd 32064) * $signed(input_fmap_10[15:0]) +
	( 15'sd 8317) * $signed(input_fmap_11[15:0]) +
	( 14'sd 6876) * $signed(input_fmap_12[15:0]) +
	( 14'sd 4099) * $signed(input_fmap_13[15:0]) +
	( 16'sd 23729) * $signed(input_fmap_14[15:0]) +
	( 16'sd 26448) * $signed(input_fmap_15[15:0]) +
	( 12'sd 1799) * $signed(input_fmap_16[15:0]) +
	( 14'sd 6023) * $signed(input_fmap_17[15:0]) +
	( 16'sd 16546) * $signed(input_fmap_18[15:0]) +
	( 16'sd 19640) * $signed(input_fmap_19[15:0]) +
	( 16'sd 32440) * $signed(input_fmap_20[15:0]) +
	( 15'sd 16031) * $signed(input_fmap_21[15:0]) +
	( 12'sd 1497) * $signed(input_fmap_22[15:0]) +
	( 12'sd 1345) * $signed(input_fmap_23[15:0]) +
	( 16'sd 23131) * $signed(input_fmap_24[15:0]) +
	( 16'sd 30023) * $signed(input_fmap_25[15:0]) +
	( 14'sd 4526) * $signed(input_fmap_26[15:0]) +
	( 12'sd 1817) * $signed(input_fmap_27[15:0]) +
	( 13'sd 2891) * $signed(input_fmap_28[15:0]) +
	( 16'sd 26561) * $signed(input_fmap_29[15:0]) +
	( 12'sd 1362) * $signed(input_fmap_30[15:0]) +
	( 16'sd 32384) * $signed(input_fmap_31[15:0]) +
	( 16'sd 18259) * $signed(input_fmap_32[15:0]) +
	( 16'sd 31042) * $signed(input_fmap_33[15:0]) +
	( 15'sd 11216) * $signed(input_fmap_34[15:0]) +
	( 16'sd 21089) * $signed(input_fmap_35[15:0]) +
	( 16'sd 21910) * $signed(input_fmap_36[15:0]) +
	( 16'sd 21921) * $signed(input_fmap_37[15:0]) +
	( 12'sd 1551) * $signed(input_fmap_38[15:0]) +
	( 16'sd 17936) * $signed(input_fmap_39[15:0]) +
	( 16'sd 25564) * $signed(input_fmap_40[15:0]) +
	( 16'sd 19582) * $signed(input_fmap_41[15:0]) +
	( 16'sd 31425) * $signed(input_fmap_42[15:0]) +
	( 12'sd 1419) * $signed(input_fmap_43[15:0]) +
	( 16'sd 32044) * $signed(input_fmap_44[15:0]) +
	( 11'sd 925) * $signed(input_fmap_45[15:0]) +
	( 12'sd 1201) * $signed(input_fmap_46[15:0]) +
	( 14'sd 7997) * $signed(input_fmap_47[15:0]) +
	( 15'sd 13243) * $signed(input_fmap_48[15:0]) +
	( 15'sd 14690) * $signed(input_fmap_49[15:0]) +
	( 16'sd 17458) * $signed(input_fmap_50[15:0]) +
	( 15'sd 16278) * $signed(input_fmap_51[15:0]) +
	( 15'sd 12524) * $signed(input_fmap_52[15:0]) +
	( 16'sd 27053) * $signed(input_fmap_53[15:0]) +
	( 14'sd 6814) * $signed(input_fmap_54[15:0]) +
	( 16'sd 25742) * $signed(input_fmap_55[15:0]) +
	( 16'sd 32633) * $signed(input_fmap_56[15:0]) +
	( 16'sd 28823) * $signed(input_fmap_57[15:0]) +
	( 16'sd 22494) * $signed(input_fmap_58[15:0]) +
	( 16'sd 27959) * $signed(input_fmap_59[15:0]) +
	( 16'sd 30310) * $signed(input_fmap_60[15:0]) +
	( 15'sd 9819) * $signed(input_fmap_61[15:0]) +
	( 16'sd 32518) * $signed(input_fmap_62[15:0]) +
	( 14'sd 4148) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_99;
assign conv_mac_99 = 
	( 15'sd 15817) * $signed(input_fmap_0[15:0]) +
	( 14'sd 5997) * $signed(input_fmap_1[15:0]) +
	( 14'sd 4709) * $signed(input_fmap_2[15:0]) +
	( 15'sd 10075) * $signed(input_fmap_3[15:0]) +
	( 13'sd 3070) * $signed(input_fmap_4[15:0]) +
	( 16'sd 29056) * $signed(input_fmap_5[15:0]) +
	( 10'sd 380) * $signed(input_fmap_6[15:0]) +
	( 12'sd 1114) * $signed(input_fmap_7[15:0]) +
	( 16'sd 17183) * $signed(input_fmap_8[15:0]) +
	( 12'sd 1684) * $signed(input_fmap_9[15:0]) +
	( 15'sd 15599) * $signed(input_fmap_10[15:0]) +
	( 16'sd 16730) * $signed(input_fmap_11[15:0]) +
	( 16'sd 26419) * $signed(input_fmap_12[15:0]) +
	( 12'sd 1365) * $signed(input_fmap_13[15:0]) +
	( 15'sd 12081) * $signed(input_fmap_14[15:0]) +
	( 14'sd 5971) * $signed(input_fmap_15[15:0]) +
	( 15'sd 10649) * $signed(input_fmap_16[15:0]) +
	( 12'sd 1607) * $signed(input_fmap_17[15:0]) +
	( 15'sd 14280) * $signed(input_fmap_18[15:0]) +
	( 16'sd 28345) * $signed(input_fmap_19[15:0]) +
	( 15'sd 12424) * $signed(input_fmap_20[15:0]) +
	( 15'sd 15712) * $signed(input_fmap_21[15:0]) +
	( 14'sd 7689) * $signed(input_fmap_22[15:0]) +
	( 16'sd 19927) * $signed(input_fmap_23[15:0]) +
	( 16'sd 31971) * $signed(input_fmap_24[15:0]) +
	( 15'sd 14900) * $signed(input_fmap_25[15:0]) +
	( 16'sd 20476) * $signed(input_fmap_26[15:0]) +
	( 15'sd 10360) * $signed(input_fmap_27[15:0]) +
	( 16'sd 19000) * $signed(input_fmap_28[15:0]) +
	( 14'sd 7059) * $signed(input_fmap_29[15:0]) +
	( 13'sd 3063) * $signed(input_fmap_30[15:0]) +
	( 16'sd 17813) * $signed(input_fmap_31[15:0]) +
	( 16'sd 25719) * $signed(input_fmap_32[15:0]) +
	( 16'sd 20503) * $signed(input_fmap_33[15:0]) +
	( 16'sd 24612) * $signed(input_fmap_34[15:0]) +
	( 14'sd 7878) * $signed(input_fmap_35[15:0]) +
	( 14'sd 8077) * $signed(input_fmap_36[15:0]) +
	( 15'sd 9716) * $signed(input_fmap_37[15:0]) +
	( 16'sd 27302) * $signed(input_fmap_38[15:0]) +
	( 14'sd 4591) * $signed(input_fmap_39[15:0]) +
	( 16'sd 19530) * $signed(input_fmap_40[15:0]) +
	( 16'sd 31155) * $signed(input_fmap_41[15:0]) +
	( 14'sd 5562) * $signed(input_fmap_42[15:0]) +
	( 16'sd 24222) * $signed(input_fmap_43[15:0]) +
	( 16'sd 31745) * $signed(input_fmap_44[15:0]) +
	( 16'sd 19582) * $signed(input_fmap_45[15:0]) +
	( 14'sd 4449) * $signed(input_fmap_46[15:0]) +
	( 15'sd 13975) * $signed(input_fmap_47[15:0]) +
	( 8'sd 71) * $signed(input_fmap_48[15:0]) +
	( 16'sd 26865) * $signed(input_fmap_49[15:0]) +
	( 16'sd 30445) * $signed(input_fmap_50[15:0]) +
	( 16'sd 18566) * $signed(input_fmap_51[15:0]) +
	( 14'sd 5755) * $signed(input_fmap_52[15:0]) +
	( 16'sd 26422) * $signed(input_fmap_53[15:0]) +
	( 15'sd 13022) * $signed(input_fmap_54[15:0]) +
	( 15'sd 14174) * $signed(input_fmap_55[15:0]) +
	( 15'sd 15163) * $signed(input_fmap_56[15:0]) +
	( 14'sd 4308) * $signed(input_fmap_57[15:0]) +
	( 15'sd 13830) * $signed(input_fmap_58[15:0]) +
	( 16'sd 22908) * $signed(input_fmap_59[15:0]) +
	( 15'sd 13723) * $signed(input_fmap_60[15:0]) +
	( 15'sd 11121) * $signed(input_fmap_61[15:0]) +
	( 12'sd 1919) * $signed(input_fmap_62[15:0]) +
	( 15'sd 12572) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_100;
assign conv_mac_100 = 
	( 14'sd 7275) * $signed(input_fmap_0[15:0]) +
	( 15'sd 8211) * $signed(input_fmap_1[15:0]) +
	( 13'sd 2099) * $signed(input_fmap_2[15:0]) +
	( 16'sd 22532) * $signed(input_fmap_3[15:0]) +
	( 16'sd 31818) * $signed(input_fmap_4[15:0]) +
	( 16'sd 25862) * $signed(input_fmap_5[15:0]) +
	( 16'sd 17541) * $signed(input_fmap_6[15:0]) +
	( 14'sd 6323) * $signed(input_fmap_7[15:0]) +
	( 15'sd 12299) * $signed(input_fmap_8[15:0]) +
	( 14'sd 7835) * $signed(input_fmap_9[15:0]) +
	( 16'sd 28440) * $signed(input_fmap_10[15:0]) +
	( 16'sd 17260) * $signed(input_fmap_11[15:0]) +
	( 15'sd 14290) * $signed(input_fmap_12[15:0]) +
	( 16'sd 23063) * $signed(input_fmap_13[15:0]) +
	( 13'sd 3797) * $signed(input_fmap_14[15:0]) +
	( 16'sd 19921) * $signed(input_fmap_15[15:0]) +
	( 11'sd 986) * $signed(input_fmap_16[15:0]) +
	( 15'sd 14912) * $signed(input_fmap_17[15:0]) +
	( 16'sd 21904) * $signed(input_fmap_18[15:0]) +
	( 16'sd 17816) * $signed(input_fmap_19[15:0]) +
	( 16'sd 16704) * $signed(input_fmap_20[15:0]) +
	( 16'sd 32354) * $signed(input_fmap_21[15:0]) +
	( 16'sd 26162) * $signed(input_fmap_22[15:0]) +
	( 16'sd 24470) * $signed(input_fmap_23[15:0]) +
	( 15'sd 8266) * $signed(input_fmap_24[15:0]) +
	( 16'sd 27675) * $signed(input_fmap_25[15:0]) +
	( 15'sd 15416) * $signed(input_fmap_26[15:0]) +
	( 14'sd 8082) * $signed(input_fmap_27[15:0]) +
	( 13'sd 2838) * $signed(input_fmap_28[15:0]) +
	( 15'sd 9263) * $signed(input_fmap_29[15:0]) +
	( 16'sd 28144) * $signed(input_fmap_30[15:0]) +
	( 16'sd 23235) * $signed(input_fmap_31[15:0]) +
	( 12'sd 1732) * $signed(input_fmap_32[15:0]) +
	( 16'sd 20779) * $signed(input_fmap_33[15:0]) +
	( 15'sd 15642) * $signed(input_fmap_34[15:0]) +
	( 16'sd 20137) * $signed(input_fmap_35[15:0]) +
	( 16'sd 25994) * $signed(input_fmap_36[15:0]) +
	( 16'sd 20197) * $signed(input_fmap_37[15:0]) +
	( 14'sd 4826) * $signed(input_fmap_38[15:0]) +
	( 14'sd 6978) * $signed(input_fmap_39[15:0]) +
	( 16'sd 16565) * $signed(input_fmap_40[15:0]) +
	( 16'sd 16430) * $signed(input_fmap_41[15:0]) +
	( 15'sd 14584) * $signed(input_fmap_42[15:0]) +
	( 16'sd 19369) * $signed(input_fmap_43[15:0]) +
	( 14'sd 7404) * $signed(input_fmap_44[15:0]) +
	( 16'sd 22333) * $signed(input_fmap_45[15:0]) +
	( 16'sd 19260) * $signed(input_fmap_46[15:0]) +
	( 15'sd 10503) * $signed(input_fmap_47[15:0]) +
	( 16'sd 23262) * $signed(input_fmap_48[15:0]) +
	( 16'sd 31948) * $signed(input_fmap_49[15:0]) +
	( 16'sd 23492) * $signed(input_fmap_50[15:0]) +
	( 16'sd 17927) * $signed(input_fmap_51[15:0]) +
	( 16'sd 32174) * $signed(input_fmap_52[15:0]) +
	( 15'sd 11764) * $signed(input_fmap_53[15:0]) +
	( 16'sd 30095) * $signed(input_fmap_54[15:0]) +
	( 15'sd 11643) * $signed(input_fmap_55[15:0]) +
	( 16'sd 26856) * $signed(input_fmap_56[15:0]) +
	( 14'sd 4118) * $signed(input_fmap_57[15:0]) +
	( 16'sd 18086) * $signed(input_fmap_58[15:0]) +
	( 14'sd 8155) * $signed(input_fmap_59[15:0]) +
	( 15'sd 15355) * $signed(input_fmap_60[15:0]) +
	( 14'sd 5489) * $signed(input_fmap_61[15:0]) +
	( 15'sd 13963) * $signed(input_fmap_62[15:0]) +
	( 10'sd 465) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_101;
assign conv_mac_101 = 
	( 11'sd 895) * $signed(input_fmap_0[15:0]) +
	( 15'sd 10109) * $signed(input_fmap_1[15:0]) +
	( 16'sd 18847) * $signed(input_fmap_2[15:0]) +
	( 16'sd 31508) * $signed(input_fmap_3[15:0]) +
	( 15'sd 13829) * $signed(input_fmap_4[15:0]) +
	( 16'sd 24553) * $signed(input_fmap_5[15:0]) +
	( 16'sd 32288) * $signed(input_fmap_6[15:0]) +
	( 16'sd 17492) * $signed(input_fmap_7[15:0]) +
	( 16'sd 26279) * $signed(input_fmap_8[15:0]) +
	( 15'sd 14565) * $signed(input_fmap_9[15:0]) +
	( 16'sd 26152) * $signed(input_fmap_10[15:0]) +
	( 16'sd 31587) * $signed(input_fmap_11[15:0]) +
	( 16'sd 28655) * $signed(input_fmap_12[15:0]) +
	( 14'sd 6954) * $signed(input_fmap_13[15:0]) +
	( 15'sd 15033) * $signed(input_fmap_14[15:0]) +
	( 15'sd 14276) * $signed(input_fmap_15[15:0]) +
	( 14'sd 6854) * $signed(input_fmap_16[15:0]) +
	( 13'sd 3105) * $signed(input_fmap_17[15:0]) +
	( 16'sd 20751) * $signed(input_fmap_18[15:0]) +
	( 15'sd 14374) * $signed(input_fmap_19[15:0]) +
	( 16'sd 23108) * $signed(input_fmap_20[15:0]) +
	( 15'sd 8375) * $signed(input_fmap_21[15:0]) +
	( 16'sd 20626) * $signed(input_fmap_22[15:0]) +
	( 16'sd 27701) * $signed(input_fmap_23[15:0]) +
	( 14'sd 5940) * $signed(input_fmap_24[15:0]) +
	( 16'sd 23959) * $signed(input_fmap_25[15:0]) +
	( 16'sd 20606) * $signed(input_fmap_26[15:0]) +
	( 14'sd 4886) * $signed(input_fmap_27[15:0]) +
	( 16'sd 19309) * $signed(input_fmap_28[15:0]) +
	( 16'sd 31399) * $signed(input_fmap_29[15:0]) +
	( 11'sd 640) * $signed(input_fmap_30[15:0]) +
	( 15'sd 12604) * $signed(input_fmap_31[15:0]) +
	( 16'sd 27394) * $signed(input_fmap_32[15:0]) +
	( 16'sd 24724) * $signed(input_fmap_33[15:0]) +
	( 16'sd 23762) * $signed(input_fmap_34[15:0]) +
	( 16'sd 17480) * $signed(input_fmap_35[15:0]) +
	( 14'sd 7648) * $signed(input_fmap_36[15:0]) +
	( 16'sd 26470) * $signed(input_fmap_37[15:0]) +
	( 14'sd 4506) * $signed(input_fmap_38[15:0]) +
	( 12'sd 1767) * $signed(input_fmap_39[15:0]) +
	( 16'sd 32165) * $signed(input_fmap_40[15:0]) +
	( 15'sd 12620) * $signed(input_fmap_41[15:0]) +
	( 15'sd 8396) * $signed(input_fmap_42[15:0]) +
	( 14'sd 5807) * $signed(input_fmap_43[15:0]) +
	( 15'sd 10024) * $signed(input_fmap_44[15:0]) +
	( 16'sd 26489) * $signed(input_fmap_45[15:0]) +
	( 15'sd 10805) * $signed(input_fmap_46[15:0]) +
	( 15'sd 12455) * $signed(input_fmap_47[15:0]) +
	( 15'sd 13363) * $signed(input_fmap_48[15:0]) +
	( 16'sd 26219) * $signed(input_fmap_49[15:0]) +
	( 16'sd 18741) * $signed(input_fmap_50[15:0]) +
	( 16'sd 17364) * $signed(input_fmap_51[15:0]) +
	( 16'sd 32611) * $signed(input_fmap_52[15:0]) +
	( 15'sd 11019) * $signed(input_fmap_53[15:0]) +
	( 16'sd 31036) * $signed(input_fmap_54[15:0]) +
	( 14'sd 7113) * $signed(input_fmap_55[15:0]) +
	( 16'sd 32569) * $signed(input_fmap_56[15:0]) +
	( 16'sd 19383) * $signed(input_fmap_57[15:0]) +
	( 14'sd 7437) * $signed(input_fmap_58[15:0]) +
	( 16'sd 18794) * $signed(input_fmap_59[15:0]) +
	( 10'sd 394) * $signed(input_fmap_60[15:0]) +
	( 14'sd 4542) * $signed(input_fmap_61[15:0]) +
	( 16'sd 21337) * $signed(input_fmap_62[15:0]) +
	( 15'sd 13261) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_102;
assign conv_mac_102 = 
	( 15'sd 9252) * $signed(input_fmap_0[15:0]) +
	( 16'sd 29781) * $signed(input_fmap_1[15:0]) +
	( 16'sd 32583) * $signed(input_fmap_2[15:0]) +
	( 13'sd 3043) * $signed(input_fmap_3[15:0]) +
	( 15'sd 12497) * $signed(input_fmap_4[15:0]) +
	( 15'sd 14198) * $signed(input_fmap_5[15:0]) +
	( 16'sd 21694) * $signed(input_fmap_6[15:0]) +
	( 15'sd 14170) * $signed(input_fmap_7[15:0]) +
	( 12'sd 1803) * $signed(input_fmap_8[15:0]) +
	( 16'sd 18677) * $signed(input_fmap_9[15:0]) +
	( 16'sd 31547) * $signed(input_fmap_10[15:0]) +
	( 16'sd 20902) * $signed(input_fmap_11[15:0]) +
	( 15'sd 11410) * $signed(input_fmap_12[15:0]) +
	( 15'sd 16145) * $signed(input_fmap_13[15:0]) +
	( 15'sd 9407) * $signed(input_fmap_14[15:0]) +
	( 16'sd 31995) * $signed(input_fmap_15[15:0]) +
	( 13'sd 3613) * $signed(input_fmap_16[15:0]) +
	( 16'sd 23768) * $signed(input_fmap_17[15:0]) +
	( 16'sd 28306) * $signed(input_fmap_18[15:0]) +
	( 16'sd 28561) * $signed(input_fmap_19[15:0]) +
	( 13'sd 2771) * $signed(input_fmap_20[15:0]) +
	( 15'sd 13356) * $signed(input_fmap_21[15:0]) +
	( 16'sd 17154) * $signed(input_fmap_22[15:0]) +
	( 14'sd 5043) * $signed(input_fmap_23[15:0]) +
	( 16'sd 28639) * $signed(input_fmap_24[15:0]) +
	( 16'sd 30246) * $signed(input_fmap_25[15:0]) +
	( 16'sd 23183) * $signed(input_fmap_26[15:0]) +
	( 16'sd 25331) * $signed(input_fmap_27[15:0]) +
	( 16'sd 28769) * $signed(input_fmap_28[15:0]) +
	( 14'sd 5778) * $signed(input_fmap_29[15:0]) +
	( 11'sd 687) * $signed(input_fmap_30[15:0]) +
	( 15'sd 11535) * $signed(input_fmap_31[15:0]) +
	( 15'sd 12550) * $signed(input_fmap_32[15:0]) +
	( 16'sd 17299) * $signed(input_fmap_33[15:0]) +
	( 13'sd 2570) * $signed(input_fmap_34[15:0]) +
	( 15'sd 16079) * $signed(input_fmap_35[15:0]) +
	( 15'sd 13711) * $signed(input_fmap_36[15:0]) +
	( 15'sd 8706) * $signed(input_fmap_37[15:0]) +
	( 15'sd 14298) * $signed(input_fmap_38[15:0]) +
	( 16'sd 21242) * $signed(input_fmap_39[15:0]) +
	( 15'sd 14592) * $signed(input_fmap_40[15:0]) +
	( 16'sd 19581) * $signed(input_fmap_41[15:0]) +
	( 16'sd 26582) * $signed(input_fmap_42[15:0]) +
	( 15'sd 11517) * $signed(input_fmap_43[15:0]) +
	( 15'sd 9328) * $signed(input_fmap_44[15:0]) +
	( 15'sd 15251) * $signed(input_fmap_45[15:0]) +
	( 16'sd 27546) * $signed(input_fmap_46[15:0]) +
	( 16'sd 25681) * $signed(input_fmap_47[15:0]) +
	( 13'sd 3397) * $signed(input_fmap_48[15:0]) +
	( 15'sd 14840) * $signed(input_fmap_49[15:0]) +
	( 15'sd 13019) * $signed(input_fmap_50[15:0]) +
	( 16'sd 17054) * $signed(input_fmap_51[15:0]) +
	( 14'sd 7845) * $signed(input_fmap_52[15:0]) +
	( 16'sd 28962) * $signed(input_fmap_53[15:0]) +
	( 15'sd 8546) * $signed(input_fmap_54[15:0]) +
	( 14'sd 7651) * $signed(input_fmap_55[15:0]) +
	( 16'sd 21469) * $signed(input_fmap_56[15:0]) +
	( 16'sd 28956) * $signed(input_fmap_57[15:0]) +
	( 16'sd 16905) * $signed(input_fmap_58[15:0]) +
	( 16'sd 22504) * $signed(input_fmap_59[15:0]) +
	( 16'sd 27206) * $signed(input_fmap_60[15:0]) +
	( 13'sd 3067) * $signed(input_fmap_61[15:0]) +
	( 16'sd 21443) * $signed(input_fmap_62[15:0]) +
	( 15'sd 16104) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_103;
assign conv_mac_103 = 
	( 16'sd 24515) * $signed(input_fmap_0[15:0]) +
	( 16'sd 18024) * $signed(input_fmap_1[15:0]) +
	( 16'sd 28791) * $signed(input_fmap_2[15:0]) +
	( 13'sd 2920) * $signed(input_fmap_3[15:0]) +
	( 15'sd 12096) * $signed(input_fmap_4[15:0]) +
	( 16'sd 16948) * $signed(input_fmap_5[15:0]) +
	( 16'sd 21154) * $signed(input_fmap_6[15:0]) +
	( 15'sd 11347) * $signed(input_fmap_7[15:0]) +
	( 16'sd 20034) * $signed(input_fmap_8[15:0]) +
	( 16'sd 29415) * $signed(input_fmap_9[15:0]) +
	( 15'sd 13682) * $signed(input_fmap_10[15:0]) +
	( 15'sd 9145) * $signed(input_fmap_11[15:0]) +
	( 15'sd 12209) * $signed(input_fmap_12[15:0]) +
	( 16'sd 22215) * $signed(input_fmap_13[15:0]) +
	( 14'sd 4203) * $signed(input_fmap_14[15:0]) +
	( 15'sd 11536) * $signed(input_fmap_15[15:0]) +
	( 16'sd 26164) * $signed(input_fmap_16[15:0]) +
	( 16'sd 26593) * $signed(input_fmap_17[15:0]) +
	( 14'sd 6291) * $signed(input_fmap_18[15:0]) +
	( 16'sd 21123) * $signed(input_fmap_19[15:0]) +
	( 14'sd 4779) * $signed(input_fmap_20[15:0]) +
	( 16'sd 26443) * $signed(input_fmap_21[15:0]) +
	( 16'sd 30696) * $signed(input_fmap_22[15:0]) +
	( 16'sd 20098) * $signed(input_fmap_23[15:0]) +
	( 16'sd 25007) * $signed(input_fmap_24[15:0]) +
	( 15'sd 11243) * $signed(input_fmap_25[15:0]) +
	( 13'sd 2097) * $signed(input_fmap_26[15:0]) +
	( 16'sd 23569) * $signed(input_fmap_27[15:0]) +
	( 15'sd 11633) * $signed(input_fmap_28[15:0]) +
	( 9'sd 221) * $signed(input_fmap_29[15:0]) +
	( 12'sd 1911) * $signed(input_fmap_30[15:0]) +
	( 13'sd 3891) * $signed(input_fmap_31[15:0]) +
	( 15'sd 8219) * $signed(input_fmap_32[15:0]) +
	( 16'sd 30652) * $signed(input_fmap_33[15:0]) +
	( 16'sd 30578) * $signed(input_fmap_34[15:0]) +
	( 16'sd 21169) * $signed(input_fmap_35[15:0]) +
	( 15'sd 11922) * $signed(input_fmap_36[15:0]) +
	( 16'sd 23164) * $signed(input_fmap_37[15:0]) +
	( 16'sd 17742) * $signed(input_fmap_38[15:0]) +
	( 16'sd 21625) * $signed(input_fmap_39[15:0]) +
	( 12'sd 1079) * $signed(input_fmap_40[15:0]) +
	( 14'sd 4363) * $signed(input_fmap_41[15:0]) +
	( 13'sd 3223) * $signed(input_fmap_42[15:0]) +
	( 15'sd 13247) * $signed(input_fmap_43[15:0]) +
	( 15'sd 10900) * $signed(input_fmap_44[15:0]) +
	( 10'sd 325) * $signed(input_fmap_45[15:0]) +
	( 12'sd 1348) * $signed(input_fmap_46[15:0]) +
	( 14'sd 5971) * $signed(input_fmap_47[15:0]) +
	( 16'sd 19168) * $signed(input_fmap_48[15:0]) +
	( 15'sd 9848) * $signed(input_fmap_49[15:0]) +
	( 14'sd 7125) * $signed(input_fmap_50[15:0]) +
	( 15'sd 11077) * $signed(input_fmap_51[15:0]) +
	( 14'sd 6010) * $signed(input_fmap_52[15:0]) +
	( 14'sd 5852) * $signed(input_fmap_53[15:0]) +
	( 13'sd 3464) * $signed(input_fmap_54[15:0]) +
	( 16'sd 23434) * $signed(input_fmap_55[15:0]) +
	( 16'sd 32123) * $signed(input_fmap_56[15:0]) +
	( 16'sd 20841) * $signed(input_fmap_57[15:0]) +
	( 14'sd 7136) * $signed(input_fmap_58[15:0]) +
	( 14'sd 8096) * $signed(input_fmap_59[15:0]) +
	( 15'sd 12181) * $signed(input_fmap_60[15:0]) +
	( 15'sd 9264) * $signed(input_fmap_61[15:0]) +
	( 11'sd 772) * $signed(input_fmap_62[15:0]) +
	( 8'sd 105) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_104;
assign conv_mac_104 = 
	( 16'sd 29758) * $signed(input_fmap_0[15:0]) +
	( 15'sd 15788) * $signed(input_fmap_1[15:0]) +
	( 16'sd 22242) * $signed(input_fmap_2[15:0]) +
	( 16'sd 16667) * $signed(input_fmap_3[15:0]) +
	( 15'sd 16185) * $signed(input_fmap_4[15:0]) +
	( 16'sd 28439) * $signed(input_fmap_5[15:0]) +
	( 14'sd 6509) * $signed(input_fmap_6[15:0]) +
	( 15'sd 15419) * $signed(input_fmap_7[15:0]) +
	( 15'sd 9602) * $signed(input_fmap_8[15:0]) +
	( 14'sd 6217) * $signed(input_fmap_9[15:0]) +
	( 15'sd 16104) * $signed(input_fmap_10[15:0]) +
	( 14'sd 5901) * $signed(input_fmap_11[15:0]) +
	( 16'sd 21373) * $signed(input_fmap_12[15:0]) +
	( 16'sd 18707) * $signed(input_fmap_13[15:0]) +
	( 14'sd 7644) * $signed(input_fmap_14[15:0]) +
	( 16'sd 30914) * $signed(input_fmap_15[15:0]) +
	( 14'sd 4337) * $signed(input_fmap_16[15:0]) +
	( 15'sd 10219) * $signed(input_fmap_17[15:0]) +
	( 14'sd 5410) * $signed(input_fmap_18[15:0]) +
	( 15'sd 12262) * $signed(input_fmap_19[15:0]) +
	( 16'sd 25456) * $signed(input_fmap_20[15:0]) +
	( 12'sd 1400) * $signed(input_fmap_21[15:0]) +
	( 16'sd 23102) * $signed(input_fmap_22[15:0]) +
	( 16'sd 30097) * $signed(input_fmap_23[15:0]) +
	( 15'sd 12051) * $signed(input_fmap_24[15:0]) +
	( 15'sd 10881) * $signed(input_fmap_25[15:0]) +
	( 16'sd 22147) * $signed(input_fmap_26[15:0]) +
	( 16'sd 19594) * $signed(input_fmap_27[15:0]) +
	( 16'sd 29357) * $signed(input_fmap_28[15:0]) +
	( 16'sd 24958) * $signed(input_fmap_29[15:0]) +
	( 16'sd 30732) * $signed(input_fmap_30[15:0]) +
	( 16'sd 28434) * $signed(input_fmap_31[15:0]) +
	( 16'sd 26390) * $signed(input_fmap_32[15:0]) +
	( 15'sd 10549) * $signed(input_fmap_33[15:0]) +
	( 15'sd 12383) * $signed(input_fmap_34[15:0]) +
	( 16'sd 24799) * $signed(input_fmap_35[15:0]) +
	( 15'sd 11229) * $signed(input_fmap_36[15:0]) +
	( 16'sd 19632) * $signed(input_fmap_37[15:0]) +
	( 16'sd 25545) * $signed(input_fmap_38[15:0]) +
	( 12'sd 1261) * $signed(input_fmap_39[15:0]) +
	( 15'sd 10946) * $signed(input_fmap_40[15:0]) +
	( 15'sd 12257) * $signed(input_fmap_41[15:0]) +
	( 15'sd 8526) * $signed(input_fmap_42[15:0]) +
	( 16'sd 28488) * $signed(input_fmap_43[15:0]) +
	( 13'sd 3192) * $signed(input_fmap_44[15:0]) +
	( 16'sd 25210) * $signed(input_fmap_45[15:0]) +
	( 16'sd 31505) * $signed(input_fmap_46[15:0]) +
	( 15'sd 11408) * $signed(input_fmap_47[15:0]) +
	( 14'sd 5906) * $signed(input_fmap_48[15:0]) +
	( 16'sd 20870) * $signed(input_fmap_49[15:0]) +
	( 16'sd 30374) * $signed(input_fmap_50[15:0]) +
	( 16'sd 25164) * $signed(input_fmap_51[15:0]) +
	( 16'sd 24596) * $signed(input_fmap_52[15:0]) +
	( 16'sd 31838) * $signed(input_fmap_53[15:0]) +
	( 14'sd 7103) * $signed(input_fmap_54[15:0]) +
	( 16'sd 30201) * $signed(input_fmap_55[15:0]) +
	( 16'sd 26490) * $signed(input_fmap_56[15:0]) +
	( 16'sd 21633) * $signed(input_fmap_57[15:0]) +
	( 15'sd 15889) * $signed(input_fmap_58[15:0]) +
	( 15'sd 15715) * $signed(input_fmap_59[15:0]) +
	( 13'sd 3024) * $signed(input_fmap_60[15:0]) +
	( 15'sd 14845) * $signed(input_fmap_61[15:0]) +
	( 15'sd 10338) * $signed(input_fmap_62[15:0]) +
	( 16'sd 28662) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_105;
assign conv_mac_105 = 
	( 16'sd 24001) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6979) * $signed(input_fmap_1[15:0]) +
	( 9'sd 224) * $signed(input_fmap_2[15:0]) +
	( 16'sd 20592) * $signed(input_fmap_3[15:0]) +
	( 16'sd 19499) * $signed(input_fmap_4[15:0]) +
	( 16'sd 19962) * $signed(input_fmap_5[15:0]) +
	( 16'sd 27799) * $signed(input_fmap_6[15:0]) +
	( 14'sd 8087) * $signed(input_fmap_7[15:0]) +
	( 13'sd 2074) * $signed(input_fmap_8[15:0]) +
	( 16'sd 18932) * $signed(input_fmap_9[15:0]) +
	( 11'sd 517) * $signed(input_fmap_10[15:0]) +
	( 13'sd 3991) * $signed(input_fmap_11[15:0]) +
	( 15'sd 8421) * $signed(input_fmap_12[15:0]) +
	( 16'sd 24163) * $signed(input_fmap_13[15:0]) +
	( 16'sd 18787) * $signed(input_fmap_14[15:0]) +
	( 15'sd 13485) * $signed(input_fmap_15[15:0]) +
	( 13'sd 2479) * $signed(input_fmap_16[15:0]) +
	( 15'sd 13650) * $signed(input_fmap_17[15:0]) +
	( 16'sd 31019) * $signed(input_fmap_18[15:0]) +
	( 15'sd 8897) * $signed(input_fmap_19[15:0]) +
	( 16'sd 24666) * $signed(input_fmap_20[15:0]) +
	( 16'sd 18744) * $signed(input_fmap_21[15:0]) +
	( 16'sd 24388) * $signed(input_fmap_22[15:0]) +
	( 16'sd 20361) * $signed(input_fmap_23[15:0]) +
	( 16'sd 29786) * $signed(input_fmap_24[15:0]) +
	( 15'sd 14394) * $signed(input_fmap_25[15:0]) +
	( 16'sd 29980) * $signed(input_fmap_26[15:0]) +
	( 11'sd 661) * $signed(input_fmap_27[15:0]) +
	( 14'sd 5374) * $signed(input_fmap_28[15:0]) +
	( 16'sd 22838) * $signed(input_fmap_29[15:0]) +
	( 16'sd 17388) * $signed(input_fmap_30[15:0]) +
	( 15'sd 14582) * $signed(input_fmap_31[15:0]) +
	( 16'sd 16745) * $signed(input_fmap_32[15:0]) +
	( 14'sd 7110) * $signed(input_fmap_33[15:0]) +
	( 15'sd 11363) * $signed(input_fmap_34[15:0]) +
	( 16'sd 30574) * $signed(input_fmap_35[15:0]) +
	( 15'sd 9142) * $signed(input_fmap_36[15:0]) +
	( 16'sd 31194) * $signed(input_fmap_37[15:0]) +
	( 15'sd 13063) * $signed(input_fmap_38[15:0]) +
	( 15'sd 14856) * $signed(input_fmap_39[15:0]) +
	( 16'sd 23975) * $signed(input_fmap_40[15:0]) +
	( 15'sd 15947) * $signed(input_fmap_41[15:0]) +
	( 15'sd 11055) * $signed(input_fmap_42[15:0]) +
	( 14'sd 7472) * $signed(input_fmap_43[15:0]) +
	( 16'sd 31241) * $signed(input_fmap_44[15:0]) +
	( 12'sd 1867) * $signed(input_fmap_45[15:0]) +
	( 13'sd 3107) * $signed(input_fmap_46[15:0]) +
	( 16'sd 21654) * $signed(input_fmap_47[15:0]) +
	( 15'sd 11218) * $signed(input_fmap_48[15:0]) +
	( 15'sd 12656) * $signed(input_fmap_49[15:0]) +
	( 16'sd 18291) * $signed(input_fmap_50[15:0]) +
	( 14'sd 7962) * $signed(input_fmap_51[15:0]) +
	( 11'sd 562) * $signed(input_fmap_52[15:0]) +
	( 16'sd 29136) * $signed(input_fmap_53[15:0]) +
	( 16'sd 27600) * $signed(input_fmap_54[15:0]) +
	( 15'sd 13890) * $signed(input_fmap_55[15:0]) +
	( 15'sd 8992) * $signed(input_fmap_56[15:0]) +
	( 14'sd 6655) * $signed(input_fmap_57[15:0]) +
	( 16'sd 22203) * $signed(input_fmap_58[15:0]) +
	( 15'sd 14428) * $signed(input_fmap_59[15:0]) +
	( 16'sd 28030) * $signed(input_fmap_60[15:0]) +
	( 15'sd 15210) * $signed(input_fmap_61[15:0]) +
	( 16'sd 17313) * $signed(input_fmap_62[15:0]) +
	( 16'sd 26891) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_106;
assign conv_mac_106 = 
	( 15'sd 12136) * $signed(input_fmap_0[15:0]) +
	( 16'sd 17235) * $signed(input_fmap_1[15:0]) +
	( 15'sd 8322) * $signed(input_fmap_2[15:0]) +
	( 16'sd 21812) * $signed(input_fmap_3[15:0]) +
	( 15'sd 12978) * $signed(input_fmap_4[15:0]) +
	( 15'sd 11917) * $signed(input_fmap_5[15:0]) +
	( 15'sd 11122) * $signed(input_fmap_6[15:0]) +
	( 13'sd 4077) * $signed(input_fmap_7[15:0]) +
	( 16'sd 28799) * $signed(input_fmap_8[15:0]) +
	( 16'sd 27707) * $signed(input_fmap_9[15:0]) +
	( 16'sd 21430) * $signed(input_fmap_10[15:0]) +
	( 16'sd 18733) * $signed(input_fmap_11[15:0]) +
	( 16'sd 25584) * $signed(input_fmap_12[15:0]) +
	( 16'sd 26579) * $signed(input_fmap_13[15:0]) +
	( 16'sd 31834) * $signed(input_fmap_14[15:0]) +
	( 16'sd 32132) * $signed(input_fmap_15[15:0]) +
	( 15'sd 9284) * $signed(input_fmap_16[15:0]) +
	( 16'sd 16829) * $signed(input_fmap_17[15:0]) +
	( 15'sd 9867) * $signed(input_fmap_18[15:0]) +
	( 16'sd 29383) * $signed(input_fmap_19[15:0]) +
	( 16'sd 29614) * $signed(input_fmap_20[15:0]) +
	( 14'sd 4324) * $signed(input_fmap_21[15:0]) +
	( 16'sd 28819) * $signed(input_fmap_22[15:0]) +
	( 14'sd 5479) * $signed(input_fmap_23[15:0]) +
	( 16'sd 24467) * $signed(input_fmap_24[15:0]) +
	( 16'sd 20736) * $signed(input_fmap_25[15:0]) +
	( 14'sd 4524) * $signed(input_fmap_26[15:0]) +
	( 16'sd 30041) * $signed(input_fmap_27[15:0]) +
	( 16'sd 16837) * $signed(input_fmap_28[15:0]) +
	( 16'sd 27247) * $signed(input_fmap_29[15:0]) +
	( 12'sd 1402) * $signed(input_fmap_30[15:0]) +
	( 16'sd 17996) * $signed(input_fmap_31[15:0]) +
	( 14'sd 5629) * $signed(input_fmap_32[15:0]) +
	( 16'sd 18253) * $signed(input_fmap_33[15:0]) +
	( 16'sd 18238) * $signed(input_fmap_34[15:0]) +
	( 11'sd 970) * $signed(input_fmap_35[15:0]) +
	( 13'sd 2564) * $signed(input_fmap_36[15:0]) +
	( 16'sd 26504) * $signed(input_fmap_37[15:0]) +
	( 16'sd 16798) * $signed(input_fmap_38[15:0]) +
	( 15'sd 11425) * $signed(input_fmap_39[15:0]) +
	( 15'sd 13981) * $signed(input_fmap_40[15:0]) +
	( 16'sd 22652) * $signed(input_fmap_41[15:0]) +
	( 16'sd 27624) * $signed(input_fmap_42[15:0]) +
	( 16'sd 21053) * $signed(input_fmap_43[15:0]) +
	( 12'sd 1062) * $signed(input_fmap_44[15:0]) +
	( 16'sd 20802) * $signed(input_fmap_45[15:0]) +
	( 16'sd 22233) * $signed(input_fmap_46[15:0]) +
	( 16'sd 24119) * $signed(input_fmap_47[15:0]) +
	( 15'sd 13090) * $signed(input_fmap_48[15:0]) +
	( 16'sd 26615) * $signed(input_fmap_49[15:0]) +
	( 16'sd 18614) * $signed(input_fmap_50[15:0]) +
	( 16'sd 16603) * $signed(input_fmap_51[15:0]) +
	( 16'sd 25182) * $signed(input_fmap_52[15:0]) +
	( 16'sd 26567) * $signed(input_fmap_53[15:0]) +
	( 15'sd 10051) * $signed(input_fmap_54[15:0]) +
	( 16'sd 23432) * $signed(input_fmap_55[15:0]) +
	( 15'sd 12951) * $signed(input_fmap_56[15:0]) +
	( 14'sd 7794) * $signed(input_fmap_57[15:0]) +
	( 16'sd 25231) * $signed(input_fmap_58[15:0]) +
	( 15'sd 15023) * $signed(input_fmap_59[15:0]) +
	( 14'sd 5082) * $signed(input_fmap_60[15:0]) +
	( 16'sd 23337) * $signed(input_fmap_61[15:0]) +
	( 16'sd 26587) * $signed(input_fmap_62[15:0]) +
	( 16'sd 28097) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_107;
assign conv_mac_107 = 
	( 16'sd 31651) * $signed(input_fmap_0[15:0]) +
	( 14'sd 5633) * $signed(input_fmap_1[15:0]) +
	( 16'sd 29043) * $signed(input_fmap_2[15:0]) +
	( 14'sd 6389) * $signed(input_fmap_3[15:0]) +
	( 14'sd 6670) * $signed(input_fmap_4[15:0]) +
	( 16'sd 16719) * $signed(input_fmap_5[15:0]) +
	( 15'sd 13035) * $signed(input_fmap_6[15:0]) +
	( 16'sd 17420) * $signed(input_fmap_7[15:0]) +
	( 14'sd 6201) * $signed(input_fmap_8[15:0]) +
	( 16'sd 20739) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1713) * $signed(input_fmap_10[15:0]) +
	( 13'sd 4073) * $signed(input_fmap_11[15:0]) +
	( 16'sd 22392) * $signed(input_fmap_12[15:0]) +
	( 14'sd 5675) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13900) * $signed(input_fmap_14[15:0]) +
	( 16'sd 16786) * $signed(input_fmap_15[15:0]) +
	( 16'sd 30107) * $signed(input_fmap_16[15:0]) +
	( 15'sd 11447) * $signed(input_fmap_17[15:0]) +
	( 16'sd 25380) * $signed(input_fmap_18[15:0]) +
	( 15'sd 15556) * $signed(input_fmap_19[15:0]) +
	( 15'sd 13373) * $signed(input_fmap_20[15:0]) +
	( 15'sd 11210) * $signed(input_fmap_21[15:0]) +
	( 15'sd 10953) * $signed(input_fmap_22[15:0]) +
	( 14'sd 7724) * $signed(input_fmap_23[15:0]) +
	( 16'sd 25857) * $signed(input_fmap_24[15:0]) +
	( 14'sd 5769) * $signed(input_fmap_25[15:0]) +
	( 14'sd 5630) * $signed(input_fmap_26[15:0]) +
	( 15'sd 11560) * $signed(input_fmap_27[15:0]) +
	( 16'sd 31904) * $signed(input_fmap_28[15:0]) +
	( 15'sd 8399) * $signed(input_fmap_29[15:0]) +
	( 14'sd 7283) * $signed(input_fmap_30[15:0]) +
	( 14'sd 4144) * $signed(input_fmap_31[15:0]) +
	( 16'sd 21285) * $signed(input_fmap_32[15:0]) +
	( 16'sd 31142) * $signed(input_fmap_33[15:0]) +
	( 14'sd 6468) * $signed(input_fmap_34[15:0]) +
	( 14'sd 5287) * $signed(input_fmap_35[15:0]) +
	( 16'sd 32232) * $signed(input_fmap_36[15:0]) +
	( 15'sd 13632) * $signed(input_fmap_37[15:0]) +
	( 16'sd 27531) * $signed(input_fmap_38[15:0]) +
	( 12'sd 1452) * $signed(input_fmap_39[15:0]) +
	( 16'sd 22039) * $signed(input_fmap_40[15:0]) +
	( 14'sd 5091) * $signed(input_fmap_41[15:0]) +
	( 14'sd 6085) * $signed(input_fmap_42[15:0]) +
	( 16'sd 23003) * $signed(input_fmap_43[15:0]) +
	( 16'sd 32509) * $signed(input_fmap_44[15:0]) +
	( 15'sd 12020) * $signed(input_fmap_45[15:0]) +
	( 16'sd 22633) * $signed(input_fmap_46[15:0]) +
	( 10'sd 497) * $signed(input_fmap_47[15:0]) +
	( 15'sd 14810) * $signed(input_fmap_48[15:0]) +
	( 16'sd 16694) * $signed(input_fmap_49[15:0]) +
	( 16'sd 26151) * $signed(input_fmap_50[15:0]) +
	( 13'sd 3758) * $signed(input_fmap_51[15:0]) +
	( 13'sd 4081) * $signed(input_fmap_52[15:0]) +
	( 13'sd 2830) * $signed(input_fmap_53[15:0]) +
	( 15'sd 14533) * $signed(input_fmap_54[15:0]) +
	( 11'sd 956) * $signed(input_fmap_55[15:0]) +
	( 15'sd 9254) * $signed(input_fmap_56[15:0]) +
	( 16'sd 32476) * $signed(input_fmap_57[15:0]) +
	( 15'sd 15353) * $signed(input_fmap_58[15:0]) +
	( 16'sd 23426) * $signed(input_fmap_59[15:0]) +
	( 14'sd 4463) * $signed(input_fmap_60[15:0]) +
	( 15'sd 8743) * $signed(input_fmap_61[15:0]) +
	( 16'sd 28638) * $signed(input_fmap_62[15:0]) +
	( 16'sd 30822) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_108;
assign conv_mac_108 = 
	( 15'sd 11389) * $signed(input_fmap_0[15:0]) +
	( 16'sd 22046) * $signed(input_fmap_1[15:0]) +
	( 16'sd 20133) * $signed(input_fmap_2[15:0]) +
	( 15'sd 10503) * $signed(input_fmap_3[15:0]) +
	( 16'sd 31718) * $signed(input_fmap_4[15:0]) +
	( 16'sd 21406) * $signed(input_fmap_5[15:0]) +
	( 16'sd 26319) * $signed(input_fmap_6[15:0]) +
	( 16'sd 30866) * $signed(input_fmap_7[15:0]) +
	( 16'sd 31998) * $signed(input_fmap_8[15:0]) +
	( 16'sd 21478) * $signed(input_fmap_9[15:0]) +
	( 16'sd 32075) * $signed(input_fmap_10[15:0]) +
	( 16'sd 24286) * $signed(input_fmap_11[15:0]) +
	( 16'sd 24318) * $signed(input_fmap_12[15:0]) +
	( 16'sd 17064) * $signed(input_fmap_13[15:0]) +
	( 16'sd 31218) * $signed(input_fmap_14[15:0]) +
	( 14'sd 7205) * $signed(input_fmap_15[15:0]) +
	( 16'sd 27852) * $signed(input_fmap_16[15:0]) +
	( 15'sd 8354) * $signed(input_fmap_17[15:0]) +
	( 15'sd 16249) * $signed(input_fmap_18[15:0]) +
	( 16'sd 16948) * $signed(input_fmap_19[15:0]) +
	( 16'sd 32611) * $signed(input_fmap_20[15:0]) +
	( 16'sd 26972) * $signed(input_fmap_21[15:0]) +
	( 15'sd 14913) * $signed(input_fmap_22[15:0]) +
	( 14'sd 4263) * $signed(input_fmap_23[15:0]) +
	( 15'sd 12331) * $signed(input_fmap_24[15:0]) +
	( 16'sd 24727) * $signed(input_fmap_25[15:0]) +
	( 16'sd 30941) * $signed(input_fmap_26[15:0]) +
	( 16'sd 28315) * $signed(input_fmap_27[15:0]) +
	( 16'sd 30106) * $signed(input_fmap_28[15:0]) +
	( 16'sd 27937) * $signed(input_fmap_29[15:0]) +
	( 14'sd 8057) * $signed(input_fmap_30[15:0]) +
	( 16'sd 17476) * $signed(input_fmap_31[15:0]) +
	( 16'sd 17759) * $signed(input_fmap_32[15:0]) +
	( 15'sd 8590) * $signed(input_fmap_33[15:0]) +
	( 16'sd 24387) * $signed(input_fmap_34[15:0]) +
	( 15'sd 13951) * $signed(input_fmap_35[15:0]) +
	( 16'sd 30322) * $signed(input_fmap_36[15:0]) +
	( 15'sd 13117) * $signed(input_fmap_37[15:0]) +
	( 16'sd 19420) * $signed(input_fmap_38[15:0]) +
	( 16'sd 17640) * $signed(input_fmap_39[15:0]) +
	( 15'sd 9037) * $signed(input_fmap_40[15:0]) +
	( 16'sd 32724) * $signed(input_fmap_41[15:0]) +
	( 16'sd 23637) * $signed(input_fmap_42[15:0]) +
	( 6'sd 29) * $signed(input_fmap_43[15:0]) +
	( 16'sd 22825) * $signed(input_fmap_44[15:0]) +
	( 16'sd 18154) * $signed(input_fmap_45[15:0]) +
	( 16'sd 24457) * $signed(input_fmap_46[15:0]) +
	( 16'sd 30456) * $signed(input_fmap_47[15:0]) +
	( 16'sd 16950) * $signed(input_fmap_48[15:0]) +
	( 15'sd 8315) * $signed(input_fmap_49[15:0]) +
	( 15'sd 15756) * $signed(input_fmap_50[15:0]) +
	( 11'sd 894) * $signed(input_fmap_51[15:0]) +
	( 16'sd 31329) * $signed(input_fmap_52[15:0]) +
	( 15'sd 12981) * $signed(input_fmap_53[15:0]) +
	( 16'sd 18000) * $signed(input_fmap_54[15:0]) +
	( 16'sd 27238) * $signed(input_fmap_55[15:0]) +
	( 15'sd 10004) * $signed(input_fmap_56[15:0]) +
	( 16'sd 31789) * $signed(input_fmap_57[15:0]) +
	( 12'sd 1280) * $signed(input_fmap_58[15:0]) +
	( 16'sd 20738) * $signed(input_fmap_59[15:0]) +
	( 16'sd 31204) * $signed(input_fmap_60[15:0]) +
	( 16'sd 25554) * $signed(input_fmap_61[15:0]) +
	( 15'sd 15825) * $signed(input_fmap_62[15:0]) +
	( 16'sd 23652) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_109;
assign conv_mac_109 = 
	( 10'sd 380) * $signed(input_fmap_0[15:0]) +
	( 15'sd 16089) * $signed(input_fmap_1[15:0]) +
	( 15'sd 12781) * $signed(input_fmap_2[15:0]) +
	( 16'sd 30871) * $signed(input_fmap_3[15:0]) +
	( 15'sd 14300) * $signed(input_fmap_4[15:0]) +
	( 16'sd 17963) * $signed(input_fmap_5[15:0]) +
	( 13'sd 2735) * $signed(input_fmap_6[15:0]) +
	( 16'sd 26582) * $signed(input_fmap_7[15:0]) +
	( 16'sd 29959) * $signed(input_fmap_8[15:0]) +
	( 16'sd 20689) * $signed(input_fmap_9[15:0]) +
	( 15'sd 13052) * $signed(input_fmap_10[15:0]) +
	( 15'sd 11131) * $signed(input_fmap_11[15:0]) +
	( 15'sd 14221) * $signed(input_fmap_12[15:0]) +
	( 16'sd 27373) * $signed(input_fmap_13[15:0]) +
	( 13'sd 2590) * $signed(input_fmap_14[15:0]) +
	( 12'sd 1161) * $signed(input_fmap_15[15:0]) +
	( 15'sd 15391) * $signed(input_fmap_16[15:0]) +
	( 16'sd 28267) * $signed(input_fmap_17[15:0]) +
	( 13'sd 3983) * $signed(input_fmap_18[15:0]) +
	( 16'sd 29040) * $signed(input_fmap_19[15:0]) +
	( 16'sd 19722) * $signed(input_fmap_20[15:0]) +
	( 11'sd 957) * $signed(input_fmap_21[15:0]) +
	( 16'sd 32217) * $signed(input_fmap_22[15:0]) +
	( 16'sd 18338) * $signed(input_fmap_23[15:0]) +
	( 15'sd 9420) * $signed(input_fmap_24[15:0]) +
	( 8'sd 114) * $signed(input_fmap_25[15:0]) +
	( 16'sd 26787) * $signed(input_fmap_26[15:0]) +
	( 15'sd 11752) * $signed(input_fmap_27[15:0]) +
	( 15'sd 11981) * $signed(input_fmap_28[15:0]) +
	( 16'sd 25514) * $signed(input_fmap_29[15:0]) +
	( 16'sd 26383) * $signed(input_fmap_30[15:0]) +
	( 16'sd 24483) * $signed(input_fmap_31[15:0]) +
	( 15'sd 12700) * $signed(input_fmap_32[15:0]) +
	( 14'sd 6760) * $signed(input_fmap_33[15:0]) +
	( 16'sd 27479) * $signed(input_fmap_34[15:0]) +
	( 16'sd 29247) * $signed(input_fmap_35[15:0]) +
	( 13'sd 2177) * $signed(input_fmap_36[15:0]) +
	( 15'sd 12319) * $signed(input_fmap_37[15:0]) +
	( 16'sd 21306) * $signed(input_fmap_38[15:0]) +
	( 15'sd 9897) * $signed(input_fmap_39[15:0]) +
	( 16'sd 23467) * $signed(input_fmap_40[15:0]) +
	( 16'sd 31984) * $signed(input_fmap_41[15:0]) +
	( 14'sd 5512) * $signed(input_fmap_42[15:0]) +
	( 16'sd 25491) * $signed(input_fmap_43[15:0]) +
	( 16'sd 29542) * $signed(input_fmap_44[15:0]) +
	( 16'sd 19915) * $signed(input_fmap_45[15:0]) +
	( 14'sd 4667) * $signed(input_fmap_46[15:0]) +
	( 16'sd 22753) * $signed(input_fmap_47[15:0]) +
	( 16'sd 24039) * $signed(input_fmap_48[15:0]) +
	( 15'sd 10174) * $signed(input_fmap_49[15:0]) +
	( 15'sd 16096) * $signed(input_fmap_50[15:0]) +
	( 14'sd 7096) * $signed(input_fmap_51[15:0]) +
	( 16'sd 25037) * $signed(input_fmap_52[15:0]) +
	( 16'sd 21285) * $signed(input_fmap_53[15:0]) +
	( 11'sd 970) * $signed(input_fmap_54[15:0]) +
	( 16'sd 22923) * $signed(input_fmap_55[15:0]) +
	( 16'sd 18222) * $signed(input_fmap_56[15:0]) +
	( 10'sd 339) * $signed(input_fmap_57[15:0]) +
	( 10'sd 425) * $signed(input_fmap_58[15:0]) +
	( 11'sd 779) * $signed(input_fmap_59[15:0]) +
	( 16'sd 27752) * $signed(input_fmap_60[15:0]) +
	( 15'sd 9448) * $signed(input_fmap_61[15:0]) +
	( 16'sd 19220) * $signed(input_fmap_62[15:0]) +
	( 16'sd 18137) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_110;
assign conv_mac_110 = 
	( 12'sd 1355) * $signed(input_fmap_0[15:0]) +
	( 14'sd 4637) * $signed(input_fmap_1[15:0]) +
	( 16'sd 21178) * $signed(input_fmap_2[15:0]) +
	( 16'sd 17881) * $signed(input_fmap_3[15:0]) +
	( 16'sd 17459) * $signed(input_fmap_4[15:0]) +
	( 13'sd 2844) * $signed(input_fmap_5[15:0]) +
	( 16'sd 18405) * $signed(input_fmap_6[15:0]) +
	( 13'sd 4070) * $signed(input_fmap_7[15:0]) +
	( 16'sd 21677) * $signed(input_fmap_8[15:0]) +
	( 16'sd 23423) * $signed(input_fmap_9[15:0]) +
	( 14'sd 6380) * $signed(input_fmap_10[15:0]) +
	( 16'sd 23690) * $signed(input_fmap_11[15:0]) +
	( 12'sd 1450) * $signed(input_fmap_12[15:0]) +
	( 15'sd 11938) * $signed(input_fmap_13[15:0]) +
	( 16'sd 23277) * $signed(input_fmap_14[15:0]) +
	( 16'sd 30521) * $signed(input_fmap_15[15:0]) +
	( 14'sd 7118) * $signed(input_fmap_16[15:0]) +
	( 12'sd 1672) * $signed(input_fmap_17[15:0]) +
	( 16'sd 19313) * $signed(input_fmap_18[15:0]) +
	( 16'sd 21942) * $signed(input_fmap_19[15:0]) +
	( 14'sd 7235) * $signed(input_fmap_20[15:0]) +
	( 15'sd 15596) * $signed(input_fmap_21[15:0]) +
	( 15'sd 13171) * $signed(input_fmap_22[15:0]) +
	( 16'sd 18846) * $signed(input_fmap_23[15:0]) +
	( 15'sd 16006) * $signed(input_fmap_24[15:0]) +
	( 16'sd 25983) * $signed(input_fmap_25[15:0]) +
	( 16'sd 32247) * $signed(input_fmap_26[15:0]) +
	( 15'sd 12836) * $signed(input_fmap_27[15:0]) +
	( 16'sd 32647) * $signed(input_fmap_28[15:0]) +
	( 15'sd 14071) * $signed(input_fmap_29[15:0]) +
	( 13'sd 3231) * $signed(input_fmap_30[15:0]) +
	( 15'sd 11931) * $signed(input_fmap_31[15:0]) +
	( 13'sd 3561) * $signed(input_fmap_32[15:0]) +
	( 14'sd 4184) * $signed(input_fmap_33[15:0]) +
	( 15'sd 10044) * $signed(input_fmap_34[15:0]) +
	( 14'sd 4629) * $signed(input_fmap_35[15:0]) +
	( 12'sd 1189) * $signed(input_fmap_36[15:0]) +
	( 16'sd 30444) * $signed(input_fmap_37[15:0]) +
	( 11'sd 775) * $signed(input_fmap_38[15:0]) +
	( 7'sd 59) * $signed(input_fmap_39[15:0]) +
	( 15'sd 13758) * $signed(input_fmap_40[15:0]) +
	( 15'sd 10475) * $signed(input_fmap_41[15:0]) +
	( 16'sd 27880) * $signed(input_fmap_42[15:0]) +
	( 13'sd 3031) * $signed(input_fmap_43[15:0]) +
	( 14'sd 6933) * $signed(input_fmap_44[15:0]) +
	( 16'sd 28888) * $signed(input_fmap_45[15:0]) +
	( 16'sd 24726) * $signed(input_fmap_46[15:0]) +
	( 14'sd 5045) * $signed(input_fmap_47[15:0]) +
	( 16'sd 25429) * $signed(input_fmap_48[15:0]) +
	( 14'sd 6440) * $signed(input_fmap_49[15:0]) +
	( 15'sd 10111) * $signed(input_fmap_50[15:0]) +
	( 15'sd 11364) * $signed(input_fmap_51[15:0]) +
	( 15'sd 9470) * $signed(input_fmap_52[15:0]) +
	( 16'sd 31869) * $signed(input_fmap_53[15:0]) +
	( 15'sd 8217) * $signed(input_fmap_54[15:0]) +
	( 16'sd 28432) * $signed(input_fmap_55[15:0]) +
	( 16'sd 22664) * $signed(input_fmap_56[15:0]) +
	( 16'sd 25682) * $signed(input_fmap_57[15:0]) +
	( 16'sd 21364) * $signed(input_fmap_58[15:0]) +
	( 16'sd 25282) * $signed(input_fmap_59[15:0]) +
	( 15'sd 13488) * $signed(input_fmap_60[15:0]) +
	( 16'sd 25799) * $signed(input_fmap_61[15:0]) +
	( 15'sd 16193) * $signed(input_fmap_62[15:0]) +
	( 16'sd 29045) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_111;
assign conv_mac_111 = 
	( 15'sd 15047) * $signed(input_fmap_0[15:0]) +
	( 16'sd 25674) * $signed(input_fmap_1[15:0]) +
	( 12'sd 1509) * $signed(input_fmap_2[15:0]) +
	( 16'sd 24829) * $signed(input_fmap_3[15:0]) +
	( 12'sd 1587) * $signed(input_fmap_4[15:0]) +
	( 15'sd 14043) * $signed(input_fmap_5[15:0]) +
	( 15'sd 11499) * $signed(input_fmap_6[15:0]) +
	( 16'sd 20616) * $signed(input_fmap_7[15:0]) +
	( 16'sd 21300) * $signed(input_fmap_8[15:0]) +
	( 13'sd 2806) * $signed(input_fmap_9[15:0]) +
	( 16'sd 24053) * $signed(input_fmap_10[15:0]) +
	( 16'sd 21058) * $signed(input_fmap_11[15:0]) +
	( 16'sd 29265) * $signed(input_fmap_12[15:0]) +
	( 16'sd 24807) * $signed(input_fmap_13[15:0]) +
	( 15'sd 11174) * $signed(input_fmap_14[15:0]) +
	( 15'sd 13500) * $signed(input_fmap_15[15:0]) +
	( 16'sd 27533) * $signed(input_fmap_16[15:0]) +
	( 14'sd 7374) * $signed(input_fmap_17[15:0]) +
	( 16'sd 24681) * $signed(input_fmap_18[15:0]) +
	( 15'sd 15242) * $signed(input_fmap_19[15:0]) +
	( 15'sd 14141) * $signed(input_fmap_20[15:0]) +
	( 12'sd 1216) * $signed(input_fmap_21[15:0]) +
	( 14'sd 5243) * $signed(input_fmap_22[15:0]) +
	( 16'sd 32703) * $signed(input_fmap_23[15:0]) +
	( 16'sd 28585) * $signed(input_fmap_24[15:0]) +
	( 14'sd 5498) * $signed(input_fmap_25[15:0]) +
	( 16'sd 19473) * $signed(input_fmap_26[15:0]) +
	( 16'sd 29732) * $signed(input_fmap_27[15:0]) +
	( 13'sd 3100) * $signed(input_fmap_28[15:0]) +
	( 16'sd 28539) * $signed(input_fmap_29[15:0]) +
	( 16'sd 23176) * $signed(input_fmap_30[15:0]) +
	( 14'sd 7785) * $signed(input_fmap_31[15:0]) +
	( 14'sd 7404) * $signed(input_fmap_32[15:0]) +
	( 15'sd 9999) * $signed(input_fmap_33[15:0]) +
	( 15'sd 10079) * $signed(input_fmap_34[15:0]) +
	( 14'sd 7399) * $signed(input_fmap_35[15:0]) +
	( 14'sd 5077) * $signed(input_fmap_36[15:0]) +
	( 15'sd 10214) * $signed(input_fmap_37[15:0]) +
	( 16'sd 23260) * $signed(input_fmap_38[15:0]) +
	( 16'sd 21258) * $signed(input_fmap_39[15:0]) +
	( 15'sd 10389) * $signed(input_fmap_40[15:0]) +
	( 16'sd 20899) * $signed(input_fmap_41[15:0]) +
	( 11'sd 666) * $signed(input_fmap_42[15:0]) +
	( 15'sd 16337) * $signed(input_fmap_43[15:0]) +
	( 16'sd 24784) * $signed(input_fmap_44[15:0]) +
	( 16'sd 30144) * $signed(input_fmap_45[15:0]) +
	( 10'sd 364) * $signed(input_fmap_46[15:0]) +
	( 15'sd 15462) * $signed(input_fmap_47[15:0]) +
	( 15'sd 8462) * $signed(input_fmap_48[15:0]) +
	( 16'sd 23479) * $signed(input_fmap_49[15:0]) +
	( 16'sd 27111) * $signed(input_fmap_50[15:0]) +
	( 16'sd 23853) * $signed(input_fmap_51[15:0]) +
	( 14'sd 5418) * $signed(input_fmap_52[15:0]) +
	( 16'sd 18140) * $signed(input_fmap_53[15:0]) +
	( 14'sd 6534) * $signed(input_fmap_54[15:0]) +
	( 13'sd 3849) * $signed(input_fmap_55[15:0]) +
	( 16'sd 26408) * $signed(input_fmap_56[15:0]) +
	( 16'sd 31791) * $signed(input_fmap_57[15:0]) +
	( 16'sd 24745) * $signed(input_fmap_58[15:0]) +
	( 16'sd 22081) * $signed(input_fmap_59[15:0]) +
	( 12'sd 1405) * $signed(input_fmap_60[15:0]) +
	( 15'sd 10088) * $signed(input_fmap_61[15:0]) +
	( 16'sd 20731) * $signed(input_fmap_62[15:0]) +
	( 16'sd 29703) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_112;
assign conv_mac_112 = 
	( 16'sd 21208) * $signed(input_fmap_0[15:0]) +
	( 16'sd 24291) * $signed(input_fmap_1[15:0]) +
	( 16'sd 27412) * $signed(input_fmap_2[15:0]) +
	( 16'sd 28365) * $signed(input_fmap_3[15:0]) +
	( 16'sd 29819) * $signed(input_fmap_4[15:0]) +
	( 16'sd 22268) * $signed(input_fmap_5[15:0]) +
	( 15'sd 14156) * $signed(input_fmap_6[15:0]) +
	( 16'sd 21443) * $signed(input_fmap_7[15:0]) +
	( 16'sd 17747) * $signed(input_fmap_8[15:0]) +
	( 16'sd 32659) * $signed(input_fmap_9[15:0]) +
	( 14'sd 4817) * $signed(input_fmap_10[15:0]) +
	( 14'sd 4702) * $signed(input_fmap_11[15:0]) +
	( 13'sd 3542) * $signed(input_fmap_12[15:0]) +
	( 13'sd 3132) * $signed(input_fmap_13[15:0]) +
	( 16'sd 26328) * $signed(input_fmap_14[15:0]) +
	( 16'sd 22144) * $signed(input_fmap_15[15:0]) +
	( 16'sd 18864) * $signed(input_fmap_16[15:0]) +
	( 13'sd 2268) * $signed(input_fmap_17[15:0]) +
	( 16'sd 26200) * $signed(input_fmap_18[15:0]) +
	( 11'sd 721) * $signed(input_fmap_19[15:0]) +
	( 16'sd 27626) * $signed(input_fmap_20[15:0]) +
	( 16'sd 18617) * $signed(input_fmap_21[15:0]) +
	( 13'sd 2932) * $signed(input_fmap_22[15:0]) +
	( 15'sd 9007) * $signed(input_fmap_23[15:0]) +
	( 15'sd 13670) * $signed(input_fmap_24[15:0]) +
	( 15'sd 8898) * $signed(input_fmap_25[15:0]) +
	( 16'sd 18484) * $signed(input_fmap_26[15:0]) +
	( 10'sd 476) * $signed(input_fmap_27[15:0]) +
	( 15'sd 12455) * $signed(input_fmap_28[15:0]) +
	( 12'sd 1320) * $signed(input_fmap_29[15:0]) +
	( 13'sd 4044) * $signed(input_fmap_30[15:0]) +
	( 16'sd 32672) * $signed(input_fmap_31[15:0]) +
	( 16'sd 25896) * $signed(input_fmap_32[15:0]) +
	( 16'sd 24407) * $signed(input_fmap_33[15:0]) +
	( 16'sd 18723) * $signed(input_fmap_34[15:0]) +
	( 12'sd 1946) * $signed(input_fmap_35[15:0]) +
	( 12'sd 1461) * $signed(input_fmap_36[15:0]) +
	( 15'sd 14186) * $signed(input_fmap_37[15:0]) +
	( 14'sd 4590) * $signed(input_fmap_38[15:0]) +
	( 15'sd 9904) * $signed(input_fmap_39[15:0]) +
	( 15'sd 11749) * $signed(input_fmap_40[15:0]) +
	( 15'sd 12945) * $signed(input_fmap_41[15:0]) +
	( 15'sd 10359) * $signed(input_fmap_42[15:0]) +
	( 16'sd 26028) * $signed(input_fmap_43[15:0]) +
	( 15'sd 15968) * $signed(input_fmap_44[15:0]) +
	( 12'sd 1412) * $signed(input_fmap_45[15:0]) +
	( 12'sd 2027) * $signed(input_fmap_46[15:0]) +
	( 16'sd 22025) * $signed(input_fmap_47[15:0]) +
	( 11'sd 1023) * $signed(input_fmap_48[15:0]) +
	( 13'sd 2420) * $signed(input_fmap_49[15:0]) +
	( 15'sd 13516) * $signed(input_fmap_50[15:0]) +
	( 16'sd 17573) * $signed(input_fmap_51[15:0]) +
	( 15'sd 8427) * $signed(input_fmap_52[15:0]) +
	( 16'sd 25087) * $signed(input_fmap_53[15:0]) +
	( 14'sd 6144) * $signed(input_fmap_54[15:0]) +
	( 15'sd 10320) * $signed(input_fmap_55[15:0]) +
	( 15'sd 14693) * $signed(input_fmap_56[15:0]) +
	( 14'sd 6306) * $signed(input_fmap_57[15:0]) +
	( 15'sd 8530) * $signed(input_fmap_58[15:0]) +
	( 14'sd 8149) * $signed(input_fmap_59[15:0]) +
	( 16'sd 20361) * $signed(input_fmap_60[15:0]) +
	( 13'sd 3939) * $signed(input_fmap_61[15:0]) +
	( 16'sd 25900) * $signed(input_fmap_62[15:0]) +
	( 11'sd 861) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_113;
assign conv_mac_113 = 
	( 16'sd 29124) * $signed(input_fmap_0[15:0]) +
	( 16'sd 26983) * $signed(input_fmap_1[15:0]) +
	( 16'sd 24967) * $signed(input_fmap_2[15:0]) +
	( 16'sd 31698) * $signed(input_fmap_3[15:0]) +
	( 15'sd 9273) * $signed(input_fmap_4[15:0]) +
	( 16'sd 17977) * $signed(input_fmap_5[15:0]) +
	( 15'sd 13027) * $signed(input_fmap_6[15:0]) +
	( 15'sd 8349) * $signed(input_fmap_7[15:0]) +
	( 16'sd 23944) * $signed(input_fmap_8[15:0]) +
	( 15'sd 12032) * $signed(input_fmap_9[15:0]) +
	( 16'sd 26808) * $signed(input_fmap_10[15:0]) +
	( 15'sd 12704) * $signed(input_fmap_11[15:0]) +
	( 16'sd 30233) * $signed(input_fmap_12[15:0]) +
	( 16'sd 25052) * $signed(input_fmap_13[15:0]) +
	( 16'sd 28279) * $signed(input_fmap_14[15:0]) +
	( 16'sd 30386) * $signed(input_fmap_15[15:0]) +
	( 16'sd 32634) * $signed(input_fmap_16[15:0]) +
	( 15'sd 14463) * $signed(input_fmap_17[15:0]) +
	( 16'sd 22467) * $signed(input_fmap_18[15:0]) +
	( 16'sd 23197) * $signed(input_fmap_19[15:0]) +
	( 13'sd 3740) * $signed(input_fmap_20[15:0]) +
	( 16'sd 24188) * $signed(input_fmap_21[15:0]) +
	( 13'sd 3115) * $signed(input_fmap_22[15:0]) +
	( 16'sd 20296) * $signed(input_fmap_23[15:0]) +
	( 13'sd 3411) * $signed(input_fmap_24[15:0]) +
	( 16'sd 30921) * $signed(input_fmap_25[15:0]) +
	( 16'sd 21704) * $signed(input_fmap_26[15:0]) +
	( 16'sd 30997) * $signed(input_fmap_27[15:0]) +
	( 15'sd 12536) * $signed(input_fmap_28[15:0]) +
	( 12'sd 1715) * $signed(input_fmap_29[15:0]) +
	( 16'sd 30268) * $signed(input_fmap_30[15:0]) +
	( 15'sd 12677) * $signed(input_fmap_31[15:0]) +
	( 16'sd 29878) * $signed(input_fmap_32[15:0]) +
	( 16'sd 17452) * $signed(input_fmap_33[15:0]) +
	( 14'sd 4139) * $signed(input_fmap_34[15:0]) +
	( 16'sd 30381) * $signed(input_fmap_35[15:0]) +
	( 15'sd 9600) * $signed(input_fmap_36[15:0]) +
	( 16'sd 17337) * $signed(input_fmap_37[15:0]) +
	( 16'sd 28898) * $signed(input_fmap_38[15:0]) +
	( 16'sd 21609) * $signed(input_fmap_39[15:0]) +
	( 15'sd 8201) * $signed(input_fmap_40[15:0]) +
	( 15'sd 16049) * $signed(input_fmap_41[15:0]) +
	( 16'sd 16794) * $signed(input_fmap_42[15:0]) +
	( 16'sd 32268) * $signed(input_fmap_43[15:0]) +
	( 16'sd 26945) * $signed(input_fmap_44[15:0]) +
	( 16'sd 27639) * $signed(input_fmap_45[15:0]) +
	( 16'sd 23745) * $signed(input_fmap_46[15:0]) +
	( 16'sd 32590) * $signed(input_fmap_47[15:0]) +
	( 14'sd 6193) * $signed(input_fmap_48[15:0]) +
	( 15'sd 12748) * $signed(input_fmap_49[15:0]) +
	( 16'sd 17982) * $signed(input_fmap_50[15:0]) +
	( 16'sd 31189) * $signed(input_fmap_51[15:0]) +
	( 16'sd 22355) * $signed(input_fmap_52[15:0]) +
	( 14'sd 6655) * $signed(input_fmap_53[15:0]) +
	( 16'sd 18946) * $signed(input_fmap_54[15:0]) +
	( 16'sd 28815) * $signed(input_fmap_55[15:0]) +
	( 14'sd 5257) * $signed(input_fmap_56[15:0]) +
	( 16'sd 21912) * $signed(input_fmap_57[15:0]) +
	( 16'sd 31830) * $signed(input_fmap_58[15:0]) +
	( 16'sd 20456) * $signed(input_fmap_59[15:0]) +
	( 15'sd 11247) * $signed(input_fmap_60[15:0]) +
	( 14'sd 5856) * $signed(input_fmap_61[15:0]) +
	( 15'sd 13756) * $signed(input_fmap_62[15:0]) +
	( 13'sd 3752) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_114;
assign conv_mac_114 = 
	( 15'sd 15304) * $signed(input_fmap_0[15:0]) +
	( 15'sd 10960) * $signed(input_fmap_1[15:0]) +
	( 15'sd 11509) * $signed(input_fmap_2[15:0]) +
	( 15'sd 15518) * $signed(input_fmap_3[15:0]) +
	( 15'sd 8879) * $signed(input_fmap_4[15:0]) +
	( 16'sd 23825) * $signed(input_fmap_5[15:0]) +
	( 16'sd 23597) * $signed(input_fmap_6[15:0]) +
	( 16'sd 28284) * $signed(input_fmap_7[15:0]) +
	( 16'sd 29534) * $signed(input_fmap_8[15:0]) +
	( 15'sd 12010) * $signed(input_fmap_9[15:0]) +
	( 14'sd 6565) * $signed(input_fmap_10[15:0]) +
	( 16'sd 30647) * $signed(input_fmap_11[15:0]) +
	( 15'sd 14228) * $signed(input_fmap_12[15:0]) +
	( 16'sd 31782) * $signed(input_fmap_13[15:0]) +
	( 12'sd 1276) * $signed(input_fmap_14[15:0]) +
	( 16'sd 22501) * $signed(input_fmap_15[15:0]) +
	( 15'sd 13998) * $signed(input_fmap_16[15:0]) +
	( 15'sd 16012) * $signed(input_fmap_17[15:0]) +
	( 13'sd 3842) * $signed(input_fmap_18[15:0]) +
	( 16'sd 29576) * $signed(input_fmap_19[15:0]) +
	( 14'sd 5968) * $signed(input_fmap_20[15:0]) +
	( 16'sd 26639) * $signed(input_fmap_21[15:0]) +
	( 15'sd 14427) * $signed(input_fmap_22[15:0]) +
	( 16'sd 27208) * $signed(input_fmap_23[15:0]) +
	( 14'sd 4446) * $signed(input_fmap_24[15:0]) +
	( 15'sd 8227) * $signed(input_fmap_25[15:0]) +
	( 13'sd 3641) * $signed(input_fmap_26[15:0]) +
	( 14'sd 5225) * $signed(input_fmap_27[15:0]) +
	( 16'sd 25200) * $signed(input_fmap_28[15:0]) +
	( 16'sd 28591) * $signed(input_fmap_29[15:0]) +
	( 11'sd 942) * $signed(input_fmap_30[15:0]) +
	( 15'sd 16213) * $signed(input_fmap_31[15:0]) +
	( 15'sd 12417) * $signed(input_fmap_32[15:0]) +
	( 15'sd 8753) * $signed(input_fmap_33[15:0]) +
	( 15'sd 15672) * $signed(input_fmap_34[15:0]) +
	( 15'sd 14474) * $signed(input_fmap_35[15:0]) +
	( 15'sd 10577) * $signed(input_fmap_36[15:0]) +
	( 15'sd 10269) * $signed(input_fmap_37[15:0]) +
	( 14'sd 7240) * $signed(input_fmap_38[15:0]) +
	( 15'sd 15868) * $signed(input_fmap_39[15:0]) +
	( 16'sd 26058) * $signed(input_fmap_40[15:0]) +
	( 16'sd 29104) * $signed(input_fmap_41[15:0]) +
	( 16'sd 17198) * $signed(input_fmap_42[15:0]) +
	( 11'sd 1020) * $signed(input_fmap_43[15:0]) +
	( 15'sd 11535) * $signed(input_fmap_44[15:0]) +
	( 15'sd 16056) * $signed(input_fmap_45[15:0]) +
	( 11'sd 949) * $signed(input_fmap_46[15:0]) +
	( 16'sd 19576) * $signed(input_fmap_47[15:0]) +
	( 16'sd 25503) * $signed(input_fmap_48[15:0]) +
	( 16'sd 27764) * $signed(input_fmap_49[15:0]) +
	( 8'sd 83) * $signed(input_fmap_50[15:0]) +
	( 15'sd 13812) * $signed(input_fmap_51[15:0]) +
	( 16'sd 21498) * $signed(input_fmap_52[15:0]) +
	( 14'sd 7055) * $signed(input_fmap_53[15:0]) +
	( 16'sd 20732) * $signed(input_fmap_54[15:0]) +
	( 16'sd 21816) * $signed(input_fmap_55[15:0]) +
	( 15'sd 12092) * $signed(input_fmap_56[15:0]) +
	( 16'sd 23261) * $signed(input_fmap_57[15:0]) +
	( 16'sd 29036) * $signed(input_fmap_58[15:0]) +
	( 15'sd 13510) * $signed(input_fmap_59[15:0]) +
	( 15'sd 12874) * $signed(input_fmap_60[15:0]) +
	( 16'sd 18051) * $signed(input_fmap_61[15:0]) +
	( 16'sd 26556) * $signed(input_fmap_62[15:0]) +
	( 16'sd 22083) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_115;
assign conv_mac_115 = 
	( 16'sd 16495) * $signed(input_fmap_0[15:0]) +
	( 15'sd 14916) * $signed(input_fmap_1[15:0]) +
	( 14'sd 6000) * $signed(input_fmap_2[15:0]) +
	( 15'sd 8792) * $signed(input_fmap_3[15:0]) +
	( 16'sd 28881) * $signed(input_fmap_4[15:0]) +
	( 16'sd 18226) * $signed(input_fmap_5[15:0]) +
	( 16'sd 24478) * $signed(input_fmap_6[15:0]) +
	( 14'sd 6069) * $signed(input_fmap_7[15:0]) +
	( 15'sd 12381) * $signed(input_fmap_8[15:0]) +
	( 16'sd 24631) * $signed(input_fmap_9[15:0]) +
	( 16'sd 19658) * $signed(input_fmap_10[15:0]) +
	( 16'sd 31927) * $signed(input_fmap_11[15:0]) +
	( 15'sd 13973) * $signed(input_fmap_12[15:0]) +
	( 15'sd 14698) * $signed(input_fmap_13[15:0]) +
	( 14'sd 6553) * $signed(input_fmap_14[15:0]) +
	( 16'sd 17120) * $signed(input_fmap_15[15:0]) +
	( 13'sd 2844) * $signed(input_fmap_16[15:0]) +
	( 15'sd 9763) * $signed(input_fmap_17[15:0]) +
	( 16'sd 25439) * $signed(input_fmap_18[15:0]) +
	( 14'sd 4646) * $signed(input_fmap_19[15:0]) +
	( 15'sd 11455) * $signed(input_fmap_20[15:0]) +
	( 15'sd 12910) * $signed(input_fmap_21[15:0]) +
	( 15'sd 10243) * $signed(input_fmap_22[15:0]) +
	( 16'sd 31208) * $signed(input_fmap_23[15:0]) +
	( 16'sd 16804) * $signed(input_fmap_24[15:0]) +
	( 15'sd 13112) * $signed(input_fmap_25[15:0]) +
	( 16'sd 22376) * $signed(input_fmap_26[15:0]) +
	( 15'sd 11714) * $signed(input_fmap_27[15:0]) +
	( 12'sd 1248) * $signed(input_fmap_28[15:0]) +
	( 16'sd 17329) * $signed(input_fmap_29[15:0]) +
	( 16'sd 19057) * $signed(input_fmap_30[15:0]) +
	( 16'sd 17730) * $signed(input_fmap_31[15:0]) +
	( 15'sd 9237) * $signed(input_fmap_32[15:0]) +
	( 16'sd 27065) * $signed(input_fmap_33[15:0]) +
	( 16'sd 17193) * $signed(input_fmap_34[15:0]) +
	( 16'sd 27651) * $signed(input_fmap_35[15:0]) +
	( 8'sd 103) * $signed(input_fmap_36[15:0]) +
	( 15'sd 12105) * $signed(input_fmap_37[15:0]) +
	( 15'sd 16209) * $signed(input_fmap_38[15:0]) +
	( 14'sd 7850) * $signed(input_fmap_39[15:0]) +
	( 16'sd 18745) * $signed(input_fmap_40[15:0]) +
	( 14'sd 6436) * $signed(input_fmap_41[15:0]) +
	( 16'sd 19109) * $signed(input_fmap_42[15:0]) +
	( 15'sd 14655) * $signed(input_fmap_43[15:0]) +
	( 16'sd 32509) * $signed(input_fmap_44[15:0]) +
	( 14'sd 5484) * $signed(input_fmap_45[15:0]) +
	( 16'sd 32050) * $signed(input_fmap_46[15:0]) +
	( 16'sd 30213) * $signed(input_fmap_47[15:0]) +
	( 16'sd 27410) * $signed(input_fmap_48[15:0]) +
	( 16'sd 31507) * $signed(input_fmap_49[15:0]) +
	( 16'sd 31733) * $signed(input_fmap_50[15:0]) +
	( 16'sd 25551) * $signed(input_fmap_51[15:0]) +
	( 15'sd 11769) * $signed(input_fmap_52[15:0]) +
	( 15'sd 11004) * $signed(input_fmap_53[15:0]) +
	( 16'sd 20222) * $signed(input_fmap_54[15:0]) +
	( 13'sd 2108) * $signed(input_fmap_55[15:0]) +
	( 16'sd 23896) * $signed(input_fmap_56[15:0]) +
	( 15'sd 12485) * $signed(input_fmap_57[15:0]) +
	( 9'sd 149) * $signed(input_fmap_58[15:0]) +
	( 16'sd 26495) * $signed(input_fmap_59[15:0]) +
	( 16'sd 20253) * $signed(input_fmap_60[15:0]) +
	( 16'sd 22488) * $signed(input_fmap_61[15:0]) +
	( 16'sd 23422) * $signed(input_fmap_62[15:0]) +
	( 16'sd 31944) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_116;
assign conv_mac_116 = 
	( 16'sd 32504) * $signed(input_fmap_0[15:0]) +
	( 15'sd 9459) * $signed(input_fmap_1[15:0]) +
	( 16'sd 26903) * $signed(input_fmap_2[15:0]) +
	( 16'sd 18408) * $signed(input_fmap_3[15:0]) +
	( 15'sd 9863) * $signed(input_fmap_4[15:0]) +
	( 14'sd 5469) * $signed(input_fmap_5[15:0]) +
	( 16'sd 20134) * $signed(input_fmap_6[15:0]) +
	( 16'sd 25404) * $signed(input_fmap_7[15:0]) +
	( 17'sd 32768) * $signed(input_fmap_8[15:0]) +
	( 16'sd 30616) * $signed(input_fmap_9[15:0]) +
	( 15'sd 11692) * $signed(input_fmap_10[15:0]) +
	( 15'sd 8456) * $signed(input_fmap_11[15:0]) +
	( 16'sd 22676) * $signed(input_fmap_12[15:0]) +
	( 15'sd 11232) * $signed(input_fmap_13[15:0]) +
	( 16'sd 29956) * $signed(input_fmap_14[15:0]) +
	( 16'sd 28710) * $signed(input_fmap_15[15:0]) +
	( 15'sd 13562) * $signed(input_fmap_16[15:0]) +
	( 16'sd 25482) * $signed(input_fmap_17[15:0]) +
	( 14'sd 6991) * $signed(input_fmap_18[15:0]) +
	( 16'sd 31176) * $signed(input_fmap_19[15:0]) +
	( 16'sd 19079) * $signed(input_fmap_20[15:0]) +
	( 16'sd 25592) * $signed(input_fmap_21[15:0]) +
	( 16'sd 23954) * $signed(input_fmap_22[15:0]) +
	( 15'sd 15287) * $signed(input_fmap_23[15:0]) +
	( 16'sd 30802) * $signed(input_fmap_24[15:0]) +
	( 16'sd 31099) * $signed(input_fmap_25[15:0]) +
	( 14'sd 6275) * $signed(input_fmap_26[15:0]) +
	( 14'sd 7713) * $signed(input_fmap_27[15:0]) +
	( 15'sd 8292) * $signed(input_fmap_28[15:0]) +
	( 16'sd 27828) * $signed(input_fmap_29[15:0]) +
	( 16'sd 17242) * $signed(input_fmap_30[15:0]) +
	( 13'sd 3327) * $signed(input_fmap_31[15:0]) +
	( 15'sd 9844) * $signed(input_fmap_32[15:0]) +
	( 15'sd 14197) * $signed(input_fmap_33[15:0]) +
	( 15'sd 9630) * $signed(input_fmap_34[15:0]) +
	( 14'sd 7507) * $signed(input_fmap_35[15:0]) +
	( 16'sd 19179) * $signed(input_fmap_36[15:0]) +
	( 15'sd 14410) * $signed(input_fmap_37[15:0]) +
	( 16'sd 25454) * $signed(input_fmap_38[15:0]) +
	( 15'sd 11597) * $signed(input_fmap_39[15:0]) +
	( 15'sd 10350) * $signed(input_fmap_40[15:0]) +
	( 13'sd 2071) * $signed(input_fmap_41[15:0]) +
	( 16'sd 24359) * $signed(input_fmap_42[15:0]) +
	( 16'sd 26806) * $signed(input_fmap_43[15:0]) +
	( 16'sd 16735) * $signed(input_fmap_44[15:0]) +
	( 16'sd 17410) * $signed(input_fmap_45[15:0]) +
	( 15'sd 8479) * $signed(input_fmap_46[15:0]) +
	( 16'sd 25627) * $signed(input_fmap_47[15:0]) +
	( 15'sd 15075) * $signed(input_fmap_48[15:0]) +
	( 16'sd 28452) * $signed(input_fmap_49[15:0]) +
	( 16'sd 27801) * $signed(input_fmap_50[15:0]) +
	( 15'sd 9021) * $signed(input_fmap_51[15:0]) +
	( 16'sd 31780) * $signed(input_fmap_52[15:0]) +
	( 15'sd 15497) * $signed(input_fmap_53[15:0]) +
	( 16'sd 16657) * $signed(input_fmap_54[15:0]) +
	( 15'sd 10887) * $signed(input_fmap_55[15:0]) +
	( 16'sd 31817) * $signed(input_fmap_56[15:0]) +
	( 16'sd 30445) * $signed(input_fmap_57[15:0]) +
	( 14'sd 4785) * $signed(input_fmap_58[15:0]) +
	( 13'sd 3930) * $signed(input_fmap_59[15:0]) +
	( 16'sd 23730) * $signed(input_fmap_60[15:0]) +
	( 12'sd 2028) * $signed(input_fmap_61[15:0]) +
	( 15'sd 13515) * $signed(input_fmap_62[15:0]) +
	( 16'sd 18819) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_117;
assign conv_mac_117 = 
	( 16'sd 19148) * $signed(input_fmap_0[15:0]) +
	( 15'sd 14791) * $signed(input_fmap_1[15:0]) +
	( 16'sd 25703) * $signed(input_fmap_2[15:0]) +
	( 14'sd 5171) * $signed(input_fmap_3[15:0]) +
	( 15'sd 10623) * $signed(input_fmap_4[15:0]) +
	( 15'sd 11630) * $signed(input_fmap_5[15:0]) +
	( 15'sd 13389) * $signed(input_fmap_6[15:0]) +
	( 15'sd 9865) * $signed(input_fmap_7[15:0]) +
	( 15'sd 13312) * $signed(input_fmap_8[15:0]) +
	( 16'sd 27835) * $signed(input_fmap_9[15:0]) +
	( 16'sd 26090) * $signed(input_fmap_10[15:0]) +
	( 16'sd 21038) * $signed(input_fmap_11[15:0]) +
	( 16'sd 18524) * $signed(input_fmap_12[15:0]) +
	( 15'sd 11578) * $signed(input_fmap_13[15:0]) +
	( 16'sd 19654) * $signed(input_fmap_14[15:0]) +
	( 16'sd 26701) * $signed(input_fmap_15[15:0]) +
	( 15'sd 8753) * $signed(input_fmap_16[15:0]) +
	( 10'sd 308) * $signed(input_fmap_17[15:0]) +
	( 16'sd 22039) * $signed(input_fmap_18[15:0]) +
	( 16'sd 22325) * $signed(input_fmap_19[15:0]) +
	( 14'sd 7611) * $signed(input_fmap_20[15:0]) +
	( 15'sd 13947) * $signed(input_fmap_21[15:0]) +
	( 10'sd 510) * $signed(input_fmap_22[15:0]) +
	( 16'sd 22057) * $signed(input_fmap_23[15:0]) +
	( 13'sd 3927) * $signed(input_fmap_24[15:0]) +
	( 15'sd 14594) * $signed(input_fmap_25[15:0]) +
	( 16'sd 32643) * $signed(input_fmap_26[15:0]) +
	( 15'sd 13544) * $signed(input_fmap_27[15:0]) +
	( 16'sd 32364) * $signed(input_fmap_28[15:0]) +
	( 15'sd 13753) * $signed(input_fmap_29[15:0]) +
	( 15'sd 10347) * $signed(input_fmap_30[15:0]) +
	( 16'sd 23127) * $signed(input_fmap_31[15:0]) +
	( 9'sd 254) * $signed(input_fmap_32[15:0]) +
	( 15'sd 14285) * $signed(input_fmap_33[15:0]) +
	( 13'sd 2997) * $signed(input_fmap_34[15:0]) +
	( 15'sd 10006) * $signed(input_fmap_35[15:0]) +
	( 16'sd 24344) * $signed(input_fmap_36[15:0]) +
	( 14'sd 4285) * $signed(input_fmap_37[15:0]) +
	( 15'sd 15085) * $signed(input_fmap_38[15:0]) +
	( 15'sd 16118) * $signed(input_fmap_39[15:0]) +
	( 15'sd 13482) * $signed(input_fmap_40[15:0]) +
	( 15'sd 12049) * $signed(input_fmap_41[15:0]) +
	( 15'sd 8922) * $signed(input_fmap_42[15:0]) +
	( 16'sd 30798) * $signed(input_fmap_43[15:0]) +
	( 16'sd 32707) * $signed(input_fmap_44[15:0]) +
	( 16'sd 31042) * $signed(input_fmap_45[15:0]) +
	( 15'sd 8802) * $signed(input_fmap_46[15:0]) +
	( 15'sd 12061) * $signed(input_fmap_47[15:0]) +
	( 13'sd 2114) * $signed(input_fmap_48[15:0]) +
	( 13'sd 2353) * $signed(input_fmap_49[15:0]) +
	( 16'sd 18344) * $signed(input_fmap_50[15:0]) +
	( 16'sd 25958) * $signed(input_fmap_51[15:0]) +
	( 16'sd 19394) * $signed(input_fmap_52[15:0]) +
	( 15'sd 12837) * $signed(input_fmap_53[15:0]) +
	( 12'sd 1310) * $signed(input_fmap_54[15:0]) +
	( 14'sd 6009) * $signed(input_fmap_55[15:0]) +
	( 16'sd 32616) * $signed(input_fmap_56[15:0]) +
	( 15'sd 9905) * $signed(input_fmap_57[15:0]) +
	( 16'sd 30062) * $signed(input_fmap_58[15:0]) +
	( 16'sd 26745) * $signed(input_fmap_59[15:0]) +
	( 13'sd 3506) * $signed(input_fmap_60[15:0]) +
	( 14'sd 5344) * $signed(input_fmap_61[15:0]) +
	( 15'sd 14412) * $signed(input_fmap_62[15:0]) +
	( 16'sd 19034) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_118;
assign conv_mac_118 = 
	( 16'sd 27352) * $signed(input_fmap_0[15:0]) +
	( 14'sd 7082) * $signed(input_fmap_1[15:0]) +
	( 14'sd 7085) * $signed(input_fmap_2[15:0]) +
	( 15'sd 10481) * $signed(input_fmap_3[15:0]) +
	( 14'sd 7901) * $signed(input_fmap_4[15:0]) +
	( 16'sd 29826) * $signed(input_fmap_5[15:0]) +
	( 16'sd 27346) * $signed(input_fmap_6[15:0]) +
	( 16'sd 17462) * $signed(input_fmap_7[15:0]) +
	( 14'sd 7964) * $signed(input_fmap_8[15:0]) +
	( 16'sd 16741) * $signed(input_fmap_9[15:0]) +
	( 16'sd 21175) * $signed(input_fmap_10[15:0]) +
	( 15'sd 12106) * $signed(input_fmap_11[15:0]) +
	( 16'sd 22697) * $signed(input_fmap_12[15:0]) +
	( 16'sd 29821) * $signed(input_fmap_13[15:0]) +
	( 15'sd 11682) * $signed(input_fmap_14[15:0]) +
	( 16'sd 19803) * $signed(input_fmap_15[15:0]) +
	( 16'sd 29228) * $signed(input_fmap_16[15:0]) +
	( 16'sd 31865) * $signed(input_fmap_17[15:0]) +
	( 15'sd 15176) * $signed(input_fmap_18[15:0]) +
	( 16'sd 32512) * $signed(input_fmap_19[15:0]) +
	( 13'sd 3550) * $signed(input_fmap_20[15:0]) +
	( 14'sd 6318) * $signed(input_fmap_21[15:0]) +
	( 16'sd 19872) * $signed(input_fmap_22[15:0]) +
	( 15'sd 11934) * $signed(input_fmap_23[15:0]) +
	( 15'sd 10033) * $signed(input_fmap_24[15:0]) +
	( 16'sd 26287) * $signed(input_fmap_25[15:0]) +
	( 16'sd 22608) * $signed(input_fmap_26[15:0]) +
	( 16'sd 16577) * $signed(input_fmap_27[15:0]) +
	( 15'sd 12726) * $signed(input_fmap_28[15:0]) +
	( 15'sd 15783) * $signed(input_fmap_29[15:0]) +
	( 16'sd 23084) * $signed(input_fmap_30[15:0]) +
	( 14'sd 6723) * $signed(input_fmap_31[15:0]) +
	( 15'sd 13677) * $signed(input_fmap_32[15:0]) +
	( 12'sd 1269) * $signed(input_fmap_33[15:0]) +
	( 14'sd 7931) * $signed(input_fmap_34[15:0]) +
	( 14'sd 5932) * $signed(input_fmap_35[15:0]) +
	( 16'sd 24301) * $signed(input_fmap_36[15:0]) +
	( 16'sd 24710) * $signed(input_fmap_37[15:0]) +
	( 16'sd 25811) * $signed(input_fmap_38[15:0]) +
	( 16'sd 24130) * $signed(input_fmap_39[15:0]) +
	( 16'sd 22734) * $signed(input_fmap_40[15:0]) +
	( 16'sd 29782) * $signed(input_fmap_41[15:0]) +
	( 14'sd 5431) * $signed(input_fmap_42[15:0]) +
	( 15'sd 9056) * $signed(input_fmap_43[15:0]) +
	( 16'sd 22847) * $signed(input_fmap_44[15:0]) +
	( 16'sd 31232) * $signed(input_fmap_45[15:0]) +
	( 15'sd 11219) * $signed(input_fmap_46[15:0]) +
	( 12'sd 2023) * $signed(input_fmap_47[15:0]) +
	( 15'sd 16049) * $signed(input_fmap_48[15:0]) +
	( 15'sd 16056) * $signed(input_fmap_49[15:0]) +
	( 16'sd 20387) * $signed(input_fmap_50[15:0]) +
	( 16'sd 23624) * $signed(input_fmap_51[15:0]) +
	( 13'sd 2058) * $signed(input_fmap_52[15:0]) +
	( 16'sd 18800) * $signed(input_fmap_53[15:0]) +
	( 16'sd 24308) * $signed(input_fmap_54[15:0]) +
	( 16'sd 16841) * $signed(input_fmap_55[15:0]) +
	( 13'sd 3364) * $signed(input_fmap_56[15:0]) +
	( 16'sd 16621) * $signed(input_fmap_57[15:0]) +
	( 16'sd 26540) * $signed(input_fmap_58[15:0]) +
	( 16'sd 21760) * $signed(input_fmap_59[15:0]) +
	( 16'sd 21236) * $signed(input_fmap_60[15:0]) +
	( 14'sd 7504) * $signed(input_fmap_61[15:0]) +
	( 16'sd 23961) * $signed(input_fmap_62[15:0]) +
	( 16'sd 24282) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_119;
assign conv_mac_119 = 
	( 16'sd 23833) * $signed(input_fmap_0[15:0]) +
	( 16'sd 30618) * $signed(input_fmap_1[15:0]) +
	( 14'sd 7787) * $signed(input_fmap_2[15:0]) +
	( 16'sd 29069) * $signed(input_fmap_3[15:0]) +
	( 16'sd 20243) * $signed(input_fmap_4[15:0]) +
	( 16'sd 22946) * $signed(input_fmap_5[15:0]) +
	( 12'sd 1849) * $signed(input_fmap_6[15:0]) +
	( 15'sd 11649) * $signed(input_fmap_7[15:0]) +
	( 16'sd 19124) * $signed(input_fmap_8[15:0]) +
	( 16'sd 20515) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1987) * $signed(input_fmap_10[15:0]) +
	( 15'sd 13895) * $signed(input_fmap_11[15:0]) +
	( 16'sd 27909) * $signed(input_fmap_12[15:0]) +
	( 15'sd 13391) * $signed(input_fmap_13[15:0]) +
	( 14'sd 5747) * $signed(input_fmap_14[15:0]) +
	( 16'sd 29945) * $signed(input_fmap_15[15:0]) +
	( 16'sd 28753) * $signed(input_fmap_16[15:0]) +
	( 15'sd 12406) * $signed(input_fmap_17[15:0]) +
	( 14'sd 5554) * $signed(input_fmap_18[15:0]) +
	( 15'sd 14530) * $signed(input_fmap_19[15:0]) +
	( 15'sd 15223) * $signed(input_fmap_20[15:0]) +
	( 16'sd 22185) * $signed(input_fmap_21[15:0]) +
	( 16'sd 17616) * $signed(input_fmap_22[15:0]) +
	( 14'sd 5282) * $signed(input_fmap_23[15:0]) +
	( 16'sd 27261) * $signed(input_fmap_24[15:0]) +
	( 15'sd 8284) * $signed(input_fmap_25[15:0]) +
	( 16'sd 28996) * $signed(input_fmap_26[15:0]) +
	( 16'sd 31311) * $signed(input_fmap_27[15:0]) +
	( 15'sd 9251) * $signed(input_fmap_28[15:0]) +
	( 16'sd 29482) * $signed(input_fmap_29[15:0]) +
	( 16'sd 27078) * $signed(input_fmap_30[15:0]) +
	( 15'sd 12340) * $signed(input_fmap_31[15:0]) +
	( 13'sd 3490) * $signed(input_fmap_32[15:0]) +
	( 14'sd 5742) * $signed(input_fmap_33[15:0]) +
	( 13'sd 3432) * $signed(input_fmap_34[15:0]) +
	( 15'sd 13462) * $signed(input_fmap_35[15:0]) +
	( 16'sd 24376) * $signed(input_fmap_36[15:0]) +
	( 16'sd 24867) * $signed(input_fmap_37[15:0]) +
	( 15'sd 12791) * $signed(input_fmap_38[15:0]) +
	( 15'sd 10381) * $signed(input_fmap_39[15:0]) +
	( 16'sd 28317) * $signed(input_fmap_40[15:0]) +
	( 16'sd 30853) * $signed(input_fmap_41[15:0]) +
	( 16'sd 23495) * $signed(input_fmap_42[15:0]) +
	( 16'sd 27434) * $signed(input_fmap_43[15:0]) +
	( 16'sd 19460) * $signed(input_fmap_44[15:0]) +
	( 16'sd 16839) * $signed(input_fmap_45[15:0]) +
	( 15'sd 16348) * $signed(input_fmap_46[15:0]) +
	( 15'sd 14577) * $signed(input_fmap_47[15:0]) +
	( 16'sd 26330) * $signed(input_fmap_48[15:0]) +
	( 16'sd 24298) * $signed(input_fmap_49[15:0]) +
	( 16'sd 22239) * $signed(input_fmap_50[15:0]) +
	( 15'sd 13509) * $signed(input_fmap_51[15:0]) +
	( 14'sd 5323) * $signed(input_fmap_52[15:0]) +
	( 16'sd 23252) * $signed(input_fmap_53[15:0]) +
	( 14'sd 7652) * $signed(input_fmap_54[15:0]) +
	( 16'sd 19263) * $signed(input_fmap_55[15:0]) +
	( 16'sd 21476) * $signed(input_fmap_56[15:0]) +
	( 15'sd 12655) * $signed(input_fmap_57[15:0]) +
	( 14'sd 7117) * $signed(input_fmap_58[15:0]) +
	( 11'sd 528) * $signed(input_fmap_59[15:0]) +
	( 12'sd 1272) * $signed(input_fmap_60[15:0]) +
	( 16'sd 31889) * $signed(input_fmap_61[15:0]) +
	( 15'sd 11640) * $signed(input_fmap_62[15:0]) +
	( 15'sd 12860) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_120;
assign conv_mac_120 = 
	( 16'sd 22843) * $signed(input_fmap_0[15:0]) +
	( 14'sd 4353) * $signed(input_fmap_1[15:0]) +
	( 14'sd 7309) * $signed(input_fmap_2[15:0]) +
	( 16'sd 20659) * $signed(input_fmap_3[15:0]) +
	( 16'sd 22761) * $signed(input_fmap_4[15:0]) +
	( 15'sd 13460) * $signed(input_fmap_5[15:0]) +
	( 13'sd 2190) * $signed(input_fmap_6[15:0]) +
	( 14'sd 8184) * $signed(input_fmap_7[15:0]) +
	( 16'sd 29282) * $signed(input_fmap_8[15:0]) +
	( 13'sd 3288) * $signed(input_fmap_9[15:0]) +
	( 15'sd 13710) * $signed(input_fmap_10[15:0]) +
	( 16'sd 20099) * $signed(input_fmap_11[15:0]) +
	( 16'sd 30781) * $signed(input_fmap_12[15:0]) +
	( 13'sd 2294) * $signed(input_fmap_13[15:0]) +
	( 16'sd 24862) * $signed(input_fmap_14[15:0]) +
	( 14'sd 7921) * $signed(input_fmap_15[15:0]) +
	( 15'sd 8770) * $signed(input_fmap_16[15:0]) +
	( 16'sd 29432) * $signed(input_fmap_17[15:0]) +
	( 16'sd 24626) * $signed(input_fmap_18[15:0]) +
	( 14'sd 8013) * $signed(input_fmap_19[15:0]) +
	( 13'sd 3462) * $signed(input_fmap_20[15:0]) +
	( 15'sd 14275) * $signed(input_fmap_21[15:0]) +
	( 13'sd 3067) * $signed(input_fmap_22[15:0]) +
	( 16'sd 19283) * $signed(input_fmap_23[15:0]) +
	( 15'sd 10861) * $signed(input_fmap_24[15:0]) +
	( 16'sd 31986) * $signed(input_fmap_25[15:0]) +
	( 16'sd 19778) * $signed(input_fmap_26[15:0]) +
	( 14'sd 6545) * $signed(input_fmap_27[15:0]) +
	( 15'sd 14623) * $signed(input_fmap_28[15:0]) +
	( 16'sd 27850) * $signed(input_fmap_29[15:0]) +
	( 15'sd 15012) * $signed(input_fmap_30[15:0]) +
	( 15'sd 10854) * $signed(input_fmap_31[15:0]) +
	( 15'sd 11944) * $signed(input_fmap_32[15:0]) +
	( 16'sd 32391) * $signed(input_fmap_33[15:0]) +
	( 14'sd 7935) * $signed(input_fmap_34[15:0]) +
	( 16'sd 27319) * $signed(input_fmap_35[15:0]) +
	( 16'sd 16762) * $signed(input_fmap_36[15:0]) +
	( 16'sd 19340) * $signed(input_fmap_37[15:0]) +
	( 14'sd 6138) * $signed(input_fmap_38[15:0]) +
	( 16'sd 23515) * $signed(input_fmap_39[15:0]) +
	( 15'sd 9361) * $signed(input_fmap_40[15:0]) +
	( 16'sd 19492) * $signed(input_fmap_41[15:0]) +
	( 14'sd 6208) * $signed(input_fmap_42[15:0]) +
	( 16'sd 26318) * $signed(input_fmap_43[15:0]) +
	( 12'sd 1576) * $signed(input_fmap_44[15:0]) +
	( 14'sd 4495) * $signed(input_fmap_45[15:0]) +
	( 16'sd 27543) * $signed(input_fmap_46[15:0]) +
	( 16'sd 18284) * $signed(input_fmap_47[15:0]) +
	( 15'sd 15444) * $signed(input_fmap_48[15:0]) +
	( 14'sd 8067) * $signed(input_fmap_49[15:0]) +
	( 15'sd 8642) * $signed(input_fmap_50[15:0]) +
	( 14'sd 6786) * $signed(input_fmap_51[15:0]) +
	( 16'sd 23267) * $signed(input_fmap_52[15:0]) +
	( 16'sd 32153) * $signed(input_fmap_53[15:0]) +
	( 16'sd 29166) * $signed(input_fmap_54[15:0]) +
	( 16'sd 24820) * $signed(input_fmap_55[15:0]) +
	( 13'sd 2313) * $signed(input_fmap_56[15:0]) +
	( 12'sd 1176) * $signed(input_fmap_57[15:0]) +
	( 12'sd 1482) * $signed(input_fmap_58[15:0]) +
	( 14'sd 6985) * $signed(input_fmap_59[15:0]) +
	( 15'sd 11210) * $signed(input_fmap_60[15:0]) +
	( 10'sd 455) * $signed(input_fmap_61[15:0]) +
	( 15'sd 9955) * $signed(input_fmap_62[15:0]) +
	( 15'sd 13939) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_121;
assign conv_mac_121 = 
	( 16'sd 22534) * $signed(input_fmap_0[15:0]) +
	( 15'sd 11063) * $signed(input_fmap_1[15:0]) +
	( 14'sd 4706) * $signed(input_fmap_2[15:0]) +
	( 14'sd 6415) * $signed(input_fmap_3[15:0]) +
	( 16'sd 27721) * $signed(input_fmap_4[15:0]) +
	( 14'sd 5518) * $signed(input_fmap_5[15:0]) +
	( 13'sd 2830) * $signed(input_fmap_6[15:0]) +
	( 16'sd 19305) * $signed(input_fmap_7[15:0]) +
	( 16'sd 26284) * $signed(input_fmap_8[15:0]) +
	( 15'sd 10765) * $signed(input_fmap_9[15:0]) +
	( 14'sd 7046) * $signed(input_fmap_10[15:0]) +
	( 16'sd 27255) * $signed(input_fmap_11[15:0]) +
	( 16'sd 23716) * $signed(input_fmap_12[15:0]) +
	( 16'sd 22880) * $signed(input_fmap_13[15:0]) +
	( 16'sd 19959) * $signed(input_fmap_14[15:0]) +
	( 16'sd 30402) * $signed(input_fmap_15[15:0]) +
	( 15'sd 11513) * $signed(input_fmap_16[15:0]) +
	( 16'sd 21020) * $signed(input_fmap_17[15:0]) +
	( 16'sd 22144) * $signed(input_fmap_18[15:0]) +
	( 15'sd 15159) * $signed(input_fmap_19[15:0]) +
	( 16'sd 17477) * $signed(input_fmap_20[15:0]) +
	( 16'sd 25969) * $signed(input_fmap_21[15:0]) +
	( 16'sd 21826) * $signed(input_fmap_22[15:0]) +
	( 14'sd 4299) * $signed(input_fmap_23[15:0]) +
	( 16'sd 22487) * $signed(input_fmap_24[15:0]) +
	( 16'sd 29758) * $signed(input_fmap_25[15:0]) +
	( 14'sd 7926) * $signed(input_fmap_26[15:0]) +
	( 16'sd 24328) * $signed(input_fmap_27[15:0]) +
	( 16'sd 22116) * $signed(input_fmap_28[15:0]) +
	( 16'sd 22218) * $signed(input_fmap_29[15:0]) +
	( 13'sd 2685) * $signed(input_fmap_30[15:0]) +
	( 16'sd 22576) * $signed(input_fmap_31[15:0]) +
	( 15'sd 8491) * $signed(input_fmap_32[15:0]) +
	( 15'sd 11576) * $signed(input_fmap_33[15:0]) +
	( 14'sd 6044) * $signed(input_fmap_34[15:0]) +
	( 14'sd 4289) * $signed(input_fmap_35[15:0]) +
	( 16'sd 28313) * $signed(input_fmap_36[15:0]) +
	( 16'sd 30050) * $signed(input_fmap_37[15:0]) +
	( 15'sd 12053) * $signed(input_fmap_38[15:0]) +
	( 15'sd 15260) * $signed(input_fmap_39[15:0]) +
	( 16'sd 26011) * $signed(input_fmap_40[15:0]) +
	( 16'sd 32429) * $signed(input_fmap_41[15:0]) +
	( 14'sd 4162) * $signed(input_fmap_42[15:0]) +
	( 15'sd 12816) * $signed(input_fmap_43[15:0]) +
	( 15'sd 8731) * $signed(input_fmap_44[15:0]) +
	( 16'sd 26100) * $signed(input_fmap_45[15:0]) +
	( 16'sd 25480) * $signed(input_fmap_46[15:0]) +
	( 10'sd 408) * $signed(input_fmap_47[15:0]) +
	( 15'sd 12842) * $signed(input_fmap_48[15:0]) +
	( 16'sd 29957) * $signed(input_fmap_49[15:0]) +
	( 16'sd 29084) * $signed(input_fmap_50[15:0]) +
	( 15'sd 13854) * $signed(input_fmap_51[15:0]) +
	( 16'sd 25556) * $signed(input_fmap_52[15:0]) +
	( 16'sd 24575) * $signed(input_fmap_53[15:0]) +
	( 16'sd 19903) * $signed(input_fmap_54[15:0]) +
	( 16'sd 26858) * $signed(input_fmap_55[15:0]) +
	( 14'sd 7197) * $signed(input_fmap_56[15:0]) +
	( 16'sd 25143) * $signed(input_fmap_57[15:0]) +
	( 16'sd 21452) * $signed(input_fmap_58[15:0]) +
	( 16'sd 25047) * $signed(input_fmap_59[15:0]) +
	( 13'sd 3893) * $signed(input_fmap_60[15:0]) +
	( 11'sd 547) * $signed(input_fmap_61[15:0]) +
	( 14'sd 7858) * $signed(input_fmap_62[15:0]) +
	( 15'sd 8607) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_122;
assign conv_mac_122 = 
	( 14'sd 8180) * $signed(input_fmap_0[15:0]) +
	( 14'sd 7202) * $signed(input_fmap_1[15:0]) +
	( 16'sd 22555) * $signed(input_fmap_2[15:0]) +
	( 16'sd 26113) * $signed(input_fmap_3[15:0]) +
	( 15'sd 8485) * $signed(input_fmap_4[15:0]) +
	( 15'sd 12480) * $signed(input_fmap_5[15:0]) +
	( 11'sd 872) * $signed(input_fmap_6[15:0]) +
	( 14'sd 4240) * $signed(input_fmap_7[15:0]) +
	( 16'sd 30760) * $signed(input_fmap_8[15:0]) +
	( 16'sd 31199) * $signed(input_fmap_9[15:0]) +
	( 16'sd 31817) * $signed(input_fmap_10[15:0]) +
	( 13'sd 3773) * $signed(input_fmap_11[15:0]) +
	( 16'sd 21663) * $signed(input_fmap_12[15:0]) +
	( 16'sd 31825) * $signed(input_fmap_13[15:0]) +
	( 15'sd 15027) * $signed(input_fmap_14[15:0]) +
	( 16'sd 22170) * $signed(input_fmap_15[15:0]) +
	( 12'sd 1869) * $signed(input_fmap_16[15:0]) +
	( 14'sd 5848) * $signed(input_fmap_17[15:0]) +
	( 15'sd 14154) * $signed(input_fmap_18[15:0]) +
	( 16'sd 31165) * $signed(input_fmap_19[15:0]) +
	( 16'sd 25455) * $signed(input_fmap_20[15:0]) +
	( 16'sd 20016) * $signed(input_fmap_21[15:0]) +
	( 16'sd 23688) * $signed(input_fmap_22[15:0]) +
	( 16'sd 27458) * $signed(input_fmap_23[15:0]) +
	( 15'sd 13078) * $signed(input_fmap_24[15:0]) +
	( 15'sd 11563) * $signed(input_fmap_25[15:0]) +
	( 16'sd 16481) * $signed(input_fmap_26[15:0]) +
	( 15'sd 15023) * $signed(input_fmap_27[15:0]) +
	( 15'sd 12111) * $signed(input_fmap_28[15:0]) +
	( 14'sd 5819) * $signed(input_fmap_29[15:0]) +
	( 12'sd 1622) * $signed(input_fmap_30[15:0]) +
	( 15'sd 10489) * $signed(input_fmap_31[15:0]) +
	( 14'sd 5650) * $signed(input_fmap_32[15:0]) +
	( 15'sd 13827) * $signed(input_fmap_33[15:0]) +
	( 16'sd 24918) * $signed(input_fmap_34[15:0]) +
	( 13'sd 2146) * $signed(input_fmap_35[15:0]) +
	( 16'sd 18930) * $signed(input_fmap_36[15:0]) +
	( 14'sd 6543) * $signed(input_fmap_37[15:0]) +
	( 16'sd 21229) * $signed(input_fmap_38[15:0]) +
	( 16'sd 17509) * $signed(input_fmap_39[15:0]) +
	( 14'sd 4813) * $signed(input_fmap_40[15:0]) +
	( 16'sd 16969) * $signed(input_fmap_41[15:0]) +
	( 16'sd 29213) * $signed(input_fmap_42[15:0]) +
	( 12'sd 1340) * $signed(input_fmap_43[15:0]) +
	( 10'sd 420) * $signed(input_fmap_44[15:0]) +
	( 13'sd 3936) * $signed(input_fmap_45[15:0]) +
	( 15'sd 9773) * $signed(input_fmap_46[15:0]) +
	( 16'sd 32338) * $signed(input_fmap_47[15:0]) +
	( 16'sd 26441) * $signed(input_fmap_48[15:0]) +
	( 14'sd 6774) * $signed(input_fmap_49[15:0]) +
	( 14'sd 4993) * $signed(input_fmap_50[15:0]) +
	( 16'sd 17489) * $signed(input_fmap_51[15:0]) +
	( 16'sd 17660) * $signed(input_fmap_52[15:0]) +
	( 14'sd 4136) * $signed(input_fmap_53[15:0]) +
	( 16'sd 18330) * $signed(input_fmap_54[15:0]) +
	( 15'sd 9726) * $signed(input_fmap_55[15:0]) +
	( 9'sd 143) * $signed(input_fmap_56[15:0]) +
	( 16'sd 25054) * $signed(input_fmap_57[15:0]) +
	( 15'sd 15631) * $signed(input_fmap_58[15:0]) +
	( 11'sd 908) * $signed(input_fmap_59[15:0]) +
	( 14'sd 4683) * $signed(input_fmap_60[15:0]) +
	( 14'sd 7012) * $signed(input_fmap_61[15:0]) +
	( 16'sd 31160) * $signed(input_fmap_62[15:0]) +
	( 14'sd 4464) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_123;
assign conv_mac_123 = 
	( 16'sd 32753) * $signed(input_fmap_0[15:0]) +
	( 15'sd 12493) * $signed(input_fmap_1[15:0]) +
	( 15'sd 11360) * $signed(input_fmap_2[15:0]) +
	( 15'sd 10437) * $signed(input_fmap_3[15:0]) +
	( 15'sd 15406) * $signed(input_fmap_4[15:0]) +
	( 14'sd 5303) * $signed(input_fmap_5[15:0]) +
	( 15'sd 8598) * $signed(input_fmap_6[15:0]) +
	( 15'sd 16019) * $signed(input_fmap_7[15:0]) +
	( 16'sd 21922) * $signed(input_fmap_8[15:0]) +
	( 16'sd 17997) * $signed(input_fmap_9[15:0]) +
	( 16'sd 29829) * $signed(input_fmap_10[15:0]) +
	( 16'sd 24468) * $signed(input_fmap_11[15:0]) +
	( 15'sd 12687) * $signed(input_fmap_12[15:0]) +
	( 16'sd 23156) * $signed(input_fmap_13[15:0]) +
	( 16'sd 22099) * $signed(input_fmap_14[15:0]) +
	( 16'sd 27525) * $signed(input_fmap_15[15:0]) +
	( 15'sd 16272) * $signed(input_fmap_16[15:0]) +
	( 16'sd 20938) * $signed(input_fmap_17[15:0]) +
	( 16'sd 19577) * $signed(input_fmap_18[15:0]) +
	( 16'sd 24370) * $signed(input_fmap_19[15:0]) +
	( 15'sd 10175) * $signed(input_fmap_20[15:0]) +
	( 16'sd 22710) * $signed(input_fmap_21[15:0]) +
	( 16'sd 26675) * $signed(input_fmap_22[15:0]) +
	( 16'sd 25644) * $signed(input_fmap_23[15:0]) +
	( 16'sd 21349) * $signed(input_fmap_24[15:0]) +
	( 15'sd 16313) * $signed(input_fmap_25[15:0]) +
	( 16'sd 16691) * $signed(input_fmap_26[15:0]) +
	( 16'sd 17601) * $signed(input_fmap_27[15:0]) +
	( 16'sd 26584) * $signed(input_fmap_28[15:0]) +
	( 16'sd 32312) * $signed(input_fmap_29[15:0]) +
	( 15'sd 15492) * $signed(input_fmap_30[15:0]) +
	( 16'sd 31867) * $signed(input_fmap_31[15:0]) +
	( 16'sd 24516) * $signed(input_fmap_32[15:0]) +
	( 16'sd 26338) * $signed(input_fmap_33[15:0]) +
	( 16'sd 27072) * $signed(input_fmap_34[15:0]) +
	( 16'sd 20439) * $signed(input_fmap_35[15:0]) +
	( 16'sd 27600) * $signed(input_fmap_36[15:0]) +
	( 13'sd 2475) * $signed(input_fmap_37[15:0]) +
	( 12'sd 1317) * $signed(input_fmap_38[15:0]) +
	( 16'sd 22933) * $signed(input_fmap_39[15:0]) +
	( 10'sd 442) * $signed(input_fmap_40[15:0]) +
	( 16'sd 24909) * $signed(input_fmap_41[15:0]) +
	( 13'sd 2193) * $signed(input_fmap_42[15:0]) +
	( 13'sd 3845) * $signed(input_fmap_43[15:0]) +
	( 16'sd 20812) * $signed(input_fmap_44[15:0]) +
	( 15'sd 12742) * $signed(input_fmap_45[15:0]) +
	( 15'sd 10015) * $signed(input_fmap_46[15:0]) +
	( 16'sd 29092) * $signed(input_fmap_47[15:0]) +
	( 15'sd 9354) * $signed(input_fmap_48[15:0]) +
	( 16'sd 17325) * $signed(input_fmap_49[15:0]) +
	( 16'sd 26494) * $signed(input_fmap_50[15:0]) +
	( 16'sd 30534) * $signed(input_fmap_51[15:0]) +
	( 16'sd 19445) * $signed(input_fmap_52[15:0]) +
	( 16'sd 31647) * $signed(input_fmap_53[15:0]) +
	( 16'sd 19658) * $signed(input_fmap_54[15:0]) +
	( 16'sd 17839) * $signed(input_fmap_55[15:0]) +
	( 15'sd 9006) * $signed(input_fmap_56[15:0]) +
	( 16'sd 30442) * $signed(input_fmap_57[15:0]) +
	( 16'sd 18352) * $signed(input_fmap_58[15:0]) +
	( 15'sd 15579) * $signed(input_fmap_59[15:0]) +
	( 16'sd 19727) * $signed(input_fmap_60[15:0]) +
	( 16'sd 18468) * $signed(input_fmap_61[15:0]) +
	( 16'sd 23171) * $signed(input_fmap_62[15:0]) +
	( 16'sd 23083) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_124;
assign conv_mac_124 = 
	( 16'sd 17999) * $signed(input_fmap_0[15:0]) +
	( 16'sd 24455) * $signed(input_fmap_1[15:0]) +
	( 16'sd 27310) * $signed(input_fmap_2[15:0]) +
	( 14'sd 6449) * $signed(input_fmap_3[15:0]) +
	( 16'sd 23449) * $signed(input_fmap_4[15:0]) +
	( 16'sd 23665) * $signed(input_fmap_5[15:0]) +
	( 14'sd 5877) * $signed(input_fmap_6[15:0]) +
	( 15'sd 9574) * $signed(input_fmap_7[15:0]) +
	( 14'sd 7866) * $signed(input_fmap_8[15:0]) +
	( 16'sd 31828) * $signed(input_fmap_9[15:0]) +
	( 16'sd 26876) * $signed(input_fmap_10[15:0]) +
	( 11'sd 839) * $signed(input_fmap_11[15:0]) +
	( 16'sd 24389) * $signed(input_fmap_12[15:0]) +
	( 16'sd 30575) * $signed(input_fmap_13[15:0]) +
	( 14'sd 7868) * $signed(input_fmap_14[15:0]) +
	( 16'sd 29476) * $signed(input_fmap_15[15:0]) +
	( 16'sd 25870) * $signed(input_fmap_16[15:0]) +
	( 16'sd 31473) * $signed(input_fmap_17[15:0]) +
	( 14'sd 5196) * $signed(input_fmap_18[15:0]) +
	( 14'sd 6097) * $signed(input_fmap_19[15:0]) +
	( 16'sd 24641) * $signed(input_fmap_20[15:0]) +
	( 15'sd 12803) * $signed(input_fmap_21[15:0]) +
	( 16'sd 18995) * $signed(input_fmap_22[15:0]) +
	( 15'sd 14625) * $signed(input_fmap_23[15:0]) +
	( 15'sd 14111) * $signed(input_fmap_24[15:0]) +
	( 16'sd 23181) * $signed(input_fmap_25[15:0]) +
	( 13'sd 2935) * $signed(input_fmap_26[15:0]) +
	( 14'sd 7279) * $signed(input_fmap_27[15:0]) +
	( 16'sd 31470) * $signed(input_fmap_28[15:0]) +
	( 14'sd 6906) * $signed(input_fmap_29[15:0]) +
	( 13'sd 4001) * $signed(input_fmap_30[15:0]) +
	( 16'sd 16950) * $signed(input_fmap_31[15:0]) +
	( 13'sd 3571) * $signed(input_fmap_32[15:0]) +
	( 14'sd 4205) * $signed(input_fmap_33[15:0]) +
	( 16'sd 17836) * $signed(input_fmap_34[15:0]) +
	( 15'sd 10476) * $signed(input_fmap_35[15:0]) +
	( 16'sd 19865) * $signed(input_fmap_36[15:0]) +
	( 15'sd 10745) * $signed(input_fmap_37[15:0]) +
	( 14'sd 7166) * $signed(input_fmap_38[15:0]) +
	( 16'sd 21600) * $signed(input_fmap_39[15:0]) +
	( 16'sd 19806) * $signed(input_fmap_40[15:0]) +
	( 16'sd 32501) * $signed(input_fmap_41[15:0]) +
	( 16'sd 19368) * $signed(input_fmap_42[15:0]) +
	( 16'sd 20785) * $signed(input_fmap_43[15:0]) +
	( 16'sd 25312) * $signed(input_fmap_44[15:0]) +
	( 16'sd 23941) * $signed(input_fmap_45[15:0]) +
	( 16'sd 16642) * $signed(input_fmap_46[15:0]) +
	( 15'sd 15441) * $signed(input_fmap_47[15:0]) +
	( 14'sd 5584) * $signed(input_fmap_48[15:0]) +
	( 14'sd 4195) * $signed(input_fmap_49[15:0]) +
	( 16'sd 31671) * $signed(input_fmap_50[15:0]) +
	( 14'sd 4829) * $signed(input_fmap_51[15:0]) +
	( 13'sd 2384) * $signed(input_fmap_52[15:0]) +
	( 16'sd 22044) * $signed(input_fmap_53[15:0]) +
	( 15'sd 12299) * $signed(input_fmap_54[15:0]) +
	( 16'sd 22732) * $signed(input_fmap_55[15:0]) +
	( 16'sd 22695) * $signed(input_fmap_56[15:0]) +
	( 15'sd 15065) * $signed(input_fmap_57[15:0]) +
	( 16'sd 32126) * $signed(input_fmap_58[15:0]) +
	( 16'sd 25525) * $signed(input_fmap_59[15:0]) +
	( 16'sd 27632) * $signed(input_fmap_60[15:0]) +
	( 16'sd 26955) * $signed(input_fmap_61[15:0]) +
	( 15'sd 10901) * $signed(input_fmap_62[15:0]) +
	( 14'sd 7958) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_125;
assign conv_mac_125 = 
	( 14'sd 5265) * $signed(input_fmap_0[15:0]) +
	( 15'sd 12007) * $signed(input_fmap_1[15:0]) +
	( 15'sd 10805) * $signed(input_fmap_2[15:0]) +
	( 16'sd 17198) * $signed(input_fmap_3[15:0]) +
	( 14'sd 7508) * $signed(input_fmap_4[15:0]) +
	( 15'sd 12114) * $signed(input_fmap_5[15:0]) +
	( 15'sd 15382) * $signed(input_fmap_6[15:0]) +
	( 14'sd 6285) * $signed(input_fmap_7[15:0]) +
	( 15'sd 14789) * $signed(input_fmap_8[15:0]) +
	( 13'sd 3954) * $signed(input_fmap_9[15:0]) +
	( 13'sd 3644) * $signed(input_fmap_10[15:0]) +
	( 16'sd 20226) * $signed(input_fmap_11[15:0]) +
	( 16'sd 21598) * $signed(input_fmap_12[15:0]) +
	( 14'sd 8142) * $signed(input_fmap_13[15:0]) +
	( 16'sd 29939) * $signed(input_fmap_14[15:0]) +
	( 15'sd 15994) * $signed(input_fmap_15[15:0]) +
	( 15'sd 8270) * $signed(input_fmap_16[15:0]) +
	( 16'sd 23028) * $signed(input_fmap_17[15:0]) +
	( 12'sd 1228) * $signed(input_fmap_18[15:0]) +
	( 16'sd 31163) * $signed(input_fmap_19[15:0]) +
	( 16'sd 24484) * $signed(input_fmap_20[15:0]) +
	( 16'sd 18875) * $signed(input_fmap_21[15:0]) +
	( 16'sd 31493) * $signed(input_fmap_22[15:0]) +
	( 14'sd 5367) * $signed(input_fmap_23[15:0]) +
	( 11'sd 1018) * $signed(input_fmap_24[15:0]) +
	( 14'sd 7765) * $signed(input_fmap_25[15:0]) +
	( 16'sd 18507) * $signed(input_fmap_26[15:0]) +
	( 14'sd 4815) * $signed(input_fmap_27[15:0]) +
	( 16'sd 18543) * $signed(input_fmap_28[15:0]) +
	( 16'sd 22717) * $signed(input_fmap_29[15:0]) +
	( 16'sd 29526) * $signed(input_fmap_30[15:0]) +
	( 16'sd 28646) * $signed(input_fmap_31[15:0]) +
	( 15'sd 12739) * $signed(input_fmap_32[15:0]) +
	( 13'sd 3854) * $signed(input_fmap_33[15:0]) +
	( 16'sd 22243) * $signed(input_fmap_34[15:0]) +
	( 16'sd 31607) * $signed(input_fmap_35[15:0]) +
	( 14'sd 8135) * $signed(input_fmap_36[15:0]) +
	( 15'sd 14675) * $signed(input_fmap_37[15:0]) +
	( 15'sd 9067) * $signed(input_fmap_38[15:0]) +
	( 16'sd 28288) * $signed(input_fmap_39[15:0]) +
	( 16'sd 20514) * $signed(input_fmap_40[15:0]) +
	( 16'sd 25208) * $signed(input_fmap_41[15:0]) +
	( 13'sd 3448) * $signed(input_fmap_42[15:0]) +
	( 15'sd 11621) * $signed(input_fmap_43[15:0]) +
	( 14'sd 4811) * $signed(input_fmap_44[15:0]) +
	( 16'sd 25918) * $signed(input_fmap_45[15:0]) +
	( 16'sd 16653) * $signed(input_fmap_46[15:0]) +
	( 13'sd 2172) * $signed(input_fmap_47[15:0]) +
	( 16'sd 31435) * $signed(input_fmap_48[15:0]) +
	( 16'sd 31832) * $signed(input_fmap_49[15:0]) +
	( 16'sd 18329) * $signed(input_fmap_50[15:0]) +
	( 12'sd 1532) * $signed(input_fmap_51[15:0]) +
	( 14'sd 5542) * $signed(input_fmap_52[15:0]) +
	( 16'sd 32080) * $signed(input_fmap_53[15:0]) +
	( 15'sd 11026) * $signed(input_fmap_54[15:0]) +
	( 15'sd 13744) * $signed(input_fmap_55[15:0]) +
	( 15'sd 12019) * $signed(input_fmap_56[15:0]) +
	( 16'sd 29248) * $signed(input_fmap_57[15:0]) +
	( 16'sd 16804) * $signed(input_fmap_58[15:0]) +
	( 15'sd 15698) * $signed(input_fmap_59[15:0]) +
	( 16'sd 22741) * $signed(input_fmap_60[15:0]) +
	( 16'sd 24594) * $signed(input_fmap_61[15:0]) +
	( 11'sd 993) * $signed(input_fmap_62[15:0]) +
	( 16'sd 28195) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_126;
assign conv_mac_126 = 
	( 13'sd 2917) * $signed(input_fmap_0[15:0]) +
	( 16'sd 31273) * $signed(input_fmap_1[15:0]) +
	( 14'sd 8054) * $signed(input_fmap_2[15:0]) +
	( 16'sd 32055) * $signed(input_fmap_3[15:0]) +
	( 16'sd 32599) * $signed(input_fmap_4[15:0]) +
	( 16'sd 31433) * $signed(input_fmap_5[15:0]) +
	( 13'sd 3110) * $signed(input_fmap_6[15:0]) +
	( 16'sd 24648) * $signed(input_fmap_7[15:0]) +
	( 15'sd 14154) * $signed(input_fmap_8[15:0]) +
	( 16'sd 31966) * $signed(input_fmap_9[15:0]) +
	( 16'sd 17481) * $signed(input_fmap_10[15:0]) +
	( 13'sd 3793) * $signed(input_fmap_11[15:0]) +
	( 16'sd 25110) * $signed(input_fmap_12[15:0]) +
	( 16'sd 19442) * $signed(input_fmap_13[15:0]) +
	( 13'sd 3262) * $signed(input_fmap_14[15:0]) +
	( 12'sd 1859) * $signed(input_fmap_15[15:0]) +
	( 16'sd 29707) * $signed(input_fmap_16[15:0]) +
	( 16'sd 25378) * $signed(input_fmap_17[15:0]) +
	( 11'sd 994) * $signed(input_fmap_18[15:0]) +
	( 16'sd 17310) * $signed(input_fmap_19[15:0]) +
	( 16'sd 19486) * $signed(input_fmap_20[15:0]) +
	( 15'sd 15759) * $signed(input_fmap_21[15:0]) +
	( 15'sd 8539) * $signed(input_fmap_22[15:0]) +
	( 15'sd 14857) * $signed(input_fmap_23[15:0]) +
	( 16'sd 31696) * $signed(input_fmap_24[15:0]) +
	( 16'sd 30460) * $signed(input_fmap_25[15:0]) +
	( 12'sd 1319) * $signed(input_fmap_26[15:0]) +
	( 16'sd 19223) * $signed(input_fmap_27[15:0]) +
	( 15'sd 14538) * $signed(input_fmap_28[15:0]) +
	( 16'sd 20549) * $signed(input_fmap_29[15:0]) +
	( 16'sd 28590) * $signed(input_fmap_30[15:0]) +
	( 16'sd 28740) * $signed(input_fmap_31[15:0]) +
	( 16'sd 18093) * $signed(input_fmap_32[15:0]) +
	( 15'sd 13321) * $signed(input_fmap_33[15:0]) +
	( 15'sd 12563) * $signed(input_fmap_34[15:0]) +
	( 16'sd 24676) * $signed(input_fmap_35[15:0]) +
	( 16'sd 26499) * $signed(input_fmap_36[15:0]) +
	( 16'sd 19825) * $signed(input_fmap_37[15:0]) +
	( 13'sd 3452) * $signed(input_fmap_38[15:0]) +
	( 12'sd 1050) * $signed(input_fmap_39[15:0]) +
	( 15'sd 11321) * $signed(input_fmap_40[15:0]) +
	( 16'sd 18758) * $signed(input_fmap_41[15:0]) +
	( 16'sd 22748) * $signed(input_fmap_42[15:0]) +
	( 16'sd 20849) * $signed(input_fmap_43[15:0]) +
	( 16'sd 23083) * $signed(input_fmap_44[15:0]) +
	( 14'sd 4514) * $signed(input_fmap_45[15:0]) +
	( 14'sd 6722) * $signed(input_fmap_46[15:0]) +
	( 16'sd 28946) * $signed(input_fmap_47[15:0]) +
	( 14'sd 5328) * $signed(input_fmap_48[15:0]) +
	( 15'sd 9929) * $signed(input_fmap_49[15:0]) +
	( 16'sd 19442) * $signed(input_fmap_50[15:0]) +
	( 16'sd 23290) * $signed(input_fmap_51[15:0]) +
	( 13'sd 3173) * $signed(input_fmap_52[15:0]) +
	( 16'sd 17620) * $signed(input_fmap_53[15:0]) +
	( 16'sd 24974) * $signed(input_fmap_54[15:0]) +
	( 16'sd 27287) * $signed(input_fmap_55[15:0]) +
	( 16'sd 31428) * $signed(input_fmap_56[15:0]) +
	( 16'sd 20522) * $signed(input_fmap_57[15:0]) +
	( 15'sd 12680) * $signed(input_fmap_58[15:0]) +
	( 16'sd 16818) * $signed(input_fmap_59[15:0]) +
	( 15'sd 8961) * $signed(input_fmap_60[15:0]) +
	( 15'sd 12635) * $signed(input_fmap_61[15:0]) +
	( 16'sd 28483) * $signed(input_fmap_62[15:0]) +
	( 15'sd 11076) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_127;
assign conv_mac_127 = 
	( 14'sd 5091) * $signed(input_fmap_0[15:0]) +
	( 16'sd 27867) * $signed(input_fmap_1[15:0]) +
	( 16'sd 21623) * $signed(input_fmap_2[15:0]) +
	( 16'sd 25219) * $signed(input_fmap_3[15:0]) +
	( 14'sd 7857) * $signed(input_fmap_4[15:0]) +
	( 14'sd 7634) * $signed(input_fmap_5[15:0]) +
	( 15'sd 8992) * $signed(input_fmap_6[15:0]) +
	( 16'sd 18272) * $signed(input_fmap_7[15:0]) +
	( 15'sd 10187) * $signed(input_fmap_8[15:0]) +
	( 14'sd 7693) * $signed(input_fmap_9[15:0]) +
	( 14'sd 4756) * $signed(input_fmap_10[15:0]) +
	( 15'sd 15588) * $signed(input_fmap_11[15:0]) +
	( 16'sd 21957) * $signed(input_fmap_12[15:0]) +
	( 16'sd 30025) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13532) * $signed(input_fmap_14[15:0]) +
	( 16'sd 31138) * $signed(input_fmap_15[15:0]) +
	( 16'sd 27593) * $signed(input_fmap_16[15:0]) +
	( 16'sd 28245) * $signed(input_fmap_17[15:0]) +
	( 14'sd 7332) * $signed(input_fmap_18[15:0]) +
	( 16'sd 16727) * $signed(input_fmap_19[15:0]) +
	( 16'sd 21254) * $signed(input_fmap_20[15:0]) +
	( 16'sd 16617) * $signed(input_fmap_21[15:0]) +
	( 16'sd 20688) * $signed(input_fmap_22[15:0]) +
	( 16'sd 27513) * $signed(input_fmap_23[15:0]) +
	( 16'sd 30028) * $signed(input_fmap_24[15:0]) +
	( 13'sd 3726) * $signed(input_fmap_25[15:0]) +
	( 13'sd 4047) * $signed(input_fmap_26[15:0]) +
	( 16'sd 18890) * $signed(input_fmap_27[15:0]) +
	( 15'sd 12139) * $signed(input_fmap_28[15:0]) +
	( 16'sd 18758) * $signed(input_fmap_29[15:0]) +
	( 14'sd 6591) * $signed(input_fmap_30[15:0]) +
	( 15'sd 14594) * $signed(input_fmap_31[15:0]) +
	( 16'sd 30920) * $signed(input_fmap_32[15:0]) +
	( 14'sd 8170) * $signed(input_fmap_33[15:0]) +
	( 16'sd 31955) * $signed(input_fmap_34[15:0]) +
	( 15'sd 15810) * $signed(input_fmap_35[15:0]) +
	( 15'sd 11486) * $signed(input_fmap_36[15:0]) +
	( 16'sd 23487) * $signed(input_fmap_37[15:0]) +
	( 16'sd 25448) * $signed(input_fmap_38[15:0]) +
	( 15'sd 16345) * $signed(input_fmap_39[15:0]) +
	( 16'sd 18238) * $signed(input_fmap_40[15:0]) +
	( 14'sd 5571) * $signed(input_fmap_41[15:0]) +
	( 15'sd 14928) * $signed(input_fmap_42[15:0]) +
	( 12'sd 1377) * $signed(input_fmap_43[15:0]) +
	( 16'sd 27785) * $signed(input_fmap_44[15:0]) +
	( 16'sd 22596) * $signed(input_fmap_45[15:0]) +
	( 15'sd 15676) * $signed(input_fmap_46[15:0]) +
	( 14'sd 6135) * $signed(input_fmap_47[15:0]) +
	( 16'sd 27237) * $signed(input_fmap_48[15:0]) +
	( 15'sd 11044) * $signed(input_fmap_49[15:0]) +
	( 16'sd 24674) * $signed(input_fmap_50[15:0]) +
	( 15'sd 11908) * $signed(input_fmap_51[15:0]) +
	( 16'sd 17377) * $signed(input_fmap_52[15:0]) +
	( 16'sd 28597) * $signed(input_fmap_53[15:0]) +
	( 16'sd 24367) * $signed(input_fmap_54[15:0]) +
	( 16'sd 28617) * $signed(input_fmap_55[15:0]) +
	( 15'sd 12029) * $signed(input_fmap_56[15:0]) +
	( 16'sd 21752) * $signed(input_fmap_57[15:0]) +
	( 16'sd 18840) * $signed(input_fmap_58[15:0]) +
	( 15'sd 15323) * $signed(input_fmap_59[15:0]) +
	( 15'sd 8740) * $signed(input_fmap_60[15:0]) +
	( 16'sd 19222) * $signed(input_fmap_61[15:0]) +
	( 15'sd 15058) * $signed(input_fmap_62[15:0]) +
	( 16'sd 22688) * $signed(input_fmap_63[15:0]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 16'd26609;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1 + 11'd1021;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 15'd10558;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3 + 15'd9729;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4 + 13'd3830;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5 + 12'd1383;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6 + 16'd20845;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7 + 14'd6068;
logic [31:0] bias_add_8;
assign bias_add_8 = conv_mac_8 + 16'd27551;
logic [31:0] bias_add_9;
assign bias_add_9 = conv_mac_9 + 16'd31766;
logic [31:0] bias_add_10;
assign bias_add_10 = conv_mac_10 + 15'd12749;
logic [31:0] bias_add_11;
assign bias_add_11 = conv_mac_11 + 16'd21081;
logic [31:0] bias_add_12;
assign bias_add_12 = conv_mac_12 + 14'd4749;
logic [31:0] bias_add_13;
assign bias_add_13 = conv_mac_13 + 16'd20660;
logic [31:0] bias_add_14;
assign bias_add_14 = conv_mac_14 + 16'd23275;
logic [31:0] bias_add_15;
assign bias_add_15 = conv_mac_15 + 16'd16804;
logic [31:0] bias_add_16;
assign bias_add_16 = conv_mac_16 + 16'd20961;
logic [31:0] bias_add_17;
assign bias_add_17 = conv_mac_17 + 16'd25786;
logic [31:0] bias_add_18;
assign bias_add_18 = conv_mac_18 + 16'd20639;
logic [31:0] bias_add_19;
assign bias_add_19 = conv_mac_19 + 16'd30196;
logic [31:0] bias_add_20;
assign bias_add_20 = conv_mac_20 + 16'd18488;
logic [31:0] bias_add_21;
assign bias_add_21 = conv_mac_21 + 15'd14873;
logic [31:0] bias_add_22;
assign bias_add_22 = conv_mac_22 + 15'd12353;
logic [31:0] bias_add_23;
assign bias_add_23 = conv_mac_23 + 16'd17748;
logic [31:0] bias_add_24;
assign bias_add_24 = conv_mac_24 + 16'd30847;
logic [31:0] bias_add_25;
assign bias_add_25 = conv_mac_25 + 16'd17740;
logic [31:0] bias_add_26;
assign bias_add_26 = conv_mac_26 + 16'd29276;
logic [31:0] bias_add_27;
assign bias_add_27 = conv_mac_27 + 14'd7759;
logic [31:0] bias_add_28;
assign bias_add_28 = conv_mac_28 + 15'd12725;
logic [31:0] bias_add_29;
assign bias_add_29 = conv_mac_29 + 13'd2820;
logic [31:0] bias_add_30;
assign bias_add_30 = conv_mac_30 + 16'd26942;
logic [31:0] bias_add_31;
assign bias_add_31 = conv_mac_31 + 16'd27492;
logic [31:0] bias_add_32;
assign bias_add_32 = conv_mac_32 + 16'd31771;
logic [31:0] bias_add_33;
assign bias_add_33 = conv_mac_33 + 16'd30856;
logic [31:0] bias_add_34;
assign bias_add_34 = conv_mac_34 + 14'd8187;
logic [31:0] bias_add_35;
assign bias_add_35 = conv_mac_35 + 16'd27306;
logic [31:0] bias_add_36;
assign bias_add_36 = conv_mac_36 + 16'd16762;
logic [31:0] bias_add_37;
assign bias_add_37 = conv_mac_37 + 16'd26462;
logic [31:0] bias_add_38;
assign bias_add_38 = conv_mac_38 + 15'd11821;
logic [31:0] bias_add_39;
assign bias_add_39 = conv_mac_39 + 15'd11445;
logic [31:0] bias_add_40;
assign bias_add_40 = conv_mac_40 + 15'd10549;
logic [31:0] bias_add_41;
assign bias_add_41 = conv_mac_41 + 16'd26597;
logic [31:0] bias_add_42;
assign bias_add_42 = conv_mac_42 + 13'd2169;
logic [31:0] bias_add_43;
assign bias_add_43 = conv_mac_43 + 15'd8322;
logic [31:0] bias_add_44;
assign bias_add_44 = conv_mac_44 + 15'd12685;
logic [31:0] bias_add_45;
assign bias_add_45 = conv_mac_45 + 14'd7012;
logic [31:0] bias_add_46;
assign bias_add_46 = conv_mac_46 + 15'd13897;
logic [31:0] bias_add_47;
assign bias_add_47 = conv_mac_47 + 16'd26682;
logic [31:0] bias_add_48;
assign bias_add_48 = conv_mac_48 + 11'd522;
logic [31:0] bias_add_49;
assign bias_add_49 = conv_mac_49 + 16'd18872;
logic [31:0] bias_add_50;
assign bias_add_50 = conv_mac_50 + 16'd22159;
logic [31:0] bias_add_51;
assign bias_add_51 = conv_mac_51 + 16'd24271;
logic [31:0] bias_add_52;
assign bias_add_52 = conv_mac_52 + 16'd28734;
logic [31:0] bias_add_53;
assign bias_add_53 = conv_mac_53 + 16'd30153;
logic [31:0] bias_add_54;
assign bias_add_54 = conv_mac_54 + 14'd5625;
logic [31:0] bias_add_55;
assign bias_add_55 = conv_mac_55 + 16'd28324;
logic [31:0] bias_add_56;
assign bias_add_56 = conv_mac_56 + 15'd9997;
logic [31:0] bias_add_57;
assign bias_add_57 = conv_mac_57 + 15'd8637;
logic [31:0] bias_add_58;
assign bias_add_58 = conv_mac_58 + 16'd25334;
logic [31:0] bias_add_59;
assign bias_add_59 = conv_mac_59 + 15'd14397;
logic [31:0] bias_add_60;
assign bias_add_60 = conv_mac_60 + 16'd18318;
logic [31:0] bias_add_61;
assign bias_add_61 = conv_mac_61 + 16'd22883;
logic [31:0] bias_add_62;
assign bias_add_62 = conv_mac_62 + 11'd967;
logic [31:0] bias_add_63;
assign bias_add_63 = conv_mac_63 + 15'd10153;
logic [31:0] bias_add_64;
assign bias_add_64 = conv_mac_64 + 15'd13968;
logic [31:0] bias_add_65;
assign bias_add_65 = conv_mac_65 + 15'd13855;
logic [31:0] bias_add_66;
assign bias_add_66 = conv_mac_66 + 13'd2733;
logic [31:0] bias_add_67;
assign bias_add_67 = conv_mac_67 + 15'd13587;
logic [31:0] bias_add_68;
assign bias_add_68 = conv_mac_68 + 16'd26211;
logic [31:0] bias_add_69;
assign bias_add_69 = conv_mac_69 + 16'd27585;
logic [31:0] bias_add_70;
assign bias_add_70 = conv_mac_70 + 16'd26596;
logic [31:0] bias_add_71;
assign bias_add_71 = conv_mac_71 + 16'd27155;
logic [31:0] bias_add_72;
assign bias_add_72 = conv_mac_72 + 16'd16699;
logic [31:0] bias_add_73;
assign bias_add_73 = conv_mac_73 + 13'd2156;
logic [31:0] bias_add_74;
assign bias_add_74 = conv_mac_74 + 16'd18851;
logic [31:0] bias_add_75;
assign bias_add_75 = conv_mac_75 + 12'd1051;
logic [31:0] bias_add_76;
assign bias_add_76 = conv_mac_76 + 16'd26109;
logic [31:0] bias_add_77;
assign bias_add_77 = conv_mac_77 + 16'd19061;
logic [31:0] bias_add_78;
assign bias_add_78 = conv_mac_78 + 16'd20938;
logic [31:0] bias_add_79;
assign bias_add_79 = conv_mac_79 + 16'd25401;
logic [31:0] bias_add_80;
assign bias_add_80 = conv_mac_80 + 16'd30393;
logic [31:0] bias_add_81;
assign bias_add_81 = conv_mac_81 + 16'd30200;
logic [31:0] bias_add_82;
assign bias_add_82 = conv_mac_82 + 16'd25057;
logic [31:0] bias_add_83;
assign bias_add_83 = conv_mac_83 + 13'd3846;
logic [31:0] bias_add_84;
assign bias_add_84 = conv_mac_84 + 15'd13736;
logic [31:0] bias_add_85;
assign bias_add_85 = conv_mac_85 + 16'd24857;
logic [31:0] bias_add_86;
assign bias_add_86 = conv_mac_86 + 16'd25412;
logic [31:0] bias_add_87;
assign bias_add_87 = conv_mac_87 + 14'd6335;
logic [31:0] bias_add_88;
assign bias_add_88 = conv_mac_88 + 16'd24447;
logic [31:0] bias_add_89;
assign bias_add_89 = conv_mac_89 + 16'd17896;
logic [31:0] bias_add_90;
assign bias_add_90 = conv_mac_90 + 16'd24825;
logic [31:0] bias_add_91;
assign bias_add_91 = conv_mac_91 + 16'd19628;
logic [31:0] bias_add_92;
assign bias_add_92 = conv_mac_92 + 13'd3190;
logic [31:0] bias_add_93;
assign bias_add_93 = conv_mac_93 + 16'd28573;
logic [31:0] bias_add_94;
assign bias_add_94 = conv_mac_94 + 15'd8253;
logic [31:0] bias_add_95;
assign bias_add_95 = conv_mac_95 + 16'd29452;
logic [31:0] bias_add_96;
assign bias_add_96 = conv_mac_96 + 14'd7488;
logic [31:0] bias_add_97;
assign bias_add_97 = conv_mac_97 + 16'd20563;
logic [31:0] bias_add_98;
assign bias_add_98 = conv_mac_98 + 15'd8578;
logic [31:0] bias_add_99;
assign bias_add_99 = conv_mac_99 + 16'd28669;
logic [31:0] bias_add_100;
assign bias_add_100 = conv_mac_100 + 16'd28591;
logic [31:0] bias_add_101;
assign bias_add_101 = conv_mac_101 + 14'd6983;
logic [31:0] bias_add_102;
assign bias_add_102 = conv_mac_102 + 15'd10586;
logic [31:0] bias_add_103;
assign bias_add_103 = conv_mac_103 + 15'd10270;
logic [31:0] bias_add_104;
assign bias_add_104 = conv_mac_104 + 16'd30673;
logic [31:0] bias_add_105;
assign bias_add_105 = conv_mac_105 + 15'd15464;
logic [31:0] bias_add_106;
assign bias_add_106 = conv_mac_106 + 16'd19123;
logic [31:0] bias_add_107;
assign bias_add_107 = conv_mac_107 + 16'd31385;
logic [31:0] bias_add_108;
assign bias_add_108 = conv_mac_108 + 11'd1009;
logic [31:0] bias_add_109;
assign bias_add_109 = conv_mac_109 + 16'd18521;
logic [31:0] bias_add_110;
assign bias_add_110 = conv_mac_110 + 16'd26617;
logic [31:0] bias_add_111;
assign bias_add_111 = conv_mac_111 + 13'd3753;
logic [31:0] bias_add_112;
assign bias_add_112 = conv_mac_112 + 12'd1094;
logic [31:0] bias_add_113;
assign bias_add_113 = conv_mac_113 + 16'd22305;
logic [31:0] bias_add_114;
assign bias_add_114 = conv_mac_114 + 16'd18564;
logic [31:0] bias_add_115;
assign bias_add_115 = conv_mac_115 + 15'd9571;
logic [31:0] bias_add_116;
assign bias_add_116 = conv_mac_116 + 16'd26210;
logic [31:0] bias_add_117;
assign bias_add_117 = conv_mac_117 + 16'd26490;
logic [31:0] bias_add_118;
assign bias_add_118 = conv_mac_118 + 15'd12348;
logic [31:0] bias_add_119;
assign bias_add_119 = conv_mac_119 + 16'd28865;
logic [31:0] bias_add_120;
assign bias_add_120 = conv_mac_120 + 14'd8156;
logic [31:0] bias_add_121;
assign bias_add_121 = conv_mac_121 + 15'd12679;
logic [31:0] bias_add_122;
assign bias_add_122 = conv_mac_122 + 16'd16636;
logic [31:0] bias_add_123;
assign bias_add_123 = conv_mac_123 + 16'd27515;
logic [31:0] bias_add_124;
assign bias_add_124 = conv_mac_124 + 14'd6629;
logic [31:0] bias_add_125;
assign bias_add_125 = conv_mac_125 + 16'd21676;
logic [31:0] bias_add_126;
assign bias_add_126 = conv_mac_126 + 16'd28841;
logic [31:0] bias_add_127;
assign bias_add_127 = conv_mac_127 + 12'd2045;

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
