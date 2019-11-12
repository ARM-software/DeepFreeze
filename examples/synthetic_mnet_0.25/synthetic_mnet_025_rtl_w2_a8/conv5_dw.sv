module conv5_dw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [2304-1:0] input_act,
    output logic [256-1:0] output_act,
    output logic ready
);

logic [2304-1:0] input_act_ff;
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

logic signed [31:0] dw_conv_mac_0;
assign dw_conv_mac_0 = 
	 2'sd 1 * $signed(input_fmap_0[7:0]) +
	 2'sd 1 * $signed(input_fmap_0[15:8]) +
	 3'sd 2 * $signed(input_fmap_0[39:32]) +
	 3'sd 2 * $signed(input_fmap_0[47:40]) +
	 2'sd 1 * $signed(input_fmap_0[55:48]) +
	 2'sd 1 * $signed(input_fmap_0[63:56]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 3'sd 2 * $signed(input_fmap_1[7:0]) +
	 3'sd 2 * $signed(input_fmap_1[15:8]) +
	 3'sd 2 * $signed(input_fmap_1[23:16]) +
	 3'sd 2 * $signed(input_fmap_1[39:32]) +
	 2'sd 1 * $signed(input_fmap_1[47:40]) +
	 2'sd 1 * $signed(input_fmap_1[55:48]) +
	 2'sd 1 * $signed(input_fmap_1[63:56]) +
	 2'sd 1 * $signed(input_fmap_1[71:64]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 2'sd 1 * $signed(input_fmap_2[7:0]) +
	 2'sd 1 * $signed(input_fmap_2[23:16]) +
	 3'sd 2 * $signed(input_fmap_2[31:24]) +
	 2'sd 1 * $signed(input_fmap_2[39:32]) +
	 2'sd 1 * $signed(input_fmap_2[55:48]) +
	 3'sd 2 * $signed(input_fmap_2[63:56]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 3'sd 2 * $signed(input_fmap_3[7:0]) +
	 2'sd 1 * $signed(input_fmap_3[15:8]) +
	 2'sd 1 * $signed(input_fmap_3[23:16]) +
	 2'sd 1 * $signed(input_fmap_3[31:24]) +
	 2'sd 1 * $signed(input_fmap_3[39:32]) +
	 3'sd 2 * $signed(input_fmap_3[47:40]) +
	 2'sd 1 * $signed(input_fmap_3[55:48]) +
	 2'sd 1 * $signed(input_fmap_3[63:56]) +
	 2'sd 1 * $signed(input_fmap_3[71:64]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 2'sd 1 * $signed(input_fmap_4[31:24]) +
	 2'sd 1 * $signed(input_fmap_4[39:32]) +
	 2'sd 1 * $signed(input_fmap_4[47:40]) +
	 2'sd 1 * $signed(input_fmap_4[63:56]) +
	 3'sd 2 * $signed(input_fmap_4[71:64]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 3'sd 2 * $signed(input_fmap_5[7:0]) +
	 3'sd 2 * $signed(input_fmap_5[15:8]) +
	 2'sd 1 * $signed(input_fmap_5[23:16]) +
	 3'sd 2 * $signed(input_fmap_5[39:32]) +
	 3'sd 2 * $signed(input_fmap_5[47:40]) +
	 3'sd 2 * $signed(input_fmap_5[55:48]) +
	 3'sd 2 * $signed(input_fmap_5[63:56]) +
	 3'sd 2 * $signed(input_fmap_5[71:64]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 2'sd 1 * $signed(input_fmap_6[7:0]) +
	 3'sd 2 * $signed(input_fmap_6[15:8]) +
	 2'sd 1 * $signed(input_fmap_6[23:16]) +
	 2'sd 1 * $signed(input_fmap_6[31:24]) +
	 3'sd 2 * $signed(input_fmap_6[47:40]) +
	 2'sd 1 * $signed(input_fmap_6[55:48]) +
	 3'sd 2 * $signed(input_fmap_6[71:64]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 2'sd 1 * $signed(input_fmap_7[7:0]) +
	 2'sd 1 * $signed(input_fmap_7[15:8]) +
	 2'sd 1 * $signed(input_fmap_7[23:16]) +
	 2'sd 1 * $signed(input_fmap_7[31:24]) +
	 2'sd 1 * $signed(input_fmap_7[39:32]) +
	 2'sd 1 * $signed(input_fmap_7[47:40]) +
	 3'sd 2 * $signed(input_fmap_7[63:56]) +
	 3'sd 2 * $signed(input_fmap_7[71:64]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 2'sd 1 * $signed(input_fmap_8[15:8]) +
	 3'sd 2 * $signed(input_fmap_8[23:16]) +
	 2'sd 1 * $signed(input_fmap_8[31:24]) +
	 3'sd 2 * $signed(input_fmap_8[39:32]) +
	 3'sd 2 * $signed(input_fmap_8[47:40]) +
	 2'sd 1 * $signed(input_fmap_8[55:48]) +
	 2'sd 1 * $signed(input_fmap_8[63:56]) +
	 3'sd 2 * $signed(input_fmap_8[71:64]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 3'sd 2 * $signed(input_fmap_9[7:0]) +
	 2'sd 1 * $signed(input_fmap_9[15:8]) +
	 2'sd 1 * $signed(input_fmap_9[23:16]) +
	 2'sd 1 * $signed(input_fmap_9[47:40]) +
	 3'sd 2 * $signed(input_fmap_9[55:48]) +
	 2'sd 1 * $signed(input_fmap_9[71:64]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 2'sd 1 * $signed(input_fmap_10[23:16]) +
	 2'sd 1 * $signed(input_fmap_10[31:24]) +
	 3'sd 2 * $signed(input_fmap_10[39:32]) +
	 2'sd 1 * $signed(input_fmap_10[47:40]) +
	 2'sd 1 * $signed(input_fmap_10[55:48]) +
	 3'sd 2 * $signed(input_fmap_10[63:56]) +
	 2'sd 1 * $signed(input_fmap_10[71:64]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 2'sd 1 * $signed(input_fmap_11[23:16]) +
	 3'sd 2 * $signed(input_fmap_11[31:24]) +
	 2'sd 1 * $signed(input_fmap_11[39:32]) +
	 2'sd 1 * $signed(input_fmap_11[55:48]) +
	 2'sd 1 * $signed(input_fmap_11[63:56]) +
	 2'sd 1 * $signed(input_fmap_11[71:64]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 2'sd 1 * $signed(input_fmap_12[7:0]) +
	 2'sd 1 * $signed(input_fmap_12[23:16]) +
	 2'sd 1 * $signed(input_fmap_12[31:24]) +
	 2'sd 1 * $signed(input_fmap_12[39:32]) +
	 2'sd 1 * $signed(input_fmap_12[47:40]) +
	 2'sd 1 * $signed(input_fmap_12[55:48]) +
	 2'sd 1 * $signed(input_fmap_12[63:56]) +
	 2'sd 1 * $signed(input_fmap_12[71:64]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 2'sd 1 * $signed(input_fmap_13[7:0]) +
	 2'sd 1 * $signed(input_fmap_13[15:8]) +
	 3'sd 2 * $signed(input_fmap_13[39:32]) +
	 2'sd 1 * $signed(input_fmap_13[47:40]) +
	 2'sd 1 * $signed(input_fmap_13[55:48]) +
	 2'sd 1 * $signed(input_fmap_13[63:56]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 2'sd 1 * $signed(input_fmap_14[7:0]) +
	 3'sd 2 * $signed(input_fmap_14[15:8]) +
	 3'sd 2 * $signed(input_fmap_14[23:16]) +
	 3'sd 2 * $signed(input_fmap_14[31:24]) +
	 2'sd 1 * $signed(input_fmap_14[55:48]) +
	 2'sd 1 * $signed(input_fmap_14[63:56]) +
	 2'sd 1 * $signed(input_fmap_14[71:64]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 2'sd 1 * $signed(input_fmap_15[31:24]) +
	 2'sd 1 * $signed(input_fmap_15[39:32]) +
	 2'sd 1 * $signed(input_fmap_15[47:40]) +
	 2'sd 1 * $signed(input_fmap_15[55:48]) +
	 3'sd 2 * $signed(input_fmap_15[63:56]);

