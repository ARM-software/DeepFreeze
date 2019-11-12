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
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 3'sd 2) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 3'sd 2) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 3'sd 2) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 3'sd 2) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 3'sd 2) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 3'sd 2) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 3'sd 2) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 3'sd 2) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 3'sd 2) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 3'sd 2) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 3'sd 2) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 3'sd 2) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 3'sd 2) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_8;
assign conv_mac_8 = 
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 3'sd 2) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_61[7:0]);

logic signed [31:0] conv_mac_9;
assign conv_mac_9 = 
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 3'sd 2) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_10;
assign conv_mac_10 = 
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]);

logic signed [31:0] conv_mac_11;
assign conv_mac_11 = 
	( 3'sd 2) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 3'sd 2) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 3'sd 2) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 3'sd 2) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 3'sd 2) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]);

logic signed [31:0] conv_mac_12;
assign conv_mac_12 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_13;
assign conv_mac_13 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 3'sd 2) * $signed(input_fmap_54[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_14;
assign conv_mac_14 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 3'sd 2) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 3'sd 2) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 3'sd 2) * $signed(input_fmap_53[7:0]) +
	( 3'sd 2) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_15;
assign conv_mac_15 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_9[7:0]) +
	( 3'sd 2) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 3'sd 2) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 3'sd 2) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_16;
assign conv_mac_16 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_22[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 3'sd 2) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 3'sd 2) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_17;
assign conv_mac_17 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 3'sd 2) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 3'sd 2) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_18;
assign conv_mac_18 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 3'sd 2) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_19;
assign conv_mac_19 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 3'sd 2) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_20;
assign conv_mac_20 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 3'sd 2) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 3'sd 2) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 3'sd 2) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_21;
assign conv_mac_21 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 3'sd 2) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 3'sd 2) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 3'sd 2) * $signed(input_fmap_54[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]);

logic signed [31:0] conv_mac_22;
assign conv_mac_22 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 3'sd 2) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_22[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 3'sd 2) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 3'sd 2) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 3'sd 2) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_23;
assign conv_mac_23 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 3'sd 2) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 3'sd 2) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]);

logic signed [31:0] conv_mac_24;
assign conv_mac_24 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 3'sd 2) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 3'sd 2) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 3'sd 2) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_25;
assign conv_mac_25 = 
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 3'sd 2) * $signed(input_fmap_10[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 3'sd 2) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 3'sd 2) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_26;
assign conv_mac_26 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 3'sd 2) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_27;
assign conv_mac_27 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 3'sd 2) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 3'sd 2) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 3'sd 2) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_28;
assign conv_mac_28 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 3'sd 2) * $signed(input_fmap_54[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_29;
assign conv_mac_29 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 3'sd 2) * $signed(input_fmap_44[7:0]) +
	( 3'sd 2) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]);

logic signed [31:0] conv_mac_30;
assign conv_mac_30 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 3'sd 2) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 3'sd 2) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_31;
assign conv_mac_31 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 3'sd 2) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 3'sd 2) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_32;
assign conv_mac_32 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 3'sd 2) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 3'sd 2) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 3'sd 2) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_33;
assign conv_mac_33 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 3'sd 2) * $signed(input_fmap_54[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 3'sd 2) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_34;
assign conv_mac_34 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_35;
assign conv_mac_35 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 3'sd 2) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_36;
assign conv_mac_36 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 3'sd 2) * $signed(input_fmap_10[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_22[7:0]) +
	( 3'sd 2) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 3'sd 2) * $signed(input_fmap_54[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]);

logic signed [31:0] conv_mac_37;
assign conv_mac_37 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 3'sd 2) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_38;
assign conv_mac_38 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 3'sd 2) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 3'sd 2) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_39;
assign conv_mac_39 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_10[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 3'sd 2) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_40;
assign conv_mac_40 = 
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_41;
assign conv_mac_41 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 3'sd 2) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_42;
assign conv_mac_42 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_10[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 3'sd 2) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]);

logic signed [31:0] conv_mac_43;
assign conv_mac_43 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 3'sd 2) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 3'sd 2) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_44;
assign conv_mac_44 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 3'sd 2) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]) +
	( 3'sd 2) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_45;
assign conv_mac_45 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 3'sd 2) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 3'sd 2) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_46;
assign conv_mac_46 = 
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 3'sd 2) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 3'sd 2) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]);

