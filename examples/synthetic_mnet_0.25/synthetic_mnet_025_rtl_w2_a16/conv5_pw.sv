module conv5_pw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [512-1:0] input_act,
    output logic [1024-1:0] output_act,
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

logic signed [31:0] conv_mac_0;
assign conv_mac_0 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_8;
assign conv_mac_8 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_9;
assign conv_mac_9 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_10;
assign conv_mac_10 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_11;
assign conv_mac_11 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]);

logic signed [31:0] conv_mac_12;
assign conv_mac_12 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_13;
assign conv_mac_13 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_14;
assign conv_mac_14 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_15;
assign conv_mac_15 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_16;
assign conv_mac_16 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_17;
assign conv_mac_17 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_18;
assign conv_mac_18 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_19;
assign conv_mac_19 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_20;
assign conv_mac_20 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]);

logic signed [31:0] conv_mac_21;
assign conv_mac_21 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_22;
assign conv_mac_22 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_23;
assign conv_mac_23 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_24;
assign conv_mac_24 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_25;
assign conv_mac_25 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_26;
assign conv_mac_26 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_27;
assign conv_mac_27 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]);

logic signed [31:0] conv_mac_28;
assign conv_mac_28 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_29;
assign conv_mac_29 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_30;
assign conv_mac_30 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_31;
assign conv_mac_31 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_32;
assign conv_mac_32 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_33;
assign conv_mac_33 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_34;
assign conv_mac_34 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_35;
assign conv_mac_35 = 
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_36;
assign conv_mac_36 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_37;
assign conv_mac_37 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]);

logic signed [31:0] conv_mac_38;
assign conv_mac_38 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_39;
assign conv_mac_39 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]);

logic signed [31:0] conv_mac_40;
assign conv_mac_40 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_41;
assign conv_mac_41 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_42;
assign conv_mac_42 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_43;
assign conv_mac_43 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_44;
assign conv_mac_44 = 
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_45;
assign conv_mac_45 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_46;
assign conv_mac_46 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_47;
assign conv_mac_47 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_48;
assign conv_mac_48 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_49;
assign conv_mac_49 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]);

logic signed [31:0] conv_mac_50;
assign conv_mac_50 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_51;
assign conv_mac_51 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_52;
assign conv_mac_52 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_53;
assign conv_mac_53 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_54;
assign conv_mac_54 = 
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_55;
assign conv_mac_55 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]);