logic signed [31:0] dw_conv_mac_16;
assign dw_conv_mac_16 = 
	 3'sd 2 * $signed(input_fmap_16[23:16]) +
	 2'sd 1 * $signed(input_fmap_16[31:24]) +
	 2'sd 1 * $signed(input_fmap_16[47:40]) +
	 3'sd 2 * $signed(input_fmap_16[55:48]);

logic signed [31:0] dw_conv_mac_17;
assign dw_conv_mac_17 = 
	 3'sd 2 * $signed(input_fmap_17[7:0]) +
	 2'sd 1 * $signed(input_fmap_17[15:8]) +
	 2'sd 1 * $signed(input_fmap_17[23:16]) +
	 3'sd 2 * $signed(input_fmap_17[31:24]) +
	 2'sd 1 * $signed(input_fmap_17[39:32]) +
	 3'sd 2 * $signed(input_fmap_17[47:40]) +
	 3'sd 2 * $signed(input_fmap_17[55:48]) +
	 2'sd 1 * $signed(input_fmap_17[63:56]) +
	 2'sd 1 * $signed(input_fmap_17[71:64]);

logic signed [31:0] dw_conv_mac_18;
assign dw_conv_mac_18 = 
	 2'sd 1 * $signed(input_fmap_18[7:0]) +
	 3'sd 2 * $signed(input_fmap_18[15:8]) +
	 2'sd 1 * $signed(input_fmap_18[23:16]) +
	 2'sd 1 * $signed(input_fmap_18[31:24]) +
	 2'sd 1 * $signed(input_fmap_18[39:32]) +
	 2'sd 1 * $signed(input_fmap_18[47:40]) +
	 3'sd 2 * $signed(input_fmap_18[55:48]) +
	 2'sd 1 * $signed(input_fmap_18[63:56]) +
	 2'sd 1 * $signed(input_fmap_18[71:64]);

