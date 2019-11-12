module conv3_dw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [1152-1:0] input_act,
    output logic [128-1:0] output_act,
    output logic ready
);

logic [1152-1:0] input_act_ff;
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

logic signed [31:0] dw_conv_mac_0;
assign dw_conv_mac_0 = 
	 15'sd 9359 * $signed(input_fmap_0[7:0]) +
	 16'sd 24060 * $signed(input_fmap_0[15:8]) +
	 16'sd 23559 * $signed(input_fmap_0[23:16]) +
	 15'sd 10534 * $signed(input_fmap_0[31:24]) +
	 15'sd 9936 * $signed(input_fmap_0[39:32]) +
	 15'sd 13705 * $signed(input_fmap_0[47:40]) +
	 15'sd 11132 * $signed(input_fmap_0[55:48]) +
	 16'sd 26734 * $signed(input_fmap_0[63:56]) +
	 15'sd 8385 * $signed(input_fmap_0[71:64]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 10'sd 440 * $signed(input_fmap_1[7:0]) +
	 16'sd 24819 * $signed(input_fmap_1[15:8]) +
	 16'sd 25475 * $signed(input_fmap_1[23:16]) +
	 15'sd 8475 * $signed(input_fmap_1[31:24]) +
	 14'sd 6844 * $signed(input_fmap_1[39:32]) +
	 15'sd 15037 * $signed(input_fmap_1[47:40]) +
	 15'sd 9721 * $signed(input_fmap_1[55:48]) +
	 14'sd 6050 * $signed(input_fmap_1[63:56]) +
	 15'sd 8201 * $signed(input_fmap_1[71:64]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 14'sd 7871 * $signed(input_fmap_2[7:0]) +
	 14'sd 5105 * $signed(input_fmap_2[15:8]) +
	 16'sd 30054 * $signed(input_fmap_2[23:16]) +
	 16'sd 18189 * $signed(input_fmap_2[31:24]) +
	 16'sd 31147 * $signed(input_fmap_2[39:32]) +
	 11'sd 721 * $signed(input_fmap_2[47:40]) +
	 16'sd 17784 * $signed(input_fmap_2[55:48]) +
	 15'sd 16117 * $signed(input_fmap_2[63:56]) +
	 16'sd 26600 * $signed(input_fmap_2[71:64]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 15'sd 16277 * $signed(input_fmap_3[7:0]) +
	 14'sd 7057 * $signed(input_fmap_3[15:8]) +
	 15'sd 9806 * $signed(input_fmap_3[23:16]) +
	 16'sd 21742 * $signed(input_fmap_3[31:24]) +
	 16'sd 22909 * $signed(input_fmap_3[39:32]) +
	 15'sd 11058 * $signed(input_fmap_3[47:40]) +
	 16'sd 23953 * $signed(input_fmap_3[55:48]) +
	 16'sd 21997 * $signed(input_fmap_3[63:56]) +
	 13'sd 2222 * $signed(input_fmap_3[71:64]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 16'sd 19683 * $signed(input_fmap_4[7:0]) +
	 16'sd 26601 * $signed(input_fmap_4[15:8]) +
	 15'sd 13361 * $signed(input_fmap_4[23:16]) +
	 16'sd 31701 * $signed(input_fmap_4[31:24]) +
	 16'sd 30547 * $signed(input_fmap_4[39:32]) +
	 16'sd 22601 * $signed(input_fmap_4[47:40]) +
	 16'sd 29192 * $signed(input_fmap_4[55:48]) +
	 16'sd 20105 * $signed(input_fmap_4[63:56]) +
	 15'sd 13810 * $signed(input_fmap_4[71:64]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 16'sd 21937 * $signed(input_fmap_5[7:0]) +
	 16'sd 16906 * $signed(input_fmap_5[15:8]) +
	 13'sd 2587 * $signed(input_fmap_5[23:16]) +
	 15'sd 11990 * $signed(input_fmap_5[31:24]) +
	 15'sd 14351 * $signed(input_fmap_5[39:32]) +
	 15'sd 11210 * $signed(input_fmap_5[47:40]) +
	 12'sd 1982 * $signed(input_fmap_5[55:48]) +
	 15'sd 13804 * $signed(input_fmap_5[63:56]) +
	 16'sd 26021 * $signed(input_fmap_5[71:64]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 16'sd 18490 * $signed(input_fmap_6[7:0]) +
	 15'sd 11281 * $signed(input_fmap_6[15:8]) +
	 16'sd 26058 * $signed(input_fmap_6[23:16]) +
	 15'sd 12489 * $signed(input_fmap_6[31:24]) +
	 13'sd 2902 * $signed(input_fmap_6[39:32]) +
	 16'sd 18311 * $signed(input_fmap_6[47:40]) +
	 11'sd 831 * $signed(input_fmap_6[55:48]) +
	 12'sd 1182 * $signed(input_fmap_6[63:56]) +
	 12'sd 1569 * $signed(input_fmap_6[71:64]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 15'sd 14217 * $signed(input_fmap_7[7:0]) +
	 16'sd 29411 * $signed(input_fmap_7[15:8]) +
	 15'sd 10906 * $signed(input_fmap_7[23:16]) +
	 16'sd 17697 * $signed(input_fmap_7[31:24]) +
	 16'sd 30978 * $signed(input_fmap_7[39:32]) +
	 15'sd 9413 * $signed(input_fmap_7[47:40]) +
	 15'sd 13815 * $signed(input_fmap_7[55:48]) +
	 15'sd 10031 * $signed(input_fmap_7[63:56]) +
	 11'sd 863 * $signed(input_fmap_7[71:64]);

