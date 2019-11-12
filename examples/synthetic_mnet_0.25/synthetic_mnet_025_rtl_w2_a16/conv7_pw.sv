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
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_8;
assign conv_mac_8 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_9;
assign conv_mac_9 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_10;
assign conv_mac_10 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_11;
assign conv_mac_11 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_12;
assign conv_mac_12 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_13;
assign conv_mac_13 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_14;
assign conv_mac_14 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_15;
assign conv_mac_15 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_16;
assign conv_mac_16 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_17;
assign conv_mac_17 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_18;
assign conv_mac_18 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_19;
assign conv_mac_19 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_20;
assign conv_mac_20 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_21;
assign conv_mac_21 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_22;
assign conv_mac_22 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_23;
assign conv_mac_23 = 
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_24;
assign conv_mac_24 = 
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_25;
assign conv_mac_25 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_26;
assign conv_mac_26 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_27;
assign conv_mac_27 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_28;
assign conv_mac_28 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]);

logic signed [31:0] conv_mac_29;
assign conv_mac_29 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]);

logic signed [31:0] conv_mac_30;
assign conv_mac_30 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_31;
assign conv_mac_31 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_32;
assign conv_mac_32 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_33;
assign conv_mac_33 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_34;
assign conv_mac_34 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_35;
assign conv_mac_35 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_36;
assign conv_mac_36 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_37;
assign conv_mac_37 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_38;
assign conv_mac_38 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_39;
assign conv_mac_39 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_40;
assign conv_mac_40 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_41;
assign conv_mac_41 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_42;
assign conv_mac_42 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_43;
assign conv_mac_43 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_44;
assign conv_mac_44 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_45;
assign conv_mac_45 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_46;
assign conv_mac_46 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_47;
assign conv_mac_47 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_48;
assign conv_mac_48 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]);

logic signed [31:0] conv_mac_49;
assign conv_mac_49 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_50;
assign conv_mac_50 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_51;
assign conv_mac_51 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_52;
assign conv_mac_52 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_53;
assign conv_mac_53 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_54;
assign conv_mac_54 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_55;
assign conv_mac_55 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_56;
assign conv_mac_56 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_57;
assign conv_mac_57 = 
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_58;
assign conv_mac_58 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_59;
assign conv_mac_59 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]);

logic signed [31:0] conv_mac_60;
assign conv_mac_60 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_61;
assign conv_mac_61 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]);

logic signed [31:0] conv_mac_62;
assign conv_mac_62 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_63;
assign conv_mac_63 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_64;
assign conv_mac_64 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_65;
assign conv_mac_65 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_66;
assign conv_mac_66 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_67;
assign conv_mac_67 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_68;
assign conv_mac_68 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_69;
assign conv_mac_69 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_70;
assign conv_mac_70 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_71;
assign conv_mac_71 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]);

logic signed [31:0] conv_mac_72;
assign conv_mac_72 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_73;
assign conv_mac_73 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_74;
assign conv_mac_74 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_75;
assign conv_mac_75 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_76;
assign conv_mac_76 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_77;
assign conv_mac_77 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_78;
assign conv_mac_78 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_79;
assign conv_mac_79 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_80;
assign conv_mac_80 = 
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_81;
assign conv_mac_81 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_82;
assign conv_mac_82 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_83;
assign conv_mac_83 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_84;
assign conv_mac_84 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_85;
assign conv_mac_85 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_86;
assign conv_mac_86 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_87;
assign conv_mac_87 = 
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_88;
assign conv_mac_88 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_89;
assign conv_mac_89 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_90;
assign conv_mac_90 = 
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_91;
assign conv_mac_91 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_92;
assign conv_mac_92 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_93;
assign conv_mac_93 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_94;
assign conv_mac_94 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_95;
assign conv_mac_95 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_96;
assign conv_mac_96 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_97;
assign conv_mac_97 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]);

logic signed [31:0] conv_mac_98;
assign conv_mac_98 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_99;
assign conv_mac_99 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_100;
assign conv_mac_100 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_101;
assign conv_mac_101 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_102;
assign conv_mac_102 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_103;
assign conv_mac_103 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]);

logic signed [31:0] conv_mac_104;
assign conv_mac_104 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_105;
assign conv_mac_105 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_106;
assign conv_mac_106 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_107;
assign conv_mac_107 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_108;
assign conv_mac_108 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_109;
assign conv_mac_109 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_110;
assign conv_mac_110 = 
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_111;
assign conv_mac_111 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_112;
assign conv_mac_112 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_113;
assign conv_mac_113 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_114;
assign conv_mac_114 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_115;
assign conv_mac_115 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_116;
assign conv_mac_116 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_117;
assign conv_mac_117 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_118;
assign conv_mac_118 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_119;
assign conv_mac_119 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_120;
assign conv_mac_120 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_121;
assign conv_mac_121 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 3'sd 2) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 3'sd 2) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 3'sd 2) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_122;
assign conv_mac_122 = 
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 3'sd 2) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_123;
assign conv_mac_123 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_33[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_124;
assign conv_mac_124 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 2'sd 1) * $signed(input_fmap_47[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 3'sd 2) * $signed(input_fmap_58[15:0]) +
	( 3'sd 2) * $signed(input_fmap_59[15:0]) +
	( 3'sd 2) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]);

logic signed [31:0] conv_mac_125;
assign conv_mac_125 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_38[15:0]) +
	( 3'sd 2) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 3'sd 2) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 3'sd 2) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 3'sd 2) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 2'sd 1) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 3'sd 2) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 3'sd 2) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_126;