logic signed [31:0] dw_conv_mac_19;
assign dw_conv_mac_19 = 
	 3'sd 2 * $signed(input_fmap_19[7:0]) +
	 2'sd 1 * $signed(input_fmap_19[15:8]) +
	 2'sd 1 * $signed(input_fmap_19[23:16]) +
	 3'sd 2 * $signed(input_fmap_19[39:32]) +
	 3'sd 2 * $signed(input_fmap_19[47:40]) +
	 2'sd 1 * $signed(input_fmap_19[55:48]) +
	 3'sd 2 * $signed(input_fmap_19[71:64]);

logic signed [31:0] dw_conv_mac_20;
assign dw_conv_mac_20 = 
	 2'sd 1 * $signed(input_fmap_20[7:0]) +
	 2'sd 1 * $signed(input_fmap_20[15:8]) +
	 3'sd 2 * $signed(input_fmap_20[23:16]) +
	 2'sd 1 * $signed(input_fmap_20[31:24]) +
	 2'sd 1 * $signed(input_fmap_20[47:40]) +
	 3'sd 2 * $signed(input_fmap_20[55:48]) +
	 2'sd 1 * $signed(input_fmap_20[63:56]) +
	 2'sd 1 * $signed(input_fmap_20[71:64]);

logic signed [31:0] dw_conv_mac_21;
assign dw_conv_mac_21 = 
	 2'sd 1 * $signed(input_fmap_21[7:0]) +
	 2'sd 1 * $signed(input_fmap_21[15:8]) +
	 2'sd 1 * $signed(input_fmap_21[39:32]) +
	 2'sd 1 * $signed(input_fmap_21[47:40]) +
	 3'sd 2 * $signed(input_fmap_21[55:48]) +
	 2'sd 1 * $signed(input_fmap_21[71:64]);

