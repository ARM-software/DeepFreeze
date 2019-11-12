module conv6_pw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [512-1:0] input_act,
    output logic [512-1:0] output_act,
    output logic ready
);

logic [512-1:0] input_act_ff;
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

logic [7:0] input_fmap_0;
assign input_fmap_0 = input_act_ff[7:0];
logic [7:0] input_fmap_1;
assign input_fmap_1 = input_act_ff[15:8];
logic [7:0] input_fmap_2;
assign input_fmap_2 = input_act_ff[23:16];
logic [7:0] input_fmap_3;
assign input_fmap_3 = input_act_ff[31:24];
logic [7:0] input_fmap_4;
assign input_fmap_4 = input_act_ff[39:32];
logic [7:0] input_fmap_5;
assign input_fmap_5 = input_act_ff[47:40];
logic [7:0] input_fmap_6;
assign input_fmap_6 = input_act_ff[55:48];
logic [7:0] input_fmap_7;
assign input_fmap_7 = input_act_ff[63:56];
logic [7:0] input_fmap_8;
assign input_fmap_8 = input_act_ff[71:64];
logic [7:0] input_fmap_9;
assign input_fmap_9 = input_act_ff[79:72];
logic [7:0] input_fmap_10;
assign input_fmap_10 = input_act_ff[87:80];
logic [7:0] input_fmap_11;
assign input_fmap_11 = input_act_ff[95:88];
logic [7:0] input_fmap_12;
assign input_fmap_12 = input_act_ff[103:96];
logic [7:0] input_fmap_13;
assign input_fmap_13 = input_act_ff[111:104];
logic [7:0] input_fmap_14;
assign input_fmap_14 = input_act_ff[119:112];
logic [7:0] input_fmap_15;
assign input_fmap_15 = input_act_ff[127:120];
logic [7:0] input_fmap_16;
assign input_fmap_16 = input_act_ff[135:128];
logic [7:0] input_fmap_17;
assign input_fmap_17 = input_act_ff[143:136];
logic [7:0] input_fmap_18;
assign input_fmap_18 = input_act_ff[151:144];
logic [7:0] input_fmap_19;
assign input_fmap_19 = input_act_ff[159:152];
logic [7:0] input_fmap_20;
assign input_fmap_20 = input_act_ff[167:160];
logic [7:0] input_fmap_21;
assign input_fmap_21 = input_act_ff[175:168];
logic [7:0] input_fmap_22;
assign input_fmap_22 = input_act_ff[183:176];
logic [7:0] input_fmap_23;
assign input_fmap_23 = input_act_ff[191:184];
logic [7:0] input_fmap_24;
assign input_fmap_24 = input_act_ff[199:192];
logic [7:0] input_fmap_25;
assign input_fmap_25 = input_act_ff[207:200];
logic [7:0] input_fmap_26;
assign input_fmap_26 = input_act_ff[215:208];
logic [7:0] input_fmap_27;
assign input_fmap_27 = input_act_ff[223:216];
logic [7:0] input_fmap_28;
assign input_fmap_28 = input_act_ff[231:224];
logic [7:0] input_fmap_29;
assign input_fmap_29 = input_act_ff[239:232];
logic [7:0] input_fmap_30;
assign input_fmap_30 = input_act_ff[247:240];
logic [7:0] input_fmap_31;
assign input_fmap_31 = input_act_ff[255:248];
logic [7:0] input_fmap_32;
assign input_fmap_32 = input_act_ff[263:256];
logic [7:0] input_fmap_33;
assign input_fmap_33 = input_act_ff[271:264];
logic [7:0] input_fmap_34;
assign input_fmap_34 = input_act_ff[279:272];
logic [7:0] input_fmap_35;
assign input_fmap_35 = input_act_ff[287:280];
logic [7:0] input_fmap_36;
assign input_fmap_36 = input_act_ff[295:288];
logic [7:0] input_fmap_37;
assign input_fmap_37 = input_act_ff[303:296];
logic [7:0] input_fmap_38;
assign input_fmap_38 = input_act_ff[311:304];
logic [7:0] input_fmap_39;
assign input_fmap_39 = input_act_ff[319:312];
logic [7:0] input_fmap_40;
assign input_fmap_40 = input_act_ff[327:320];
logic [7:0] input_fmap_41;
assign input_fmap_41 = input_act_ff[335:328];
logic [7:0] input_fmap_42;
assign input_fmap_42 = input_act_ff[343:336];
logic [7:0] input_fmap_43;
assign input_fmap_43 = input_act_ff[351:344];
logic [7:0] input_fmap_44;
assign input_fmap_44 = input_act_ff[359:352];
logic [7:0] input_fmap_45;
assign input_fmap_45 = input_act_ff[367:360];
logic [7:0] input_fmap_46;
assign input_fmap_46 = input_act_ff[375:368];
logic [7:0] input_fmap_47;
assign input_fmap_47 = input_act_ff[383:376];
logic [7:0] input_fmap_48;
assign input_fmap_48 = input_act_ff[391:384];
logic [7:0] input_fmap_49;
assign input_fmap_49 = input_act_ff[399:392];
logic [7:0] input_fmap_50;
assign input_fmap_50 = input_act_ff[407:400];
logic [7:0] input_fmap_51;
assign input_fmap_51 = input_act_ff[415:408];
logic [7:0] input_fmap_52;
assign input_fmap_52 = input_act_ff[423:416];
logic [7:0] input_fmap_53;
assign input_fmap_53 = input_act_ff[431:424];
logic [7:0] input_fmap_54;
assign input_fmap_54 = input_act_ff[439:432];
logic [7:0] input_fmap_55;
assign input_fmap_55 = input_act_ff[447:440];
logic [7:0] input_fmap_56;
assign input_fmap_56 = input_act_ff[455:448];
logic [7:0] input_fmap_57;
assign input_fmap_57 = input_act_ff[463:456];
logic [7:0] input_fmap_58;
assign input_fmap_58 = input_act_ff[471:464];
logic [7:0] input_fmap_59;
assign input_fmap_59 = input_act_ff[479:472];
logic [7:0] input_fmap_60;
assign input_fmap_60 = input_act_ff[487:480];
logic [7:0] input_fmap_61;
assign input_fmap_61 = input_act_ff[495:488];
logic [7:0] input_fmap_62;
assign input_fmap_62 = input_act_ff[503:496];
logic [7:0] input_fmap_63;
assign input_fmap_63 = input_act_ff[511:504];

logic signed [31:0] conv_mac_0;
assign conv_mac_0 = 
	( 13'sd 3730) * $signed(input_fmap_0[7:0]) +
	( 16'sd 32599) * $signed(input_fmap_1[7:0]) +
	( 16'sd 27487) * $signed(input_fmap_2[7:0]) +
	( 16'sd 22979) * $signed(input_fmap_3[7:0]) +
	( 16'sd 19866) * $signed(input_fmap_4[7:0]) +
	( 16'sd 19309) * $signed(input_fmap_5[7:0]) +
	( 16'sd 16867) * $signed(input_fmap_6[7:0]) +
	( 13'sd 3857) * $signed(input_fmap_7[7:0]) +
	( 15'sd 15626) * $signed(input_fmap_8[7:0]) +
	( 16'sd 24051) * $signed(input_fmap_9[7:0]) +
	( 14'sd 7650) * $signed(input_fmap_10[7:0]) +
	( 16'sd 22998) * $signed(input_fmap_11[7:0]) +
	( 16'sd 17987) * $signed(input_fmap_12[7:0]) +
	( 14'sd 6441) * $signed(input_fmap_13[7:0]) +
	( 16'sd 25273) * $signed(input_fmap_14[7:0]) +
	( 13'sd 2931) * $signed(input_fmap_15[7:0]) +
	( 16'sd 18773) * $signed(input_fmap_16[7:0]) +
	( 16'sd 25760) * $signed(input_fmap_17[7:0]) +
	( 14'sd 6556) * $signed(input_fmap_18[7:0]) +
	( 15'sd 13548) * $signed(input_fmap_19[7:0]) +
	( 11'sd 750) * $signed(input_fmap_20[7:0]) +
	( 16'sd 21697) * $signed(input_fmap_21[7:0]) +
	( 15'sd 10941) * $signed(input_fmap_22[7:0]) +
	( 15'sd 11713) * $signed(input_fmap_23[7:0]) +
	( 14'sd 4287) * $signed(input_fmap_24[7:0]) +
	( 15'sd 14796) * $signed(input_fmap_25[7:0]) +
	( 15'sd 12735) * $signed(input_fmap_26[7:0]) +
	( 15'sd 9536) * $signed(input_fmap_27[7:0]) +
	( 14'sd 7885) * $signed(input_fmap_28[7:0]) +
	( 16'sd 22923) * $signed(input_fmap_29[7:0]) +
	( 16'sd 23954) * $signed(input_fmap_30[7:0]) +
	( 13'sd 3292) * $signed(input_fmap_31[7:0]) +
	( 16'sd 23686) * $signed(input_fmap_32[7:0]) +
	( 16'sd 27554) * $signed(input_fmap_33[7:0]) +
	( 16'sd 31646) * $signed(input_fmap_34[7:0]) +
	( 16'sd 30496) * $signed(input_fmap_35[7:0]) +
	( 16'sd 30265) * $signed(input_fmap_36[7:0]) +
	( 16'sd 21103) * $signed(input_fmap_37[7:0]) +
	( 16'sd 20207) * $signed(input_fmap_38[7:0]) +
	( 15'sd 15058) * $signed(input_fmap_39[7:0]) +
	( 16'sd 21579) * $signed(input_fmap_40[7:0]) +
	( 15'sd 15438) * $signed(input_fmap_41[7:0]) +
	( 16'sd 30851) * $signed(input_fmap_42[7:0]) +
	( 11'sd 666) * $signed(input_fmap_43[7:0]) +
	( 16'sd 27223) * $signed(input_fmap_44[7:0]) +
	( 15'sd 12317) * $signed(input_fmap_45[7:0]) +
	( 16'sd 29774) * $signed(input_fmap_46[7:0]) +
	( 15'sd 13690) * $signed(input_fmap_47[7:0]) +
	( 16'sd 26108) * $signed(input_fmap_48[7:0]) +
	( 16'sd 17880) * $signed(input_fmap_49[7:0]) +
	( 15'sd 14194) * $signed(input_fmap_50[7:0]) +
	( 16'sd 29375) * $signed(input_fmap_51[7:0]) +
	( 15'sd 8462) * $signed(input_fmap_52[7:0]) +
	( 16'sd 17397) * $signed(input_fmap_53[7:0]) +
	( 14'sd 5339) * $signed(input_fmap_54[7:0]) +
	( 9'sd 225) * $signed(input_fmap_55[7:0]) +
	( 15'sd 8310) * $signed(input_fmap_56[7:0]) +
	( 16'sd 27210) * $signed(input_fmap_57[7:0]) +
	( 16'sd 21093) * $signed(input_fmap_58[7:0]) +
	( 16'sd 29795) * $signed(input_fmap_59[7:0]) +
	( 15'sd 9334) * $signed(input_fmap_60[7:0]) +
	( 13'sd 3643) * $signed(input_fmap_61[7:0]) +
	( 16'sd 20280) * $signed(input_fmap_62[7:0]) +
	( 15'sd 15483) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 16'sd 26283) * $signed(input_fmap_0[7:0]) +
	( 16'sd 30717) * $signed(input_fmap_1[7:0]) +
	( 15'sd 11793) * $signed(input_fmap_2[7:0]) +
	( 16'sd 21319) * $signed(input_fmap_3[7:0]) +
	( 16'sd 26732) * $signed(input_fmap_4[7:0]) +
	( 14'sd 6662) * $signed(input_fmap_5[7:0]) +
	( 15'sd 11170) * $signed(input_fmap_6[7:0]) +
	( 16'sd 17633) * $signed(input_fmap_7[7:0]) +
	( 16'sd 21986) * $signed(input_fmap_8[7:0]) +
	( 15'sd 12092) * $signed(input_fmap_9[7:0]) +
	( 15'sd 14553) * $signed(input_fmap_10[7:0]) +
	( 14'sd 7987) * $signed(input_fmap_11[7:0]) +
	( 11'sd 608) * $signed(input_fmap_12[7:0]) +
	( 14'sd 7623) * $signed(input_fmap_13[7:0]) +
	( 16'sd 23296) * $signed(input_fmap_14[7:0]) +
	( 15'sd 8874) * $signed(input_fmap_15[7:0]) +
	( 15'sd 9968) * $signed(input_fmap_16[7:0]) +
	( 15'sd 8654) * $signed(input_fmap_17[7:0]) +
	( 14'sd 6604) * $signed(input_fmap_18[7:0]) +
	( 16'sd 27779) * $signed(input_fmap_19[7:0]) +
	( 14'sd 7217) * $signed(input_fmap_20[7:0]) +
	( 15'sd 12282) * $signed(input_fmap_21[7:0]) +
	( 10'sd 436) * $signed(input_fmap_22[7:0]) +
	( 14'sd 5633) * $signed(input_fmap_23[7:0]) +
	( 12'sd 1383) * $signed(input_fmap_24[7:0]) +
	( 15'sd 9989) * $signed(input_fmap_25[7:0]) +
	( 15'sd 12758) * $signed(input_fmap_26[7:0]) +
	( 16'sd 26971) * $signed(input_fmap_27[7:0]) +
	( 13'sd 2505) * $signed(input_fmap_28[7:0]) +
	( 16'sd 21512) * $signed(input_fmap_29[7:0]) +
	( 12'sd 1090) * $signed(input_fmap_30[7:0]) +
	( 16'sd 24879) * $signed(input_fmap_31[7:0]) +
	( 16'sd 26173) * $signed(input_fmap_32[7:0]) +
	( 15'sd 15259) * $signed(input_fmap_33[7:0]) +
	( 16'sd 24327) * $signed(input_fmap_34[7:0]) +
	( 12'sd 1558) * $signed(input_fmap_35[7:0]) +
	( 10'sd 372) * $signed(input_fmap_36[7:0]) +
	( 12'sd 1339) * $signed(input_fmap_37[7:0]) +
	( 16'sd 23611) * $signed(input_fmap_38[7:0]) +
	( 15'sd 8981) * $signed(input_fmap_39[7:0]) +
	( 12'sd 1596) * $signed(input_fmap_40[7:0]) +
	( 16'sd 18444) * $signed(input_fmap_41[7:0]) +
	( 13'sd 3430) * $signed(input_fmap_42[7:0]) +
	( 15'sd 10453) * $signed(input_fmap_43[7:0]) +
	( 14'sd 6693) * $signed(input_fmap_44[7:0]) +
	( 16'sd 23350) * $signed(input_fmap_45[7:0]) +
	( 14'sd 7513) * $signed(input_fmap_46[7:0]) +
	( 15'sd 12367) * $signed(input_fmap_47[7:0]) +
	( 15'sd 9974) * $signed(input_fmap_48[7:0]) +
	( 16'sd 20054) * $signed(input_fmap_49[7:0]) +
	( 15'sd 13520) * $signed(input_fmap_50[7:0]) +
	( 15'sd 15272) * $signed(input_fmap_51[7:0]) +
	( 16'sd 29138) * $signed(input_fmap_52[7:0]) +
	( 16'sd 30565) * $signed(input_fmap_53[7:0]) +
	( 11'sd 998) * $signed(input_fmap_54[7:0]) +
	( 15'sd 11202) * $signed(input_fmap_55[7:0]) +
	( 16'sd 31336) * $signed(input_fmap_56[7:0]) +
	( 16'sd 23642) * $signed(input_fmap_57[7:0]) +
	( 16'sd 28867) * $signed(input_fmap_58[7:0]) +
	( 16'sd 27975) * $signed(input_fmap_59[7:0]) +
	( 14'sd 5324) * $signed(input_fmap_60[7:0]) +
	( 16'sd 19627) * $signed(input_fmap_61[7:0]) +
	( 16'sd 30546) * $signed(input_fmap_62[7:0]) +
	( 14'sd 8131) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 16'sd 29983) * $signed(input_fmap_0[7:0]) +
	( 16'sd 31926) * $signed(input_fmap_1[7:0]) +
	( 13'sd 2258) * $signed(input_fmap_2[7:0]) +
	( 11'sd 692) * $signed(input_fmap_3[7:0]) +
	( 16'sd 20035) * $signed(input_fmap_4[7:0]) +
	( 15'sd 15673) * $signed(input_fmap_5[7:0]) +
	( 11'sd 720) * $signed(input_fmap_6[7:0]) +
	( 16'sd 16789) * $signed(input_fmap_7[7:0]) +
	( 16'sd 30431) * $signed(input_fmap_8[7:0]) +
	( 14'sd 7607) * $signed(input_fmap_9[7:0]) +
	( 14'sd 4920) * $signed(input_fmap_10[7:0]) +
	( 16'sd 20945) * $signed(input_fmap_11[7:0]) +
	( 15'sd 13204) * $signed(input_fmap_12[7:0]) +
	( 16'sd 32179) * $signed(input_fmap_13[7:0]) +
	( 14'sd 6987) * $signed(input_fmap_14[7:0]) +
	( 15'sd 10411) * $signed(input_fmap_15[7:0]) +
	( 16'sd 22624) * $signed(input_fmap_16[7:0]) +
	( 16'sd 32125) * $signed(input_fmap_17[7:0]) +
	( 16'sd 27613) * $signed(input_fmap_18[7:0]) +
	( 16'sd 30338) * $signed(input_fmap_19[7:0]) +
	( 16'sd 30560) * $signed(input_fmap_20[7:0]) +
	( 16'sd 18702) * $signed(input_fmap_21[7:0]) +
	( 16'sd 20017) * $signed(input_fmap_22[7:0]) +
	( 16'sd 30289) * $signed(input_fmap_23[7:0]) +
	( 16'sd 19959) * $signed(input_fmap_24[7:0]) +
	( 11'sd 1020) * $signed(input_fmap_25[7:0]) +
	( 14'sd 4396) * $signed(input_fmap_26[7:0]) +
	( 14'sd 7789) * $signed(input_fmap_27[7:0]) +
	( 15'sd 14795) * $signed(input_fmap_28[7:0]) +
	( 16'sd 27310) * $signed(input_fmap_29[7:0]) +
	( 15'sd 14094) * $signed(input_fmap_30[7:0]) +
	( 13'sd 3092) * $signed(input_fmap_31[7:0]) +
	( 13'sd 3361) * $signed(input_fmap_32[7:0]) +
	( 16'sd 26585) * $signed(input_fmap_33[7:0]) +
	( 16'sd 20902) * $signed(input_fmap_34[7:0]) +
	( 16'sd 24943) * $signed(input_fmap_35[7:0]) +
	( 16'sd 27942) * $signed(input_fmap_36[7:0]) +
	( 15'sd 13110) * $signed(input_fmap_37[7:0]) +
	( 15'sd 10002) * $signed(input_fmap_38[7:0]) +
	( 15'sd 14877) * $signed(input_fmap_39[7:0]) +
	( 16'sd 27072) * $signed(input_fmap_40[7:0]) +
	( 15'sd 12966) * $signed(input_fmap_41[7:0]) +
	( 16'sd 27762) * $signed(input_fmap_42[7:0]) +
	( 11'sd 660) * $signed(input_fmap_43[7:0]) +
	( 15'sd 12275) * $signed(input_fmap_44[7:0]) +
	( 13'sd 3856) * $signed(input_fmap_45[7:0]) +
	( 15'sd 12725) * $signed(input_fmap_46[7:0]) +
	( 13'sd 2188) * $signed(input_fmap_47[7:0]) +
	( 16'sd 23010) * $signed(input_fmap_48[7:0]) +
	( 15'sd 12108) * $signed(input_fmap_49[7:0]) +
	( 16'sd 18157) * $signed(input_fmap_50[7:0]) +
	( 15'sd 14474) * $signed(input_fmap_51[7:0]) +
	( 14'sd 4465) * $signed(input_fmap_52[7:0]) +
	( 15'sd 8731) * $signed(input_fmap_53[7:0]) +
	( 14'sd 7821) * $signed(input_fmap_54[7:0]) +
	( 16'sd 21801) * $signed(input_fmap_55[7:0]) +
	( 15'sd 13936) * $signed(input_fmap_56[7:0]) +
	( 16'sd 17750) * $signed(input_fmap_57[7:0]) +
	( 13'sd 2965) * $signed(input_fmap_58[7:0]) +
	( 15'sd 8585) * $signed(input_fmap_59[7:0]) +
	( 15'sd 9182) * $signed(input_fmap_60[7:0]) +
	( 16'sd 25541) * $signed(input_fmap_61[7:0]) +
	( 16'sd 16559) * $signed(input_fmap_62[7:0]) +
	( 15'sd 12837) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 15'sd 11439) * $signed(input_fmap_0[7:0]) +
	( 15'sd 14768) * $signed(input_fmap_1[7:0]) +
	( 16'sd 26835) * $signed(input_fmap_2[7:0]) +
	( 16'sd 24451) * $signed(input_fmap_3[7:0]) +
	( 16'sd 25992) * $signed(input_fmap_4[7:0]) +
	( 16'sd 27474) * $signed(input_fmap_5[7:0]) +
	( 16'sd 16769) * $signed(input_fmap_6[7:0]) +
	( 16'sd 29567) * $signed(input_fmap_7[7:0]) +
	( 16'sd 23157) * $signed(input_fmap_8[7:0]) +
	( 12'sd 1854) * $signed(input_fmap_9[7:0]) +
	( 15'sd 9106) * $signed(input_fmap_10[7:0]) +
	( 15'sd 11263) * $signed(input_fmap_11[7:0]) +
	( 14'sd 7802) * $signed(input_fmap_12[7:0]) +
	( 15'sd 10746) * $signed(input_fmap_13[7:0]) +
	( 16'sd 26767) * $signed(input_fmap_14[7:0]) +
	( 15'sd 11532) * $signed(input_fmap_15[7:0]) +
	( 16'sd 18428) * $signed(input_fmap_16[7:0]) +
	( 15'sd 15471) * $signed(input_fmap_17[7:0]) +
	( 15'sd 14373) * $signed(input_fmap_18[7:0]) +
	( 15'sd 10658) * $signed(input_fmap_19[7:0]) +
	( 15'sd 15389) * $signed(input_fmap_20[7:0]) +
	( 15'sd 15510) * $signed(input_fmap_21[7:0]) +
	( 12'sd 1524) * $signed(input_fmap_22[7:0]) +
	( 16'sd 28726) * $signed(input_fmap_23[7:0]) +
	( 16'sd 28727) * $signed(input_fmap_24[7:0]) +
	( 16'sd 31952) * $signed(input_fmap_25[7:0]) +
	( 16'sd 27595) * $signed(input_fmap_26[7:0]) +
	( 15'sd 11451) * $signed(input_fmap_27[7:0]) +
	( 15'sd 14741) * $signed(input_fmap_28[7:0]) +
	( 16'sd 25927) * $signed(input_fmap_29[7:0]) +
	( 16'sd 17466) * $signed(input_fmap_30[7:0]) +
	( 16'sd 21258) * $signed(input_fmap_31[7:0]) +
	( 15'sd 15886) * $signed(input_fmap_32[7:0]) +
	( 16'sd 27192) * $signed(input_fmap_33[7:0]) +
	( 16'sd 27522) * $signed(input_fmap_34[7:0]) +
	( 16'sd 23638) * $signed(input_fmap_35[7:0]) +
	( 16'sd 25906) * $signed(input_fmap_36[7:0]) +
	( 15'sd 8503) * $signed(input_fmap_37[7:0]) +
	( 16'sd 26782) * $signed(input_fmap_38[7:0]) +
	( 16'sd 25542) * $signed(input_fmap_39[7:0]) +
	( 13'sd 3847) * $signed(input_fmap_40[7:0]) +
	( 16'sd 26744) * $signed(input_fmap_41[7:0]) +
	( 15'sd 10937) * $signed(input_fmap_42[7:0]) +
	( 16'sd 19642) * $signed(input_fmap_43[7:0]) +
	( 14'sd 4720) * $signed(input_fmap_44[7:0]) +
	( 16'sd 29997) * $signed(input_fmap_45[7:0]) +
	( 10'sd 298) * $signed(input_fmap_46[7:0]) +
	( 16'sd 25447) * $signed(input_fmap_47[7:0]) +
	( 16'sd 25644) * $signed(input_fmap_48[7:0]) +
	( 15'sd 15484) * $signed(input_fmap_49[7:0]) +
	( 15'sd 15415) * $signed(input_fmap_50[7:0]) +
	( 11'sd 793) * $signed(input_fmap_51[7:0]) +
	( 16'sd 24414) * $signed(input_fmap_52[7:0]) +
	( 15'sd 12957) * $signed(input_fmap_53[7:0]) +
	( 13'sd 2397) * $signed(input_fmap_54[7:0]) +
	( 16'sd 26758) * $signed(input_fmap_55[7:0]) +
	( 16'sd 21748) * $signed(input_fmap_56[7:0]) +
	( 16'sd 17917) * $signed(input_fmap_57[7:0]) +
	( 16'sd 23052) * $signed(input_fmap_58[7:0]) +
	( 16'sd 25163) * $signed(input_fmap_59[7:0]) +
	( 15'sd 12874) * $signed(input_fmap_60[7:0]) +
	( 16'sd 24050) * $signed(input_fmap_61[7:0]) +
	( 16'sd 22040) * $signed(input_fmap_62[7:0]) +
	( 14'sd 7145) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 15'sd 13751) * $signed(input_fmap_0[7:0]) +
	( 15'sd 11615) * $signed(input_fmap_1[7:0]) +
	( 16'sd 29026) * $signed(input_fmap_2[7:0]) +
	( 16'sd 23093) * $signed(input_fmap_3[7:0]) +
	( 16'sd 24081) * $signed(input_fmap_4[7:0]) +
	( 16'sd 24729) * $signed(input_fmap_5[7:0]) +
	( 16'sd 21971) * $signed(input_fmap_6[7:0]) +
	( 15'sd 8352) * $signed(input_fmap_7[7:0]) +
	( 15'sd 14196) * $signed(input_fmap_8[7:0]) +
	( 16'sd 27097) * $signed(input_fmap_9[7:0]) +
	( 14'sd 7150) * $signed(input_fmap_10[7:0]) +
	( 16'sd 17847) * $signed(input_fmap_11[7:0]) +
	( 14'sd 5522) * $signed(input_fmap_12[7:0]) +
	( 16'sd 21932) * $signed(input_fmap_13[7:0]) +
	( 14'sd 4194) * $signed(input_fmap_14[7:0]) +
	( 15'sd 9852) * $signed(input_fmap_15[7:0]) +
	( 16'sd 20790) * $signed(input_fmap_16[7:0]) +
	( 16'sd 22215) * $signed(input_fmap_17[7:0]) +
	( 16'sd 17235) * $signed(input_fmap_18[7:0]) +
	( 16'sd 26464) * $signed(input_fmap_19[7:0]) +
	( 16'sd 25429) * $signed(input_fmap_20[7:0]) +
	( 14'sd 8104) * $signed(input_fmap_21[7:0]) +
	( 15'sd 12834) * $signed(input_fmap_22[7:0]) +
	( 15'sd 15023) * $signed(input_fmap_23[7:0]) +
	( 16'sd 27143) * $signed(input_fmap_24[7:0]) +
	( 16'sd 27057) * $signed(input_fmap_25[7:0]) +
	( 13'sd 2384) * $signed(input_fmap_26[7:0]) +
	( 14'sd 6323) * $signed(input_fmap_27[7:0]) +
	( 16'sd 27885) * $signed(input_fmap_28[7:0]) +
	( 13'sd 3247) * $signed(input_fmap_29[7:0]) +
	( 16'sd 25496) * $signed(input_fmap_30[7:0]) +
	( 11'sd 754) * $signed(input_fmap_31[7:0]) +
	( 15'sd 8471) * $signed(input_fmap_32[7:0]) +
	( 15'sd 14655) * $signed(input_fmap_33[7:0]) +
	( 14'sd 7187) * $signed(input_fmap_34[7:0]) +
	( 14'sd 7205) * $signed(input_fmap_35[7:0]) +
	( 15'sd 15277) * $signed(input_fmap_36[7:0]) +
	( 14'sd 7261) * $signed(input_fmap_37[7:0]) +
	( 12'sd 1208) * $signed(input_fmap_38[7:0]) +
	( 16'sd 24217) * $signed(input_fmap_39[7:0]) +
	( 15'sd 9164) * $signed(input_fmap_40[7:0]) +
	( 16'sd 17313) * $signed(input_fmap_41[7:0]) +
	( 16'sd 18330) * $signed(input_fmap_42[7:0]) +
	( 15'sd 13403) * $signed(input_fmap_43[7:0]) +
	( 16'sd 20032) * $signed(input_fmap_44[7:0]) +
	( 16'sd 22370) * $signed(input_fmap_45[7:0]) +
	( 16'sd 29551) * $signed(input_fmap_46[7:0]) +
	( 13'sd 3231) * $signed(input_fmap_47[7:0]) +
	( 14'sd 5780) * $signed(input_fmap_48[7:0]) +
	( 15'sd 13039) * $signed(input_fmap_49[7:0]) +
	( 16'sd 25884) * $signed(input_fmap_50[7:0]) +
	( 15'sd 10197) * $signed(input_fmap_51[7:0]) +
	( 13'sd 4045) * $signed(input_fmap_52[7:0]) +
	( 16'sd 16943) * $signed(input_fmap_53[7:0]) +
	( 16'sd 21262) * $signed(input_fmap_54[7:0]) +
	( 14'sd 7073) * $signed(input_fmap_55[7:0]) +
	( 16'sd 22984) * $signed(input_fmap_56[7:0]) +
	( 16'sd 29031) * $signed(input_fmap_57[7:0]) +
	( 14'sd 5365) * $signed(input_fmap_58[7:0]) +
	( 16'sd 28399) * $signed(input_fmap_59[7:0]) +
	( 14'sd 7651) * $signed(input_fmap_60[7:0]) +
	( 16'sd 17733) * $signed(input_fmap_61[7:0]) +
	( 16'sd 24693) * $signed(input_fmap_62[7:0]) +
	( 16'sd 22264) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 16'sd 22466) * $signed(input_fmap_0[7:0]) +
	( 15'sd 13613) * $signed(input_fmap_1[7:0]) +
	( 15'sd 16175) * $signed(input_fmap_2[7:0]) +
	( 16'sd 26459) * $signed(input_fmap_3[7:0]) +
	( 16'sd 32447) * $signed(input_fmap_4[7:0]) +
	( 15'sd 10048) * $signed(input_fmap_5[7:0]) +
	( 15'sd 8594) * $signed(input_fmap_6[7:0]) +
	( 16'sd 30789) * $signed(input_fmap_7[7:0]) +
	( 15'sd 12418) * $signed(input_fmap_8[7:0]) +
	( 16'sd 32237) * $signed(input_fmap_9[7:0]) +
	( 15'sd 14282) * $signed(input_fmap_10[7:0]) +
	( 15'sd 13864) * $signed(input_fmap_11[7:0]) +
	( 16'sd 32668) * $signed(input_fmap_12[7:0]) +
	( 15'sd 11180) * $signed(input_fmap_13[7:0]) +
	( 16'sd 20675) * $signed(input_fmap_14[7:0]) +
	( 15'sd 9828) * $signed(input_fmap_15[7:0]) +
	( 16'sd 32653) * $signed(input_fmap_16[7:0]) +
	( 9'sd 233) * $signed(input_fmap_17[7:0]) +
	( 16'sd 27336) * $signed(input_fmap_18[7:0]) +
	( 15'sd 9909) * $signed(input_fmap_19[7:0]) +
	( 13'sd 3026) * $signed(input_fmap_20[7:0]) +
	( 14'sd 5001) * $signed(input_fmap_21[7:0]) +
	( 13'sd 2663) * $signed(input_fmap_22[7:0]) +
	( 16'sd 24296) * $signed(input_fmap_23[7:0]) +
	( 12'sd 1375) * $signed(input_fmap_24[7:0]) +
	( 15'sd 16248) * $signed(input_fmap_25[7:0]) +
	( 14'sd 6588) * $signed(input_fmap_26[7:0]) +
	( 16'sd 19518) * $signed(input_fmap_27[7:0]) +
	( 15'sd 13356) * $signed(input_fmap_28[7:0]) +
	( 16'sd 17400) * $signed(input_fmap_29[7:0]) +
	( 15'sd 11666) * $signed(input_fmap_30[7:0]) +
	( 14'sd 7716) * $signed(input_fmap_31[7:0]) +
	( 12'sd 1883) * $signed(input_fmap_32[7:0]) +
	( 16'sd 25498) * $signed(input_fmap_33[7:0]) +
	( 16'sd 24445) * $signed(input_fmap_34[7:0]) +
	( 16'sd 20900) * $signed(input_fmap_35[7:0]) +
	( 15'sd 11429) * $signed(input_fmap_36[7:0]) +
	( 16'sd 22647) * $signed(input_fmap_37[7:0]) +
	( 15'sd 13528) * $signed(input_fmap_38[7:0]) +
	( 16'sd 20998) * $signed(input_fmap_39[7:0]) +
	( 16'sd 19364) * $signed(input_fmap_40[7:0]) +
	( 16'sd 21598) * $signed(input_fmap_41[7:0]) +
	( 15'sd 14865) * $signed(input_fmap_42[7:0]) +
	( 16'sd 19191) * $signed(input_fmap_43[7:0]) +
	( 10'sd 424) * $signed(input_fmap_44[7:0]) +
	( 15'sd 15134) * $signed(input_fmap_45[7:0]) +
	( 16'sd 25229) * $signed(input_fmap_46[7:0]) +
	( 15'sd 11447) * $signed(input_fmap_47[7:0]) +
	( 12'sd 1767) * $signed(input_fmap_48[7:0]) +
	( 15'sd 11572) * $signed(input_fmap_49[7:0]) +
	( 14'sd 5910) * $signed(input_fmap_50[7:0]) +
	( 16'sd 18123) * $signed(input_fmap_51[7:0]) +
	( 15'sd 14022) * $signed(input_fmap_52[7:0]) +
	( 16'sd 29604) * $signed(input_fmap_53[7:0]) +
	( 16'sd 24146) * $signed(input_fmap_54[7:0]) +
	( 15'sd 13117) * $signed(input_fmap_55[7:0]) +
	( 16'sd 25846) * $signed(input_fmap_56[7:0]) +
	( 16'sd 24897) * $signed(input_fmap_57[7:0]) +
	( 16'sd 28737) * $signed(input_fmap_58[7:0]) +
	( 13'sd 3515) * $signed(input_fmap_59[7:0]) +
	( 16'sd 30427) * $signed(input_fmap_60[7:0]) +
	( 16'sd 16395) * $signed(input_fmap_61[7:0]) +
	( 16'sd 24757) * $signed(input_fmap_62[7:0]) +
	( 15'sd 9605) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 15'sd 12050) * $signed(input_fmap_0[7:0]) +
	( 16'sd 23314) * $signed(input_fmap_1[7:0]) +
	( 14'sd 8169) * $signed(input_fmap_2[7:0]) +
	( 14'sd 6444) * $signed(input_fmap_3[7:0]) +
	( 15'sd 8330) * $signed(input_fmap_4[7:0]) +
	( 16'sd 24520) * $signed(input_fmap_5[7:0]) +
	( 16'sd 23637) * $signed(input_fmap_6[7:0]) +
	( 16'sd 30914) * $signed(input_fmap_7[7:0]) +
	( 14'sd 4335) * $signed(input_fmap_8[7:0]) +
	( 15'sd 14883) * $signed(input_fmap_9[7:0]) +
	( 15'sd 9332) * $signed(input_fmap_10[7:0]) +
	( 14'sd 7859) * $signed(input_fmap_11[7:0]) +
	( 16'sd 18188) * $signed(input_fmap_12[7:0]) +
	( 16'sd 26867) * $signed(input_fmap_13[7:0]) +
	( 16'sd 32495) * $signed(input_fmap_14[7:0]) +
	( 15'sd 9392) * $signed(input_fmap_15[7:0]) +
	( 16'sd 27548) * $signed(input_fmap_16[7:0]) +
	( 16'sd 29914) * $signed(input_fmap_17[7:0]) +
	( 15'sd 11364) * $signed(input_fmap_18[7:0]) +
	( 16'sd 30542) * $signed(input_fmap_19[7:0]) +
	( 15'sd 10650) * $signed(input_fmap_20[7:0]) +
	( 16'sd 29838) * $signed(input_fmap_21[7:0]) +
	( 15'sd 12363) * $signed(input_fmap_22[7:0]) +
	( 16'sd 29190) * $signed(input_fmap_23[7:0]) +
	( 16'sd 16488) * $signed(input_fmap_24[7:0]) +
	( 15'sd 15557) * $signed(input_fmap_25[7:0]) +
	( 16'sd 26714) * $signed(input_fmap_26[7:0]) +
	( 16'sd 26500) * $signed(input_fmap_27[7:0]) +
	( 14'sd 4245) * $signed(input_fmap_28[7:0]) +
	( 15'sd 13989) * $signed(input_fmap_29[7:0]) +
	( 13'sd 3000) * $signed(input_fmap_30[7:0]) +
	( 15'sd 11239) * $signed(input_fmap_31[7:0]) +
	( 16'sd 25178) * $signed(input_fmap_32[7:0]) +
	( 12'sd 2037) * $signed(input_fmap_33[7:0]) +
	( 15'sd 10548) * $signed(input_fmap_34[7:0]) +
	( 16'sd 27315) * $signed(input_fmap_35[7:0]) +
	( 16'sd 20034) * $signed(input_fmap_36[7:0]) +
	( 16'sd 27521) * $signed(input_fmap_37[7:0]) +
	( 16'sd 28082) * $signed(input_fmap_38[7:0]) +
	( 15'sd 13096) * $signed(input_fmap_39[7:0]) +
	( 14'sd 5987) * $signed(input_fmap_40[7:0]) +
	( 16'sd 26722) * $signed(input_fmap_41[7:0]) +
	( 14'sd 4163) * $signed(input_fmap_42[7:0]) +
	( 15'sd 11940) * $signed(input_fmap_43[7:0]) +
	( 12'sd 1958) * $signed(input_fmap_44[7:0]) +
	( 16'sd 27384) * $signed(input_fmap_45[7:0]) +
	( 15'sd 16046) * $signed(input_fmap_46[7:0]) +
	( 15'sd 15478) * $signed(input_fmap_47[7:0]) +
	( 14'sd 6407) * $signed(input_fmap_48[7:0]) +
	( 15'sd 11567) * $signed(input_fmap_49[7:0]) +
	( 16'sd 19482) * $signed(input_fmap_50[7:0]) +
	( 16'sd 23410) * $signed(input_fmap_51[7:0]) +
	( 16'sd 17754) * $signed(input_fmap_52[7:0]) +
	( 13'sd 4057) * $signed(input_fmap_53[7:0]) +
	( 15'sd 14586) * $signed(input_fmap_54[7:0]) +
	( 16'sd 22848) * $signed(input_fmap_55[7:0]) +
	( 16'sd 17403) * $signed(input_fmap_56[7:0]) +
	( 16'sd 28716) * $signed(input_fmap_57[7:0]) +
	( 16'sd 28271) * $signed(input_fmap_58[7:0]) +
	( 16'sd 32256) * $signed(input_fmap_59[7:0]) +
	( 16'sd 28917) * $signed(input_fmap_60[7:0]) +
	( 16'sd 20034) * $signed(input_fmap_61[7:0]) +
	( 15'sd 14211) * $signed(input_fmap_62[7:0]) +
	( 14'sd 7411) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 14'sd 6669) * $signed(input_fmap_0[7:0]) +
	( 16'sd 21783) * $signed(input_fmap_1[7:0]) +
	( 15'sd 8203) * $signed(input_fmap_2[7:0]) +
	( 11'sd 792) * $signed(input_fmap_3[7:0]) +
	( 16'sd 28544) * $signed(input_fmap_4[7:0]) +
	( 15'sd 13711) * $signed(input_fmap_5[7:0]) +
	( 14'sd 4699) * $signed(input_fmap_6[7:0]) +
	( 15'sd 15390) * $signed(input_fmap_7[7:0]) +
	( 15'sd 10683) * $signed(input_fmap_8[7:0]) +
	( 14'sd 4672) * $signed(input_fmap_9[7:0]) +
	( 16'sd 26125) * $signed(input_fmap_10[7:0]) +
	( 13'sd 3944) * $signed(input_fmap_11[7:0]) +
	( 16'sd 19244) * $signed(input_fmap_12[7:0]) +
	( 15'sd 14310) * $signed(input_fmap_13[7:0]) +
	( 16'sd 19786) * $signed(input_fmap_14[7:0]) +
	( 16'sd 18637) * $signed(input_fmap_15[7:0]) +
	( 16'sd 24862) * $signed(input_fmap_16[7:0]) +
	( 16'sd 26817) * $signed(input_fmap_17[7:0]) +
	( 15'sd 9684) * $signed(input_fmap_18[7:0]) +
	( 16'sd 17210) * $signed(input_fmap_19[7:0]) +
	( 15'sd 9949) * $signed(input_fmap_20[7:0]) +
	( 14'sd 6951) * $signed(input_fmap_21[7:0]) +
	( 16'sd 19911) * $signed(input_fmap_22[7:0]) +
	( 15'sd 8926) * $signed(input_fmap_23[7:0]) +
	( 16'sd 22316) * $signed(input_fmap_24[7:0]) +
	( 16'sd 23917) * $signed(input_fmap_25[7:0]) +
	( 16'sd 30121) * $signed(input_fmap_26[7:0]) +
	( 16'sd 23755) * $signed(input_fmap_27[7:0]) +
	( 16'sd 27228) * $signed(input_fmap_28[7:0]) +
	( 16'sd 16482) * $signed(input_fmap_29[7:0]) +
	( 16'sd 19123) * $signed(input_fmap_30[7:0]) +
	( 15'sd 15581) * $signed(input_fmap_31[7:0]) +
	( 16'sd 32590) * $signed(input_fmap_32[7:0]) +
	( 14'sd 6970) * $signed(input_fmap_33[7:0]) +
	( 16'sd 23483) * $signed(input_fmap_34[7:0]) +
	( 16'sd 28780) * $signed(input_fmap_35[7:0]) +
	( 16'sd 28886) * $signed(input_fmap_36[7:0]) +
	( 16'sd 31920) * $signed(input_fmap_37[7:0]) +
	( 15'sd 8381) * $signed(input_fmap_38[7:0]) +
	( 16'sd 21470) * $signed(input_fmap_39[7:0]) +
	( 16'sd 25604) * $signed(input_fmap_40[7:0]) +
	( 16'sd 29871) * $signed(input_fmap_41[7:0]) +
	( 16'sd 18678) * $signed(input_fmap_42[7:0]) +
	( 16'sd 29231) * $signed(input_fmap_43[7:0]) +
	( 16'sd 23389) * $signed(input_fmap_44[7:0]) +
	( 16'sd 24846) * $signed(input_fmap_45[7:0]) +
	( 16'sd 24046) * $signed(input_fmap_46[7:0]) +
	( 16'sd 20050) * $signed(input_fmap_47[7:0]) +
	( 10'sd 470) * $signed(input_fmap_48[7:0]) +
	( 16'sd 16425) * $signed(input_fmap_49[7:0]) +
	( 16'sd 22472) * $signed(input_fmap_50[7:0]) +
	( 15'sd 14123) * $signed(input_fmap_51[7:0]) +
	( 15'sd 13141) * $signed(input_fmap_52[7:0]) +
	( 15'sd 10782) * $signed(input_fmap_53[7:0]) +
	( 15'sd 13829) * $signed(input_fmap_54[7:0]) +
	( 15'sd 16045) * $signed(input_fmap_55[7:0]) +
	( 15'sd 11044) * $signed(input_fmap_56[7:0]) +
	( 16'sd 27225) * $signed(input_fmap_57[7:0]) +
	( 16'sd 30673) * $signed(input_fmap_58[7:0]) +
	( 14'sd 6444) * $signed(input_fmap_59[7:0]) +
	( 16'sd 17303) * $signed(input_fmap_60[7:0]) +
	( 16'sd 22280) * $signed(input_fmap_61[7:0]) +
	( 16'sd 29815) * $signed(input_fmap_62[7:0]) +
	( 16'sd 16934) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_8;
assign conv_mac_8 = 
	( 13'sd 2572) * $signed(input_fmap_0[7:0]) +
	( 16'sd 28319) * $signed(input_fmap_1[7:0]) +
	( 16'sd 26442) * $signed(input_fmap_2[7:0]) +
	( 8'sd 124) * $signed(input_fmap_3[7:0]) +
	( 15'sd 8761) * $signed(input_fmap_4[7:0]) +
	( 11'sd 906) * $signed(input_fmap_5[7:0]) +
	( 16'sd 28613) * $signed(input_fmap_6[7:0]) +
	( 11'sd 933) * $signed(input_fmap_7[7:0]) +
	( 16'sd 26351) * $signed(input_fmap_8[7:0]) +
	( 15'sd 13173) * $signed(input_fmap_9[7:0]) +
	( 13'sd 2731) * $signed(input_fmap_10[7:0]) +
	( 14'sd 7025) * $signed(input_fmap_11[7:0]) +
	( 15'sd 16088) * $signed(input_fmap_12[7:0]) +
	( 16'sd 17320) * $signed(input_fmap_13[7:0]) +
	( 16'sd 17136) * $signed(input_fmap_14[7:0]) +
	( 15'sd 14476) * $signed(input_fmap_15[7:0]) +
	( 10'sd 350) * $signed(input_fmap_16[7:0]) +
	( 15'sd 10266) * $signed(input_fmap_17[7:0]) +
	( 16'sd 26324) * $signed(input_fmap_18[7:0]) +
	( 14'sd 7231) * $signed(input_fmap_19[7:0]) +
	( 14'sd 7280) * $signed(input_fmap_20[7:0]) +
	( 11'sd 553) * $signed(input_fmap_21[7:0]) +
	( 15'sd 13967) * $signed(input_fmap_22[7:0]) +
	( 13'sd 2259) * $signed(input_fmap_23[7:0]) +
	( 15'sd 15239) * $signed(input_fmap_24[7:0]) +
	( 16'sd 32753) * $signed(input_fmap_25[7:0]) +
	( 14'sd 4596) * $signed(input_fmap_26[7:0]) +
	( 15'sd 9039) * $signed(input_fmap_27[7:0]) +
	( 15'sd 10344) * $signed(input_fmap_28[7:0]) +
	( 16'sd 30264) * $signed(input_fmap_29[7:0]) +
	( 15'sd 15456) * $signed(input_fmap_30[7:0]) +
	( 15'sd 9224) * $signed(input_fmap_31[7:0]) +
	( 16'sd 29117) * $signed(input_fmap_32[7:0]) +
	( 16'sd 22264) * $signed(input_fmap_33[7:0]) +
	( 16'sd 20439) * $signed(input_fmap_34[7:0]) +
	( 14'sd 6363) * $signed(input_fmap_35[7:0]) +
	( 16'sd 31923) * $signed(input_fmap_36[7:0]) +
	( 16'sd 24929) * $signed(input_fmap_37[7:0]) +
	( 16'sd 30830) * $signed(input_fmap_38[7:0]) +
	( 14'sd 7282) * $signed(input_fmap_39[7:0]) +
	( 12'sd 1358) * $signed(input_fmap_40[7:0]) +
	( 15'sd 8942) * $signed(input_fmap_41[7:0]) +
	( 14'sd 7457) * $signed(input_fmap_42[7:0]) +
	( 13'sd 2068) * $signed(input_fmap_43[7:0]) +
	( 10'sd 357) * $signed(input_fmap_44[7:0]) +
	( 16'sd 27968) * $signed(input_fmap_45[7:0]) +
	( 16'sd 31132) * $signed(input_fmap_46[7:0]) +
	( 14'sd 7736) * $signed(input_fmap_47[7:0]) +
	( 13'sd 2263) * $signed(input_fmap_48[7:0]) +
	( 16'sd 29782) * $signed(input_fmap_49[7:0]) +
	( 15'sd 12120) * $signed(input_fmap_50[7:0]) +
	( 14'sd 7251) * $signed(input_fmap_51[7:0]) +
	( 14'sd 7544) * $signed(input_fmap_52[7:0]) +
	( 13'sd 2389) * $signed(input_fmap_53[7:0]) +
	( 14'sd 5985) * $signed(input_fmap_54[7:0]) +
	( 16'sd 29061) * $signed(input_fmap_55[7:0]) +
	( 13'sd 2882) * $signed(input_fmap_56[7:0]) +
	( 12'sd 1829) * $signed(input_fmap_57[7:0]) +
	( 16'sd 17100) * $signed(input_fmap_58[7:0]) +
	( 16'sd 19832) * $signed(input_fmap_59[7:0]) +
	( 16'sd 26615) * $signed(input_fmap_60[7:0]) +
	( 16'sd 24953) * $signed(input_fmap_61[7:0]) +
	( 12'sd 1706) * $signed(input_fmap_62[7:0]) +
	( 14'sd 5669) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_9;
assign conv_mac_9 = 
	( 14'sd 5035) * $signed(input_fmap_0[7:0]) +
	( 16'sd 17650) * $signed(input_fmap_1[7:0]) +
	( 14'sd 7755) * $signed(input_fmap_2[7:0]) +
	( 16'sd 17119) * $signed(input_fmap_3[7:0]) +
	( 16'sd 24868) * $signed(input_fmap_4[7:0]) +
	( 16'sd 17386) * $signed(input_fmap_5[7:0]) +
	( 16'sd 28952) * $signed(input_fmap_6[7:0]) +
	( 13'sd 2154) * $signed(input_fmap_7[7:0]) +
	( 13'sd 3604) * $signed(input_fmap_8[7:0]) +
	( 15'sd 8418) * $signed(input_fmap_9[7:0]) +
	( 15'sd 9901) * $signed(input_fmap_10[7:0]) +
	( 15'sd 12383) * $signed(input_fmap_11[7:0]) +
	( 14'sd 4139) * $signed(input_fmap_12[7:0]) +
	( 15'sd 10411) * $signed(input_fmap_13[7:0]) +
	( 16'sd 21304) * $signed(input_fmap_14[7:0]) +
	( 15'sd 9344) * $signed(input_fmap_15[7:0]) +
	( 16'sd 24249) * $signed(input_fmap_16[7:0]) +
	( 14'sd 5667) * $signed(input_fmap_17[7:0]) +
	( 16'sd 31658) * $signed(input_fmap_18[7:0]) +
	( 16'sd 27353) * $signed(input_fmap_19[7:0]) +
	( 16'sd 20191) * $signed(input_fmap_20[7:0]) +
	( 15'sd 10941) * $signed(input_fmap_21[7:0]) +
	( 15'sd 10117) * $signed(input_fmap_22[7:0]) +
	( 16'sd 18426) * $signed(input_fmap_23[7:0]) +
	( 16'sd 18306) * $signed(input_fmap_24[7:0]) +
	( 16'sd 18757) * $signed(input_fmap_25[7:0]) +
	( 15'sd 13167) * $signed(input_fmap_26[7:0]) +
	( 16'sd 25786) * $signed(input_fmap_27[7:0]) +
	( 14'sd 5748) * $signed(input_fmap_28[7:0]) +
	( 16'sd 23612) * $signed(input_fmap_29[7:0]) +
	( 16'sd 30341) * $signed(input_fmap_30[7:0]) +
	( 15'sd 15372) * $signed(input_fmap_31[7:0]) +
	( 15'sd 8641) * $signed(input_fmap_32[7:0]) +
	( 16'sd 22222) * $signed(input_fmap_33[7:0]) +
	( 14'sd 7465) * $signed(input_fmap_34[7:0]) +
	( 16'sd 28249) * $signed(input_fmap_35[7:0]) +
	( 14'sd 4998) * $signed(input_fmap_36[7:0]) +
	( 16'sd 18056) * $signed(input_fmap_37[7:0]) +
	( 16'sd 31018) * $signed(input_fmap_38[7:0]) +
	( 16'sd 16704) * $signed(input_fmap_39[7:0]) +
	( 16'sd 30472) * $signed(input_fmap_40[7:0]) +
	( 16'sd 19790) * $signed(input_fmap_41[7:0]) +
	( 16'sd 32578) * $signed(input_fmap_42[7:0]) +
	( 14'sd 5979) * $signed(input_fmap_43[7:0]) +
	( 16'sd 19426) * $signed(input_fmap_44[7:0]) +
	( 16'sd 19899) * $signed(input_fmap_45[7:0]) +
	( 15'sd 10161) * $signed(input_fmap_46[7:0]) +
	( 16'sd 19628) * $signed(input_fmap_47[7:0]) +
	( 15'sd 10419) * $signed(input_fmap_48[7:0]) +
	( 16'sd 32659) * $signed(input_fmap_49[7:0]) +
	( 16'sd 22950) * $signed(input_fmap_50[7:0]) +
	( 15'sd 11094) * $signed(input_fmap_51[7:0]) +
	( 16'sd 24943) * $signed(input_fmap_52[7:0]) +
	( 14'sd 4975) * $signed(input_fmap_53[7:0]) +
	( 15'sd 15090) * $signed(input_fmap_54[7:0]) +
	( 16'sd 17965) * $signed(input_fmap_55[7:0]) +
	( 16'sd 32519) * $signed(input_fmap_56[7:0]) +
	( 16'sd 27833) * $signed(input_fmap_57[7:0]) +
	( 11'sd 950) * $signed(input_fmap_58[7:0]) +
	( 15'sd 10587) * $signed(input_fmap_59[7:0]) +
	( 16'sd 30577) * $signed(input_fmap_60[7:0]) +
	( 16'sd 21006) * $signed(input_fmap_61[7:0]) +
	( 16'sd 26097) * $signed(input_fmap_62[7:0]) +
	( 16'sd 20631) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_10;
assign conv_mac_10 = 
	( 14'sd 7748) * $signed(input_fmap_0[7:0]) +
	( 16'sd 20631) * $signed(input_fmap_1[7:0]) +
	( 16'sd 25362) * $signed(input_fmap_2[7:0]) +
	( 12'sd 1128) * $signed(input_fmap_3[7:0]) +
	( 16'sd 24212) * $signed(input_fmap_4[7:0]) +
	( 13'sd 3783) * $signed(input_fmap_5[7:0]) +
	( 16'sd 17899) * $signed(input_fmap_6[7:0]) +
	( 16'sd 23583) * $signed(input_fmap_7[7:0]) +
	( 16'sd 21629) * $signed(input_fmap_8[7:0]) +
	( 16'sd 23538) * $signed(input_fmap_9[7:0]) +
	( 14'sd 5308) * $signed(input_fmap_10[7:0]) +
	( 16'sd 25355) * $signed(input_fmap_11[7:0]) +
	( 16'sd 29344) * $signed(input_fmap_12[7:0]) +
	( 16'sd 20934) * $signed(input_fmap_13[7:0]) +
	( 16'sd 18557) * $signed(input_fmap_14[7:0]) +
	( 14'sd 5892) * $signed(input_fmap_15[7:0]) +
	( 16'sd 18036) * $signed(input_fmap_16[7:0]) +
	( 15'sd 11876) * $signed(input_fmap_17[7:0]) +
	( 16'sd 23475) * $signed(input_fmap_18[7:0]) +
	( 16'sd 20675) * $signed(input_fmap_19[7:0]) +
	( 16'sd 21154) * $signed(input_fmap_20[7:0]) +
	( 13'sd 3098) * $signed(input_fmap_21[7:0]) +
	( 14'sd 6606) * $signed(input_fmap_22[7:0]) +
	( 15'sd 13862) * $signed(input_fmap_23[7:0]) +
	( 15'sd 15150) * $signed(input_fmap_24[7:0]) +
	( 15'sd 13256) * $signed(input_fmap_25[7:0]) +
	( 15'sd 13186) * $signed(input_fmap_26[7:0]) +
	( 14'sd 5130) * $signed(input_fmap_27[7:0]) +
	( 16'sd 27154) * $signed(input_fmap_28[7:0]) +
	( 16'sd 24574) * $signed(input_fmap_29[7:0]) +
	( 16'sd 29578) * $signed(input_fmap_30[7:0]) +
	( 14'sd 6202) * $signed(input_fmap_31[7:0]) +
	( 16'sd 29707) * $signed(input_fmap_32[7:0]) +
	( 14'sd 7987) * $signed(input_fmap_33[7:0]) +
	( 16'sd 30264) * $signed(input_fmap_34[7:0]) +
	( 16'sd 31483) * $signed(input_fmap_35[7:0]) +
	( 16'sd 17823) * $signed(input_fmap_36[7:0]) +
	( 16'sd 23540) * $signed(input_fmap_37[7:0]) +
	( 16'sd 26326) * $signed(input_fmap_38[7:0]) +
	( 16'sd 22241) * $signed(input_fmap_39[7:0]) +
	( 16'sd 32597) * $signed(input_fmap_40[7:0]) +
	( 12'sd 1454) * $signed(input_fmap_41[7:0]) +
	( 14'sd 5494) * $signed(input_fmap_42[7:0]) +
	( 14'sd 5895) * $signed(input_fmap_43[7:0]) +
	( 15'sd 14103) * $signed(input_fmap_44[7:0]) +
	( 15'sd 14405) * $signed(input_fmap_45[7:0]) +
	( 16'sd 19841) * $signed(input_fmap_46[7:0]) +
	( 11'sd 522) * $signed(input_fmap_47[7:0]) +
	( 16'sd 18459) * $signed(input_fmap_48[7:0]) +
	( 14'sd 7003) * $signed(input_fmap_49[7:0]) +
	( 13'sd 2999) * $signed(input_fmap_50[7:0]) +
	( 12'sd 1199) * $signed(input_fmap_51[7:0]) +
	( 16'sd 21109) * $signed(input_fmap_52[7:0]) +
	( 15'sd 14047) * $signed(input_fmap_53[7:0]) +
	( 11'sd 1013) * $signed(input_fmap_54[7:0]) +
	( 16'sd 25663) * $signed(input_fmap_55[7:0]) +
	( 16'sd 26789) * $signed(input_fmap_56[7:0]) +
	( 16'sd 23618) * $signed(input_fmap_57[7:0]) +
	( 16'sd 21917) * $signed(input_fmap_58[7:0]) +
	( 15'sd 12641) * $signed(input_fmap_59[7:0]) +
	( 16'sd 25679) * $signed(input_fmap_60[7:0]) +
	( 14'sd 7815) * $signed(input_fmap_61[7:0]) +
	( 10'sd 344) * $signed(input_fmap_62[7:0]) +
	( 14'sd 8006) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_11;
assign conv_mac_11 = 
	( 14'sd 5094) * $signed(input_fmap_0[7:0]) +
	( 12'sd 1277) * $signed(input_fmap_1[7:0]) +
	( 13'sd 2474) * $signed(input_fmap_2[7:0]) +
	( 16'sd 27218) * $signed(input_fmap_3[7:0]) +
	( 15'sd 9661) * $signed(input_fmap_4[7:0]) +
	( 15'sd 13986) * $signed(input_fmap_5[7:0]) +
	( 14'sd 5453) * $signed(input_fmap_6[7:0]) +
	( 16'sd 26118) * $signed(input_fmap_7[7:0]) +
	( 16'sd 20701) * $signed(input_fmap_8[7:0]) +
	( 15'sd 13864) * $signed(input_fmap_9[7:0]) +
	( 12'sd 1604) * $signed(input_fmap_10[7:0]) +
	( 16'sd 28518) * $signed(input_fmap_11[7:0]) +
	( 16'sd 27206) * $signed(input_fmap_12[7:0]) +
	( 16'sd 29440) * $signed(input_fmap_13[7:0]) +
	( 16'sd 17297) * $signed(input_fmap_14[7:0]) +
	( 16'sd 29385) * $signed(input_fmap_15[7:0]) +
	( 16'sd 25748) * $signed(input_fmap_16[7:0]) +
	( 15'sd 13735) * $signed(input_fmap_17[7:0]) +
	( 16'sd 27564) * $signed(input_fmap_18[7:0]) +
	( 16'sd 19068) * $signed(input_fmap_19[7:0]) +
	( 12'sd 1100) * $signed(input_fmap_20[7:0]) +
	( 16'sd 32329) * $signed(input_fmap_21[7:0]) +
	( 16'sd 19499) * $signed(input_fmap_22[7:0]) +
	( 13'sd 3110) * $signed(input_fmap_23[7:0]) +
	( 13'sd 2133) * $signed(input_fmap_24[7:0]) +
	( 9'sd 190) * $signed(input_fmap_25[7:0]) +
	( 16'sd 27167) * $signed(input_fmap_26[7:0]) +
	( 14'sd 4159) * $signed(input_fmap_27[7:0]) +
	( 16'sd 16972) * $signed(input_fmap_28[7:0]) +
	( 16'sd 18566) * $signed(input_fmap_29[7:0]) +
	( 16'sd 19427) * $signed(input_fmap_30[7:0]) +
	( 16'sd 26491) * $signed(input_fmap_31[7:0]) +
	( 16'sd 24458) * $signed(input_fmap_32[7:0]) +
	( 12'sd 1875) * $signed(input_fmap_33[7:0]) +
	( 16'sd 27394) * $signed(input_fmap_34[7:0]) +
	( 15'sd 10618) * $signed(input_fmap_35[7:0]) +
	( 14'sd 5168) * $signed(input_fmap_36[7:0]) +
	( 14'sd 5508) * $signed(input_fmap_37[7:0]) +
	( 15'sd 14218) * $signed(input_fmap_38[7:0]) +
	( 16'sd 26745) * $signed(input_fmap_39[7:0]) +
	( 15'sd 10538) * $signed(input_fmap_40[7:0]) +
	( 16'sd 22826) * $signed(input_fmap_41[7:0]) +
	( 14'sd 6146) * $signed(input_fmap_42[7:0]) +
	( 16'sd 26946) * $signed(input_fmap_43[7:0]) +
	( 15'sd 15035) * $signed(input_fmap_44[7:0]) +
	( 16'sd 23899) * $signed(input_fmap_45[7:0]) +
	( 16'sd 25603) * $signed(input_fmap_46[7:0]) +
	( 16'sd 24738) * $signed(input_fmap_47[7:0]) +
	( 16'sd 32017) * $signed(input_fmap_48[7:0]) +
	( 15'sd 11102) * $signed(input_fmap_49[7:0]) +
	( 15'sd 10654) * $signed(input_fmap_50[7:0]) +
	( 16'sd 19292) * $signed(input_fmap_51[7:0]) +
	( 16'sd 17229) * $signed(input_fmap_52[7:0]) +
	( 15'sd 11316) * $signed(input_fmap_53[7:0]) +
	( 14'sd 7372) * $signed(input_fmap_54[7:0]) +
	( 16'sd 17680) * $signed(input_fmap_55[7:0]) +
	( 16'sd 29418) * $signed(input_fmap_56[7:0]) +
	( 15'sd 12196) * $signed(input_fmap_57[7:0]) +
	( 16'sd 20189) * $signed(input_fmap_58[7:0]) +
	( 15'sd 16123) * $signed(input_fmap_59[7:0]) +
	( 14'sd 5208) * $signed(input_fmap_60[7:0]) +
	( 15'sd 13840) * $signed(input_fmap_61[7:0]) +
	( 15'sd 9956) * $signed(input_fmap_62[7:0]) +
	( 13'sd 2676) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_12;
assign conv_mac_12 = 
	( 16'sd 17693) * $signed(input_fmap_0[7:0]) +
	( 15'sd 12936) * $signed(input_fmap_1[7:0]) +
	( 16'sd 21664) * $signed(input_fmap_2[7:0]) +
	( 14'sd 7183) * $signed(input_fmap_3[7:0]) +
	( 16'sd 19689) * $signed(input_fmap_4[7:0]) +
	( 16'sd 21556) * $signed(input_fmap_5[7:0]) +
	( 15'sd 14365) * $signed(input_fmap_6[7:0]) +
	( 14'sd 6415) * $signed(input_fmap_7[7:0]) +
	( 14'sd 5267) * $signed(input_fmap_8[7:0]) +
	( 15'sd 11406) * $signed(input_fmap_9[7:0]) +
	( 16'sd 19666) * $signed(input_fmap_10[7:0]) +
	( 15'sd 15498) * $signed(input_fmap_11[7:0]) +
	( 16'sd 21518) * $signed(input_fmap_12[7:0]) +
	( 15'sd 15068) * $signed(input_fmap_13[7:0]) +
	( 14'sd 8009) * $signed(input_fmap_14[7:0]) +
	( 16'sd 29768) * $signed(input_fmap_15[7:0]) +
	( 16'sd 24352) * $signed(input_fmap_16[7:0]) +
	( 15'sd 16349) * $signed(input_fmap_17[7:0]) +
	( 16'sd 26490) * $signed(input_fmap_18[7:0]) +
	( 16'sd 31022) * $signed(input_fmap_19[7:0]) +
	( 12'sd 2013) * $signed(input_fmap_20[7:0]) +
	( 15'sd 9499) * $signed(input_fmap_21[7:0]) +
	( 16'sd 27346) * $signed(input_fmap_22[7:0]) +
	( 16'sd 18655) * $signed(input_fmap_23[7:0]) +
	( 11'sd 648) * $signed(input_fmap_24[7:0]) +
	( 16'sd 19033) * $signed(input_fmap_25[7:0]) +
	( 15'sd 16139) * $signed(input_fmap_26[7:0]) +
	( 16'sd 28979) * $signed(input_fmap_27[7:0]) +
	( 16'sd 27172) * $signed(input_fmap_28[7:0]) +
	( 16'sd 23011) * $signed(input_fmap_29[7:0]) +
	( 16'sd 17165) * $signed(input_fmap_30[7:0]) +
	( 16'sd 28930) * $signed(input_fmap_31[7:0]) +
	( 15'sd 11759) * $signed(input_fmap_32[7:0]) +
	( 16'sd 31629) * $signed(input_fmap_33[7:0]) +
	( 15'sd 16365) * $signed(input_fmap_34[7:0]) +
	( 16'sd 22496) * $signed(input_fmap_35[7:0]) +
	( 16'sd 31766) * $signed(input_fmap_36[7:0]) +
	( 16'sd 32266) * $signed(input_fmap_37[7:0]) +
	( 15'sd 8658) * $signed(input_fmap_38[7:0]) +
	( 13'sd 3298) * $signed(input_fmap_39[7:0]) +
	( 16'sd 21859) * $signed(input_fmap_40[7:0]) +
	( 16'sd 18482) * $signed(input_fmap_41[7:0]) +
	( 15'sd 13129) * $signed(input_fmap_42[7:0]) +
	( 14'sd 7838) * $signed(input_fmap_43[7:0]) +
	( 15'sd 16241) * $signed(input_fmap_44[7:0]) +
	( 16'sd 16904) * $signed(input_fmap_45[7:0]) +
	( 15'sd 9537) * $signed(input_fmap_46[7:0]) +
	( 15'sd 16183) * $signed(input_fmap_47[7:0]) +
	( 16'sd 19955) * $signed(input_fmap_48[7:0]) +
	( 14'sd 5575) * $signed(input_fmap_49[7:0]) +
	( 15'sd 8697) * $signed(input_fmap_50[7:0]) +
	( 14'sd 6595) * $signed(input_fmap_51[7:0]) +
	( 15'sd 9493) * $signed(input_fmap_52[7:0]) +
	( 13'sd 2651) * $signed(input_fmap_53[7:0]) +
	( 14'sd 7434) * $signed(input_fmap_54[7:0]) +
	( 7'sd 49) * $signed(input_fmap_55[7:0]) +
	( 15'sd 12853) * $signed(input_fmap_56[7:0]) +
	( 13'sd 3320) * $signed(input_fmap_57[7:0]) +
	( 15'sd 11989) * $signed(input_fmap_58[7:0]) +
	( 15'sd 13061) * $signed(input_fmap_59[7:0]) +
	( 12'sd 1604) * $signed(input_fmap_60[7:0]) +
	( 16'sd 21654) * $signed(input_fmap_61[7:0]) +
	( 14'sd 5060) * $signed(input_fmap_62[7:0]) +
	( 15'sd 16004) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_13;
assign conv_mac_13 = 
	( 15'sd 14414) * $signed(input_fmap_0[7:0]) +
	( 16'sd 27332) * $signed(input_fmap_1[7:0]) +
	( 16'sd 23614) * $signed(input_fmap_2[7:0]) +
	( 15'sd 8891) * $signed(input_fmap_3[7:0]) +
	( 16'sd 31468) * $signed(input_fmap_4[7:0]) +
	( 16'sd 18821) * $signed(input_fmap_5[7:0]) +
	( 16'sd 20672) * $signed(input_fmap_6[7:0]) +
	( 15'sd 10987) * $signed(input_fmap_7[7:0]) +
	( 16'sd 24747) * $signed(input_fmap_8[7:0]) +
	( 9'sd 236) * $signed(input_fmap_9[7:0]) +
	( 16'sd 17447) * $signed(input_fmap_10[7:0]) +
	( 16'sd 31433) * $signed(input_fmap_11[7:0]) +
	( 16'sd 30507) * $signed(input_fmap_12[7:0]) +
	( 16'sd 16422) * $signed(input_fmap_13[7:0]) +
	( 16'sd 17752) * $signed(input_fmap_14[7:0]) +
	( 12'sd 1256) * $signed(input_fmap_15[7:0]) +
	( 14'sd 5045) * $signed(input_fmap_16[7:0]) +
	( 15'sd 15806) * $signed(input_fmap_17[7:0]) +
	( 16'sd 24196) * $signed(input_fmap_18[7:0]) +
	( 10'sd 366) * $signed(input_fmap_19[7:0]) +
	( 15'sd 12416) * $signed(input_fmap_20[7:0]) +
	( 16'sd 20742) * $signed(input_fmap_21[7:0]) +
	( 15'sd 14567) * $signed(input_fmap_22[7:0]) +
	( 16'sd 20737) * $signed(input_fmap_23[7:0]) +
	( 16'sd 29541) * $signed(input_fmap_24[7:0]) +
	( 12'sd 1554) * $signed(input_fmap_25[7:0]) +
	( 16'sd 21574) * $signed(input_fmap_26[7:0]) +
	( 16'sd 26147) * $signed(input_fmap_27[7:0]) +
	( 15'sd 11973) * $signed(input_fmap_28[7:0]) +
	( 16'sd 29823) * $signed(input_fmap_29[7:0]) +
	( 16'sd 19826) * $signed(input_fmap_30[7:0]) +
	( 14'sd 6109) * $signed(input_fmap_31[7:0]) +
	( 14'sd 4627) * $signed(input_fmap_32[7:0]) +
	( 16'sd 31574) * $signed(input_fmap_33[7:0]) +
	( 15'sd 8553) * $signed(input_fmap_34[7:0]) +
	( 14'sd 5050) * $signed(input_fmap_35[7:0]) +
	( 14'sd 6111) * $signed(input_fmap_36[7:0]) +
	( 16'sd 24172) * $signed(input_fmap_37[7:0]) +
	( 11'sd 697) * $signed(input_fmap_38[7:0]) +
	( 16'sd 19775) * $signed(input_fmap_39[7:0]) +
	( 16'sd 18165) * $signed(input_fmap_40[7:0]) +
	( 16'sd 26825) * $signed(input_fmap_41[7:0]) +
	( 14'sd 7652) * $signed(input_fmap_42[7:0]) +
	( 15'sd 12901) * $signed(input_fmap_43[7:0]) +
	( 14'sd 4235) * $signed(input_fmap_44[7:0]) +
	( 15'sd 9603) * $signed(input_fmap_45[7:0]) +
	( 13'sd 2276) * $signed(input_fmap_46[7:0]) +
	( 15'sd 9714) * $signed(input_fmap_47[7:0]) +
	( 16'sd 16920) * $signed(input_fmap_48[7:0]) +
	( 15'sd 12495) * $signed(input_fmap_49[7:0]) +
	( 16'sd 19241) * $signed(input_fmap_50[7:0]) +
	( 16'sd 27650) * $signed(input_fmap_51[7:0]) +
	( 16'sd 17371) * $signed(input_fmap_52[7:0]) +
	( 16'sd 19304) * $signed(input_fmap_53[7:0]) +
	( 16'sd 24715) * $signed(input_fmap_54[7:0]) +
	( 14'sd 4759) * $signed(input_fmap_55[7:0]) +
	( 16'sd 27296) * $signed(input_fmap_56[7:0]) +
	( 16'sd 25214) * $signed(input_fmap_57[7:0]) +
	( 16'sd 27739) * $signed(input_fmap_58[7:0]) +
	( 16'sd 21232) * $signed(input_fmap_59[7:0]) +
	( 15'sd 10609) * $signed(input_fmap_60[7:0]) +
	( 15'sd 14869) * $signed(input_fmap_61[7:0]) +
	( 16'sd 23978) * $signed(input_fmap_62[7:0]) +
	( 15'sd 15279) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_14;
assign conv_mac_14 = 
	( 16'sd 29257) * $signed(input_fmap_0[7:0]) +
	( 16'sd 20744) * $signed(input_fmap_1[7:0]) +
	( 16'sd 30482) * $signed(input_fmap_2[7:0]) +
	( 16'sd 16615) * $signed(input_fmap_3[7:0]) +
	( 16'sd 24666) * $signed(input_fmap_4[7:0]) +
	( 15'sd 13917) * $signed(input_fmap_5[7:0]) +
	( 13'sd 4061) * $signed(input_fmap_6[7:0]) +
	( 16'sd 19824) * $signed(input_fmap_7[7:0]) +
	( 16'sd 22104) * $signed(input_fmap_8[7:0]) +
	( 14'sd 7094) * $signed(input_fmap_9[7:0]) +
	( 14'sd 4459) * $signed(input_fmap_10[7:0]) +
	( 13'sd 3031) * $signed(input_fmap_11[7:0]) +
	( 16'sd 24777) * $signed(input_fmap_12[7:0]) +
	( 16'sd 28674) * $signed(input_fmap_13[7:0]) +
	( 16'sd 32219) * $signed(input_fmap_14[7:0]) +
	( 16'sd 18117) * $signed(input_fmap_15[7:0]) +
	( 16'sd 22776) * $signed(input_fmap_16[7:0]) +
	( 16'sd 20049) * $signed(input_fmap_17[7:0]) +
	( 11'sd 919) * $signed(input_fmap_18[7:0]) +
	( 15'sd 9988) * $signed(input_fmap_19[7:0]) +
	( 15'sd 15237) * $signed(input_fmap_20[7:0]) +
	( 16'sd 16901) * $signed(input_fmap_21[7:0]) +
	( 15'sd 15800) * $signed(input_fmap_22[7:0]) +
	( 16'sd 16748) * $signed(input_fmap_23[7:0]) +
	( 15'sd 16177) * $signed(input_fmap_24[7:0]) +
	( 16'sd 25381) * $signed(input_fmap_25[7:0]) +
	( 16'sd 23689) * $signed(input_fmap_26[7:0]) +
	( 14'sd 6816) * $signed(input_fmap_27[7:0]) +
	( 16'sd 26234) * $signed(input_fmap_28[7:0]) +
	( 15'sd 12344) * $signed(input_fmap_29[7:0]) +
	( 14'sd 7558) * $signed(input_fmap_30[7:0]) +
	( 13'sd 3938) * $signed(input_fmap_31[7:0]) +
	( 16'sd 29325) * $signed(input_fmap_32[7:0]) +
	( 15'sd 15092) * $signed(input_fmap_33[7:0]) +
	( 16'sd 25714) * $signed(input_fmap_34[7:0]) +
	( 16'sd 27883) * $signed(input_fmap_35[7:0]) +
	( 14'sd 7889) * $signed(input_fmap_36[7:0]) +
	( 16'sd 21860) * $signed(input_fmap_37[7:0]) +
	( 15'sd 15116) * $signed(input_fmap_38[7:0]) +
	( 15'sd 10555) * $signed(input_fmap_39[7:0]) +
	( 15'sd 10996) * $signed(input_fmap_40[7:0]) +
	( 8'sd 70) * $signed(input_fmap_41[7:0]) +
	( 16'sd 26307) * $signed(input_fmap_42[7:0]) +
	( 16'sd 25159) * $signed(input_fmap_43[7:0]) +
	( 15'sd 9976) * $signed(input_fmap_44[7:0]) +
	( 14'sd 6791) * $signed(input_fmap_45[7:0]) +
	( 16'sd 30588) * $signed(input_fmap_46[7:0]) +
	( 16'sd 32214) * $signed(input_fmap_47[7:0]) +
	( 13'sd 2214) * $signed(input_fmap_48[7:0]) +
	( 16'sd 23637) * $signed(input_fmap_49[7:0]) +
	( 16'sd 30663) * $signed(input_fmap_50[7:0]) +
	( 16'sd 16551) * $signed(input_fmap_51[7:0]) +
	( 16'sd 24732) * $signed(input_fmap_52[7:0]) +
	( 16'sd 31674) * $signed(input_fmap_53[7:0]) +
	( 16'sd 31571) * $signed(input_fmap_54[7:0]) +
	( 13'sd 3359) * $signed(input_fmap_55[7:0]) +
	( 15'sd 13784) * $signed(input_fmap_56[7:0]) +
	( 16'sd 17228) * $signed(input_fmap_57[7:0]) +
	( 14'sd 5523) * $signed(input_fmap_58[7:0]) +
	( 15'sd 12324) * $signed(input_fmap_59[7:0]) +
	( 16'sd 19198) * $signed(input_fmap_60[7:0]) +
	( 16'sd 18886) * $signed(input_fmap_61[7:0]) +
	( 15'sd 11291) * $signed(input_fmap_62[7:0]) +
	( 16'sd 24288) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_15;
assign conv_mac_15 = 
	( 16'sd 26453) * $signed(input_fmap_0[7:0]) +
	( 14'sd 4389) * $signed(input_fmap_1[7:0]) +
	( 16'sd 26268) * $signed(input_fmap_2[7:0]) +
	( 16'sd 30037) * $signed(input_fmap_3[7:0]) +
	( 16'sd 27707) * $signed(input_fmap_4[7:0]) +
	( 15'sd 11952) * $signed(input_fmap_5[7:0]) +
	( 15'sd 12364) * $signed(input_fmap_6[7:0]) +
	( 15'sd 15525) * $signed(input_fmap_7[7:0]) +
	( 16'sd 28059) * $signed(input_fmap_8[7:0]) +
	( 16'sd 25392) * $signed(input_fmap_9[7:0]) +
	( 16'sd 26857) * $signed(input_fmap_10[7:0]) +
	( 14'sd 4490) * $signed(input_fmap_11[7:0]) +
	( 15'sd 12738) * $signed(input_fmap_12[7:0]) +
	( 16'sd 23697) * $signed(input_fmap_13[7:0]) +
	( 15'sd 10964) * $signed(input_fmap_14[7:0]) +
	( 16'sd 18807) * $signed(input_fmap_15[7:0]) +
	( 16'sd 26121) * $signed(input_fmap_16[7:0]) +
	( 13'sd 3806) * $signed(input_fmap_17[7:0]) +
	( 16'sd 20863) * $signed(input_fmap_18[7:0]) +
	( 16'sd 26496) * $signed(input_fmap_19[7:0]) +
	( 16'sd 28823) * $signed(input_fmap_20[7:0]) +
	( 14'sd 5700) * $signed(input_fmap_21[7:0]) +
	( 15'sd 10248) * $signed(input_fmap_22[7:0]) +
	( 15'sd 12836) * $signed(input_fmap_23[7:0]) +
	( 16'sd 18885) * $signed(input_fmap_24[7:0]) +
	( 14'sd 6373) * $signed(input_fmap_25[7:0]) +
	( 14'sd 6393) * $signed(input_fmap_26[7:0]) +
	( 16'sd 32163) * $signed(input_fmap_27[7:0]) +
	( 15'sd 16094) * $signed(input_fmap_28[7:0]) +
	( 14'sd 5564) * $signed(input_fmap_29[7:0]) +
	( 14'sd 5173) * $signed(input_fmap_30[7:0]) +
	( 16'sd 32264) * $signed(input_fmap_31[7:0]) +
	( 14'sd 7592) * $signed(input_fmap_32[7:0]) +
	( 16'sd 20480) * $signed(input_fmap_33[7:0]) +
	( 15'sd 13637) * $signed(input_fmap_34[7:0]) +
	( 15'sd 12413) * $signed(input_fmap_35[7:0]) +
	( 16'sd 21922) * $signed(input_fmap_36[7:0]) +
	( 16'sd 21322) * $signed(input_fmap_37[7:0]) +
	( 16'sd 32358) * $signed(input_fmap_38[7:0]) +
	( 16'sd 22926) * $signed(input_fmap_39[7:0]) +
	( 16'sd 31293) * $signed(input_fmap_40[7:0]) +
	( 16'sd 24111) * $signed(input_fmap_41[7:0]) +
	( 12'sd 1641) * $signed(input_fmap_42[7:0]) +
	( 14'sd 5484) * $signed(input_fmap_43[7:0]) +
	( 15'sd 10336) * $signed(input_fmap_44[7:0]) +
	( 14'sd 8152) * $signed(input_fmap_45[7:0]) +
	( 13'sd 2788) * $signed(input_fmap_46[7:0]) +
	( 16'sd 26194) * $signed(input_fmap_47[7:0]) +
	( 16'sd 32083) * $signed(input_fmap_48[7:0]) +
	( 15'sd 15826) * $signed(input_fmap_49[7:0]) +
	( 16'sd 22060) * $signed(input_fmap_50[7:0]) +
	( 15'sd 8335) * $signed(input_fmap_51[7:0]) +
	( 16'sd 17224) * $signed(input_fmap_52[7:0]) +
	( 16'sd 16800) * $signed(input_fmap_53[7:0]) +
	( 16'sd 16799) * $signed(input_fmap_54[7:0]) +
	( 15'sd 11219) * $signed(input_fmap_55[7:0]) +
	( 16'sd 26616) * $signed(input_fmap_56[7:0]) +
	( 16'sd 17583) * $signed(input_fmap_57[7:0]) +
	( 14'sd 7039) * $signed(input_fmap_58[7:0]) +
	( 15'sd 16153) * $signed(input_fmap_59[7:0]) +
	( 16'sd 31199) * $signed(input_fmap_60[7:0]) +
	( 16'sd 21158) * $signed(input_fmap_61[7:0]) +
	( 16'sd 23222) * $signed(input_fmap_62[7:0]) +
	( 16'sd 25144) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_16;
assign conv_mac_16 = 
	( 16'sd 22769) * $signed(input_fmap_0[7:0]) +
	( 14'sd 7751) * $signed(input_fmap_1[7:0]) +
	( 16'sd 28549) * $signed(input_fmap_2[7:0]) +
	( 14'sd 7099) * $signed(input_fmap_3[7:0]) +
	( 16'sd 29754) * $signed(input_fmap_4[7:0]) +
	( 16'sd 19286) * $signed(input_fmap_5[7:0]) +
	( 15'sd 10831) * $signed(input_fmap_6[7:0]) +
	( 15'sd 10997) * $signed(input_fmap_7[7:0]) +
	( 16'sd 26728) * $signed(input_fmap_8[7:0]) +
	( 14'sd 6640) * $signed(input_fmap_9[7:0]) +
	( 16'sd 20559) * $signed(input_fmap_10[7:0]) +
	( 12'sd 1291) * $signed(input_fmap_11[7:0]) +
	( 16'sd 23961) * $signed(input_fmap_12[7:0]) +
	( 15'sd 16024) * $signed(input_fmap_13[7:0]) +
	( 16'sd 18807) * $signed(input_fmap_14[7:0]) +
	( 14'sd 6574) * $signed(input_fmap_15[7:0]) +
	( 15'sd 15376) * $signed(input_fmap_16[7:0]) +
	( 16'sd 17118) * $signed(input_fmap_17[7:0]) +
	( 16'sd 29899) * $signed(input_fmap_18[7:0]) +
	( 16'sd 18982) * $signed(input_fmap_19[7:0]) +
	( 9'sd 179) * $signed(input_fmap_20[7:0]) +
	( 12'sd 1332) * $signed(input_fmap_21[7:0]) +
	( 16'sd 26650) * $signed(input_fmap_22[7:0]) +
	( 12'sd 1719) * $signed(input_fmap_23[7:0]) +
	( 16'sd 27059) * $signed(input_fmap_24[7:0]) +
	( 14'sd 4698) * $signed(input_fmap_25[7:0]) +
	( 16'sd 19525) * $signed(input_fmap_26[7:0]) +
	( 16'sd 19421) * $signed(input_fmap_27[7:0]) +
	( 16'sd 19060) * $signed(input_fmap_28[7:0]) +
	( 16'sd 29492) * $signed(input_fmap_29[7:0]) +
	( 16'sd 18320) * $signed(input_fmap_30[7:0]) +
	( 15'sd 15896) * $signed(input_fmap_31[7:0]) +
	( 16'sd 28354) * $signed(input_fmap_32[7:0]) +
	( 16'sd 20450) * $signed(input_fmap_33[7:0]) +
	( 16'sd 18127) * $signed(input_fmap_34[7:0]) +
	( 16'sd 24756) * $signed(input_fmap_35[7:0]) +
	( 15'sd 10333) * $signed(input_fmap_36[7:0]) +
	( 15'sd 14311) * $signed(input_fmap_37[7:0]) +
	( 16'sd 23666) * $signed(input_fmap_38[7:0]) +
	( 16'sd 28368) * $signed(input_fmap_39[7:0]) +
	( 16'sd 20274) * $signed(input_fmap_40[7:0]) +
	( 14'sd 6723) * $signed(input_fmap_41[7:0]) +
	( 16'sd 20883) * $signed(input_fmap_42[7:0]) +
	( 16'sd 24605) * $signed(input_fmap_43[7:0]) +
	( 15'sd 8995) * $signed(input_fmap_44[7:0]) +
	( 16'sd 26897) * $signed(input_fmap_45[7:0]) +
	( 15'sd 9254) * $signed(input_fmap_46[7:0]) +
	( 16'sd 19888) * $signed(input_fmap_47[7:0]) +
	( 16'sd 26418) * $signed(input_fmap_48[7:0]) +
	( 15'sd 9790) * $signed(input_fmap_49[7:0]) +
	( 16'sd 19930) * $signed(input_fmap_50[7:0]) +
	( 15'sd 10860) * $signed(input_fmap_51[7:0]) +
	( 15'sd 10863) * $signed(input_fmap_52[7:0]) +
	( 16'sd 19123) * $signed(input_fmap_53[7:0]) +
	( 15'sd 9943) * $signed(input_fmap_54[7:0]) +
	( 15'sd 8999) * $signed(input_fmap_55[7:0]) +
	( 16'sd 27628) * $signed(input_fmap_56[7:0]) +
	( 16'sd 32373) * $signed(input_fmap_57[7:0]) +
	( 16'sd 26787) * $signed(input_fmap_58[7:0]) +
	( 15'sd 13999) * $signed(input_fmap_59[7:0]) +
	( 11'sd 601) * $signed(input_fmap_60[7:0]) +
	( 15'sd 9545) * $signed(input_fmap_61[7:0]) +
	( 13'sd 2206) * $signed(input_fmap_62[7:0]) +
	( 15'sd 8224) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_17;
assign conv_mac_17 = 
	( 16'sd 20442) * $signed(input_fmap_0[7:0]) +
	( 14'sd 7301) * $signed(input_fmap_1[7:0]) +
	( 16'sd 28146) * $signed(input_fmap_2[7:0]) +
	( 16'sd 21883) * $signed(input_fmap_3[7:0]) +
	( 15'sd 15532) * $signed(input_fmap_4[7:0]) +
	( 15'sd 14075) * $signed(input_fmap_5[7:0]) +
	( 16'sd 29324) * $signed(input_fmap_6[7:0]) +
	( 14'sd 6900) * $signed(input_fmap_7[7:0]) +
	( 16'sd 25231) * $signed(input_fmap_8[7:0]) +
	( 16'sd 21125) * $signed(input_fmap_9[7:0]) +
	( 16'sd 20284) * $signed(input_fmap_10[7:0]) +
	( 16'sd 30903) * $signed(input_fmap_11[7:0]) +
	( 16'sd 19546) * $signed(input_fmap_12[7:0]) +
	( 10'sd 314) * $signed(input_fmap_13[7:0]) +
	( 15'sd 14043) * $signed(input_fmap_14[7:0]) +
	( 16'sd 18703) * $signed(input_fmap_15[7:0]) +
	( 16'sd 24548) * $signed(input_fmap_16[7:0]) +
	( 16'sd 25316) * $signed(input_fmap_17[7:0]) +
	( 16'sd 23365) * $signed(input_fmap_18[7:0]) +
	( 16'sd 21642) * $signed(input_fmap_19[7:0]) +
	( 14'sd 4492) * $signed(input_fmap_20[7:0]) +
	( 15'sd 15010) * $signed(input_fmap_21[7:0]) +
	( 15'sd 9954) * $signed(input_fmap_22[7:0]) +
	( 14'sd 4442) * $signed(input_fmap_23[7:0]) +
	( 13'sd 2950) * $signed(input_fmap_24[7:0]) +
	( 16'sd 21464) * $signed(input_fmap_25[7:0]) +
	( 16'sd 16736) * $signed(input_fmap_26[7:0]) +
	( 15'sd 9919) * $signed(input_fmap_27[7:0]) +
	( 16'sd 17648) * $signed(input_fmap_28[7:0]) +
	( 15'sd 8734) * $signed(input_fmap_29[7:0]) +
	( 16'sd 31266) * $signed(input_fmap_30[7:0]) +
	( 16'sd 30172) * $signed(input_fmap_31[7:0]) +
	( 15'sd 13679) * $signed(input_fmap_32[7:0]) +
	( 15'sd 14552) * $signed(input_fmap_33[7:0]) +
	( 13'sd 3824) * $signed(input_fmap_34[7:0]) +
	( 15'sd 9043) * $signed(input_fmap_35[7:0]) +
	( 15'sd 9555) * $signed(input_fmap_36[7:0]) +
	( 15'sd 9337) * $signed(input_fmap_37[7:0]) +
	( 16'sd 29051) * $signed(input_fmap_38[7:0]) +
	( 16'sd 16568) * $signed(input_fmap_39[7:0]) +
	( 14'sd 7023) * $signed(input_fmap_40[7:0]) +
	( 16'sd 32503) * $signed(input_fmap_41[7:0]) +
	( 16'sd 22573) * $signed(input_fmap_42[7:0]) +
	( 15'sd 14640) * $signed(input_fmap_43[7:0]) +
	( 15'sd 11200) * $signed(input_fmap_44[7:0]) +
	( 16'sd 24542) * $signed(input_fmap_45[7:0]) +
	( 15'sd 16019) * $signed(input_fmap_46[7:0]) +
	( 16'sd 25916) * $signed(input_fmap_47[7:0]) +
	( 12'sd 1133) * $signed(input_fmap_48[7:0]) +
	( 16'sd 31557) * $signed(input_fmap_49[7:0]) +
	( 15'sd 14572) * $signed(input_fmap_50[7:0]) +
	( 11'sd 1010) * $signed(input_fmap_51[7:0]) +
	( 16'sd 26143) * $signed(input_fmap_52[7:0]) +
	( 16'sd 26206) * $signed(input_fmap_53[7:0]) +
	( 16'sd 17079) * $signed(input_fmap_54[7:0]) +
	( 15'sd 9702) * $signed(input_fmap_55[7:0]) +
	( 16'sd 25834) * $signed(input_fmap_56[7:0]) +
	( 15'sd 12922) * $signed(input_fmap_57[7:0]) +
	( 16'sd 16717) * $signed(input_fmap_58[7:0]) +
	( 15'sd 8964) * $signed(input_fmap_59[7:0]) +
	( 16'sd 30603) * $signed(input_fmap_60[7:0]) +
	( 16'sd 20313) * $signed(input_fmap_61[7:0]) +
	( 16'sd 16428) * $signed(input_fmap_62[7:0]) +
	( 15'sd 12349) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_18;
assign conv_mac_18 = 
	( 16'sd 22225) * $signed(input_fmap_0[7:0]) +
	( 16'sd 22565) * $signed(input_fmap_1[7:0]) +
	( 10'sd 343) * $signed(input_fmap_2[7:0]) +
	( 16'sd 24918) * $signed(input_fmap_3[7:0]) +
	( 16'sd 23024) * $signed(input_fmap_4[7:0]) +
	( 15'sd 14585) * $signed(input_fmap_5[7:0]) +
	( 16'sd 21486) * $signed(input_fmap_6[7:0]) +
	( 12'sd 1965) * $signed(input_fmap_7[7:0]) +
	( 16'sd 24964) * $signed(input_fmap_8[7:0]) +
	( 16'sd 21575) * $signed(input_fmap_9[7:0]) +
	( 13'sd 3043) * $signed(input_fmap_10[7:0]) +
	( 14'sd 5762) * $signed(input_fmap_11[7:0]) +
	( 16'sd 16459) * $signed(input_fmap_12[7:0]) +
	( 15'sd 16160) * $signed(input_fmap_13[7:0]) +
	( 16'sd 30722) * $signed(input_fmap_14[7:0]) +
	( 16'sd 25669) * $signed(input_fmap_15[7:0]) +
	( 15'sd 14466) * $signed(input_fmap_16[7:0]) +
	( 16'sd 22303) * $signed(input_fmap_17[7:0]) +
	( 10'sd 344) * $signed(input_fmap_18[7:0]) +
	( 16'sd 27924) * $signed(input_fmap_19[7:0]) +
	( 15'sd 8652) * $signed(input_fmap_20[7:0]) +
	( 13'sd 3990) * $signed(input_fmap_21[7:0]) +
	( 14'sd 5520) * $signed(input_fmap_22[7:0]) +
	( 16'sd 25548) * $signed(input_fmap_23[7:0]) +
	( 14'sd 6667) * $signed(input_fmap_24[7:0]) +
	( 16'sd 23568) * $signed(input_fmap_25[7:0]) +
	( 16'sd 17174) * $signed(input_fmap_26[7:0]) +
	( 13'sd 3050) * $signed(input_fmap_27[7:0]) +
	( 11'sd 983) * $signed(input_fmap_28[7:0]) +
	( 15'sd 14724) * $signed(input_fmap_29[7:0]) +
	( 16'sd 32194) * $signed(input_fmap_30[7:0]) +
	( 16'sd 22064) * $signed(input_fmap_31[7:0]) +
	( 16'sd 19351) * $signed(input_fmap_32[7:0]) +
	( 16'sd 20149) * $signed(input_fmap_33[7:0]) +
	( 13'sd 3745) * $signed(input_fmap_34[7:0]) +
	( 15'sd 11239) * $signed(input_fmap_35[7:0]) +
	( 15'sd 10834) * $signed(input_fmap_36[7:0]) +
	( 16'sd 20694) * $signed(input_fmap_37[7:0]) +
	( 11'sd 806) * $signed(input_fmap_38[7:0]) +
	( 13'sd 3940) * $signed(input_fmap_39[7:0]) +
	( 16'sd 24412) * $signed(input_fmap_40[7:0]) +
	( 14'sd 5029) * $signed(input_fmap_41[7:0]) +
	( 11'sd 779) * $signed(input_fmap_42[7:0]) +
	( 13'sd 2307) * $signed(input_fmap_43[7:0]) +
	( 14'sd 4880) * $signed(input_fmap_44[7:0]) +
	( 15'sd 11520) * $signed(input_fmap_45[7:0]) +
	( 16'sd 23333) * $signed(input_fmap_46[7:0]) +
	( 15'sd 11147) * $signed(input_fmap_47[7:0]) +
	( 15'sd 16180) * $signed(input_fmap_48[7:0]) +
	( 14'sd 5946) * $signed(input_fmap_49[7:0]) +
	( 16'sd 17510) * $signed(input_fmap_50[7:0]) +
	( 15'sd 14786) * $signed(input_fmap_51[7:0]) +
	( 15'sd 11130) * $signed(input_fmap_52[7:0]) +
	( 14'sd 7759) * $signed(input_fmap_53[7:0]) +
	( 14'sd 7371) * $signed(input_fmap_54[7:0]) +
	( 15'sd 14496) * $signed(input_fmap_55[7:0]) +
	( 15'sd 12678) * $signed(input_fmap_56[7:0]) +
	( 14'sd 4481) * $signed(input_fmap_57[7:0]) +
	( 16'sd 31479) * $signed(input_fmap_58[7:0]) +
	( 15'sd 10982) * $signed(input_fmap_59[7:0]) +
	( 16'sd 22652) * $signed(input_fmap_60[7:0]) +
	( 16'sd 31294) * $signed(input_fmap_61[7:0]) +
	( 16'sd 29213) * $signed(input_fmap_62[7:0]) +
	( 15'sd 15499) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_19;
assign conv_mac_19 = 
	( 16'sd 30319) * $signed(input_fmap_0[7:0]) +
	( 16'sd 20339) * $signed(input_fmap_1[7:0]) +
	( 15'sd 12795) * $signed(input_fmap_2[7:0]) +
	( 16'sd 23812) * $signed(input_fmap_3[7:0]) +
	( 15'sd 14792) * $signed(input_fmap_4[7:0]) +
	( 16'sd 22957) * $signed(input_fmap_5[7:0]) +
	( 14'sd 6693) * $signed(input_fmap_6[7:0]) +
	( 16'sd 23781) * $signed(input_fmap_7[7:0]) +
	( 16'sd 17863) * $signed(input_fmap_8[7:0]) +
	( 14'sd 6298) * $signed(input_fmap_9[7:0]) +
	( 12'sd 1502) * $signed(input_fmap_10[7:0]) +
	( 16'sd 29697) * $signed(input_fmap_11[7:0]) +
	( 15'sd 9011) * $signed(input_fmap_12[7:0]) +
	( 16'sd 29718) * $signed(input_fmap_13[7:0]) +
	( 15'sd 14950) * $signed(input_fmap_14[7:0]) +
	( 16'sd 22007) * $signed(input_fmap_15[7:0]) +
	( 15'sd 8926) * $signed(input_fmap_16[7:0]) +
	( 16'sd 26526) * $signed(input_fmap_17[7:0]) +
	( 16'sd 28564) * $signed(input_fmap_18[7:0]) +
	( 16'sd 29813) * $signed(input_fmap_19[7:0]) +
	( 16'sd 20236) * $signed(input_fmap_20[7:0]) +
	( 15'sd 15570) * $signed(input_fmap_21[7:0]) +
	( 11'sd 981) * $signed(input_fmap_22[7:0]) +
	( 16'sd 20877) * $signed(input_fmap_23[7:0]) +
	( 13'sd 2453) * $signed(input_fmap_24[7:0]) +
	( 13'sd 3500) * $signed(input_fmap_25[7:0]) +
	( 16'sd 27868) * $signed(input_fmap_26[7:0]) +
	( 14'sd 7544) * $signed(input_fmap_27[7:0]) +
	( 16'sd 24662) * $signed(input_fmap_28[7:0]) +
	( 16'sd 20779) * $signed(input_fmap_29[7:0]) +
	( 16'sd 25807) * $signed(input_fmap_30[7:0]) +
	( 15'sd 14816) * $signed(input_fmap_31[7:0]) +
	( 14'sd 5628) * $signed(input_fmap_32[7:0]) +
	( 15'sd 11820) * $signed(input_fmap_33[7:0]) +
	( 15'sd 13205) * $signed(input_fmap_34[7:0]) +
	( 15'sd 15871) * $signed(input_fmap_35[7:0]) +
	( 14'sd 4550) * $signed(input_fmap_36[7:0]) +
	( 14'sd 6948) * $signed(input_fmap_37[7:0]) +
	( 15'sd 8918) * $signed(input_fmap_38[7:0]) +
	( 14'sd 4136) * $signed(input_fmap_39[7:0]) +
	( 16'sd 23171) * $signed(input_fmap_40[7:0]) +
	( 15'sd 13543) * $signed(input_fmap_41[7:0]) +
	( 16'sd 19107) * $signed(input_fmap_42[7:0]) +
	( 15'sd 10776) * $signed(input_fmap_43[7:0]) +
	( 15'sd 11048) * $signed(input_fmap_44[7:0]) +
	( 15'sd 10958) * $signed(input_fmap_45[7:0]) +
	( 15'sd 15845) * $signed(input_fmap_46[7:0]) +
	( 15'sd 13428) * $signed(input_fmap_47[7:0]) +
	( 16'sd 26844) * $signed(input_fmap_48[7:0]) +
	( 15'sd 12738) * $signed(input_fmap_49[7:0]) +
	( 16'sd 29848) * $signed(input_fmap_50[7:0]) +
	( 15'sd 8774) * $signed(input_fmap_51[7:0]) +
	( 16'sd 21642) * $signed(input_fmap_52[7:0]) +
	( 15'sd 10676) * $signed(input_fmap_53[7:0]) +
	( 14'sd 5615) * $signed(input_fmap_54[7:0]) +
	( 15'sd 13035) * $signed(input_fmap_55[7:0]) +
	( 14'sd 6314) * $signed(input_fmap_56[7:0]) +
	( 16'sd 29332) * $signed(input_fmap_57[7:0]) +
	( 12'sd 1097) * $signed(input_fmap_58[7:0]) +
	( 15'sd 10719) * $signed(input_fmap_59[7:0]) +
	( 15'sd 10231) * $signed(input_fmap_60[7:0]) +
	( 15'sd 15416) * $signed(input_fmap_61[7:0]) +
	( 16'sd 17828) * $signed(input_fmap_62[7:0]) +
	( 15'sd 9358) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_20;
assign conv_mac_20 = 
	( 16'sd 32120) * $signed(input_fmap_0[7:0]) +
	( 16'sd 16435) * $signed(input_fmap_1[7:0]) +
	( 16'sd 27426) * $signed(input_fmap_2[7:0]) +
	( 15'sd 13257) * $signed(input_fmap_3[7:0]) +
	( 16'sd 31705) * $signed(input_fmap_4[7:0]) +
	( 16'sd 17564) * $signed(input_fmap_5[7:0]) +
	( 16'sd 26464) * $signed(input_fmap_6[7:0]) +
	( 16'sd 28720) * $signed(input_fmap_7[7:0]) +
	( 16'sd 18610) * $signed(input_fmap_8[7:0]) +
	( 15'sd 12375) * $signed(input_fmap_9[7:0]) +
	( 16'sd 20379) * $signed(input_fmap_10[7:0]) +
	( 16'sd 17337) * $signed(input_fmap_11[7:0]) +
	( 16'sd 31413) * $signed(input_fmap_12[7:0]) +
	( 15'sd 12098) * $signed(input_fmap_13[7:0]) +
	( 16'sd 32084) * $signed(input_fmap_14[7:0]) +
	( 13'sd 4058) * $signed(input_fmap_15[7:0]) +
	( 16'sd 31235) * $signed(input_fmap_16[7:0]) +
	( 16'sd 28585) * $signed(input_fmap_17[7:0]) +
	( 14'sd 7431) * $signed(input_fmap_18[7:0]) +
	( 16'sd 25745) * $signed(input_fmap_19[7:0]) +
	( 15'sd 8648) * $signed(input_fmap_20[7:0]) +
	( 15'sd 10821) * $signed(input_fmap_21[7:0]) +
	( 13'sd 3731) * $signed(input_fmap_22[7:0]) +
	( 15'sd 10786) * $signed(input_fmap_23[7:0]) +
	( 13'sd 2194) * $signed(input_fmap_24[7:0]) +
	( 16'sd 30691) * $signed(input_fmap_25[7:0]) +
	( 14'sd 6677) * $signed(input_fmap_26[7:0]) +
	( 16'sd 24434) * $signed(input_fmap_27[7:0]) +
	( 14'sd 6895) * $signed(input_fmap_28[7:0]) +
	( 16'sd 24604) * $signed(input_fmap_29[7:0]) +
	( 15'sd 12635) * $signed(input_fmap_30[7:0]) +
	( 16'sd 28628) * $signed(input_fmap_31[7:0]) +
	( 15'sd 14451) * $signed(input_fmap_32[7:0]) +
	( 15'sd 11401) * $signed(input_fmap_33[7:0]) +
	( 16'sd 23532) * $signed(input_fmap_34[7:0]) +
	( 16'sd 19126) * $signed(input_fmap_35[7:0]) +
	( 14'sd 8134) * $signed(input_fmap_36[7:0]) +
	( 11'sd 784) * $signed(input_fmap_37[7:0]) +
	( 15'sd 10451) * $signed(input_fmap_38[7:0]) +
	( 14'sd 4205) * $signed(input_fmap_39[7:0]) +
	( 16'sd 20769) * $signed(input_fmap_40[7:0]) +
	( 16'sd 25905) * $signed(input_fmap_41[7:0]) +
	( 16'sd 31617) * $signed(input_fmap_42[7:0]) +
	( 16'sd 31949) * $signed(input_fmap_43[7:0]) +
	( 15'sd 10247) * $signed(input_fmap_44[7:0]) +
	( 13'sd 2927) * $signed(input_fmap_45[7:0]) +
	( 13'sd 3423) * $signed(input_fmap_46[7:0]) +
	( 15'sd 12287) * $signed(input_fmap_47[7:0]) +
	( 16'sd 18355) * $signed(input_fmap_48[7:0]) +
	( 13'sd 2805) * $signed(input_fmap_49[7:0]) +
	( 16'sd 22935) * $signed(input_fmap_50[7:0]) +
	( 15'sd 12350) * $signed(input_fmap_51[7:0]) +
	( 16'sd 27250) * $signed(input_fmap_52[7:0]) +
	( 16'sd 27222) * $signed(input_fmap_53[7:0]) +
	( 15'sd 14556) * $signed(input_fmap_54[7:0]) +
	( 16'sd 28066) * $signed(input_fmap_55[7:0]) +
	( 15'sd 13483) * $signed(input_fmap_56[7:0]) +
	( 16'sd 25837) * $signed(input_fmap_57[7:0]) +
	( 15'sd 13554) * $signed(input_fmap_58[7:0]) +
	( 14'sd 7379) * $signed(input_fmap_59[7:0]) +
	( 16'sd 24323) * $signed(input_fmap_60[7:0]) +
	( 15'sd 11487) * $signed(input_fmap_61[7:0]) +
	( 15'sd 15180) * $signed(input_fmap_62[7:0]) +
	( 16'sd 29457) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_21;
assign conv_mac_21 = 
	( 15'sd 12329) * $signed(input_fmap_0[7:0]) +
	( 15'sd 13779) * $signed(input_fmap_1[7:0]) +
	( 13'sd 2872) * $signed(input_fmap_2[7:0]) +
	( 16'sd 27864) * $signed(input_fmap_3[7:0]) +
	( 16'sd 30463) * $signed(input_fmap_4[7:0]) +
	( 16'sd 18179) * $signed(input_fmap_5[7:0]) +
	( 15'sd 9786) * $signed(input_fmap_6[7:0]) +
	( 16'sd 25905) * $signed(input_fmap_7[7:0]) +
	( 15'sd 10487) * $signed(input_fmap_8[7:0]) +
	( 13'sd 3572) * $signed(input_fmap_9[7:0]) +
	( 16'sd 25043) * $signed(input_fmap_10[7:0]) +
	( 15'sd 9998) * $signed(input_fmap_11[7:0]) +
	( 16'sd 30133) * $signed(input_fmap_12[7:0]) +
	( 15'sd 13993) * $signed(input_fmap_13[7:0]) +
	( 14'sd 5605) * $signed(input_fmap_14[7:0]) +
	( 16'sd 32070) * $signed(input_fmap_15[7:0]) +
	( 16'sd 21262) * $signed(input_fmap_16[7:0]) +
	( 12'sd 1569) * $signed(input_fmap_17[7:0]) +
	( 14'sd 7837) * $signed(input_fmap_18[7:0]) +
	( 13'sd 4006) * $signed(input_fmap_19[7:0]) +
	( 16'sd 26044) * $signed(input_fmap_20[7:0]) +
	( 16'sd 20800) * $signed(input_fmap_21[7:0]) +
	( 16'sd 25625) * $signed(input_fmap_22[7:0]) +
	( 15'sd 11324) * $signed(input_fmap_23[7:0]) +
	( 16'sd 21282) * $signed(input_fmap_24[7:0]) +
	( 16'sd 31073) * $signed(input_fmap_25[7:0]) +
	( 16'sd 28709) * $signed(input_fmap_26[7:0]) +
	( 16'sd 25173) * $signed(input_fmap_27[7:0]) +
	( 13'sd 3090) * $signed(input_fmap_28[7:0]) +
	( 16'sd 32042) * $signed(input_fmap_29[7:0]) +
	( 16'sd 32759) * $signed(input_fmap_30[7:0]) +
	( 16'sd 31876) * $signed(input_fmap_31[7:0]) +
	( 14'sd 5810) * $signed(input_fmap_32[7:0]) +
	( 15'sd 10255) * $signed(input_fmap_33[7:0]) +
	( 16'sd 31754) * $signed(input_fmap_34[7:0]) +
	( 15'sd 14853) * $signed(input_fmap_35[7:0]) +
	( 16'sd 19089) * $signed(input_fmap_36[7:0]) +
	( 16'sd 23639) * $signed(input_fmap_37[7:0]) +
	( 14'sd 4369) * $signed(input_fmap_38[7:0]) +
	( 16'sd 16763) * $signed(input_fmap_39[7:0]) +
	( 13'sd 3116) * $signed(input_fmap_40[7:0]) +
	( 16'sd 16677) * $signed(input_fmap_41[7:0]) +
	( 16'sd 17156) * $signed(input_fmap_42[7:0]) +
	( 14'sd 8083) * $signed(input_fmap_43[7:0]) +
	( 15'sd 8916) * $signed(input_fmap_44[7:0]) +
	( 15'sd 15812) * $signed(input_fmap_45[7:0]) +
	( 16'sd 25269) * $signed(input_fmap_46[7:0]) +
	( 15'sd 10725) * $signed(input_fmap_47[7:0]) +
	( 16'sd 26794) * $signed(input_fmap_48[7:0]) +
	( 15'sd 10921) * $signed(input_fmap_49[7:0]) +
	( 15'sd 13839) * $signed(input_fmap_50[7:0]) +
	( 15'sd 12100) * $signed(input_fmap_51[7:0]) +
	( 16'sd 16554) * $signed(input_fmap_52[7:0]) +
	( 15'sd 11814) * $signed(input_fmap_53[7:0]) +
	( 16'sd 31539) * $signed(input_fmap_54[7:0]) +
	( 16'sd 30610) * $signed(input_fmap_55[7:0]) +
	( 15'sd 14283) * $signed(input_fmap_56[7:0]) +
	( 13'sd 2081) * $signed(input_fmap_57[7:0]) +
	( 16'sd 24820) * $signed(input_fmap_58[7:0]) +
	( 16'sd 30299) * $signed(input_fmap_59[7:0]) +
	( 15'sd 9414) * $signed(input_fmap_60[7:0]) +
	( 15'sd 9306) * $signed(input_fmap_61[7:0]) +
	( 16'sd 29638) * $signed(input_fmap_62[7:0]) +
	( 14'sd 7678) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_22;
assign conv_mac_22 = 
	( 16'sd 16778) * $signed(input_fmap_0[7:0]) +
	( 16'sd 31713) * $signed(input_fmap_1[7:0]) +
	( 16'sd 31866) * $signed(input_fmap_2[7:0]) +
	( 16'sd 25461) * $signed(input_fmap_3[7:0]) +
	( 16'sd 27755) * $signed(input_fmap_4[7:0]) +
	( 13'sd 2404) * $signed(input_fmap_5[7:0]) +
	( 10'sd 367) * $signed(input_fmap_6[7:0]) +
	( 16'sd 30798) * $signed(input_fmap_7[7:0]) +
	( 16'sd 22924) * $signed(input_fmap_8[7:0]) +
	( 15'sd 9429) * $signed(input_fmap_9[7:0]) +
	( 16'sd 25037) * $signed(input_fmap_10[7:0]) +
	( 15'sd 13965) * $signed(input_fmap_11[7:0]) +
	( 16'sd 20004) * $signed(input_fmap_12[7:0]) +
	( 16'sd 20774) * $signed(input_fmap_13[7:0]) +
	( 16'sd 16743) * $signed(input_fmap_14[7:0]) +
	( 16'sd 20221) * $signed(input_fmap_15[7:0]) +
	( 16'sd 25879) * $signed(input_fmap_16[7:0]) +
	( 16'sd 26987) * $signed(input_fmap_17[7:0]) +
	( 16'sd 20092) * $signed(input_fmap_18[7:0]) +
	( 16'sd 26856) * $signed(input_fmap_19[7:0]) +
	( 15'sd 9636) * $signed(input_fmap_20[7:0]) +
	( 15'sd 9010) * $signed(input_fmap_21[7:0]) +
	( 16'sd 31664) * $signed(input_fmap_22[7:0]) +
	( 14'sd 8130) * $signed(input_fmap_23[7:0]) +
	( 16'sd 30027) * $signed(input_fmap_24[7:0]) +
	( 16'sd 22119) * $signed(input_fmap_25[7:0]) +
	( 15'sd 10990) * $signed(input_fmap_26[7:0]) +
	( 16'sd 30151) * $signed(input_fmap_27[7:0]) +
	( 14'sd 4658) * $signed(input_fmap_28[7:0]) +
	( 16'sd 23763) * $signed(input_fmap_29[7:0]) +
	( 16'sd 29711) * $signed(input_fmap_30[7:0]) +
	( 14'sd 7826) * $signed(input_fmap_31[7:0]) +
	( 16'sd 20920) * $signed(input_fmap_32[7:0]) +
	( 14'sd 8004) * $signed(input_fmap_33[7:0]) +
	( 13'sd 3556) * $signed(input_fmap_34[7:0]) +
	( 15'sd 12269) * $signed(input_fmap_35[7:0]) +
	( 16'sd 21083) * $signed(input_fmap_36[7:0]) +
	( 16'sd 28589) * $signed(input_fmap_37[7:0]) +
	( 15'sd 12601) * $signed(input_fmap_38[7:0]) +
	( 15'sd 10676) * $signed(input_fmap_39[7:0]) +
	( 16'sd 30889) * $signed(input_fmap_40[7:0]) +
	( 15'sd 8992) * $signed(input_fmap_41[7:0]) +
	( 16'sd 23638) * $signed(input_fmap_42[7:0]) +
	( 16'sd 20678) * $signed(input_fmap_43[7:0]) +
	( 16'sd 24971) * $signed(input_fmap_44[7:0]) +
	( 14'sd 7146) * $signed(input_fmap_45[7:0]) +
	( 15'sd 13291) * $signed(input_fmap_46[7:0]) +
	( 16'sd 22775) * $signed(input_fmap_47[7:0]) +
	( 15'sd 14828) * $signed(input_fmap_48[7:0]) +
	( 14'sd 5365) * $signed(input_fmap_49[7:0]) +
	( 14'sd 6450) * $signed(input_fmap_50[7:0]) +
	( 15'sd 11433) * $signed(input_fmap_51[7:0]) +
	( 16'sd 29593) * $signed(input_fmap_52[7:0]) +
	( 16'sd 30693) * $signed(input_fmap_53[7:0]) +
	( 16'sd 17648) * $signed(input_fmap_54[7:0]) +
	( 14'sd 5466) * $signed(input_fmap_55[7:0]) +
	( 16'sd 18932) * $signed(input_fmap_56[7:0]) +
	( 15'sd 16312) * $signed(input_fmap_57[7:0]) +
	( 13'sd 2528) * $signed(input_fmap_58[7:0]) +
	( 14'sd 5717) * $signed(input_fmap_59[7:0]) +
	( 16'sd 19696) * $signed(input_fmap_60[7:0]) +
	( 15'sd 8732) * $signed(input_fmap_61[7:0]) +
	( 16'sd 16676) * $signed(input_fmap_62[7:0]) +
	( 16'sd 26802) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_23;
assign conv_mac_23 = 
	( 15'sd 12965) * $signed(input_fmap_0[7:0]) +
	( 16'sd 30445) * $signed(input_fmap_1[7:0]) +
	( 13'sd 3685) * $signed(input_fmap_2[7:0]) +
	( 14'sd 7020) * $signed(input_fmap_3[7:0]) +
	( 15'sd 14528) * $signed(input_fmap_4[7:0]) +
	( 13'sd 3804) * $signed(input_fmap_5[7:0]) +
	( 14'sd 4345) * $signed(input_fmap_6[7:0]) +
	( 16'sd 17502) * $signed(input_fmap_7[7:0]) +
	( 16'sd 19979) * $signed(input_fmap_8[7:0]) +
	( 15'sd 9463) * $signed(input_fmap_9[7:0]) +
	( 15'sd 10158) * $signed(input_fmap_10[7:0]) +
	( 14'sd 7018) * $signed(input_fmap_11[7:0]) +
	( 15'sd 14593) * $signed(input_fmap_12[7:0]) +
	( 15'sd 10914) * $signed(input_fmap_13[7:0]) +
	( 16'sd 27707) * $signed(input_fmap_14[7:0]) +
	( 12'sd 1331) * $signed(input_fmap_15[7:0]) +
	( 16'sd 19889) * $signed(input_fmap_16[7:0]) +
	( 16'sd 18051) * $signed(input_fmap_17[7:0]) +
	( 13'sd 3408) * $signed(input_fmap_18[7:0]) +
	( 16'sd 27415) * $signed(input_fmap_19[7:0]) +
	( 16'sd 31949) * $signed(input_fmap_20[7:0]) +
	( 16'sd 17959) * $signed(input_fmap_21[7:0]) +
	( 15'sd 12920) * $signed(input_fmap_22[7:0]) +
	( 14'sd 6468) * $signed(input_fmap_23[7:0]) +
	( 16'sd 27309) * $signed(input_fmap_24[7:0]) +
	( 16'sd 29571) * $signed(input_fmap_25[7:0]) +
	( 16'sd 22674) * $signed(input_fmap_26[7:0]) +
	( 16'sd 26076) * $signed(input_fmap_27[7:0]) +
	( 15'sd 15428) * $signed(input_fmap_28[7:0]) +
	( 14'sd 7925) * $signed(input_fmap_29[7:0]) +
	( 16'sd 23215) * $signed(input_fmap_30[7:0]) +
	( 16'sd 20330) * $signed(input_fmap_31[7:0]) +
	( 16'sd 19748) * $signed(input_fmap_32[7:0]) +
	( 16'sd 29333) * $signed(input_fmap_33[7:0]) +
	( 13'sd 3244) * $signed(input_fmap_34[7:0]) +
	( 15'sd 13887) * $signed(input_fmap_35[7:0]) +
	( 16'sd 31472) * $signed(input_fmap_36[7:0]) +
	( 11'sd 646) * $signed(input_fmap_37[7:0]) +
	( 14'sd 7736) * $signed(input_fmap_38[7:0]) +
	( 15'sd 13110) * $signed(input_fmap_39[7:0]) +
	( 13'sd 2897) * $signed(input_fmap_40[7:0]) +
	( 13'sd 2948) * $signed(input_fmap_41[7:0]) +
	( 15'sd 12375) * $signed(input_fmap_42[7:0]) +
	( 16'sd 21706) * $signed(input_fmap_43[7:0]) +
	( 16'sd 27399) * $signed(input_fmap_44[7:0]) +
	( 14'sd 7789) * $signed(input_fmap_45[7:0]) +
	( 14'sd 7432) * $signed(input_fmap_46[7:0]) +
	( 16'sd 23837) * $signed(input_fmap_47[7:0]) +
	( 16'sd 26325) * $signed(input_fmap_48[7:0]) +
	( 16'sd 19422) * $signed(input_fmap_49[7:0]) +
	( 11'sd 673) * $signed(input_fmap_50[7:0]) +
	( 16'sd 28338) * $signed(input_fmap_51[7:0]) +
	( 16'sd 17760) * $signed(input_fmap_52[7:0]) +
	( 11'sd 595) * $signed(input_fmap_53[7:0]) +
	( 16'sd 22028) * $signed(input_fmap_54[7:0]) +
	( 15'sd 15105) * $signed(input_fmap_55[7:0]) +
	( 16'sd 31214) * $signed(input_fmap_56[7:0]) +
	( 16'sd 23167) * $signed(input_fmap_57[7:0]) +
	( 11'sd 599) * $signed(input_fmap_58[7:0]) +
	( 16'sd 19270) * $signed(input_fmap_59[7:0]) +
	( 14'sd 7572) * $signed(input_fmap_60[7:0]) +
	( 15'sd 9690) * $signed(input_fmap_61[7:0]) +
	( 11'sd 531) * $signed(input_fmap_62[7:0]) +
	( 14'sd 7211) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_24;
assign conv_mac_24 = 
	( 16'sd 25548) * $signed(input_fmap_0[7:0]) +
	( 14'sd 4212) * $signed(input_fmap_1[7:0]) +
	( 15'sd 13922) * $signed(input_fmap_2[7:0]) +
	( 16'sd 20429) * $signed(input_fmap_3[7:0]) +
	( 16'sd 29519) * $signed(input_fmap_4[7:0]) +
	( 16'sd 28670) * $signed(input_fmap_5[7:0]) +
	( 15'sd 16012) * $signed(input_fmap_6[7:0]) +
	( 15'sd 16003) * $signed(input_fmap_7[7:0]) +
	( 16'sd 26749) * $signed(input_fmap_8[7:0]) +
	( 16'sd 18527) * $signed(input_fmap_9[7:0]) +
	( 14'sd 7080) * $signed(input_fmap_10[7:0]) +
	( 13'sd 3080) * $signed(input_fmap_11[7:0]) +
	( 16'sd 27112) * $signed(input_fmap_12[7:0]) +
	( 16'sd 21181) * $signed(input_fmap_13[7:0]) +
	( 16'sd 17325) * $signed(input_fmap_14[7:0]) +
	( 16'sd 21582) * $signed(input_fmap_15[7:0]) +
	( 15'sd 9534) * $signed(input_fmap_16[7:0]) +
	( 14'sd 6687) * $signed(input_fmap_17[7:0]) +
	( 15'sd 12324) * $signed(input_fmap_18[7:0]) +
	( 16'sd 25263) * $signed(input_fmap_19[7:0]) +
	( 14'sd 6021) * $signed(input_fmap_20[7:0]) +
	( 16'sd 17793) * $signed(input_fmap_21[7:0]) +
	( 16'sd 26997) * $signed(input_fmap_22[7:0]) +
	( 15'sd 11299) * $signed(input_fmap_23[7:0]) +
	( 16'sd 22453) * $signed(input_fmap_24[7:0]) +
	( 16'sd 27732) * $signed(input_fmap_25[7:0]) +
	( 16'sd 31901) * $signed(input_fmap_26[7:0]) +
	( 16'sd 24018) * $signed(input_fmap_27[7:0]) +
	( 15'sd 11088) * $signed(input_fmap_28[7:0]) +
	( 14'sd 7630) * $signed(input_fmap_29[7:0]) +
	( 16'sd 26248) * $signed(input_fmap_30[7:0]) +
	( 16'sd 23872) * $signed(input_fmap_31[7:0]) +
	( 16'sd 31871) * $signed(input_fmap_32[7:0]) +
	( 16'sd 24365) * $signed(input_fmap_33[7:0]) +
	( 16'sd 22619) * $signed(input_fmap_34[7:0]) +
	( 13'sd 2542) * $signed(input_fmap_35[7:0]) +
	( 15'sd 10672) * $signed(input_fmap_36[7:0]) +
	( 16'sd 19419) * $signed(input_fmap_37[7:0]) +
	( 16'sd 25000) * $signed(input_fmap_38[7:0]) +
	( 16'sd 25965) * $signed(input_fmap_39[7:0]) +
	( 15'sd 13758) * $signed(input_fmap_40[7:0]) +
	( 16'sd 28278) * $signed(input_fmap_41[7:0]) +
	( 16'sd 31601) * $signed(input_fmap_42[7:0]) +
	( 12'sd 1198) * $signed(input_fmap_43[7:0]) +
	( 15'sd 14469) * $signed(input_fmap_44[7:0]) +
	( 12'sd 1163) * $signed(input_fmap_45[7:0]) +
	( 14'sd 4642) * $signed(input_fmap_46[7:0]) +
	( 16'sd 21174) * $signed(input_fmap_47[7:0]) +
	( 16'sd 30425) * $signed(input_fmap_48[7:0]) +
	( 12'sd 1932) * $signed(input_fmap_49[7:0]) +
	( 15'sd 14456) * $signed(input_fmap_50[7:0]) +
	( 15'sd 13545) * $signed(input_fmap_51[7:0]) +
	( 16'sd 30182) * $signed(input_fmap_52[7:0]) +
	( 16'sd 28287) * $signed(input_fmap_53[7:0]) +
	( 16'sd 23482) * $signed(input_fmap_54[7:0]) +
	( 15'sd 16324) * $signed(input_fmap_55[7:0]) +
	( 15'sd 11200) * $signed(input_fmap_56[7:0]) +
	( 13'sd 2668) * $signed(input_fmap_57[7:0]) +
	( 16'sd 16904) * $signed(input_fmap_58[7:0]) +
	( 16'sd 28108) * $signed(input_fmap_59[7:0]) +
	( 16'sd 21111) * $signed(input_fmap_60[7:0]) +
	( 15'sd 15982) * $signed(input_fmap_61[7:0]) +
	( 16'sd 26918) * $signed(input_fmap_62[7:0]) +
	( 15'sd 12251) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_25;
assign conv_mac_25 = 
	( 14'sd 4424) * $signed(input_fmap_0[7:0]) +
	( 10'sd 494) * $signed(input_fmap_1[7:0]) +
	( 16'sd 20287) * $signed(input_fmap_2[7:0]) +
	( 14'sd 5670) * $signed(input_fmap_3[7:0]) +
	( 13'sd 2982) * $signed(input_fmap_4[7:0]) +
	( 16'sd 26009) * $signed(input_fmap_5[7:0]) +
	( 16'sd 19257) * $signed(input_fmap_6[7:0]) +
	( 13'sd 3516) * $signed(input_fmap_7[7:0]) +
	( 13'sd 3133) * $signed(input_fmap_8[7:0]) +
	( 16'sd 23318) * $signed(input_fmap_9[7:0]) +
	( 16'sd 26721) * $signed(input_fmap_10[7:0]) +
	( 16'sd 27634) * $signed(input_fmap_11[7:0]) +
	( 13'sd 2749) * $signed(input_fmap_12[7:0]) +
	( 16'sd 18674) * $signed(input_fmap_13[7:0]) +
	( 16'sd 24564) * $signed(input_fmap_14[7:0]) +
	( 14'sd 7277) * $signed(input_fmap_15[7:0]) +
	( 16'sd 17401) * $signed(input_fmap_16[7:0]) +
	( 16'sd 17413) * $signed(input_fmap_17[7:0]) +
	( 14'sd 7672) * $signed(input_fmap_18[7:0]) +
	( 16'sd 25900) * $signed(input_fmap_19[7:0]) +
	( 16'sd 17501) * $signed(input_fmap_20[7:0]) +
	( 16'sd 26177) * $signed(input_fmap_21[7:0]) +
	( 15'sd 13184) * $signed(input_fmap_22[7:0]) +
	( 16'sd 26627) * $signed(input_fmap_23[7:0]) +
	( 15'sd 13676) * $signed(input_fmap_24[7:0]) +
	( 16'sd 21958) * $signed(input_fmap_25[7:0]) +
	( 14'sd 7364) * $signed(input_fmap_26[7:0]) +
	( 15'sd 15859) * $signed(input_fmap_27[7:0]) +
	( 13'sd 3831) * $signed(input_fmap_28[7:0]) +
	( 15'sd 8352) * $signed(input_fmap_29[7:0]) +
	( 11'sd 591) * $signed(input_fmap_30[7:0]) +
	( 16'sd 27544) * $signed(input_fmap_31[7:0]) +
	( 16'sd 31535) * $signed(input_fmap_32[7:0]) +
	( 15'sd 14985) * $signed(input_fmap_33[7:0]) +
	( 16'sd 30355) * $signed(input_fmap_34[7:0]) +
	( 14'sd 5206) * $signed(input_fmap_35[7:0]) +
	( 16'sd 25664) * $signed(input_fmap_36[7:0]) +
	( 10'sd 325) * $signed(input_fmap_37[7:0]) +
	( 16'sd 16450) * $signed(input_fmap_38[7:0]) +
	( 16'sd 24804) * $signed(input_fmap_39[7:0]) +
	( 16'sd 20007) * $signed(input_fmap_40[7:0]) +
	( 10'sd 410) * $signed(input_fmap_41[7:0]) +
	( 16'sd 22962) * $signed(input_fmap_42[7:0]) +
	( 11'sd 881) * $signed(input_fmap_43[7:0]) +
	( 16'sd 22857) * $signed(input_fmap_44[7:0]) +
	( 15'sd 10911) * $signed(input_fmap_45[7:0]) +
	( 14'sd 7359) * $signed(input_fmap_46[7:0]) +
	( 16'sd 23720) * $signed(input_fmap_47[7:0]) +
	( 16'sd 19332) * $signed(input_fmap_48[7:0]) +
	( 15'sd 14618) * $signed(input_fmap_49[7:0]) +
	( 15'sd 8714) * $signed(input_fmap_50[7:0]) +
	( 11'sd 912) * $signed(input_fmap_51[7:0]) +
	( 15'sd 10804) * $signed(input_fmap_52[7:0]) +
	( 15'sd 11254) * $signed(input_fmap_53[7:0]) +
	( 15'sd 13995) * $signed(input_fmap_54[7:0]) +
	( 15'sd 13199) * $signed(input_fmap_55[7:0]) +
	( 16'sd 20554) * $signed(input_fmap_56[7:0]) +
	( 14'sd 8150) * $signed(input_fmap_57[7:0]) +
	( 12'sd 1441) * $signed(input_fmap_58[7:0]) +
	( 16'sd 22042) * $signed(input_fmap_59[7:0]) +
	( 16'sd 25893) * $signed(input_fmap_60[7:0]) +
	( 16'sd 23827) * $signed(input_fmap_61[7:0]) +
	( 16'sd 21775) * $signed(input_fmap_62[7:0]) +
	( 16'sd 18453) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_26;
assign conv_mac_26 = 
	( 15'sd 15657) * $signed(input_fmap_0[7:0]) +
	( 15'sd 15960) * $signed(input_fmap_1[7:0]) +
	( 15'sd 11429) * $signed(input_fmap_2[7:0]) +
	( 16'sd 27746) * $signed(input_fmap_3[7:0]) +
	( 16'sd 20710) * $signed(input_fmap_4[7:0]) +
	( 16'sd 27158) * $signed(input_fmap_5[7:0]) +
	( 15'sd 10500) * $signed(input_fmap_6[7:0]) +
	( 16'sd 22199) * $signed(input_fmap_7[7:0]) +
	( 14'sd 5828) * $signed(input_fmap_8[7:0]) +
	( 15'sd 14638) * $signed(input_fmap_9[7:0]) +
	( 15'sd 16086) * $signed(input_fmap_10[7:0]) +
	( 16'sd 17790) * $signed(input_fmap_11[7:0]) +
	( 11'sd 679) * $signed(input_fmap_12[7:0]) +
	( 16'sd 18191) * $signed(input_fmap_13[7:0]) +
	( 16'sd 30610) * $signed(input_fmap_14[7:0]) +
	( 16'sd 20089) * $signed(input_fmap_15[7:0]) +
	( 4'sd 5) * $signed(input_fmap_16[7:0]) +
	( 16'sd 29367) * $signed(input_fmap_17[7:0]) +
	( 16'sd 28221) * $signed(input_fmap_18[7:0]) +
	( 15'sd 11535) * $signed(input_fmap_19[7:0]) +
	( 13'sd 2065) * $signed(input_fmap_20[7:0]) +
	( 16'sd 32240) * $signed(input_fmap_21[7:0]) +
	( 16'sd 18472) * $signed(input_fmap_22[7:0]) +
	( 15'sd 16347) * $signed(input_fmap_23[7:0]) +
	( 16'sd 23307) * $signed(input_fmap_24[7:0]) +
	( 13'sd 2722) * $signed(input_fmap_25[7:0]) +
	( 16'sd 16729) * $signed(input_fmap_26[7:0]) +
	( 16'sd 19205) * $signed(input_fmap_27[7:0]) +
	( 16'sd 16852) * $signed(input_fmap_28[7:0]) +
	( 14'sd 4879) * $signed(input_fmap_29[7:0]) +
	( 16'sd 32470) * $signed(input_fmap_30[7:0]) +
	( 16'sd 30802) * $signed(input_fmap_31[7:0]) +
	( 16'sd 30390) * $signed(input_fmap_32[7:0]) +
	( 14'sd 7919) * $signed(input_fmap_33[7:0]) +
	( 15'sd 11720) * $signed(input_fmap_34[7:0]) +
	( 16'sd 32424) * $signed(input_fmap_35[7:0]) +
	( 16'sd 30406) * $signed(input_fmap_36[7:0]) +
	( 16'sd 28438) * $signed(input_fmap_37[7:0]) +
	( 16'sd 28807) * $signed(input_fmap_38[7:0]) +
	( 15'sd 12349) * $signed(input_fmap_39[7:0]) +
	( 15'sd 9604) * $signed(input_fmap_40[7:0]) +
	( 13'sd 4032) * $signed(input_fmap_41[7:0]) +
	( 16'sd 32765) * $signed(input_fmap_42[7:0]) +
	( 16'sd 26866) * $signed(input_fmap_43[7:0]) +
	( 15'sd 16317) * $signed(input_fmap_44[7:0]) +
	( 13'sd 2317) * $signed(input_fmap_45[7:0]) +
	( 15'sd 8659) * $signed(input_fmap_46[7:0]) +
	( 16'sd 25167) * $signed(input_fmap_47[7:0]) +
	( 14'sd 4112) * $signed(input_fmap_48[7:0]) +
	( 16'sd 20489) * $signed(input_fmap_49[7:0]) +
	( 15'sd 15221) * $signed(input_fmap_50[7:0]) +
	( 11'sd 737) * $signed(input_fmap_51[7:0]) +
	( 16'sd 23488) * $signed(input_fmap_52[7:0]) +
	( 15'sd 12099) * $signed(input_fmap_53[7:0]) +
	( 15'sd 11191) * $signed(input_fmap_54[7:0]) +
	( 16'sd 21738) * $signed(input_fmap_55[7:0]) +
	( 16'sd 24638) * $signed(input_fmap_56[7:0]) +
	( 16'sd 21343) * $signed(input_fmap_57[7:0]) +
	( 15'sd 13773) * $signed(input_fmap_58[7:0]) +
	( 16'sd 18704) * $signed(input_fmap_59[7:0]) +
	( 16'sd 28977) * $signed(input_fmap_60[7:0]) +
	( 16'sd 21899) * $signed(input_fmap_61[7:0]) +
	( 16'sd 26099) * $signed(input_fmap_62[7:0]) +
	( 16'sd 21260) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_27;
assign conv_mac_27 = 
	( 16'sd 28241) * $signed(input_fmap_0[7:0]) +
	( 16'sd 32651) * $signed(input_fmap_1[7:0]) +
	( 15'sd 8250) * $signed(input_fmap_2[7:0]) +
	( 16'sd 24061) * $signed(input_fmap_3[7:0]) +
	( 12'sd 1081) * $signed(input_fmap_4[7:0]) +
	( 16'sd 17052) * $signed(input_fmap_5[7:0]) +
	( 16'sd 31594) * $signed(input_fmap_6[7:0]) +
	( 14'sd 4644) * $signed(input_fmap_7[7:0]) +
	( 15'sd 11123) * $signed(input_fmap_8[7:0]) +
	( 14'sd 5258) * $signed(input_fmap_9[7:0]) +
	( 16'sd 32240) * $signed(input_fmap_10[7:0]) +
	( 16'sd 18624) * $signed(input_fmap_11[7:0]) +
	( 15'sd 16183) * $signed(input_fmap_12[7:0]) +
	( 16'sd 21822) * $signed(input_fmap_13[7:0]) +
	( 16'sd 28586) * $signed(input_fmap_14[7:0]) +
	( 15'sd 9666) * $signed(input_fmap_15[7:0]) +
	( 16'sd 28648) * $signed(input_fmap_16[7:0]) +
	( 16'sd 23958) * $signed(input_fmap_17[7:0]) +
	( 16'sd 30841) * $signed(input_fmap_18[7:0]) +
	( 16'sd 32477) * $signed(input_fmap_19[7:0]) +
	( 15'sd 9711) * $signed(input_fmap_20[7:0]) +
	( 16'sd 25522) * $signed(input_fmap_21[7:0]) +
	( 15'sd 14935) * $signed(input_fmap_22[7:0]) +
	( 15'sd 15390) * $signed(input_fmap_23[7:0]) +
	( 16'sd 28682) * $signed(input_fmap_24[7:0]) +
	( 16'sd 28453) * $signed(input_fmap_25[7:0]) +
	( 12'sd 1629) * $signed(input_fmap_26[7:0]) +
	( 16'sd 23237) * $signed(input_fmap_27[7:0]) +
	( 14'sd 7960) * $signed(input_fmap_28[7:0]) +
	( 16'sd 28148) * $signed(input_fmap_29[7:0]) +
	( 16'sd 31288) * $signed(input_fmap_30[7:0]) +
	( 15'sd 9065) * $signed(input_fmap_31[7:0]) +
	( 14'sd 8055) * $signed(input_fmap_32[7:0]) +
	( 16'sd 17872) * $signed(input_fmap_33[7:0]) +
	( 16'sd 21364) * $signed(input_fmap_34[7:0]) +
	( 16'sd 20996) * $signed(input_fmap_35[7:0]) +
	( 7'sd 39) * $signed(input_fmap_36[7:0]) +
	( 15'sd 9011) * $signed(input_fmap_37[7:0]) +
	( 16'sd 26638) * $signed(input_fmap_38[7:0]) +
	( 15'sd 15943) * $signed(input_fmap_39[7:0]) +
	( 13'sd 3209) * $signed(input_fmap_40[7:0]) +
	( 13'sd 2578) * $signed(input_fmap_41[7:0]) +
	( 14'sd 5732) * $signed(input_fmap_42[7:0]) +
	( 15'sd 15832) * $signed(input_fmap_43[7:0]) +
	( 9'sd 150) * $signed(input_fmap_44[7:0]) +
	( 15'sd 13541) * $signed(input_fmap_45[7:0]) +
	( 13'sd 3300) * $signed(input_fmap_46[7:0]) +
	( 16'sd 21079) * $signed(input_fmap_47[7:0]) +
	( 16'sd 24239) * $signed(input_fmap_48[7:0]) +
	( 16'sd 26838) * $signed(input_fmap_49[7:0]) +
	( 15'sd 9302) * $signed(input_fmap_50[7:0]) +
	( 15'sd 12762) * $signed(input_fmap_51[7:0]) +
	( 11'sd 928) * $signed(input_fmap_52[7:0]) +
	( 14'sd 4626) * $signed(input_fmap_53[7:0]) +
	( 16'sd 26845) * $signed(input_fmap_54[7:0]) +
	( 16'sd 17245) * $signed(input_fmap_55[7:0]) +
	( 15'sd 13985) * $signed(input_fmap_56[7:0]) +
	( 14'sd 7430) * $signed(input_fmap_57[7:0]) +
	( 14'sd 6583) * $signed(input_fmap_58[7:0]) +
	( 12'sd 1383) * $signed(input_fmap_59[7:0]) +
	( 15'sd 14447) * $signed(input_fmap_60[7:0]) +
	( 13'sd 3352) * $signed(input_fmap_61[7:0]) +
	( 16'sd 23577) * $signed(input_fmap_62[7:0]) +
	( 16'sd 28502) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_28;
assign conv_mac_28 = 
	( 15'sd 10036) * $signed(input_fmap_0[7:0]) +
	( 9'sd 225) * $signed(input_fmap_1[7:0]) +
	( 16'sd 19540) * $signed(input_fmap_2[7:0]) +
	( 16'sd 16873) * $signed(input_fmap_3[7:0]) +
	( 15'sd 12397) * $signed(input_fmap_4[7:0]) +
	( 14'sd 8077) * $signed(input_fmap_5[7:0]) +
	( 15'sd 9913) * $signed(input_fmap_6[7:0]) +
	( 13'sd 2221) * $signed(input_fmap_7[7:0]) +
	( 15'sd 10355) * $signed(input_fmap_8[7:0]) +
	( 16'sd 24707) * $signed(input_fmap_9[7:0]) +
	( 15'sd 12382) * $signed(input_fmap_10[7:0]) +
	( 16'sd 31529) * $signed(input_fmap_11[7:0]) +
	( 16'sd 29631) * $signed(input_fmap_12[7:0]) +
	( 16'sd 23944) * $signed(input_fmap_13[7:0]) +
	( 16'sd 19877) * $signed(input_fmap_14[7:0]) +
	( 15'sd 13827) * $signed(input_fmap_15[7:0]) +
	( 14'sd 8160) * $signed(input_fmap_16[7:0]) +
	( 15'sd 13417) * $signed(input_fmap_17[7:0]) +
	( 16'sd 18257) * $signed(input_fmap_18[7:0]) +
	( 15'sd 9467) * $signed(input_fmap_19[7:0]) +
	( 16'sd 29341) * $signed(input_fmap_20[7:0]) +
	( 16'sd 31788) * $signed(input_fmap_21[7:0]) +
	( 16'sd 23227) * $signed(input_fmap_22[7:0]) +
	( 16'sd 21088) * $signed(input_fmap_23[7:0]) +
	( 15'sd 14886) * $signed(input_fmap_24[7:0]) +
	( 14'sd 5037) * $signed(input_fmap_25[7:0]) +
	( 15'sd 11870) * $signed(input_fmap_26[7:0]) +
	( 16'sd 20295) * $signed(input_fmap_27[7:0]) +
	( 15'sd 11637) * $signed(input_fmap_28[7:0]) +
	( 15'sd 8631) * $signed(input_fmap_29[7:0]) +
	( 14'sd 6695) * $signed(input_fmap_30[7:0]) +
	( 16'sd 21909) * $signed(input_fmap_31[7:0]) +
	( 16'sd 21374) * $signed(input_fmap_32[7:0]) +
	( 14'sd 4869) * $signed(input_fmap_33[7:0]) +
	( 16'sd 31409) * $signed(input_fmap_34[7:0]) +
	( 16'sd 22177) * $signed(input_fmap_35[7:0]) +
	( 16'sd 28625) * $signed(input_fmap_36[7:0]) +
	( 13'sd 3644) * $signed(input_fmap_37[7:0]) +
	( 15'sd 8667) * $signed(input_fmap_38[7:0]) +
	( 13'sd 2129) * $signed(input_fmap_39[7:0]) +
	( 16'sd 19255) * $signed(input_fmap_40[7:0]) +
	( 16'sd 28482) * $signed(input_fmap_41[7:0]) +
	( 13'sd 3381) * $signed(input_fmap_42[7:0]) +
	( 16'sd 29239) * $signed(input_fmap_43[7:0]) +
	( 16'sd 23688) * $signed(input_fmap_44[7:0]) +
	( 16'sd 21600) * $signed(input_fmap_45[7:0]) +
	( 16'sd 27516) * $signed(input_fmap_46[7:0]) +
	( 11'sd 742) * $signed(input_fmap_47[7:0]) +
	( 8'sd 97) * $signed(input_fmap_48[7:0]) +
	( 14'sd 4709) * $signed(input_fmap_49[7:0]) +
	( 16'sd 22421) * $signed(input_fmap_50[7:0]) +
	( 13'sd 2408) * $signed(input_fmap_51[7:0]) +
	( 14'sd 7021) * $signed(input_fmap_52[7:0]) +
	( 15'sd 12230) * $signed(input_fmap_53[7:0]) +
	( 16'sd 32134) * $signed(input_fmap_54[7:0]) +
	( 16'sd 29713) * $signed(input_fmap_55[7:0]) +
	( 13'sd 2915) * $signed(input_fmap_56[7:0]) +
	( 16'sd 28943) * $signed(input_fmap_57[7:0]) +
	( 15'sd 13293) * $signed(input_fmap_58[7:0]) +
	( 16'sd 25261) * $signed(input_fmap_59[7:0]) +
	( 15'sd 13933) * $signed(input_fmap_60[7:0]) +
	( 16'sd 26990) * $signed(input_fmap_61[7:0]) +
	( 15'sd 14390) * $signed(input_fmap_62[7:0]) +
	( 16'sd 18815) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_29;
assign conv_mac_29 = 
	( 16'sd 28631) * $signed(input_fmap_0[7:0]) +
	( 16'sd 30373) * $signed(input_fmap_1[7:0]) +
	( 16'sd 16645) * $signed(input_fmap_2[7:0]) +
	( 15'sd 9446) * $signed(input_fmap_3[7:0]) +
	( 16'sd 23869) * $signed(input_fmap_4[7:0]) +
	( 14'sd 6214) * $signed(input_fmap_5[7:0]) +
	( 16'sd 21697) * $signed(input_fmap_6[7:0]) +
	( 16'sd 24535) * $signed(input_fmap_7[7:0]) +
	( 16'sd 21537) * $signed(input_fmap_8[7:0]) +
	( 16'sd 32655) * $signed(input_fmap_9[7:0]) +
	( 15'sd 8692) * $signed(input_fmap_10[7:0]) +
	( 15'sd 11313) * $signed(input_fmap_11[7:0]) +
	( 16'sd 21606) * $signed(input_fmap_12[7:0]) +
	( 16'sd 28541) * $signed(input_fmap_13[7:0]) +
	( 16'sd 18584) * $signed(input_fmap_14[7:0]) +
	( 16'sd 21810) * $signed(input_fmap_15[7:0]) +
	( 11'sd 860) * $signed(input_fmap_16[7:0]) +
	( 16'sd 25556) * $signed(input_fmap_17[7:0]) +
	( 16'sd 29325) * $signed(input_fmap_18[7:0]) +
	( 16'sd 21958) * $signed(input_fmap_19[7:0]) +
	( 14'sd 6822) * $signed(input_fmap_20[7:0]) +
	( 15'sd 14527) * $signed(input_fmap_21[7:0]) +
	( 14'sd 8059) * $signed(input_fmap_22[7:0]) +
	( 16'sd 18395) * $signed(input_fmap_23[7:0]) +
	( 13'sd 2062) * $signed(input_fmap_24[7:0]) +
	( 16'sd 30618) * $signed(input_fmap_25[7:0]) +
	( 14'sd 4931) * $signed(input_fmap_26[7:0]) +
	( 16'sd 29384) * $signed(input_fmap_27[7:0]) +
	( 16'sd 23603) * $signed(input_fmap_28[7:0]) +
	( 16'sd 19462) * $signed(input_fmap_29[7:0]) +
	( 16'sd 31467) * $signed(input_fmap_30[7:0]) +
	( 16'sd 29633) * $signed(input_fmap_31[7:0]) +
	( 16'sd 17676) * $signed(input_fmap_32[7:0]) +
	( 16'sd 17733) * $signed(input_fmap_33[7:0]) +
	( 15'sd 15079) * $signed(input_fmap_34[7:0]) +
	( 15'sd 12817) * $signed(input_fmap_35[7:0]) +
	( 16'sd 17072) * $signed(input_fmap_36[7:0]) +
	( 16'sd 20957) * $signed(input_fmap_37[7:0]) +
	( 15'sd 13412) * $signed(input_fmap_38[7:0]) +
	( 14'sd 5310) * $signed(input_fmap_39[7:0]) +
	( 16'sd 18414) * $signed(input_fmap_40[7:0]) +
	( 16'sd 21258) * $signed(input_fmap_41[7:0]) +
	( 16'sd 19805) * $signed(input_fmap_42[7:0]) +
	( 16'sd 24138) * $signed(input_fmap_43[7:0]) +
	( 16'sd 29893) * $signed(input_fmap_44[7:0]) +
	( 16'sd 29396) * $signed(input_fmap_45[7:0]) +
	( 10'sd 279) * $signed(input_fmap_46[7:0]) +
	( 16'sd 23381) * $signed(input_fmap_47[7:0]) +
	( 16'sd 24850) * $signed(input_fmap_48[7:0]) +
	( 13'sd 2668) * $signed(input_fmap_49[7:0]) +
	( 16'sd 22576) * $signed(input_fmap_50[7:0]) +
	( 16'sd 30732) * $signed(input_fmap_51[7:0]) +
	( 16'sd 24533) * $signed(input_fmap_52[7:0]) +
	( 12'sd 1601) * $signed(input_fmap_53[7:0]) +
	( 15'sd 11883) * $signed(input_fmap_54[7:0]) +
	( 16'sd 19708) * $signed(input_fmap_55[7:0]) +
	( 16'sd 25283) * $signed(input_fmap_56[7:0]) +
	( 9'sd 199) * $signed(input_fmap_57[7:0]) +
	( 15'sd 13962) * $signed(input_fmap_58[7:0]) +
	( 16'sd 24330) * $signed(input_fmap_59[7:0]) +
	( 14'sd 5510) * $signed(input_fmap_60[7:0]) +
	( 16'sd 28767) * $signed(input_fmap_61[7:0]) +
	( 16'sd 19513) * $signed(input_fmap_62[7:0]) +
	( 13'sd 2610) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_30;
assign conv_mac_30 = 
	( 16'sd 29481) * $signed(input_fmap_0[7:0]) +
	( 16'sd 23326) * $signed(input_fmap_1[7:0]) +
	( 16'sd 24019) * $signed(input_fmap_2[7:0]) +
	( 15'sd 8229) * $signed(input_fmap_3[7:0]) +
	( 15'sd 11117) * $signed(input_fmap_4[7:0]) +
	( 15'sd 12100) * $signed(input_fmap_5[7:0]) +
	( 16'sd 23993) * $signed(input_fmap_6[7:0]) +
	( 15'sd 10562) * $signed(input_fmap_7[7:0]) +
	( 13'sd 2376) * $signed(input_fmap_8[7:0]) +
	( 15'sd 15183) * $signed(input_fmap_9[7:0]) +
	( 10'sd 301) * $signed(input_fmap_10[7:0]) +
	( 16'sd 22728) * $signed(input_fmap_11[7:0]) +
	( 15'sd 14204) * $signed(input_fmap_12[7:0]) +
	( 16'sd 16734) * $signed(input_fmap_13[7:0]) +
	( 16'sd 21112) * $signed(input_fmap_14[7:0]) +
	( 16'sd 19126) * $signed(input_fmap_15[7:0]) +
	( 16'sd 28469) * $signed(input_fmap_16[7:0]) +
	( 16'sd 18637) * $signed(input_fmap_17[7:0]) +
	( 16'sd 31774) * $signed(input_fmap_18[7:0]) +
	( 16'sd 27838) * $signed(input_fmap_19[7:0]) +
	( 16'sd 22886) * $signed(input_fmap_20[7:0]) +
	( 16'sd 22990) * $signed(input_fmap_21[7:0]) +
	( 15'sd 9214) * $signed(input_fmap_22[7:0]) +
	( 14'sd 7664) * $signed(input_fmap_23[7:0]) +
	( 16'sd 21209) * $signed(input_fmap_24[7:0]) +
	( 16'sd 21665) * $signed(input_fmap_25[7:0]) +
	( 12'sd 1653) * $signed(input_fmap_26[7:0]) +
	( 15'sd 9608) * $signed(input_fmap_27[7:0]) +
	( 15'sd 14002) * $signed(input_fmap_28[7:0]) +
	( 16'sd 22435) * $signed(input_fmap_29[7:0]) +
	( 15'sd 12678) * $signed(input_fmap_30[7:0]) +
	( 14'sd 7776) * $signed(input_fmap_31[7:0]) +
	( 13'sd 2902) * $signed(input_fmap_32[7:0]) +
	( 15'sd 9465) * $signed(input_fmap_33[7:0]) +
	( 16'sd 28996) * $signed(input_fmap_34[7:0]) +
	( 15'sd 14443) * $signed(input_fmap_35[7:0]) +
	( 15'sd 10830) * $signed(input_fmap_36[7:0]) +
	( 16'sd 28175) * $signed(input_fmap_37[7:0]) +
	( 16'sd 22257) * $signed(input_fmap_38[7:0]) +
	( 15'sd 9530) * $signed(input_fmap_39[7:0]) +
	( 14'sd 8058) * $signed(input_fmap_40[7:0]) +
	( 16'sd 28676) * $signed(input_fmap_41[7:0]) +
	( 16'sd 28721) * $signed(input_fmap_42[7:0]) +
	( 15'sd 16266) * $signed(input_fmap_43[7:0]) +
	( 16'sd 18798) * $signed(input_fmap_44[7:0]) +
	( 16'sd 25873) * $signed(input_fmap_45[7:0]) +
	( 16'sd 23105) * $signed(input_fmap_46[7:0]) +
	( 16'sd 19437) * $signed(input_fmap_47[7:0]) +
	( 13'sd 3994) * $signed(input_fmap_48[7:0]) +
	( 13'sd 2075) * $signed(input_fmap_49[7:0]) +
	( 13'sd 3794) * $signed(input_fmap_50[7:0]) +
	( 15'sd 16252) * $signed(input_fmap_51[7:0]) +
	( 16'sd 23082) * $signed(input_fmap_52[7:0]) +
	( 15'sd 9712) * $signed(input_fmap_53[7:0]) +
	( 16'sd 30291) * $signed(input_fmap_54[7:0]) +
	( 13'sd 3898) * $signed(input_fmap_55[7:0]) +
	( 16'sd 18285) * $signed(input_fmap_56[7:0]) +
	( 16'sd 17556) * $signed(input_fmap_57[7:0]) +
	( 12'sd 1154) * $signed(input_fmap_58[7:0]) +
	( 16'sd 16981) * $signed(input_fmap_59[7:0]) +
	( 16'sd 17263) * $signed(input_fmap_60[7:0]) +
	( 13'sd 2337) * $signed(input_fmap_61[7:0]) +
	( 16'sd 24724) * $signed(input_fmap_62[7:0]) +
	( 16'sd 24214) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_31;
assign conv_mac_31 = 
	( 16'sd 19911) * $signed(input_fmap_0[7:0]) +
	( 16'sd 18195) * $signed(input_fmap_1[7:0]) +
	( 16'sd 32592) * $signed(input_fmap_2[7:0]) +
	( 14'sd 5855) * $signed(input_fmap_3[7:0]) +
	( 15'sd 13259) * $signed(input_fmap_4[7:0]) +
	( 16'sd 27552) * $signed(input_fmap_5[7:0]) +
	( 16'sd 25745) * $signed(input_fmap_6[7:0]) +
	( 15'sd 13662) * $signed(input_fmap_7[7:0]) +
	( 16'sd 29504) * $signed(input_fmap_8[7:0]) +
	( 16'sd 19804) * $signed(input_fmap_9[7:0]) +
	( 16'sd 21904) * $signed(input_fmap_10[7:0]) +
	( 16'sd 29725) * $signed(input_fmap_11[7:0]) +
	( 16'sd 23567) * $signed(input_fmap_12[7:0]) +
	( 16'sd 19797) * $signed(input_fmap_13[7:0]) +
	( 16'sd 25616) * $signed(input_fmap_14[7:0]) +
	( 16'sd 22331) * $signed(input_fmap_15[7:0]) +
	( 13'sd 3941) * $signed(input_fmap_16[7:0]) +
	( 16'sd 19142) * $signed(input_fmap_17[7:0]) +
	( 16'sd 17112) * $signed(input_fmap_18[7:0]) +
	( 16'sd 24523) * $signed(input_fmap_19[7:0]) +
	( 16'sd 23127) * $signed(input_fmap_20[7:0]) +
	( 15'sd 12322) * $signed(input_fmap_21[7:0]) +
	( 16'sd 18476) * $signed(input_fmap_22[7:0]) +
	( 15'sd 15518) * $signed(input_fmap_23[7:0]) +
	( 16'sd 27684) * $signed(input_fmap_24[7:0]) +
	( 15'sd 11250) * $signed(input_fmap_25[7:0]) +
	( 15'sd 10660) * $signed(input_fmap_26[7:0]) +
	( 15'sd 15454) * $signed(input_fmap_27[7:0]) +
	( 15'sd 16068) * $signed(input_fmap_28[7:0]) +
	( 14'sd 6507) * $signed(input_fmap_29[7:0]) +
	( 16'sd 17801) * $signed(input_fmap_30[7:0]) +
	( 15'sd 10285) * $signed(input_fmap_31[7:0]) +
	( 16'sd 28435) * $signed(input_fmap_32[7:0]) +
	( 16'sd 22811) * $signed(input_fmap_33[7:0]) +
	( 15'sd 13331) * $signed(input_fmap_34[7:0]) +
	( 15'sd 14900) * $signed(input_fmap_35[7:0]) +
	( 15'sd 16091) * $signed(input_fmap_36[7:0]) +
	( 16'sd 24497) * $signed(input_fmap_37[7:0]) +
	( 12'sd 1339) * $signed(input_fmap_38[7:0]) +
	( 16'sd 32456) * $signed(input_fmap_39[7:0]) +
	( 16'sd 25128) * $signed(input_fmap_40[7:0]) +
	( 15'sd 14863) * $signed(input_fmap_41[7:0]) +
	( 16'sd 19037) * $signed(input_fmap_42[7:0]) +
	( 14'sd 7564) * $signed(input_fmap_43[7:0]) +
	( 12'sd 1871) * $signed(input_fmap_44[7:0]) +
	( 16'sd 19939) * $signed(input_fmap_45[7:0]) +
	( 16'sd 24703) * $signed(input_fmap_46[7:0]) +
	( 16'sd 26951) * $signed(input_fmap_47[7:0]) +
	( 16'sd 30840) * $signed(input_fmap_48[7:0]) +
	( 16'sd 19435) * $signed(input_fmap_49[7:0]) +
	( 12'sd 1386) * $signed(input_fmap_50[7:0]) +
	( 14'sd 7344) * $signed(input_fmap_51[7:0]) +
	( 16'sd 21931) * $signed(input_fmap_52[7:0]) +
	( 16'sd 18497) * $signed(input_fmap_53[7:0]) +
	( 16'sd 18105) * $signed(input_fmap_54[7:0]) +
	( 14'sd 7418) * $signed(input_fmap_55[7:0]) +
	( 16'sd 20123) * $signed(input_fmap_56[7:0]) +
	( 16'sd 25872) * $signed(input_fmap_57[7:0]) +
	( 16'sd 20641) * $signed(input_fmap_58[7:0]) +
	( 14'sd 7913) * $signed(input_fmap_59[7:0]) +
	( 15'sd 10866) * $signed(input_fmap_60[7:0]) +
	( 16'sd 18889) * $signed(input_fmap_61[7:0]) +
	( 15'sd 8378) * $signed(input_fmap_62[7:0]) +
	( 16'sd 25237) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_32;
assign conv_mac_32 = 
	( 15'sd 13415) * $signed(input_fmap_0[7:0]) +
	( 16'sd 26689) * $signed(input_fmap_1[7:0]) +
	( 16'sd 29808) * $signed(input_fmap_2[7:0]) +
	( 15'sd 13241) * $signed(input_fmap_3[7:0]) +
	( 15'sd 15644) * $signed(input_fmap_4[7:0]) +
	( 16'sd 23001) * $signed(input_fmap_5[7:0]) +
	( 16'sd 18537) * $signed(input_fmap_6[7:0]) +
	( 16'sd 25133) * $signed(input_fmap_7[7:0]) +
	( 16'sd 28666) * $signed(input_fmap_8[7:0]) +
	( 14'sd 5450) * $signed(input_fmap_9[7:0]) +
	( 13'sd 3790) * $signed(input_fmap_10[7:0]) +
	( 16'sd 17868) * $signed(input_fmap_11[7:0]) +
	( 14'sd 6311) * $signed(input_fmap_12[7:0]) +
	( 16'sd 26654) * $signed(input_fmap_13[7:0]) +
	( 15'sd 13896) * $signed(input_fmap_14[7:0]) +
	( 16'sd 29676) * $signed(input_fmap_15[7:0]) +
	( 14'sd 5391) * $signed(input_fmap_16[7:0]) +
	( 16'sd 32214) * $signed(input_fmap_17[7:0]) +
	( 15'sd 12627) * $signed(input_fmap_18[7:0]) +
	( 15'sd 9062) * $signed(input_fmap_19[7:0]) +
	( 12'sd 1541) * $signed(input_fmap_20[7:0]) +
	( 16'sd 29818) * $signed(input_fmap_21[7:0]) +
	( 16'sd 32110) * $signed(input_fmap_22[7:0]) +
	( 16'sd 17030) * $signed(input_fmap_23[7:0]) +
	( 14'sd 7890) * $signed(input_fmap_24[7:0]) +
	( 16'sd 26534) * $signed(input_fmap_25[7:0]) +
	( 16'sd 17287) * $signed(input_fmap_26[7:0]) +
	( 15'sd 11345) * $signed(input_fmap_27[7:0]) +
	( 16'sd 17917) * $signed(input_fmap_28[7:0]) +
	( 14'sd 8072) * $signed(input_fmap_29[7:0]) +
	( 16'sd 25093) * $signed(input_fmap_30[7:0]) +
	( 16'sd 17204) * $signed(input_fmap_31[7:0]) +
	( 15'sd 12979) * $signed(input_fmap_32[7:0]) +
	( 15'sd 11702) * $signed(input_fmap_33[7:0]) +
	( 16'sd 30015) * $signed(input_fmap_34[7:0]) +
	( 13'sd 3112) * $signed(input_fmap_35[7:0]) +
	( 16'sd 20663) * $signed(input_fmap_36[7:0]) +
	( 13'sd 4021) * $signed(input_fmap_37[7:0]) +
	( 15'sd 12371) * $signed(input_fmap_38[7:0]) +
	( 13'sd 2807) * $signed(input_fmap_39[7:0]) +
	( 14'sd 7466) * $signed(input_fmap_40[7:0]) +
	( 16'sd 28605) * $signed(input_fmap_41[7:0]) +
	( 16'sd 26317) * $signed(input_fmap_42[7:0]) +
	( 16'sd 19160) * $signed(input_fmap_43[7:0]) +
	( 16'sd 25426) * $signed(input_fmap_44[7:0]) +
	( 16'sd 17522) * $signed(input_fmap_45[7:0]) +
	( 16'sd 19865) * $signed(input_fmap_46[7:0]) +
	( 16'sd 18713) * $signed(input_fmap_47[7:0]) +
	( 16'sd 16588) * $signed(input_fmap_48[7:0]) +
	( 12'sd 1706) * $signed(input_fmap_49[7:0]) +
	( 16'sd 28975) * $signed(input_fmap_50[7:0]) +
	( 16'sd 24578) * $signed(input_fmap_51[7:0]) +
	( 14'sd 6064) * $signed(input_fmap_52[7:0]) +
	( 16'sd 26964) * $signed(input_fmap_53[7:0]) +
	( 15'sd 9282) * $signed(input_fmap_54[7:0]) +
	( 16'sd 21636) * $signed(input_fmap_55[7:0]) +
	( 15'sd 11612) * $signed(input_fmap_56[7:0]) +
	( 15'sd 8866) * $signed(input_fmap_57[7:0]) +
	( 16'sd 27801) * $signed(input_fmap_58[7:0]) +
	( 11'sd 697) * $signed(input_fmap_59[7:0]) +
	( 16'sd 19418) * $signed(input_fmap_60[7:0]) +
	( 16'sd 22405) * $signed(input_fmap_61[7:0]) +
	( 15'sd 8454) * $signed(input_fmap_62[7:0]) +
	( 15'sd 12896) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_33;
assign conv_mac_33 = 
	( 16'sd 20982) * $signed(input_fmap_0[7:0]) +
	( 15'sd 10825) * $signed(input_fmap_1[7:0]) +
	( 16'sd 29036) * $signed(input_fmap_2[7:0]) +
	( 16'sd 31607) * $signed(input_fmap_3[7:0]) +
	( 16'sd 21176) * $signed(input_fmap_4[7:0]) +
	( 16'sd 21365) * $signed(input_fmap_5[7:0]) +
	( 16'sd 29046) * $signed(input_fmap_6[7:0]) +
	( 15'sd 15728) * $signed(input_fmap_7[7:0]) +
	( 16'sd 26990) * $signed(input_fmap_8[7:0]) +
	( 13'sd 3058) * $signed(input_fmap_9[7:0]) +
	( 14'sd 7779) * $signed(input_fmap_10[7:0]) +
	( 13'sd 2711) * $signed(input_fmap_11[7:0]) +
	( 16'sd 30473) * $signed(input_fmap_12[7:0]) +
	( 16'sd 30548) * $signed(input_fmap_13[7:0]) +
	( 14'sd 5467) * $signed(input_fmap_14[7:0]) +
	( 14'sd 4608) * $signed(input_fmap_15[7:0]) +
	( 16'sd 24431) * $signed(input_fmap_16[7:0]) +
	( 16'sd 20627) * $signed(input_fmap_17[7:0]) +
	( 16'sd 31764) * $signed(input_fmap_18[7:0]) +
	( 14'sd 4197) * $signed(input_fmap_19[7:0]) +
	( 15'sd 15893) * $signed(input_fmap_20[7:0]) +
	( 15'sd 8601) * $signed(input_fmap_21[7:0]) +
	( 14'sd 6704) * $signed(input_fmap_22[7:0]) +
	( 16'sd 29235) * $signed(input_fmap_23[7:0]) +
	( 14'sd 4330) * $signed(input_fmap_24[7:0]) +
	( 13'sd 2258) * $signed(input_fmap_25[7:0]) +
	( 16'sd 30046) * $signed(input_fmap_26[7:0]) +
	( 16'sd 22761) * $signed(input_fmap_27[7:0]) +
	( 15'sd 10839) * $signed(input_fmap_28[7:0]) +
	( 16'sd 31744) * $signed(input_fmap_29[7:0]) +
	( 16'sd 21256) * $signed(input_fmap_30[7:0]) +
	( 14'sd 7919) * $signed(input_fmap_31[7:0]) +
	( 16'sd 32270) * $signed(input_fmap_32[7:0]) +
	( 16'sd 16691) * $signed(input_fmap_33[7:0]) +
	( 15'sd 10734) * $signed(input_fmap_34[7:0]) +
	( 16'sd 28419) * $signed(input_fmap_35[7:0]) +
	( 15'sd 15837) * $signed(input_fmap_36[7:0]) +
	( 15'sd 10623) * $signed(input_fmap_37[7:0]) +
	( 14'sd 5222) * $signed(input_fmap_38[7:0]) +
	( 16'sd 24317) * $signed(input_fmap_39[7:0]) +
	( 16'sd 28201) * $signed(input_fmap_40[7:0]) +
	( 16'sd 26476) * $signed(input_fmap_41[7:0]) +
	( 14'sd 5239) * $signed(input_fmap_42[7:0]) +
	( 16'sd 28658) * $signed(input_fmap_43[7:0]) +
	( 16'sd 24093) * $signed(input_fmap_44[7:0]) +
	( 15'sd 11412) * $signed(input_fmap_45[7:0]) +
	( 13'sd 2981) * $signed(input_fmap_46[7:0]) +
	( 16'sd 16426) * $signed(input_fmap_47[7:0]) +
	( 13'sd 2503) * $signed(input_fmap_48[7:0]) +
	( 15'sd 13611) * $signed(input_fmap_49[7:0]) +
	( 16'sd 20114) * $signed(input_fmap_50[7:0]) +
	( 16'sd 30181) * $signed(input_fmap_51[7:0]) +
	( 15'sd 11254) * $signed(input_fmap_52[7:0]) +
	( 16'sd 22048) * $signed(input_fmap_53[7:0]) +
	( 16'sd 25433) * $signed(input_fmap_54[7:0]) +
	( 16'sd 26238) * $signed(input_fmap_55[7:0]) +
	( 16'sd 30755) * $signed(input_fmap_56[7:0]) +
	( 16'sd 31161) * $signed(input_fmap_57[7:0]) +
	( 15'sd 13283) * $signed(input_fmap_58[7:0]) +
	( 15'sd 8842) * $signed(input_fmap_59[7:0]) +
	( 15'sd 12957) * $signed(input_fmap_60[7:0]) +
	( 14'sd 4665) * $signed(input_fmap_61[7:0]) +
	( 16'sd 23288) * $signed(input_fmap_62[7:0]) +
	( 16'sd 25297) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_34;
assign conv_mac_34 = 
	( 16'sd 22538) * $signed(input_fmap_0[7:0]) +
	( 16'sd 19207) * $signed(input_fmap_1[7:0]) +
	( 14'sd 4176) * $signed(input_fmap_2[7:0]) +
	( 11'sd 637) * $signed(input_fmap_3[7:0]) +
	( 16'sd 27972) * $signed(input_fmap_4[7:0]) +
	( 16'sd 32571) * $signed(input_fmap_5[7:0]) +
	( 15'sd 13343) * $signed(input_fmap_6[7:0]) +
	( 16'sd 30579) * $signed(input_fmap_7[7:0]) +
	( 13'sd 3808) * $signed(input_fmap_8[7:0]) +
	( 16'sd 31611) * $signed(input_fmap_9[7:0]) +
	( 9'sd 195) * $signed(input_fmap_10[7:0]) +
	( 15'sd 8447) * $signed(input_fmap_11[7:0]) +
	( 16'sd 27446) * $signed(input_fmap_12[7:0]) +
	( 16'sd 22789) * $signed(input_fmap_13[7:0]) +
	( 15'sd 13802) * $signed(input_fmap_14[7:0]) +
	( 12'sd 1090) * $signed(input_fmap_15[7:0]) +
	( 15'sd 12201) * $signed(input_fmap_16[7:0]) +
	( 16'sd 17380) * $signed(input_fmap_17[7:0]) +
	( 15'sd 8424) * $signed(input_fmap_18[7:0]) +
	( 16'sd 31909) * $signed(input_fmap_19[7:0]) +
	( 16'sd 21628) * $signed(input_fmap_20[7:0]) +
	( 15'sd 13425) * $signed(input_fmap_21[7:0]) +
	( 16'sd 32087) * $signed(input_fmap_22[7:0]) +
	( 15'sd 9931) * $signed(input_fmap_23[7:0]) +
	( 11'sd 561) * $signed(input_fmap_24[7:0]) +
	( 15'sd 11740) * $signed(input_fmap_25[7:0]) +
	( 13'sd 3361) * $signed(input_fmap_26[7:0]) +
	( 15'sd 9879) * $signed(input_fmap_27[7:0]) +
	( 15'sd 11716) * $signed(input_fmap_28[7:0]) +
	( 16'sd 19755) * $signed(input_fmap_29[7:0]) +
	( 12'sd 1297) * $signed(input_fmap_30[7:0]) +
	( 14'sd 5115) * $signed(input_fmap_31[7:0]) +
	( 16'sd 17116) * $signed(input_fmap_32[7:0]) +
	( 13'sd 3300) * $signed(input_fmap_33[7:0]) +
	( 15'sd 8611) * $signed(input_fmap_34[7:0]) +
	( 16'sd 27081) * $signed(input_fmap_35[7:0]) +
	( 16'sd 25020) * $signed(input_fmap_36[7:0]) +
	( 16'sd 21019) * $signed(input_fmap_37[7:0]) +
	( 15'sd 11542) * $signed(input_fmap_38[7:0]) +
	( 16'sd 17389) * $signed(input_fmap_39[7:0]) +
	( 16'sd 30841) * $signed(input_fmap_40[7:0]) +
	( 16'sd 29924) * $signed(input_fmap_41[7:0]) +
	( 15'sd 12736) * $signed(input_fmap_42[7:0]) +
	( 16'sd 24905) * $signed(input_fmap_43[7:0]) +
	( 15'sd 9821) * $signed(input_fmap_44[7:0]) +
	( 14'sd 4877) * $signed(input_fmap_45[7:0]) +
	( 16'sd 31014) * $signed(input_fmap_46[7:0]) +
	( 14'sd 5694) * $signed(input_fmap_47[7:0]) +
	( 14'sd 6262) * $signed(input_fmap_48[7:0]) +
	( 16'sd 20832) * $signed(input_fmap_49[7:0]) +
	( 14'sd 6003) * $signed(input_fmap_50[7:0]) +
	( 16'sd 20265) * $signed(input_fmap_51[7:0]) +
	( 16'sd 28314) * $signed(input_fmap_52[7:0]) +
	( 15'sd 8539) * $signed(input_fmap_53[7:0]) +
	( 16'sd 16542) * $signed(input_fmap_54[7:0]) +
	( 16'sd 27087) * $signed(input_fmap_55[7:0]) +
	( 16'sd 17574) * $signed(input_fmap_56[7:0]) +
	( 11'sd 922) * $signed(input_fmap_57[7:0]) +
	( 16'sd 28922) * $signed(input_fmap_58[7:0]) +
	( 12'sd 1326) * $signed(input_fmap_59[7:0]) +
	( 16'sd 31524) * $signed(input_fmap_60[7:0]) +
	( 16'sd 31798) * $signed(input_fmap_61[7:0]) +
	( 15'sd 10361) * $signed(input_fmap_62[7:0]) +
	( 15'sd 16159) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_35;
assign conv_mac_35 = 
	( 16'sd 20886) * $signed(input_fmap_0[7:0]) +
	( 16'sd 21964) * $signed(input_fmap_1[7:0]) +
	( 15'sd 14559) * $signed(input_fmap_2[7:0]) +
	( 15'sd 13094) * $signed(input_fmap_3[7:0]) +
	( 16'sd 18165) * $signed(input_fmap_4[7:0]) +
	( 15'sd 10741) * $signed(input_fmap_5[7:0]) +
	( 15'sd 15625) * $signed(input_fmap_6[7:0]) +
	( 14'sd 8187) * $signed(input_fmap_7[7:0]) +
	( 13'sd 2261) * $signed(input_fmap_8[7:0]) +
	( 15'sd 12559) * $signed(input_fmap_9[7:0]) +
	( 15'sd 11826) * $signed(input_fmap_10[7:0]) +
	( 13'sd 3686) * $signed(input_fmap_11[7:0]) +
	( 13'sd 2071) * $signed(input_fmap_12[7:0]) +
	( 16'sd 30807) * $signed(input_fmap_13[7:0]) +
	( 15'sd 9973) * $signed(input_fmap_14[7:0]) +
	( 16'sd 20662) * $signed(input_fmap_15[7:0]) +
	( 13'sd 2126) * $signed(input_fmap_16[7:0]) +
	( 16'sd 23952) * $signed(input_fmap_17[7:0]) +
	( 16'sd 19802) * $signed(input_fmap_18[7:0]) +
	( 16'sd 25348) * $signed(input_fmap_19[7:0]) +
	( 16'sd 16746) * $signed(input_fmap_20[7:0]) +
	( 16'sd 29746) * $signed(input_fmap_21[7:0]) +
	( 16'sd 25354) * $signed(input_fmap_22[7:0]) +
	( 16'sd 20617) * $signed(input_fmap_23[7:0]) +
	( 12'sd 1644) * $signed(input_fmap_24[7:0]) +
	( 16'sd 25228) * $signed(input_fmap_25[7:0]) +
	( 16'sd 20260) * $signed(input_fmap_26[7:0]) +
	( 15'sd 8438) * $signed(input_fmap_27[7:0]) +
	( 15'sd 15710) * $signed(input_fmap_28[7:0]) +
	( 16'sd 18331) * $signed(input_fmap_29[7:0]) +
	( 16'sd 20690) * $signed(input_fmap_30[7:0]) +
	( 16'sd 30847) * $signed(input_fmap_31[7:0]) +
	( 16'sd 18775) * $signed(input_fmap_32[7:0]) +
	( 13'sd 3512) * $signed(input_fmap_33[7:0]) +
	( 14'sd 8078) * $signed(input_fmap_34[7:0]) +
	( 16'sd 24099) * $signed(input_fmap_35[7:0]) +
	( 14'sd 6161) * $signed(input_fmap_36[7:0]) +
	( 16'sd 21528) * $signed(input_fmap_37[7:0]) +
	( 7'sd 34) * $signed(input_fmap_38[7:0]) +
	( 15'sd 11233) * $signed(input_fmap_39[7:0]) +
	( 13'sd 3088) * $signed(input_fmap_40[7:0]) +
	( 16'sd 22626) * $signed(input_fmap_41[7:0]) +
	( 16'sd 25436) * $signed(input_fmap_42[7:0]) +
	( 15'sd 10912) * $signed(input_fmap_43[7:0]) +
	( 9'sd 136) * $signed(input_fmap_44[7:0]) +
	( 12'sd 1777) * $signed(input_fmap_45[7:0]) +
	( 14'sd 5370) * $signed(input_fmap_46[7:0]) +
	( 14'sd 7404) * $signed(input_fmap_47[7:0]) +
	( 16'sd 21956) * $signed(input_fmap_48[7:0]) +
	( 16'sd 25148) * $signed(input_fmap_49[7:0]) +
	( 16'sd 21080) * $signed(input_fmap_50[7:0]) +
	( 16'sd 30326) * $signed(input_fmap_51[7:0]) +
	( 16'sd 28724) * $signed(input_fmap_52[7:0]) +
	( 16'sd 21754) * $signed(input_fmap_53[7:0]) +
	( 15'sd 10742) * $signed(input_fmap_54[7:0]) +
	( 16'sd 32405) * $signed(input_fmap_55[7:0]) +
	( 15'sd 16302) * $signed(input_fmap_56[7:0]) +
	( 15'sd 11492) * $signed(input_fmap_57[7:0]) +
	( 15'sd 8697) * $signed(input_fmap_58[7:0]) +
	( 16'sd 21080) * $signed(input_fmap_59[7:0]) +
	( 11'sd 957) * $signed(input_fmap_60[7:0]) +
	( 15'sd 10583) * $signed(input_fmap_61[7:0]) +
	( 13'sd 3699) * $signed(input_fmap_62[7:0]) +
	( 16'sd 24634) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_36;
assign conv_mac_36 = 
	( 16'sd 25173) * $signed(input_fmap_0[7:0]) +
	( 10'sd 290) * $signed(input_fmap_1[7:0]) +
	( 13'sd 4000) * $signed(input_fmap_2[7:0]) +
	( 16'sd 23758) * $signed(input_fmap_3[7:0]) +
	( 15'sd 11805) * $signed(input_fmap_4[7:0]) +
	( 16'sd 28401) * $signed(input_fmap_5[7:0]) +
	( 14'sd 7044) * $signed(input_fmap_6[7:0]) +
	( 15'sd 15273) * $signed(input_fmap_7[7:0]) +
	( 16'sd 29670) * $signed(input_fmap_8[7:0]) +
	( 15'sd 14084) * $signed(input_fmap_9[7:0]) +
	( 16'sd 27035) * $signed(input_fmap_10[7:0]) +
	( 16'sd 28683) * $signed(input_fmap_11[7:0]) +
	( 16'sd 29560) * $signed(input_fmap_12[7:0]) +
	( 15'sd 8905) * $signed(input_fmap_13[7:0]) +
	( 16'sd 31260) * $signed(input_fmap_14[7:0]) +
	( 14'sd 5987) * $signed(input_fmap_15[7:0]) +
	( 15'sd 8975) * $signed(input_fmap_16[7:0]) +
	( 13'sd 3353) * $signed(input_fmap_17[7:0]) +
	( 15'sd 9892) * $signed(input_fmap_18[7:0]) +
	( 15'sd 15109) * $signed(input_fmap_19[7:0]) +
	( 16'sd 28045) * $signed(input_fmap_20[7:0]) +
	( 15'sd 8974) * $signed(input_fmap_21[7:0]) +
	( 16'sd 30027) * $signed(input_fmap_22[7:0]) +
	( 16'sd 25146) * $signed(input_fmap_23[7:0]) +
	( 15'sd 14565) * $signed(input_fmap_24[7:0]) +
	( 16'sd 24511) * $signed(input_fmap_25[7:0]) +
	( 15'sd 12427) * $signed(input_fmap_26[7:0]) +
	( 14'sd 6031) * $signed(input_fmap_27[7:0]) +
	( 16'sd 27045) * $signed(input_fmap_28[7:0]) +
	( 11'sd 985) * $signed(input_fmap_29[7:0]) +
	( 15'sd 11171) * $signed(input_fmap_30[7:0]) +
	( 13'sd 3605) * $signed(input_fmap_31[7:0]) +
	( 15'sd 8313) * $signed(input_fmap_32[7:0]) +
	( 16'sd 28049) * $signed(input_fmap_33[7:0]) +
	( 16'sd 23278) * $signed(input_fmap_34[7:0]) +
	( 16'sd 17296) * $signed(input_fmap_35[7:0]) +
	( 13'sd 2728) * $signed(input_fmap_36[7:0]) +
	( 16'sd 30657) * $signed(input_fmap_37[7:0]) +
	( 16'sd 18699) * $signed(input_fmap_38[7:0]) +
	( 14'sd 5388) * $signed(input_fmap_39[7:0]) +
	( 16'sd 21093) * $signed(input_fmap_40[7:0]) +
	( 16'sd 18907) * $signed(input_fmap_41[7:0]) +
	( 16'sd 21627) * $signed(input_fmap_42[7:0]) +
	( 15'sd 8842) * $signed(input_fmap_43[7:0]) +
	( 16'sd 22545) * $signed(input_fmap_44[7:0]) +
	( 16'sd 16972) * $signed(input_fmap_45[7:0]) +
	( 12'sd 1686) * $signed(input_fmap_46[7:0]) +
	( 16'sd 17550) * $signed(input_fmap_47[7:0]) +
	( 16'sd 24606) * $signed(input_fmap_48[7:0]) +
	( 16'sd 22337) * $signed(input_fmap_49[7:0]) +
	( 16'sd 16965) * $signed(input_fmap_50[7:0]) +
	( 15'sd 12466) * $signed(input_fmap_51[7:0]) +
	( 16'sd 23465) * $signed(input_fmap_52[7:0]) +
	( 14'sd 6530) * $signed(input_fmap_53[7:0]) +
	( 16'sd 28692) * $signed(input_fmap_54[7:0]) +
	( 13'sd 2153) * $signed(input_fmap_55[7:0]) +
	( 16'sd 26438) * $signed(input_fmap_56[7:0]) +
	( 16'sd 26246) * $signed(input_fmap_57[7:0]) +
	( 16'sd 31917) * $signed(input_fmap_58[7:0]) +
	( 16'sd 31880) * $signed(input_fmap_59[7:0]) +
	( 15'sd 15073) * $signed(input_fmap_60[7:0]) +
	( 13'sd 3840) * $signed(input_fmap_61[7:0]) +
	( 15'sd 12855) * $signed(input_fmap_62[7:0]) +
	( 11'sd 690) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_37;
assign conv_mac_37 = 
	( 16'sd 26079) * $signed(input_fmap_0[7:0]) +
	( 14'sd 6825) * $signed(input_fmap_1[7:0]) +
	( 11'sd 809) * $signed(input_fmap_2[7:0]) +
	( 16'sd 16893) * $signed(input_fmap_3[7:0]) +
	( 16'sd 18726) * $signed(input_fmap_4[7:0]) +
	( 14'sd 6917) * $signed(input_fmap_5[7:0]) +
	( 15'sd 9659) * $signed(input_fmap_6[7:0]) +
	( 16'sd 31383) * $signed(input_fmap_7[7:0]) +
	( 12'sd 1633) * $signed(input_fmap_8[7:0]) +
	( 7'sd 62) * $signed(input_fmap_9[7:0]) +
	( 15'sd 9447) * $signed(input_fmap_10[7:0]) +
	( 15'sd 14133) * $signed(input_fmap_11[7:0]) +
	( 16'sd 29165) * $signed(input_fmap_12[7:0]) +
	( 15'sd 15858) * $signed(input_fmap_13[7:0]) +
	( 16'sd 25404) * $signed(input_fmap_14[7:0]) +
	( 11'sd 988) * $signed(input_fmap_15[7:0]) +
	( 16'sd 19834) * $signed(input_fmap_16[7:0]) +
	( 16'sd 18827) * $signed(input_fmap_17[7:0]) +
	( 16'sd 23013) * $signed(input_fmap_18[7:0]) +
	( 16'sd 31444) * $signed(input_fmap_19[7:0]) +
	( 14'sd 5525) * $signed(input_fmap_20[7:0]) +
	( 16'sd 18185) * $signed(input_fmap_21[7:0]) +
	( 14'sd 5079) * $signed(input_fmap_22[7:0]) +
	( 16'sd 29308) * $signed(input_fmap_23[7:0]) +
	( 14'sd 5763) * $signed(input_fmap_24[7:0]) +
	( 16'sd 18491) * $signed(input_fmap_25[7:0]) +
	( 16'sd 22464) * $signed(input_fmap_26[7:0]) +
	( 16'sd 25027) * $signed(input_fmap_27[7:0]) +
	( 16'sd 24393) * $signed(input_fmap_28[7:0]) +
	( 16'sd 29659) * $signed(input_fmap_29[7:0]) +
	( 15'sd 12611) * $signed(input_fmap_30[7:0]) +
	( 15'sd 12932) * $signed(input_fmap_31[7:0]) +
	( 15'sd 10272) * $signed(input_fmap_32[7:0]) +
	( 16'sd 24717) * $signed(input_fmap_33[7:0]) +
	( 14'sd 5474) * $signed(input_fmap_34[7:0]) +
	( 16'sd 16395) * $signed(input_fmap_35[7:0]) +
	( 15'sd 13963) * $signed(input_fmap_36[7:0]) +
	( 15'sd 14161) * $signed(input_fmap_37[7:0]) +
	( 15'sd 14482) * $signed(input_fmap_38[7:0]) +
	( 16'sd 21117) * $signed(input_fmap_39[7:0]) +
	( 16'sd 32470) * $signed(input_fmap_40[7:0]) +
	( 16'sd 31804) * $signed(input_fmap_41[7:0]) +
	( 16'sd 21241) * $signed(input_fmap_42[7:0]) +
	( 12'sd 1260) * $signed(input_fmap_43[7:0]) +
	( 16'sd 21379) * $signed(input_fmap_44[7:0]) +
	( 15'sd 14842) * $signed(input_fmap_45[7:0]) +
	( 16'sd 20529) * $signed(input_fmap_46[7:0]) +
	( 16'sd 23081) * $signed(input_fmap_47[7:0]) +
	( 15'sd 12388) * $signed(input_fmap_48[7:0]) +
	( 16'sd 30929) * $signed(input_fmap_49[7:0]) +
	( 16'sd 18725) * $signed(input_fmap_50[7:0]) +
	( 14'sd 6096) * $signed(input_fmap_51[7:0]) +
	( 16'sd 22440) * $signed(input_fmap_52[7:0]) +
	( 16'sd 22738) * $signed(input_fmap_53[7:0]) +
	( 15'sd 13767) * $signed(input_fmap_54[7:0]) +
	( 16'sd 19161) * $signed(input_fmap_55[7:0]) +
	( 15'sd 8698) * $signed(input_fmap_56[7:0]) +
	( 15'sd 12621) * $signed(input_fmap_57[7:0]) +
	( 16'sd 32188) * $signed(input_fmap_58[7:0]) +
	( 16'sd 27120) * $signed(input_fmap_59[7:0]) +
	( 16'sd 28907) * $signed(input_fmap_60[7:0]) +
	( 15'sd 9401) * $signed(input_fmap_61[7:0]) +
	( 14'sd 4914) * $signed(input_fmap_62[7:0]) +
	( 16'sd 20107) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_38;
assign conv_mac_38 = 
	( 15'sd 11370) * $signed(input_fmap_0[7:0]) +
	( 13'sd 2921) * $signed(input_fmap_1[7:0]) +
	( 14'sd 7239) * $signed(input_fmap_2[7:0]) +
	( 16'sd 23700) * $signed(input_fmap_3[7:0]) +
	( 15'sd 16180) * $signed(input_fmap_4[7:0]) +
	( 15'sd 12341) * $signed(input_fmap_5[7:0]) +
	( 16'sd 26732) * $signed(input_fmap_6[7:0]) +
	( 16'sd 28363) * $signed(input_fmap_7[7:0]) +
	( 15'sd 12476) * $signed(input_fmap_8[7:0]) +
	( 15'sd 13620) * $signed(input_fmap_9[7:0]) +
	( 13'sd 3216) * $signed(input_fmap_10[7:0]) +
	( 16'sd 25833) * $signed(input_fmap_11[7:0]) +
	( 16'sd 27852) * $signed(input_fmap_12[7:0]) +
	( 15'sd 12104) * $signed(input_fmap_13[7:0]) +
	( 16'sd 20010) * $signed(input_fmap_14[7:0]) +
	( 16'sd 20344) * $signed(input_fmap_15[7:0]) +
	( 16'sd 21483) * $signed(input_fmap_16[7:0]) +
	( 15'sd 12260) * $signed(input_fmap_17[7:0]) +
	( 16'sd 24843) * $signed(input_fmap_18[7:0]) +
	( 15'sd 13012) * $signed(input_fmap_19[7:0]) +
	( 15'sd 8868) * $signed(input_fmap_20[7:0]) +
	( 11'sd 581) * $signed(input_fmap_21[7:0]) +
	( 15'sd 13428) * $signed(input_fmap_22[7:0]) +
	( 15'sd 15447) * $signed(input_fmap_23[7:0]) +
	( 16'sd 25497) * $signed(input_fmap_24[7:0]) +
	( 16'sd 27962) * $signed(input_fmap_25[7:0]) +
	( 14'sd 8053) * $signed(input_fmap_26[7:0]) +
	( 14'sd 8023) * $signed(input_fmap_27[7:0]) +
	( 16'sd 19866) * $signed(input_fmap_28[7:0]) +
	( 12'sd 1751) * $signed(input_fmap_29[7:0]) +
	( 13'sd 3944) * $signed(input_fmap_30[7:0]) +
	( 16'sd 25238) * $signed(input_fmap_31[7:0]) +
	( 16'sd 30667) * $signed(input_fmap_32[7:0]) +
	( 13'sd 3859) * $signed(input_fmap_33[7:0]) +
	( 15'sd 11087) * $signed(input_fmap_34[7:0]) +
	( 15'sd 16041) * $signed(input_fmap_35[7:0]) +
	( 16'sd 30171) * $signed(input_fmap_36[7:0]) +
	( 16'sd 20715) * $signed(input_fmap_37[7:0]) +
	( 11'sd 584) * $signed(input_fmap_38[7:0]) +
	( 16'sd 22003) * $signed(input_fmap_39[7:0]) +
	( 15'sd 11897) * $signed(input_fmap_40[7:0]) +
	( 13'sd 2185) * $signed(input_fmap_41[7:0]) +
	( 16'sd 31539) * $signed(input_fmap_42[7:0]) +
	( 15'sd 12770) * $signed(input_fmap_43[7:0]) +
	( 16'sd 21524) * $signed(input_fmap_44[7:0]) +
	( 16'sd 27110) * $signed(input_fmap_45[7:0]) +
	( 16'sd 30479) * $signed(input_fmap_46[7:0]) +
	( 15'sd 16362) * $signed(input_fmap_47[7:0]) +
	( 15'sd 9951) * $signed(input_fmap_48[7:0]) +
	( 16'sd 27199) * $signed(input_fmap_49[7:0]) +
	( 16'sd 22730) * $signed(input_fmap_50[7:0]) +
	( 16'sd 32653) * $signed(input_fmap_51[7:0]) +
	( 14'sd 6777) * $signed(input_fmap_52[7:0]) +
	( 15'sd 14302) * $signed(input_fmap_53[7:0]) +
	( 16'sd 18701) * $signed(input_fmap_54[7:0]) +
	( 16'sd 29187) * $signed(input_fmap_55[7:0]) +
	( 11'sd 882) * $signed(input_fmap_56[7:0]) +
	( 16'sd 25084) * $signed(input_fmap_57[7:0]) +
	( 16'sd 26271) * $signed(input_fmap_58[7:0]) +
	( 11'sd 864) * $signed(input_fmap_59[7:0]) +
	( 15'sd 10692) * $signed(input_fmap_60[7:0]) +
	( 16'sd 23357) * $signed(input_fmap_61[7:0]) +
	( 14'sd 6451) * $signed(input_fmap_62[7:0]) +
	( 16'sd 20399) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_39;
assign conv_mac_39 = 
	( 16'sd 25642) * $signed(input_fmap_0[7:0]) +
	( 15'sd 11223) * $signed(input_fmap_1[7:0]) +
	( 15'sd 10093) * $signed(input_fmap_2[7:0]) +
	( 15'sd 8708) * $signed(input_fmap_3[7:0]) +
	( 16'sd 26927) * $signed(input_fmap_4[7:0]) +
	( 15'sd 15321) * $signed(input_fmap_5[7:0]) +
	( 12'sd 1356) * $signed(input_fmap_6[7:0]) +
	( 16'sd 22094) * $signed(input_fmap_7[7:0]) +
	( 16'sd 28596) * $signed(input_fmap_8[7:0]) +
	( 14'sd 6650) * $signed(input_fmap_9[7:0]) +
	( 16'sd 32440) * $signed(input_fmap_10[7:0]) +
	( 16'sd 30814) * $signed(input_fmap_11[7:0]) +
	( 15'sd 12255) * $signed(input_fmap_12[7:0]) +
	( 15'sd 12724) * $signed(input_fmap_13[7:0]) +
	( 16'sd 30029) * $signed(input_fmap_14[7:0]) +
	( 15'sd 10524) * $signed(input_fmap_15[7:0]) +
	( 6'sd 26) * $signed(input_fmap_16[7:0]) +
	( 16'sd 16929) * $signed(input_fmap_17[7:0]) +
	( 16'sd 30770) * $signed(input_fmap_18[7:0]) +
	( 15'sd 12689) * $signed(input_fmap_19[7:0]) +
	( 13'sd 3922) * $signed(input_fmap_20[7:0]) +
	( 16'sd 22815) * $signed(input_fmap_21[7:0]) +
	( 16'sd 32041) * $signed(input_fmap_22[7:0]) +
	( 12'sd 1528) * $signed(input_fmap_23[7:0]) +
	( 14'sd 6035) * $signed(input_fmap_24[7:0]) +
	( 16'sd 24503) * $signed(input_fmap_25[7:0]) +
	( 16'sd 17391) * $signed(input_fmap_26[7:0]) +
	( 15'sd 9856) * $signed(input_fmap_27[7:0]) +
	( 16'sd 21482) * $signed(input_fmap_28[7:0]) +
	( 14'sd 6932) * $signed(input_fmap_29[7:0]) +
	( 16'sd 21836) * $signed(input_fmap_30[7:0]) +
	( 16'sd 20369) * $signed(input_fmap_31[7:0]) +
	( 14'sd 7679) * $signed(input_fmap_32[7:0]) +
	( 15'sd 14082) * $signed(input_fmap_33[7:0]) +
	( 16'sd 16564) * $signed(input_fmap_34[7:0]) +
	( 16'sd 28469) * $signed(input_fmap_35[7:0]) +
	( 16'sd 29951) * $signed(input_fmap_36[7:0]) +
	( 16'sd 28158) * $signed(input_fmap_37[7:0]) +
	( 16'sd 19776) * $signed(input_fmap_38[7:0]) +
	( 13'sd 3683) * $signed(input_fmap_39[7:0]) +
	( 16'sd 26507) * $signed(input_fmap_40[7:0]) +
	( 12'sd 1253) * $signed(input_fmap_41[7:0]) +
	( 13'sd 2170) * $signed(input_fmap_42[7:0]) +
	( 15'sd 10511) * $signed(input_fmap_43[7:0]) +
	( 15'sd 13070) * $signed(input_fmap_44[7:0]) +
	( 14'sd 5231) * $signed(input_fmap_45[7:0]) +
	( 14'sd 4755) * $signed(input_fmap_46[7:0]) +
	( 12'sd 2028) * $signed(input_fmap_47[7:0]) +
	( 15'sd 11257) * $signed(input_fmap_48[7:0]) +
	( 16'sd 29767) * $signed(input_fmap_49[7:0]) +
	( 16'sd 18454) * $signed(input_fmap_50[7:0]) +
	( 16'sd 23825) * $signed(input_fmap_51[7:0]) +
	( 16'sd 31297) * $signed(input_fmap_52[7:0]) +
	( 14'sd 6344) * $signed(input_fmap_53[7:0]) +
	( 15'sd 9040) * $signed(input_fmap_54[7:0]) +
	( 16'sd 16659) * $signed(input_fmap_55[7:0]) +
	( 16'sd 19647) * $signed(input_fmap_56[7:0]) +
	( 13'sd 2545) * $signed(input_fmap_57[7:0]) +
	( 16'sd 25647) * $signed(input_fmap_58[7:0]) +
	( 14'sd 5676) * $signed(input_fmap_59[7:0]) +
	( 16'sd 17683) * $signed(input_fmap_60[7:0]) +
	( 16'sd 32387) * $signed(input_fmap_61[7:0]) +
	( 16'sd 17716) * $signed(input_fmap_62[7:0]) +
	( 16'sd 21528) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_40;
assign conv_mac_40 = 
	( 14'sd 6528) * $signed(input_fmap_0[7:0]) +
	( 14'sd 6790) * $signed(input_fmap_1[7:0]) +
	( 15'sd 10273) * $signed(input_fmap_2[7:0]) +
	( 15'sd 11992) * $signed(input_fmap_3[7:0]) +
	( 16'sd 31382) * $signed(input_fmap_4[7:0]) +
	( 14'sd 4386) * $signed(input_fmap_5[7:0]) +
	( 15'sd 15668) * $signed(input_fmap_6[7:0]) +
	( 12'sd 1892) * $signed(input_fmap_7[7:0]) +
	( 15'sd 9952) * $signed(input_fmap_8[7:0]) +
	( 15'sd 11980) * $signed(input_fmap_9[7:0]) +
	( 15'sd 8875) * $signed(input_fmap_10[7:0]) +
	( 16'sd 19011) * $signed(input_fmap_11[7:0]) +
	( 16'sd 21912) * $signed(input_fmap_12[7:0]) +
	( 11'sd 799) * $signed(input_fmap_13[7:0]) +
	( 16'sd 25531) * $signed(input_fmap_14[7:0]) +
	( 15'sd 15666) * $signed(input_fmap_15[7:0]) +
	( 15'sd 10334) * $signed(input_fmap_16[7:0]) +
	( 13'sd 3001) * $signed(input_fmap_17[7:0]) +
	( 15'sd 15540) * $signed(input_fmap_18[7:0]) +
	( 14'sd 5773) * $signed(input_fmap_19[7:0]) +
	( 16'sd 25458) * $signed(input_fmap_20[7:0]) +
	( 11'sd 660) * $signed(input_fmap_21[7:0]) +
	( 13'sd 4091) * $signed(input_fmap_22[7:0]) +
	( 15'sd 8451) * $signed(input_fmap_23[7:0]) +
	( 15'sd 13424) * $signed(input_fmap_24[7:0]) +
	( 16'sd 32592) * $signed(input_fmap_25[7:0]) +
	( 15'sd 8491) * $signed(input_fmap_26[7:0]) +
	( 16'sd 26054) * $signed(input_fmap_27[7:0]) +
	( 16'sd 18149) * $signed(input_fmap_28[7:0]) +
	( 15'sd 15424) * $signed(input_fmap_29[7:0]) +
	( 15'sd 12152) * $signed(input_fmap_30[7:0]) +
	( 12'sd 1416) * $signed(input_fmap_31[7:0]) +
	( 15'sd 9604) * $signed(input_fmap_32[7:0]) +
	( 14'sd 7414) * $signed(input_fmap_33[7:0]) +
	( 16'sd 23539) * $signed(input_fmap_34[7:0]) +
	( 16'sd 31663) * $signed(input_fmap_35[7:0]) +
	( 13'sd 3260) * $signed(input_fmap_36[7:0]) +
	( 15'sd 10423) * $signed(input_fmap_37[7:0]) +
	( 15'sd 15342) * $signed(input_fmap_38[7:0]) +
	( 15'sd 11287) * $signed(input_fmap_39[7:0]) +
	( 14'sd 4916) * $signed(input_fmap_40[7:0]) +
	( 13'sd 3314) * $signed(input_fmap_41[7:0]) +
	( 16'sd 29389) * $signed(input_fmap_42[7:0]) +
	( 16'sd 21027) * $signed(input_fmap_43[7:0]) +
	( 16'sd 23072) * $signed(input_fmap_44[7:0]) +
	( 14'sd 7890) * $signed(input_fmap_45[7:0]) +
	( 16'sd 31988) * $signed(input_fmap_46[7:0]) +
	( 15'sd 8750) * $signed(input_fmap_47[7:0]) +
	( 16'sd 29696) * $signed(input_fmap_48[7:0]) +
	( 15'sd 10787) * $signed(input_fmap_49[7:0]) +
	( 15'sd 14857) * $signed(input_fmap_50[7:0]) +
	( 16'sd 27564) * $signed(input_fmap_51[7:0]) +
	( 15'sd 14655) * $signed(input_fmap_52[7:0]) +
	( 14'sd 8085) * $signed(input_fmap_53[7:0]) +
	( 15'sd 14755) * $signed(input_fmap_54[7:0]) +
	( 15'sd 9778) * $signed(input_fmap_55[7:0]) +
	( 16'sd 21056) * $signed(input_fmap_56[7:0]) +
	( 15'sd 12148) * $signed(input_fmap_57[7:0]) +
	( 16'sd 30488) * $signed(input_fmap_58[7:0]) +
	( 15'sd 12997) * $signed(input_fmap_59[7:0]) +
	( 15'sd 10580) * $signed(input_fmap_60[7:0]) +
	( 14'sd 8063) * $signed(input_fmap_61[7:0]) +
	( 13'sd 3640) * $signed(input_fmap_62[7:0]) +
	( 16'sd 27021) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_41;
assign conv_mac_41 = 
	( 16'sd 19376) * $signed(input_fmap_0[7:0]) +
	( 16'sd 28840) * $signed(input_fmap_1[7:0]) +
	( 16'sd 27925) * $signed(input_fmap_2[7:0]) +
	( 16'sd 16940) * $signed(input_fmap_3[7:0]) +
	( 15'sd 11259) * $signed(input_fmap_4[7:0]) +
	( 14'sd 5241) * $signed(input_fmap_5[7:0]) +
	( 12'sd 1045) * $signed(input_fmap_6[7:0]) +
	( 16'sd 23623) * $signed(input_fmap_7[7:0]) +
	( 16'sd 26351) * $signed(input_fmap_8[7:0]) +
	( 14'sd 5119) * $signed(input_fmap_9[7:0]) +
	( 15'sd 9700) * $signed(input_fmap_10[7:0]) +
	( 16'sd 16421) * $signed(input_fmap_11[7:0]) +
	( 15'sd 8855) * $signed(input_fmap_12[7:0]) +
	( 16'sd 21406) * $signed(input_fmap_13[7:0]) +
	( 11'sd 537) * $signed(input_fmap_14[7:0]) +
	( 16'sd 23426) * $signed(input_fmap_15[7:0]) +
	( 14'sd 6487) * $signed(input_fmap_16[7:0]) +
	( 14'sd 6198) * $signed(input_fmap_17[7:0]) +
	( 14'sd 7428) * $signed(input_fmap_18[7:0]) +
	( 16'sd 25561) * $signed(input_fmap_19[7:0]) +
	( 16'sd 16708) * $signed(input_fmap_20[7:0]) +
	( 14'sd 6145) * $signed(input_fmap_21[7:0]) +
	( 16'sd 25808) * $signed(input_fmap_22[7:0]) +
	( 16'sd 17137) * $signed(input_fmap_23[7:0]) +
	( 16'sd 23809) * $signed(input_fmap_24[7:0]) +
	( 12'sd 1477) * $signed(input_fmap_25[7:0]) +
	( 15'sd 11372) * $signed(input_fmap_26[7:0]) +
	( 16'sd 19653) * $signed(input_fmap_27[7:0]) +
	( 16'sd 19103) * $signed(input_fmap_28[7:0]) +
	( 16'sd 28291) * $signed(input_fmap_29[7:0]) +
	( 16'sd 31732) * $signed(input_fmap_30[7:0]) +
	( 16'sd 30748) * $signed(input_fmap_31[7:0]) +
	( 14'sd 4738) * $signed(input_fmap_32[7:0]) +
	( 15'sd 10394) * $signed(input_fmap_33[7:0]) +
	( 11'sd 539) * $signed(input_fmap_34[7:0]) +
	( 15'sd 11479) * $signed(input_fmap_35[7:0]) +
	( 15'sd 15186) * $signed(input_fmap_36[7:0]) +
	( 16'sd 27149) * $signed(input_fmap_37[7:0]) +
	( 13'sd 3862) * $signed(input_fmap_38[7:0]) +
	( 15'sd 14710) * $signed(input_fmap_39[7:0]) +
	( 16'sd 26823) * $signed(input_fmap_40[7:0]) +
	( 16'sd 22451) * $signed(input_fmap_41[7:0]) +
	( 16'sd 19199) * $signed(input_fmap_42[7:0]) +
	( 16'sd 30074) * $signed(input_fmap_43[7:0]) +
	( 15'sd 12046) * $signed(input_fmap_44[7:0]) +
	( 14'sd 4899) * $signed(input_fmap_45[7:0]) +
	( 16'sd 20506) * $signed(input_fmap_46[7:0]) +
	( 16'sd 18765) * $signed(input_fmap_47[7:0]) +
	( 15'sd 11939) * $signed(input_fmap_48[7:0]) +
	( 13'sd 3646) * $signed(input_fmap_49[7:0]) +
	( 14'sd 6099) * $signed(input_fmap_50[7:0]) +
	( 16'sd 30707) * $signed(input_fmap_51[7:0]) +
	( 16'sd 25329) * $signed(input_fmap_52[7:0]) +
	( 15'sd 11932) * $signed(input_fmap_53[7:0]) +
	( 15'sd 13665) * $signed(input_fmap_54[7:0]) +
	( 16'sd 23744) * $signed(input_fmap_55[7:0]) +
	( 15'sd 14696) * $signed(input_fmap_56[7:0]) +
	( 16'sd 28191) * $signed(input_fmap_57[7:0]) +
	( 16'sd 25668) * $signed(input_fmap_58[7:0]) +
	( 16'sd 20177) * $signed(input_fmap_59[7:0]) +
	( 16'sd 23377) * $signed(input_fmap_60[7:0]) +
	( 15'sd 10722) * $signed(input_fmap_61[7:0]) +
	( 11'sd 817) * $signed(input_fmap_62[7:0]) +
	( 15'sd 13156) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_42;
assign conv_mac_42 = 
	( 16'sd 20950) * $signed(input_fmap_0[7:0]) +
	( 9'sd 231) * $signed(input_fmap_1[7:0]) +
	( 16'sd 23386) * $signed(input_fmap_2[7:0]) +
	( 16'sd 24039) * $signed(input_fmap_3[7:0]) +
	( 16'sd 22838) * $signed(input_fmap_4[7:0]) +
	( 14'sd 4462) * $signed(input_fmap_5[7:0]) +
	( 16'sd 25663) * $signed(input_fmap_6[7:0]) +
	( 16'sd 22473) * $signed(input_fmap_7[7:0]) +
	( 15'sd 13166) * $signed(input_fmap_8[7:0]) +
	( 14'sd 7063) * $signed(input_fmap_9[7:0]) +
	( 16'sd 28353) * $signed(input_fmap_10[7:0]) +
	( 16'sd 29841) * $signed(input_fmap_11[7:0]) +
	( 15'sd 12248) * $signed(input_fmap_12[7:0]) +
	( 15'sd 15756) * $signed(input_fmap_13[7:0]) +
	( 16'sd 24713) * $signed(input_fmap_14[7:0]) +
	( 15'sd 8356) * $signed(input_fmap_15[7:0]) +
	( 14'sd 5005) * $signed(input_fmap_16[7:0]) +
	( 16'sd 30290) * $signed(input_fmap_17[7:0]) +
	( 16'sd 19357) * $signed(input_fmap_18[7:0]) +
	( 16'sd 31075) * $signed(input_fmap_19[7:0]) +
	( 16'sd 28209) * $signed(input_fmap_20[7:0]) +
	( 14'sd 6128) * $signed(input_fmap_21[7:0]) +
	( 16'sd 22986) * $signed(input_fmap_22[7:0]) +
	( 14'sd 7574) * $signed(input_fmap_23[7:0]) +
	( 13'sd 2357) * $signed(input_fmap_24[7:0]) +
	( 15'sd 14642) * $signed(input_fmap_25[7:0]) +
	( 13'sd 3551) * $signed(input_fmap_26[7:0]) +
	( 15'sd 16357) * $signed(input_fmap_27[7:0]) +
	( 15'sd 10041) * $signed(input_fmap_28[7:0]) +
	( 16'sd 30926) * $signed(input_fmap_29[7:0]) +
	( 16'sd 25412) * $signed(input_fmap_30[7:0]) +
	( 16'sd 22631) * $signed(input_fmap_31[7:0]) +
	( 15'sd 11632) * $signed(input_fmap_32[7:0]) +
	( 15'sd 9886) * $signed(input_fmap_33[7:0]) +
	( 16'sd 18409) * $signed(input_fmap_34[7:0]) +
	( 16'sd 25941) * $signed(input_fmap_35[7:0]) +
	( 16'sd 17952) * $signed(input_fmap_36[7:0]) +
	( 15'sd 15468) * $signed(input_fmap_37[7:0]) +
	( 13'sd 2538) * $signed(input_fmap_38[7:0]) +
	( 16'sd 16696) * $signed(input_fmap_39[7:0]) +
	( 16'sd 27351) * $signed(input_fmap_40[7:0]) +
	( 15'sd 8440) * $signed(input_fmap_41[7:0]) +
	( 13'sd 2961) * $signed(input_fmap_42[7:0]) +
	( 16'sd 30640) * $signed(input_fmap_43[7:0]) +
	( 12'sd 1212) * $signed(input_fmap_44[7:0]) +
	( 12'sd 1778) * $signed(input_fmap_45[7:0]) +
	( 13'sd 3727) * $signed(input_fmap_46[7:0]) +
	( 15'sd 15630) * $signed(input_fmap_47[7:0]) +
	( 15'sd 15156) * $signed(input_fmap_48[7:0]) +
	( 16'sd 31816) * $signed(input_fmap_49[7:0]) +
	( 15'sd 12472) * $signed(input_fmap_50[7:0]) +
	( 14'sd 6502) * $signed(input_fmap_51[7:0]) +
	( 15'sd 13894) * $signed(input_fmap_52[7:0]) +
	( 16'sd 18019) * $signed(input_fmap_53[7:0]) +
	( 14'sd 4499) * $signed(input_fmap_54[7:0]) +
	( 16'sd 17294) * $signed(input_fmap_55[7:0]) +
	( 15'sd 10057) * $signed(input_fmap_56[7:0]) +
	( 16'sd 23225) * $signed(input_fmap_57[7:0]) +
	( 16'sd 21665) * $signed(input_fmap_58[7:0]) +
	( 16'sd 21134) * $signed(input_fmap_59[7:0]) +
	( 16'sd 22581) * $signed(input_fmap_60[7:0]) +
	( 16'sd 16879) * $signed(input_fmap_61[7:0]) +
	( 15'sd 9231) * $signed(input_fmap_62[7:0]) +
	( 14'sd 7363) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_43;
assign conv_mac_43 = 
	( 16'sd 27064) * $signed(input_fmap_0[7:0]) +
	( 9'sd 206) * $signed(input_fmap_1[7:0]) +
	( 16'sd 31962) * $signed(input_fmap_2[7:0]) +
	( 16'sd 16729) * $signed(input_fmap_3[7:0]) +
	( 16'sd 22345) * $signed(input_fmap_4[7:0]) +
	( 16'sd 17680) * $signed(input_fmap_5[7:0]) +
	( 13'sd 3333) * $signed(input_fmap_6[7:0]) +
	( 15'sd 9106) * $signed(input_fmap_7[7:0]) +
	( 14'sd 8025) * $signed(input_fmap_8[7:0]) +
	( 11'sd 653) * $signed(input_fmap_9[7:0]) +
	( 14'sd 7601) * $signed(input_fmap_10[7:0]) +
	( 16'sd 18558) * $signed(input_fmap_11[7:0]) +
	( 16'sd 17549) * $signed(input_fmap_12[7:0]) +
	( 12'sd 1306) * $signed(input_fmap_13[7:0]) +
	( 16'sd 24880) * $signed(input_fmap_14[7:0]) +
	( 16'sd 18402) * $signed(input_fmap_15[7:0]) +
	( 16'sd 28401) * $signed(input_fmap_16[7:0]) +
	( 12'sd 2033) * $signed(input_fmap_17[7:0]) +
	( 16'sd 22041) * $signed(input_fmap_18[7:0]) +
	( 16'sd 25231) * $signed(input_fmap_19[7:0]) +
	( 14'sd 5101) * $signed(input_fmap_20[7:0]) +
	( 16'sd 24891) * $signed(input_fmap_21[7:0]) +
	( 14'sd 7804) * $signed(input_fmap_22[7:0]) +
	( 16'sd 24192) * $signed(input_fmap_23[7:0]) +
	( 15'sd 12138) * $signed(input_fmap_24[7:0]) +
	( 14'sd 6042) * $signed(input_fmap_25[7:0]) +
	( 16'sd 27138) * $signed(input_fmap_26[7:0]) +
	( 16'sd 20994) * $signed(input_fmap_27[7:0]) +
	( 16'sd 20210) * $signed(input_fmap_28[7:0]) +
	( 15'sd 9683) * $signed(input_fmap_29[7:0]) +
	( 14'sd 5392) * $signed(input_fmap_30[7:0]) +
	( 16'sd 21112) * $signed(input_fmap_31[7:0]) +
	( 15'sd 14733) * $signed(input_fmap_32[7:0]) +
	( 16'sd 26428) * $signed(input_fmap_33[7:0]) +
	( 16'sd 29365) * $signed(input_fmap_34[7:0]) +
	( 15'sd 8368) * $signed(input_fmap_35[7:0]) +
	( 16'sd 27817) * $signed(input_fmap_36[7:0]) +
	( 15'sd 13408) * $signed(input_fmap_37[7:0]) +
	( 16'sd 21100) * $signed(input_fmap_38[7:0]) +
	( 16'sd 25274) * $signed(input_fmap_39[7:0]) +
	( 16'sd 18003) * $signed(input_fmap_40[7:0]) +
	( 16'sd 21168) * $signed(input_fmap_41[7:0]) +
	( 16'sd 31830) * $signed(input_fmap_42[7:0]) +
	( 15'sd 16124) * $signed(input_fmap_43[7:0]) +
	( 16'sd 26188) * $signed(input_fmap_44[7:0]) +
	( 13'sd 3145) * $signed(input_fmap_45[7:0]) +
	( 16'sd 21088) * $signed(input_fmap_46[7:0]) +
	( 16'sd 23023) * $signed(input_fmap_47[7:0]) +
	( 14'sd 6102) * $signed(input_fmap_48[7:0]) +
	( 14'sd 7897) * $signed(input_fmap_49[7:0]) +
	( 15'sd 16174) * $signed(input_fmap_50[7:0]) +
	( 16'sd 32047) * $signed(input_fmap_51[7:0]) +
	( 15'sd 16261) * $signed(input_fmap_52[7:0]) +
	( 16'sd 20526) * $signed(input_fmap_53[7:0]) +
	( 13'sd 3274) * $signed(input_fmap_54[7:0]) +
	( 16'sd 17059) * $signed(input_fmap_55[7:0]) +
	( 15'sd 12215) * $signed(input_fmap_56[7:0]) +
	( 12'sd 1605) * $signed(input_fmap_57[7:0]) +
	( 15'sd 11688) * $signed(input_fmap_58[7:0]) +
	( 14'sd 4668) * $signed(input_fmap_59[7:0]) +
	( 15'sd 11134) * $signed(input_fmap_60[7:0]) +
	( 15'sd 13189) * $signed(input_fmap_61[7:0]) +
	( 16'sd 25926) * $signed(input_fmap_62[7:0]) +
	( 15'sd 12912) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_44;
assign conv_mac_44 = 
	( 15'sd 11197) * $signed(input_fmap_0[7:0]) +
	( 13'sd 2528) * $signed(input_fmap_1[7:0]) +
	( 15'sd 15731) * $signed(input_fmap_2[7:0]) +
	( 16'sd 21447) * $signed(input_fmap_3[7:0]) +
	( 16'sd 31457) * $signed(input_fmap_4[7:0]) +
	( 16'sd 24807) * $signed(input_fmap_5[7:0]) +
	( 15'sd 15600) * $signed(input_fmap_6[7:0]) +
	( 14'sd 5765) * $signed(input_fmap_7[7:0]) +
	( 16'sd 20749) * $signed(input_fmap_8[7:0]) +
	( 13'sd 3103) * $signed(input_fmap_9[7:0]) +
	( 16'sd 18244) * $signed(input_fmap_10[7:0]) +
	( 16'sd 23671) * $signed(input_fmap_11[7:0]) +
	( 16'sd 24570) * $signed(input_fmap_12[7:0]) +
	( 14'sd 4225) * $signed(input_fmap_13[7:0]) +
	( 15'sd 14536) * $signed(input_fmap_14[7:0]) +
	( 15'sd 9143) * $signed(input_fmap_15[7:0]) +
	( 15'sd 14662) * $signed(input_fmap_16[7:0]) +
	( 15'sd 13780) * $signed(input_fmap_17[7:0]) +
	( 15'sd 8261) * $signed(input_fmap_18[7:0]) +
	( 15'sd 10695) * $signed(input_fmap_19[7:0]) +
	( 16'sd 19734) * $signed(input_fmap_20[7:0]) +
	( 16'sd 17338) * $signed(input_fmap_21[7:0]) +
	( 16'sd 28728) * $signed(input_fmap_22[7:0]) +
	( 16'sd 16913) * $signed(input_fmap_23[7:0]) +
	( 16'sd 17340) * $signed(input_fmap_24[7:0]) +
	( 16'sd 31190) * $signed(input_fmap_25[7:0]) +
	( 12'sd 1264) * $signed(input_fmap_26[7:0]) +
	( 14'sd 6456) * $signed(input_fmap_27[7:0]) +
	( 16'sd 25075) * $signed(input_fmap_28[7:0]) +
	( 15'sd 16062) * $signed(input_fmap_29[7:0]) +
	( 15'sd 15663) * $signed(input_fmap_30[7:0]) +
	( 14'sd 8147) * $signed(input_fmap_31[7:0]) +
	( 12'sd 1557) * $signed(input_fmap_32[7:0]) +
	( 16'sd 21617) * $signed(input_fmap_33[7:0]) +
	( 13'sd 3345) * $signed(input_fmap_34[7:0]) +
	( 16'sd 23785) * $signed(input_fmap_35[7:0]) +
	( 16'sd 32358) * $signed(input_fmap_36[7:0]) +
	( 14'sd 6725) * $signed(input_fmap_37[7:0]) +
	( 15'sd 9634) * $signed(input_fmap_38[7:0]) +
	( 16'sd 30713) * $signed(input_fmap_39[7:0]) +
	( 16'sd 28621) * $signed(input_fmap_40[7:0]) +
	( 10'sd 500) * $signed(input_fmap_41[7:0]) +
	( 12'sd 1651) * $signed(input_fmap_42[7:0]) +
	( 16'sd 29304) * $signed(input_fmap_43[7:0]) +
	( 16'sd 24393) * $signed(input_fmap_44[7:0]) +
	( 15'sd 12537) * $signed(input_fmap_45[7:0]) +
	( 16'sd 30352) * $signed(input_fmap_46[7:0]) +
	( 16'sd 23115) * $signed(input_fmap_47[7:0]) +
	( 16'sd 31218) * $signed(input_fmap_48[7:0]) +
	( 13'sd 2168) * $signed(input_fmap_49[7:0]) +
	( 15'sd 11447) * $signed(input_fmap_50[7:0]) +
	( 13'sd 2966) * $signed(input_fmap_51[7:0]) +
	( 16'sd 24992) * $signed(input_fmap_52[7:0]) +
	( 16'sd 19818) * $signed(input_fmap_53[7:0]) +
	( 16'sd 24385) * $signed(input_fmap_54[7:0]) +
	( 16'sd 25125) * $signed(input_fmap_55[7:0]) +
	( 16'sd 26839) * $signed(input_fmap_56[7:0]) +
	( 16'sd 24647) * $signed(input_fmap_57[7:0]) +
	( 16'sd 32358) * $signed(input_fmap_58[7:0]) +
	( 15'sd 14883) * $signed(input_fmap_59[7:0]) +
	( 16'sd 20660) * $signed(input_fmap_60[7:0]) +
	( 16'sd 30510) * $signed(input_fmap_61[7:0]) +
	( 16'sd 28102) * $signed(input_fmap_62[7:0]) +
	( 16'sd 32341) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_45;
assign conv_mac_45 = 
	( 15'sd 14527) * $signed(input_fmap_0[7:0]) +
	( 16'sd 29229) * $signed(input_fmap_1[7:0]) +
	( 15'sd 12055) * $signed(input_fmap_2[7:0]) +
	( 16'sd 25668) * $signed(input_fmap_3[7:0]) +
	( 16'sd 20777) * $signed(input_fmap_4[7:0]) +
	( 16'sd 24952) * $signed(input_fmap_5[7:0]) +
	( 14'sd 6215) * $signed(input_fmap_6[7:0]) +
	( 16'sd 26774) * $signed(input_fmap_7[7:0]) +
	( 16'sd 21542) * $signed(input_fmap_8[7:0]) +
	( 16'sd 22729) * $signed(input_fmap_9[7:0]) +
	( 12'sd 1559) * $signed(input_fmap_10[7:0]) +
	( 15'sd 16203) * $signed(input_fmap_11[7:0]) +
	( 15'sd 9963) * $signed(input_fmap_12[7:0]) +
	( 16'sd 23255) * $signed(input_fmap_13[7:0]) +
	( 14'sd 4801) * $signed(input_fmap_14[7:0]) +
	( 15'sd 12236) * $signed(input_fmap_15[7:0]) +
	( 14'sd 7081) * $signed(input_fmap_16[7:0]) +
	( 15'sd 10080) * $signed(input_fmap_17[7:0]) +
	( 16'sd 26329) * $signed(input_fmap_18[7:0]) +
	( 14'sd 6901) * $signed(input_fmap_19[7:0]) +
	( 15'sd 13230) * $signed(input_fmap_20[7:0]) +
	( 16'sd 17041) * $signed(input_fmap_21[7:0]) +
	( 14'sd 5046) * $signed(input_fmap_22[7:0]) +
	( 15'sd 11191) * $signed(input_fmap_23[7:0]) +
	( 14'sd 6313) * $signed(input_fmap_24[7:0]) +
	( 15'sd 10335) * $signed(input_fmap_25[7:0]) +
	( 15'sd 12699) * $signed(input_fmap_26[7:0]) +
	( 16'sd 23742) * $signed(input_fmap_27[7:0]) +
	( 15'sd 15807) * $signed(input_fmap_28[7:0]) +
	( 14'sd 7641) * $signed(input_fmap_29[7:0]) +
	( 15'sd 9748) * $signed(input_fmap_30[7:0]) +
	( 7'sd 53) * $signed(input_fmap_31[7:0]) +
	( 8'sd 86) * $signed(input_fmap_32[7:0]) +
	( 16'sd 16501) * $signed(input_fmap_33[7:0]) +
	( 16'sd 24800) * $signed(input_fmap_34[7:0]) +
	( 16'sd 17913) * $signed(input_fmap_35[7:0]) +
	( 16'sd 27869) * $signed(input_fmap_36[7:0]) +
	( 16'sd 28176) * $signed(input_fmap_37[7:0]) +
	( 15'sd 16017) * $signed(input_fmap_38[7:0]) +
	( 16'sd 31164) * $signed(input_fmap_39[7:0]) +
	( 10'sd 337) * $signed(input_fmap_40[7:0]) +
	( 11'sd 936) * $signed(input_fmap_41[7:0]) +
	( 16'sd 30270) * $signed(input_fmap_42[7:0]) +
	( 14'sd 4497) * $signed(input_fmap_43[7:0]) +
	( 15'sd 12502) * $signed(input_fmap_44[7:0]) +
	( 15'sd 16119) * $signed(input_fmap_45[7:0]) +
	( 16'sd 19171) * $signed(input_fmap_46[7:0]) +
	( 12'sd 1680) * $signed(input_fmap_47[7:0]) +
	( 13'sd 3258) * $signed(input_fmap_48[7:0]) +
	( 16'sd 25397) * $signed(input_fmap_49[7:0]) +
	( 14'sd 4355) * $signed(input_fmap_50[7:0]) +
	( 16'sd 19836) * $signed(input_fmap_51[7:0]) +
	( 16'sd 30375) * $signed(input_fmap_52[7:0]) +
	( 14'sd 4367) * $signed(input_fmap_53[7:0]) +
	( 14'sd 4562) * $signed(input_fmap_54[7:0]) +
	( 16'sd 31722) * $signed(input_fmap_55[7:0]) +
	( 14'sd 6619) * $signed(input_fmap_56[7:0]) +
	( 16'sd 22080) * $signed(input_fmap_57[7:0]) +
	( 15'sd 12526) * $signed(input_fmap_58[7:0]) +
	( 16'sd 27354) * $signed(input_fmap_59[7:0]) +
	( 16'sd 30526) * $signed(input_fmap_60[7:0]) +
	( 16'sd 28993) * $signed(input_fmap_61[7:0]) +
	( 14'sd 8147) * $signed(input_fmap_62[7:0]) +
	( 16'sd 27460) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_46;
assign conv_mac_46 = 
	( 12'sd 1287) * $signed(input_fmap_0[7:0]) +
	( 16'sd 18415) * $signed(input_fmap_1[7:0]) +
	( 15'sd 11559) * $signed(input_fmap_2[7:0]) +
	( 13'sd 3996) * $signed(input_fmap_3[7:0]) +
	( 14'sd 7512) * $signed(input_fmap_4[7:0]) +
	( 16'sd 31372) * $signed(input_fmap_5[7:0]) +
	( 16'sd 17164) * $signed(input_fmap_6[7:0]) +
	( 13'sd 3581) * $signed(input_fmap_7[7:0]) +
	( 16'sd 32534) * $signed(input_fmap_8[7:0]) +
	( 13'sd 2187) * $signed(input_fmap_9[7:0]) +
	( 15'sd 9452) * $signed(input_fmap_10[7:0]) +
	( 8'sd 70) * $signed(input_fmap_11[7:0]) +
	( 15'sd 10247) * $signed(input_fmap_12[7:0]) +
	( 15'sd 16145) * $signed(input_fmap_13[7:0]) +
	( 15'sd 11673) * $signed(input_fmap_14[7:0]) +
	( 10'sd 425) * $signed(input_fmap_15[7:0]) +
	( 16'sd 32087) * $signed(input_fmap_16[7:0]) +
	( 16'sd 20594) * $signed(input_fmap_17[7:0]) +
	( 16'sd 21762) * $signed(input_fmap_18[7:0]) +
	( 15'sd 9918) * $signed(input_fmap_19[7:0]) +
	( 15'sd 8543) * $signed(input_fmap_20[7:0]) +
	( 15'sd 12985) * $signed(input_fmap_21[7:0]) +
	( 15'sd 10502) * $signed(input_fmap_22[7:0]) +
	( 14'sd 5596) * $signed(input_fmap_23[7:0]) +
	( 16'sd 30736) * $signed(input_fmap_24[7:0]) +
	( 15'sd 13744) * $signed(input_fmap_25[7:0]) +
	( 15'sd 8778) * $signed(input_fmap_26[7:0]) +
	( 16'sd 18795) * $signed(input_fmap_27[7:0]) +
	( 14'sd 6381) * $signed(input_fmap_28[7:0]) +
	( 16'sd 24221) * $signed(input_fmap_29[7:0]) +
	( 15'sd 12537) * $signed(input_fmap_30[7:0]) +
	( 16'sd 32575) * $signed(input_fmap_31[7:0]) +
	( 15'sd 9921) * $signed(input_fmap_32[7:0]) +
	( 15'sd 11661) * $signed(input_fmap_33[7:0]) +
	( 15'sd 15637) * $signed(input_fmap_34[7:0]) +
	( 16'sd 24728) * $signed(input_fmap_35[7:0]) +
	( 16'sd 19326) * $signed(input_fmap_36[7:0]) +
	( 16'sd 24628) * $signed(input_fmap_37[7:0]) +
	( 13'sd 3493) * $signed(input_fmap_38[7:0]) +
	( 16'sd 27319) * $signed(input_fmap_39[7:0]) +
	( 14'sd 6706) * $signed(input_fmap_40[7:0]) +
	( 15'sd 11173) * $signed(input_fmap_41[7:0]) +
	( 16'sd 31100) * $signed(input_fmap_42[7:0]) +
	( 16'sd 18419) * $signed(input_fmap_43[7:0]) +
	( 15'sd 14172) * $signed(input_fmap_44[7:0]) +
	( 16'sd 19983) * $signed(input_fmap_45[7:0]) +
	( 15'sd 15448) * $signed(input_fmap_46[7:0]) +
	( 16'sd 21832) * $signed(input_fmap_47[7:0]) +
	( 15'sd 10778) * $signed(input_fmap_48[7:0]) +
	( 15'sd 8548) * $signed(input_fmap_49[7:0]) +
	( 16'sd 31871) * $signed(input_fmap_50[7:0]) +
	( 16'sd 19949) * $signed(input_fmap_51[7:0]) +
	( 16'sd 24680) * $signed(input_fmap_52[7:0]) +
	( 16'sd 30542) * $signed(input_fmap_53[7:0]) +
	( 16'sd 21014) * $signed(input_fmap_54[7:0]) +
	( 15'sd 9003) * $signed(input_fmap_55[7:0]) +
	( 15'sd 12894) * $signed(input_fmap_56[7:0]) +
	( 16'sd 30345) * $signed(input_fmap_57[7:0]) +
	( 16'sd 21240) * $signed(input_fmap_58[7:0]) +
	( 16'sd 16619) * $signed(input_fmap_59[7:0]) +
	( 15'sd 9961) * $signed(input_fmap_60[7:0]) +
	( 16'sd 28527) * $signed(input_fmap_61[7:0]) +
	( 16'sd 26959) * $signed(input_fmap_62[7:0]) +
	( 11'sd 806) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_47;
assign conv_mac_47 = 
	( 16'sd 21597) * $signed(input_fmap_0[7:0]) +
	( 16'sd 26645) * $signed(input_fmap_1[7:0]) +
	( 15'sd 15842) * $signed(input_fmap_2[7:0]) +
	( 16'sd 24540) * $signed(input_fmap_3[7:0]) +
	( 16'sd 29922) * $signed(input_fmap_4[7:0]) +
	( 16'sd 27509) * $signed(input_fmap_5[7:0]) +
	( 14'sd 4716) * $signed(input_fmap_6[7:0]) +
	( 16'sd 21016) * $signed(input_fmap_7[7:0]) +
	( 14'sd 4678) * $signed(input_fmap_8[7:0]) +
	( 16'sd 28943) * $signed(input_fmap_9[7:0]) +
	( 12'sd 1071) * $signed(input_fmap_10[7:0]) +
	( 16'sd 29747) * $signed(input_fmap_11[7:0]) +
	( 15'sd 13592) * $signed(input_fmap_12[7:0]) +
	( 16'sd 28275) * $signed(input_fmap_13[7:0]) +
	( 16'sd 23706) * $signed(input_fmap_14[7:0]) +
	( 15'sd 10353) * $signed(input_fmap_15[7:0]) +
	( 16'sd 29163) * $signed(input_fmap_16[7:0]) +
	( 16'sd 32400) * $signed(input_fmap_17[7:0]) +
	( 16'sd 21805) * $signed(input_fmap_18[7:0]) +
	( 15'sd 9646) * $signed(input_fmap_19[7:0]) +
	( 15'sd 8267) * $signed(input_fmap_20[7:0]) +
	( 16'sd 30268) * $signed(input_fmap_21[7:0]) +
	( 16'sd 18952) * $signed(input_fmap_22[7:0]) +
	( 15'sd 12031) * $signed(input_fmap_23[7:0]) +
	( 14'sd 7032) * $signed(input_fmap_24[7:0]) +
	( 16'sd 21255) * $signed(input_fmap_25[7:0]) +
	( 15'sd 13070) * $signed(input_fmap_26[7:0]) +
	( 15'sd 8509) * $signed(input_fmap_27[7:0]) +
	( 15'sd 13271) * $signed(input_fmap_28[7:0]) +
	( 14'sd 7530) * $signed(input_fmap_29[7:0]) +
	( 15'sd 16355) * $signed(input_fmap_30[7:0]) +
	( 16'sd 31993) * $signed(input_fmap_31[7:0]) +
	( 13'sd 2887) * $signed(input_fmap_32[7:0]) +
	( 15'sd 13803) * $signed(input_fmap_33[7:0]) +
	( 15'sd 14768) * $signed(input_fmap_34[7:0]) +
	( 15'sd 11317) * $signed(input_fmap_35[7:0]) +
	( 15'sd 15082) * $signed(input_fmap_36[7:0]) +
	( 16'sd 17792) * $signed(input_fmap_37[7:0]) +
	( 16'sd 24719) * $signed(input_fmap_38[7:0]) +
	( 15'sd 10259) * $signed(input_fmap_39[7:0]) +
	( 15'sd 12047) * $signed(input_fmap_40[7:0]) +
	( 16'sd 16447) * $signed(input_fmap_41[7:0]) +
	( 14'sd 4206) * $signed(input_fmap_42[7:0]) +
	( 16'sd 29027) * $signed(input_fmap_43[7:0]) +
	( 15'sd 16006) * $signed(input_fmap_44[7:0]) +
	( 16'sd 22822) * $signed(input_fmap_45[7:0]) +
	( 15'sd 14098) * $signed(input_fmap_46[7:0]) +
	( 16'sd 25500) * $signed(input_fmap_47[7:0]) +
	( 16'sd 20827) * $signed(input_fmap_48[7:0]) +
	( 14'sd 7689) * $signed(input_fmap_49[7:0]) +
	( 16'sd 18866) * $signed(input_fmap_50[7:0]) +
	( 15'sd 14902) * $signed(input_fmap_51[7:0]) +
	( 15'sd 11734) * $signed(input_fmap_52[7:0]) +
	( 13'sd 2073) * $signed(input_fmap_53[7:0]) +
	( 16'sd 20827) * $signed(input_fmap_54[7:0]) +
	( 15'sd 10014) * $signed(input_fmap_55[7:0]) +
	( 16'sd 30699) * $signed(input_fmap_56[7:0]) +
	( 16'sd 30997) * $signed(input_fmap_57[7:0]) +
	( 15'sd 12882) * $signed(input_fmap_58[7:0]) +
	( 16'sd 23083) * $signed(input_fmap_59[7:0]) +
	( 16'sd 20695) * $signed(input_fmap_60[7:0]) +
	( 16'sd 18119) * $signed(input_fmap_61[7:0]) +
	( 16'sd 22785) * $signed(input_fmap_62[7:0]) +
	( 14'sd 6025) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_48;
assign conv_mac_48 = 
	( 15'sd 14658) * $signed(input_fmap_0[7:0]) +
	( 16'sd 29048) * $signed(input_fmap_1[7:0]) +
	( 16'sd 21070) * $signed(input_fmap_2[7:0]) +
	( 16'sd 20756) * $signed(input_fmap_3[7:0]) +
	( 14'sd 5240) * $signed(input_fmap_4[7:0]) +
	( 14'sd 6167) * $signed(input_fmap_5[7:0]) +
	( 16'sd 24000) * $signed(input_fmap_6[7:0]) +
	( 15'sd 13278) * $signed(input_fmap_7[7:0]) +
	( 15'sd 12723) * $signed(input_fmap_8[7:0]) +
	( 13'sd 3914) * $signed(input_fmap_9[7:0]) +
	( 16'sd 26363) * $signed(input_fmap_10[7:0]) +
	( 16'sd 32292) * $signed(input_fmap_11[7:0]) +
	( 16'sd 20816) * $signed(input_fmap_12[7:0]) +
	( 16'sd 22939) * $signed(input_fmap_13[7:0]) +
	( 16'sd 32249) * $signed(input_fmap_14[7:0]) +
	( 16'sd 16880) * $signed(input_fmap_15[7:0]) +
	( 15'sd 8372) * $signed(input_fmap_16[7:0]) +
	( 9'sd 164) * $signed(input_fmap_17[7:0]) +
	( 13'sd 3591) * $signed(input_fmap_18[7:0]) +
	( 12'sd 1303) * $signed(input_fmap_19[7:0]) +
	( 16'sd 28813) * $signed(input_fmap_20[7:0]) +
	( 11'sd 1005) * $signed(input_fmap_21[7:0]) +
	( 15'sd 10324) * $signed(input_fmap_22[7:0]) +
	( 16'sd 31414) * $signed(input_fmap_23[7:0]) +
	( 16'sd 22089) * $signed(input_fmap_24[7:0]) +
	( 16'sd 25901) * $signed(input_fmap_25[7:0]) +
	( 16'sd 27591) * $signed(input_fmap_26[7:0]) +
	( 15'sd 12816) * $signed(input_fmap_27[7:0]) +
	( 16'sd 23924) * $signed(input_fmap_28[7:0]) +
	( 16'sd 26771) * $signed(input_fmap_29[7:0]) +
	( 16'sd 21540) * $signed(input_fmap_30[7:0]) +
	( 16'sd 27296) * $signed(input_fmap_31[7:0]) +
	( 16'sd 30424) * $signed(input_fmap_32[7:0]) +
	( 16'sd 30418) * $signed(input_fmap_33[7:0]) +
	( 15'sd 13609) * $signed(input_fmap_34[7:0]) +
	( 13'sd 2554) * $signed(input_fmap_35[7:0]) +
	( 15'sd 8246) * $signed(input_fmap_36[7:0]) +
	( 16'sd 21049) * $signed(input_fmap_37[7:0]) +
	( 16'sd 18154) * $signed(input_fmap_38[7:0]) +
	( 11'sd 769) * $signed(input_fmap_39[7:0]) +
	( 14'sd 5197) * $signed(input_fmap_40[7:0]) +
	( 14'sd 4699) * $signed(input_fmap_41[7:0]) +
	( 16'sd 30800) * $signed(input_fmap_42[7:0]) +
	( 13'sd 3165) * $signed(input_fmap_43[7:0]) +
	( 16'sd 17747) * $signed(input_fmap_44[7:0]) +
	( 16'sd 32435) * $signed(input_fmap_45[7:0]) +
	( 16'sd 20124) * $signed(input_fmap_46[7:0]) +
	( 15'sd 12111) * $signed(input_fmap_47[7:0]) +
	( 15'sd 14382) * $signed(input_fmap_48[7:0]) +
	( 16'sd 17170) * $signed(input_fmap_49[7:0]) +
	( 15'sd 10491) * $signed(input_fmap_50[7:0]) +
	( 16'sd 22374) * $signed(input_fmap_51[7:0]) +
	( 16'sd 32512) * $signed(input_fmap_52[7:0]) +
	( 16'sd 32287) * $signed(input_fmap_53[7:0]) +
	( 13'sd 3645) * $signed(input_fmap_54[7:0]) +
	( 15'sd 10260) * $signed(input_fmap_55[7:0]) +
	( 15'sd 15215) * $signed(input_fmap_56[7:0]) +
	( 15'sd 15601) * $signed(input_fmap_57[7:0]) +
	( 16'sd 25283) * $signed(input_fmap_58[7:0]) +
	( 16'sd 21700) * $signed(input_fmap_59[7:0]) +
	( 16'sd 18333) * $signed(input_fmap_60[7:0]) +
	( 16'sd 27145) * $signed(input_fmap_61[7:0]) +
	( 16'sd 18932) * $signed(input_fmap_62[7:0]) +
	( 16'sd 28094) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_49;
assign conv_mac_49 = 
	( 16'sd 18782) * $signed(input_fmap_0[7:0]) +
	( 16'sd 19594) * $signed(input_fmap_1[7:0]) +
	( 15'sd 16312) * $signed(input_fmap_2[7:0]) +
	( 16'sd 16704) * $signed(input_fmap_3[7:0]) +
	( 16'sd 19540) * $signed(input_fmap_4[7:0]) +
	( 16'sd 31069) * $signed(input_fmap_5[7:0]) +
	( 16'sd 29015) * $signed(input_fmap_6[7:0]) +
	( 16'sd 17314) * $signed(input_fmap_7[7:0]) +
	( 16'sd 20952) * $signed(input_fmap_8[7:0]) +
	( 16'sd 26278) * $signed(input_fmap_9[7:0]) +
	( 15'sd 15861) * $signed(input_fmap_10[7:0]) +
	( 16'sd 19002) * $signed(input_fmap_11[7:0]) +
	( 16'sd 21265) * $signed(input_fmap_12[7:0]) +
	( 14'sd 4461) * $signed(input_fmap_13[7:0]) +
	( 15'sd 15210) * $signed(input_fmap_14[7:0]) +
	( 16'sd 30910) * $signed(input_fmap_15[7:0]) +
	( 16'sd 29556) * $signed(input_fmap_16[7:0]) +
	( 16'sd 24733) * $signed(input_fmap_17[7:0]) +
	( 16'sd 30870) * $signed(input_fmap_18[7:0]) +
	( 15'sd 8332) * $signed(input_fmap_19[7:0]) +
	( 16'sd 24752) * $signed(input_fmap_20[7:0]) +
	( 15'sd 14572) * $signed(input_fmap_21[7:0]) +
	( 15'sd 10310) * $signed(input_fmap_22[7:0]) +
	( 15'sd 14732) * $signed(input_fmap_23[7:0]) +
	( 16'sd 18430) * $signed(input_fmap_24[7:0]) +
	( 16'sd 21110) * $signed(input_fmap_25[7:0]) +
	( 16'sd 29932) * $signed(input_fmap_26[7:0]) +
	( 15'sd 14558) * $signed(input_fmap_27[7:0]) +
	( 16'sd 28248) * $signed(input_fmap_28[7:0]) +
	( 15'sd 10146) * $signed(input_fmap_29[7:0]) +
	( 14'sd 7630) * $signed(input_fmap_30[7:0]) +
	( 16'sd 21919) * $signed(input_fmap_31[7:0]) +
	( 16'sd 25721) * $signed(input_fmap_32[7:0]) +
	( 16'sd 17623) * $signed(input_fmap_33[7:0]) +
	( 16'sd 23974) * $signed(input_fmap_34[7:0]) +
	( 16'sd 17641) * $signed(input_fmap_35[7:0]) +
	( 13'sd 4001) * $signed(input_fmap_36[7:0]) +
	( 16'sd 25742) * $signed(input_fmap_37[7:0]) +
	( 16'sd 31717) * $signed(input_fmap_38[7:0]) +
	( 15'sd 15517) * $signed(input_fmap_39[7:0]) +
	( 16'sd 20328) * $signed(input_fmap_40[7:0]) +
	( 15'sd 13796) * $signed(input_fmap_41[7:0]) +
	( 16'sd 16701) * $signed(input_fmap_42[7:0]) +
	( 13'sd 2569) * $signed(input_fmap_43[7:0]) +
	( 11'sd 742) * $signed(input_fmap_44[7:0]) +
	( 15'sd 10921) * $signed(input_fmap_45[7:0]) +
	( 14'sd 6920) * $signed(input_fmap_46[7:0]) +
	( 12'sd 1296) * $signed(input_fmap_47[7:0]) +
	( 15'sd 12623) * $signed(input_fmap_48[7:0]) +
	( 16'sd 31868) * $signed(input_fmap_49[7:0]) +
	( 14'sd 5624) * $signed(input_fmap_50[7:0]) +
	( 15'sd 14758) * $signed(input_fmap_51[7:0]) +
	( 14'sd 5141) * $signed(input_fmap_52[7:0]) +
	( 14'sd 7379) * $signed(input_fmap_53[7:0]) +
	( 9'sd 195) * $signed(input_fmap_54[7:0]) +
	( 13'sd 2104) * $signed(input_fmap_55[7:0]) +
	( 15'sd 14984) * $signed(input_fmap_56[7:0]) +
	( 16'sd 19943) * $signed(input_fmap_57[7:0]) +
	( 16'sd 16386) * $signed(input_fmap_58[7:0]) +
	( 14'sd 4222) * $signed(input_fmap_59[7:0]) +
	( 12'sd 1226) * $signed(input_fmap_60[7:0]) +
	( 16'sd 27915) * $signed(input_fmap_61[7:0]) +
	( 14'sd 7887) * $signed(input_fmap_62[7:0]) +
	( 16'sd 23397) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_50;
assign conv_mac_50 = 
	( 16'sd 17065) * $signed(input_fmap_0[7:0]) +
	( 14'sd 5281) * $signed(input_fmap_1[7:0]) +
	( 16'sd 29489) * $signed(input_fmap_2[7:0]) +
	( 16'sd 16901) * $signed(input_fmap_3[7:0]) +
	( 15'sd 14064) * $signed(input_fmap_4[7:0]) +
	( 13'sd 3424) * $signed(input_fmap_5[7:0]) +
	( 15'sd 15791) * $signed(input_fmap_6[7:0]) +
	( 16'sd 25397) * $signed(input_fmap_7[7:0]) +
	( 13'sd 3321) * $signed(input_fmap_8[7:0]) +
	( 15'sd 8634) * $signed(input_fmap_9[7:0]) +
	( 15'sd 8722) * $signed(input_fmap_10[7:0]) +
	( 16'sd 20673) * $signed(input_fmap_11[7:0]) +
	( 14'sd 5319) * $signed(input_fmap_12[7:0]) +
	( 16'sd 25778) * $signed(input_fmap_13[7:0]) +
	( 15'sd 13749) * $signed(input_fmap_14[7:0]) +
	( 13'sd 3305) * $signed(input_fmap_15[7:0]) +
	( 15'sd 15517) * $signed(input_fmap_16[7:0]) +
	( 16'sd 22780) * $signed(input_fmap_17[7:0]) +
	( 16'sd 26721) * $signed(input_fmap_18[7:0]) +
	( 16'sd 29575) * $signed(input_fmap_19[7:0]) +
	( 16'sd 19647) * $signed(input_fmap_20[7:0]) +
	( 16'sd 24998) * $signed(input_fmap_21[7:0]) +
	( 15'sd 13262) * $signed(input_fmap_22[7:0]) +
	( 16'sd 22546) * $signed(input_fmap_23[7:0]) +
	( 16'sd 26390) * $signed(input_fmap_24[7:0]) +
	( 16'sd 17443) * $signed(input_fmap_25[7:0]) +
	( 16'sd 17227) * $signed(input_fmap_26[7:0]) +
	( 16'sd 24941) * $signed(input_fmap_27[7:0]) +
	( 16'sd 31854) * $signed(input_fmap_28[7:0]) +
	( 13'sd 3800) * $signed(input_fmap_29[7:0]) +
	( 16'sd 21615) * $signed(input_fmap_30[7:0]) +
	( 16'sd 32331) * $signed(input_fmap_31[7:0]) +
	( 16'sd 18403) * $signed(input_fmap_32[7:0]) +
	( 16'sd 16499) * $signed(input_fmap_33[7:0]) +
	( 16'sd 23694) * $signed(input_fmap_34[7:0]) +
	( 16'sd 20523) * $signed(input_fmap_35[7:0]) +
	( 13'sd 3099) * $signed(input_fmap_36[7:0]) +
	( 16'sd 18645) * $signed(input_fmap_37[7:0]) +
	( 14'sd 5652) * $signed(input_fmap_38[7:0]) +
	( 13'sd 3856) * $signed(input_fmap_39[7:0]) +
	( 15'sd 10552) * $signed(input_fmap_40[7:0]) +
	( 13'sd 2880) * $signed(input_fmap_41[7:0]) +
	( 16'sd 17701) * $signed(input_fmap_42[7:0]) +
	( 15'sd 9719) * $signed(input_fmap_43[7:0]) +
	( 11'sd 780) * $signed(input_fmap_44[7:0]) +
	( 16'sd 28250) * $signed(input_fmap_45[7:0]) +
	( 15'sd 15433) * $signed(input_fmap_46[7:0]) +
	( 15'sd 9147) * $signed(input_fmap_47[7:0]) +
	( 16'sd 25630) * $signed(input_fmap_48[7:0]) +
	( 16'sd 20016) * $signed(input_fmap_49[7:0]) +
	( 14'sd 4953) * $signed(input_fmap_50[7:0]) +
	( 16'sd 24564) * $signed(input_fmap_51[7:0]) +
	( 14'sd 6232) * $signed(input_fmap_52[7:0]) +
	( 10'sd 413) * $signed(input_fmap_53[7:0]) +
	( 16'sd 24030) * $signed(input_fmap_54[7:0]) +
	( 15'sd 8992) * $signed(input_fmap_55[7:0]) +
	( 15'sd 9949) * $signed(input_fmap_56[7:0]) +
	( 16'sd 26535) * $signed(input_fmap_57[7:0]) +
	( 15'sd 9974) * $signed(input_fmap_58[7:0]) +
	( 14'sd 4506) * $signed(input_fmap_59[7:0]) +
	( 14'sd 4855) * $signed(input_fmap_60[7:0]) +
	( 15'sd 13903) * $signed(input_fmap_61[7:0]) +
	( 15'sd 13590) * $signed(input_fmap_62[7:0]) +
	( 16'sd 27598) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_51;
assign conv_mac_51 = 
	( 16'sd 19516) * $signed(input_fmap_0[7:0]) +
	( 14'sd 7930) * $signed(input_fmap_1[7:0]) +
	( 16'sd 28302) * $signed(input_fmap_2[7:0]) +
	( 14'sd 4812) * $signed(input_fmap_3[7:0]) +
	( 13'sd 2281) * $signed(input_fmap_4[7:0]) +
	( 14'sd 5488) * $signed(input_fmap_5[7:0]) +
	( 15'sd 14591) * $signed(input_fmap_6[7:0]) +
	( 12'sd 1738) * $signed(input_fmap_7[7:0]) +
	( 14'sd 6368) * $signed(input_fmap_8[7:0]) +
	( 16'sd 17916) * $signed(input_fmap_9[7:0]) +
	( 15'sd 11918) * $signed(input_fmap_10[7:0]) +
	( 16'sd 20326) * $signed(input_fmap_11[7:0]) +
	( 16'sd 28696) * $signed(input_fmap_12[7:0]) +
	( 16'sd 29394) * $signed(input_fmap_13[7:0]) +
	( 10'sd 454) * $signed(input_fmap_14[7:0]) +
	( 15'sd 11444) * $signed(input_fmap_15[7:0]) +
	( 16'sd 26696) * $signed(input_fmap_16[7:0]) +
	( 13'sd 3364) * $signed(input_fmap_17[7:0]) +
	( 15'sd 11557) * $signed(input_fmap_18[7:0]) +
	( 16'sd 20349) * $signed(input_fmap_19[7:0]) +
	( 16'sd 17670) * $signed(input_fmap_20[7:0]) +
	( 15'sd 9085) * $signed(input_fmap_21[7:0]) +
	( 13'sd 3958) * $signed(input_fmap_22[7:0]) +
	( 15'sd 15991) * $signed(input_fmap_23[7:0]) +
	( 16'sd 24310) * $signed(input_fmap_24[7:0]) +
	( 16'sd 16997) * $signed(input_fmap_25[7:0]) +
	( 16'sd 32239) * $signed(input_fmap_26[7:0]) +
	( 15'sd 14853) * $signed(input_fmap_27[7:0]) +
	( 14'sd 6160) * $signed(input_fmap_28[7:0]) +
	( 13'sd 2158) * $signed(input_fmap_29[7:0]) +
	( 15'sd 13516) * $signed(input_fmap_30[7:0]) +
	( 16'sd 23876) * $signed(input_fmap_31[7:0]) +
	( 16'sd 24697) * $signed(input_fmap_32[7:0]) +
	( 15'sd 9757) * $signed(input_fmap_33[7:0]) +
	( 15'sd 15801) * $signed(input_fmap_34[7:0]) +
	( 16'sd 20310) * $signed(input_fmap_35[7:0]) +
	( 10'sd 291) * $signed(input_fmap_36[7:0]) +
	( 16'sd 25157) * $signed(input_fmap_37[7:0]) +
	( 16'sd 23963) * $signed(input_fmap_38[7:0]) +
	( 15'sd 8378) * $signed(input_fmap_39[7:0]) +
	( 16'sd 17051) * $signed(input_fmap_40[7:0]) +
	( 10'sd 414) * $signed(input_fmap_41[7:0]) +
	( 16'sd 25366) * $signed(input_fmap_42[7:0]) +
	( 16'sd 18124) * $signed(input_fmap_43[7:0]) +
	( 15'sd 11552) * $signed(input_fmap_44[7:0]) +
	( 15'sd 8317) * $signed(input_fmap_45[7:0]) +
	( 16'sd 30428) * $signed(input_fmap_46[7:0]) +
	( 15'sd 8642) * $signed(input_fmap_47[7:0]) +
	( 15'sd 8601) * $signed(input_fmap_48[7:0]) +
	( 16'sd 32259) * $signed(input_fmap_49[7:0]) +
	( 16'sd 32075) * $signed(input_fmap_50[7:0]) +
	( 16'sd 27563) * $signed(input_fmap_51[7:0]) +
	( 15'sd 11939) * $signed(input_fmap_52[7:0]) +
	( 9'sd 131) * $signed(input_fmap_53[7:0]) +
	( 16'sd 16807) * $signed(input_fmap_54[7:0]) +
	( 15'sd 12504) * $signed(input_fmap_55[7:0]) +
	( 15'sd 11452) * $signed(input_fmap_56[7:0]) +
	( 12'sd 1470) * $signed(input_fmap_57[7:0]) +
	( 13'sd 2174) * $signed(input_fmap_58[7:0]) +
	( 16'sd 25213) * $signed(input_fmap_59[7:0]) +
	( 15'sd 10874) * $signed(input_fmap_60[7:0]) +
	( 16'sd 25588) * $signed(input_fmap_61[7:0]) +
	( 14'sd 4133) * $signed(input_fmap_62[7:0]) +
	( 15'sd 9501) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_52;
assign conv_mac_52 = 
	( 16'sd 28373) * $signed(input_fmap_0[7:0]) +
	( 16'sd 24392) * $signed(input_fmap_1[7:0]) +
	( 14'sd 7887) * $signed(input_fmap_2[7:0]) +
	( 14'sd 4340) * $signed(input_fmap_3[7:0]) +
	( 16'sd 21502) * $signed(input_fmap_4[7:0]) +
	( 16'sd 22172) * $signed(input_fmap_5[7:0]) +
	( 16'sd 16638) * $signed(input_fmap_6[7:0]) +
	( 12'sd 1592) * $signed(input_fmap_7[7:0]) +
	( 16'sd 26320) * $signed(input_fmap_8[7:0]) +
	( 15'sd 9934) * $signed(input_fmap_9[7:0]) +
	( 16'sd 26160) * $signed(input_fmap_10[7:0]) +
	( 16'sd 20381) * $signed(input_fmap_11[7:0]) +
	( 16'sd 23930) * $signed(input_fmap_12[7:0]) +
	( 15'sd 11972) * $signed(input_fmap_13[7:0]) +
	( 15'sd 16367) * $signed(input_fmap_14[7:0]) +
	( 13'sd 2680) * $signed(input_fmap_15[7:0]) +
	( 15'sd 10902) * $signed(input_fmap_16[7:0]) +
	( 14'sd 7863) * $signed(input_fmap_17[7:0]) +
	( 14'sd 6790) * $signed(input_fmap_18[7:0]) +
	( 15'sd 14206) * $signed(input_fmap_19[7:0]) +
	( 16'sd 18038) * $signed(input_fmap_20[7:0]) +
	( 14'sd 7361) * $signed(input_fmap_21[7:0]) +
	( 14'sd 6164) * $signed(input_fmap_22[7:0]) +
	( 14'sd 6419) * $signed(input_fmap_23[7:0]) +
	( 16'sd 25124) * $signed(input_fmap_24[7:0]) +
	( 16'sd 16625) * $signed(input_fmap_25[7:0]) +
	( 12'sd 1030) * $signed(input_fmap_26[7:0]) +
	( 16'sd 32176) * $signed(input_fmap_27[7:0]) +
	( 15'sd 13181) * $signed(input_fmap_28[7:0]) +
	( 12'sd 1487) * $signed(input_fmap_29[7:0]) +
	( 16'sd 28577) * $signed(input_fmap_30[7:0]) +
	( 15'sd 8524) * $signed(input_fmap_31[7:0]) +
	( 16'sd 20516) * $signed(input_fmap_32[7:0]) +
	( 14'sd 6386) * $signed(input_fmap_33[7:0]) +
	( 16'sd 28766) * $signed(input_fmap_34[7:0]) +
	( 16'sd 23211) * $signed(input_fmap_35[7:0]) +
	( 14'sd 6125) * $signed(input_fmap_36[7:0]) +
	( 11'sd 534) * $signed(input_fmap_37[7:0]) +
	( 13'sd 3371) * $signed(input_fmap_38[7:0]) +
	( 16'sd 29862) * $signed(input_fmap_39[7:0]) +
	( 15'sd 12585) * $signed(input_fmap_40[7:0]) +
	( 14'sd 5841) * $signed(input_fmap_41[7:0]) +
	( 16'sd 27230) * $signed(input_fmap_42[7:0]) +
	( 16'sd 31672) * $signed(input_fmap_43[7:0]) +
	( 16'sd 29607) * $signed(input_fmap_44[7:0]) +
	( 16'sd 16600) * $signed(input_fmap_45[7:0]) +
	( 12'sd 1638) * $signed(input_fmap_46[7:0]) +
	( 16'sd 32068) * $signed(input_fmap_47[7:0]) +
	( 15'sd 15195) * $signed(input_fmap_48[7:0]) +
	( 15'sd 12698) * $signed(input_fmap_49[7:0]) +
	( 16'sd 20341) * $signed(input_fmap_50[7:0]) +
	( 13'sd 2205) * $signed(input_fmap_51[7:0]) +
	( 16'sd 26138) * $signed(input_fmap_52[7:0]) +
	( 15'sd 9764) * $signed(input_fmap_53[7:0]) +
	( 16'sd 25417) * $signed(input_fmap_54[7:0]) +
	( 16'sd 26156) * $signed(input_fmap_55[7:0]) +
	( 16'sd 19678) * $signed(input_fmap_56[7:0]) +
	( 15'sd 9898) * $signed(input_fmap_57[7:0]) +
	( 12'sd 1575) * $signed(input_fmap_58[7:0]) +
	( 16'sd 26598) * $signed(input_fmap_59[7:0]) +
	( 16'sd 27067) * $signed(input_fmap_60[7:0]) +
	( 16'sd 17965) * $signed(input_fmap_61[7:0]) +
	( 16'sd 29939) * $signed(input_fmap_62[7:0]) +
	( 15'sd 13651) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_53;
assign conv_mac_53 = 
	( 15'sd 8532) * $signed(input_fmap_0[7:0]) +
	( 16'sd 27180) * $signed(input_fmap_1[7:0]) +
	( 16'sd 24700) * $signed(input_fmap_2[7:0]) +
	( 16'sd 27257) * $signed(input_fmap_3[7:0]) +
	( 16'sd 17172) * $signed(input_fmap_4[7:0]) +
	( 16'sd 30524) * $signed(input_fmap_5[7:0]) +
	( 15'sd 11867) * $signed(input_fmap_6[7:0]) +
	( 15'sd 8908) * $signed(input_fmap_7[7:0]) +
	( 13'sd 2753) * $signed(input_fmap_8[7:0]) +
	( 14'sd 4605) * $signed(input_fmap_9[7:0]) +
	( 15'sd 14393) * $signed(input_fmap_10[7:0]) +
	( 16'sd 26368) * $signed(input_fmap_11[7:0]) +
	( 14'sd 6785) * $signed(input_fmap_12[7:0]) +
	( 16'sd 24849) * $signed(input_fmap_13[7:0]) +
	( 15'sd 8374) * $signed(input_fmap_14[7:0]) +
	( 15'sd 11371) * $signed(input_fmap_15[7:0]) +
	( 16'sd 16576) * $signed(input_fmap_16[7:0]) +
	( 15'sd 14672) * $signed(input_fmap_17[7:0]) +
	( 16'sd 32352) * $signed(input_fmap_18[7:0]) +
	( 15'sd 14949) * $signed(input_fmap_19[7:0]) +
	( 16'sd 31200) * $signed(input_fmap_20[7:0]) +
	( 16'sd 18176) * $signed(input_fmap_21[7:0]) +
	( 15'sd 10081) * $signed(input_fmap_22[7:0]) +
	( 16'sd 17184) * $signed(input_fmap_23[7:0]) +
	( 10'sd 393) * $signed(input_fmap_24[7:0]) +
	( 16'sd 26835) * $signed(input_fmap_25[7:0]) +
	( 16'sd 27785) * $signed(input_fmap_26[7:0]) +
	( 16'sd 26243) * $signed(input_fmap_27[7:0]) +
	( 16'sd 28525) * $signed(input_fmap_28[7:0]) +
	( 16'sd 18949) * $signed(input_fmap_29[7:0]) +
	( 15'sd 8706) * $signed(input_fmap_30[7:0]) +
	( 16'sd 30339) * $signed(input_fmap_31[7:0]) +
	( 15'sd 8826) * $signed(input_fmap_32[7:0]) +
	( 16'sd 29374) * $signed(input_fmap_33[7:0]) +
	( 16'sd 32705) * $signed(input_fmap_34[7:0]) +
	( 16'sd 19755) * $signed(input_fmap_35[7:0]) +
	( 14'sd 6065) * $signed(input_fmap_36[7:0]) +
	( 15'sd 8934) * $signed(input_fmap_37[7:0]) +
	( 14'sd 7099) * $signed(input_fmap_38[7:0]) +
	( 15'sd 14436) * $signed(input_fmap_39[7:0]) +
	( 16'sd 23578) * $signed(input_fmap_40[7:0]) +
	( 15'sd 13626) * $signed(input_fmap_41[7:0]) +
	( 16'sd 26874) * $signed(input_fmap_42[7:0]) +
	( 16'sd 23998) * $signed(input_fmap_43[7:0]) +
	( 15'sd 8599) * $signed(input_fmap_44[7:0]) +
	( 14'sd 6811) * $signed(input_fmap_45[7:0]) +
	( 16'sd 27224) * $signed(input_fmap_46[7:0]) +
	( 16'sd 21292) * $signed(input_fmap_47[7:0]) +
	( 13'sd 2416) * $signed(input_fmap_48[7:0]) +
	( 16'sd 18494) * $signed(input_fmap_49[7:0]) +
	( 16'sd 17713) * $signed(input_fmap_50[7:0]) +
	( 13'sd 2279) * $signed(input_fmap_51[7:0]) +
	( 15'sd 12582) * $signed(input_fmap_52[7:0]) +
	( 15'sd 12133) * $signed(input_fmap_53[7:0]) +
	( 16'sd 18025) * $signed(input_fmap_54[7:0]) +
	( 16'sd 30918) * $signed(input_fmap_55[7:0]) +
	( 16'sd 19829) * $signed(input_fmap_56[7:0]) +
	( 16'sd 31943) * $signed(input_fmap_57[7:0]) +
	( 15'sd 13823) * $signed(input_fmap_58[7:0]) +
	( 16'sd 31205) * $signed(input_fmap_59[7:0]) +
	( 16'sd 31856) * $signed(input_fmap_60[7:0]) +
	( 14'sd 7061) * $signed(input_fmap_61[7:0]) +
	( 16'sd 32493) * $signed(input_fmap_62[7:0]) +
	( 15'sd 9897) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_54;
assign conv_mac_54 = 
	( 15'sd 14897) * $signed(input_fmap_0[7:0]) +
	( 16'sd 31999) * $signed(input_fmap_1[7:0]) +
	( 16'sd 17804) * $signed(input_fmap_2[7:0]) +
	( 15'sd 15806) * $signed(input_fmap_3[7:0]) +
	( 16'sd 21687) * $signed(input_fmap_4[7:0]) +
	( 16'sd 31734) * $signed(input_fmap_5[7:0]) +
	( 14'sd 8035) * $signed(input_fmap_6[7:0]) +
	( 15'sd 11252) * $signed(input_fmap_7[7:0]) +
	( 16'sd 29299) * $signed(input_fmap_8[7:0]) +
	( 16'sd 22635) * $signed(input_fmap_9[7:0]) +
	( 15'sd 13758) * $signed(input_fmap_10[7:0]) +
	( 15'sd 13004) * $signed(input_fmap_11[7:0]) +
	( 16'sd 21796) * $signed(input_fmap_12[7:0]) +
	( 15'sd 11126) * $signed(input_fmap_13[7:0]) +
	( 16'sd 27062) * $signed(input_fmap_14[7:0]) +
	( 15'sd 8941) * $signed(input_fmap_15[7:0]) +
	( 16'sd 30965) * $signed(input_fmap_16[7:0]) +
	( 16'sd 21593) * $signed(input_fmap_17[7:0]) +
	( 14'sd 6180) * $signed(input_fmap_18[7:0]) +
	( 15'sd 9413) * $signed(input_fmap_19[7:0]) +
	( 15'sd 8195) * $signed(input_fmap_20[7:0]) +
	( 16'sd 31974) * $signed(input_fmap_21[7:0]) +
	( 16'sd 21266) * $signed(input_fmap_22[7:0]) +
	( 16'sd 21598) * $signed(input_fmap_23[7:0]) +
	( 16'sd 17701) * $signed(input_fmap_24[7:0]) +
	( 15'sd 10640) * $signed(input_fmap_25[7:0]) +
	( 16'sd 16859) * $signed(input_fmap_26[7:0]) +
	( 16'sd 23786) * $signed(input_fmap_27[7:0]) +
	( 16'sd 30552) * $signed(input_fmap_28[7:0]) +
	( 15'sd 11306) * $signed(input_fmap_29[7:0]) +
	( 16'sd 30259) * $signed(input_fmap_30[7:0]) +
	( 16'sd 30897) * $signed(input_fmap_31[7:0]) +
	( 13'sd 3904) * $signed(input_fmap_32[7:0]) +
	( 16'sd 16574) * $signed(input_fmap_33[7:0]) +
	( 16'sd 28155) * $signed(input_fmap_34[7:0]) +
	( 16'sd 19975) * $signed(input_fmap_35[7:0]) +
	( 13'sd 3379) * $signed(input_fmap_36[7:0]) +
	( 16'sd 25899) * $signed(input_fmap_37[7:0]) +
	( 16'sd 26898) * $signed(input_fmap_38[7:0]) +
	( 16'sd 26140) * $signed(input_fmap_39[7:0]) +
	( 16'sd 21326) * $signed(input_fmap_40[7:0]) +
	( 16'sd 19035) * $signed(input_fmap_41[7:0]) +
	( 16'sd 32509) * $signed(input_fmap_42[7:0]) +
	( 16'sd 25180) * $signed(input_fmap_43[7:0]) +
	( 16'sd 26191) * $signed(input_fmap_44[7:0]) +
	( 16'sd 23602) * $signed(input_fmap_45[7:0]) +
	( 13'sd 2703) * $signed(input_fmap_46[7:0]) +
	( 14'sd 7810) * $signed(input_fmap_47[7:0]) +
	( 15'sd 8404) * $signed(input_fmap_48[7:0]) +
	( 15'sd 9102) * $signed(input_fmap_49[7:0]) +
	( 16'sd 18498) * $signed(input_fmap_50[7:0]) +
	( 15'sd 12226) * $signed(input_fmap_51[7:0]) +
	( 15'sd 16149) * $signed(input_fmap_52[7:0]) +
	( 16'sd 24091) * $signed(input_fmap_53[7:0]) +
	( 10'sd 422) * $signed(input_fmap_54[7:0]) +
	( 16'sd 28486) * $signed(input_fmap_55[7:0]) +
	( 15'sd 13216) * $signed(input_fmap_56[7:0]) +
	( 16'sd 17739) * $signed(input_fmap_57[7:0]) +
	( 16'sd 22764) * $signed(input_fmap_58[7:0]) +
	( 16'sd 26440) * $signed(input_fmap_59[7:0]) +
	( 16'sd 20888) * $signed(input_fmap_60[7:0]) +
	( 15'sd 15766) * $signed(input_fmap_61[7:0]) +
	( 16'sd 22148) * $signed(input_fmap_62[7:0]) +
	( 16'sd 23031) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_55;
assign conv_mac_55 = 
	( 10'sd 378) * $signed(input_fmap_0[7:0]) +
	( 16'sd 17971) * $signed(input_fmap_1[7:0]) +
	( 15'sd 11792) * $signed(input_fmap_2[7:0]) +
	( 16'sd 26072) * $signed(input_fmap_3[7:0]) +
	( 16'sd 20564) * $signed(input_fmap_4[7:0]) +
	( 13'sd 3214) * $signed(input_fmap_5[7:0]) +
	( 16'sd 25052) * $signed(input_fmap_6[7:0]) +
	( 16'sd 28270) * $signed(input_fmap_7[7:0]) +
	( 16'sd 23969) * $signed(input_fmap_8[7:0]) +
	( 15'sd 11470) * $signed(input_fmap_9[7:0]) +
	( 16'sd 25632) * $signed(input_fmap_10[7:0]) +
	( 16'sd 18868) * $signed(input_fmap_11[7:0]) +
	( 16'sd 29977) * $signed(input_fmap_12[7:0]) +
	( 16'sd 32250) * $signed(input_fmap_13[7:0]) +
	( 15'sd 11750) * $signed(input_fmap_14[7:0]) +
	( 14'sd 4228) * $signed(input_fmap_15[7:0]) +
	( 16'sd 32051) * $signed(input_fmap_16[7:0]) +
	( 16'sd 32244) * $signed(input_fmap_17[7:0]) +
	( 16'sd 17112) * $signed(input_fmap_18[7:0]) +
	( 16'sd 26743) * $signed(input_fmap_19[7:0]) +
	( 16'sd 31310) * $signed(input_fmap_20[7:0]) +
	( 16'sd 18629) * $signed(input_fmap_21[7:0]) +
	( 16'sd 24129) * $signed(input_fmap_22[7:0]) +
	( 14'sd 4928) * $signed(input_fmap_23[7:0]) +
	( 15'sd 10102) * $signed(input_fmap_24[7:0]) +
	( 16'sd 25761) * $signed(input_fmap_25[7:0]) +
	( 16'sd 17947) * $signed(input_fmap_26[7:0]) +
	( 16'sd 22691) * $signed(input_fmap_27[7:0]) +
	( 15'sd 12439) * $signed(input_fmap_28[7:0]) +
	( 15'sd 9973) * $signed(input_fmap_29[7:0]) +
	( 16'sd 25943) * $signed(input_fmap_30[7:0]) +
	( 16'sd 25520) * $signed(input_fmap_31[7:0]) +
	( 16'sd 19069) * $signed(input_fmap_32[7:0]) +
	( 16'sd 30044) * $signed(input_fmap_33[7:0]) +
	( 16'sd 18631) * $signed(input_fmap_34[7:0]) +
	( 16'sd 31942) * $signed(input_fmap_35[7:0]) +
	( 15'sd 12287) * $signed(input_fmap_36[7:0]) +
	( 15'sd 13165) * $signed(input_fmap_37[7:0]) +
	( 12'sd 1590) * $signed(input_fmap_38[7:0]) +
	( 15'sd 8581) * $signed(input_fmap_39[7:0]) +
	( 14'sd 7812) * $signed(input_fmap_40[7:0]) +
	( 15'sd 8720) * $signed(input_fmap_41[7:0]) +
	( 16'sd 31202) * $signed(input_fmap_42[7:0]) +
	( 14'sd 7418) * $signed(input_fmap_43[7:0]) +
	( 15'sd 9152) * $signed(input_fmap_44[7:0]) +
	( 16'sd 16649) * $signed(input_fmap_45[7:0]) +
	( 16'sd 32664) * $signed(input_fmap_46[7:0]) +
	( 16'sd 25879) * $signed(input_fmap_47[7:0]) +
	( 15'sd 11249) * $signed(input_fmap_48[7:0]) +
	( 14'sd 5091) * $signed(input_fmap_49[7:0]) +
	( 16'sd 16551) * $signed(input_fmap_50[7:0]) +
	( 16'sd 19255) * $signed(input_fmap_51[7:0]) +
	( 16'sd 29758) * $signed(input_fmap_52[7:0]) +
	( 15'sd 12583) * $signed(input_fmap_53[7:0]) +
	( 16'sd 18373) * $signed(input_fmap_54[7:0]) +
	( 15'sd 15528) * $signed(input_fmap_55[7:0]) +
	( 15'sd 12053) * $signed(input_fmap_56[7:0]) +
	( 16'sd 29322) * $signed(input_fmap_57[7:0]) +
	( 15'sd 15822) * $signed(input_fmap_58[7:0]) +
	( 16'sd 24968) * $signed(input_fmap_59[7:0]) +
	( 15'sd 16277) * $signed(input_fmap_60[7:0]) +
	( 16'sd 22505) * $signed(input_fmap_61[7:0]) +
	( 12'sd 1669) * $signed(input_fmap_62[7:0]) +
	( 15'sd 15028) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_56;
assign conv_mac_56 = 
	( 16'sd 31574) * $signed(input_fmap_0[7:0]) +
	( 15'sd 12020) * $signed(input_fmap_1[7:0]) +
	( 16'sd 32407) * $signed(input_fmap_2[7:0]) +
	( 15'sd 15520) * $signed(input_fmap_3[7:0]) +
	( 14'sd 4744) * $signed(input_fmap_4[7:0]) +
	( 16'sd 28209) * $signed(input_fmap_5[7:0]) +
	( 14'sd 6015) * $signed(input_fmap_6[7:0]) +
	( 16'sd 26080) * $signed(input_fmap_7[7:0]) +
	( 16'sd 25186) * $signed(input_fmap_8[7:0]) +
	( 16'sd 17150) * $signed(input_fmap_9[7:0]) +
	( 16'sd 27168) * $signed(input_fmap_10[7:0]) +
	( 15'sd 14699) * $signed(input_fmap_11[7:0]) +
	( 15'sd 8335) * $signed(input_fmap_12[7:0]) +
	( 14'sd 6756) * $signed(input_fmap_13[7:0]) +
	( 16'sd 21267) * $signed(input_fmap_14[7:0]) +
	( 16'sd 23610) * $signed(input_fmap_15[7:0]) +
	( 16'sd 28008) * $signed(input_fmap_16[7:0]) +
	( 16'sd 30274) * $signed(input_fmap_17[7:0]) +
	( 16'sd 22344) * $signed(input_fmap_18[7:0]) +
	( 16'sd 20730) * $signed(input_fmap_19[7:0]) +
	( 16'sd 24631) * $signed(input_fmap_20[7:0]) +
	( 15'sd 14198) * $signed(input_fmap_21[7:0]) +
	( 16'sd 17507) * $signed(input_fmap_22[7:0]) +
	( 14'sd 6477) * $signed(input_fmap_23[7:0]) +
	( 16'sd 25856) * $signed(input_fmap_24[7:0]) +
	( 14'sd 4938) * $signed(input_fmap_25[7:0]) +
	( 14'sd 7746) * $signed(input_fmap_26[7:0]) +
	( 16'sd 31291) * $signed(input_fmap_27[7:0]) +
	( 14'sd 4579) * $signed(input_fmap_28[7:0]) +
	( 16'sd 26510) * $signed(input_fmap_29[7:0]) +
	( 15'sd 10471) * $signed(input_fmap_30[7:0]) +
	( 16'sd 19344) * $signed(input_fmap_31[7:0]) +
	( 16'sd 20867) * $signed(input_fmap_32[7:0]) +
	( 15'sd 11018) * $signed(input_fmap_33[7:0]) +
	( 14'sd 5184) * $signed(input_fmap_34[7:0]) +
	( 16'sd 24914) * $signed(input_fmap_35[7:0]) +
	( 13'sd 3363) * $signed(input_fmap_36[7:0]) +
	( 15'sd 14553) * $signed(input_fmap_37[7:0]) +
	( 16'sd 19815) * $signed(input_fmap_38[7:0]) +
	( 16'sd 17779) * $signed(input_fmap_39[7:0]) +
	( 15'sd 10344) * $signed(input_fmap_40[7:0]) +
	( 7'sd 53) * $signed(input_fmap_41[7:0]) +
	( 16'sd 30428) * $signed(input_fmap_42[7:0]) +
	( 16'sd 28241) * $signed(input_fmap_43[7:0]) +
	( 15'sd 9663) * $signed(input_fmap_44[7:0]) +
	( 15'sd 10344) * $signed(input_fmap_45[7:0]) +
	( 16'sd 23273) * $signed(input_fmap_46[7:0]) +
	( 16'sd 23324) * $signed(input_fmap_47[7:0]) +
	( 15'sd 10192) * $signed(input_fmap_48[7:0]) +
	( 16'sd 18729) * $signed(input_fmap_49[7:0]) +
	( 15'sd 12822) * $signed(input_fmap_50[7:0]) +
	( 16'sd 18238) * $signed(input_fmap_51[7:0]) +
	( 15'sd 15579) * $signed(input_fmap_52[7:0]) +
	( 14'sd 5818) * $signed(input_fmap_53[7:0]) +
	( 15'sd 16212) * $signed(input_fmap_54[7:0]) +
	( 16'sd 23165) * $signed(input_fmap_55[7:0]) +
	( 12'sd 1656) * $signed(input_fmap_56[7:0]) +
	( 15'sd 8583) * $signed(input_fmap_57[7:0]) +
	( 15'sd 14303) * $signed(input_fmap_58[7:0]) +
	( 15'sd 12504) * $signed(input_fmap_59[7:0]) +
	( 16'sd 20691) * $signed(input_fmap_60[7:0]) +
	( 13'sd 2197) * $signed(input_fmap_61[7:0]) +
	( 16'sd 29795) * $signed(input_fmap_62[7:0]) +
	( 15'sd 13093) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_57;
assign conv_mac_57 = 
	( 16'sd 23918) * $signed(input_fmap_0[7:0]) +
	( 16'sd 25197) * $signed(input_fmap_1[7:0]) +
	( 14'sd 7277) * $signed(input_fmap_2[7:0]) +
	( 15'sd 14371) * $signed(input_fmap_3[7:0]) +
	( 16'sd 21157) * $signed(input_fmap_4[7:0]) +
	( 14'sd 5379) * $signed(input_fmap_5[7:0]) +
	( 16'sd 27917) * $signed(input_fmap_6[7:0]) +
	( 15'sd 15439) * $signed(input_fmap_7[7:0]) +
	( 16'sd 26326) * $signed(input_fmap_8[7:0]) +
	( 16'sd 16423) * $signed(input_fmap_9[7:0]) +
	( 14'sd 7503) * $signed(input_fmap_10[7:0]) +
	( 15'sd 14273) * $signed(input_fmap_11[7:0]) +
	( 16'sd 29263) * $signed(input_fmap_12[7:0]) +
	( 13'sd 3870) * $signed(input_fmap_13[7:0]) +
	( 16'sd 28590) * $signed(input_fmap_14[7:0]) +
	( 16'sd 17843) * $signed(input_fmap_15[7:0]) +
	( 14'sd 4235) * $signed(input_fmap_16[7:0]) +
	( 16'sd 23195) * $signed(input_fmap_17[7:0]) +
	( 16'sd 19650) * $signed(input_fmap_18[7:0]) +
	( 15'sd 14688) * $signed(input_fmap_19[7:0]) +
	( 16'sd 22098) * $signed(input_fmap_20[7:0]) +
	( 16'sd 18212) * $signed(input_fmap_21[7:0]) +
	( 15'sd 13101) * $signed(input_fmap_22[7:0]) +
	( 11'sd 971) * $signed(input_fmap_23[7:0]) +
	( 16'sd 22422) * $signed(input_fmap_24[7:0]) +
	( 16'sd 29082) * $signed(input_fmap_25[7:0]) +
	( 15'sd 14521) * $signed(input_fmap_26[7:0]) +
	( 16'sd 25211) * $signed(input_fmap_27[7:0]) +
	( 15'sd 12566) * $signed(input_fmap_28[7:0]) +
	( 13'sd 3133) * $signed(input_fmap_29[7:0]) +
	( 16'sd 20386) * $signed(input_fmap_30[7:0]) +
	( 16'sd 27648) * $signed(input_fmap_31[7:0]) +
	( 16'sd 28755) * $signed(input_fmap_32[7:0]) +
	( 11'sd 1021) * $signed(input_fmap_33[7:0]) +
	( 16'sd 23561) * $signed(input_fmap_34[7:0]) +
	( 16'sd 31924) * $signed(input_fmap_35[7:0]) +
	( 16'sd 21836) * $signed(input_fmap_36[7:0]) +
	( 16'sd 24909) * $signed(input_fmap_37[7:0]) +
	( 15'sd 10910) * $signed(input_fmap_38[7:0]) +
	( 14'sd 6288) * $signed(input_fmap_39[7:0]) +
	( 15'sd 8285) * $signed(input_fmap_40[7:0]) +
	( 12'sd 1229) * $signed(input_fmap_41[7:0]) +
	( 16'sd 25796) * $signed(input_fmap_42[7:0]) +
	( 15'sd 11216) * $signed(input_fmap_43[7:0]) +
	( 16'sd 17114) * $signed(input_fmap_44[7:0]) +
	( 12'sd 1848) * $signed(input_fmap_45[7:0]) +
	( 13'sd 4048) * $signed(input_fmap_46[7:0]) +
	( 15'sd 10925) * $signed(input_fmap_47[7:0]) +
	( 14'sd 6694) * $signed(input_fmap_48[7:0]) +
	( 16'sd 28754) * $signed(input_fmap_49[7:0]) +
	( 16'sd 16481) * $signed(input_fmap_50[7:0]) +
	( 16'sd 20015) * $signed(input_fmap_51[7:0]) +
	( 16'sd 16758) * $signed(input_fmap_52[7:0]) +
	( 14'sd 4845) * $signed(input_fmap_53[7:0]) +
	( 16'sd 18505) * $signed(input_fmap_54[7:0]) +
	( 16'sd 30905) * $signed(input_fmap_55[7:0]) +
	( 14'sd 4479) * $signed(input_fmap_56[7:0]) +
	( 16'sd 22257) * $signed(input_fmap_57[7:0]) +
	( 15'sd 9333) * $signed(input_fmap_58[7:0]) +
	( 16'sd 30996) * $signed(input_fmap_59[7:0]) +
	( 16'sd 19818) * $signed(input_fmap_60[7:0]) +
	( 11'sd 733) * $signed(input_fmap_61[7:0]) +
	( 14'sd 5450) * $signed(input_fmap_62[7:0]) +
	( 14'sd 6551) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_58;
assign conv_mac_58 = 
	( 16'sd 32756) * $signed(input_fmap_0[7:0]) +
	( 16'sd 24142) * $signed(input_fmap_1[7:0]) +
	( 16'sd 20303) * $signed(input_fmap_2[7:0]) +
	( 13'sd 2420) * $signed(input_fmap_3[7:0]) +
	( 16'sd 28653) * $signed(input_fmap_4[7:0]) +
	( 12'sd 1968) * $signed(input_fmap_5[7:0]) +
	( 16'sd 28604) * $signed(input_fmap_6[7:0]) +
	( 15'sd 8698) * $signed(input_fmap_7[7:0]) +
	( 15'sd 12008) * $signed(input_fmap_8[7:0]) +
	( 15'sd 8916) * $signed(input_fmap_9[7:0]) +
	( 16'sd 17977) * $signed(input_fmap_10[7:0]) +
	( 15'sd 12450) * $signed(input_fmap_11[7:0]) +
	( 16'sd 26066) * $signed(input_fmap_12[7:0]) +
	( 16'sd 20563) * $signed(input_fmap_13[7:0]) +
	( 16'sd 29494) * $signed(input_fmap_14[7:0]) +
	( 16'sd 24906) * $signed(input_fmap_15[7:0]) +
	( 15'sd 12264) * $signed(input_fmap_16[7:0]) +
	( 16'sd 25226) * $signed(input_fmap_17[7:0]) +
	( 16'sd 18123) * $signed(input_fmap_18[7:0]) +
	( 16'sd 19066) * $signed(input_fmap_19[7:0]) +
	( 15'sd 12845) * $signed(input_fmap_20[7:0]) +
	( 14'sd 5470) * $signed(input_fmap_21[7:0]) +
	( 14'sd 5874) * $signed(input_fmap_22[7:0]) +
	( 16'sd 29918) * $signed(input_fmap_23[7:0]) +
	( 16'sd 31697) * $signed(input_fmap_24[7:0]) +
	( 16'sd 25592) * $signed(input_fmap_25[7:0]) +
	( 16'sd 22340) * $signed(input_fmap_26[7:0]) +
	( 14'sd 8102) * $signed(input_fmap_27[7:0]) +
	( 16'sd 31043) * $signed(input_fmap_28[7:0]) +
	( 16'sd 22171) * $signed(input_fmap_29[7:0]) +
	( 11'sd 825) * $signed(input_fmap_30[7:0]) +
	( 16'sd 28517) * $signed(input_fmap_31[7:0]) +
	( 15'sd 12414) * $signed(input_fmap_32[7:0]) +
	( 14'sd 4858) * $signed(input_fmap_33[7:0]) +
	( 16'sd 27618) * $signed(input_fmap_34[7:0]) +
	( 16'sd 20086) * $signed(input_fmap_35[7:0]) +
	( 16'sd 20151) * $signed(input_fmap_36[7:0]) +
	( 16'sd 26204) * $signed(input_fmap_37[7:0]) +
	( 16'sd 26072) * $signed(input_fmap_38[7:0]) +
	( 13'sd 2581) * $signed(input_fmap_39[7:0]) +
	( 15'sd 11775) * $signed(input_fmap_40[7:0]) +
	( 16'sd 29015) * $signed(input_fmap_41[7:0]) +
	( 16'sd 19531) * $signed(input_fmap_42[7:0]) +
	( 12'sd 1855) * $signed(input_fmap_43[7:0]) +
	( 16'sd 32173) * $signed(input_fmap_44[7:0]) +
	( 13'sd 3362) * $signed(input_fmap_45[7:0]) +
	( 16'sd 18732) * $signed(input_fmap_46[7:0]) +
	( 16'sd 31102) * $signed(input_fmap_47[7:0]) +
	( 15'sd 14632) * $signed(input_fmap_48[7:0]) +
	( 16'sd 16814) * $signed(input_fmap_49[7:0]) +
	( 15'sd 16080) * $signed(input_fmap_50[7:0]) +
	( 13'sd 2992) * $signed(input_fmap_51[7:0]) +
	( 16'sd 29407) * $signed(input_fmap_52[7:0]) +
	( 12'sd 1905) * $signed(input_fmap_53[7:0]) +
	( 15'sd 13012) * $signed(input_fmap_54[7:0]) +
	( 14'sd 7434) * $signed(input_fmap_55[7:0]) +
	( 15'sd 10934) * $signed(input_fmap_56[7:0]) +
	( 16'sd 24812) * $signed(input_fmap_57[7:0]) +
	( 13'sd 2149) * $signed(input_fmap_58[7:0]) +
	( 16'sd 20193) * $signed(input_fmap_59[7:0]) +
	( 16'sd 30501) * $signed(input_fmap_60[7:0]) +
	( 16'sd 23156) * $signed(input_fmap_61[7:0]) +
	( 16'sd 18929) * $signed(input_fmap_62[7:0]) +
	( 16'sd 28073) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_59;
assign conv_mac_59 = 
	( 15'sd 15454) * $signed(input_fmap_0[7:0]) +
	( 16'sd 17211) * $signed(input_fmap_1[7:0]) +
	( 16'sd 19663) * $signed(input_fmap_2[7:0]) +
	( 13'sd 3737) * $signed(input_fmap_3[7:0]) +
	( 14'sd 6875) * $signed(input_fmap_4[7:0]) +
	( 15'sd 15592) * $signed(input_fmap_5[7:0]) +
	( 16'sd 25527) * $signed(input_fmap_6[7:0]) +
	( 14'sd 5273) * $signed(input_fmap_7[7:0]) +
	( 16'sd 28419) * $signed(input_fmap_8[7:0]) +
	( 16'sd 31697) * $signed(input_fmap_9[7:0]) +
	( 16'sd 21738) * $signed(input_fmap_10[7:0]) +
	( 16'sd 17282) * $signed(input_fmap_11[7:0]) +
	( 12'sd 1632) * $signed(input_fmap_12[7:0]) +
	( 16'sd 29075) * $signed(input_fmap_13[7:0]) +
	( 16'sd 27630) * $signed(input_fmap_14[7:0]) +
	( 16'sd 21325) * $signed(input_fmap_15[7:0]) +
	( 16'sd 24573) * $signed(input_fmap_16[7:0]) +
	( 14'sd 7819) * $signed(input_fmap_17[7:0]) +
	( 16'sd 17707) * $signed(input_fmap_18[7:0]) +
	( 16'sd 23900) * $signed(input_fmap_19[7:0]) +
	( 13'sd 3516) * $signed(input_fmap_20[7:0]) +
	( 14'sd 4880) * $signed(input_fmap_21[7:0]) +
	( 15'sd 8837) * $signed(input_fmap_22[7:0]) +
	( 15'sd 9785) * $signed(input_fmap_23[7:0]) +
	( 16'sd 17140) * $signed(input_fmap_24[7:0]) +
	( 14'sd 4416) * $signed(input_fmap_25[7:0]) +
	( 15'sd 12913) * $signed(input_fmap_26[7:0]) +
	( 16'sd 31003) * $signed(input_fmap_27[7:0]) +
	( 13'sd 3709) * $signed(input_fmap_28[7:0]) +
	( 16'sd 18550) * $signed(input_fmap_29[7:0]) +
	( 15'sd 8748) * $signed(input_fmap_30[7:0]) +
	( 15'sd 14269) * $signed(input_fmap_31[7:0]) +
	( 16'sd 30606) * $signed(input_fmap_32[7:0]) +
	( 16'sd 19314) * $signed(input_fmap_33[7:0]) +
	( 16'sd 26768) * $signed(input_fmap_34[7:0]) +
	( 16'sd 28828) * $signed(input_fmap_35[7:0]) +
	( 16'sd 22324) * $signed(input_fmap_36[7:0]) +
	( 16'sd 30451) * $signed(input_fmap_37[7:0]) +
	( 16'sd 29316) * $signed(input_fmap_38[7:0]) +
	( 16'sd 28782) * $signed(input_fmap_39[7:0]) +
	( 16'sd 27693) * $signed(input_fmap_40[7:0]) +
	( 16'sd 27214) * $signed(input_fmap_41[7:0]) +
	( 15'sd 8559) * $signed(input_fmap_42[7:0]) +
	( 16'sd 32312) * $signed(input_fmap_43[7:0]) +
	( 15'sd 11928) * $signed(input_fmap_44[7:0]) +
	( 14'sd 7409) * $signed(input_fmap_45[7:0]) +
	( 14'sd 4382) * $signed(input_fmap_46[7:0]) +
	( 11'sd 901) * $signed(input_fmap_47[7:0]) +
	( 15'sd 12501) * $signed(input_fmap_48[7:0]) +
	( 16'sd 32405) * $signed(input_fmap_49[7:0]) +
	( 16'sd 32142) * $signed(input_fmap_50[7:0]) +
	( 15'sd 12277) * $signed(input_fmap_51[7:0]) +
	( 14'sd 6120) * $signed(input_fmap_52[7:0]) +
	( 16'sd 21877) * $signed(input_fmap_53[7:0]) +
	( 16'sd 22126) * $signed(input_fmap_54[7:0]) +
	( 15'sd 13682) * $signed(input_fmap_55[7:0]) +
	( 15'sd 15872) * $signed(input_fmap_56[7:0]) +
	( 14'sd 4346) * $signed(input_fmap_57[7:0]) +
	( 16'sd 24254) * $signed(input_fmap_58[7:0]) +
	( 16'sd 24652) * $signed(input_fmap_59[7:0]) +
	( 16'sd 30617) * $signed(input_fmap_60[7:0]) +
	( 16'sd 19737) * $signed(input_fmap_61[7:0]) +
	( 16'sd 31350) * $signed(input_fmap_62[7:0]) +
	( 16'sd 28660) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_60;
assign conv_mac_60 = 
	( 16'sd 24046) * $signed(input_fmap_0[7:0]) +
	( 16'sd 30805) * $signed(input_fmap_1[7:0]) +
	( 15'sd 12071) * $signed(input_fmap_2[7:0]) +
	( 15'sd 14076) * $signed(input_fmap_3[7:0]) +
	( 15'sd 13011) * $signed(input_fmap_4[7:0]) +
	( 16'sd 26866) * $signed(input_fmap_5[7:0]) +
	( 16'sd 22826) * $signed(input_fmap_6[7:0]) +
	( 16'sd 19795) * $signed(input_fmap_7[7:0]) +
	( 16'sd 30862) * $signed(input_fmap_8[7:0]) +
	( 15'sd 9512) * $signed(input_fmap_9[7:0]) +
	( 16'sd 18535) * $signed(input_fmap_10[7:0]) +
	( 16'sd 20352) * $signed(input_fmap_11[7:0]) +
	( 16'sd 24770) * $signed(input_fmap_12[7:0]) +
	( 12'sd 1442) * $signed(input_fmap_13[7:0]) +
	( 15'sd 16347) * $signed(input_fmap_14[7:0]) +
	( 16'sd 16612) * $signed(input_fmap_15[7:0]) +
	( 16'sd 25365) * $signed(input_fmap_16[7:0]) +
	( 16'sd 26372) * $signed(input_fmap_17[7:0]) +
	( 16'sd 24608) * $signed(input_fmap_18[7:0]) +
	( 14'sd 7164) * $signed(input_fmap_19[7:0]) +
	( 16'sd 17333) * $signed(input_fmap_20[7:0]) +
	( 16'sd 27675) * $signed(input_fmap_21[7:0]) +
	( 16'sd 27633) * $signed(input_fmap_22[7:0]) +
	( 16'sd 18286) * $signed(input_fmap_23[7:0]) +
	( 15'sd 12229) * $signed(input_fmap_24[7:0]) +
	( 15'sd 16072) * $signed(input_fmap_25[7:0]) +
	( 16'sd 21891) * $signed(input_fmap_26[7:0]) +
	( 15'sd 16242) * $signed(input_fmap_27[7:0]) +
	( 16'sd 25306) * $signed(input_fmap_28[7:0]) +
	( 15'sd 10755) * $signed(input_fmap_29[7:0]) +
	( 15'sd 12881) * $signed(input_fmap_30[7:0]) +
	( 16'sd 16610) * $signed(input_fmap_31[7:0]) +
	( 15'sd 11869) * $signed(input_fmap_32[7:0]) +
	( 15'sd 12283) * $signed(input_fmap_33[7:0]) +
	( 16'sd 20620) * $signed(input_fmap_34[7:0]) +
	( 16'sd 22706) * $signed(input_fmap_35[7:0]) +
	( 16'sd 22083) * $signed(input_fmap_36[7:0]) +
	( 14'sd 7700) * $signed(input_fmap_37[7:0]) +
	( 15'sd 9519) * $signed(input_fmap_38[7:0]) +
	( 14'sd 6574) * $signed(input_fmap_39[7:0]) +
	( 13'sd 2411) * $signed(input_fmap_40[7:0]) +
	( 16'sd 16908) * $signed(input_fmap_41[7:0]) +
	( 15'sd 10749) * $signed(input_fmap_42[7:0]) +
	( 14'sd 5544) * $signed(input_fmap_43[7:0]) +
	( 14'sd 5741) * $signed(input_fmap_44[7:0]) +
	( 16'sd 32278) * $signed(input_fmap_45[7:0]) +
	( 14'sd 6272) * $signed(input_fmap_46[7:0]) +
	( 16'sd 20071) * $signed(input_fmap_47[7:0]) +
	( 14'sd 5587) * $signed(input_fmap_48[7:0]) +
	( 16'sd 21725) * $signed(input_fmap_49[7:0]) +
	( 15'sd 9010) * $signed(input_fmap_50[7:0]) +
	( 14'sd 6442) * $signed(input_fmap_51[7:0]) +
	( 15'sd 13547) * $signed(input_fmap_52[7:0]) +
	( 16'sd 18240) * $signed(input_fmap_53[7:0]) +
	( 16'sd 20895) * $signed(input_fmap_54[7:0]) +
	( 15'sd 9422) * $signed(input_fmap_55[7:0]) +
	( 16'sd 17530) * $signed(input_fmap_56[7:0]) +
	( 15'sd 10203) * $signed(input_fmap_57[7:0]) +
	( 15'sd 9754) * $signed(input_fmap_58[7:0]) +
	( 16'sd 23556) * $signed(input_fmap_59[7:0]) +
	( 15'sd 14427) * $signed(input_fmap_60[7:0]) +
	( 16'sd 16857) * $signed(input_fmap_61[7:0]) +
	( 15'sd 15914) * $signed(input_fmap_62[7:0]) +
	( 13'sd 3937) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_61;
assign conv_mac_61 = 
	( 16'sd 25143) * $signed(input_fmap_0[7:0]) +
	( 12'sd 1838) * $signed(input_fmap_1[7:0]) +
	( 16'sd 16923) * $signed(input_fmap_2[7:0]) +
	( 16'sd 17546) * $signed(input_fmap_3[7:0]) +
	( 16'sd 27209) * $signed(input_fmap_4[7:0]) +
	( 16'sd 30277) * $signed(input_fmap_5[7:0]) +
	( 15'sd 14454) * $signed(input_fmap_6[7:0]) +
	( 16'sd 28802) * $signed(input_fmap_7[7:0]) +
	( 15'sd 8344) * $signed(input_fmap_8[7:0]) +
	( 15'sd 9349) * $signed(input_fmap_9[7:0]) +
	( 13'sd 3567) * $signed(input_fmap_10[7:0]) +
	( 16'sd 25463) * $signed(input_fmap_11[7:0]) +
	( 16'sd 31910) * $signed(input_fmap_12[7:0]) +
	( 16'sd 28520) * $signed(input_fmap_13[7:0]) +
	( 16'sd 26338) * $signed(input_fmap_14[7:0]) +
	( 15'sd 12581) * $signed(input_fmap_15[7:0]) +
	( 15'sd 13369) * $signed(input_fmap_16[7:0]) +
	( 16'sd 21317) * $signed(input_fmap_17[7:0]) +
	( 15'sd 10654) * $signed(input_fmap_18[7:0]) +
	( 15'sd 15941) * $signed(input_fmap_19[7:0]) +
	( 16'sd 26726) * $signed(input_fmap_20[7:0]) +
	( 16'sd 27571) * $signed(input_fmap_21[7:0]) +
	( 15'sd 14277) * $signed(input_fmap_22[7:0]) +
	( 11'sd 702) * $signed(input_fmap_23[7:0]) +
	( 15'sd 16104) * $signed(input_fmap_24[7:0]) +
	( 15'sd 8870) * $signed(input_fmap_25[7:0]) +
	( 16'sd 21237) * $signed(input_fmap_26[7:0]) +
	( 12'sd 2040) * $signed(input_fmap_27[7:0]) +
	( 16'sd 32442) * $signed(input_fmap_28[7:0]) +
	( 13'sd 3420) * $signed(input_fmap_29[7:0]) +
	( 16'sd 21461) * $signed(input_fmap_30[7:0]) +
	( 16'sd 32643) * $signed(input_fmap_31[7:0]) +
	( 13'sd 2218) * $signed(input_fmap_32[7:0]) +
	( 16'sd 18848) * $signed(input_fmap_33[7:0]) +
	( 16'sd 17690) * $signed(input_fmap_34[7:0]) +
	( 16'sd 17159) * $signed(input_fmap_35[7:0]) +
	( 16'sd 24514) * $signed(input_fmap_36[7:0]) +
	( 15'sd 14880) * $signed(input_fmap_37[7:0]) +
	( 15'sd 8274) * $signed(input_fmap_38[7:0]) +
	( 14'sd 6996) * $signed(input_fmap_39[7:0]) +
	( 15'sd 13686) * $signed(input_fmap_40[7:0]) +
	( 16'sd 18151) * $signed(input_fmap_41[7:0]) +
	( 16'sd 23948) * $signed(input_fmap_42[7:0]) +
	( 15'sd 10396) * $signed(input_fmap_43[7:0]) +
	( 14'sd 6045) * $signed(input_fmap_44[7:0]) +
	( 14'sd 6134) * $signed(input_fmap_45[7:0]) +
	( 15'sd 14087) * $signed(input_fmap_46[7:0]) +
	( 9'sd 206) * $signed(input_fmap_47[7:0]) +
	( 16'sd 30825) * $signed(input_fmap_48[7:0]) +
	( 14'sd 4692) * $signed(input_fmap_49[7:0]) +
	( 15'sd 11000) * $signed(input_fmap_50[7:0]) +
	( 13'sd 3328) * $signed(input_fmap_51[7:0]) +
	( 16'sd 26039) * $signed(input_fmap_52[7:0]) +
	( 16'sd 27676) * $signed(input_fmap_53[7:0]) +
	( 15'sd 13650) * $signed(input_fmap_54[7:0]) +
	( 16'sd 19648) * $signed(input_fmap_55[7:0]) +
	( 16'sd 26302) * $signed(input_fmap_56[7:0]) +
	( 14'sd 5502) * $signed(input_fmap_57[7:0]) +
	( 13'sd 2105) * $signed(input_fmap_58[7:0]) +
	( 16'sd 26249) * $signed(input_fmap_59[7:0]) +
	( 15'sd 13559) * $signed(input_fmap_60[7:0]) +
	( 16'sd 20628) * $signed(input_fmap_61[7:0]) +
	( 16'sd 23815) * $signed(input_fmap_62[7:0]) +
	( 16'sd 21193) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_62;
assign conv_mac_62 = 
	( 14'sd 4855) * $signed(input_fmap_0[7:0]) +
	( 15'sd 9805) * $signed(input_fmap_1[7:0]) +
	( 16'sd 19825) * $signed(input_fmap_2[7:0]) +
	( 16'sd 20091) * $signed(input_fmap_3[7:0]) +
	( 16'sd 32593) * $signed(input_fmap_4[7:0]) +
	( 16'sd 22739) * $signed(input_fmap_5[7:0]) +
	( 16'sd 22848) * $signed(input_fmap_6[7:0]) +
	( 16'sd 27324) * $signed(input_fmap_7[7:0]) +
	( 14'sd 5768) * $signed(input_fmap_8[7:0]) +
	( 16'sd 20938) * $signed(input_fmap_9[7:0]) +
	( 12'sd 1971) * $signed(input_fmap_10[7:0]) +
	( 16'sd 28523) * $signed(input_fmap_11[7:0]) +
	( 13'sd 3989) * $signed(input_fmap_12[7:0]) +
	( 15'sd 11324) * $signed(input_fmap_13[7:0]) +
	( 14'sd 6509) * $signed(input_fmap_14[7:0]) +
	( 15'sd 11564) * $signed(input_fmap_15[7:0]) +
	( 13'sd 2602) * $signed(input_fmap_16[7:0]) +
	( 16'sd 31790) * $signed(input_fmap_17[7:0]) +
	( 16'sd 28697) * $signed(input_fmap_18[7:0]) +
	( 16'sd 16983) * $signed(input_fmap_19[7:0]) +
	( 16'sd 22154) * $signed(input_fmap_20[7:0]) +
	( 11'sd 933) * $signed(input_fmap_21[7:0]) +
	( 10'sd 382) * $signed(input_fmap_22[7:0]) +
	( 15'sd 13615) * $signed(input_fmap_23[7:0]) +
	( 16'sd 27965) * $signed(input_fmap_24[7:0]) +
	( 15'sd 9421) * $signed(input_fmap_25[7:0]) +
	( 15'sd 15090) * $signed(input_fmap_26[7:0]) +
	( 12'sd 1945) * $signed(input_fmap_27[7:0]) +
	( 13'sd 2893) * $signed(input_fmap_28[7:0]) +
	( 15'sd 13573) * $signed(input_fmap_29[7:0]) +
	( 13'sd 2910) * $signed(input_fmap_30[7:0]) +
	( 16'sd 31891) * $signed(input_fmap_31[7:0]) +
	( 16'sd 22710) * $signed(input_fmap_32[7:0]) +
	( 16'sd 32626) * $signed(input_fmap_33[7:0]) +
	( 16'sd 19075) * $signed(input_fmap_34[7:0]) +
	( 15'sd 9376) * $signed(input_fmap_35[7:0]) +
	( 15'sd 14925) * $signed(input_fmap_36[7:0]) +
	( 12'sd 1208) * $signed(input_fmap_37[7:0]) +
	( 16'sd 26327) * $signed(input_fmap_38[7:0]) +
	( 16'sd 30162) * $signed(input_fmap_39[7:0]) +
	( 14'sd 5367) * $signed(input_fmap_40[7:0]) +
	( 15'sd 15121) * $signed(input_fmap_41[7:0]) +
	( 16'sd 25968) * $signed(input_fmap_42[7:0]) +
	( 14'sd 4685) * $signed(input_fmap_43[7:0]) +
	( 13'sd 2780) * $signed(input_fmap_44[7:0]) +
	( 15'sd 16045) * $signed(input_fmap_45[7:0]) +
	( 16'sd 29689) * $signed(input_fmap_46[7:0]) +
	( 16'sd 21435) * $signed(input_fmap_47[7:0]) +
	( 16'sd 28963) * $signed(input_fmap_48[7:0]) +
	( 15'sd 12321) * $signed(input_fmap_49[7:0]) +
	( 16'sd 22986) * $signed(input_fmap_50[7:0]) +
	( 15'sd 9025) * $signed(input_fmap_51[7:0]) +
	( 14'sd 5035) * $signed(input_fmap_52[7:0]) +
	( 15'sd 8926) * $signed(input_fmap_53[7:0]) +
	( 14'sd 7279) * $signed(input_fmap_54[7:0]) +
	( 14'sd 5652) * $signed(input_fmap_55[7:0]) +
	( 15'sd 12271) * $signed(input_fmap_56[7:0]) +
	( 16'sd 32687) * $signed(input_fmap_57[7:0]) +
	( 15'sd 13079) * $signed(input_fmap_58[7:0]) +
	( 16'sd 29410) * $signed(input_fmap_59[7:0]) +
	( 15'sd 9162) * $signed(input_fmap_60[7:0]) +
	( 13'sd 2535) * $signed(input_fmap_61[7:0]) +
	( 13'sd 2362) * $signed(input_fmap_62[7:0]) +
	( 16'sd 18544) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_63;
assign conv_mac_63 = 
	( 16'sd 31151) * $signed(input_fmap_0[7:0]) +
	( 14'sd 5541) * $signed(input_fmap_1[7:0]) +
	( 16'sd 16899) * $signed(input_fmap_2[7:0]) +
	( 16'sd 17750) * $signed(input_fmap_3[7:0]) +
	( 16'sd 32702) * $signed(input_fmap_4[7:0]) +
	( 16'sd 29477) * $signed(input_fmap_5[7:0]) +
	( 16'sd 21599) * $signed(input_fmap_6[7:0]) +
	( 15'sd 8230) * $signed(input_fmap_7[7:0]) +
	( 16'sd 17854) * $signed(input_fmap_8[7:0]) +
	( 16'sd 23592) * $signed(input_fmap_9[7:0]) +
	( 15'sd 12127) * $signed(input_fmap_10[7:0]) +
	( 16'sd 19899) * $signed(input_fmap_11[7:0]) +
	( 16'sd 30528) * $signed(input_fmap_12[7:0]) +
	( 15'sd 11158) * $signed(input_fmap_13[7:0]) +
	( 16'sd 20733) * $signed(input_fmap_14[7:0]) +
	( 16'sd 28407) * $signed(input_fmap_15[7:0]) +
	( 15'sd 8498) * $signed(input_fmap_16[7:0]) +
	( 16'sd 29373) * $signed(input_fmap_17[7:0]) +
	( 13'sd 3626) * $signed(input_fmap_18[7:0]) +
	( 16'sd 23648) * $signed(input_fmap_19[7:0]) +
	( 16'sd 24871) * $signed(input_fmap_20[7:0]) +
	( 16'sd 28961) * $signed(input_fmap_21[7:0]) +
	( 16'sd 32370) * $signed(input_fmap_22[7:0]) +
	( 16'sd 25745) * $signed(input_fmap_23[7:0]) +
	( 16'sd 22665) * $signed(input_fmap_24[7:0]) +
	( 16'sd 22742) * $signed(input_fmap_25[7:0]) +
	( 16'sd 27920) * $signed(input_fmap_26[7:0]) +
	( 16'sd 24810) * $signed(input_fmap_27[7:0]) +
	( 16'sd 18294) * $signed(input_fmap_28[7:0]) +
	( 16'sd 22791) * $signed(input_fmap_29[7:0]) +
	( 14'sd 4736) * $signed(input_fmap_30[7:0]) +
	( 15'sd 11975) * $signed(input_fmap_31[7:0]) +
	( 15'sd 11742) * $signed(input_fmap_32[7:0]) +
	( 16'sd 26739) * $signed(input_fmap_33[7:0]) +
	( 16'sd 23914) * $signed(input_fmap_34[7:0]) +
	( 15'sd 9148) * $signed(input_fmap_35[7:0]) +
	( 16'sd 16693) * $signed(input_fmap_36[7:0]) +
	( 13'sd 3851) * $signed(input_fmap_37[7:0]) +
	( 16'sd 23329) * $signed(input_fmap_38[7:0]) +
	( 16'sd 21927) * $signed(input_fmap_39[7:0]) +
	( 15'sd 8233) * $signed(input_fmap_40[7:0]) +
	( 15'sd 12814) * $signed(input_fmap_41[7:0]) +
	( 15'sd 10436) * $signed(input_fmap_42[7:0]) +
	( 14'sd 7948) * $signed(input_fmap_43[7:0]) +
	( 16'sd 23652) * $signed(input_fmap_44[7:0]) +
	( 16'sd 24792) * $signed(input_fmap_45[7:0]) +
	( 13'sd 2233) * $signed(input_fmap_46[7:0]) +
	( 16'sd 19720) * $signed(input_fmap_47[7:0]) +
	( 16'sd 32575) * $signed(input_fmap_48[7:0]) +
	( 13'sd 3169) * $signed(input_fmap_49[7:0]) +
	( 15'sd 12537) * $signed(input_fmap_50[7:0]) +
	( 16'sd 26545) * $signed(input_fmap_51[7:0]) +
	( 16'sd 21643) * $signed(input_fmap_52[7:0]) +
	( 16'sd 31795) * $signed(input_fmap_53[7:0]) +
	( 16'sd 31721) * $signed(input_fmap_54[7:0]) +
	( 14'sd 6478) * $signed(input_fmap_55[7:0]) +
	( 15'sd 13894) * $signed(input_fmap_56[7:0]) +
	( 14'sd 6444) * $signed(input_fmap_57[7:0]) +
	( 16'sd 17312) * $signed(input_fmap_58[7:0]) +
	( 16'sd 24897) * $signed(input_fmap_59[7:0]) +
	( 16'sd 28546) * $signed(input_fmap_60[7:0]) +
	( 15'sd 13908) * $signed(input_fmap_61[7:0]) +
	( 10'sd 474) * $signed(input_fmap_62[7:0]) +
	( 15'sd 16220) * $signed(input_fmap_63[7:0]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 16'd21895;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1 + 13'd3309;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 16'd22585;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3 + 16'd20835;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4 + 16'd29284;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5 + 16'd22122;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6 + 16'd18546;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7 + 13'd3070;
logic [31:0] bias_add_8;
assign bias_add_8 = conv_mac_8 + 13'd2070;
logic [31:0] bias_add_9;
assign bias_add_9 = conv_mac_9 + 15'd13743;
logic [31:0] bias_add_10;
assign bias_add_10 = conv_mac_10 + 11'd604;
logic [31:0] bias_add_11;
assign bias_add_11 = conv_mac_11 + 16'd26037;
logic [31:0] bias_add_12;
assign bias_add_12 = conv_mac_12 + 16'd26286;
logic [31:0] bias_add_13;
assign bias_add_13 = conv_mac_13 + 15'd12475;
logic [31:0] bias_add_14;
assign bias_add_14 = conv_mac_14 + 14'd7248;
logic [31:0] bias_add_15;
assign bias_add_15 = conv_mac_15 + 11'd579;
logic [31:0] bias_add_16;
assign bias_add_16 = conv_mac_16 + 15'd13756;
logic [31:0] bias_add_17;
assign bias_add_17 = conv_mac_17 + 14'd6833;
logic [31:0] bias_add_18;
assign bias_add_18 = conv_mac_18 + 16'd29654;
logic [31:0] bias_add_19;
assign bias_add_19 = conv_mac_19 + 16'd18572;
logic [31:0] bias_add_20;
assign bias_add_20 = conv_mac_20 + 14'd7187;
logic [31:0] bias_add_21;
assign bias_add_21 = conv_mac_21 + 14'd6631;
logic [31:0] bias_add_22;
assign bias_add_22 = conv_mac_22 + 16'd28356;
logic [31:0] bias_add_23;
assign bias_add_23 = conv_mac_23 + 15'd14422;
logic [31:0] bias_add_24;
assign bias_add_24 = conv_mac_24 + 15'd8229;
logic [31:0] bias_add_25;
assign bias_add_25 = conv_mac_25 + 14'd4482;
logic [31:0] bias_add_26;
assign bias_add_26 = conv_mac_26 + 14'd7603;
logic [31:0] bias_add_27;
assign bias_add_27 = conv_mac_27 + 13'd4069;
logic [31:0] bias_add_28;
assign bias_add_28 = conv_mac_28 + 16'd31049;
logic [31:0] bias_add_29;
assign bias_add_29 = conv_mac_29 + 14'd7486;
logic [31:0] bias_add_30;
assign bias_add_30 = conv_mac_30 + 15'd8207;
logic [31:0] bias_add_31;
assign bias_add_31 = conv_mac_31 + 16'd19911;
logic [31:0] bias_add_32;
assign bias_add_32 = conv_mac_32 + 16'd27232;
logic [31:0] bias_add_33;
assign bias_add_33 = conv_mac_33 + 13'd2662;
logic [31:0] bias_add_34;
assign bias_add_34 = conv_mac_34 + 16'd26052;
logic [31:0] bias_add_35;
assign bias_add_35 = conv_mac_35 + 16'd28331;
logic [31:0] bias_add_36;
assign bias_add_36 = conv_mac_36 + 16'd18871;
logic [31:0] bias_add_37;
assign bias_add_37 = conv_mac_37 + 15'd14057;
logic [31:0] bias_add_38;
assign bias_add_38 = conv_mac_38 + 16'd29020;
logic [31:0] bias_add_39;
assign bias_add_39 = conv_mac_39 + 14'd4360;
logic [31:0] bias_add_40;
assign bias_add_40 = conv_mac_40 + 16'd21375;
logic [31:0] bias_add_41;
assign bias_add_41 = conv_mac_41 + 14'd4150;
logic [31:0] bias_add_42;
assign bias_add_42 = conv_mac_42 + 16'd21665;
logic [31:0] bias_add_43;
assign bias_add_43 = conv_mac_43 + 16'd23270;
logic [31:0] bias_add_44;
assign bias_add_44 = conv_mac_44 + 12'd1497;
logic [31:0] bias_add_45;
assign bias_add_45 = conv_mac_45 + 14'd6152;
logic [31:0] bias_add_46;
assign bias_add_46 = conv_mac_46 + 16'd25057;
logic [31:0] bias_add_47;
assign bias_add_47 = conv_mac_47 + 16'd31764;
logic [31:0] bias_add_48;
assign bias_add_48 = conv_mac_48 + 16'd31936;
logic [31:0] bias_add_49;
assign bias_add_49 = conv_mac_49 + 14'd5288;
logic [31:0] bias_add_50;
assign bias_add_50 = conv_mac_50 + 15'd12931;
logic [31:0] bias_add_51;
assign bias_add_51 = conv_mac_51 + 15'd10780;
logic [31:0] bias_add_52;
assign bias_add_52 = conv_mac_52 + 16'd28001;
logic [31:0] bias_add_53;
assign bias_add_53 = conv_mac_53 + 16'd23030;
logic [31:0] bias_add_54;
assign bias_add_54 = conv_mac_54 + 16'd19655;
logic [31:0] bias_add_55;
assign bias_add_55 = conv_mac_55 + 16'd27751;
logic [31:0] bias_add_56;
assign bias_add_56 = conv_mac_56 + 14'd5032;
logic [31:0] bias_add_57;
assign bias_add_57 = conv_mac_57 + 16'd18730;
logic [31:0] bias_add_58;
assign bias_add_58 = conv_mac_58 + 16'd17315;
logic [31:0] bias_add_59;
assign bias_add_59 = conv_mac_59 + 16'd25903;
logic [31:0] bias_add_60;
assign bias_add_60 = conv_mac_60 + 16'd16694;
logic [31:0] bias_add_61;
assign bias_add_61 = conv_mac_61 + 14'd4662;
logic [31:0] bias_add_62;
assign bias_add_62 = conv_mac_62 + 13'd3849;
logic [31:0] bias_add_63;
assign bias_add_63 = conv_mac_63 + 16'd23570;

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

assign output_act = {
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
