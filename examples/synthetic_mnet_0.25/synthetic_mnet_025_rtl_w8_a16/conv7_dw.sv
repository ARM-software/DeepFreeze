module conv7_dw (
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

logic signed [31:0] dw_conv_mac_0;
assign dw_conv_mac_0 = 
	 8'sd 92 * $signed(input_fmap_0[15:0]) +
	 8'sd 113 * $signed(input_fmap_0[31:16]) +
	 5'sd 11 * $signed(input_fmap_0[47:32]) +
	 8'sd 75 * $signed(input_fmap_0[63:48]) +
	 4'sd 6 * $signed(input_fmap_0[79:64]) +
	 8'sd 113 * $signed(input_fmap_0[95:80]) +
	 8'sd 120 * $signed(input_fmap_0[111:96]) +
	 6'sd 28 * $signed(input_fmap_0[127:112]) +
	 8'sd 73 * $signed(input_fmap_0[143:128]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 6'sd 21 * $signed(input_fmap_1[15:0]) +
	 8'sd 125 * $signed(input_fmap_1[31:16]) +
	 7'sd 59 * $signed(input_fmap_1[47:32]) +
	 8'sd 92 * $signed(input_fmap_1[63:48]) +
	 5'sd 14 * $signed(input_fmap_1[79:64]) +
	 8'sd 114 * $signed(input_fmap_1[95:80]) +
	 7'sd 50 * $signed(input_fmap_1[111:96]) +
	 8'sd 81 * $signed(input_fmap_1[127:112]) +
	 7'sd 52 * $signed(input_fmap_1[143:128]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 6'sd 31 * $signed(input_fmap_2[15:0]) +
	 5'sd 14 * $signed(input_fmap_2[31:16]) +
	 5'sd 11 * $signed(input_fmap_2[47:32]) +
	 7'sd 33 * $signed(input_fmap_2[63:48]) +
	 8'sd 120 * $signed(input_fmap_2[79:64]) +
	 7'sd 42 * $signed(input_fmap_2[95:80]) +
	 7'sd 47 * $signed(input_fmap_2[111:96]) +
	 8'sd 126 * $signed(input_fmap_2[127:112]) +
	 8'sd 124 * $signed(input_fmap_2[143:128]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 7'sd 39 * $signed(input_fmap_3[15:0]) +
	 8'sd 92 * $signed(input_fmap_3[31:16]) +
	 8'sd 78 * $signed(input_fmap_3[47:32]) +
	 7'sd 42 * $signed(input_fmap_3[63:48]) +
	 8'sd 115 * $signed(input_fmap_3[79:64]) +
	 8'sd 105 * $signed(input_fmap_3[95:80]) +
	 7'sd 47 * $signed(input_fmap_3[111:96]) +
	 8'sd 101 * $signed(input_fmap_3[127:112]) +
	 4'sd 5 * $signed(input_fmap_3[143:128]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 8'sd 117 * $signed(input_fmap_4[15:0]) +
	 8'sd 124 * $signed(input_fmap_4[31:16]) +
	 2'sd 1 * $signed(input_fmap_4[47:32]) +
	 7'sd 63 * $signed(input_fmap_4[63:48]) +
	 8'sd 90 * $signed(input_fmap_4[79:64]) +
	 8'sd 72 * $signed(input_fmap_4[95:80]) +
	 6'sd 30 * $signed(input_fmap_4[111:96]) +
	 8'sd 90 * $signed(input_fmap_4[127:112]) +
	 8'sd 84 * $signed(input_fmap_4[143:128]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 7'sd 41 * $signed(input_fmap_5[15:0]) +
	 8'sd 83 * $signed(input_fmap_5[31:16]) +
	 8'sd 80 * $signed(input_fmap_5[47:32]) +
	 7'sd 42 * $signed(input_fmap_5[63:48]) +
	 5'sd 14 * $signed(input_fmap_5[79:64]) +
	 7'sd 48 * $signed(input_fmap_5[95:80]) +
	 6'sd 31 * $signed(input_fmap_5[111:96]) +
	 8'sd 122 * $signed(input_fmap_5[127:112]) +
	 7'sd 49 * $signed(input_fmap_5[143:128]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 5'sd 15 * $signed(input_fmap_6[15:0]) +
	 8'sd 71 * $signed(input_fmap_6[31:16]) +
	 6'sd 25 * $signed(input_fmap_6[47:32]) +
	 8'sd 98 * $signed(input_fmap_6[63:48]) +
	 4'sd 4 * $signed(input_fmap_6[79:64]) +
	 7'sd 53 * $signed(input_fmap_6[95:80]) +
	 8'sd 106 * $signed(input_fmap_6[111:96]) +
	 8'sd 100 * $signed(input_fmap_6[127:112]) +
	 6'sd 25 * $signed(input_fmap_6[143:128]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 7'sd 54 * $signed(input_fmap_7[15:0]) +
	 7'sd 42 * $signed(input_fmap_7[31:16]) +
	 7'sd 34 * $signed(input_fmap_7[47:32]) +
	 7'sd 58 * $signed(input_fmap_7[63:48]) +
	 6'sd 24 * $signed(input_fmap_7[79:64]) +
	 7'sd 41 * $signed(input_fmap_7[95:80]) +
	 6'sd 24 * $signed(input_fmap_7[111:96]) +
	 7'sd 42 * $signed(input_fmap_7[127:112]) +
	 4'sd 7 * $signed(input_fmap_7[143:128]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 6'sd 17 * $signed(input_fmap_8[15:0]) +
	 6'sd 22 * $signed(input_fmap_8[31:16]) +
	 8'sd 91 * $signed(input_fmap_8[47:32]) +
	 8'sd 78 * $signed(input_fmap_8[63:48]) +
	 7'sd 63 * $signed(input_fmap_8[79:64]) +
	 6'sd 18 * $signed(input_fmap_8[95:80]) +
	 7'sd 41 * $signed(input_fmap_8[111:96]) +
	 8'sd 104 * $signed(input_fmap_8[127:112]) +
	 6'sd 19 * $signed(input_fmap_8[143:128]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 8'sd 88 * $signed(input_fmap_9[15:0]) +
	 7'sd 51 * $signed(input_fmap_9[31:16]) +
	 8'sd 127 * $signed(input_fmap_9[47:32]) +
	 8'sd 111 * $signed(input_fmap_9[63:48]) +
	 8'sd 115 * $signed(input_fmap_9[79:64]) +
	 8'sd 117 * $signed(input_fmap_9[95:80]) +
	 8'sd 68 * $signed(input_fmap_9[111:96]) +
	 8'sd 85 * $signed(input_fmap_9[127:112]) +
	 8'sd 85 * $signed(input_fmap_9[143:128]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 8'sd 111 * $signed(input_fmap_10[15:0]) +
	 8'sd 126 * $signed(input_fmap_10[31:16]) +
	 8'sd 110 * $signed(input_fmap_10[47:32]) +
	 7'sd 57 * $signed(input_fmap_10[63:48]) +
	 8'sd 72 * $signed(input_fmap_10[79:64]) +
	 7'sd 50 * $signed(input_fmap_10[95:80]) +
	 7'sd 49 * $signed(input_fmap_10[111:96]) +
	 8'sd 83 * $signed(input_fmap_10[127:112]) +
	 7'sd 51 * $signed(input_fmap_10[143:128]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 7'sd 36 * $signed(input_fmap_11[15:0]) +
	 8'sd 89 * $signed(input_fmap_11[31:16]) +
	 7'sd 59 * $signed(input_fmap_11[47:32]) +
	 8'sd 72 * $signed(input_fmap_11[63:48]) +
	 2'sd 1 * $signed(input_fmap_11[79:64]) +
	 8'sd 127 * $signed(input_fmap_11[95:80]) +
	 8'sd 100 * $signed(input_fmap_11[111:96]) +
	 8'sd 117 * $signed(input_fmap_11[127:112]) +
	 5'sd 13 * $signed(input_fmap_11[143:128]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 8'sd 81 * $signed(input_fmap_12[15:0]) +
	 8'sd 121 * $signed(input_fmap_12[31:16]) +
	 5'sd 11 * $signed(input_fmap_12[47:32]) +
	 7'sd 60 * $signed(input_fmap_12[63:48]) +
	 7'sd 52 * $signed(input_fmap_12[79:64]) +
	 5'sd 11 * $signed(input_fmap_12[95:80]) +
	 8'sd 118 * $signed(input_fmap_12[111:96]) +
	 8'sd 71 * $signed(input_fmap_12[127:112]) +
	 8'sd 73 * $signed(input_fmap_12[143:128]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 2'sd 1 * $signed(input_fmap_13[15:0]) +
	 8'sd 104 * $signed(input_fmap_13[31:16]) +
	 6'sd 24 * $signed(input_fmap_13[47:32]) +
	 7'sd 58 * $signed(input_fmap_13[63:48]) +
	 8'sd 107 * $signed(input_fmap_13[79:64]) +
	 8'sd 88 * $signed(input_fmap_13[95:80]) +
	 7'sd 63 * $signed(input_fmap_13[111:96]) +
	 8'sd 87 * $signed(input_fmap_13[127:112]) +
	 8'sd 76 * $signed(input_fmap_13[143:128]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 6'sd 20 * $signed(input_fmap_14[15:0]) +
	 8'sd 82 * $signed(input_fmap_14[31:16]) +
	 4'sd 4 * $signed(input_fmap_14[47:32]) +
	 4'sd 4 * $signed(input_fmap_14[63:48]) +
	 7'sd 46 * $signed(input_fmap_14[79:64]) +
	 6'sd 29 * $signed(input_fmap_14[95:80]) +
	 8'sd 70 * $signed(input_fmap_14[111:96]) +
	 8'sd 112 * $signed(input_fmap_14[127:112]) +
	 5'sd 14 * $signed(input_fmap_14[143:128]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 7'sd 63 * $signed(input_fmap_15[15:0]) +
	 7'sd 45 * $signed(input_fmap_15[31:16]) +
	 7'sd 32 * $signed(input_fmap_15[47:32]) +
	 8'sd 93 * $signed(input_fmap_15[63:48]) +
	 8'sd 87 * $signed(input_fmap_15[79:64]) +
	 5'sd 15 * $signed(input_fmap_15[95:80]) +
	 7'sd 40 * $signed(input_fmap_15[111:96]) +
	 7'sd 50 * $signed(input_fmap_15[127:112]) +
	 7'sd 33 * $signed(input_fmap_15[143:128]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 8'sd 79 * $signed(input_fmap_16[15:0]) +
	 7'sd 55 * $signed(input_fmap_16[31:16]) +
	 7'sd 39 * $signed(input_fmap_16[47:32]) +
	 8'sd 112 * $signed(input_fmap_16[63:48]) +
	 6'sd 28 * $signed(input_fmap_16[79:64]) +
	 2'sd 1 * $signed(input_fmap_16[95:80]) +
	 7'sd 37 * $signed(input_fmap_16[111:96]) +
	 4'sd 6 * $signed(input_fmap_16[127:112]) +
	 6'sd 20 * $signed(input_fmap_16[143:128]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 8'sd 111 * $signed(input_fmap_17[15:0]) +
	 8'sd 112 * $signed(input_fmap_17[31:16]) +
	 5'sd 14 * $signed(input_fmap_17[47:32]) +
	 8'sd 120 * $signed(input_fmap_17[63:48]) +
	 8'sd 73 * $signed(input_fmap_17[79:64]) +
	 7'sd 37 * $signed(input_fmap_17[95:80]) +
	 8'sd 119 * $signed(input_fmap_17[111:96]) +
	 7'sd 34 * $signed(input_fmap_17[127:112]) +
	 8'sd 72 * $signed(input_fmap_17[143:128]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 8'sd 85 * $signed(input_fmap_18[15:0]) +
	 8'sd 87 * $signed(input_fmap_18[31:16]) +
	 7'sd 61 * $signed(input_fmap_18[47:32]) +
	 7'sd 36 * $signed(input_fmap_18[63:48]) +
	 8'sd 111 * $signed(input_fmap_18[79:64]) +
	 5'sd 8 * $signed(input_fmap_18[95:80]) +
	 8'sd 66 * $signed(input_fmap_18[111:96]) +
	 7'sd 47 * $signed(input_fmap_18[127:112]) +
	 8'sd 76 * $signed(input_fmap_18[143:128]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 7'sd 34 * $signed(input_fmap_19[15:0]) +
	 8'sd 110 * $signed(input_fmap_19[31:16]) +
	 7'sd 34 * $signed(input_fmap_19[47:32]) +
	 6'sd 21 * $signed(input_fmap_19[63:48]) +
	 8'sd 123 * $signed(input_fmap_19[79:64]) +
	 7'sd 47 * $signed(input_fmap_19[95:80]) +
	 3'sd 2 * $signed(input_fmap_19[111:96]) +
	 7'sd 46 * $signed(input_fmap_19[127:112]) +
	 6'sd 28 * $signed(input_fmap_19[143:128]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 6'sd 19 * $signed(input_fmap_20[15:0]) +
	 7'sd 57 * $signed(input_fmap_20[31:16]) +
	 2'sd 1 * $signed(input_fmap_20[47:32]) +
	 8'sd 65 * $signed(input_fmap_20[63:48]) +
	 6'sd 28 * $signed(input_fmap_20[79:64]) +
	 7'sd 58 * $signed(input_fmap_20[95:80]) +
	 7'sd 43 * $signed(input_fmap_20[111:96]) +
	 8'sd 84 * $signed(input_fmap_20[127:112]) +
	 8'sd 69 * $signed(input_fmap_20[143:128]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 5'sd 9 * $signed(input_fmap_21[15:0]) +
	 8'sd 75 * $signed(input_fmap_21[31:16]) +
	 8'sd 106 * $signed(input_fmap_21[47:32]) +
	 8'sd 76 * $signed(input_fmap_21[63:48]) +
	 8'sd 124 * $signed(input_fmap_21[79:64]) +
	 5'sd 15 * $signed(input_fmap_21[95:80]) +
	 7'sd 34 * $signed(input_fmap_21[111:96]) +
	 6'sd 22 * $signed(input_fmap_21[127:112]) +
	 8'sd 90 * $signed(input_fmap_21[143:128]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 8'sd 91 * $signed(input_fmap_22[15:0]) +
	 7'sd 44 * $signed(input_fmap_22[31:16]) +
	 6'sd 24 * $signed(input_fmap_22[47:32]) +
	 8'sd 110 * $signed(input_fmap_22[63:48]) +
	 6'sd 23 * $signed(input_fmap_22[79:64]) +
	 7'sd 38 * $signed(input_fmap_22[95:80]) +
	 8'sd 118 * $signed(input_fmap_22[111:96]) +
	 8'sd 92 * $signed(input_fmap_22[127:112]) +
	 7'sd 50 * $signed(input_fmap_22[143:128]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 7'sd 52 * $signed(input_fmap_23[15:0]) +
	 7'sd 34 * $signed(input_fmap_23[31:16]) +
	 6'sd 22 * $signed(input_fmap_23[47:32]) +
	 8'sd 85 * $signed(input_fmap_23[63:48]) +
	 8'sd 93 * $signed(input_fmap_23[79:64]) +
	 7'sd 59 * $signed(input_fmap_23[95:80]) +
	 8'sd 115 * $signed(input_fmap_23[111:96]) +
	 7'sd 57 * $signed(input_fmap_23[127:112]) +
	 8'sd 69 * $signed(input_fmap_23[143:128]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 8'sd 108 * $signed(input_fmap_24[15:0]) +
	 5'sd 14 * $signed(input_fmap_24[31:16]) +
	 7'sd 49 * $signed(input_fmap_24[47:32]) +
	 7'sd 52 * $signed(input_fmap_24[63:48]) +
	 8'sd 74 * $signed(input_fmap_24[79:64]) +
	 8'sd 114 * $signed(input_fmap_24[95:80]) +
	 8'sd 78 * $signed(input_fmap_24[111:96]) +
	 6'sd 31 * $signed(input_fmap_24[127:112]) +
	 6'sd 16 * $signed(input_fmap_24[143:128]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 6'sd 16 * $signed(input_fmap_25[15:0]) +
	 8'sd 94 * $signed(input_fmap_25[31:16]) +
	 5'sd 13 * $signed(input_fmap_25[47:32]) +
	 8'sd 70 * $signed(input_fmap_25[63:48]) +
	 8'sd 115 * $signed(input_fmap_25[79:64]) +
	 8'sd 69 * $signed(input_fmap_25[95:80]) +
	 8'sd 117 * $signed(input_fmap_25[111:96]) +
	 7'sd 45 * $signed(input_fmap_25[127:112]) +
	 8'sd 120 * $signed(input_fmap_25[143:128]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 8'sd 84 * $signed(input_fmap_26[15:0]) +
	 7'sd 61 * $signed(input_fmap_26[31:16]) +
	 6'sd 25 * $signed(input_fmap_26[47:32]) +
	 8'sd 101 * $signed(input_fmap_26[63:48]) +
	 7'sd 44 * $signed(input_fmap_26[79:64]) +
	 7'sd 51 * $signed(input_fmap_26[95:80]) +
	 7'sd 54 * $signed(input_fmap_26[111:96]) +
	 6'sd 19 * $signed(input_fmap_26[127:112]) +
	 8'sd 106 * $signed(input_fmap_26[143:128]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 8'sd 83 * $signed(input_fmap_27[15:0]) +
	 7'sd 40 * $signed(input_fmap_27[31:16]) +
	 8'sd 105 * $signed(input_fmap_27[47:32]) +
	 6'sd 24 * $signed(input_fmap_27[63:48]) +
	 8'sd 64 * $signed(input_fmap_27[79:64]) +
	 8'sd 88 * $signed(input_fmap_27[95:80]) +
	 8'sd 123 * $signed(input_fmap_27[111:96]) +
	 6'sd 16 * $signed(input_fmap_27[127:112]) +
	 5'sd 8 * $signed(input_fmap_27[143:128]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 8'sd 74 * $signed(input_fmap_28[15:0]) +
	 8'sd 93 * $signed(input_fmap_28[31:16]) +
	 7'sd 60 * $signed(input_fmap_28[47:32]) +
	 7'sd 60 * $signed(input_fmap_28[63:48]) +
	 8'sd 86 * $signed(input_fmap_28[79:64]) +
	 7'sd 33 * $signed(input_fmap_28[95:80]) +
	 8'sd 73 * $signed(input_fmap_28[111:96]) +
	 8'sd 77 * $signed(input_fmap_28[127:112]) +
	 7'sd 60 * $signed(input_fmap_28[143:128]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 8'sd 83 * $signed(input_fmap_29[15:0]) +
	 8'sd 72 * $signed(input_fmap_29[31:16]) +
	 8'sd 124 * $signed(input_fmap_29[47:32]) +
	 8'sd 116 * $signed(input_fmap_29[63:48]) +
	 8'sd 95 * $signed(input_fmap_29[79:64]) +
	 8'sd 101 * $signed(input_fmap_29[95:80]) +
	 6'sd 17 * $signed(input_fmap_29[111:96]) +
	 7'sd 32 * $signed(input_fmap_29[127:112]) +
	 8'sd 124 * $signed(input_fmap_29[143:128]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 8'sd 121 * $signed(input_fmap_30[15:0]) +
	 8'sd 68 * $signed(input_fmap_30[31:16]) +
	 6'sd 23 * $signed(input_fmap_30[47:32]) +
	 8'sd 99 * $signed(input_fmap_30[63:48]) +
	 7'sd 53 * $signed(input_fmap_30[79:64]) +
	 8'sd 110 * $signed(input_fmap_30[95:80]) +
	 8'sd 116 * $signed(input_fmap_30[111:96]) +
	 5'sd 8 * $signed(input_fmap_30[127:112]) +
	 8'sd 124 * $signed(input_fmap_30[143:128]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 6'sd 23 * $signed(input_fmap_31[15:0]) +
	 8'sd 113 * $signed(input_fmap_31[31:16]) +
	 8'sd 87 * $signed(input_fmap_31[47:32]) +
	 7'sd 58 * $signed(input_fmap_31[63:48]) +
	 7'sd 48 * $signed(input_fmap_31[79:64]) +
	 8'sd 123 * $signed(input_fmap_31[95:80]) +
	 7'sd 36 * $signed(input_fmap_31[111:96]) +
	 8'sd 125 * $signed(input_fmap_31[127:112]) +
	 7'sd 40 * $signed(input_fmap_31[143:128]);

logic signed [31:0] dw_conv_mac_32;
assign dw_conv_mac_32 = 
	 8'sd 71 * $signed(input_fmap_32[15:0]) +
	 8'sd 113 * $signed(input_fmap_32[31:16]) +
	 7'sd 42 * $signed(input_fmap_32[47:32]) +
	 7'sd 47 * $signed(input_fmap_32[63:48]) +
	 3'sd 3 * $signed(input_fmap_32[79:64]) +
	 8'sd 121 * $signed(input_fmap_32[95:80]) +
	 6'sd 18 * $signed(input_fmap_32[111:96]) +
	 8'sd 72 * $signed(input_fmap_32[127:112]) +
	 8'sd 87 * $signed(input_fmap_32[143:128]);

logic signed [31:0] dw_conv_mac_33;
assign dw_conv_mac_33 = 
	 8'sd 79 * $signed(input_fmap_33[15:0]) +
	 8'sd 100 * $signed(input_fmap_33[31:16]) +
	 7'sd 53 * $signed(input_fmap_33[47:32]) +
	 6'sd 25 * $signed(input_fmap_33[63:48]) +
	 8'sd 125 * $signed(input_fmap_33[79:64]) +
	 8'sd 121 * $signed(input_fmap_33[95:80]) +
	 3'sd 2 * $signed(input_fmap_33[111:96]) +
	 7'sd 48 * $signed(input_fmap_33[127:112]) +
	 8'sd 77 * $signed(input_fmap_33[143:128]);

logic signed [31:0] dw_conv_mac_34;
assign dw_conv_mac_34 = 
	 3'sd 3 * $signed(input_fmap_34[15:0]) +
	 8'sd 79 * $signed(input_fmap_34[31:16]) +
	 7'sd 56 * $signed(input_fmap_34[47:32]) +
	 8'sd 120 * $signed(input_fmap_34[63:48]) +
	 8'sd 108 * $signed(input_fmap_34[79:64]) +
	 8'sd 79 * $signed(input_fmap_34[95:80]) +
	 8'sd 86 * $signed(input_fmap_34[111:96]) +
	 8'sd 80 * $signed(input_fmap_34[127:112]) +
	 8'sd 90 * $signed(input_fmap_34[143:128]);

logic signed [31:0] dw_conv_mac_35;
assign dw_conv_mac_35 = 
	 7'sd 57 * $signed(input_fmap_35[15:0]) +
	 5'sd 8 * $signed(input_fmap_35[31:16]) +
	 5'sd 9 * $signed(input_fmap_35[47:32]) +
	 6'sd 21 * $signed(input_fmap_35[63:48]) +
	 3'sd 3 * $signed(input_fmap_35[79:64]) +
	 8'sd 64 * $signed(input_fmap_35[95:80]) +
	 8'sd 87 * $signed(input_fmap_35[111:96]) +
	 7'sd 58 * $signed(input_fmap_35[127:112]) +
	 8'sd 98 * $signed(input_fmap_35[143:128]);

logic signed [31:0] dw_conv_mac_36;
assign dw_conv_mac_36 = 
	 8'sd 78 * $signed(input_fmap_36[15:0]) +
	 7'sd 44 * $signed(input_fmap_36[31:16]) +
	 8'sd 91 * $signed(input_fmap_36[47:32]) +
	 6'sd 26 * $signed(input_fmap_36[63:48]) +
	 8'sd 113 * $signed(input_fmap_36[79:64]) +
	 5'sd 14 * $signed(input_fmap_36[95:80]) +
	 8'sd 120 * $signed(input_fmap_36[111:96]) +
	 5'sd 14 * $signed(input_fmap_36[127:112]) +
	 8'sd 67 * $signed(input_fmap_36[143:128]);

logic signed [31:0] dw_conv_mac_37;
assign dw_conv_mac_37 = 
	 4'sd 7 * $signed(input_fmap_37[15:0]) +
	 8'sd 95 * $signed(input_fmap_37[31:16]) +
	 7'sd 43 * $signed(input_fmap_37[47:32]) +
	 6'sd 17 * $signed(input_fmap_37[63:48]) +
	 8'sd 86 * $signed(input_fmap_37[79:64]) +
	 8'sd 96 * $signed(input_fmap_37[95:80]) +
	 8'sd 72 * $signed(input_fmap_37[111:96]) +
	 7'sd 36 * $signed(input_fmap_37[127:112]) +
	 8'sd 111 * $signed(input_fmap_37[143:128]);

logic signed [31:0] dw_conv_mac_38;
assign dw_conv_mac_38 = 
	 5'sd 8 * $signed(input_fmap_38[15:0]) +
	 8'sd 108 * $signed(input_fmap_38[31:16]) +
	 8'sd 82 * $signed(input_fmap_38[47:32]) +
	 8'sd 107 * $signed(input_fmap_38[63:48]) +
	 7'sd 47 * $signed(input_fmap_38[79:64]) +
	 8'sd 98 * $signed(input_fmap_38[95:80]) +
	 7'sd 41 * $signed(input_fmap_38[111:96]) +
	 8'sd 84 * $signed(input_fmap_38[127:112]) +
	 8'sd 76 * $signed(input_fmap_38[143:128]);

logic signed [31:0] dw_conv_mac_39;
assign dw_conv_mac_39 = 
	 7'sd 58 * $signed(input_fmap_39[15:0]) +
	 7'sd 32 * $signed(input_fmap_39[31:16]) +
	 3'sd 3 * $signed(input_fmap_39[47:32]) +
	 7'sd 55 * $signed(input_fmap_39[63:48]) +
	 8'sd 70 * $signed(input_fmap_39[79:64]) +
	 8'sd 113 * $signed(input_fmap_39[95:80]) +
	 7'sd 50 * $signed(input_fmap_39[111:96]) +
	 7'sd 59 * $signed(input_fmap_39[127:112]) +
	 5'sd 14 * $signed(input_fmap_39[143:128]);

logic signed [31:0] dw_conv_mac_40;
assign dw_conv_mac_40 = 
	 7'sd 47 * $signed(input_fmap_40[15:0]) +
	 8'sd 112 * $signed(input_fmap_40[31:16]) +
	 7'sd 47 * $signed(input_fmap_40[47:32]) +
	 7'sd 40 * $signed(input_fmap_40[63:48]) +
	 6'sd 27 * $signed(input_fmap_40[79:64]) +
	 3'sd 3 * $signed(input_fmap_40[95:80]) +
	 5'sd 14 * $signed(input_fmap_40[111:96]) +
	 7'sd 54 * $signed(input_fmap_40[127:112]) +
	 6'sd 31 * $signed(input_fmap_40[143:128]);

logic signed [31:0] dw_conv_mac_41;
assign dw_conv_mac_41 = 
	 3'sd 3 * $signed(input_fmap_41[15:0]) +
	 8'sd 112 * $signed(input_fmap_41[31:16]) +
	 7'sd 48 * $signed(input_fmap_41[47:32]) +
	 8'sd 120 * $signed(input_fmap_41[63:48]) +
	 8'sd 113 * $signed(input_fmap_41[79:64]) +
	 7'sd 59 * $signed(input_fmap_41[95:80]) +
	 7'sd 56 * $signed(input_fmap_41[111:96]) +
	 7'sd 56 * $signed(input_fmap_41[127:112]) +
	 8'sd 123 * $signed(input_fmap_41[143:128]);

logic signed [31:0] dw_conv_mac_42;
assign dw_conv_mac_42 = 
	 6'sd 27 * $signed(input_fmap_42[15:0]) +
	 5'sd 12 * $signed(input_fmap_42[31:16]) +
	 8'sd 85 * $signed(input_fmap_42[47:32]) +
	 5'sd 14 * $signed(input_fmap_42[63:48]) +
	 8'sd 97 * $signed(input_fmap_42[79:64]) +
	 7'sd 63 * $signed(input_fmap_42[95:80]) +
	 8'sd 91 * $signed(input_fmap_42[111:96]) +
	 8'sd 121 * $signed(input_fmap_42[127:112]) +
	 7'sd 62 * $signed(input_fmap_42[143:128]);

logic signed [31:0] dw_conv_mac_43;
assign dw_conv_mac_43 = 
	 7'sd 59 * $signed(input_fmap_43[15:0]) +
	 8'sd 120 * $signed(input_fmap_43[31:16]) +
	 8'sd 107 * $signed(input_fmap_43[47:32]) +
	 8'sd 64 * $signed(input_fmap_43[63:48]) +
	 5'sd 13 * $signed(input_fmap_43[79:64]) +
	 8'sd 107 * $signed(input_fmap_43[95:80]) +
	 8'sd 84 * $signed(input_fmap_43[111:96]) +
	 8'sd 118 * $signed(input_fmap_43[127:112]) +
	 8'sd 93 * $signed(input_fmap_43[143:128]);

logic signed [31:0] dw_conv_mac_44;
assign dw_conv_mac_44 = 
	 8'sd 77 * $signed(input_fmap_44[15:0]) +
	 8'sd 64 * $signed(input_fmap_44[31:16]) +
	 7'sd 47 * $signed(input_fmap_44[47:32]) +
	 8'sd 70 * $signed(input_fmap_44[63:48]) +
	 8'sd 97 * $signed(input_fmap_44[79:64]) +
	 5'sd 10 * $signed(input_fmap_44[95:80]) +
	 6'sd 23 * $signed(input_fmap_44[111:96]) +
	 8'sd 123 * $signed(input_fmap_44[127:112]) +
	 8'sd 67 * $signed(input_fmap_44[143:128]);

logic signed [31:0] dw_conv_mac_45;
assign dw_conv_mac_45 = 
	 8'sd 100 * $signed(input_fmap_45[15:0]) +
	 6'sd 31 * $signed(input_fmap_45[31:16]) +
	 8'sd 86 * $signed(input_fmap_45[63:48]) +
	 8'sd 79 * $signed(input_fmap_45[79:64]) +
	 8'sd 110 * $signed(input_fmap_45[95:80]) +
	 8'sd 118 * $signed(input_fmap_45[111:96]) +
	 6'sd 22 * $signed(input_fmap_45[127:112]) +
	 5'sd 11 * $signed(input_fmap_45[143:128]);

logic signed [31:0] dw_conv_mac_46;
assign dw_conv_mac_46 = 
	 7'sd 46 * $signed(input_fmap_46[15:0]) +
	 8'sd 116 * $signed(input_fmap_46[31:16]) +
	 8'sd 79 * $signed(input_fmap_46[47:32]) +
	 8'sd 124 * $signed(input_fmap_46[63:48]) +
	 8'sd 122 * $signed(input_fmap_46[79:64]) +
	 8'sd 69 * $signed(input_fmap_46[95:80]) +
	 8'sd 120 * $signed(input_fmap_46[111:96]) +
	 7'sd 58 * $signed(input_fmap_46[127:112]) +
	 7'sd 40 * $signed(input_fmap_46[143:128]);

logic signed [31:0] dw_conv_mac_47;
assign dw_conv_mac_47 = 
	 8'sd 71 * $signed(input_fmap_47[15:0]) +
	 8'sd 122 * $signed(input_fmap_47[31:16]) +
	 7'sd 36 * $signed(input_fmap_47[47:32]) +
	 6'sd 19 * $signed(input_fmap_47[63:48]) +
	 6'sd 28 * $signed(input_fmap_47[79:64]) +
	 7'sd 56 * $signed(input_fmap_47[95:80]) +
	 8'sd 105 * $signed(input_fmap_47[111:96]) +
	 8'sd 74 * $signed(input_fmap_47[127:112]) +
	 7'sd 62 * $signed(input_fmap_47[143:128]);

logic signed [31:0] dw_conv_mac_48;
assign dw_conv_mac_48 = 
	 8'sd 112 * $signed(input_fmap_48[15:0]) +
	 8'sd 107 * $signed(input_fmap_48[31:16]) +
	 5'sd 8 * $signed(input_fmap_48[47:32]) +
	 8'sd 64 * $signed(input_fmap_48[63:48]) +
	 8'sd 118 * $signed(input_fmap_48[79:64]) +
	 8'sd 97 * $signed(input_fmap_48[95:80]) +
	 5'sd 11 * $signed(input_fmap_48[111:96]) +
	 5'sd 11 * $signed(input_fmap_48[127:112]) +
	 7'sd 63 * $signed(input_fmap_48[143:128]);

logic signed [31:0] dw_conv_mac_49;
assign dw_conv_mac_49 = 
	 8'sd 87 * $signed(input_fmap_49[15:0]) +
	 8'sd 97 * $signed(input_fmap_49[31:16]) +
	 8'sd 101 * $signed(input_fmap_49[47:32]) +
	 8'sd 82 * $signed(input_fmap_49[63:48]) +
	 6'sd 20 * $signed(input_fmap_49[79:64]) +
	 8'sd 97 * $signed(input_fmap_49[95:80]) +
	 8'sd 79 * $signed(input_fmap_49[111:96]) +
	 7'sd 43 * $signed(input_fmap_49[127:112]) +
	 8'sd 113 * $signed(input_fmap_49[143:128]);

logic signed [31:0] dw_conv_mac_50;
assign dw_conv_mac_50 = 
	 4'sd 7 * $signed(input_fmap_50[15:0]) +
	 8'sd 96 * $signed(input_fmap_50[31:16]) +
	 5'sd 15 * $signed(input_fmap_50[47:32]) +
	 8'sd 107 * $signed(input_fmap_50[63:48]) +
	 7'sd 48 * $signed(input_fmap_50[79:64]) +
	 8'sd 69 * $signed(input_fmap_50[95:80]) +
	 6'sd 20 * $signed(input_fmap_50[111:96]) +
	 6'sd 30 * $signed(input_fmap_50[127:112]) +
	 6'sd 19 * $signed(input_fmap_50[143:128]);

logic signed [31:0] dw_conv_mac_51;
assign dw_conv_mac_51 = 
	 8'sd 72 * $signed(input_fmap_51[15:0]) +
	 8'sd 106 * $signed(input_fmap_51[31:16]) +
	 7'sd 33 * $signed(input_fmap_51[47:32]) +
	 8'sd 96 * $signed(input_fmap_51[63:48]) +
	 4'sd 6 * $signed(input_fmap_51[79:64]) +
	 8'sd 117 * $signed(input_fmap_51[95:80]) +
	 6'sd 31 * $signed(input_fmap_51[111:96]) +
	 5'sd 13 * $signed(input_fmap_51[127:112]) +
	 8'sd 107 * $signed(input_fmap_51[143:128]);

logic signed [31:0] dw_conv_mac_52;
assign dw_conv_mac_52 = 
	 6'sd 30 * $signed(input_fmap_52[15:0]) +
	 8'sd 96 * $signed(input_fmap_52[31:16]) +
	 8'sd 77 * $signed(input_fmap_52[47:32]) +
	 3'sd 2 * $signed(input_fmap_52[63:48]) +
	 8'sd 89 * $signed(input_fmap_52[79:64]) +
	 8'sd 93 * $signed(input_fmap_52[95:80]) +
	 8'sd 91 * $signed(input_fmap_52[111:96]) +
	 8'sd 111 * $signed(input_fmap_52[127:112]) +
	 8'sd 78 * $signed(input_fmap_52[143:128]);

logic signed [31:0] dw_conv_mac_53;
assign dw_conv_mac_53 = 
	 8'sd 100 * $signed(input_fmap_53[15:0]) +
	 8'sd 94 * $signed(input_fmap_53[31:16]) +
	 2'sd 1 * $signed(input_fmap_53[47:32]) +
	 8'sd 95 * $signed(input_fmap_53[63:48]) +
	 8'sd 115 * $signed(input_fmap_53[79:64]) +
	 7'sd 56 * $signed(input_fmap_53[95:80]) +
	 5'sd 11 * $signed(input_fmap_53[111:96]) +
	 7'sd 59 * $signed(input_fmap_53[127:112]) +
	 8'sd 117 * $signed(input_fmap_53[143:128]);

logic signed [31:0] dw_conv_mac_54;
assign dw_conv_mac_54 = 
	 8'sd 67 * $signed(input_fmap_54[15:0]) +
	 8'sd 109 * $signed(input_fmap_54[31:16]) +
	 8'sd 123 * $signed(input_fmap_54[47:32]) +
	 7'sd 33 * $signed(input_fmap_54[63:48]) +
	 8'sd 106 * $signed(input_fmap_54[79:64]) +
	 7'sd 43 * $signed(input_fmap_54[95:80]) +
	 7'sd 38 * $signed(input_fmap_54[111:96]) +
	 6'sd 22 * $signed(input_fmap_54[127:112]) +
	 7'sd 53 * $signed(input_fmap_54[143:128]);

logic signed [31:0] dw_conv_mac_55;
assign dw_conv_mac_55 = 
	 7'sd 39 * $signed(input_fmap_55[15:0]) +
	 7'sd 61 * $signed(input_fmap_55[31:16]) +
	 6'sd 26 * $signed(input_fmap_55[47:32]) +
	 8'sd 110 * $signed(input_fmap_55[63:48]) +
	 8'sd 83 * $signed(input_fmap_55[79:64]) +
	 8'sd 118 * $signed(input_fmap_55[95:80]) +
	 8'sd 83 * $signed(input_fmap_55[111:96]) +
	 7'sd 63 * $signed(input_fmap_55[127:112]) +
	 8'sd 83 * $signed(input_fmap_55[143:128]);

logic signed [31:0] dw_conv_mac_56;
assign dw_conv_mac_56 = 
	 7'sd 62 * $signed(input_fmap_56[15:0]) +
	 8'sd 122 * $signed(input_fmap_56[31:16]) +
	 8'sd 127 * $signed(input_fmap_56[47:32]) +
	 8'sd 110 * $signed(input_fmap_56[63:48]) +
	 7'sd 37 * $signed(input_fmap_56[79:64]) +
	 3'sd 3 * $signed(input_fmap_56[95:80]) +
	 8'sd 103 * $signed(input_fmap_56[111:96]) +
	 6'sd 29 * $signed(input_fmap_56[127:112]) +
	 8'sd 101 * $signed(input_fmap_56[143:128]);

logic signed [31:0] dw_conv_mac_57;
assign dw_conv_mac_57 = 
	 8'sd 84 * $signed(input_fmap_57[15:0]) +
	 7'sd 38 * $signed(input_fmap_57[31:16]) +
	 6'sd 27 * $signed(input_fmap_57[47:32]) +
	 8'sd 74 * $signed(input_fmap_57[63:48]) +
	 8'sd 123 * $signed(input_fmap_57[79:64]) +
	 8'sd 116 * $signed(input_fmap_57[95:80]) +
	 7'sd 33 * $signed(input_fmap_57[111:96]) +
	 8'sd 65 * $signed(input_fmap_57[127:112]) +
	 7'sd 45 * $signed(input_fmap_57[143:128]);

logic signed [31:0] dw_conv_mac_58;
assign dw_conv_mac_58 = 
	 8'sd 124 * $signed(input_fmap_58[15:0]) +
	 8'sd 98 * $signed(input_fmap_58[31:16]) +
	 7'sd 36 * $signed(input_fmap_58[47:32]) +
	 7'sd 56 * $signed(input_fmap_58[63:48]) +
	 8'sd 124 * $signed(input_fmap_58[79:64]) +
	 8'sd 84 * $signed(input_fmap_58[95:80]) +
	 8'sd 65 * $signed(input_fmap_58[111:96]) +
	 8'sd 124 * $signed(input_fmap_58[127:112]) +
	 8'sd 103 * $signed(input_fmap_58[143:128]);

logic signed [31:0] dw_conv_mac_59;
assign dw_conv_mac_59 = 
	 5'sd 10 * $signed(input_fmap_59[15:0]) +
	 6'sd 17 * $signed(input_fmap_59[31:16]) +
	 8'sd 89 * $signed(input_fmap_59[47:32]) +
	 7'sd 63 * $signed(input_fmap_59[63:48]) +
	 5'sd 12 * $signed(input_fmap_59[79:64]) +
	 8'sd 122 * $signed(input_fmap_59[95:80]) +
	 8'sd 89 * $signed(input_fmap_59[111:96]) +
	 8'sd 93 * $signed(input_fmap_59[127:112]) +
	 7'sd 58 * $signed(input_fmap_59[143:128]);

logic signed [31:0] dw_conv_mac_60;
assign dw_conv_mac_60 = 
	 8'sd 68 * $signed(input_fmap_60[15:0]) +
	 5'sd 8 * $signed(input_fmap_60[31:16]) +
	 9'sd 128 * $signed(input_fmap_60[47:32]) +
	 8'sd 84 * $signed(input_fmap_60[63:48]) +
	 8'sd 80 * $signed(input_fmap_60[79:64]) +
	 7'sd 47 * $signed(input_fmap_60[95:80]) +
	 8'sd 87 * $signed(input_fmap_60[111:96]) +
	 8'sd 94 * $signed(input_fmap_60[127:112]) +
	 8'sd 108 * $signed(input_fmap_60[143:128]);

logic signed [31:0] dw_conv_mac_61;
assign dw_conv_mac_61 = 
	 8'sd 69 * $signed(input_fmap_61[15:0]) +
	 8'sd 107 * $signed(input_fmap_61[31:16]) +
	 8'sd 117 * $signed(input_fmap_61[47:32]) +
	 7'sd 39 * $signed(input_fmap_61[63:48]) +
	 8'sd 107 * $signed(input_fmap_61[79:64]) +
	 8'sd 100 * $signed(input_fmap_61[95:80]) +
	 5'sd 15 * $signed(input_fmap_61[111:96]) +
	 8'sd 115 * $signed(input_fmap_61[127:112]) +
	 6'sd 22 * $signed(input_fmap_61[143:128]);

logic signed [31:0] dw_conv_mac_62;
assign dw_conv_mac_62 = 
	 6'sd 22 * $signed(input_fmap_62[15:0]) +
	 8'sd 68 * $signed(input_fmap_62[31:16]) +
	 7'sd 49 * $signed(input_fmap_62[47:32]) +
	 8'sd 120 * $signed(input_fmap_62[63:48]) +
	 8'sd 109 * $signed(input_fmap_62[79:64]) +
	 6'sd 19 * $signed(input_fmap_62[95:80]) +
	 8'sd 66 * $signed(input_fmap_62[111:96]) +
	 8'sd 81 * $signed(input_fmap_62[127:112]) +
	 8'sd 101 * $signed(input_fmap_62[143:128]);

logic signed [31:0] dw_conv_mac_63;
assign dw_conv_mac_63 = 
	 8'sd 113 * $signed(input_fmap_63[15:0]) +
	 7'sd 41 * $signed(input_fmap_63[31:16]) +
	 6'sd 30 * $signed(input_fmap_63[47:32]) +
	 8'sd 107 * $signed(input_fmap_63[63:48]) +
	 8'sd 67 * $signed(input_fmap_63[79:64]) +
	 7'sd 43 * $signed(input_fmap_63[95:80]) +
	 7'sd 58 * $signed(input_fmap_63[111:96]) +
	 7'sd 51 * $signed(input_fmap_63[127:112]) +
	 8'sd 79 * $signed(input_fmap_63[143:128]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 8'd108;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 7'd59;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 6'd29;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 7'd43;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 8'd99;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 7'd34;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 8'd70;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 8'd72;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 8'd103;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 8'd80;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 8'd74;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 8'd98;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 6'd18;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 5'd12;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 7'd44;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 8'd113;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 8'd87;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 7'd61;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18 + 8'd89;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 7'd37;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 7'd60;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21 + 6'd30;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22 + 7'd37;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 7'd60;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24 + 8'd124;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25 + 6'd18;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 7'd47;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 6'd28;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28 + 7'd38;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 8'd82;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 8'd102;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 5'd8;
logic [31:0] bias_add_32;
assign bias_add_32 = dw_conv_mac_32 + 7'd46;
logic [31:0] bias_add_33;
assign bias_add_33 = dw_conv_mac_33 + 8'd104;
logic [31:0] bias_add_34;
assign bias_add_34 = dw_conv_mac_34 + 8'd123;
logic [31:0] bias_add_35;
assign bias_add_35 = dw_conv_mac_35 + 8'd115;
logic [31:0] bias_add_36;
assign bias_add_36 = dw_conv_mac_36 + 7'd62;
logic [31:0] bias_add_37;
assign bias_add_37 = dw_conv_mac_37 + 8'd100;
logic [31:0] bias_add_38;
assign bias_add_38 = dw_conv_mac_38 + 8'd80;
logic [31:0] bias_add_39;
assign bias_add_39 = dw_conv_mac_39 + 8'd104;
logic [31:0] bias_add_40;
assign bias_add_40 = dw_conv_mac_40 + 6'd29;
logic [31:0] bias_add_41;
assign bias_add_41 = dw_conv_mac_41 + 7'd39;
logic [31:0] bias_add_42;
assign bias_add_42 = dw_conv_mac_42 + 8'd126;
logic [31:0] bias_add_43;
assign bias_add_43 = dw_conv_mac_43 + 5'd13;
logic [31:0] bias_add_44;
assign bias_add_44 = dw_conv_mac_44 + 8'd87;
logic [31:0] bias_add_45;
assign bias_add_45 = dw_conv_mac_45 + 7'd36;
logic [31:0] bias_add_46;
assign bias_add_46 = dw_conv_mac_46 + 4'd4;
logic [31:0] bias_add_47;
assign bias_add_47 = dw_conv_mac_47 + 8'd78;
logic [31:0] bias_add_48;
assign bias_add_48 = dw_conv_mac_48 + 8'd69;
logic [31:0] bias_add_49;
assign bias_add_49 = dw_conv_mac_49 + 7'd50;
logic [31:0] bias_add_50;
assign bias_add_50 = dw_conv_mac_50 + 7'd52;
logic [31:0] bias_add_51;
assign bias_add_51 = dw_conv_mac_51 + 7'd54;
logic [31:0] bias_add_52;
assign bias_add_52 = dw_conv_mac_52 + 7'd62;
logic [31:0] bias_add_53;
assign bias_add_53 = dw_conv_mac_53 + 8'd67;
logic [31:0] bias_add_54;
assign bias_add_54 = dw_conv_mac_54 + 6'd21;
logic [31:0] bias_add_55;
assign bias_add_55 = dw_conv_mac_55 + 8'd114;
logic [31:0] bias_add_56;
assign bias_add_56 = dw_conv_mac_56 + 8'd124;
logic [31:0] bias_add_57;
assign bias_add_57 = dw_conv_mac_57 + 8'd65;
logic [31:0] bias_add_58;
assign bias_add_58 = dw_conv_mac_58 + 8'd108;
logic [31:0] bias_add_59;
assign bias_add_59 = dw_conv_mac_59 + 8'd98;
logic [31:0] bias_add_60;
assign bias_add_60 = dw_conv_mac_60 + 6'd26;
logic [31:0] bias_add_61;
assign bias_add_61 = dw_conv_mac_61 + 8'd104;
logic [31:0] bias_add_62;
assign bias_add_62 = dw_conv_mac_62 + 8'd126;
logic [31:0] bias_add_63;
assign bias_add_63 = dw_conv_mac_63 + 8'd75;

logic [15:0] relu_0;
assign relu_0[15:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[21:7]}} :'d6) : '0;
logic [15:0] relu_1;
assign relu_1[15:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[21:7]}} :'d6) : '0;
logic [15:0] relu_2;
assign relu_2[15:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[21:7]}} :'d6) : '0;
logic [15:0] relu_3;
assign relu_3[15:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[21:7]}} :'d6) : '0;
logic [15:0] relu_4;
assign relu_4[15:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[21:7]}} :'d6) : '0;
logic [15:0] relu_5;
assign relu_5[15:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[21:7]}} :'d6) : '0;
logic [15:0] relu_6;
assign relu_6[15:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[21:7]}} :'d6) : '0;
logic [15:0] relu_7;
assign relu_7[15:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[21:7]}} :'d6) : '0;
logic [15:0] relu_8;
assign relu_8[15:0] = (bias_add_8[31]==0) ? ((bias_add_8<3'd6) ? {{bias_add_8[31],bias_add_8[21:7]}} :'d6) : '0;
logic [15:0] relu_9;
assign relu_9[15:0] = (bias_add_9[31]==0) ? ((bias_add_9<3'd6) ? {{bias_add_9[31],bias_add_9[21:7]}} :'d6) : '0;
logic [15:0] relu_10;
assign relu_10[15:0] = (bias_add_10[31]==0) ? ((bias_add_10<3'd6) ? {{bias_add_10[31],bias_add_10[21:7]}} :'d6) : '0;
logic [15:0] relu_11;
assign relu_11[15:0] = (bias_add_11[31]==0) ? ((bias_add_11<3'd6) ? {{bias_add_11[31],bias_add_11[21:7]}} :'d6) : '0;
logic [15:0] relu_12;
assign relu_12[15:0] = (bias_add_12[31]==0) ? ((bias_add_12<3'd6) ? {{bias_add_12[31],bias_add_12[21:7]}} :'d6) : '0;
logic [15:0] relu_13;
assign relu_13[15:0] = (bias_add_13[31]==0) ? ((bias_add_13<3'd6) ? {{bias_add_13[31],bias_add_13[21:7]}} :'d6) : '0;
logic [15:0] relu_14;
assign relu_14[15:0] = (bias_add_14[31]==0) ? ((bias_add_14<3'd6) ? {{bias_add_14[31],bias_add_14[21:7]}} :'d6) : '0;
logic [15:0] relu_15;
assign relu_15[15:0] = (bias_add_15[31]==0) ? ((bias_add_15<3'd6) ? {{bias_add_15[31],bias_add_15[21:7]}} :'d6) : '0;
logic [15:0] relu_16;
assign relu_16[15:0] = (bias_add_16[31]==0) ? ((bias_add_16<3'd6) ? {{bias_add_16[31],bias_add_16[21:7]}} :'d6) : '0;
logic [15:0] relu_17;
assign relu_17[15:0] = (bias_add_17[31]==0) ? ((bias_add_17<3'd6) ? {{bias_add_17[31],bias_add_17[21:7]}} :'d6) : '0;
logic [15:0] relu_18;
assign relu_18[15:0] = (bias_add_18[31]==0) ? ((bias_add_18<3'd6) ? {{bias_add_18[31],bias_add_18[21:7]}} :'d6) : '0;
logic [15:0] relu_19;
assign relu_19[15:0] = (bias_add_19[31]==0) ? ((bias_add_19<3'd6) ? {{bias_add_19[31],bias_add_19[21:7]}} :'d6) : '0;
logic [15:0] relu_20;
assign relu_20[15:0] = (bias_add_20[31]==0) ? ((bias_add_20<3'd6) ? {{bias_add_20[31],bias_add_20[21:7]}} :'d6) : '0;
logic [15:0] relu_21;
assign relu_21[15:0] = (bias_add_21[31]==0) ? ((bias_add_21<3'd6) ? {{bias_add_21[31],bias_add_21[21:7]}} :'d6) : '0;
logic [15:0] relu_22;
assign relu_22[15:0] = (bias_add_22[31]==0) ? ((bias_add_22<3'd6) ? {{bias_add_22[31],bias_add_22[21:7]}} :'d6) : '0;
logic [15:0] relu_23;
assign relu_23[15:0] = (bias_add_23[31]==0) ? ((bias_add_23<3'd6) ? {{bias_add_23[31],bias_add_23[21:7]}} :'d6) : '0;
logic [15:0] relu_24;
assign relu_24[15:0] = (bias_add_24[31]==0) ? ((bias_add_24<3'd6) ? {{bias_add_24[31],bias_add_24[21:7]}} :'d6) : '0;
logic [15:0] relu_25;
assign relu_25[15:0] = (bias_add_25[31]==0) ? ((bias_add_25<3'd6) ? {{bias_add_25[31],bias_add_25[21:7]}} :'d6) : '0;
logic [15:0] relu_26;
assign relu_26[15:0] = (bias_add_26[31]==0) ? ((bias_add_26<3'd6) ? {{bias_add_26[31],bias_add_26[21:7]}} :'d6) : '0;
logic [15:0] relu_27;
assign relu_27[15:0] = (bias_add_27[31]==0) ? ((bias_add_27<3'd6) ? {{bias_add_27[31],bias_add_27[21:7]}} :'d6) : '0;
logic [15:0] relu_28;
assign relu_28[15:0] = (bias_add_28[31]==0) ? ((bias_add_28<3'd6) ? {{bias_add_28[31],bias_add_28[21:7]}} :'d6) : '0;
logic [15:0] relu_29;
assign relu_29[15:0] = (bias_add_29[31]==0) ? ((bias_add_29<3'd6) ? {{bias_add_29[31],bias_add_29[21:7]}} :'d6) : '0;
logic [15:0] relu_30;
assign relu_30[15:0] = (bias_add_30[31]==0) ? ((bias_add_30<3'd6) ? {{bias_add_30[31],bias_add_30[21:7]}} :'d6) : '0;
logic [15:0] relu_31;
assign relu_31[15:0] = (bias_add_31[31]==0) ? ((bias_add_31<3'd6) ? {{bias_add_31[31],bias_add_31[21:7]}} :'d6) : '0;
logic [15:0] relu_32;
assign relu_32[15:0] = (bias_add_32[31]==0) ? ((bias_add_32<3'd6) ? {{bias_add_32[31],bias_add_32[21:7]}} :'d6) : '0;
logic [15:0] relu_33;
assign relu_33[15:0] = (bias_add_33[31]==0) ? ((bias_add_33<3'd6) ? {{bias_add_33[31],bias_add_33[21:7]}} :'d6) : '0;
logic [15:0] relu_34;
assign relu_34[15:0] = (bias_add_34[31]==0) ? ((bias_add_34<3'd6) ? {{bias_add_34[31],bias_add_34[21:7]}} :'d6) : '0;
logic [15:0] relu_35;
assign relu_35[15:0] = (bias_add_35[31]==0) ? ((bias_add_35<3'd6) ? {{bias_add_35[31],bias_add_35[21:7]}} :'d6) : '0;
logic [15:0] relu_36;
assign relu_36[15:0] = (bias_add_36[31]==0) ? ((bias_add_36<3'd6) ? {{bias_add_36[31],bias_add_36[21:7]}} :'d6) : '0;
logic [15:0] relu_37;
assign relu_37[15:0] = (bias_add_37[31]==0) ? ((bias_add_37<3'd6) ? {{bias_add_37[31],bias_add_37[21:7]}} :'d6) : '0;
logic [15:0] relu_38;
assign relu_38[15:0] = (bias_add_38[31]==0) ? ((bias_add_38<3'd6) ? {{bias_add_38[31],bias_add_38[21:7]}} :'d6) : '0;
logic [15:0] relu_39;
assign relu_39[15:0] = (bias_add_39[31]==0) ? ((bias_add_39<3'd6) ? {{bias_add_39[31],bias_add_39[21:7]}} :'d6) : '0;
logic [15:0] relu_40;
assign relu_40[15:0] = (bias_add_40[31]==0) ? ((bias_add_40<3'd6) ? {{bias_add_40[31],bias_add_40[21:7]}} :'d6) : '0;
logic [15:0] relu_41;
assign relu_41[15:0] = (bias_add_41[31]==0) ? ((bias_add_41<3'd6) ? {{bias_add_41[31],bias_add_41[21:7]}} :'d6) : '0;
logic [15:0] relu_42;
assign relu_42[15:0] = (bias_add_42[31]==0) ? ((bias_add_42<3'd6) ? {{bias_add_42[31],bias_add_42[21:7]}} :'d6) : '0;
logic [15:0] relu_43;
assign relu_43[15:0] = (bias_add_43[31]==0) ? ((bias_add_43<3'd6) ? {{bias_add_43[31],bias_add_43[21:7]}} :'d6) : '0;
logic [15:0] relu_44;
assign relu_44[15:0] = (bias_add_44[31]==0) ? ((bias_add_44<3'd6) ? {{bias_add_44[31],bias_add_44[21:7]}} :'d6) : '0;
logic [15:0] relu_45;
assign relu_45[15:0] = (bias_add_45[31]==0) ? ((bias_add_45<3'd6) ? {{bias_add_45[31],bias_add_45[21:7]}} :'d6) : '0;
logic [15:0] relu_46;
assign relu_46[15:0] = (bias_add_46[31]==0) ? ((bias_add_46<3'd6) ? {{bias_add_46[31],bias_add_46[21:7]}} :'d6) : '0;
logic [15:0] relu_47;
assign relu_47[15:0] = (bias_add_47[31]==0) ? ((bias_add_47<3'd6) ? {{bias_add_47[31],bias_add_47[21:7]}} :'d6) : '0;
logic [15:0] relu_48;
assign relu_48[15:0] = (bias_add_48[31]==0) ? ((bias_add_48<3'd6) ? {{bias_add_48[31],bias_add_48[21:7]}} :'d6) : '0;
logic [15:0] relu_49;
assign relu_49[15:0] = (bias_add_49[31]==0) ? ((bias_add_49<3'd6) ? {{bias_add_49[31],bias_add_49[21:7]}} :'d6) : '0;
logic [15:0] relu_50;
assign relu_50[15:0] = (bias_add_50[31]==0) ? ((bias_add_50<3'd6) ? {{bias_add_50[31],bias_add_50[21:7]}} :'d6) : '0;
logic [15:0] relu_51;
assign relu_51[15:0] = (bias_add_51[31]==0) ? ((bias_add_51<3'd6) ? {{bias_add_51[31],bias_add_51[21:7]}} :'d6) : '0;
logic [15:0] relu_52;
assign relu_52[15:0] = (bias_add_52[31]==0) ? ((bias_add_52<3'd6) ? {{bias_add_52[31],bias_add_52[21:7]}} :'d6) : '0;
logic [15:0] relu_53;
assign relu_53[15:0] = (bias_add_53[31]==0) ? ((bias_add_53<3'd6) ? {{bias_add_53[31],bias_add_53[21:7]}} :'d6) : '0;
logic [15:0] relu_54;
assign relu_54[15:0] = (bias_add_54[31]==0) ? ((bias_add_54<3'd6) ? {{bias_add_54[31],bias_add_54[21:7]}} :'d6) : '0;
logic [15:0] relu_55;
assign relu_55[15:0] = (bias_add_55[31]==0) ? ((bias_add_55<3'd6) ? {{bias_add_55[31],bias_add_55[21:7]}} :'d6) : '0;
logic [15:0] relu_56;
assign relu_56[15:0] = (bias_add_56[31]==0) ? ((bias_add_56<3'd6) ? {{bias_add_56[31],bias_add_56[21:7]}} :'d6) : '0;
logic [15:0] relu_57;
assign relu_57[15:0] = (bias_add_57[31]==0) ? ((bias_add_57<3'd6) ? {{bias_add_57[31],bias_add_57[21:7]}} :'d6) : '0;
logic [15:0] relu_58;
assign relu_58[15:0] = (bias_add_58[31]==0) ? ((bias_add_58<3'd6) ? {{bias_add_58[31],bias_add_58[21:7]}} :'d6) : '0;
logic [15:0] relu_59;
assign relu_59[15:0] = (bias_add_59[31]==0) ? ((bias_add_59<3'd6) ? {{bias_add_59[31],bias_add_59[21:7]}} :'d6) : '0;
logic [15:0] relu_60;
assign relu_60[15:0] = (bias_add_60[31]==0) ? ((bias_add_60<3'd6) ? {{bias_add_60[31],bias_add_60[21:7]}} :'d6) : '0;
logic [15:0] relu_61;
assign relu_61[15:0] = (bias_add_61[31]==0) ? ((bias_add_61<3'd6) ? {{bias_add_61[31],bias_add_61[21:7]}} :'d6) : '0;
logic [15:0] relu_62;
assign relu_62[15:0] = (bias_add_62[31]==0) ? ((bias_add_62<3'd6) ? {{bias_add_62[31],bias_add_62[21:7]}} :'d6) : '0;
logic [15:0] relu_63;
assign relu_63[15:0] = (bias_add_63[31]==0) ? ((bias_add_63<3'd6) ? {{bias_add_63[31],bias_add_63[21:7]}} :'d6) : '0;

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