logic signed [31:0] conv_mac_56;
assign conv_mac_56 = 
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_57;
assign conv_mac_57 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 3'sd 2) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 3'sd 2) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_58;
assign conv_mac_58 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
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
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_59;
assign conv_mac_59 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 3'sd 2) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 3'sd 2) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 3'sd 2) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_60;
assign conv_mac_60 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 2'sd 1) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_61;
assign conv_mac_61 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 2'sd 1) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_18[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 3'sd 2) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 3'sd 2) * $signed(input_fmap_22[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 2'sd 1) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 3'sd 2) * $signed(input_fmap_26[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_28[15:0]) +
	( 2'sd 1) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]) +
	( 2'sd 1) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_62;
assign conv_mac_62 = 
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 3'sd 2) * $signed(input_fmap_9[15:0]) +
	( 3'sd 2) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_11[15:0]) +
	( 2'sd 1) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 2'sd 1) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_17[15:0]) +
	( 2'sd 1) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 2'sd 1) * $signed(input_fmap_28[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]);

logic signed [31:0] conv_mac_63;
assign conv_mac_63 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]) +
	( 2'sd 1) * $signed(input_fmap_8[15:0]) +
	( 2'sd 1) * $signed(input_fmap_9[15:0]) +
	( 2'sd 1) * $signed(input_fmap_10[15:0]) +
	( 3'sd 2) * $signed(input_fmap_12[15:0]) +
	( 2'sd 1) * $signed(input_fmap_13[15:0]) +
	( 3'sd 2) * $signed(input_fmap_14[15:0]) +
	( 2'sd 1) * $signed(input_fmap_15[15:0]) +
	( 2'sd 1) * $signed(input_fmap_16[15:0]) +
	( 3'sd 2) * $signed(input_fmap_19[15:0]) +
	( 2'sd 1) * $signed(input_fmap_20[15:0]) +
	( 2'sd 1) * $signed(input_fmap_21[15:0]) +
	( 2'sd 1) * $signed(input_fmap_22[15:0]) +
	( 3'sd 2) * $signed(input_fmap_23[15:0]) +
	( 3'sd 2) * $signed(input_fmap_24[15:0]) +
	( 2'sd 1) * $signed(input_fmap_25[15:0]) +
	( 2'sd 1) * $signed(input_fmap_27[15:0]) +
	( 3'sd 2) * $signed(input_fmap_29[15:0]) +
	( 3'sd 2) * $signed(input_fmap_30[15:0]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 2'd1;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1 + 2'd1;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 3'd2;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4 + 3'd2;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5 + 2'd1;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6 + 2'd1;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7 + 3'd2;
logic [31:0] bias_add_8;
assign bias_add_8 = conv_mac_8 + 2'd1;
logic [31:0] bias_add_9;
assign bias_add_9 = conv_mac_9;
logic [31:0] bias_add_10;
assign bias_add_10 = conv_mac_10 + 2'd1;
logic [31:0] bias_add_11;
assign bias_add_11 = conv_mac_11 + 3'd2;
logic [31:0] bias_add_12;
assign bias_add_12 = conv_mac_12;
logic [31:0] bias_add_13;
assign bias_add_13 = conv_mac_13 + 2'd1;
logic [31:0] bias_add_14;
assign bias_add_14 = conv_mac_14 + 3'd2;
logic [31:0] bias_add_15;
assign bias_add_15 = conv_mac_15 + 3'd2;
logic [31:0] bias_add_16;
assign bias_add_16 = conv_mac_16 + 2'd1;
logic [31:0] bias_add_17;
assign bias_add_17 = conv_mac_17 + 2'd1;
logic [31:0] bias_add_18;
assign bias_add_18 = conv_mac_18;
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
assign bias_add_25 = conv_mac_25 + 3'd2;
logic [31:0] bias_add_26;
assign bias_add_26 = conv_mac_26 + 2'd1;
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
assign bias_add_32 = conv_mac_32;
logic [31:0] bias_add_33;
assign bias_add_33 = conv_mac_33 + 2'd1;
logic [31:0] bias_add_34;
assign bias_add_34 = conv_mac_34 + 3'd2;
logic [31:0] bias_add_35;
assign bias_add_35 = conv_mac_35 + 2'd1;
logic [31:0] bias_add_36;
assign bias_add_36 = conv_mac_36 + 2'd1;
logic [31:0] bias_add_37;
assign bias_add_37 = conv_mac_37;
logic [31:0] bias_add_38;
assign bias_add_38 = conv_mac_38 + 2'd1;
logic [31:0] bias_add_39;
assign bias_add_39 = conv_mac_39 + 3'd2;
logic [31:0] bias_add_40;
assign bias_add_40 = conv_mac_40 + 2'd1;
logic [31:0] bias_add_41;
assign bias_add_41 = conv_mac_41 + 2'd1;
logic [31:0] bias_add_42;
assign bias_add_42 = conv_mac_42 + 3'd2;
logic [31:0] bias_add_43;
assign bias_add_43 = conv_mac_43;
logic [31:0] bias_add_44;
assign bias_add_44 = conv_mac_44 + 3'd2;
logic [31:0] bias_add_45;
assign bias_add_45 = conv_mac_45;
logic [31:0] bias_add_46;
assign bias_add_46 = conv_mac_46 + 2'd1;
logic [31:0] bias_add_47;
assign bias_add_47 = conv_mac_47 + 2'd1;
logic [31:0] bias_add_48;
assign bias_add_48 = conv_mac_48;
logic [31:0] bias_add_49;
assign bias_add_49 = conv_mac_49 + 2'd1;
logic [31:0] bias_add_50;
assign bias_add_50 = conv_mac_50;
logic [31:0] bias_add_51;
assign bias_add_51 = conv_mac_51 + 2'd1;
logic [31:0] bias_add_52;
assign bias_add_52 = conv_mac_52;
logic [31:0] bias_add_53;
assign bias_add_53 = conv_mac_53;
logic [31:0] bias_add_54;
assign bias_add_54 = conv_mac_54;
logic [31:0] bias_add_55;
assign bias_add_55 = conv_mac_55;
logic [31:0] bias_add_56;
assign bias_add_56 = conv_mac_56 + 3'd2;
logic [31:0] bias_add_57;
assign bias_add_57 = conv_mac_57;
logic [31:0] bias_add_58;
assign bias_add_58 = conv_mac_58;
logic [31:0] bias_add_59;
assign bias_add_59 = conv_mac_59 + 3'd2;
logic [31:0] bias_add_60;
assign bias_add_60 = conv_mac_60;
logic [31:0] bias_add_61;
assign bias_add_61 = conv_mac_61;
logic [31:0] bias_add_62;
assign bias_add_62 = conv_mac_62 + 3'd2;
logic [31:0] bias_add_63;
assign bias_add_63 = conv_mac_63 + 3'd2;

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