logic signed [31:0] dw_conv_mac_22;
assign dw_conv_mac_22 = 
	 2'sd 1 * $signed(input_fmap_22[15:8]) +
	 3'sd 2 * $signed(input_fmap_22[23:16]) +
	 3'sd 2 * $signed(input_fmap_22[31:24]) +
	 2'sd 1 * $signed(input_fmap_22[39:32]) +
	 3'sd 2 * $signed(input_fmap_22[47:40]) +
	 3'sd 2 * $signed(input_fmap_22[55:48]) +
	 2'sd 1 * $signed(input_fmap_22[63:56]);

logic signed [31:0] dw_conv_mac_23;
assign dw_conv_mac_23 = 
	 3'sd 2 * $signed(input_fmap_23[7:0]) +
	 3'sd 2 * $signed(input_fmap_23[15:8]) +
	 2'sd 1 * $signed(input_fmap_23[23:16]) +
	 2'sd 1 * $signed(input_fmap_23[31:24]) +
	 2'sd 1 * $signed(input_fmap_23[39:32]) +
	 3'sd 2 * $signed(input_fmap_23[55:48]) +
	 2'sd 1 * $signed(input_fmap_23[71:64]);

logic signed [31:0] dw_conv_mac_24;
assign dw_conv_mac_24 = 
	 2'sd 1 * $signed(input_fmap_24[23:16]) +
	 3'sd 2 * $signed(input_fmap_24[31:24]) +
	 2'sd 1 * $signed(input_fmap_24[47:40]) +
	 2'sd 1 * $signed(input_fmap_24[55:48]) +
	 2'sd 1 * $signed(input_fmap_24[63:56]) +
	 2'sd 1 * $signed(input_fmap_24[71:64]);

logic signed [31:0] dw_conv_mac_25;
assign dw_conv_mac_25 = 
	 2'sd 1 * $signed(input_fmap_25[7:0]) +
	 2'sd 1 * $signed(input_fmap_25[15:8]) +
	 3'sd 2 * $signed(input_fmap_25[23:16]) +
	 2'sd 1 * $signed(input_fmap_25[39:32]) +
	 2'sd 1 * $signed(input_fmap_25[47:40]) +
	 2'sd 1 * $signed(input_fmap_25[55:48]) +
	 3'sd 2 * $signed(input_fmap_25[63:56]) +
	 3'sd 2 * $signed(input_fmap_25[71:64]);

logic signed [31:0] dw_conv_mac_26;
assign dw_conv_mac_26 = 
	 2'sd 1 * $signed(input_fmap_26[15:8]) +
	 2'sd 1 * $signed(input_fmap_26[31:24]) +
	 2'sd 1 * $signed(input_fmap_26[47:40]) +
	 3'sd 2 * $signed(input_fmap_26[55:48]) +
	 2'sd 1 * $signed(input_fmap_26[63:56]) +
	 3'sd 2 * $signed(input_fmap_26[71:64]);

logic signed [31:0] dw_conv_mac_27;
assign dw_conv_mac_27 = 
	 2'sd 1 * $signed(input_fmap_27[7:0]) +
	 3'sd 2 * $signed(input_fmap_27[15:8]) +
	 2'sd 1 * $signed(input_fmap_27[23:16]) +
	 2'sd 1 * $signed(input_fmap_27[39:32]) +
	 3'sd 2 * $signed(input_fmap_27[47:40]) +
	 2'sd 1 * $signed(input_fmap_27[55:48]) +
	 2'sd 1 * $signed(input_fmap_27[63:56]) +
	 2'sd 1 * $signed(input_fmap_27[71:64]);