logic signed [31:0] conv_mac_47;
assign conv_mac_47 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_9[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 3'sd 2) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]);

logic signed [31:0] conv_mac_48;
assign conv_mac_48 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_10[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 3'sd 2) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 3'sd 2) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 3'sd 2) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 3'sd 2) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 3'sd 2) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_49;
assign conv_mac_49 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 3'sd 2) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 3'sd 2) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 3'sd 2) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_50;
assign conv_mac_50 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 3'sd 2) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 3'sd 2) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_51;
assign conv_mac_51 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 3'sd 2) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 3'sd 2) * $signed(input_fmap_49[7:0]) +
	( 3'sd 2) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_52;
assign conv_mac_52 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 3'sd 2) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 3'sd 2) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 3'sd 2) * $signed(input_fmap_54[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_53;
assign conv_mac_53 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 3'sd 2) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_54;
assign conv_mac_54 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 3'sd 2) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 3'sd 2) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_55;
assign conv_mac_55 = 
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 3'sd 2) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 3'sd 2) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 3'sd 2) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_56;
assign conv_mac_56 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 3'sd 2) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 3'sd 2) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_57;
assign conv_mac_57 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 3'sd 2) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]);

logic signed [31:0] conv_mac_58;
assign conv_mac_58 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 3'sd 2) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 3'sd 2) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 3'sd 2) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 3'sd 2) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 3'sd 2) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_59;
assign conv_mac_59 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 3'sd 2) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 3'sd 2) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 3'sd 2) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 3'sd 2) * $signed(input_fmap_34[7:0]) +
	( 3'sd 2) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_37[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 3'sd 2) * $signed(input_fmap_39[7:0]) +
	( 3'sd 2) * $signed(input_fmap_40[7:0]) +
	( 3'sd 2) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 3'sd 2) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 2'sd 1) * $signed(input_fmap_48[7:0]) +
	( 3'sd 2) * $signed(input_fmap_49[7:0]) +
	( 3'sd 2) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 3'sd 2) * $signed(input_fmap_62[7:0]) +
	( 3'sd 2) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_60;
assign conv_mac_60 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 2'sd 1) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 3'sd 2) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_27[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 3'sd 2) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 2'sd 1) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]);

