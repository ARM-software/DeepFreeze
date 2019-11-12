module conv2_dw (
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

logic signed [31:0] dw_conv_mac_0;
assign dw_conv_mac_0 = 
	 15'sd 16046 * $signed(input_fmap_0[15:0]) +
	 16'sd 30296 * $signed(input_fmap_0[31:16]) +
	 16'sd 29798 * $signed(input_fmap_0[47:32]) +
	 16'sd 19452 * $signed(input_fmap_0[63:48]) +
	 16'sd 30722 * $signed(input_fmap_0[79:64]) +
	 16'sd 31702 * $signed(input_fmap_0[95:80]) +
	 13'sd 2106 * $signed(input_fmap_0[111:96]) +
	 15'sd 14768 * $signed(input_fmap_0[127:112]) +
	 16'sd 22149 * $signed(input_fmap_0[143:128]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 16'sd 19866 * $signed(input_fmap_1[15:0]) +
	 16'sd 26188 * $signed(input_fmap_1[31:16]) +
	 16'sd 27102 * $signed(input_fmap_1[47:32]) +
	 15'sd 13224 * $signed(input_fmap_1[63:48]) +
	 16'sd 29360 * $signed(input_fmap_1[79:64]) +
	 16'sd 31822 * $signed(input_fmap_1[95:80]) +
	 16'sd 21135 * $signed(input_fmap_1[111:96]) +
	 16'sd 31607 * $signed(input_fmap_1[127:112]) +
	 14'sd 7082 * $signed(input_fmap_1[143:128]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 16'sd 31663 * $signed(input_fmap_2[15:0]) +
	 16'sd 21297 * $signed(input_fmap_2[31:16]) +
	 15'sd 10086 * $signed(input_fmap_2[47:32]) +
	 16'sd 29999 * $signed(input_fmap_2[63:48]) +
	 15'sd 12418 * $signed(input_fmap_2[79:64]) +
	 16'sd 27241 * $signed(input_fmap_2[95:80]) +
	 13'sd 3054 * $signed(input_fmap_2[111:96]) +
	 15'sd 12426 * $signed(input_fmap_2[127:112]) +
	 16'sd 17448 * $signed(input_fmap_2[143:128]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 16'sd 29483 * $signed(input_fmap_3[15:0]) +
	 16'sd 21008 * $signed(input_fmap_3[31:16]) +
	 16'sd 29510 * $signed(input_fmap_3[47:32]) +
	 13'sd 3148 * $signed(input_fmap_3[63:48]) +
	 14'sd 7401 * $signed(input_fmap_3[79:64]) +
	 16'sd 32318 * $signed(input_fmap_3[95:80]) +
	 13'sd 3628 * $signed(input_fmap_3[111:96]) +
	 15'sd 14956 * $signed(input_fmap_3[127:112]) +
	 16'sd 32311 * $signed(input_fmap_3[143:128]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 14'sd 7655 * $signed(input_fmap_4[15:0]) +
	 16'sd 17792 * $signed(input_fmap_4[31:16]) +
	 16'sd 30097 * $signed(input_fmap_4[47:32]) +
	 15'sd 8787 * $signed(input_fmap_4[63:48]) +
	 14'sd 4545 * $signed(input_fmap_4[79:64]) +
	 16'sd 29665 * $signed(input_fmap_4[95:80]) +
	 16'sd 17190 * $signed(input_fmap_4[111:96]) +
	 14'sd 6771 * $signed(input_fmap_4[127:112]) +
	 16'sd 29330 * $signed(input_fmap_4[143:128]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 16'sd 25565 * $signed(input_fmap_5[15:0]) +
	 16'sd 29199 * $signed(input_fmap_5[31:16]) +
	 15'sd 14285 * $signed(input_fmap_5[47:32]) +
	 15'sd 10002 * $signed(input_fmap_5[63:48]) +
	 14'sd 6421 * $signed(input_fmap_5[79:64]) +
	 16'sd 23745 * $signed(input_fmap_5[95:80]) +
	 15'sd 16186 * $signed(input_fmap_5[111:96]) +
	 16'sd 22617 * $signed(input_fmap_5[127:112]) +
	 13'sd 2408 * $signed(input_fmap_5[143:128]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 15'sd 10685 * $signed(input_fmap_6[15:0]) +
	 16'sd 18227 * $signed(input_fmap_6[31:16]) +
	 16'sd 24541 * $signed(input_fmap_6[47:32]) +
	 16'sd 26740 * $signed(input_fmap_6[63:48]) +
	 15'sd 11835 * $signed(input_fmap_6[79:64]) +
	 16'sd 23612 * $signed(input_fmap_6[95:80]) +
	 16'sd 32426 * $signed(input_fmap_6[111:96]) +
	 15'sd 14065 * $signed(input_fmap_6[127:112]) +
	 16'sd 29058 * $signed(input_fmap_6[143:128]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 16'sd 23659 * $signed(input_fmap_7[15:0]) +
	 14'sd 6639 * $signed(input_fmap_7[31:16]) +
	 16'sd 30441 * $signed(input_fmap_7[47:32]) +
	 15'sd 11436 * $signed(input_fmap_7[63:48]) +
	 16'sd 22500 * $signed(input_fmap_7[79:64]) +
	 16'sd 29906 * $signed(input_fmap_7[95:80]) +
	 15'sd 10818 * $signed(input_fmap_7[111:96]) +
	 15'sd 8995 * $signed(input_fmap_7[127:112]) +
	 15'sd 10495 * $signed(input_fmap_7[143:128]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 13'd2964;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 15'd15756;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 15'd12670;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 16'd23166;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 15'd13363;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 16'd18913;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 16'd18081;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 15'd12782;

logic [15:0] relu_0;
assign relu_0[15:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[29:15]}} :'d6) : '0;
logic [15:0] relu_1;
assign relu_1[15:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[29:15]}} :'d6) : '0;
logic [15:0] relu_2;
assign relu_2[15:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[29:15]}} :'d6) : '0;
logic [15:0] relu_3;
assign relu_3[15:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[29:15]}} :'d6) : '0;
logic [15:0] relu_4;
assign relu_4[15:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[29:15]}} :'d6) : '0;
logic [15:0] relu_5;
assign relu_5[15:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[29:15]}} :'d6) : '0;
logic [15:0] relu_6;
assign relu_6[15:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[29:15]}} :'d6) : '0;
logic [15:0] relu_7;
assign relu_7[15:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[29:15]}} :'d6) : '0;

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