logic signed [31:0] dw_conv_mac_8;
assign dw_conv_mac_8 = 
	 15'sd 10800 * $signed(input_fmap_8[7:0]) +
	 15'sd 9977 * $signed(input_fmap_8[15:8]) +
	 16'sd 19336 * $signed(input_fmap_8[23:16]) +
	 16'sd 16717 * $signed(input_fmap_8[31:24]) +
	 16'sd 26876 * $signed(input_fmap_8[39:32]) +
	 16'sd 32539 * $signed(input_fmap_8[47:40]) +
	 16'sd 24989 * $signed(input_fmap_8[55:48]) +
	 15'sd 13035 * $signed(input_fmap_8[63:56]) +
	 14'sd 4497 * $signed(input_fmap_8[71:64]);

logic signed [31:0] dw_conv_mac_9;
assign dw_conv_mac_9 = 
	 16'sd 27556 * $signed(input_fmap_9[7:0]) +
	 16'sd 23855 * $signed(input_fmap_9[15:8]) +
	 14'sd 7766 * $signed(input_fmap_9[23:16]) +
	 14'sd 6079 * $signed(input_fmap_9[31:24]) +
	 16'sd 27107 * $signed(input_fmap_9[39:32]) +
	 16'sd 22102 * $signed(input_fmap_9[47:40]) +
	 16'sd 19348 * $signed(input_fmap_9[55:48]) +
	 15'sd 10588 * $signed(input_fmap_9[63:56]) +
	 16'sd 31417 * $signed(input_fmap_9[71:64]);

logic signed [31:0] dw_conv_mac_10;
assign dw_conv_mac_10 = 
	 15'sd 15477 * $signed(input_fmap_10[7:0]) +
	 15'sd 10253 * $signed(input_fmap_10[15:8]) +
	 14'sd 5814 * $signed(input_fmap_10[23:16]) +
	 14'sd 6402 * $signed(input_fmap_10[31:24]) +
	 16'sd 30044 * $signed(input_fmap_10[39:32]) +
	 15'sd 11361 * $signed(input_fmap_10[47:40]) +
	 16'sd 29813 * $signed(input_fmap_10[55:48]) +
	 11'sd 727 * $signed(input_fmap_10[63:56]) +
	 16'sd 25945 * $signed(input_fmap_10[71:64]);

logic signed [31:0] dw_conv_mac_11;
assign dw_conv_mac_11 = 
	 15'sd 15494 * $signed(input_fmap_11[7:0]) +
	 16'sd 22696 * $signed(input_fmap_11[15:8]) +
	 16'sd 25016 * $signed(input_fmap_11[23:16]) +
	 14'sd 4784 * $signed(input_fmap_11[31:24]) +
	 16'sd 28158 * $signed(input_fmap_11[39:32]) +
	 14'sd 6438 * $signed(input_fmap_11[47:40]) +
	 13'sd 2817 * $signed(input_fmap_11[55:48]) +
	 16'sd 24244 * $signed(input_fmap_11[63:56]) +
	 15'sd 8961 * $signed(input_fmap_11[71:64]);

