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
	 4'sd 4 * $signed(input_fmap_0[15:0]) +
	 4'sd 7 * $signed(input_fmap_0[31:16]) +
	 4'sd 7 * $signed(input_fmap_0[47:32]) +
	 4'sd 5 * $signed(input_fmap_0[63:48]) +
	 5'sd 8 * $signed(input_fmap_0[79:64]) +
	 5'sd 8 * $signed(input_fmap_0[95:80]) +
	 2'sd 1 * $signed(input_fmap_0[111:96]) +
	 4'sd 4 * $signed(input_fmap_0[127:112]) +
	 4'sd 5 * $signed(input_fmap_0[143:128]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 4'sd 5 * $signed(input_fmap_1[15:0]) +
	 4'sd 6 * $signed(input_fmap_1[31:16]) +
	 4'sd 7 * $signed(input_fmap_1[47:32]) +
	 3'sd 3 * $signed(input_fmap_1[63:48]) +
	 4'sd 7 * $signed(input_fmap_1[79:64]) +
	 5'sd 8 * $signed(input_fmap_1[95:80]) +
	 4'sd 5 * $signed(input_fmap_1[111:96]) +
	 5'sd 8 * $signed(input_fmap_1[127:112]) +
	 3'sd 2 * $signed(input_fmap_1[143:128]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 5'sd 8 * $signed(input_fmap_2[15:0]) +
	 4'sd 5 * $signed(input_fmap_2[31:16]) +
	 3'sd 2 * $signed(input_fmap_2[47:32]) +
	 4'sd 7 * $signed(input_fmap_2[63:48]) +
	 3'sd 3 * $signed(input_fmap_2[79:64]) +
	 4'sd 7 * $signed(input_fmap_2[95:80]) +
	 2'sd 1 * $signed(input_fmap_2[111:96]) +
	 3'sd 3 * $signed(input_fmap_2[127:112]) +
	 4'sd 4 * $signed(input_fmap_2[143:128]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 4'sd 7 * $signed(input_fmap_3[15:0]) +
	 4'sd 5 * $signed(input_fmap_3[31:16]) +
	 4'sd 7 * $signed(input_fmap_3[47:32]) +
	 2'sd 1 * $signed(input_fmap_3[63:48]) +
	 3'sd 2 * $signed(input_fmap_3[79:64]) +
	 5'sd 8 * $signed(input_fmap_3[95:80]) +
	 2'sd 1 * $signed(input_fmap_3[111:96]) +
	 4'sd 4 * $signed(input_fmap_3[127:112]) +
	 5'sd 8 * $signed(input_fmap_3[143:128]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 3'sd 2 * $signed(input_fmap_4[15:0]) +
	 4'sd 4 * $signed(input_fmap_4[31:16]) +
	 4'sd 7 * $signed(input_fmap_4[47:32]) +
	 3'sd 2 * $signed(input_fmap_4[63:48]) +
	 2'sd 1 * $signed(input_fmap_4[79:64]) +
	 4'sd 7 * $signed(input_fmap_4[95:80]) +
	 4'sd 4 * $signed(input_fmap_4[111:96]) +
	 3'sd 2 * $signed(input_fmap_4[127:112]) +
	 4'sd 7 * $signed(input_fmap_4[143:128]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 4'sd 6 * $signed(input_fmap_5[15:0]) +
	 4'sd 7 * $signed(input_fmap_5[31:16]) +
	 3'sd 3 * $signed(input_fmap_5[47:32]) +
	 3'sd 2 * $signed(input_fmap_5[63:48]) +
	 3'sd 2 * $signed(input_fmap_5[79:64]) +
	 4'sd 6 * $signed(input_fmap_5[95:80]) +
	 4'sd 4 * $signed(input_fmap_5[111:96]) +
	 4'sd 6 * $signed(input_fmap_5[127:112]) +
	 2'sd 1 * $signed(input_fmap_5[143:128]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 3'sd 3 * $signed(input_fmap_6[15:0]) +
	 4'sd 4 * $signed(input_fmap_6[31:16]) +
	 4'sd 6 * $signed(input_fmap_6[47:32]) +
	 4'sd 7 * $signed(input_fmap_6[63:48]) +
	 3'sd 3 * $signed(input_fmap_6[79:64]) +
	 4'sd 6 * $signed(input_fmap_6[95:80]) +
	 5'sd 8 * $signed(input_fmap_6[111:96]) +
	 3'sd 3 * $signed(input_fmap_6[127:112]) +
	 4'sd 7 * $signed(input_fmap_6[143:128]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 4'sd 6 * $signed(input_fmap_7[15:0]) +
	 3'sd 2 * $signed(input_fmap_7[31:16]) +
	 4'sd 7 * $signed(input_fmap_7[47:32]) +
	 3'sd 3 * $signed(input_fmap_7[63:48]) +
	 4'sd 5 * $signed(input_fmap_7[79:64]) +
	 4'sd 7 * $signed(input_fmap_7[95:80]) +
	 3'sd 3 * $signed(input_fmap_7[111:96]) +
	 3'sd 2 * $signed(input_fmap_7[127:112]) +
	 3'sd 3 * $signed(input_fmap_7[143:128]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 2'd1;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 4'd4;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 3'd3;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 4'd6;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 3'd3;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 4'd5;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 4'd4;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 3'd3;

logic [15:0] relu_0;
assign relu_0[15:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[17:3]}} :'d6) : '0;
logic [15:0] relu_1;
assign relu_1[15:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[17:3]}} :'d6) : '0;
logic [15:0] relu_2;
assign relu_2[15:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[17:3]}} :'d6) : '0;
logic [15:0] relu_3;
assign relu_3[15:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[17:3]}} :'d6) : '0;
logic [15:0] relu_4;
assign relu_4[15:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[17:3]}} :'d6) : '0;
logic [15:0] relu_5;
assign relu_5[15:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[17:3]}} :'d6) : '0;
logic [15:0] relu_6;
assign relu_6[15:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[17:3]}} :'d6) : '0;
logic [15:0] relu_7;
assign relu_7[15:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[17:3]}} :'d6) : '0;

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
