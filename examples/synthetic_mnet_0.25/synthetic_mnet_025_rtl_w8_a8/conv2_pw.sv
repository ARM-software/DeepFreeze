module conv2_pw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [64-1:0] input_act,
    output logic [128-1:0] output_act,
    output logic ready
);

logic [64-1:0] input_act_ff;
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

logic signed [31:0] conv_mac_0;
assign conv_mac_0 = 
	( 8'sd 66) * $signed(input_fmap_0[7:0]) +
	( 8'sd 88) * $signed(input_fmap_1[7:0]) +
	( 7'sd 62) * $signed(input_fmap_2[7:0]) +
	( 8'sd 103) * $signed(input_fmap_3[7:0]) +
	( 8'sd 114) * $signed(input_fmap_4[7:0]) +
	( 7'sd 60) * $signed(input_fmap_5[7:0]) +
	( 8'sd 122) * $signed(input_fmap_6[7:0]) +
	( 8'sd 124) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 8'sd 115) * $signed(input_fmap_0[7:0]) +
	( 7'sd 58) * $signed(input_fmap_1[7:0]) +
	( 4'sd 5) * $signed(input_fmap_2[7:0]) +
	( 6'sd 17) * $signed(input_fmap_3[7:0]) +
	( 6'sd 27) * $signed(input_fmap_4[7:0]) +
	( 7'sd 58) * $signed(input_fmap_5[7:0]) +
	( 8'sd 127) * $signed(input_fmap_6[7:0]) +
	( 5'sd 8) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 5'sd 11) * $signed(input_fmap_0[7:0]) +
	( 8'sd 79) * $signed(input_fmap_1[7:0]) +
	( 8'sd 120) * $signed(input_fmap_2[7:0]) +
	( 4'sd 5) * $signed(input_fmap_3[7:0]) +
	( 8'sd 92) * $signed(input_fmap_4[7:0]) +
	( 6'sd 24) * $signed(input_fmap_5[7:0]) +
	( 8'sd 108) * $signed(input_fmap_6[7:0]) +
	( 6'sd 21) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 8'sd 65) * $signed(input_fmap_0[7:0]) +
	( 6'sd 16) * $signed(input_fmap_1[7:0]) +
	( 8'sd 122) * $signed(input_fmap_2[7:0]) +
	( 7'sd 57) * $signed(input_fmap_3[7:0]) +
	( 7'sd 54) * $signed(input_fmap_4[7:0]) +
	( 8'sd 121) * $signed(input_fmap_5[7:0]) +
	( 8'sd 80) * $signed(input_fmap_6[7:0]) +
	( 5'sd 9) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 5'sd 15) * $signed(input_fmap_0[7:0]) +
	( 7'sd 46) * $signed(input_fmap_1[7:0]) +
	( 8'sd 119) * $signed(input_fmap_2[7:0]) +
	( 5'sd 13) * $signed(input_fmap_3[7:0]) +
	( 8'sd 105) * $signed(input_fmap_4[7:0]) +
	( 7'sd 55) * $signed(input_fmap_5[7:0]) +
	( 5'sd 13) * $signed(input_fmap_6[7:0]) +
	( 7'sd 48) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 7'sd 35) * $signed(input_fmap_0[7:0]) +
	( 8'sd 105) * $signed(input_fmap_1[7:0]) +
	( 6'sd 17) * $signed(input_fmap_2[7:0]) +
	( 8'sd 96) * $signed(input_fmap_3[7:0]) +
	( 5'sd 10) * $signed(input_fmap_4[7:0]) +
	( 8'sd 87) * $signed(input_fmap_5[7:0]) +
	( 8'sd 115) * $signed(input_fmap_6[7:0]) +
	( 8'sd 91) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 5'sd 13) * $signed(input_fmap_0[7:0]) +
	( 8'sd 108) * $signed(input_fmap_1[7:0]) +
	( 7'sd 35) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_3[7:0]) +
	( 7'sd 56) * $signed(input_fmap_4[7:0]) +
	( 8'sd 88) * $signed(input_fmap_5[7:0]) +
	( 8'sd 67) * $signed(input_fmap_6[7:0]) +
	( 8'sd 84) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 8'sd 70) * $signed(input_fmap_0[7:0]) +
	( 8'sd 95) * $signed(input_fmap_1[7:0]) +
	( 8'sd 101) * $signed(input_fmap_2[7:0]) +
	( 8'sd 66) * $signed(input_fmap_3[7:0]) +
	( 8'sd 121) * $signed(input_fmap_4[7:0]) +
	( 8'sd 81) * $signed(input_fmap_5[7:0]) +
	( 6'sd 25) * $signed(input_fmap_6[7:0]) +
	( 6'sd 28) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_8;
assign conv_mac_8 = 
	( 6'sd 24) * $signed(input_fmap_0[7:0]) +
	( 8'sd 108) * $signed(input_fmap_1[7:0]) +
	( 7'sd 38) * $signed(input_fmap_2[7:0]) +
	( 8'sd 97) * $signed(input_fmap_3[7:0]) +
	( 7'sd 54) * $signed(input_fmap_4[7:0]) +
	( 7'sd 45) * $signed(input_fmap_5[7:0]) +
	( 8'sd 104) * $signed(input_fmap_6[7:0]) +
	( 8'sd 92) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_9;
assign conv_mac_9 = 
	( 8'sd 67) * $signed(input_fmap_0[7:0]) +
	( 7'sd 40) * $signed(input_fmap_1[7:0]) +
	( 6'sd 28) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_3[7:0]) +
	( 8'sd 78) * $signed(input_fmap_4[7:0]) +
	( 7'sd 53) * $signed(input_fmap_5[7:0]) +
	( 8'sd 98) * $signed(input_fmap_6[7:0]) +
	( 8'sd 93) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_10;
assign conv_mac_10 = 
	( 8'sd 102) * $signed(input_fmap_0[7:0]) +
	( 8'sd 87) * $signed(input_fmap_1[7:0]) +
	( 8'sd 102) * $signed(input_fmap_2[7:0]) +
	( 8'sd 79) * $signed(input_fmap_3[7:0]) +
	( 8'sd 111) * $signed(input_fmap_4[7:0]) +
	( 8'sd 84) * $signed(input_fmap_5[7:0]) +
	( 8'sd 65) * $signed(input_fmap_6[7:0]) +
	( 8'sd 91) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_11;
assign conv_mac_11 = 
	( 4'sd 6) * $signed(input_fmap_0[7:0]) +
	( 8'sd 118) * $signed(input_fmap_1[7:0]) +
	( 7'sd 51) * $signed(input_fmap_2[7:0]) +
	( 8'sd 113) * $signed(input_fmap_3[7:0]) +
	( 7'sd 37) * $signed(input_fmap_4[7:0]) +
	( 3'sd 2) * $signed(input_fmap_5[7:0]) +
	( 9'sd 128) * $signed(input_fmap_6[7:0]) +
	( 7'sd 50) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_12;
assign conv_mac_12 = 
	( 7'sd 52) * $signed(input_fmap_0[7:0]) +
	( 8'sd 73) * $signed(input_fmap_1[7:0]) +
	( 7'sd 53) * $signed(input_fmap_2[7:0]) +
	( 8'sd 109) * $signed(input_fmap_3[7:0]) +
	( 8'sd 123) * $signed(input_fmap_4[7:0]) +
	( 8'sd 117) * $signed(input_fmap_5[7:0]) +
	( 8'sd 119) * $signed(input_fmap_6[7:0]) +
	( 8'sd 124) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_13;
assign conv_mac_13 = 
	( 8'sd 124) * $signed(input_fmap_0[7:0]) +
	( 6'sd 26) * $signed(input_fmap_1[7:0]) +
	( 7'sd 52) * $signed(input_fmap_2[7:0]) +
	( 8'sd 77) * $signed(input_fmap_3[7:0]) +
	( 8'sd 107) * $signed(input_fmap_4[7:0]) +
	( 8'sd 80) * $signed(input_fmap_5[7:0]) +
	( 8'sd 97) * $signed(input_fmap_6[7:0]) +
	( 8'sd 102) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_14;
assign conv_mac_14 = 
	( 8'sd 74) * $signed(input_fmap_0[7:0]) +
	( 8'sd 111) * $signed(input_fmap_1[7:0]) +
	( 8'sd 73) * $signed(input_fmap_2[7:0]) +
	( 8'sd 97) * $signed(input_fmap_3[7:0]) +
	( 8'sd 83) * $signed(input_fmap_4[7:0]) +
	( 7'sd 63) * $signed(input_fmap_5[7:0]) +
	( 3'sd 3) * $signed(input_fmap_6[7:0]) +
	( 7'sd 55) * $signed(input_fmap_7[7:0]);

logic signed [31:0] conv_mac_15;
assign conv_mac_15 = 
	( 7'sd 47) * $signed(input_fmap_0[7:0]) +
	( 7'sd 57) * $signed(input_fmap_1[7:0]) +
	( 8'sd 124) * $signed(input_fmap_2[7:0]) +
	( 8'sd 110) * $signed(input_fmap_3[7:0]) +
	( 8'sd 124) * $signed(input_fmap_4[7:0]) +
	( 8'sd 80) * $signed(input_fmap_5[7:0]) +
	( 4'sd 4) * $signed(input_fmap_6[7:0]) +
	( 8'sd 69) * $signed(input_fmap_7[7:0]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 6'd26;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1 + 6'd16;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 7'd53;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3 + 8'd98;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4 + 8'd68;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5 + 8'd120;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6 + 8'd74;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7 + 8'd85;
logic [31:0] bias_add_8;
assign bias_add_8 = conv_mac_8 + 4'd5;
logic [31:0] bias_add_9;
assign bias_add_9 = conv_mac_9 + 8'd111;
logic [31:0] bias_add_10;
assign bias_add_10 = conv_mac_10 + 2'd1;
logic [31:0] bias_add_11;
assign bias_add_11 = conv_mac_11 + 6'd25;
logic [31:0] bias_add_12;
assign bias_add_12 = conv_mac_12 + 8'd77;
logic [31:0] bias_add_13;
assign bias_add_13 = conv_mac_13 + 8'd76;
logic [31:0] bias_add_14;
assign bias_add_14 = conv_mac_14 + 6'd27;
logic [31:0] bias_add_15;
assign bias_add_15 = conv_mac_15 + 3'd3;

logic [7:0] relu_0;
assign relu_0[7:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[13:7]}} :'d6) : '0;
logic [7:0] relu_1;
assign relu_1[7:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[13:7]}} :'d6) : '0;
logic [7:0] relu_2;
assign relu_2[7:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[13:7]}} :'d6) : '0;
logic [7:0] relu_3;
assign relu_3[7:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[13:7]}} :'d6) : '0;
logic [7:0] relu_4;
assign relu_4[7:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[13:7]}} :'d6) : '0;
logic [7:0] relu_5;
assign relu_5[7:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[13:7]}} :'d6) : '0;
logic [7:0] relu_6;
assign relu_6[7:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[13:7]}} :'d6) : '0;
logic [7:0] relu_7;
assign relu_7[7:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[13:7]}} :'d6) : '0;
logic [7:0] relu_8;
assign relu_8[7:0] = (bias_add_8[31]==0) ? ((bias_add_8<3'd6) ? {{bias_add_8[31],bias_add_8[13:7]}} :'d6) : '0;
logic [7:0] relu_9;
assign relu_9[7:0] = (bias_add_9[31]==0) ? ((bias_add_9<3'd6) ? {{bias_add_9[31],bias_add_9[13:7]}} :'d6) : '0;
logic [7:0] relu_10;
assign relu_10[7:0] = (bias_add_10[31]==0) ? ((bias_add_10<3'd6) ? {{bias_add_10[31],bias_add_10[13:7]}} :'d6) : '0;
logic [7:0] relu_11;
assign relu_11[7:0] = (bias_add_11[31]==0) ? ((bias_add_11<3'd6) ? {{bias_add_11[31],bias_add_11[13:7]}} :'d6) : '0;
logic [7:0] relu_12;
assign relu_12[7:0] = (bias_add_12[31]==0) ? ((bias_add_12<3'd6) ? {{bias_add_12[31],bias_add_12[13:7]}} :'d6) : '0;
logic [7:0] relu_13;
assign relu_13[7:0] = (bias_add_13[31]==0) ? ((bias_add_13<3'd6) ? {{bias_add_13[31],bias_add_13[13:7]}} :'d6) : '0;
logic [7:0] relu_14;
assign relu_14[7:0] = (bias_add_14[31]==0) ? ((bias_add_14<3'd6) ? {{bias_add_14[31],bias_add_14[13:7]}} :'d6) : '0;
logic [7:0] relu_15;
assign relu_15[7:0] = (bias_add_15[31]==0) ? ((bias_add_15<3'd6) ? {{bias_add_15[31],bias_add_15[13:7]}} :'d6) : '0;

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