logic signed [31:0] dw_conv_mac_12;
assign dw_conv_mac_12 = 
	 11'sd 747 * $signed(input_fmap_12[7:0]) +
	 15'sd 8978 * $signed(input_fmap_12[15:8]) +
	 15'sd 15014 * $signed(input_fmap_12[23:16]) +
	 16'sd 23291 * $signed(input_fmap_12[31:24]) +
	 14'sd 7879 * $signed(input_fmap_12[39:32]) +
	 15'sd 11337 * $signed(input_fmap_12[47:40]) +
	 16'sd 26326 * $signed(input_fmap_12[55:48]) +
	 14'sd 7161 * $signed(input_fmap_12[63:56]) +
	 15'sd 12205 * $signed(input_fmap_12[71:64]);

logic signed [31:0] dw_conv_mac_13;
assign dw_conv_mac_13 = 
	 15'sd 14812 * $signed(input_fmap_13[7:0]) +
	 16'sd 24258 * $signed(input_fmap_13[15:8]) +
	 15'sd 12802 * $signed(input_fmap_13[23:16]) +
	 16'sd 27861 * $signed(input_fmap_13[31:24]) +
	 15'sd 12538 * $signed(input_fmap_13[39:32]) +
	 15'sd 11877 * $signed(input_fmap_13[47:40]) +
	 16'sd 19890 * $signed(input_fmap_13[55:48]) +
	 15'sd 8518 * $signed(input_fmap_13[63:56]) +
	 11'sd 697 * $signed(input_fmap_13[71:64]);

logic signed [31:0] dw_conv_mac_14;
assign dw_conv_mac_14 = 
	 16'sd 23013 * $signed(input_fmap_14[7:0]) +
	 16'sd 16785 * $signed(input_fmap_14[15:8]) +
	 16'sd 32638 * $signed(input_fmap_14[23:16]) +
	 16'sd 24821 * $signed(input_fmap_14[31:24]) +
	 15'sd 12116 * $signed(input_fmap_14[39:32]) +
	 16'sd 23855 * $signed(input_fmap_14[47:40]) +
	 15'sd 11175 * $signed(input_fmap_14[55:48]) +
	 16'sd 17182 * $signed(input_fmap_14[63:56]) +
	 16'sd 30437 * $signed(input_fmap_14[71:64]);

logic signed [31:0] dw_conv_mac_15;
assign dw_conv_mac_15 = 
	 14'sd 4426 * $signed(input_fmap_15[7:0]) +
	 14'sd 4792 * $signed(input_fmap_15[15:8]) +
	 12'sd 1241 * $signed(input_fmap_15[23:16]) +
	 15'sd 11246 * $signed(input_fmap_15[31:24]) +
	 15'sd 9008 * $signed(input_fmap_15[39:32]) +
	 15'sd 15765 * $signed(input_fmap_15[47:40]) +
	 14'sd 8027 * $signed(input_fmap_15[55:48]) +
	 16'sd 20413 * $signed(input_fmap_15[63:56]) +
	 16'sd 27559 * $signed(input_fmap_15[71:64]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 16'd23398;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 16'd18646;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 15'd11244;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 16'd27709;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 15'd11167;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 15'd11371;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 16'd24333;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 13'd3048;
logic [31:0] bias_add_8;
assign bias_add_8 = dw_conv_mac_8 + 15'd14986;
logic [31:0] bias_add_9;
assign bias_add_9 = dw_conv_mac_9 + 13'd3876;
logic [31:0] bias_add_10;
assign bias_add_10 = dw_conv_mac_10 + 16'd23857;
logic [31:0] bias_add_11;
assign bias_add_11 = dw_conv_mac_11 + 15'd12313;
logic [31:0] bias_add_12;
assign bias_add_12 = dw_conv_mac_12 + 12'd1905;
logic [31:0] bias_add_13;
assign bias_add_13 = dw_conv_mac_13 + 13'd3272;
logic [31:0] bias_add_14;
assign bias_add_14 = dw_conv_mac_14 + 16'd23726;
logic [31:0] bias_add_15;
assign bias_add_15 = dw_conv_mac_15 + 16'd20216;

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

assign output_act = {
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
