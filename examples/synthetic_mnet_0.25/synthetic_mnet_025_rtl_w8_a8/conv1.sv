module conv1 (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [216-1:0] input_act,
    output logic [64-1:0] output_act,
    output logic ready
);

logic [216-1:0] input_act_ff;
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

logic signed [31:0] conv_mac_0;
assign conv_mac_0 = 
	( 6'sd 22) * $signed(input_fmap_0[7:0]) +
	( 8'sd 86) * $signed(input_fmap_0[15:8]) +
	( 8'sd 86) * $signed(input_fmap_0[23:16]) +
	( 6'sd 20) * $signed(input_fmap_0[31:24]) +
	( 7'sd 56) * $signed(input_fmap_0[39:32]) +
	( 8'sd 69) * $signed(input_fmap_0[47:40]) +
	( 8'sd 108) * $signed(input_fmap_0[55:48]) +
	( 7'sd 45) * $signed(input_fmap_0[63:56]) +
	( 8'sd 67) * $signed(input_fmap_0[71:64]) +
	( 4'sd 7) * $signed(input_fmap_1[7:0]) +
	( 8'sd 107) * $signed(input_fmap_1[15:8]) +
	( 3'sd 3) * $signed(input_fmap_1[23:16]) +
	( 8'sd 108) * $signed(input_fmap_1[31:24]) +
	( 7'sd 59) * $signed(input_fmap_1[39:32]) +
	( 8'sd 110) * $signed(input_fmap_1[47:40]) +
	( 8'sd 84) * $signed(input_fmap_1[55:48]) +
	( 4'sd 4) * $signed(input_fmap_1[63:56]) +
	( 7'sd 49) * $signed(input_fmap_1[71:64]) +
	( 7'sd 38) * $signed(input_fmap_2[7:0]) +
	( 7'sd 38) * $signed(input_fmap_2[15:8]) +
	( 8'sd 121) * $signed(input_fmap_2[23:16]) +
	( 8'sd 98) * $signed(input_fmap_2[31:24]) +
	( 7'sd 50) * $signed(input_fmap_2[39:32]) +
	( 9'sd 128) * $signed(input_fmap_2[47:40]) +
	( 3'sd 2) * $signed(input_fmap_2[55:48]) +
	( 8'sd 105) * $signed(input_fmap_2[63:56]) +
	( 8'sd 120) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 8'sd 75) * $signed(input_fmap_0[7:0]) +
	( 8'sd 122) * $signed(input_fmap_0[15:8]) +
	( 7'sd 60) * $signed(input_fmap_0[23:16]) +
	( 8'sd 81) * $signed(input_fmap_0[31:24]) +
	( 5'sd 9) * $signed(input_fmap_0[39:32]) +
	( 8'sd 88) * $signed(input_fmap_0[47:40]) +
	( 7'sd 63) * $signed(input_fmap_0[55:48]) +
	( 5'sd 13) * $signed(input_fmap_0[63:56]) +
	( 7'sd 60) * $signed(input_fmap_0[71:64]) +
	( 8'sd 64) * $signed(input_fmap_1[7:0]) +
	( 6'sd 30) * $signed(input_fmap_1[15:8]) +
	( 8'sd 71) * $signed(input_fmap_1[23:16]) +
	( 7'sd 36) * $signed(input_fmap_1[31:24]) +
	( 8'sd 116) * $signed(input_fmap_1[39:32]) +
	( 8'sd 111) * $signed(input_fmap_1[47:40]) +
	( 8'sd 82) * $signed(input_fmap_1[55:48]) +
	( 7'sd 50) * $signed(input_fmap_1[63:56]) +
	( 6'sd 23) * $signed(input_fmap_1[71:64]) +
	( 7'sd 33) * $signed(input_fmap_2[7:0]) +
	( 6'sd 16) * $signed(input_fmap_2[15:8]) +
	( 8'sd 100) * $signed(input_fmap_2[23:16]) +
	( 8'sd 68) * $signed(input_fmap_2[31:24]) +
	( 8'sd 75) * $signed(input_fmap_2[39:32]) +
	( 8'sd 115) * $signed(input_fmap_2[47:40]) +
	( 5'sd 10) * $signed(input_fmap_2[55:48]) +
	( 7'sd 47) * $signed(input_fmap_2[63:56]) +
	( 8'sd 94) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 5'sd 8) * $signed(input_fmap_0[7:0]) +
	( 8'sd 78) * $signed(input_fmap_0[15:8]) +
	( 8'sd 100) * $signed(input_fmap_0[23:16]) +
	( 5'sd 15) * $signed(input_fmap_0[31:24]) +
	( 8'sd 111) * $signed(input_fmap_0[39:32]) +
	( 5'sd 13) * $signed(input_fmap_0[47:40]) +
	( 7'sd 57) * $signed(input_fmap_0[55:48]) +
	( 8'sd 66) * $signed(input_fmap_0[63:56]) +
	( 7'sd 41) * $signed(input_fmap_0[71:64]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 8'sd 104) * $signed(input_fmap_1[15:8]) +
	( 7'sd 54) * $signed(input_fmap_1[23:16]) +
	( 7'sd 42) * $signed(input_fmap_1[31:24]) +
	( 8'sd 90) * $signed(input_fmap_1[39:32]) +
	( 8'sd 95) * $signed(input_fmap_1[47:40]) +
	( 7'sd 54) * $signed(input_fmap_1[55:48]) +
	( 8'sd 93) * $signed(input_fmap_1[63:56]) +
	( 8'sd 113) * $signed(input_fmap_1[71:64]) +
	( 6'sd 30) * $signed(input_fmap_2[7:0]) +
	( 8'sd 110) * $signed(input_fmap_2[15:8]) +
	( 8'sd 96) * $signed(input_fmap_2[23:16]) +
	( 8'sd 78) * $signed(input_fmap_2[31:24]) +
	( 8'sd 66) * $signed(input_fmap_2[39:32]) +
	( 4'sd 6) * $signed(input_fmap_2[47:40]) +
	( 8'sd 122) * $signed(input_fmap_2[55:48]) +
	( 8'sd 108) * $signed(input_fmap_2[63:56]) +
	( 6'sd 17) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 8'sd 111) * $signed(input_fmap_0[7:0]) +
	( 8'sd 75) * $signed(input_fmap_0[15:8]) +
	( 8'sd 122) * $signed(input_fmap_0[23:16]) +
	( 8'sd 75) * $signed(input_fmap_0[31:24]) +
	( 8'sd 67) * $signed(input_fmap_0[39:32]) +
	( 7'sd 53) * $signed(input_fmap_0[47:40]) +
	( 5'sd 10) * $signed(input_fmap_0[55:48]) +
	( 8'sd 83) * $signed(input_fmap_0[63:56]) +
	( 3'sd 2) * $signed(input_fmap_0[71:64]) +
	( 7'sd 40) * $signed(input_fmap_1[7:0]) +
	( 7'sd 46) * $signed(input_fmap_1[15:8]) +
	( 8'sd 84) * $signed(input_fmap_1[23:16]) +
	( 8'sd 99) * $signed(input_fmap_1[31:24]) +
	( 7'sd 53) * $signed(input_fmap_1[39:32]) +
	( 8'sd 118) * $signed(input_fmap_1[47:40]) +
	( 5'sd 12) * $signed(input_fmap_1[55:48]) +
	( 6'sd 29) * $signed(input_fmap_1[63:56]) +
	( 7'sd 39) * $signed(input_fmap_1[71:64]) +
	( 8'sd 100) * $signed(input_fmap_2[7:0]) +
	( 8'sd 105) * $signed(input_fmap_2[15:8]) +
	( 8'sd 116) * $signed(input_fmap_2[23:16]) +
	( 7'sd 36) * $signed(input_fmap_2[31:24]) +
	( 8'sd 113) * $signed(input_fmap_2[39:32]) +
	( 8'sd 112) * $signed(input_fmap_2[47:40]) +
	( 8'sd 110) * $signed(input_fmap_2[55:48]) +
	( 8'sd 93) * $signed(input_fmap_2[63:56]) +
	( 8'sd 71) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 8'sd 95) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_0[15:8]) +
	( 7'sd 53) * $signed(input_fmap_0[23:16]) +
	( 7'sd 42) * $signed(input_fmap_0[31:24]) +
	( 7'sd 59) * $signed(input_fmap_0[39:32]) +
	( 8'sd 126) * $signed(input_fmap_0[47:40]) +
	( 9'sd 128) * $signed(input_fmap_0[55:48]) +
	( 8'sd 80) * $signed(input_fmap_0[63:56]) +
	( 8'sd 109) * $signed(input_fmap_0[71:64]) +
	( 7'sd 53) * $signed(input_fmap_1[7:0]) +
	( 7'sd 46) * $signed(input_fmap_1[15:8]) +
	( 8'sd 112) * $signed(input_fmap_1[23:16]) +
	( 8'sd 121) * $signed(input_fmap_1[31:24]) +
	( 4'sd 5) * $signed(input_fmap_1[39:32]) +
	( 8'sd 70) * $signed(input_fmap_1[47:40]) +
	( 8'sd 83) * $signed(input_fmap_1[55:48]) +
	( 8'sd 108) * $signed(input_fmap_1[63:56]) +
	( 8'sd 89) * $signed(input_fmap_1[71:64]) +
	( 8'sd 65) * $signed(input_fmap_2[7:0]) +
	( 7'sd 47) * $signed(input_fmap_2[15:8]) +
	( 7'sd 47) * $signed(input_fmap_2[23:16]) +
	( 8'sd 127) * $signed(input_fmap_2[31:24]) +
	( 7'sd 45) * $signed(input_fmap_2[39:32]) +
	( 8'sd 80) * $signed(input_fmap_2[47:40]) +
	( 7'sd 47) * $signed(input_fmap_2[55:48]) +
	( 8'sd 65) * $signed(input_fmap_2[63:56]) +
	( 8'sd 124) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 6'sd 18) * $signed(input_fmap_0[7:0]) +
	( 3'sd 3) * $signed(input_fmap_0[15:8]) +
	( 6'sd 23) * $signed(input_fmap_0[23:16]) +
	( 6'sd 18) * $signed(input_fmap_0[31:24]) +
	( 6'sd 31) * $signed(input_fmap_0[39:32]) +
	( 2'sd 1) * $signed(input_fmap_0[47:40]) +
	( 8'sd 97) * $signed(input_fmap_0[55:48]) +
	( 8'sd 79) * $signed(input_fmap_0[63:56]) +
	( 4'sd 4) * $signed(input_fmap_0[71:64]) +
	( 5'sd 11) * $signed(input_fmap_1[7:0]) +
	( 7'sd 32) * $signed(input_fmap_1[15:8]) +
	( 5'sd 15) * $signed(input_fmap_1[23:16]) +
	( 8'sd 76) * $signed(input_fmap_1[31:24]) +
	( 7'sd 51) * $signed(input_fmap_1[39:32]) +
	( 7'sd 58) * $signed(input_fmap_1[47:40]) +
	( 7'sd 62) * $signed(input_fmap_1[55:48]) +
	( 7'sd 56) * $signed(input_fmap_1[63:56]) +
	( 8'sd 93) * $signed(input_fmap_1[71:64]) +
	( 7'sd 61) * $signed(input_fmap_2[7:0]) +
	( 7'sd 56) * $signed(input_fmap_2[15:8]) +
	( 8'sd 110) * $signed(input_fmap_2[23:16]) +
	( 6'sd 28) * $signed(input_fmap_2[31:24]) +
	( 7'sd 53) * $signed(input_fmap_2[39:32]) +
	( 8'sd 108) * $signed(input_fmap_2[47:40]) +
	( 4'sd 4) * $signed(input_fmap_2[55:48]) +
	( 8'sd 82) * $signed(input_fmap_2[63:56]) +
	( 8'sd 96) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 6'sd 21) * $signed(input_fmap_0[7:0]) +
	( 8'sd 121) * $signed(input_fmap_0[15:8]) +
	( 8'sd 107) * $signed(input_fmap_0[23:16]) +
	( 8'sd 98) * $signed(input_fmap_0[31:24]) +
	( 8'sd 92) * $signed(input_fmap_0[39:32]) +
	( 8'sd 126) * $signed(input_fmap_0[47:40]) +
	( 8'sd 86) * $signed(input_fmap_0[55:48]) +
	( 4'sd 7) * $signed(input_fmap_0[63:56]) +
	( 8'sd 92) * $signed(input_fmap_0[71:64]) +
	( 5'sd 13) * $signed(input_fmap_1[7:0]) +
	( 8'sd 97) * $signed(input_fmap_1[15:8]) +
	( 8'sd 106) * $signed(input_fmap_1[23:16]) +
	( 6'sd 27) * $signed(input_fmap_1[31:24]) +
	( 7'sd 32) * $signed(input_fmap_1[39:32]) +
	( 7'sd 33) * $signed(input_fmap_1[47:40]) +
	( 8'sd 81) * $signed(input_fmap_1[55:48]) +
	( 7'sd 53) * $signed(input_fmap_1[63:56]) +
	( 6'sd 25) * $signed(input_fmap_1[71:64]) +
	( 6'sd 29) * $signed(input_fmap_2[7:0]) +
	( 6'sd 28) * $signed(input_fmap_2[15:8]) +
	( 6'sd 30) * $signed(input_fmap_2[23:16]) +
	( 6'sd 16) * $signed(input_fmap_2[31:24]) +
	( 8'sd 88) * $signed(input_fmap_2[39:32]) +
	( 5'sd 13) * $signed(input_fmap_2[47:40]) +
	( 7'sd 42) * $signed(input_fmap_2[55:48]) +
	( 5'sd 10) * $signed(input_fmap_2[63:56]) +
	( 8'sd 86) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 5'sd 9) * $signed(input_fmap_0[7:0]) +
	( 8'sd 75) * $signed(input_fmap_0[15:8]) +
	( 7'sd 34) * $signed(input_fmap_0[23:16]) +
	( 8'sd 127) * $signed(input_fmap_0[31:24]) +
	( 6'sd 17) * $signed(input_fmap_0[39:32]) +
	( 8'sd 98) * $signed(input_fmap_0[47:40]) +
	( 7'sd 60) * $signed(input_fmap_0[55:48]) +
	( 8'sd 90) * $signed(input_fmap_0[63:56]) +
	( 8'sd 81) * $signed(input_fmap_0[71:64]) +
	( 8'sd 117) * $signed(input_fmap_1[7:0]) +
	( 8'sd 105) * $signed(input_fmap_1[15:8]) +
	( 4'sd 5) * $signed(input_fmap_1[23:16]) +
	( 8'sd 123) * $signed(input_fmap_1[31:24]) +
	( 8'sd 106) * $signed(input_fmap_1[39:32]) +
	( 8'sd 72) * $signed(input_fmap_1[47:40]) +
	( 6'sd 27) * $signed(input_fmap_1[55:48]) +
	( 7'sd 53) * $signed(input_fmap_1[63:56]) +
	( 7'sd 39) * $signed(input_fmap_1[71:64]) +
	( 8'sd 99) * $signed(input_fmap_2[7:0]) +
	( 7'sd 51) * $signed(input_fmap_2[15:8]) +
	( 8'sd 124) * $signed(input_fmap_2[23:16]) +
	( 8'sd 81) * $signed(input_fmap_2[31:24]) +
	( 5'sd 13) * $signed(input_fmap_2[39:32]) +
	( 8'sd 107) * $signed(input_fmap_2[47:40]) +
	( 4'sd 7) * $signed(input_fmap_2[55:48]) +
	( 8'sd 80) * $signed(input_fmap_2[63:56]) +
	( 8'sd 65) * $signed(input_fmap_2[71:64]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 7'd51;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1 + 7'd34;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 7'd35;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3 + 8'd127;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4 + 8'd74;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5 + 8'd87;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6 + 5'd12;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7 + 7'd47;

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

assign output_act = {
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