logic signed [31:0] conv_mac_61;
assign conv_mac_61 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 3'sd 2) * $signed(input_fmap_13[7:0]) +
	( 3'sd 2) * $signed(input_fmap_14[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 2'sd 1) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 2'sd 1) * $signed(input_fmap_22[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_30[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_37[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_43[7:0]) +
	( 2'sd 1) * $signed(input_fmap_46[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_52[7:0]) +
	( 3'sd 2) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_55[7:0]) +
	( 3'sd 2) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_62[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_62;
assign conv_mac_62 = 
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 2'sd 1) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 3'sd 2) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 3'sd 2) * $signed(input_fmap_11[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_15[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 3'sd 2) * $signed(input_fmap_18[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 2'sd 1) * $signed(input_fmap_20[7:0]) +
	( 2'sd 1) * $signed(input_fmap_23[7:0]) +
	( 3'sd 2) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 2'sd 1) * $signed(input_fmap_26[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 3'sd 2) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 3'sd 2) * $signed(input_fmap_38[7:0]) +
	( 3'sd 2) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 3'sd 2) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_45[7:0]) +
	( 3'sd 2) * $signed(input_fmap_46[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_49[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 2'sd 1) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_53[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 3'sd 2) * $signed(input_fmap_57[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 2'sd 1) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic signed [31:0] conv_mac_63;
assign conv_mac_63 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 3'sd 2) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 2'sd 1) * $signed(input_fmap_6[7:0]) +
	( 2'sd 1) * $signed(input_fmap_7[7:0]) +
	( 2'sd 1) * $signed(input_fmap_8[7:0]) +
	( 2'sd 1) * $signed(input_fmap_9[7:0]) +
	( 2'sd 1) * $signed(input_fmap_10[7:0]) +
	( 2'sd 1) * $signed(input_fmap_11[7:0]) +
	( 3'sd 2) * $signed(input_fmap_12[7:0]) +
	( 2'sd 1) * $signed(input_fmap_13[7:0]) +
	( 2'sd 1) * $signed(input_fmap_14[7:0]) +
	( 3'sd 2) * $signed(input_fmap_15[7:0]) +
	( 2'sd 1) * $signed(input_fmap_16[7:0]) +
	( 3'sd 2) * $signed(input_fmap_17[7:0]) +
	( 2'sd 1) * $signed(input_fmap_19[7:0]) +
	( 3'sd 2) * $signed(input_fmap_20[7:0]) +
	( 3'sd 2) * $signed(input_fmap_21[7:0]) +
	( 3'sd 2) * $signed(input_fmap_22[7:0]) +
	( 3'sd 2) * $signed(input_fmap_23[7:0]) +
	( 2'sd 1) * $signed(input_fmap_24[7:0]) +
	( 2'sd 1) * $signed(input_fmap_25[7:0]) +
	( 3'sd 2) * $signed(input_fmap_26[7:0]) +
	( 3'sd 2) * $signed(input_fmap_27[7:0]) +
	( 2'sd 1) * $signed(input_fmap_28[7:0]) +
	( 2'sd 1) * $signed(input_fmap_29[7:0]) +
	( 2'sd 1) * $signed(input_fmap_31[7:0]) +
	( 2'sd 1) * $signed(input_fmap_32[7:0]) +
	( 3'sd 2) * $signed(input_fmap_33[7:0]) +
	( 2'sd 1) * $signed(input_fmap_34[7:0]) +
	( 2'sd 1) * $signed(input_fmap_35[7:0]) +
	( 2'sd 1) * $signed(input_fmap_36[7:0]) +
	( 2'sd 1) * $signed(input_fmap_38[7:0]) +
	( 2'sd 1) * $signed(input_fmap_39[7:0]) +
	( 2'sd 1) * $signed(input_fmap_40[7:0]) +
	( 2'sd 1) * $signed(input_fmap_41[7:0]) +
	( 2'sd 1) * $signed(input_fmap_42[7:0]) +
	( 2'sd 1) * $signed(input_fmap_44[7:0]) +
	( 3'sd 2) * $signed(input_fmap_45[7:0]) +
	( 2'sd 1) * $signed(input_fmap_47[7:0]) +
	( 3'sd 2) * $signed(input_fmap_48[7:0]) +
	( 2'sd 1) * $signed(input_fmap_50[7:0]) +
	( 3'sd 2) * $signed(input_fmap_51[7:0]) +
	( 2'sd 1) * $signed(input_fmap_52[7:0]) +
	( 3'sd 2) * $signed(input_fmap_53[7:0]) +
	( 3'sd 2) * $signed(input_fmap_54[7:0]) +
	( 2'sd 1) * $signed(input_fmap_56[7:0]) +
	( 2'sd 1) * $signed(input_fmap_58[7:0]) +
	( 3'sd 2) * $signed(input_fmap_59[7:0]) +
	( 3'sd 2) * $signed(input_fmap_60[7:0]) +
	( 2'sd 1) * $signed(input_fmap_61[7:0]) +
	( 2'sd 1) * $signed(input_fmap_63[7:0]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 2'd1;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 2'd1;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3 + 2'd1;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4 + 3'd2;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5 + 2'd1;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6 + 2'd1;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7;
logic [31:0] bias_add_8;
assign bias_add_8 = conv_mac_8;
logic [31:0] bias_add_9;
assign bias_add_9 = conv_mac_9 + 2'd1;
logic [31:0] bias_add_10;
assign bias_add_10 = conv_mac_10;
logic [31:0] bias_add_11;
assign bias_add_11 = conv_mac_11 + 3'd2;
logic [31:0] bias_add_12;
assign bias_add_12 = conv_mac_12 + 3'd2;
logic [31:0] bias_add_13;
assign bias_add_13 = conv_mac_13 + 2'd1;
logic [31:0] bias_add_14;
assign bias_add_14 = conv_mac_14;
logic [31:0] bias_add_15;
assign bias_add_15 = conv_mac_15;
logic [31:0] bias_add_16;
assign bias_add_16 = conv_mac_16 + 2'd1;
logic [31:0] bias_add_17;
assign bias_add_17 = conv_mac_17;
logic [31:0] bias_add_18;
assign bias_add_18 = conv_mac_18 + 3'd2;
logic [31:0] bias_add_19;
assign bias_add_19 = conv_mac_19 + 2'd1;
logic [31:0] bias_add_20;
assign bias_add_20 = conv_mac_20;
logic [31:0] bias_add_21;
assign bias_add_21 = conv_mac_21;
logic [31:0] bias_add_22;
assign bias_add_22 = conv_mac_22 + 3'd2;
logic [31:0] bias_add_23;
assign bias_add_23 = conv_mac_23 + 2'd1;
logic [31:0] bias_add_24;
assign bias_add_24 = conv_mac_24 + 2'd1;
logic [31:0] bias_add_25;
assign bias_add_25 = conv_mac_25;
logic [31:0] bias_add_26;
assign bias_add_26 = conv_mac_26;
logic [31:0] bias_add_27;
assign bias_add_27 = conv_mac_27;
logic [31:0] bias_add_28;
assign bias_add_28 = conv_mac_28 + 3'd2;
logic [31:0] bias_add_29;
assign bias_add_29 = conv_mac_29;
logic [31:0] bias_add_30;
assign bias_add_30 = conv_mac_30 + 2'd1;
logic [31:0] bias_add_31;
assign bias_add_31 = conv_mac_31 + 2'd1;
logic [31:0] bias_add_32;
assign bias_add_32 = conv_mac_32 + 3'd2;
logic [31:0] bias_add_33;
assign bias_add_33 = conv_mac_33;
logic [31:0] bias_add_34;
assign bias_add_34 = conv_mac_34 + 3'd2;
logic [31:0] bias_add_35;
assign bias_add_35 = conv_mac_35 + 3'd2;
logic [31:0] bias_add_36;
assign bias_add_36 = conv_mac_36 + 2'd1;
logic [31:0] bias_add_37;
assign bias_add_37 = conv_mac_37 + 2'd1;
logic [31:0] bias_add_38;
assign bias_add_38 = conv_mac_38 + 3'd2;
logic [31:0] bias_add_39;
assign bias_add_39 = conv_mac_39;
logic [31:0] bias_add_40;
assign bias_add_40 = conv_mac_40 + 2'd1;
logic [31:0] bias_add_41;
assign bias_add_41 = conv_mac_41;
logic [31:0] bias_add_42;
assign bias_add_42 = conv_mac_42 + 2'd1;
logic [31:0] bias_add_43;
assign bias_add_43 = conv_mac_43 + 2'd1;
logic [31:0] bias_add_44;
assign bias_add_44 = conv_mac_44;
logic [31:0] bias_add_45;
assign bias_add_45 = conv_mac_45;
logic [31:0] bias_add_46;
assign bias_add_46 = conv_mac_46 + 3'd2;
logic [31:0] bias_add_47;
assign bias_add_47 = conv_mac_47 + 3'd2;
logic [31:0] bias_add_48;
assign bias_add_48 = conv_mac_48 + 3'd2;
logic [31:0] bias_add_49;
assign bias_add_49 = conv_mac_49;
logic [31:0] bias_add_50;
assign bias_add_50 = conv_mac_50 + 2'd1;
logic [31:0] bias_add_51;
assign bias_add_51 = conv_mac_51 + 2'd1;
logic [31:0] bias_add_52;
assign bias_add_52 = conv_mac_52 + 3'd2;
logic [31:0] bias_add_53;
assign bias_add_53 = conv_mac_53 + 2'd1;
logic [31:0] bias_add_54;
assign bias_add_54 = conv_mac_54 + 2'd1;
logic [31:0] bias_add_55;
assign bias_add_55 = conv_mac_55 + 3'd2;
logic [31:0] bias_add_56;
assign bias_add_56 = conv_mac_56;
logic [31:0] bias_add_57;
assign bias_add_57 = conv_mac_57 + 2'd1;
logic [31:0] bias_add_58;
assign bias_add_58 = conv_mac_58 + 2'd1;
logic [31:0] bias_add_59;
assign bias_add_59 = conv_mac_59 + 3'd2;
logic [31:0] bias_add_60;
assign bias_add_60 = conv_mac_60 + 2'd1;
logic [31:0] bias_add_61;
assign bias_add_61 = conv_mac_61;
logic [31:0] bias_add_62;
assign bias_add_62 = conv_mac_62;
logic [31:0] bias_add_63;
assign bias_add_63 = conv_mac_63 + 2'd1;

logic [7:0] relu_0;
assign relu_0[7:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[7:1]}} :'d6) : '0;
logic [7:0] relu_1;
assign relu_1[7:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[7:1]}} :'d6) : '0;
logic [7:0] relu_2;
assign relu_2[7:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[7:1]}} :'d6) : '0;
logic [7:0] relu_3;
assign relu_3[7:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[7:1]}} :'d6) : '0;
logic [7:0] relu_4;
assign relu_4[7:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[7:1]}} :'d6) : '0;
logic [7:0] relu_5;
assign relu_5[7:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[7:1]}} :'d6) : '0;
logic [7:0] relu_6;
assign relu_6[7:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[7:1]}} :'d6) : '0;
logic [7:0] relu_7;
assign relu_7[7:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[7:1]}} :'d6) : '0;
logic [7:0] relu_8;
assign relu_8[7:0] = (bias_add_8[31]==0) ? ((bias_add_8<3'd6) ? {{bias_add_8[31],bias_add_8[7:1]}} :'d6) : '0;
logic [7:0] relu_9;
assign relu_9[7:0] = (bias_add_9[31]==0) ? ((bias_add_9<3'd6) ? {{bias_add_9[31],bias_add_9[7:1]}} :'d6) : '0;
logic [7:0] relu_10;
assign relu_10[7:0] = (bias_add_10[31]==0) ? ((bias_add_10<3'd6) ? {{bias_add_10[31],bias_add_10[7:1]}} :'d6) : '0;
logic [7:0] relu_11;
assign relu_11[7:0] = (bias_add_11[31]==0) ? ((bias_add_11<3'd6) ? {{bias_add_11[31],bias_add_11[7:1]}} :'d6) : '0;
logic [7:0] relu_12;
assign relu_12[7:0] = (bias_add_12[31]==0) ? ((bias_add_12<3'd6) ? {{bias_add_12[31],bias_add_12[7:1]}} :'d6) : '0;
logic [7:0] relu_13;
assign relu_13[7:0] = (bias_add_13[31]==0) ? ((bias_add_13<3'd6) ? {{bias_add_13[31],bias_add_13[7:1]}} :'d6) : '0;
logic [7:0] relu_14;
assign relu_14[7:0] = (bias_add_14[31]==0) ? ((bias_add_14<3'd6) ? {{bias_add_14[31],bias_add_14[7:1]}} :'d6) : '0;
logic [7:0] relu_15;
assign relu_15[7:0] = (bias_add_15[31]==0) ? ((bias_add_15<3'd6) ? {{bias_add_15[31],bias_add_15[7:1]}} :'d6) : '0;
logic [7:0] relu_16;
assign relu_16[7:0] = (bias_add_16[31]==0) ? ((bias_add_16<3'd6) ? {{bias_add_16[31],bias_add_16[7:1]}} :'d6) : '0;
logic [7:0] relu_17;
assign relu_17[7:0] = (bias_add_17[31]==0) ? ((bias_add_17<3'd6) ? {{bias_add_17[31],bias_add_17[7:1]}} :'d6) : '0;
logic [7:0] relu_18;
assign relu_18[7:0] = (bias_add_18[31]==0) ? ((bias_add_18<3'd6) ? {{bias_add_18[31],bias_add_18[7:1]}} :'d6) : '0;
logic [7:0] relu_19;
assign relu_19[7:0] = (bias_add_19[31]==0) ? ((bias_add_19<3'd6) ? {{bias_add_19[31],bias_add_19[7:1]}} :'d6) : '0;
logic [7:0] relu_20;
assign relu_20[7:0] = (bias_add_20[31]==0) ? ((bias_add_20<3'd6) ? {{bias_add_20[31],bias_add_20[7:1]}} :'d6) : '0;
logic [7:0] relu_21;
assign relu_21[7:0] = (bias_add_21[31]==0) ? ((bias_add_21<3'd6) ? {{bias_add_21[31],bias_add_21[7:1]}} :'d6) : '0;
logic [7:0] relu_22;
assign relu_22[7:0] = (bias_add_22[31]==0) ? ((bias_add_22<3'd6) ? {{bias_add_22[31],bias_add_22[7:1]}} :'d6) : '0;
logic [7:0] relu_23;
assign relu_23[7:0] = (bias_add_23[31]==0) ? ((bias_add_23<3'd6) ? {{bias_add_23[31],bias_add_23[7:1]}} :'d6) : '0;
logic [7:0] relu_24;
assign relu_24[7:0] = (bias_add_24[31]==0) ? ((bias_add_24<3'd6) ? {{bias_add_24[31],bias_add_24[7:1]}} :'d6) : '0;
logic [7:0] relu_25;
assign relu_25[7:0] = (bias_add_25[31]==0) ? ((bias_add_25<3'd6) ? {{bias_add_25[31],bias_add_25[7:1]}} :'d6) : '0;
logic [7:0] relu_26;
assign relu_26[7:0] = (bias_add_26[31]==0) ? ((bias_add_26<3'd6) ? {{bias_add_26[31],bias_add_26[7:1]}} :'d6) : '0;
logic [7:0] relu_27;
assign relu_27[7:0] = (bias_add_27[31]==0) ? ((bias_add_27<3'd6) ? {{bias_add_27[31],bias_add_27[7:1]}} :'d6) : '0;
logic [7:0] relu_28;
assign relu_28[7:0] = (bias_add_28[31]==0) ? ((bias_add_28<3'd6) ? {{bias_add_28[31],bias_add_28[7:1]}} :'d6) : '0;
logic [7:0] relu_29;
assign relu_29[7:0] = (bias_add_29[31]==0) ? ((bias_add_29<3'd6) ? {{bias_add_29[31],bias_add_29[7:1]}} :'d6) : '0;
logic [7:0] relu_30;
assign relu_30[7:0] = (bias_add_30[31]==0) ? ((bias_add_30<3'd6) ? {{bias_add_30[31],bias_add_30[7:1]}} :'d6) : '0;
logic [7:0] relu_31;
assign relu_31[7:0] = (bias_add_31[31]==0) ? ((bias_add_31<3'd6) ? {{bias_add_31[31],bias_add_31[7:1]}} :'d6) : '0;
logic [7:0] relu_32;
assign relu_32[7:0] = (bias_add_32[31]==0) ? ((bias_add_32<3'd6) ? {{bias_add_32[31],bias_add_32[7:1]}} :'d6) : '0;
logic [7:0] relu_33;
assign relu_33[7:0] = (bias_add_33[31]==0) ? ((bias_add_33<3'd6) ? {{bias_add_33[31],bias_add_33[7:1]}} :'d6) : '0;
logic [7:0] relu_34;
assign relu_34[7:0] = (bias_add_34[31]==0) ? ((bias_add_34<3'd6) ? {{bias_add_34[31],bias_add_34[7:1]}} :'d6) : '0;
logic [7:0] relu_35;
assign relu_35[7:0] = (bias_add_35[31]==0) ? ((bias_add_35<3'd6) ? {{bias_add_35[31],bias_add_35[7:1]}} :'d6) : '0;
logic [7:0] relu_36;
assign relu_36[7:0] = (bias_add_36[31]==0) ? ((bias_add_36<3'd6) ? {{bias_add_36[31],bias_add_36[7:1]}} :'d6) : '0;
logic [7:0] relu_37;
assign relu_37[7:0] = (bias_add_37[31]==0) ? ((bias_add_37<3'd6) ? {{bias_add_37[31],bias_add_37[7:1]}} :'d6) : '0;
logic [7:0] relu_38;
assign relu_38[7:0] = (bias_add_38[31]==0) ? ((bias_add_38<3'd6) ? {{bias_add_38[31],bias_add_38[7:1]}} :'d6) : '0;
logic [7:0] relu_39;
assign relu_39[7:0] = (bias_add_39[31]==0) ? ((bias_add_39<3'd6) ? {{bias_add_39[31],bias_add_39[7:1]}} :'d6) : '0;
logic [7:0] relu_40;
assign relu_40[7:0] = (bias_add_40[31]==0) ? ((bias_add_40<3'd6) ? {{bias_add_40[31],bias_add_40[7:1]}} :'d6) : '0;
logic [7:0] relu_41;
assign relu_41[7:0] = (bias_add_41[31]==0) ? ((bias_add_41<3'd6) ? {{bias_add_41[31],bias_add_41[7:1]}} :'d6) : '0;
logic [7:0] relu_42;
assign relu_42[7:0] = (bias_add_42[31]==0) ? ((bias_add_42<3'd6) ? {{bias_add_42[31],bias_add_42[7:1]}} :'d6) : '0;
logic [7:0] relu_43;
assign relu_43[7:0] = (bias_add_43[31]==0) ? ((bias_add_43<3'd6) ? {{bias_add_43[31],bias_add_43[7:1]}} :'d6) : '0;
logic [7:0] relu_44;
assign relu_44[7:0] = (bias_add_44[31]==0) ? ((bias_add_44<3'd6) ? {{bias_add_44[31],bias_add_44[7:1]}} :'d6) : '0;
logic [7:0] relu_45;
assign relu_45[7:0] = (bias_add_45[31]==0) ? ((bias_add_45<3'd6) ? {{bias_add_45[31],bias_add_45[7:1]}} :'d6) : '0;
logic [7:0] relu_46;
assign relu_46[7:0] = (bias_add_46[31]==0) ? ((bias_add_46<3'd6) ? {{bias_add_46[31],bias_add_46[7:1]}} :'d6) : '0;
logic [7:0] relu_47;
assign relu_47[7:0] = (bias_add_47[31]==0) ? ((bias_add_47<3'd6) ? {{bias_add_47[31],bias_add_47[7:1]}} :'d6) : '0;
logic [7:0] relu_48;
assign relu_48[7:0] = (bias_add_48[31]==0) ? ((bias_add_48<3'd6) ? {{bias_add_48[31],bias_add_48[7:1]}} :'d6) : '0;
logic [7:0] relu_49;
assign relu_49[7:0] = (bias_add_49[31]==0) ? ((bias_add_49<3'd6) ? {{bias_add_49[31],bias_add_49[7:1]}} :'d6) : '0;
logic [7:0] relu_50;
assign relu_50[7:0] = (bias_add_50[31]==0) ? ((bias_add_50<3'd6) ? {{bias_add_50[31],bias_add_50[7:1]}} :'d6) : '0;
logic [7:0] relu_51;
assign relu_51[7:0] = (bias_add_51[31]==0) ? ((bias_add_51<3'd6) ? {{bias_add_51[31],bias_add_51[7:1]}} :'d6) : '0;
logic [7:0] relu_52;
assign relu_52[7:0] = (bias_add_52[31]==0) ? ((bias_add_52<3'd6) ? {{bias_add_52[31],bias_add_52[7:1]}} :'d6) : '0;
logic [7:0] relu_53;
assign relu_53[7:0] = (bias_add_53[31]==0) ? ((bias_add_53<3'd6) ? {{bias_add_53[31],bias_add_53[7:1]}} :'d6) : '0;
logic [7:0] relu_54;
assign relu_54[7:0] = (bias_add_54[31]==0) ? ((bias_add_54<3'd6) ? {{bias_add_54[31],bias_add_54[7:1]}} :'d6) : '0;
logic [7:0] relu_55;
assign relu_55[7:0] = (bias_add_55[31]==0) ? ((bias_add_55<3'd6) ? {{bias_add_55[31],bias_add_55[7:1]}} :'d6) : '0;
logic [7:0] relu_56;
assign relu_56[7:0] = (bias_add_56[31]==0) ? ((bias_add_56<3'd6) ? {{bias_add_56[31],bias_add_56[7:1]}} :'d6) : '0;
logic [7:0] relu_57;
assign relu_57[7:0] = (bias_add_57[31]==0) ? ((bias_add_57<3'd6) ? {{bias_add_57[31],bias_add_57[7:1]}} :'d6) : '0;
logic [7:0] relu_58;
assign relu_58[7:0] = (bias_add_58[31]==0) ? ((bias_add_58<3'd6) ? {{bias_add_58[31],bias_add_58[7:1]}} :'d6) : '0;
logic [7:0] relu_59;
assign relu_59[7:0] = (bias_add_59[31]==0) ? ((bias_add_59<3'd6) ? {{bias_add_59[31],bias_add_59[7:1]}} :'d6) : '0;
logic [7:0] relu_60;
assign relu_60[7:0] = (bias_add_60[31]==0) ? ((bias_add_60<3'd6) ? {{bias_add_60[31],bias_add_60[7:1]}} :'d6) : '0;
logic [7:0] relu_61;
assign relu_61[7:0] = (bias_add_61[31]==0) ? ((bias_add_61<3'd6) ? {{bias_add_61[31],bias_add_61[7:1]}} :'d6) : '0;
logic [7:0] relu_62;
assign relu_62[7:0] = (bias_add_62[31]==0) ? ((bias_add_62<3'd6) ? {{bias_add_62[31],bias_add_62[7:1]}} :'d6) : '0;
logic [7:0] relu_63;
assign relu_63[7:0] = (bias_add_63[31]==0) ? ((bias_add_63<3'd6) ? {{bias_add_63[31],bias_add_63[7:1]}} :'d6) : '0;

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
