module conv4_pw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [256-1:0] input_act,
    output logic [256-1:0] output_act,
    output logic ready
);

logic [256-1:0] input_act_ff;
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

logic signed [31:0] conv_mac_0;
assign conv_mac_0 = 
	( 16'sd 25509) * $signed(input_fmap_0[7:0]) +
	( 15'sd 15490) * $signed(input_fmap_1[7:0]) +
	( 16'sd 27596) * $signed(input_fmap_2[7:0]) +
	( 16'sd 18830) * $signed(input_fmap_3[7:0]) +
	( 16'sd 28647) * $signed(input_fmap_4[7:0]) +
	( 15'sd 9572) * $signed(input_fmap_5[7:0]) +
	( 16'sd 23862) * $signed(input_fmap_6[7:0]) +
	( 14'sd 5438) * $signed(input_fmap_7[7:0]) +
	( 15'sd 11353) * $signed(input_fmap_8[7:0]) +
	( 16'sd 20658) * $signed(input_fmap_9[7:0]) +
	( 16'sd 19392) * $signed(input_fmap_10[7:0]) +
	( 16'sd 19426) * $signed(input_fmap_11[7:0]) +
	( 12'sd 1677) * $signed(input_fmap_12[7:0]) +
	( 16'sd 26834) * $signed(input_fmap_13[7:0]) +
	( 16'sd 16902) * $signed(input_fmap_14[7:0]) +
	( 15'sd 9244) * $signed(input_fmap_15[7:0]) +
	( 15'sd 15023) * $signed(input_fmap_16[7:0]) +
	( 16'sd 26805) * $signed(input_fmap_17[7:0]) +
	( 16'sd 17202) * $signed(input_fmap_18[7:0]) +
	( 16'sd 29993) * $signed(input_fmap_19[7:0]) +
	( 16'sd 25654) * $signed(input_fmap_20[7:0]) +
	( 16'sd 22224) * $signed(input_fmap_21[7:0]) +
	( 14'sd 4489) * $signed(input_fmap_22[7:0]) +
	( 15'sd 9639) * $signed(input_fmap_23[7:0]) +
	( 15'sd 9044) * $signed(input_fmap_24[7:0]) +
	( 15'sd 14202) * $signed(input_fmap_25[7:0]) +
	( 13'sd 3537) * $signed(input_fmap_26[7:0]) +
	( 16'sd 31472) * $signed(input_fmap_27[7:0]) +
	( 14'sd 5320) * $signed(input_fmap_28[7:0]) +
	( 16'sd 30255) * $signed(input_fmap_29[7:0]) +
	( 15'sd 9154) * $signed(input_fmap_30[7:0]) +
	( 15'sd 16307) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 16'sd 23228) * $signed(input_fmap_0[7:0]) +
	( 13'sd 3519) * $signed(input_fmap_1[7:0]) +
	( 15'sd 9887) * $signed(input_fmap_2[7:0]) +
	( 16'sd 17608) * $signed(input_fmap_3[7:0]) +
	( 13'sd 3471) * $signed(input_fmap_4[7:0]) +
	( 16'sd 23239) * $signed(input_fmap_5[7:0]) +
	( 15'sd 12509) * $signed(input_fmap_6[7:0]) +
	( 16'sd 19065) * $signed(input_fmap_7[7:0]) +
	( 14'sd 6962) * $signed(input_fmap_8[7:0]) +
	( 16'sd 24576) * $signed(input_fmap_9[7:0]) +
	( 16'sd 27473) * $signed(input_fmap_10[7:0]) +
	( 16'sd 18231) * $signed(input_fmap_11[7:0]) +
	( 16'sd 22006) * $signed(input_fmap_12[7:0]) +
	( 15'sd 8875) * $signed(input_fmap_13[7:0]) +
	( 15'sd 11326) * $signed(input_fmap_14[7:0]) +
	( 14'sd 6649) * $signed(input_fmap_15[7:0]) +
	( 16'sd 25758) * $signed(input_fmap_16[7:0]) +
	( 16'sd 17835) * $signed(input_fmap_17[7:0]) +
	( 16'sd 29975) * $signed(input_fmap_18[7:0]) +
	( 16'sd 21987) * $signed(input_fmap_19[7:0]) +
	( 12'sd 1816) * $signed(input_fmap_20[7:0]) +
	( 16'sd 20496) * $signed(input_fmap_21[7:0]) +
	( 15'sd 16118) * $signed(input_fmap_22[7:0]) +
	( 16'sd 20152) * $signed(input_fmap_23[7:0]) +
	( 16'sd 30133) * $signed(input_fmap_24[7:0]) +
	( 15'sd 12853) * $signed(input_fmap_25[7:0]) +
	( 14'sd 8007) * $signed(input_fmap_26[7:0]) +
	( 16'sd 21276) * $signed(input_fmap_27[7:0]) +
	( 14'sd 4377) * $signed(input_fmap_28[7:0]) +
	( 16'sd 31837) * $signed(input_fmap_29[7:0]) +
	( 16'sd 23534) * $signed(input_fmap_30[7:0]) +
	( 16'sd 20894) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 15'sd 14133) * $signed(input_fmap_0[7:0]) +
	( 16'sd 17880) * $signed(input_fmap_1[7:0]) +
	( 15'sd 16360) * $signed(input_fmap_2[7:0]) +
	( 16'sd 22225) * $signed(input_fmap_3[7:0]) +
	( 14'sd 7747) * $signed(input_fmap_4[7:0]) +
	( 9'sd 237) * $signed(input_fmap_5[7:0]) +
	( 16'sd 26006) * $signed(input_fmap_6[7:0]) +
	( 14'sd 7443) * $signed(input_fmap_7[7:0]) +
	( 12'sd 1251) * $signed(input_fmap_8[7:0]) +
	( 12'sd 1885) * $signed(input_fmap_9[7:0]) +
	( 15'sd 10808) * $signed(input_fmap_10[7:0]) +
	( 15'sd 8662) * $signed(input_fmap_11[7:0]) +
	( 15'sd 15862) * $signed(input_fmap_12[7:0]) +
	( 15'sd 10411) * $signed(input_fmap_13[7:0]) +
	( 16'sd 29939) * $signed(input_fmap_14[7:0]) +
	( 15'sd 16182) * $signed(input_fmap_15[7:0]) +
	( 16'sd 30941) * $signed(input_fmap_16[7:0]) +
	( 13'sd 4090) * $signed(input_fmap_17[7:0]) +
	( 14'sd 6913) * $signed(input_fmap_18[7:0]) +
	( 16'sd 21941) * $signed(input_fmap_19[7:0]) +
	( 15'sd 15474) * $signed(input_fmap_20[7:0]) +
	( 13'sd 3524) * $signed(input_fmap_21[7:0]) +
	( 16'sd 17421) * $signed(input_fmap_22[7:0]) +
	( 13'sd 2366) * $signed(input_fmap_23[7:0]) +
	( 16'sd 21751) * $signed(input_fmap_24[7:0]) +
	( 13'sd 2721) * $signed(input_fmap_25[7:0]) +
	( 16'sd 18239) * $signed(input_fmap_26[7:0]) +
	( 15'sd 14293) * $signed(input_fmap_27[7:0]) +
	( 16'sd 23843) * $signed(input_fmap_28[7:0]) +
	( 16'sd 27949) * $signed(input_fmap_29[7:0]) +
	( 16'sd 22099) * $signed(input_fmap_30[7:0]) +
	( 16'sd 17979) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 11'sd 840) * $signed(input_fmap_0[7:0]) +
	( 16'sd 27531) * $signed(input_fmap_1[7:0]) +
	( 12'sd 1180) * $signed(input_fmap_2[7:0]) +
	( 14'sd 6232) * $signed(input_fmap_3[7:0]) +
	( 16'sd 31673) * $signed(input_fmap_4[7:0]) +
	( 15'sd 10327) * $signed(input_fmap_5[7:0]) +
	( 14'sd 7238) * $signed(input_fmap_6[7:0]) +
	( 15'sd 9508) * $signed(input_fmap_7[7:0]) +
	( 15'sd 9250) * $signed(input_fmap_8[7:0]) +
	( 16'sd 31326) * $signed(input_fmap_9[7:0]) +
	( 16'sd 29801) * $signed(input_fmap_10[7:0]) +
	( 16'sd 20907) * $signed(input_fmap_11[7:0]) +
	( 16'sd 28460) * $signed(input_fmap_12[7:0]) +
	( 16'sd 24423) * $signed(input_fmap_13[7:0]) +
	( 11'sd 758) * $signed(input_fmap_14[7:0]) +
	( 16'sd 22850) * $signed(input_fmap_15[7:0]) +
	( 12'sd 1940) * $signed(input_fmap_16[7:0]) +
	( 14'sd 4467) * $signed(input_fmap_17[7:0]) +
	( 15'sd 10004) * $signed(input_fmap_18[7:0]) +
	( 16'sd 31169) * $signed(input_fmap_19[7:0]) +
	( 13'sd 3583) * $signed(input_fmap_20[7:0]) +
	( 16'sd 26563) * $signed(input_fmap_21[7:0]) +
	( 16'sd 29121) * $signed(input_fmap_22[7:0]) +
	( 15'sd 15975) * $signed(input_fmap_23[7:0]) +
	( 15'sd 12536) * $signed(input_fmap_24[7:0]) +
	( 15'sd 8296) * $signed(input_fmap_25[7:0]) +
	( 15'sd 9924) * $signed(input_fmap_26[7:0]) +
	( 16'sd 28284) * $signed(input_fmap_27[7:0]) +
	( 16'sd 19813) * $signed(input_fmap_28[7:0]) +
	( 16'sd 23429) * $signed(input_fmap_29[7:0]) +
	( 12'sd 1878) * $signed(input_fmap_30[7:0]) +
	( 15'sd 15102) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 15'sd 11592) * $signed(input_fmap_0[7:0]) +
	( 13'sd 3995) * $signed(input_fmap_1[7:0]) +
	( 16'sd 30114) * $signed(input_fmap_2[7:0]) +
	( 14'sd 7023) * $signed(input_fmap_3[7:0]) +
	( 15'sd 14089) * $signed(input_fmap_4[7:0]) +
	( 16'sd 25230) * $signed(input_fmap_5[7:0]) +
	( 15'sd 9295) * $signed(input_fmap_6[7:0]) +
	( 15'sd 9679) * $signed(input_fmap_7[7:0]) +
	( 16'sd 24249) * $signed(input_fmap_8[7:0]) +
	( 16'sd 20563) * $signed(input_fmap_9[7:0]) +
	( 16'sd 32700) * $signed(input_fmap_10[7:0]) +
	( 14'sd 5921) * $signed(input_fmap_11[7:0]) +
	( 14'sd 5517) * $signed(input_fmap_12[7:0]) +
	( 16'sd 22322) * $signed(input_fmap_13[7:0]) +
	( 15'sd 12684) * $signed(input_fmap_14[7:0]) +
	( 15'sd 12451) * $signed(input_fmap_15[7:0]) +
	( 14'sd 6942) * $signed(input_fmap_16[7:0]) +
	( 16'sd 31025) * $signed(input_fmap_17[7:0]) +
	( 16'sd 20304) * $signed(input_fmap_18[7:0]) +
	( 16'sd 30659) * $signed(input_fmap_19[7:0]) +
	( 14'sd 5747) * $signed(input_fmap_20[7:0]) +
	( 14'sd 7651) * $signed(input_fmap_21[7:0]) +
	( 16'sd 27055) * $signed(input_fmap_22[7:0]) +
	( 16'sd 23370) * $signed(input_fmap_23[7:0]) +
	( 16'sd 18736) * $signed(input_fmap_24[7:0]) +
	( 16'sd 17617) * $signed(input_fmap_25[7:0]) +
	( 16'sd 17289) * $signed(input_fmap_26[7:0]) +
	( 13'sd 2604) * $signed(input_fmap_27[7:0]) +
	( 16'sd 22499) * $signed(input_fmap_28[7:0]) +
	( 15'sd 8797) * $signed(input_fmap_29[7:0]) +
	( 14'sd 4609) * $signed(input_fmap_30[7:0]) +
	( 16'sd 29732) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 15'sd 10626) * $signed(input_fmap_0[7:0]) +
	( 12'sd 1261) * $signed(input_fmap_1[7:0]) +
	( 16'sd 19230) * $signed(input_fmap_2[7:0]) +
	( 14'sd 6838) * $signed(input_fmap_3[7:0]) +
	( 15'sd 10665) * $signed(input_fmap_4[7:0]) +
	( 15'sd 12915) * $signed(input_fmap_5[7:0]) +
	( 16'sd 24885) * $signed(input_fmap_6[7:0]) +
	( 16'sd 26600) * $signed(input_fmap_7[7:0]) +
	( 16'sd 28502) * $signed(input_fmap_8[7:0]) +
	( 13'sd 3865) * $signed(input_fmap_9[7:0]) +
	( 16'sd 17450) * $signed(input_fmap_10[7:0]) +
	( 16'sd 17461) * $signed(input_fmap_11[7:0]) +
	( 15'sd 14795) * $signed(input_fmap_12[7:0]) +
	( 14'sd 4684) * $signed(input_fmap_13[7:0]) +
	( 15'sd 10882) * $signed(input_fmap_14[7:0]) +
	( 16'sd 18963) * $signed(input_fmap_15[7:0]) +
	( 15'sd 8965) * $signed(input_fmap_16[7:0]) +
	( 15'sd 8619) * $signed(input_fmap_17[7:0]) +
	( 16'sd 18204) * $signed(input_fmap_18[7:0]) +
	( 13'sd 2616) * $signed(input_fmap_19[7:0]) +
	( 16'sd 18032) * $signed(input_fmap_20[7:0]) +
	( 16'sd 21028) * $signed(input_fmap_21[7:0]) +
	( 16'sd 26122) * $signed(input_fmap_22[7:0]) +
	( 16'sd 20134) * $signed(input_fmap_23[7:0]) +
	( 14'sd 5292) * $signed(input_fmap_24[7:0]) +
	( 15'sd 10781) * $signed(input_fmap_25[7:0]) +
	( 13'sd 2113) * $signed(input_fmap_26[7:0]) +
	( 14'sd 5678) * $signed(input_fmap_27[7:0]) +
	( 16'sd 21550) * $signed(input_fmap_28[7:0]) +
	( 15'sd 13645) * $signed(input_fmap_29[7:0]) +
	( 14'sd 4535) * $signed(input_fmap_30[7:0]) +
	( 14'sd 7919) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 13'sd 2700) * $signed(input_fmap_0[7:0]) +
	( 16'sd 19442) * $signed(input_fmap_1[7:0]) +
	( 15'sd 11031) * $signed(input_fmap_2[7:0]) +
	( 16'sd 32715) * $signed(input_fmap_3[7:0]) +
	( 15'sd 8884) * $signed(input_fmap_4[7:0]) +
	( 15'sd 12378) * $signed(input_fmap_5[7:0]) +
	( 11'sd 628) * $signed(input_fmap_6[7:0]) +
	( 15'sd 12306) * $signed(input_fmap_7[7:0]) +
	( 16'sd 22676) * $signed(input_fmap_8[7:0]) +
	( 12'sd 1274) * $signed(input_fmap_9[7:0]) +
	( 16'sd 30551) * $signed(input_fmap_10[7:0]) +
	( 16'sd 20704) * $signed(input_fmap_11[7:0]) +
	( 13'sd 2556) * $signed(input_fmap_12[7:0]) +
	( 15'sd 12674) * $signed(input_fmap_13[7:0]) +
	( 16'sd 25652) * $signed(input_fmap_14[7:0]) +
	( 15'sd 14742) * $signed(input_fmap_15[7:0]) +
	( 15'sd 10472) * $signed(input_fmap_16[7:0]) +
	( 16'sd 21928) * $signed(input_fmap_17[7:0]) +
	( 14'sd 5386) * $signed(input_fmap_18[7:0]) +
	( 15'sd 8856) * $signed(input_fmap_19[7:0]) +
	( 16'sd 17049) * $signed(input_fmap_20[7:0]) +
	( 12'sd 1273) * $signed(input_fmap_21[7:0]) +
	( 16'sd 26292) * $signed(input_fmap_22[7:0]) +
	( 15'sd 13443) * $signed(input_fmap_23[7:0]) +
	( 16'sd 21933) * $signed(input_fmap_24[7:0]) +
	( 14'sd 7849) * $signed(input_fmap_25[7:0]) +
	( 14'sd 6728) * $signed(input_fmap_26[7:0]) +
	( 15'sd 12059) * $signed(input_fmap_27[7:0]) +
	( 16'sd 26989) * $signed(input_fmap_28[7:0]) +
	( 16'sd 16777) * $signed(input_fmap_29[7:0]) +
	( 16'sd 18476) * $signed(input_fmap_30[7:0]) +
	( 16'sd 24350) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 16'sd 27509) * $signed(input_fmap_0[7:0]) +
	( 15'sd 9583) * $signed(input_fmap_1[7:0]) +
	( 16'sd 32058) * $signed(input_fmap_2[7:0]) +
	( 16'sd 32407) * $signed(input_fmap_3[7:0]) +
	( 15'sd 11876) * $signed(input_fmap_4[7:0]) +
	( 15'sd 12352) * $signed(input_fmap_5[7:0]) +
	( 16'sd 27830) * $signed(input_fmap_6[7:0]) +
	( 13'sd 2091) * $signed(input_fmap_7[7:0]) +
	( 16'sd 16422) * $signed(input_fmap_8[7:0]) +
	( 16'sd 24868) * $signed(input_fmap_9[7:0]) +
	( 15'sd 10265) * $signed(input_fmap_10[7:0]) +
	( 16'sd 28871) * $signed(input_fmap_11[7:0]) +
	( 15'sd 16150) * $signed(input_fmap_12[7:0]) +
	( 15'sd 13632) * $signed(input_fmap_13[7:0]) +
	( 15'sd 13596) * $signed(input_fmap_14[7:0]) +
	( 14'sd 6486) * $signed(input_fmap_15[7:0]) +
	( 16'sd 23697) * $signed(input_fmap_16[7:0]) +
	( 16'sd 17365) * $signed(input_fmap_17[7:0]) +
	( 16'sd 25585) * $signed(input_fmap_18[7:0]) +
	( 14'sd 7119) * $signed(input_fmap_19[7:0]) +
	( 14'sd 4184) * $signed(input_fmap_20[7:0]) +
	( 15'sd 10893) * $signed(input_fmap_21[7:0]) +
	( 12'sd 1936) * $signed(input_fmap_22[7:0]) +
	( 16'sd 23192) * $signed(input_fmap_23[7:0]) +
	( 15'sd 9123) * $signed(input_fmap_24[7:0]) +
	( 16'sd 29745) * $signed(input_fmap_25[7:0]) +
	( 14'sd 4519) * $signed(input_fmap_26[7:0]) +
	( 12'sd 2014) * $signed(input_fmap_27[7:0]) +
	( 16'sd 23435) * $signed(input_fmap_28[7:0]) +
	( 16'sd 18780) * $signed(input_fmap_29[7:0]) +
	( 15'sd 12939) * $signed(input_fmap_30[7:0]) +
	( 16'sd 18523) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_8;
assign conv_mac_8 = 
	( 16'sd 23973) * $signed(input_fmap_0[7:0]) +
	( 15'sd 9588) * $signed(input_fmap_1[7:0]) +
	( 16'sd 23099) * $signed(input_fmap_2[7:0]) +
	( 16'sd 18581) * $signed(input_fmap_3[7:0]) +
	( 16'sd 32135) * $signed(input_fmap_4[7:0]) +
	( 15'sd 14156) * $signed(input_fmap_5[7:0]) +
	( 16'sd 20506) * $signed(input_fmap_6[7:0]) +
	( 15'sd 8929) * $signed(input_fmap_7[7:0]) +
	( 16'sd 22697) * $signed(input_fmap_8[7:0]) +
	( 15'sd 14218) * $signed(input_fmap_9[7:0]) +
	( 13'sd 2887) * $signed(input_fmap_10[7:0]) +
	( 15'sd 8471) * $signed(input_fmap_11[7:0]) +
	( 12'sd 1951) * $signed(input_fmap_12[7:0]) +
	( 14'sd 6670) * $signed(input_fmap_13[7:0]) +
	( 16'sd 20690) * $signed(input_fmap_14[7:0]) +
	( 15'sd 12206) * $signed(input_fmap_15[7:0]) +
	( 16'sd 29445) * $signed(input_fmap_16[7:0]) +
	( 16'sd 21550) * $signed(input_fmap_17[7:0]) +
	( 16'sd 26605) * $signed(input_fmap_18[7:0]) +
	( 15'sd 14784) * $signed(input_fmap_19[7:0]) +
	( 16'sd 27014) * $signed(input_fmap_20[7:0]) +
	( 16'sd 22446) * $signed(input_fmap_21[7:0]) +
	( 14'sd 4833) * $signed(input_fmap_22[7:0]) +
	( 16'sd 20279) * $signed(input_fmap_23[7:0]) +
	( 16'sd 27097) * $signed(input_fmap_24[7:0]) +
	( 16'sd 29323) * $signed(input_fmap_25[7:0]) +
	( 14'sd 7752) * $signed(input_fmap_26[7:0]) +
	( 16'sd 21550) * $signed(input_fmap_27[7:0]) +
	( 16'sd 20751) * $signed(input_fmap_28[7:0]) +
	( 14'sd 6917) * $signed(input_fmap_29[7:0]) +
	( 16'sd 21385) * $signed(input_fmap_30[7:0]) +
	( 15'sd 9293) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_9;
assign conv_mac_9 = 
	( 16'sd 31893) * $signed(input_fmap_0[7:0]) +
	( 12'sd 1109) * $signed(input_fmap_1[7:0]) +
	( 16'sd 31166) * $signed(input_fmap_2[7:0]) +
	( 16'sd 32708) * $signed(input_fmap_3[7:0]) +
	( 15'sd 9585) * $signed(input_fmap_4[7:0]) +
	( 14'sd 5455) * $signed(input_fmap_5[7:0]) +
	( 16'sd 24279) * $signed(input_fmap_6[7:0]) +
	( 11'sd 909) * $signed(input_fmap_7[7:0]) +
	( 15'sd 9817) * $signed(input_fmap_8[7:0]) +
	( 16'sd 23774) * $signed(input_fmap_9[7:0]) +
	( 15'sd 8726) * $signed(input_fmap_10[7:0]) +
	( 16'sd 25812) * $signed(input_fmap_11[7:0]) +
	( 16'sd 20925) * $signed(input_fmap_12[7:0]) +
	( 11'sd 682) * $signed(input_fmap_13[7:0]) +
	( 16'sd 19208) * $signed(input_fmap_14[7:0]) +
	( 13'sd 3606) * $signed(input_fmap_15[7:0]) +
	( 16'sd 25504) * $signed(input_fmap_16[7:0]) +
	( 9'sd 223) * $signed(input_fmap_17[7:0]) +
	( 16'sd 29992) * $signed(input_fmap_18[7:0]) +
	( 15'sd 15432) * $signed(input_fmap_19[7:0]) +
	( 15'sd 13655) * $signed(input_fmap_20[7:0]) +
	( 15'sd 10871) * $signed(input_fmap_21[7:0]) +
	( 15'sd 15270) * $signed(input_fmap_22[7:0]) +
	( 14'sd 7746) * $signed(input_fmap_23[7:0]) +
	( 16'sd 23835) * $signed(input_fmap_24[7:0]) +
	( 16'sd 22150) * $signed(input_fmap_25[7:0]) +
	( 15'sd 15973) * $signed(input_fmap_26[7:0]) +
	( 15'sd 10232) * $signed(input_fmap_27[7:0]) +
	( 4'sd 6) * $signed(input_fmap_28[7:0]) +
	( 16'sd 18162) * $signed(input_fmap_29[7:0]) +
	( 15'sd 13405) * $signed(input_fmap_30[7:0]) +
	( 16'sd 32464) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_10;
assign conv_mac_10 = 
	( 15'sd 12634) * $signed(input_fmap_0[7:0]) +
	( 16'sd 24356) * $signed(input_fmap_1[7:0]) +
	( 16'sd 25991) * $signed(input_fmap_2[7:0]) +
	( 15'sd 11770) * $signed(input_fmap_3[7:0]) +
	( 15'sd 8873) * $signed(input_fmap_4[7:0]) +
	( 16'sd 26345) * $signed(input_fmap_5[7:0]) +
	( 15'sd 8983) * $signed(input_fmap_6[7:0]) +
	( 16'sd 29003) * $signed(input_fmap_7[7:0]) +
	( 14'sd 5294) * $signed(input_fmap_8[7:0]) +
	( 16'sd 25897) * $signed(input_fmap_9[7:0]) +
	( 16'sd 24822) * $signed(input_fmap_10[7:0]) +
	( 13'sd 2581) * $signed(input_fmap_11[7:0]) +
	( 14'sd 6024) * $signed(input_fmap_12[7:0]) +
	( 16'sd 27194) * $signed(input_fmap_13[7:0]) +
	( 16'sd 32569) * $signed(input_fmap_14[7:0]) +
	( 14'sd 4350) * $signed(input_fmap_15[7:0]) +
	( 14'sd 6458) * $signed(input_fmap_16[7:0]) +
	( 14'sd 5405) * $signed(input_fmap_17[7:0]) +
	( 16'sd 31259) * $signed(input_fmap_18[7:0]) +
	( 9'sd 168) * $signed(input_fmap_19[7:0]) +
	( 15'sd 15630) * $signed(input_fmap_20[7:0]) +
	( 16'sd 17719) * $signed(input_fmap_21[7:0]) +
	( 14'sd 6578) * $signed(input_fmap_22[7:0]) +
	( 16'sd 26386) * $signed(input_fmap_23[7:0]) +
	( 14'sd 7287) * $signed(input_fmap_24[7:0]) +
	( 16'sd 30507) * $signed(input_fmap_25[7:0]) +
	( 16'sd 26596) * $signed(input_fmap_26[7:0]) +
	( 16'sd 22301) * $signed(input_fmap_27[7:0]) +
	( 15'sd 11463) * $signed(input_fmap_28[7:0]) +
	( 16'sd 27878) * $signed(input_fmap_29[7:0]) +
	( 14'sd 7101) * $signed(input_fmap_30[7:0]) +
	( 14'sd 6358) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_11;
assign conv_mac_11 = 
	( 16'sd 18526) * $signed(input_fmap_0[7:0]) +
	( 16'sd 29800) * $signed(input_fmap_1[7:0]) +
	( 13'sd 2705) * $signed(input_fmap_2[7:0]) +
	( 16'sd 28154) * $signed(input_fmap_3[7:0]) +
	( 16'sd 16506) * $signed(input_fmap_4[7:0]) +
	( 14'sd 5107) * $signed(input_fmap_5[7:0]) +
	( 15'sd 15375) * $signed(input_fmap_6[7:0]) +
	( 15'sd 12903) * $signed(input_fmap_7[7:0]) +
	( 16'sd 20945) * $signed(input_fmap_8[7:0]) +
	( 14'sd 5348) * $signed(input_fmap_9[7:0]) +
	( 14'sd 5918) * $signed(input_fmap_10[7:0]) +
	( 15'sd 10489) * $signed(input_fmap_11[7:0]) +
	( 16'sd 27592) * $signed(input_fmap_12[7:0]) +
	( 16'sd 31364) * $signed(input_fmap_13[7:0]) +
	( 16'sd 27015) * $signed(input_fmap_14[7:0]) +
	( 16'sd 25652) * $signed(input_fmap_15[7:0]) +
	( 8'sd 103) * $signed(input_fmap_16[7:0]) +
	( 16'sd 32629) * $signed(input_fmap_17[7:0]) +
	( 14'sd 4492) * $signed(input_fmap_18[7:0]) +
	( 11'sd 962) * $signed(input_fmap_19[7:0]) +
	( 15'sd 12139) * $signed(input_fmap_20[7:0]) +
	( 7'sd 57) * $signed(input_fmap_21[7:0]) +
	( 16'sd 27635) * $signed(input_fmap_22[7:0]) +
	( 15'sd 9176) * $signed(input_fmap_23[7:0]) +
	( 15'sd 15255) * $signed(input_fmap_24[7:0]) +
	( 15'sd 8699) * $signed(input_fmap_25[7:0]) +
	( 16'sd 24686) * $signed(input_fmap_26[7:0]) +
	( 16'sd 31628) * $signed(input_fmap_27[7:0]) +
	( 14'sd 4492) * $signed(input_fmap_28[7:0]) +
	( 15'sd 14646) * $signed(input_fmap_29[7:0]) +
	( 15'sd 16199) * $signed(input_fmap_30[7:0]) +
	( 15'sd 14421) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_12;
assign conv_mac_12 = 
	( 15'sd 9810) * $signed(input_fmap_0[7:0]) +
	( 16'sd 29257) * $signed(input_fmap_1[7:0]) +
	( 16'sd 19306) * $signed(input_fmap_2[7:0]) +
	( 16'sd 24117) * $signed(input_fmap_3[7:0]) +
	( 16'sd 20737) * $signed(input_fmap_4[7:0]) +
	( 16'sd 17881) * $signed(input_fmap_5[7:0]) +
	( 15'sd 11378) * $signed(input_fmap_6[7:0]) +
	( 15'sd 11095) * $signed(input_fmap_7[7:0]) +
	( 14'sd 5062) * $signed(input_fmap_8[7:0]) +
	( 16'sd 29922) * $signed(input_fmap_9[7:0]) +
	( 15'sd 9458) * $signed(input_fmap_10[7:0]) +
	( 15'sd 12897) * $signed(input_fmap_11[7:0]) +
	( 13'sd 2393) * $signed(input_fmap_12[7:0]) +
	( 16'sd 19809) * $signed(input_fmap_13[7:0]) +
	( 15'sd 10384) * $signed(input_fmap_14[7:0]) +
	( 16'sd 23000) * $signed(input_fmap_15[7:0]) +
	( 16'sd 22341) * $signed(input_fmap_16[7:0]) +
	( 16'sd 21287) * $signed(input_fmap_17[7:0]) +
	( 16'sd 26083) * $signed(input_fmap_18[7:0]) +
	( 14'sd 7010) * $signed(input_fmap_19[7:0]) +
	( 16'sd 17158) * $signed(input_fmap_20[7:0]) +
	( 13'sd 3608) * $signed(input_fmap_21[7:0]) +
	( 15'sd 9608) * $signed(input_fmap_22[7:0]) +
	( 15'sd 12344) * $signed(input_fmap_23[7:0]) +
	( 15'sd 13436) * $signed(input_fmap_24[7:0]) +
	( 16'sd 30766) * $signed(input_fmap_25[7:0]) +
	( 13'sd 3604) * $signed(input_fmap_26[7:0]) +
	( 15'sd 13249) * $signed(input_fmap_27[7:0]) +
	( 10'sd 487) * $signed(input_fmap_28[7:0]) +
	( 13'sd 4071) * $signed(input_fmap_29[7:0]) +
	( 10'sd 288) * $signed(input_fmap_30[7:0]) +
	( 16'sd 20753) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_13;
assign conv_mac_13 = 
	( 16'sd 26944) * $signed(input_fmap_0[7:0]) +
	( 15'sd 10948) * $signed(input_fmap_1[7:0]) +
	( 16'sd 19443) * $signed(input_fmap_2[7:0]) +
	( 13'sd 4011) * $signed(input_fmap_3[7:0]) +
	( 16'sd 17030) * $signed(input_fmap_4[7:0]) +
	( 15'sd 9627) * $signed(input_fmap_5[7:0]) +
	( 13'sd 2962) * $signed(input_fmap_6[7:0]) +
	( 15'sd 15149) * $signed(input_fmap_7[7:0]) +
	( 16'sd 24257) * $signed(input_fmap_8[7:0]) +
	( 16'sd 17923) * $signed(input_fmap_9[7:0]) +
	( 16'sd 25752) * $signed(input_fmap_10[7:0]) +
	( 15'sd 8672) * $signed(input_fmap_11[7:0]) +
	( 13'sd 3768) * $signed(input_fmap_12[7:0]) +
	( 16'sd 29589) * $signed(input_fmap_13[7:0]) +
	( 16'sd 28718) * $signed(input_fmap_14[7:0]) +
	( 16'sd 28952) * $signed(input_fmap_15[7:0]) +
	( 15'sd 13972) * $signed(input_fmap_16[7:0]) +
	( 16'sd 22654) * $signed(input_fmap_17[7:0]) +
	( 16'sd 21713) * $signed(input_fmap_18[7:0]) +
	( 14'sd 8070) * $signed(input_fmap_19[7:0]) +
	( 16'sd 23884) * $signed(input_fmap_20[7:0]) +
	( 14'sd 6308) * $signed(input_fmap_21[7:0]) +
	( 16'sd 25842) * $signed(input_fmap_22[7:0]) +
	( 16'sd 18925) * $signed(input_fmap_23[7:0]) +
	( 15'sd 12121) * $signed(input_fmap_24[7:0]) +
	( 14'sd 4638) * $signed(input_fmap_25[7:0]) +
	( 15'sd 13817) * $signed(input_fmap_26[7:0]) +
	( 16'sd 22049) * $signed(input_fmap_27[7:0]) +
	( 16'sd 31804) * $signed(input_fmap_28[7:0]) +
	( 15'sd 14289) * $signed(input_fmap_29[7:0]) +
	( 16'sd 18432) * $signed(input_fmap_30[7:0]) +
	( 15'sd 11048) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_14;
assign conv_mac_14 = 
	( 15'sd 13206) * $signed(input_fmap_0[7:0]) +
	( 15'sd 10118) * $signed(input_fmap_1[7:0]) +
	( 13'sd 4003) * $signed(input_fmap_2[7:0]) +
	( 14'sd 6698) * $signed(input_fmap_3[7:0]) +
	( 16'sd 20804) * $signed(input_fmap_4[7:0]) +
	( 16'sd 28468) * $signed(input_fmap_5[7:0]) +
	( 16'sd 27454) * $signed(input_fmap_6[7:0]) +
	( 15'sd 10157) * $signed(input_fmap_7[7:0]) +
	( 16'sd 17967) * $signed(input_fmap_8[7:0]) +
	( 16'sd 18928) * $signed(input_fmap_9[7:0]) +
	( 16'sd 19138) * $signed(input_fmap_10[7:0]) +
	( 16'sd 27764) * $signed(input_fmap_11[7:0]) +
	( 16'sd 31619) * $signed(input_fmap_12[7:0]) +
	( 16'sd 31104) * $signed(input_fmap_13[7:0]) +
	( 16'sd 30237) * $signed(input_fmap_14[7:0]) +
	( 16'sd 27532) * $signed(input_fmap_15[7:0]) +
	( 16'sd 27826) * $signed(input_fmap_16[7:0]) +
	( 16'sd 23993) * $signed(input_fmap_17[7:0]) +
	( 16'sd 24722) * $signed(input_fmap_18[7:0]) +
	( 16'sd 21163) * $signed(input_fmap_19[7:0]) +
	( 15'sd 9264) * $signed(input_fmap_20[7:0]) +
	( 16'sd 21594) * $signed(input_fmap_21[7:0]) +
	( 14'sd 7555) * $signed(input_fmap_22[7:0]) +
	( 16'sd 18272) * $signed(input_fmap_23[7:0]) +
	( 14'sd 7406) * $signed(input_fmap_24[7:0]) +
	( 12'sd 1283) * $signed(input_fmap_25[7:0]) +
	( 15'sd 11810) * $signed(input_fmap_26[7:0]) +
	( 16'sd 21971) * $signed(input_fmap_27[7:0]) +
	( 16'sd 23479) * $signed(input_fmap_28[7:0]) +
	( 15'sd 10392) * $signed(input_fmap_29[7:0]) +
	( 16'sd 22044) * $signed(input_fmap_30[7:0]) +
	( 13'sd 2303) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_15;
assign conv_mac_15 = 
	( 16'sd 22249) * $signed(input_fmap_0[7:0]) +
	( 16'sd 19016) * $signed(input_fmap_1[7:0]) +
	( 15'sd 10356) * $signed(input_fmap_2[7:0]) +
	( 16'sd 19533) * $signed(input_fmap_3[7:0]) +
	( 16'sd 29935) * $signed(input_fmap_4[7:0]) +
	( 16'sd 21337) * $signed(input_fmap_5[7:0]) +
	( 16'sd 31111) * $signed(input_fmap_6[7:0]) +
	( 15'sd 9118) * $signed(input_fmap_7[7:0]) +
	( 10'sd 339) * $signed(input_fmap_8[7:0]) +
	( 16'sd 17454) * $signed(input_fmap_9[7:0]) +
	( 12'sd 1339) * $signed(input_fmap_10[7:0]) +
	( 15'sd 12848) * $signed(input_fmap_11[7:0]) +
	( 15'sd 12670) * $signed(input_fmap_12[7:0]) +
	( 15'sd 13621) * $signed(input_fmap_13[7:0]) +
	( 16'sd 29873) * $signed(input_fmap_14[7:0]) +
	( 16'sd 26001) * $signed(input_fmap_15[7:0]) +
	( 16'sd 30710) * $signed(input_fmap_16[7:0]) +
	( 13'sd 3607) * $signed(input_fmap_17[7:0]) +
	( 16'sd 32321) * $signed(input_fmap_18[7:0]) +
	( 15'sd 8222) * $signed(input_fmap_19[7:0]) +
	( 12'sd 1034) * $signed(input_fmap_20[7:0]) +
	( 15'sd 8535) * $signed(input_fmap_21[7:0]) +
	( 12'sd 1773) * $signed(input_fmap_22[7:0]) +
	( 15'sd 11412) * $signed(input_fmap_23[7:0]) +
	( 14'sd 6887) * $signed(input_fmap_24[7:0]) +
	( 14'sd 5452) * $signed(input_fmap_25[7:0]) +
	( 13'sd 2718) * $signed(input_fmap_26[7:0]) +
	( 16'sd 22725) * $signed(input_fmap_27[7:0]) +
	( 16'sd 31510) * $signed(input_fmap_28[7:0]) +
	( 15'sd 12930) * $signed(input_fmap_29[7:0]) +
	( 16'sd 19022) * $signed(input_fmap_30[7:0]) +
	( 16'sd 27234) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_16;
assign conv_mac_16 = 
	( 16'sd 32142) * $signed(input_fmap_0[7:0]) +
	( 13'sd 4004) * $signed(input_fmap_1[7:0]) +
	( 16'sd 32367) * $signed(input_fmap_2[7:0]) +
	( 16'sd 22496) * $signed(input_fmap_3[7:0]) +
	( 16'sd 23304) * $signed(input_fmap_4[7:0]) +
	( 16'sd 22055) * $signed(input_fmap_5[7:0]) +
	( 15'sd 11156) * $signed(input_fmap_6[7:0]) +
	( 16'sd 16857) * $signed(input_fmap_7[7:0]) +
	( 16'sd 25130) * $signed(input_fmap_8[7:0]) +
	( 15'sd 9559) * $signed(input_fmap_9[7:0]) +
	( 8'sd 110) * $signed(input_fmap_10[7:0]) +
	( 15'sd 11248) * $signed(input_fmap_11[7:0]) +
	( 16'sd 21347) * $signed(input_fmap_12[7:0]) +
	( 15'sd 11949) * $signed(input_fmap_13[7:0]) +
	( 15'sd 9108) * $signed(input_fmap_14[7:0]) +
	( 16'sd 25548) * $signed(input_fmap_15[7:0]) +
	( 16'sd 23627) * $signed(input_fmap_16[7:0]) +
	( 16'sd 28383) * $signed(input_fmap_17[7:0]) +
	( 15'sd 12278) * $signed(input_fmap_18[7:0]) +
	( 13'sd 2834) * $signed(input_fmap_19[7:0]) +
	( 16'sd 30758) * $signed(input_fmap_20[7:0]) +
	( 16'sd 32374) * $signed(input_fmap_21[7:0]) +
	( 16'sd 16846) * $signed(input_fmap_22[7:0]) +
	( 14'sd 7779) * $signed(input_fmap_23[7:0]) +
	( 16'sd 27901) * $signed(input_fmap_24[7:0]) +
	( 16'sd 28819) * $signed(input_fmap_25[7:0]) +
	( 14'sd 5573) * $signed(input_fmap_26[7:0]) +
	( 15'sd 14764) * $signed(input_fmap_27[7:0]) +
	( 15'sd 14504) * $signed(input_fmap_28[7:0]) +
	( 16'sd 28734) * $signed(input_fmap_29[7:0]) +
	( 13'sd 2478) * $signed(input_fmap_30[7:0]) +
	( 15'sd 9101) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_17;
assign conv_mac_17 = 
	( 16'sd 24198) * $signed(input_fmap_0[7:0]) +
	( 14'sd 7569) * $signed(input_fmap_1[7:0]) +
	( 16'sd 19329) * $signed(input_fmap_2[7:0]) +
	( 14'sd 5286) * $signed(input_fmap_3[7:0]) +
	( 16'sd 22221) * $signed(input_fmap_4[7:0]) +
	( 16'sd 19713) * $signed(input_fmap_5[7:0]) +
	( 16'sd 21674) * $signed(input_fmap_6[7:0]) +
	( 16'sd 17850) * $signed(input_fmap_7[7:0]) +
	( 16'sd 28370) * $signed(input_fmap_8[7:0]) +
	( 12'sd 1940) * $signed(input_fmap_9[7:0]) +
	( 16'sd 26300) * $signed(input_fmap_10[7:0]) +
	( 13'sd 2537) * $signed(input_fmap_11[7:0]) +
	( 15'sd 12816) * $signed(input_fmap_12[7:0]) +
	( 16'sd 27267) * $signed(input_fmap_13[7:0]) +
	( 15'sd 10351) * $signed(input_fmap_14[7:0]) +
	( 16'sd 27646) * $signed(input_fmap_15[7:0]) +
	( 16'sd 22260) * $signed(input_fmap_16[7:0]) +
	( 16'sd 22742) * $signed(input_fmap_17[7:0]) +
	( 16'sd 31237) * $signed(input_fmap_18[7:0]) +
	( 14'sd 5684) * $signed(input_fmap_19[7:0]) +
	( 16'sd 30548) * $signed(input_fmap_20[7:0]) +
	( 15'sd 13542) * $signed(input_fmap_21[7:0]) +
	( 14'sd 6520) * $signed(input_fmap_22[7:0]) +
	( 14'sd 5354) * $signed(input_fmap_23[7:0]) +
	( 15'sd 9496) * $signed(input_fmap_24[7:0]) +
	( 14'sd 7868) * $signed(input_fmap_25[7:0]) +
	( 16'sd 21350) * $signed(input_fmap_26[7:0]) +
	( 16'sd 21691) * $signed(input_fmap_27[7:0]) +
	( 16'sd 28902) * $signed(input_fmap_28[7:0]) +
	( 13'sd 3300) * $signed(input_fmap_29[7:0]) +
	( 15'sd 14154) * $signed(input_fmap_30[7:0]) +
	( 16'sd 20686) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_18;
assign conv_mac_18 = 
	( 15'sd 13687) * $signed(input_fmap_0[7:0]) +
	( 16'sd 20842) * $signed(input_fmap_1[7:0]) +
	( 15'sd 9533) * $signed(input_fmap_2[7:0]) +
	( 15'sd 9111) * $signed(input_fmap_3[7:0]) +
	( 16'sd 21859) * $signed(input_fmap_4[7:0]) +
	( 14'sd 5708) * $signed(input_fmap_5[7:0]) +
	( 15'sd 8438) * $signed(input_fmap_6[7:0]) +
	( 12'sd 1158) * $signed(input_fmap_7[7:0]) +
	( 16'sd 29513) * $signed(input_fmap_8[7:0]) +
	( 16'sd 23143) * $signed(input_fmap_9[7:0]) +
	( 16'sd 25980) * $signed(input_fmap_10[7:0]) +
	( 16'sd 21193) * $signed(input_fmap_11[7:0]) +
	( 16'sd 24724) * $signed(input_fmap_12[7:0]) +
	( 16'sd 17139) * $signed(input_fmap_13[7:0]) +
	( 14'sd 4768) * $signed(input_fmap_14[7:0]) +
	( 16'sd 31771) * $signed(input_fmap_15[7:0]) +
	( 16'sd 17963) * $signed(input_fmap_16[7:0]) +
	( 15'sd 15320) * $signed(input_fmap_17[7:0]) +
	( 16'sd 21502) * $signed(input_fmap_18[7:0]) +
	( 15'sd 15554) * $signed(input_fmap_19[7:0]) +
	( 16'sd 26532) * $signed(input_fmap_20[7:0]) +
	( 14'sd 7235) * $signed(input_fmap_21[7:0]) +
	( 16'sd 17855) * $signed(input_fmap_22[7:0]) +
	( 16'sd 18000) * $signed(input_fmap_23[7:0]) +
	( 16'sd 18495) * $signed(input_fmap_24[7:0]) +
	( 16'sd 22089) * $signed(input_fmap_25[7:0]) +
	( 14'sd 4281) * $signed(input_fmap_26[7:0]) +
	( 13'sd 2181) * $signed(input_fmap_27[7:0]) +
	( 13'sd 3718) * $signed(input_fmap_28[7:0]) +
	( 15'sd 8601) * $signed(input_fmap_29[7:0]) +
	( 15'sd 12438) * $signed(input_fmap_30[7:0]) +
	( 15'sd 14535) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_19;
assign conv_mac_19 = 
	( 16'sd 21517) * $signed(input_fmap_0[7:0]) +
	( 16'sd 30430) * $signed(input_fmap_1[7:0]) +
	( 16'sd 18818) * $signed(input_fmap_2[7:0]) +
	( 16'sd 22421) * $signed(input_fmap_3[7:0]) +
	( 16'sd 16564) * $signed(input_fmap_4[7:0]) +
	( 16'sd 32451) * $signed(input_fmap_5[7:0]) +
	( 16'sd 23245) * $signed(input_fmap_6[7:0]) +
	( 15'sd 8580) * $signed(input_fmap_7[7:0]) +
	( 16'sd 29726) * $signed(input_fmap_8[7:0]) +
	( 16'sd 22716) * $signed(input_fmap_9[7:0]) +
	( 15'sd 13739) * $signed(input_fmap_10[7:0]) +
	( 16'sd 23226) * $signed(input_fmap_11[7:0]) +
	( 13'sd 3148) * $signed(input_fmap_12[7:0]) +
	( 15'sd 12643) * $signed(input_fmap_13[7:0]) +
	( 14'sd 6635) * $signed(input_fmap_14[7:0]) +
	( 14'sd 5746) * $signed(input_fmap_15[7:0]) +
	( 14'sd 5125) * $signed(input_fmap_16[7:0]) +
	( 16'sd 20093) * $signed(input_fmap_17[7:0]) +
	( 15'sd 12751) * $signed(input_fmap_18[7:0]) +
	( 16'sd 27755) * $signed(input_fmap_19[7:0]) +
	( 12'sd 1742) * $signed(input_fmap_20[7:0]) +
	( 13'sd 3574) * $signed(input_fmap_21[7:0]) +
	( 14'sd 6723) * $signed(input_fmap_22[7:0]) +
	( 14'sd 4105) * $signed(input_fmap_23[7:0]) +
	( 16'sd 23756) * $signed(input_fmap_24[7:0]) +
	( 16'sd 21781) * $signed(input_fmap_25[7:0]) +
	( 16'sd 31506) * $signed(input_fmap_26[7:0]) +
	( 16'sd 19776) * $signed(input_fmap_27[7:0]) +
	( 16'sd 32666) * $signed(input_fmap_28[7:0]) +
	( 16'sd 31303) * $signed(input_fmap_29[7:0]) +
	( 16'sd 31381) * $signed(input_fmap_30[7:0]) +
	( 15'sd 14210) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_20;
assign conv_mac_20 = 
	( 16'sd 19159) * $signed(input_fmap_0[7:0]) +
	( 16'sd 29907) * $signed(input_fmap_1[7:0]) +
	( 16'sd 16475) * $signed(input_fmap_2[7:0]) +
	( 13'sd 2729) * $signed(input_fmap_3[7:0]) +
	( 14'sd 6702) * $signed(input_fmap_4[7:0]) +
	( 16'sd 21612) * $signed(input_fmap_5[7:0]) +
	( 16'sd 28821) * $signed(input_fmap_6[7:0]) +
	( 14'sd 5239) * $signed(input_fmap_7[7:0]) +
	( 13'sd 3844) * $signed(input_fmap_8[7:0]) +
	( 15'sd 14380) * $signed(input_fmap_9[7:0]) +
	( 11'sd 542) * $signed(input_fmap_10[7:0]) +
	( 16'sd 21458) * $signed(input_fmap_11[7:0]) +
	( 15'sd 10336) * $signed(input_fmap_12[7:0]) +
	( 14'sd 4333) * $signed(input_fmap_13[7:0]) +
	( 15'sd 15774) * $signed(input_fmap_14[7:0]) +
	( 13'sd 2953) * $signed(input_fmap_15[7:0]) +
	( 15'sd 15437) * $signed(input_fmap_16[7:0]) +
	( 14'sd 5576) * $signed(input_fmap_17[7:0]) +
	( 15'sd 10069) * $signed(input_fmap_18[7:0]) +
	( 16'sd 29817) * $signed(input_fmap_19[7:0]) +
	( 16'sd 26493) * $signed(input_fmap_20[7:0]) +
	( 16'sd 29878) * $signed(input_fmap_21[7:0]) +
	( 15'sd 9804) * $signed(input_fmap_22[7:0]) +
	( 16'sd 18621) * $signed(input_fmap_23[7:0]) +
	( 14'sd 6022) * $signed(input_fmap_24[7:0]) +
	( 13'sd 3903) * $signed(input_fmap_25[7:0]) +
	( 16'sd 25633) * $signed(input_fmap_26[7:0]) +
	( 16'sd 30731) * $signed(input_fmap_27[7:0]) +
	( 11'sd 665) * $signed(input_fmap_28[7:0]) +
	( 16'sd 32281) * $signed(input_fmap_29[7:0]) +
	( 15'sd 13281) * $signed(input_fmap_30[7:0]) +
	( 15'sd 16359) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_21;
assign conv_mac_21 = 
	( 10'sd 266) * $signed(input_fmap_0[7:0]) +
	( 14'sd 5050) * $signed(input_fmap_1[7:0]) +
	( 11'sd 905) * $signed(input_fmap_2[7:0]) +
	( 16'sd 23427) * $signed(input_fmap_3[7:0]) +
	( 16'sd 25441) * $signed(input_fmap_4[7:0]) +
	( 10'sd 336) * $signed(input_fmap_5[7:0]) +
	( 16'sd 25593) * $signed(input_fmap_6[7:0]) +
	( 13'sd 2107) * $signed(input_fmap_7[7:0]) +
	( 11'sd 957) * $signed(input_fmap_8[7:0]) +
	( 11'sd 737) * $signed(input_fmap_9[7:0]) +
	( 15'sd 15894) * $signed(input_fmap_10[7:0]) +
	( 16'sd 24767) * $signed(input_fmap_11[7:0]) +
	( 14'sd 4487) * $signed(input_fmap_12[7:0]) +
	( 15'sd 13173) * $signed(input_fmap_13[7:0]) +
	( 16'sd 31395) * $signed(input_fmap_14[7:0]) +
	( 16'sd 17508) * $signed(input_fmap_15[7:0]) +
	( 16'sd 21903) * $signed(input_fmap_16[7:0]) +
	( 13'sd 2666) * $signed(input_fmap_17[7:0]) +
	( 15'sd 9502) * $signed(input_fmap_18[7:0]) +
	( 14'sd 5357) * $signed(input_fmap_19[7:0]) +
	( 12'sd 1433) * $signed(input_fmap_20[7:0]) +
	( 10'sd 496) * $signed(input_fmap_21[7:0]) +
	( 13'sd 3831) * $signed(input_fmap_22[7:0]) +
	( 13'sd 3567) * $signed(input_fmap_23[7:0]) +
	( 16'sd 29454) * $signed(input_fmap_24[7:0]) +
	( 16'sd 24231) * $signed(input_fmap_25[7:0]) +
	( 16'sd 31265) * $signed(input_fmap_26[7:0]) +
	( 14'sd 8106) * $signed(input_fmap_27[7:0]) +
	( 15'sd 10896) * $signed(input_fmap_28[7:0]) +
	( 14'sd 4238) * $signed(input_fmap_29[7:0]) +
	( 16'sd 27746) * $signed(input_fmap_30[7:0]) +
	( 16'sd 18444) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_22;
assign conv_mac_22 = 
	( 15'sd 9623) * $signed(input_fmap_0[7:0]) +
	( 16'sd 20979) * $signed(input_fmap_1[7:0]) +
	( 15'sd 14327) * $signed(input_fmap_2[7:0]) +
	( 15'sd 8368) * $signed(input_fmap_3[7:0]) +
	( 13'sd 3220) * $signed(input_fmap_4[7:0]) +
	( 14'sd 6298) * $signed(input_fmap_5[7:0]) +
	( 16'sd 29698) * $signed(input_fmap_6[7:0]) +
	( 15'sd 14300) * $signed(input_fmap_7[7:0]) +
	( 16'sd 23134) * $signed(input_fmap_8[7:0]) +
	( 16'sd 17916) * $signed(input_fmap_9[7:0]) +
	( 14'sd 6108) * $signed(input_fmap_10[7:0]) +
	( 16'sd 24541) * $signed(input_fmap_11[7:0]) +
	( 16'sd 29034) * $signed(input_fmap_12[7:0]) +
	( 16'sd 30714) * $signed(input_fmap_13[7:0]) +
	( 16'sd 23075) * $signed(input_fmap_14[7:0]) +
	( 14'sd 5266) * $signed(input_fmap_15[7:0]) +
	( 13'sd 3771) * $signed(input_fmap_16[7:0]) +
	( 16'sd 27390) * $signed(input_fmap_17[7:0]) +
	( 16'sd 27102) * $signed(input_fmap_18[7:0]) +
	( 16'sd 19313) * $signed(input_fmap_19[7:0]) +
	( 16'sd 27887) * $signed(input_fmap_20[7:0]) +
	( 11'sd 820) * $signed(input_fmap_21[7:0]) +
	( 16'sd 17025) * $signed(input_fmap_22[7:0]) +
	( 16'sd 23008) * $signed(input_fmap_23[7:0]) +
	( 14'sd 6270) * $signed(input_fmap_24[7:0]) +
	( 14'sd 7699) * $signed(input_fmap_25[7:0]) +
	( 16'sd 19550) * $signed(input_fmap_26[7:0]) +
	( 14'sd 7756) * $signed(input_fmap_27[7:0]) +
	( 14'sd 7364) * $signed(input_fmap_28[7:0]) +
	( 16'sd 32062) * $signed(input_fmap_29[7:0]) +
	( 16'sd 23334) * $signed(input_fmap_30[7:0]) +
	( 16'sd 30241) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_23;
assign conv_mac_23 = 
	( 12'sd 1423) * $signed(input_fmap_0[7:0]) +
	( 16'sd 27413) * $signed(input_fmap_1[7:0]) +
	( 15'sd 13082) * $signed(input_fmap_2[7:0]) +
	( 16'sd 17512) * $signed(input_fmap_3[7:0]) +
	( 16'sd 20137) * $signed(input_fmap_4[7:0]) +
	( 16'sd 22141) * $signed(input_fmap_5[7:0]) +
	( 16'sd 21954) * $signed(input_fmap_6[7:0]) +
	( 16'sd 27887) * $signed(input_fmap_7[7:0]) +
	( 15'sd 11636) * $signed(input_fmap_8[7:0]) +
	( 15'sd 15540) * $signed(input_fmap_9[7:0]) +
	( 16'sd 19688) * $signed(input_fmap_10[7:0]) +
	( 16'sd 23600) * $signed(input_fmap_11[7:0]) +
	( 15'sd 14875) * $signed(input_fmap_12[7:0]) +
	( 16'sd 18333) * $signed(input_fmap_13[7:0]) +
	( 15'sd 9390) * $signed(input_fmap_14[7:0]) +
	( 16'sd 32402) * $signed(input_fmap_15[7:0]) +
	( 14'sd 6163) * $signed(input_fmap_16[7:0]) +
	( 16'sd 28048) * $signed(input_fmap_17[7:0]) +
	( 16'sd 18655) * $signed(input_fmap_18[7:0]) +
	( 15'sd 13553) * $signed(input_fmap_19[7:0]) +
	( 14'sd 5006) * $signed(input_fmap_20[7:0]) +
	( 13'sd 2953) * $signed(input_fmap_21[7:0]) +
	( 16'sd 27145) * $signed(input_fmap_22[7:0]) +
	( 15'sd 10521) * $signed(input_fmap_23[7:0]) +
	( 15'sd 12244) * $signed(input_fmap_24[7:0]) +
	( 15'sd 13608) * $signed(input_fmap_25[7:0]) +
	( 16'sd 16770) * $signed(input_fmap_26[7:0]) +
	( 15'sd 15357) * $signed(input_fmap_27[7:0]) +
	( 16'sd 30014) * $signed(input_fmap_28[7:0]) +
	( 16'sd 31544) * $signed(input_fmap_29[7:0]) +
	( 14'sd 7954) * $signed(input_fmap_30[7:0]) +
	( 16'sd 24987) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_24;
assign conv_mac_24 = 
	( 16'sd 21242) * $signed(input_fmap_0[7:0]) +
	( 13'sd 2829) * $signed(input_fmap_1[7:0]) +
	( 15'sd 9344) * $signed(input_fmap_2[7:0]) +
	( 16'sd 26630) * $signed(input_fmap_3[7:0]) +
	( 16'sd 19907) * $signed(input_fmap_4[7:0]) +
	( 15'sd 13007) * $signed(input_fmap_5[7:0]) +
	( 14'sd 7041) * $signed(input_fmap_6[7:0]) +
	( 14'sd 7410) * $signed(input_fmap_7[7:0]) +
	( 16'sd 27097) * $signed(input_fmap_8[7:0]) +
	( 16'sd 26383) * $signed(input_fmap_9[7:0]) +
	( 16'sd 16598) * $signed(input_fmap_10[7:0]) +
	( 14'sd 7331) * $signed(input_fmap_11[7:0]) +
	( 16'sd 23598) * $signed(input_fmap_12[7:0]) +
	( 13'sd 2860) * $signed(input_fmap_13[7:0]) +
	( 15'sd 10491) * $signed(input_fmap_14[7:0]) +
	( 16'sd 25439) * $signed(input_fmap_15[7:0]) +
	( 15'sd 10145) * $signed(input_fmap_16[7:0]) +
	( 11'sd 707) * $signed(input_fmap_17[7:0]) +
	( 16'sd 18763) * $signed(input_fmap_18[7:0]) +
	( 16'sd 29112) * $signed(input_fmap_19[7:0]) +
	( 16'sd 19694) * $signed(input_fmap_20[7:0]) +
	( 15'sd 14427) * $signed(input_fmap_21[7:0]) +
	( 16'sd 21566) * $signed(input_fmap_22[7:0]) +
	( 16'sd 24476) * $signed(input_fmap_23[7:0]) +
	( 16'sd 28025) * $signed(input_fmap_24[7:0]) +
	( 14'sd 4734) * $signed(input_fmap_25[7:0]) +
	( 16'sd 21579) * $signed(input_fmap_26[7:0]) +
	( 15'sd 11048) * $signed(input_fmap_27[7:0]) +
	( 16'sd 19080) * $signed(input_fmap_28[7:0]) +
	( 15'sd 12083) * $signed(input_fmap_29[7:0]) +
	( 14'sd 7530) * $signed(input_fmap_30[7:0]) +
	( 16'sd 20868) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_25;
assign conv_mac_25 = 
	( 16'sd 32489) * $signed(input_fmap_0[7:0]) +
	( 16'sd 26769) * $signed(input_fmap_1[7:0]) +
	( 15'sd 10106) * $signed(input_fmap_2[7:0]) +
	( 14'sd 6889) * $signed(input_fmap_3[7:0]) +
	( 16'sd 17473) * $signed(input_fmap_4[7:0]) +
	( 15'sd 13029) * $signed(input_fmap_5[7:0]) +
	( 15'sd 13966) * $signed(input_fmap_6[7:0]) +
	( 16'sd 32695) * $signed(input_fmap_7[7:0]) +
	( 16'sd 23355) * $signed(input_fmap_8[7:0]) +
	( 16'sd 25637) * $signed(input_fmap_9[7:0]) +
	( 15'sd 8789) * $signed(input_fmap_10[7:0]) +
	( 15'sd 10766) * $signed(input_fmap_11[7:0]) +
	( 16'sd 27073) * $signed(input_fmap_12[7:0]) +
	( 16'sd 22937) * $signed(input_fmap_13[7:0]) +
	( 16'sd 23522) * $signed(input_fmap_14[7:0]) +
	( 16'sd 25776) * $signed(input_fmap_15[7:0]) +
	( 11'sd 815) * $signed(input_fmap_16[7:0]) +
	( 14'sd 4978) * $signed(input_fmap_17[7:0]) +
	( 14'sd 6405) * $signed(input_fmap_18[7:0]) +
	( 15'sd 8293) * $signed(input_fmap_19[7:0]) +
	( 16'sd 25986) * $signed(input_fmap_20[7:0]) +
	( 16'sd 27904) * $signed(input_fmap_21[7:0]) +
	( 16'sd 31151) * $signed(input_fmap_22[7:0]) +
	( 15'sd 9695) * $signed(input_fmap_23[7:0]) +
	( 14'sd 7684) * $signed(input_fmap_24[7:0]) +
	( 16'sd 31641) * $signed(input_fmap_25[7:0]) +
	( 15'sd 10591) * $signed(input_fmap_26[7:0]) +
	( 16'sd 29466) * $signed(input_fmap_27[7:0]) +
	( 15'sd 15867) * $signed(input_fmap_28[7:0]) +
	( 16'sd 29443) * $signed(input_fmap_29[7:0]) +
	( 10'sd 283) * $signed(input_fmap_30[7:0]) +
	( 15'sd 14856) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_26;
assign conv_mac_26 = 
	( 16'sd 31654) * $signed(input_fmap_0[7:0]) +
	( 16'sd 29518) * $signed(input_fmap_1[7:0]) +
	( 16'sd 26815) * $signed(input_fmap_2[7:0]) +
	( 12'sd 1500) * $signed(input_fmap_3[7:0]) +
	( 16'sd 30512) * $signed(input_fmap_4[7:0]) +
	( 16'sd 21237) * $signed(input_fmap_5[7:0]) +
	( 15'sd 13315) * $signed(input_fmap_6[7:0]) +
	( 13'sd 3742) * $signed(input_fmap_7[7:0]) +
	( 15'sd 11679) * $signed(input_fmap_8[7:0]) +
	( 16'sd 26503) * $signed(input_fmap_9[7:0]) +
	( 16'sd 29910) * $signed(input_fmap_10[7:0]) +
	( 16'sd 22846) * $signed(input_fmap_11[7:0]) +
	( 15'sd 10253) * $signed(input_fmap_12[7:0]) +
	( 15'sd 14683) * $signed(input_fmap_13[7:0]) +
	( 16'sd 31992) * $signed(input_fmap_14[7:0]) +
	( 15'sd 16276) * $signed(input_fmap_15[7:0]) +
	( 16'sd 16417) * $signed(input_fmap_16[7:0]) +
	( 15'sd 8661) * $signed(input_fmap_17[7:0]) +
	( 16'sd 28434) * $signed(input_fmap_18[7:0]) +
	( 16'sd 26468) * $signed(input_fmap_19[7:0]) +
	( 8'sd 109) * $signed(input_fmap_20[7:0]) +
	( 13'sd 3166) * $signed(input_fmap_21[7:0]) +
	( 16'sd 17847) * $signed(input_fmap_22[7:0]) +
	( 14'sd 4887) * $signed(input_fmap_23[7:0]) +
	( 15'sd 10902) * $signed(input_fmap_24[7:0]) +
	( 16'sd 19614) * $signed(input_fmap_25[7:0]) +
	( 16'sd 31057) * $signed(input_fmap_26[7:0]) +
	( 15'sd 9436) * $signed(input_fmap_27[7:0]) +
	( 15'sd 15190) * $signed(input_fmap_28[7:0]) +
	( 11'sd 659) * $signed(input_fmap_29[7:0]) +
	( 16'sd 31164) * $signed(input_fmap_30[7:0]) +
	( 9'sd 154) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_27;
assign conv_mac_27 = 
	( 15'sd 11230) * $signed(input_fmap_0[7:0]) +
	( 16'sd 32280) * $signed(input_fmap_1[7:0]) +
	( 16'sd 24956) * $signed(input_fmap_2[7:0]) +
	( 11'sd 983) * $signed(input_fmap_3[7:0]) +
	( 14'sd 7156) * $signed(input_fmap_4[7:0]) +
	( 11'sd 793) * $signed(input_fmap_5[7:0]) +
	( 16'sd 20268) * $signed(input_fmap_6[7:0]) +
	( 15'sd 9093) * $signed(input_fmap_7[7:0]) +
	( 16'sd 18077) * $signed(input_fmap_8[7:0]) +
	( 16'sd 32502) * $signed(input_fmap_9[7:0]) +
	( 16'sd 17090) * $signed(input_fmap_10[7:0]) +
	( 15'sd 8939) * $signed(input_fmap_11[7:0]) +
	( 16'sd 22552) * $signed(input_fmap_12[7:0]) +
	( 16'sd 21512) * $signed(input_fmap_13[7:0]) +
	( 15'sd 10798) * $signed(input_fmap_14[7:0]) +
	( 16'sd 30434) * $signed(input_fmap_15[7:0]) +
	( 16'sd 22892) * $signed(input_fmap_16[7:0]) +
	( 16'sd 27668) * $signed(input_fmap_17[7:0]) +
	( 12'sd 1305) * $signed(input_fmap_18[7:0]) +
	( 15'sd 11369) * $signed(input_fmap_19[7:0]) +
	( 14'sd 5708) * $signed(input_fmap_20[7:0]) +
	( 16'sd 28289) * $signed(input_fmap_21[7:0]) +
	( 16'sd 20803) * $signed(input_fmap_22[7:0]) +
	( 16'sd 16741) * $signed(input_fmap_23[7:0]) +
	( 16'sd 30589) * $signed(input_fmap_24[7:0]) +
	( 14'sd 5216) * $signed(input_fmap_25[7:0]) +
	( 16'sd 23815) * $signed(input_fmap_26[7:0]) +
	( 15'sd 15424) * $signed(input_fmap_27[7:0]) +
	( 16'sd 29126) * $signed(input_fmap_28[7:0]) +
	( 15'sd 9470) * $signed(input_fmap_29[7:0]) +
	( 14'sd 5424) * $signed(input_fmap_30[7:0]) +
	( 16'sd 20075) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_28;
assign conv_mac_28 = 
	( 15'sd 12494) * $signed(input_fmap_0[7:0]) +
	( 16'sd 28757) * $signed(input_fmap_1[7:0]) +
	( 13'sd 2417) * $signed(input_fmap_2[7:0]) +
	( 16'sd 20441) * $signed(input_fmap_3[7:0]) +
	( 16'sd 19835) * $signed(input_fmap_4[7:0]) +
	( 16'sd 21974) * $signed(input_fmap_5[7:0]) +
	( 16'sd 30238) * $signed(input_fmap_6[7:0]) +
	( 15'sd 13523) * $signed(input_fmap_7[7:0]) +
	( 14'sd 4181) * $signed(input_fmap_8[7:0]) +
	( 16'sd 19740) * $signed(input_fmap_9[7:0]) +
	( 15'sd 8692) * $signed(input_fmap_10[7:0]) +
	( 14'sd 5198) * $signed(input_fmap_11[7:0]) +
	( 16'sd 21351) * $signed(input_fmap_12[7:0]) +
	( 15'sd 15760) * $signed(input_fmap_13[7:0]) +
	( 11'sd 690) * $signed(input_fmap_14[7:0]) +
	( 16'sd 24566) * $signed(input_fmap_15[7:0]) +
	( 14'sd 4784) * $signed(input_fmap_16[7:0]) +
	( 15'sd 14439) * $signed(input_fmap_17[7:0]) +
	( 15'sd 13393) * $signed(input_fmap_18[7:0]) +
	( 13'sd 2677) * $signed(input_fmap_19[7:0]) +
	( 16'sd 27905) * $signed(input_fmap_20[7:0]) +
	( 16'sd 32362) * $signed(input_fmap_21[7:0]) +
	( 16'sd 20105) * $signed(input_fmap_22[7:0]) +
	( 16'sd 21036) * $signed(input_fmap_23[7:0]) +
	( 15'sd 9871) * $signed(input_fmap_24[7:0]) +
	( 15'sd 15285) * $signed(input_fmap_25[7:0]) +
	( 14'sd 7018) * $signed(input_fmap_26[7:0]) +
	( 15'sd 14580) * $signed(input_fmap_27[7:0]) +
	( 15'sd 14534) * $signed(input_fmap_28[7:0]) +
	( 15'sd 11765) * $signed(input_fmap_29[7:0]) +
	( 11'sd 593) * $signed(input_fmap_30[7:0]) +
	( 15'sd 12297) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_29;
assign conv_mac_29 = 
	( 14'sd 7670) * $signed(input_fmap_0[7:0]) +
	( 16'sd 29527) * $signed(input_fmap_1[7:0]) +
	( 15'sd 12631) * $signed(input_fmap_2[7:0]) +
	( 15'sd 15179) * $signed(input_fmap_3[7:0]) +
	( 14'sd 7648) * $signed(input_fmap_4[7:0]) +
	( 16'sd 20863) * $signed(input_fmap_5[7:0]) +
	( 14'sd 5109) * $signed(input_fmap_6[7:0]) +
	( 16'sd 31641) * $signed(input_fmap_7[7:0]) +
	( 15'sd 8709) * $signed(input_fmap_8[7:0]) +
	( 14'sd 6734) * $signed(input_fmap_9[7:0]) +
	( 14'sd 6691) * $signed(input_fmap_10[7:0]) +
	( 15'sd 9862) * $signed(input_fmap_11[7:0]) +
	( 15'sd 12062) * $signed(input_fmap_12[7:0]) +
	( 15'sd 12549) * $signed(input_fmap_13[7:0]) +
	( 14'sd 7205) * $signed(input_fmap_14[7:0]) +
	( 16'sd 19789) * $signed(input_fmap_15[7:0]) +
	( 16'sd 29515) * $signed(input_fmap_16[7:0]) +
	( 16'sd 16952) * $signed(input_fmap_17[7:0]) +
	( 8'sd 82) * $signed(input_fmap_18[7:0]) +
	( 16'sd 18470) * $signed(input_fmap_19[7:0]) +
	( 16'sd 21829) * $signed(input_fmap_20[7:0]) +
	( 16'sd 22026) * $signed(input_fmap_21[7:0]) +
	( 12'sd 2013) * $signed(input_fmap_22[7:0]) +
	( 16'sd 18749) * $signed(input_fmap_23[7:0]) +
	( 16'sd 31870) * $signed(input_fmap_24[7:0]) +
	( 15'sd 13585) * $signed(input_fmap_25[7:0]) +
	( 15'sd 12495) * $signed(input_fmap_26[7:0]) +
	( 16'sd 24684) * $signed(input_fmap_27[7:0]) +
	( 14'sd 6277) * $signed(input_fmap_28[7:0]) +
	( 15'sd 9048) * $signed(input_fmap_29[7:0]) +
	( 16'sd 32352) * $signed(input_fmap_30[7:0]) +
	( 16'sd 23212) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_30;
assign conv_mac_30 = 
	( 15'sd 15170) * $signed(input_fmap_0[7:0]) +
	( 15'sd 9440) * $signed(input_fmap_1[7:0]) +
	( 15'sd 8994) * $signed(input_fmap_2[7:0]) +
	( 13'sd 3645) * $signed(input_fmap_3[7:0]) +
	( 16'sd 25908) * $signed(input_fmap_4[7:0]) +
	( 16'sd 19830) * $signed(input_fmap_5[7:0]) +
	( 13'sd 2469) * $signed(input_fmap_6[7:0]) +
	( 16'sd 22201) * $signed(input_fmap_7[7:0]) +
	( 16'sd 22488) * $signed(input_fmap_8[7:0]) +
	( 16'sd 23858) * $signed(input_fmap_9[7:0]) +
	( 16'sd 32632) * $signed(input_fmap_10[7:0]) +
	( 15'sd 10462) * $signed(input_fmap_11[7:0]) +
	( 16'sd 21721) * $signed(input_fmap_12[7:0]) +
	( 16'sd 17645) * $signed(input_fmap_13[7:0]) +
	( 13'sd 2636) * $signed(input_fmap_14[7:0]) +
	( 14'sd 5687) * $signed(input_fmap_15[7:0]) +
	( 16'sd 16600) * $signed(input_fmap_16[7:0]) +
	( 16'sd 25719) * $signed(input_fmap_17[7:0]) +
	( 13'sd 3155) * $signed(input_fmap_18[7:0]) +
	( 15'sd 8558) * $signed(input_fmap_19[7:0]) +
	( 15'sd 14758) * $signed(input_fmap_20[7:0]) +
	( 16'sd 22781) * $signed(input_fmap_21[7:0]) +
	( 14'sd 7683) * $signed(input_fmap_22[7:0]) +
	( 14'sd 6487) * $signed(input_fmap_23[7:0]) +
	( 16'sd 16613) * $signed(input_fmap_24[7:0]) +
	( 16'sd 21830) * $signed(input_fmap_25[7:0]) +
	( 13'sd 3819) * $signed(input_fmap_26[7:0]) +
	( 14'sd 4919) * $signed(input_fmap_27[7:0]) +
	( 14'sd 4348) * $signed(input_fmap_28[7:0]) +
	( 16'sd 21448) * $signed(input_fmap_29[7:0]) +
	( 16'sd 32593) * $signed(input_fmap_30[7:0]) +
	( 16'sd 24146) * $signed(input_fmap_31[7:0]);

logic signed [31:0] conv_mac_31;
assign conv_mac_31 = 
	( 16'sd 27096) * $signed(input_fmap_0[7:0]) +
	( 15'sd 8302) * $signed(input_fmap_1[7:0]) +
	( 15'sd 10410) * $signed(input_fmap_2[7:0]) +
	( 16'sd 18616) * $signed(input_fmap_3[7:0]) +
	( 16'sd 31700) * $signed(input_fmap_4[7:0]) +
	( 16'sd 27428) * $signed(input_fmap_5[7:0]) +
	( 16'sd 32263) * $signed(input_fmap_6[7:0]) +
	( 15'sd 12728) * $signed(input_fmap_7[7:0]) +
	( 16'sd 31582) * $signed(input_fmap_8[7:0]) +
	( 16'sd 25668) * $signed(input_fmap_9[7:0]) +
	( 16'sd 17461) * $signed(input_fmap_10[7:0]) +
	( 16'sd 32285) * $signed(input_fmap_11[7:0]) +
	( 16'sd 29281) * $signed(input_fmap_12[7:0]) +
	( 15'sd 10887) * $signed(input_fmap_13[7:0]) +
	( 15'sd 8776) * $signed(input_fmap_14[7:0]) +
	( 16'sd 25677) * $signed(input_fmap_15[7:0]) +
	( 16'sd 24519) * $signed(input_fmap_16[7:0]) +
	( 16'sd 27469) * $signed(input_fmap_17[7:0]) +
	( 14'sd 6697) * $signed(input_fmap_18[7:0]) +
	( 16'sd 23325) * $signed(input_fmap_19[7:0]) +
	( 16'sd 25609) * $signed(input_fmap_20[7:0]) +
	( 16'sd 19604) * $signed(input_fmap_21[7:0]) +
	( 15'sd 10900) * $signed(input_fmap_22[7:0]) +
	( 16'sd 18199) * $signed(input_fmap_23[7:0]) +
	( 16'sd 29989) * $signed(input_fmap_24[7:0]) +
	( 10'sd 283) * $signed(input_fmap_25[7:0]) +
	( 16'sd 24918) * $signed(input_fmap_26[7:0]) +
	( 16'sd 21084) * $signed(input_fmap_27[7:0]) +
	( 16'sd 30205) * $signed(input_fmap_28[7:0]) +
	( 16'sd 25541) * $signed(input_fmap_29[7:0]) +
	( 16'sd 24470) * $signed(input_fmap_30[7:0]) +
	( 15'sd 13228) * $signed(input_fmap_31[7:0]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 15'd9379;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1 + 15'd13760;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 15'd10282;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3 + 16'd31138;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4 + 15'd8585;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5 + 16'd18894;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6 + 16'd27112;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7 + 16'd30833;
logic [31:0] bias_add_8;
assign bias_add_8 = conv_mac_8 + 15'd10430;
logic [31:0] bias_add_9;
assign bias_add_9 = conv_mac_9 + 16'd16755;
logic [31:0] bias_add_10;
assign bias_add_10 = conv_mac_10 + 15'd12029;
logic [31:0] bias_add_11;
assign bias_add_11 = conv_mac_11 + 14'd5263;
logic [31:0] bias_add_12;
assign bias_add_12 = conv_mac_12 + 10'd362;
logic [31:0] bias_add_13;
assign bias_add_13 = conv_mac_13 + 15'd12101;
logic [31:0] bias_add_14;
assign bias_add_14 = conv_mac_14 + 16'd23693;
logic [31:0] bias_add_15;
assign bias_add_15 = conv_mac_15 + 13'd4071;
logic [31:0] bias_add_16;
assign bias_add_16 = conv_mac_16 + 14'd5891;
logic [31:0] bias_add_17;
assign bias_add_17 = conv_mac_17 + 16'd26779;
logic [31:0] bias_add_18;
assign bias_add_18 = conv_mac_18 + 16'd29692;
logic [31:0] bias_add_19;
assign bias_add_19 = conv_mac_19 + 16'd24532;
logic [31:0] bias_add_20;
assign bias_add_20 = conv_mac_20 + 15'd8716;
logic [31:0] bias_add_21;
assign bias_add_21 = conv_mac_21 + 15'd9477;
logic [31:0] bias_add_22;
assign bias_add_22 = conv_mac_22 + 16'd30785;
logic [31:0] bias_add_23;
assign bias_add_23 = conv_mac_23 + 16'd23401;
logic [31:0] bias_add_24;
assign bias_add_24 = conv_mac_24 + 15'd15538;
logic [31:0] bias_add_25;
assign bias_add_25 = conv_mac_25 + 16'd19574;
logic [31:0] bias_add_26;
assign bias_add_26 = conv_mac_26 + 16'd30322;
logic [31:0] bias_add_27;
assign bias_add_27 = conv_mac_27 + 11'd700;
logic [31:0] bias_add_28;
assign bias_add_28 = conv_mac_28 + 14'd5107;
logic [31:0] bias_add_29;
assign bias_add_29 = conv_mac_29 + 16'd25289;
logic [31:0] bias_add_30;
assign bias_add_30 = conv_mac_30 + 15'd8311;
logic [31:0] bias_add_31;
assign bias_add_31 = conv_mac_31 + 15'd9982;

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

assign output_act = {
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