assign conv_mac_126 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]) +
	( 2'sd 1) * $signed(input_fmap_32[15:0]) +
	( 2'sd 1) * $signed(input_fmap_33[15:0]) +
	( 2'sd 1) * $signed(input_fmap_34[15:0]) +
	( 3'sd 2) * $signed(input_fmap_35[15:0]) +
	( 3'sd 2) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_41[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 2'sd 1) * $signed(input_fmap_43[15:0]) +
	( 2'sd 1) * $signed(input_fmap_44[15:0]) +
	( 3'sd 2) * $signed(input_fmap_47[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 2'sd 1) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_53[15:0]) +
	( 3'sd 2) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 3'sd 2) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 3'sd 2) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic signed [31:0] conv_mac_127;
assign conv_mac_127 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]) +
	( 3'sd 2) * $signed(input_fmap_32[15:0]) +
	( 3'sd 2) * $signed(input_fmap_34[15:0]) +
	( 2'sd 1) * $signed(input_fmap_35[15:0]) +
	( 2'sd 1) * $signed(input_fmap_36[15:0]) +
	( 2'sd 1) * $signed(input_fmap_37[15:0]) +
	( 3'sd 2) * $signed(input_fmap_38[15:0]) +
	( 2'sd 1) * $signed(input_fmap_39[15:0]) +
	( 2'sd 1) * $signed(input_fmap_40[15:0]) +
	( 2'sd 1) * $signed(input_fmap_42[15:0]) +
	( 3'sd 2) * $signed(input_fmap_44[15:0]) +
	( 2'sd 1) * $signed(input_fmap_45[15:0]) +
	( 2'sd 1) * $signed(input_fmap_46[15:0]) +
	( 3'sd 2) * $signed(input_fmap_48[15:0]) +
	( 2'sd 1) * $signed(input_fmap_49[15:0]) +
	( 3'sd 2) * $signed(input_fmap_50[15:0]) +
	( 2'sd 1) * $signed(input_fmap_51[15:0]) +
	( 2'sd 1) * $signed(input_fmap_52[15:0]) +
	( 3'sd 2) * $signed(input_fmap_53[15:0]) +
	( 2'sd 1) * $signed(input_fmap_54[15:0]) +
	( 3'sd 2) * $signed(input_fmap_55[15:0]) +
	( 2'sd 1) * $signed(input_fmap_56[15:0]) +
	( 2'sd 1) * $signed(input_fmap_57[15:0]) +
	( 2'sd 1) * $signed(input_fmap_58[15:0]) +
	( 2'sd 1) * $signed(input_fmap_59[15:0]) +
	( 2'sd 1) * $signed(input_fmap_60[15:0]) +
	( 2'sd 1) * $signed(input_fmap_61[15:0]) +
	( 2'sd 1) * $signed(input_fmap_62[15:0]) +
	( 2'sd 1) * $signed(input_fmap_63[15:0]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 3'd2;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 2'd1;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3 + 2'd1;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6 + 2'd1;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7;
logic [31:0] bias_add_8;
assign bias_add_8 = conv_mac_8 + 3'd2;
logic [31:0] bias_add_9;
assign bias_add_9 = conv_mac_9 + 3'd2;
logic [31:0] bias_add_10;
assign bias_add_10 = conv_mac_10 + 2'd1;
logic [31:0] bias_add_11;
assign bias_add_11 = conv_mac_11 + 2'd1;
logic [31:0] bias_add_12;
assign bias_add_12 = conv_mac_12;
logic [31:0] bias_add_13;
assign bias_add_13 = conv_mac_13 + 2'd1;
logic [31:0] bias_add_14;
assign bias_add_14 = conv_mac_14 + 2'd1;
logic [31:0] bias_add_15;
assign bias_add_15 = conv_mac_15 + 2'd1;
logic [31:0] bias_add_16;
assign bias_add_16 = conv_mac_16 + 2'd1;
logic [31:0] bias_add_17;
assign bias_add_17 = conv_mac_17 + 3'd2;
logic [31:0] bias_add_18;
assign bias_add_18 = conv_mac_18 + 2'd1;
logic [31:0] bias_add_19;
assign bias_add_19 = conv_mac_19 + 3'd2;
logic [31:0] bias_add_20;
assign bias_add_20 = conv_mac_20 + 2'd1;
logic [31:0] bias_add_21;
assign bias_add_21 = conv_mac_21 + 2'd1;
logic [31:0] bias_add_22;
assign bias_add_22 = conv_mac_22 + 2'd1;
logic [31:0] bias_add_23;
assign bias_add_23 = conv_mac_23 + 2'd1;
logic [31:0] bias_add_24;
assign bias_add_24 = conv_mac_24 + 3'd2;
logic [31:0] bias_add_25;
assign bias_add_25 = conv_mac_25 + 2'd1;
logic [31:0] bias_add_26;
assign bias_add_26 = conv_mac_26 + 3'd2;
logic [31:0] bias_add_27;
assign bias_add_27 = conv_mac_27;
logic [31:0] bias_add_28;
assign bias_add_28 = conv_mac_28 + 2'd1;
logic [31:0] bias_add_29;
assign bias_add_29 = conv_mac_29;
logic [31:0] bias_add_30;
assign bias_add_30 = conv_mac_30 + 3'd2;
logic [31:0] bias_add_31;
assign bias_add_31 = conv_mac_31 + 3'd2;
logic [31:0] bias_add_32;
assign bias_add_32 = conv_mac_32 + 3'd2;
logic [31:0] bias_add_33;
assign bias_add_33 = conv_mac_33 + 3'd2;
logic [31:0] bias_add_34;
assign bias_add_34 = conv_mac_34;
logic [31:0] bias_add_35;
assign bias_add_35 = conv_mac_35 + 3'd2;
logic [31:0] bias_add_36;
assign bias_add_36 = conv_mac_36 + 2'd1;
logic [31:0] bias_add_37;
assign bias_add_37 = conv_mac_37 + 3'd2;
logic [31:0] bias_add_38;
assign bias_add_38 = conv_mac_38 + 2'd1;
logic [31:0] bias_add_39;
assign bias_add_39 = conv_mac_39 + 2'd1;
logic [31:0] bias_add_40;
assign bias_add_40 = conv_mac_40 + 2'd1;
logic [31:0] bias_add_41;
assign bias_add_41 = conv_mac_41 + 3'd2;
logic [31:0] bias_add_42;
assign bias_add_42 = conv_mac_42;
logic [31:0] bias_add_43;
assign bias_add_43 = conv_mac_43 + 2'd1;
logic [31:0] bias_add_44;
assign bias_add_44 = conv_mac_44 + 2'd1;
logic [31:0] bias_add_45;
assign bias_add_45 = conv_mac_45;
logic [31:0] bias_add_46;
assign bias_add_46 = conv_mac_46 + 2'd1;
logic [31:0] bias_add_47;
assign bias_add_47 = conv_mac_47 + 3'd2;
logic [31:0] bias_add_48;
assign bias_add_48 = conv_mac_48;
logic [31:0] bias_add_49;
assign bias_add_49 = conv_mac_49 + 2'd1;
logic [31:0] bias_add_50;
assign bias_add_50 = conv_mac_50 + 2'd1;
logic [31:0] bias_add_51;
assign bias_add_51 = conv_mac_51 + 2'd1;
logic [31:0] bias_add_52;
assign bias_add_52 = conv_mac_52 + 3'd2;
logic [31:0] bias_add_53;
assign bias_add_53 = conv_mac_53 + 3'd2;
logic [31:0] bias_add_54;
assign bias_add_54 = conv_mac_54;
logic [31:0] bias_add_55;
assign bias_add_55 = conv_mac_55 + 3'd2;
logic [31:0] bias_add_56;
assign bias_add_56 = conv_mac_56 + 2'd1;
logic [31:0] bias_add_57;
assign bias_add_57 = conv_mac_57 + 2'd1;
logic [31:0] bias_add_58;
assign bias_add_58 = conv_mac_58 + 3'd2;
logic [31:0] bias_add_59;
assign bias_add_59 = conv_mac_59 + 2'd1;
logic [31:0] bias_add_60;
assign bias_add_60 = conv_mac_60 + 2'd1;
logic [31:0] bias_add_61;
assign bias_add_61 = conv_mac_61 + 2'd1;
logic [31:0] bias_add_62;
assign bias_add_62 = conv_mac_62;
logic [31:0] bias_add_63;
assign bias_add_63 = conv_mac_63 + 2'd1;
logic [31:0] bias_add_64;
assign bias_add_64 = conv_mac_64 + 2'd1;
logic [31:0] bias_add_65;
assign bias_add_65 = conv_mac_65 + 2'd1;
logic [31:0] bias_add_66;
assign bias_add_66 = conv_mac_66;
logic [31:0] bias_add_67;
assign bias_add_67 = conv_mac_67 + 2'd1;
logic [31:0] bias_add_68;
assign bias_add_68 = conv_mac_68 + 3'd2;
logic [31:0] bias_add_69;
assign bias_add_69 = conv_mac_69 + 3'd2;
logic [31:0] bias_add_70;
assign bias_add_70 = conv_mac_70 + 3'd2;
logic [31:0] bias_add_71;
assign bias_add_71 = conv_mac_71 + 3'd2;
logic [31:0] bias_add_72;
assign bias_add_72 = conv_mac_72 + 2'd1;
logic [31:0] bias_add_73;
assign bias_add_73 = conv_mac_73;
logic [31:0] bias_add_74;
assign bias_add_74 = conv_mac_74 + 2'd1;
logic [31:0] bias_add_75;
assign bias_add_75 = conv_mac_75;
logic [31:0] bias_add_76;
assign bias_add_76 = conv_mac_76 + 3'd2;
logic [31:0] bias_add_77;
assign bias_add_77 = conv_mac_77 + 2'd1;
logic [31:0] bias_add_78;
assign bias_add_78 = conv_mac_78 + 2'd1;
logic [31:0] bias_add_79;
assign bias_add_79 = conv_mac_79 + 3'd2;
logic [31:0] bias_add_80;
assign bias_add_80 = conv_mac_80 + 3'd2;
logic [31:0] bias_add_81;
assign bias_add_81 = conv_mac_81 + 3'd2;
logic [31:0] bias_add_82;
assign bias_add_82 = conv_mac_82 + 3'd2;
logic [31:0] bias_add_83;
assign bias_add_83 = conv_mac_83;
logic [31:0] bias_add_84;
assign bias_add_84 = conv_mac_84 + 2'd1;
logic [31:0] bias_add_85;
assign bias_add_85 = conv_mac_85 + 3'd2;
logic [31:0] bias_add_86;
assign bias_add_86 = conv_mac_86 + 3'd2;
logic [31:0] bias_add_87;
assign bias_add_87 = conv_mac_87;
logic [31:0] bias_add_88;
assign bias_add_88 = conv_mac_88 + 2'd1;
logic [31:0] bias_add_89;
assign bias_add_89 = conv_mac_89 + 2'd1;
logic [31:0] bias_add_90;
assign bias_add_90 = conv_mac_90 + 3'd2;
logic [31:0] bias_add_91;
assign bias_add_91 = conv_mac_91 + 2'd1;
logic [31:0] bias_add_92;
assign bias_add_92 = conv_mac_92;
logic [31:0] bias_add_93;
assign bias_add_93 = conv_mac_93 + 3'd2;
logic [31:0] bias_add_94;
assign bias_add_94 = conv_mac_94 + 2'd1;
logic [31:0] bias_add_95;
assign bias_add_95 = conv_mac_95 + 3'd2;
logic [31:0] bias_add_96;
assign bias_add_96 = conv_mac_96;
logic [31:0] bias_add_97;
assign bias_add_97 = conv_mac_97 + 2'd1;
logic [31:0] bias_add_98;
assign bias_add_98 = conv_mac_98 + 2'd1;
logic [31:0] bias_add_99;
assign bias_add_99 = conv_mac_99 + 3'd2;
logic [31:0] bias_add_100;
assign bias_add_100 = conv_mac_100 + 3'd2;
logic [31:0] bias_add_101;
assign bias_add_101 = conv_mac_101;
logic [31:0] bias_add_102;
assign bias_add_102 = conv_mac_102 + 2'd1;
logic [31:0] bias_add_103;
assign bias_add_103 = conv_mac_103 + 2'd1;
logic [31:0] bias_add_104;
assign bias_add_104 = conv_mac_104 + 3'd2;
logic [31:0] bias_add_105;
assign bias_add_105 = conv_mac_105 + 2'd1;
logic [31:0] bias_add_106;
assign bias_add_106 = conv_mac_106 + 2'd1;
logic [31:0] bias_add_107;
assign bias_add_107 = conv_mac_107 + 3'd2;
logic [31:0] bias_add_108;
assign bias_add_108 = conv_mac_108;
logic [31:0] bias_add_109;
assign bias_add_109 = conv_mac_109 + 2'd1;
logic [31:0] bias_add_110;
assign bias_add_110 = conv_mac_110 + 3'd2;
logic [31:0] bias_add_111;
assign bias_add_111 = conv_mac_111;
logic [31:0] bias_add_112;
assign bias_add_112 = conv_mac_112;
logic [31:0] bias_add_113;
assign bias_add_113 = conv_mac_113 + 2'd1;
logic [31:0] bias_add_114;
assign bias_add_114 = conv_mac_114 + 2'd1;
logic [31:0] bias_add_115;
assign bias_add_115 = conv_mac_115 + 2'd1;
logic [31:0] bias_add_116;
assign bias_add_116 = conv_mac_116 + 3'd2;
logic [31:0] bias_add_117;
assign bias_add_117 = conv_mac_117 + 3'd2;
logic [31:0] bias_add_118;
assign bias_add_118 = conv_mac_118 + 2'd1;
logic [31:0] bias_add_119;
assign bias_add_119 = conv_mac_119 + 3'd2;
logic [31:0] bias_add_120;
assign bias_add_120 = conv_mac_120;
logic [31:0] bias_add_121;
assign bias_add_121 = conv_mac_121 + 2'd1;
logic [31:0] bias_add_122;
assign bias_add_122 = conv_mac_122 + 2'd1;
logic [31:0] bias_add_123;
assign bias_add_123 = conv_mac_123 + 3'd2;
logic [31:0] bias_add_124;
assign bias_add_124 = conv_mac_124;
logic [31:0] bias_add_125;
assign bias_add_125 = conv_mac_125 + 2'd1;
logic [31:0] bias_add_126;
assign bias_add_126 = conv_mac_126 + 3'd2;
logic [31:0] bias_add_127;
assign bias_add_127 = conv_mac_127;

logic [15:0] relu_0;
assign relu_0[15:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[15:1]}} :'d6) : '0;
logic [15:0] relu_1;
assign relu_1[15:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[15:1]}} :'d6) : '0;
logic [15:0] relu_2;
assign relu_2[15:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[15:1]}} :'d6) : '0;
logic [15:0] relu_3;
assign relu_3[15:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[15:1]}} :'d6) : '0;
logic [15:0] relu_4;
assign relu_4[15:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[15:1]}} :'d6) : '0;
logic [15:0] relu_5;
assign relu_5[15:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[15:1]}} :'d6) : '0;
logic [15:0] relu_6;
assign relu_6[15:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[15:1]}} :'d6) : '0;
logic [15:0] relu_7;
assign relu_7[15:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[15:1]}} :'d6) : '0;
logic [15:0] relu_8;
assign relu_8[15:0] = (bias_add_8[31]==0) ? ((bias_add_8<3'd6) ? {{bias_add_8[31],bias_add_8[15:1]}} :'d6) : '0;
logic [15:0] relu_9;
assign relu_9[15:0] = (bias_add_9[31]==0) ? ((bias_add_9<3'd6) ? {{bias_add_9[31],bias_add_9[15:1]}} :'d6) : '0;
logic [15:0] relu_10;
assign relu_10[15:0] = (bias_add_10[31]==0) ? ((bias_add_10<3'd6) ? {{bias_add_10[31],bias_add_10[15:1]}} :'d6) : '0;
logic [15:0] relu_11;
assign relu_11[15:0] = (bias_add_11[31]==0) ? ((bias_add_11<3'd6) ? {{bias_add_11[31],bias_add_11[15:1]}} :'d6) : '0;
logic [15:0] relu_12;
assign relu_12[15:0] = (bias_add_12[31]==0) ? ((bias_add_12<3'd6) ? {{bias_add_12[31],bias_add_12[15:1]}} :'d6) : '0;
logic [15:0] relu_13;
assign relu_13[15:0] = (bias_add_13[31]==0) ? ((bias_add_13<3'd6) ? {{bias_add_13[31],bias_add_13[15:1]}} :'d6) : '0;
logic [15:0] relu_14;
assign relu_14[15:0] = (bias_add_14[31]==0) ? ((bias_add_14<3'd6) ? {{bias_add_14[31],bias_add_14[15:1]}} :'d6) : '0;
logic [15:0] relu_15;
assign relu_15[15:0] = (bias_add_15[31]==0) ? ((bias_add_15<3'd6) ? {{bias_add_15[31],bias_add_15[15:1]}} :'d6) : '0;
logic [15:0] relu_16;
assign relu_16[15:0] = (bias_add_16[31]==0) ? ((bias_add_16<3'd6) ? {{bias_add_16[31],bias_add_16[15:1]}} :'d6) : '0;
logic [15:0] relu_17;
assign relu_17[15:0] = (bias_add_17[31]==0) ? ((bias_add_17<3'd6) ? {{bias_add_17[31],bias_add_17[15:1]}} :'d6) : '0;
logic [15:0] relu_18;
assign relu_18[15:0] = (bias_add_18[31]==0) ? ((bias_add_18<3'd6) ? {{bias_add_18[31],bias_add_18[15:1]}} :'d6) : '0;
logic [15:0] relu_19;
assign relu_19[15:0] = (bias_add_19[31]==0) ? ((bias_add_19<3'd6) ? {{bias_add_19[31],bias_add_19[15:1]}} :'d6) : '0;
logic [15:0] relu_20;
assign relu_20[15:0] = (bias_add_20[31]==0) ? ((bias_add_20<3'd6) ? {{bias_add_20[31],bias_add_20[15:1]}} :'d6) : '0;
logic [15:0] relu_21;
assign relu_21[15:0] = (bias_add_21[31]==0) ? ((bias_add_21<3'd6) ? {{bias_add_21[31],bias_add_21[15:1]}} :'d6) : '0;
logic [15:0] relu_22;
assign relu_22[15:0] = (bias_add_22[31]==0) ? ((bias_add_22<3'd6) ? {{bias_add_22[31],bias_add_22[15:1]}} :'d6) : '0;
logic [15:0] relu_23;
assign relu_23[15:0] = (bias_add_23[31]==0) ? ((bias_add_23<3'd6) ? {{bias_add_23[31],bias_add_23[15:1]}} :'d6) : '0;
logic [15:0] relu_24;
assign relu_24[15:0] = (bias_add_24[31]==0) ? ((bias_add_24<3'd6) ? {{bias_add_24[31],bias_add_24[15:1]}} :'d6) : '0;
logic [15:0] relu_25;
assign relu_25[15:0] = (bias_add_25[31]==0) ? ((bias_add_25<3'd6) ? {{bias_add_25[31],bias_add_25[15:1]}} :'d6) : '0;
logic [15:0] relu_26;
assign relu_26[15:0] = (bias_add_26[31]==0) ? ((bias_add_26<3'd6) ? {{bias_add_26[31],bias_add_26[15:1]}} :'d6) : '0;
logic [15:0] relu_27;
assign relu_27[15:0] = (bias_add_27[31]==0) ? ((bias_add_27<3'd6) ? {{bias_add_27[31],bias_add_27[15:1]}} :'d6) : '0;
logic [15:0] relu_28;
assign relu_28[15:0] = (bias_add_28[31]==0) ? ((bias_add_28<3'd6) ? {{bias_add_28[31],bias_add_28[15:1]}} :'d6) : '0;
logic [15:0] relu_29;
assign relu_29[15:0] = (bias_add_29[31]==0) ? ((bias_add_29<3'd6) ? {{bias_add_29[31],bias_add_29[15:1]}} :'d6) : '0;
logic [15:0] relu_30;
assign relu_30[15:0] = (bias_add_30[31]==0) ? ((bias_add_30<3'd6) ? {{bias_add_30[31],bias_add_30[15:1]}} :'d6) : '0;
logic [15:0] relu_31;
assign relu_31[15:0] = (bias_add_31[31]==0) ? ((bias_add_31<3'd6) ? {{bias_add_31[31],bias_add_31[15:1]}} :'d6) : '0;
logic [15:0] relu_32;
assign relu_32[15:0] = (bias_add_32[31]==0) ? ((bias_add_32<3'd6) ? {{bias_add_32[31],bias_add_32[15:1]}} :'d6) : '0;
logic [15:0] relu_33;
assign relu_33[15:0] = (bias_add_33[31]==0) ? ((bias_add_33<3'd6) ? {{bias_add_33[31],bias_add_33[15:1]}} :'d6) : '0;
logic [15:0] relu_34;
assign relu_34[15:0] = (bias_add_34[31]==0) ? ((bias_add_34<3'd6) ? {{bias_add_34[31],bias_add_34[15:1]}} :'d6) : '0;
logic [15:0] relu_35;
assign relu_35[15:0] = (bias_add_35[31]==0) ? ((bias_add_35<3'd6) ? {{bias_add_35[31],bias_add_35[15:1]}} :'d6) : '0;
logic [15:0] relu_36;
assign relu_36[15:0] = (bias_add_36[31]==0) ? ((bias_add_36<3'd6) ? {{bias_add_36[31],bias_add_36[15:1]}} :'d6) : '0;
logic [15:0] relu_37;
assign relu_37[15:0] = (bias_add_37[31]==0) ? ((bias_add_37<3'd6) ? {{bias_add_37[31],bias_add_37[15:1]}} :'d6) : '0;
logic [15:0] relu_38;
assign relu_38[15:0] = (bias_add_38[31]==0) ? ((bias_add_38<3'd6) ? {{bias_add_38[31],bias_add_38[15:1]}} :'d6) : '0;
logic [15:0] relu_39;
assign relu_39[15:0] = (bias_add_39[31]==0) ? ((bias_add_39<3'd6) ? {{bias_add_39[31],bias_add_39[15:1]}} :'d6) : '0;
logic [15:0] relu_40;
assign relu_40[15:0] = (bias_add_40[31]==0) ? ((bias_add_40<3'd6) ? {{bias_add_40[31],bias_add_40[15:1]}} :'d6) : '0;
logic [15:0] relu_41;
assign relu_41[15:0] = (bias_add_41[31]==0) ? ((bias_add_41<3'd6) ? {{bias_add_41[31],bias_add_41[15:1]}} :'d6) : '0;
logic [15:0] relu_42;
assign relu_42[15:0] = (bias_add_42[31]==0) ? ((bias_add_42<3'd6) ? {{bias_add_42[31],bias_add_42[15:1]}} :'d6) : '0;
logic [15:0] relu_43;
assign relu_43[15:0] = (bias_add_43[31]==0) ? ((bias_add_43<3'd6) ? {{bias_add_43[31],bias_add_43[15:1]}} :'d6) : '0;
logic [15:0] relu_44;
assign relu_44[15:0] = (bias_add_44[31]==0) ? ((bias_add_44<3'd6) ? {{bias_add_44[31],bias_add_44[15:1]}} :'d6) : '0;
logic [15:0] relu_45;
assign relu_45[15:0] = (bias_add_45[31]==0) ? ((bias_add_45<3'd6) ? {{bias_add_45[31],bias_add_45[15:1]}} :'d6) : '0;
logic [15:0] relu_46;
assign relu_46[15:0] = (bias_add_46[31]==0) ? ((bias_add_46<3'd6) ? {{bias_add_46[31],bias_add_46[15:1]}} :'d6) : '0;
logic [15:0] relu_47;
assign relu_47[15:0] = (bias_add_47[31]==0) ? ((bias_add_47<3'd6) ? {{bias_add_47[31],bias_add_47[15:1]}} :'d6) : '0;
logic [15:0] relu_48;
assign relu_48[15:0] = (bias_add_48[31]==0) ? ((bias_add_48<3'd6) ? {{bias_add_48[31],bias_add_48[15:1]}} :'d6) : '0;
logic [15:0] relu_49;
assign relu_49[15:0] = (bias_add_49[31]==0) ? ((bias_add_49<3'd6) ? {{bias_add_49[31],bias_add_49[15:1]}} :'d6) : '0;
logic [15:0] relu_50;
assign relu_50[15:0] = (bias_add_50[31]==0) ? ((bias_add_50<3'd6) ? {{bias_add_50[31],bias_add_50[15:1]}} :'d6) : '0;
logic [15:0] relu_51;
assign relu_51[15:0] = (bias_add_51[31]==0) ? ((bias_add_51<3'd6) ? {{bias_add_51[31],bias_add_51[15:1]}} :'d6) : '0;
logic [15:0] relu_52;
assign relu_52[15:0] = (bias_add_52[31]==0) ? ((bias_add_52<3'd6) ? {{bias_add_52[31],bias_add_52[15:1]}} :'d6) : '0;
logic [15:0] relu_53;
assign relu_53[15:0] = (bias_add_53[31]==0) ? ((bias_add_53<3'd6) ? {{bias_add_53[31],bias_add_53[15:1]}} :'d6) : '0;
logic [15:0] relu_54;
assign relu_54[15:0] = (bias_add_54[31]==0) ? ((bias_add_54<3'd6) ? {{bias_add_54[31],bias_add_54[15:1]}} :'d6) : '0;
logic [15:0] relu_55;
assign relu_55[15:0] = (bias_add_55[31]==0) ? ((bias_add_55<3'd6) ? {{bias_add_55[31],bias_add_55[15:1]}} :'d6) : '0;
logic [15:0] relu_56;
assign relu_56[15:0] = (bias_add_56[31]==0) ? ((bias_add_56<3'd6) ? {{bias_add_56[31],bias_add_56[15:1]}} :'d6) : '0;
logic [15:0] relu_57;
assign relu_57[15:0] = (bias_add_57[31]==0) ? ((bias_add_57<3'd6) ? {{bias_add_57[31],bias_add_57[15:1]}} :'d6) : '0;
logic [15:0] relu_58;
assign relu_58[15:0] = (bias_add_58[31]==0) ? ((bias_add_58<3'd6) ? {{bias_add_58[31],bias_add_58[15:1]}} :'d6) : '0;
logic [15:0] relu_59;
assign relu_59[15:0] = (bias_add_59[31]==0) ? ((bias_add_59<3'd6) ? {{bias_add_59[31],bias_add_59[15:1]}} :'d6) : '0;
logic [15:0] relu_60;
assign relu_60[15:0] = (bias_add_60[31]==0) ? ((bias_add_60<3'd6) ? {{bias_add_60[31],bias_add_60[15:1]}} :'d6) : '0;
logic [15:0] relu_61;
assign relu_61[15:0] = (bias_add_61[31]==0) ? ((bias_add_61<3'd6) ? {{bias_add_61[31],bias_add_61[15:1]}} :'d6) : '0;
logic [15:0] relu_62;
assign relu_62[15:0] = (bias_add_62[31]==0) ? ((bias_add_62<3'd6) ? {{bias_add_62[31],bias_add_62[15:1]}} :'d6) : '0;
logic [15:0] relu_63;
assign relu_63[15:0] = (bias_add_63[31]==0) ? ((bias_add_63<3'd6) ? {{bias_add_63[31],bias_add_63[15:1]}} :'d6) : '0;
logic [15:0] relu_64;
assign relu_64[15:0] = (bias_add_64[31]==0) ? ((bias_add_64<3'd6) ? {{bias_add_64[31],bias_add_64[15:1]}} :'d6) : '0;
logic [15:0] relu_65;
assign relu_65[15:0] = (bias_add_65[31]==0) ? ((bias_add_65<3'd6) ? {{bias_add_65[31],bias_add_65[15:1]}} :'d6) : '0;
logic [15:0] relu_66;
assign relu_66[15:0] = (bias_add_66[31]==0) ? ((bias_add_66<3'd6) ? {{bias_add_66[31],bias_add_66[15:1]}} :'d6) : '0;
logic [15:0] relu_67;
assign relu_67[15:0] = (bias_add_67[31]==0) ? ((bias_add_67<3'd6) ? {{bias_add_67[31],bias_add_67[15:1]}} :'d6) : '0;
logic [15:0] relu_68;
assign relu_68[15:0] = (bias_add_68[31]==0) ? ((bias_add_68<3'd6) ? {{bias_add_68[31],bias_add_68[15:1]}} :'d6) : '0;
logic [15:0] relu_69;
assign relu_69[15:0] = (bias_add_69[31]==0) ? ((bias_add_69<3'd6) ? {{bias_add_69[31],bias_add_69[15:1]}} :'d6) : '0;
logic [15:0] relu_70;
assign relu_70[15:0] = (bias_add_70[31]==0) ? ((bias_add_70<3'd6) ? {{bias_add_70[31],bias_add_70[15:1]}} :'d6) : '0;
logic [15:0] relu_71;
assign relu_71[15:0] = (bias_add_71[31]==0) ? ((bias_add_71<3'd6) ? {{bias_add_71[31],bias_add_71[15:1]}} :'d6) : '0;
logic [15:0] relu_72;
assign relu_72[15:0] = (bias_add_72[31]==0) ? ((bias_add_72<3'd6) ? {{bias_add_72[31],bias_add_72[15:1]}} :'d6) : '0;
logic [15:0] relu_73;
assign relu_73[15:0] = (bias_add_73[31]==0) ? ((bias_add_73<3'd6) ? {{bias_add_73[31],bias_add_73[15:1]}} :'d6) : '0;
logic [15:0] relu_74;
assign relu_74[15:0] = (bias_add_74[31]==0) ? ((bias_add_74<3'd6) ? {{bias_add_74[31],bias_add_74[15:1]}} :'d6) : '0;
logic [15:0] relu_75;
assign relu_75[15:0] = (bias_add_75[31]==0) ? ((bias_add_75<3'd6) ? {{bias_add_75[31],bias_add_75[15:1]}} :'d6) : '0;
logic [15:0] relu_76;
assign relu_76[15:0] = (bias_add_76[31]==0) ? ((bias_add_76<3'd6) ? {{bias_add_76[31],bias_add_76[15:1]}} :'d6) : '0;
logic [15:0] relu_77;
assign relu_77[15:0] = (bias_add_77[31]==0) ? ((bias_add_77<3'd6) ? {{bias_add_77[31],bias_add_77[15:1]}} :'d6) : '0;
logic [15:0] relu_78;
assign relu_78[15:0] = (bias_add_78[31]==0) ? ((bias_add_78<3'd6) ? {{bias_add_78[31],bias_add_78[15:1]}} :'d6) : '0;
logic [15:0] relu_79;
assign relu_79[15:0] = (bias_add_79[31]==0) ? ((bias_add_79<3'd6) ? {{bias_add_79[31],bias_add_79[15:1]}} :'d6) : '0;
logic [15:0] relu_80;
assign relu_80[15:0] = (bias_add_80[31]==0) ? ((bias_add_80<3'd6) ? {{bias_add_80[31],bias_add_80[15:1]}} :'d6) : '0;
logic [15:0] relu_81;
assign relu_81[15:0] = (bias_add_81[31]==0) ? ((bias_add_81<3'd6) ? {{bias_add_81[31],bias_add_81[15:1]}} :'d6) : '0;
logic [15:0] relu_82;
assign relu_82[15:0] = (bias_add_82[31]==0) ? ((bias_add_82<3'd6) ? {{bias_add_82[31],bias_add_82[15:1]}} :'d6) : '0;
logic [15:0] relu_83;
assign relu_83[15:0] = (bias_add_83[31]==0) ? ((bias_add_83<3'd6) ? {{bias_add_83[31],bias_add_83[15:1]}} :'d6) : '0;
logic [15:0] relu_84;
assign relu_84[15:0] = (bias_add_84[31]==0) ? ((bias_add_84<3'd6) ? {{bias_add_84[31],bias_add_84[15:1]}} :'d6) : '0;
logic [15:0] relu_85;
assign relu_85[15:0] = (bias_add_85[31]==0) ? ((bias_add_85<3'd6) ? {{bias_add_85[31],bias_add_85[15:1]}} :'d6) : '0;
logic [15:0] relu_86;
assign relu_86[15:0] = (bias_add_86[31]==0) ? ((bias_add_86<3'd6) ? {{bias_add_86[31],bias_add_86[15:1]}} :'d6) : '0;
logic [15:0] relu_87;
assign relu_87[15:0] = (bias_add_87[31]==0) ? ((bias_add_87<3'd6) ? {{bias_add_87[31],bias_add_87[15:1]}} :'d6) : '0;
logic [15:0] relu_88;
assign relu_88[15:0] = (bias_add_88[31]==0) ? ((bias_add_88<3'd6) ? {{bias_add_88[31],bias_add_88[15:1]}} :'d6) : '0;
logic [15:0] relu_89;
assign relu_89[15:0] = (bias_add_89[31]==0) ? ((bias_add_89<3'd6) ? {{bias_add_89[31],bias_add_89[15:1]}} :'d6) : '0;
logic [15:0] relu_90;
assign relu_90[15:0] = (bias_add_90[31]==0) ? ((bias_add_90<3'd6) ? {{bias_add_90[31],bias_add_90[15:1]}} :'d6) : '0;
logic [15:0] relu_91;
assign relu_91[15:0] = (bias_add_91[31]==0) ? ((bias_add_91<3'd6) ? {{bias_add_91[31],bias_add_91[15:1]}} :'d6) : '0;
logic [15:0] relu_92;
assign relu_92[15:0] = (bias_add_92[31]==0) ? ((bias_add_92<3'd6) ? {{bias_add_92[31],bias_add_92[15:1]}} :'d6) : '0;
logic [15:0] relu_93;
assign relu_93[15:0] = (bias_add_93[31]==0) ? ((bias_add_93<3'd6) ? {{bias_add_93[31],bias_add_93[15:1]}} :'d6) : '0;
logic [15:0] relu_94;
assign relu_94[15:0] = (bias_add_94[31]==0) ? ((bias_add_94<3'd6) ? {{bias_add_94[31],bias_add_94[15:1]}} :'d6) : '0;
logic [15:0] relu_95;
assign relu_95[15:0] = (bias_add_95[31]==0) ? ((bias_add_95<3'd6) ? {{bias_add_95[31],bias_add_95[15:1]}} :'d6) : '0;
logic [15:0] relu_96;
assign relu_96[15:0] = (bias_add_96[31]==0) ? ((bias_add_96<3'd6) ? {{bias_add_96[31],bias_add_96[15:1]}} :'d6) : '0;
logic [15:0] relu_97;
assign relu_97[15:0] = (bias_add_97[31]==0) ? ((bias_add_97<3'd6) ? {{bias_add_97[31],bias_add_97[15:1]}} :'d6) : '0;
logic [15:0] relu_98;
assign relu_98[15:0] = (bias_add_98[31]==0) ? ((bias_add_98<3'd6) ? {{bias_add_98[31],bias_add_98[15:1]}} :'d6) : '0;
logic [15:0] relu_99;
assign relu_99[15:0] = (bias_add_99[31]==0) ? ((bias_add_99<3'd6) ? {{bias_add_99[31],bias_add_99[15:1]}} :'d6) : '0;
logic [15:0] relu_100;
assign relu_100[15:0] = (bias_add_100[31]==0) ? ((bias_add_100<3'd6) ? {{bias_add_100[31],bias_add_100[15:1]}} :'d6) : '0;
logic [15:0] relu_101;
assign relu_101[15:0] = (bias_add_101[31]==0) ? ((bias_add_101<3'd6) ? {{bias_add_101[31],bias_add_101[15:1]}} :'d6) : '0;
logic [15:0] relu_102;
assign relu_102[15:0] = (bias_add_102[31]==0) ? ((bias_add_102<3'd6) ? {{bias_add_102[31],bias_add_102[15:1]}} :'d6) : '0;
logic [15:0] relu_103;
assign relu_103[15:0] = (bias_add_103[31]==0) ? ((bias_add_103<3'd6) ? {{bias_add_103[31],bias_add_103[15:1]}} :'d6) : '0;
logic [15:0] relu_104;
assign relu_104[15:0] = (bias_add_104[31]==0) ? ((bias_add_104<3'd6) ? {{bias_add_104[31],bias_add_104[15:1]}} :'d6) : '0;
logic [15:0] relu_105;
assign relu_105[15:0] = (bias_add_105[31]==0) ? ((bias_add_105<3'd6) ? {{bias_add_105[31],bias_add_105[15:1]}} :'d6) : '0;
logic [15:0] relu_106;
assign relu_106[15:0] = (bias_add_106[31]==0) ? ((bias_add_106<3'd6) ? {{bias_add_106[31],bias_add_106[15:1]}} :'d6) : '0;
logic [15:0] relu_107;
assign relu_107[15:0] = (bias_add_107[31]==0) ? ((bias_add_107<3'd6) ? {{bias_add_107[31],bias_add_107[15:1]}} :'d6) : '0;
logic [15:0] relu_108;
assign relu_108[15:0] = (bias_add_108[31]==0) ? ((bias_add_108<3'd6) ? {{bias_add_108[31],bias_add_108[15:1]}} :'d6) : '0;
logic [15:0] relu_109;
assign relu_109[15:0] = (bias_add_109[31]==0) ? ((bias_add_109<3'd6) ? {{bias_add_109[31],bias_add_109[15:1]}} :'d6) : '0;
logic [15:0] relu_110;
assign relu_110[15:0] = (bias_add_110[31]==0) ? ((bias_add_110<3'd6) ? {{bias_add_110[31],bias_add_110[15:1]}} :'d6) : '0;
logic [15:0] relu_111;
assign relu_111[15:0] = (bias_add_111[31]==0) ? ((bias_add_111<3'd6) ? {{bias_add_111[31],bias_add_111[15:1]}} :'d6) : '0;
logic [15:0] relu_112;
assign relu_112[15:0] = (bias_add_112[31]==0) ? ((bias_add_112<3'd6) ? {{bias_add_112[31],bias_add_112[15:1]}} :'d6) : '0;
logic [15:0] relu_113;
assign relu_113[15:0] = (bias_add_113[31]==0) ? ((bias_add_113<3'd6) ? {{bias_add_113[31],bias_add_113[15:1]}} :'d6) : '0;
logic [15:0] relu_114;
assign relu_114[15:0] = (bias_add_114[31]==0) ? ((bias_add_114<3'd6) ? {{bias_add_114[31],bias_add_114[15:1]}} :'d6) : '0;
logic [15:0] relu_115;
assign relu_115[15:0] = (bias_add_115[31]==0) ? ((bias_add_115<3'd6) ? {{bias_add_115[31],bias_add_115[15:1]}} :'d6) : '0;
logic [15:0] relu_116;
assign relu_116[15:0] = (bias_add_116[31]==0) ? ((bias_add_116<3'd6) ? {{bias_add_116[31],bias_add_116[15:1]}} :'d6) : '0;
logic [15:0] relu_117;
assign relu_117[15:0] = (bias_add_117[31]==0) ? ((bias_add_117<3'd6) ? {{bias_add_117[31],bias_add_117[15:1]}} :'d6) : '0;
logic [15:0] relu_118;
assign relu_118[15:0] = (bias_add_118[31]==0) ? ((bias_add_118<3'd6) ? {{bias_add_118[31],bias_add_118[15:1]}} :'d6) : '0;
logic [15:0] relu_119;
assign relu_119[15:0] = (bias_add_119[31]==0) ? ((bias_add_119<3'd6) ? {{bias_add_119[31],bias_add_119[15:1]}} :'d6) : '0;
logic [15:0] relu_120;
assign relu_120[15:0] = (bias_add_120[31]==0) ? ((bias_add_120<3'd6) ? {{bias_add_120[31],bias_add_120[15:1]}} :'d6) : '0;
logic [15:0] relu_121;
assign relu_121[15:0] = (bias_add_121[31]==0) ? ((bias_add_121<3'd6) ? {{bias_add_121[31],bias_add_121[15:1]}} :'d6) : '0;
logic [15:0] relu_122;
assign relu_122[15:0] = (bias_add_122[31]==0) ? ((bias_add_122<3'd6) ? {{bias_add_122[31],bias_add_122[15:1]}} :'d6) : '0;
logic [15:0] relu_123;
assign relu_123[15:0] = (bias_add_123[31]==0) ? ((bias_add_123<3'd6) ? {{bias_add_123[31],bias_add_123[15:1]}} :'d6) : '0;
logic [15:0] relu_124;
assign relu_124[15:0] = (bias_add_124[31]==0) ? ((bias_add_124<3'd6) ? {{bias_add_124[31],bias_add_124[15:1]}} :'d6) : '0;
logic [15:0] relu_125;
assign relu_125[15:0] = (bias_add_125[31]==0) ? ((bias_add_125<3'd6) ? {{bias_add_125[31],bias_add_125[15:1]}} :'d6) : '0;
logic [15:0] relu_126;
assign relu_126[15:0] = (bias_add_126[31]==0) ? ((bias_add_126<3'd6) ? {{bias_add_126[31],bias_add_126[15:1]}} :'d6) : '0;
logic [15:0] relu_127;
assign relu_127[15:0] = (bias_add_127[31]==0) ? ((bias_add_127<3'd6) ? {{bias_add_127[31],bias_add_127[15:1]}} :'d6) : '0;

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