logic signed [31:0] dw_conv_mac_28;
assign dw_conv_mac_28 = 
	 2'sd 1 * $signed(input_fmap_28[7:0]) +
	 3'sd 2 * $signed(input_fmap_28[15:8]) +
	 2'sd 1 * $signed(input_fmap_28[23:16]) +
	 2'sd 1 * $signed(input_fmap_28[31:24]) +
	 2'sd 1 * $signed(input_fmap_28[39:32]) +
	 2'sd 1 * $signed(input_fmap_28[47:40]) +
	 2'sd 1 * $signed(input_fmap_28[55:48]) +
	 3'sd 2 * $signed(input_fmap_28[63:56]) +
	 2'sd 1 * $signed(input_fmap_28[71:64]);

logic signed [31:0] dw_conv_mac_29;
assign dw_conv_mac_29 = 
	 2'sd 1 * $signed(input_fmap_29[7:0]) +
	 2'sd 1 * $signed(input_fmap_29[31:24]) +
	 2'sd 1 * $signed(input_fmap_29[39:32]) +
	 3'sd 2 * $signed(input_fmap_29[47:40]) +
	 3'sd 2 * $signed(input_fmap_29[55:48]) +
	 2'sd 1 * $signed(input_fmap_29[63:56]);

logic signed [31:0] dw_conv_mac_30;
assign dw_conv_mac_30 = 
	 2'sd 1 * $signed(input_fmap_30[7:0]) +
	 2'sd 1 * $signed(input_fmap_30[15:8]) +
	 2'sd 1 * $signed(input_fmap_30[23:16]) +
	 3'sd 2 * $signed(input_fmap_30[31:24]) +
	 2'sd 1 * $signed(input_fmap_30[39:32]) +
	 3'sd 2 * $signed(input_fmap_30[47:40]);

logic signed [31:0] dw_conv_mac_31;
assign dw_conv_mac_31 = 
	 3'sd 2 * $signed(input_fmap_31[7:0]) +
	 2'sd 1 * $signed(input_fmap_31[23:16]) +
	 2'sd 1 * $signed(input_fmap_31[31:24]) +
	 3'sd 2 * $signed(input_fmap_31[39:32]) +
	 2'sd 1 * $signed(input_fmap_31[47:40]) +
	 2'sd 1 * $signed(input_fmap_31[63:56]) +
	 3'sd 2 * $signed(input_fmap_31[71:64]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 2'd1;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 2'd1;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 2'd1;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 2'd1;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 2'd1;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 2'd1;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 2'd1;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 3'd2;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 2'd1;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 3'd2;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 3'd2;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 2'd1;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 2'd1;
logic [31:0] bias_add_16;
assign bias_add_16 = dw_conv_mac_16 + 2'd1;
logic [31:0] bias_add_17;
assign bias_add_17 = dw_conv_mac_17 + 2'd1;
logic [31:0] bias_add_18;
assign bias_add_18 = dw_conv_mac_18;
logic [31:0] bias_add_19;
assign bias_add_19 = dw_conv_mac_19 + 2'd1;
logic [31:0] bias_add_20;
assign bias_add_20 = dw_conv_mac_20 + 2'd1;
logic [31:0] bias_add_21;
assign bias_add_21 = dw_conv_mac_21;
logic [31:0] bias_add_22;
assign bias_add_22 = dw_conv_mac_22;
logic [31:0] bias_add_23;
assign bias_add_23 = dw_conv_mac_23 + 3'd2;
logic [31:0] bias_add_24;
assign bias_add_24 = dw_conv_mac_24 + 3'd2;
logic [31:0] bias_add_25;
assign bias_add_25 = dw_conv_mac_25;
logic [31:0] bias_add_26;
assign bias_add_26 = dw_conv_mac_26 + 2'd1;
logic [31:0] bias_add_27;
assign bias_add_27 = dw_conv_mac_27 + 2'd1;
logic [31:0] bias_add_28;
assign bias_add_28 = dw_conv_mac_28 + 3'd2;
logic [31:0] bias_add_29;
assign bias_add_29 = dw_conv_mac_29 + 2'd1;
logic [31:0] bias_add_30;
assign bias_add_30 = dw_conv_mac_30 + 2'd1;
logic [31:0] bias_add_31;
assign bias_add_31 = dw_conv_mac_31 + 2'd1;

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
