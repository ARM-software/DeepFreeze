module conv2_dw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [576-1:0] input_act,
    output logic [64-1:0] output_act,
    output logic ready
);

logic [576-1:0] input_act_ff;
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

logic signed [31:0] dw_conv_mac_0;
assign dw_conv_mac_0 = 
	 4'sd 4 * $signed(input_fmap_0[7:0]) +
	 4'sd 7 * $signed(input_fmap_0[15:8]) +
	 4'sd 7 * $signed(input_fmap_0[23:16]) +
	 4'sd 5 * $signed(input_fmap_0[31:24]) +
	 5'sd 8 * $signed(input_fmap_0[39:32]) +
	 5'sd 8 * $signed(input_fmap_0[47:40]) +
	 2'sd 1 * $signed(input_fmap_0[55:48]) +
	 4'sd 4 * $signed(input_fmap_0[63:56]) +
	 4'sd 5 * $signed(input_fmap_0[71:64]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 4'sd 5 * $signed(input_fmap_1[7:0]) +
	 4'sd 6 * $signed(input_fmap_1[15:8]) +
	 4'sd 7 * $signed(input_fmap_1[23:16]) +
	 3'sd 3 * $signed(input_fmap_1[31:24]) +
	 4'sd 7 * $signed(input_fmap_1[39:32]) +
	 5'sd 8 * $signed(input_fmap_1[47:40]) +
	 4'sd 5 * $signed(input_fmap_1[55:48]) +
	 5'sd 8 * $signed(input_fmap_1[63:56]) +
	 3'sd 2 * $signed(input_fmap_1[71:64]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 5'sd 8 * $signed(input_fmap_2[7:0]) +
	 4'sd 5 * $signed(input_fmap_2[15:8]) +
	 3'sd 2 * $signed(input_fmap_2[23:16]) +
	 4'sd 7 * $signed(input_fmap_2[31:24]) +
	 3'sd 3 * $signed(input_fmap_2[39:32]) +
	 4'sd 7 * $signed(input_fmap_2[47:40]) +
	 2'sd 1 * $signed(input_fmap_2[55:48]) +
	 3'sd 3 * $signed(input_fmap_2[63:56]) +
	 4'sd 4 * $signed(input_fmap_2[71:64]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 4'sd 7 * $signed(input_fmap_3[7:0]) +
	 4'sd 5 * $signed(input_fmap_3[15:8]) +
	 4'sd 7 * $signed(input_fmap_3[23:16]) +
	 2'sd 1 * $signed(input_fmap_3[31:24]) +
	 3'sd 2 * $signed(input_fmap_3[39:32]) +
	 5'sd 8 * $signed(input_fmap_3[47:40]) +
	 2'sd 1 * $signed(input_fmap_3[55:48]) +
	 4'sd 4 * $signed(input_fmap_3[63:56]) +
	 5'sd 8 * $signed(input_fmap_3[71:64]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 3'sd 2 * $signed(input_fmap_4[7:0]) +
	 4'sd 4 * $signed(input_fmap_4[15:8]) +
	 4'sd 7 * $signed(input_fmap_4[23:16]) +
	 3'sd 2 * $signed(input_fmap_4[31:24]) +
	 2'sd 1 * $signed(input_fmap_4[39:32]) +
	 4'sd 7 * $signed(input_fmap_4[47:40]) +
	 4'sd 4 * $signed(input_fmap_4[55:48]) +
	 3'sd 2 * $signed(input_fmap_4[63:56]) +
	 4'sd 7 * $signed(input_fmap_4[71:64]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 4'sd 6 * $signed(input_fmap_5[7:0]) +
	 4'sd 7 * $signed(input_fmap_5[15:8]) +
	 3'sd 3 * $signed(input_fmap_5[23:16]) +
	 3'sd 2 * $signed(input_fmap_5[31:24]) +
	 3'sd 2 * $signed(input_fmap_5[39:32]) +
	 4'sd 6 * $signed(input_fmap_5[47:40]) +
	 4'sd 4 * $signed(input_fmap_5[55:48]) +
	 4'sd 6 * $signed(input_fmap_5[63:56]) +
	 2'sd 1 * $signed(input_fmap_5[71:64]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 3'sd 3 * $signed(input_fmap_6[7:0]) +
	 4'sd 4 * $signed(input_fmap_6[15:8]) +
	 4'sd 6 * $signed(input_fmap_6[23:16]) +
	 4'sd 7 * $signed(input_fmap_6[31:24]) +
	 3'sd 3 * $signed(input_fmap_6[39:32]) +
	 4'sd 6 * $signed(input_fmap_6[47:40]) +
	 5'sd 8 * $signed(input_fmap_6[55:48]) +
	 3'sd 3 * $signed(input_fmap_6[63:56]) +
	 4'sd 7 * $signed(input_fmap_6[71:64]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 4'sd 6 * $signed(input_fmap_7[7:0]) +
	 3'sd 2 * $signed(input_fmap_7[15:8]) +
	 4'sd 7 * $signed(input_fmap_7[23:16]) +
	 3'sd 3 * $signed(input_fmap_7[31:24]) +
	 4'sd 5 * $signed(input_fmap_7[39:32]) +
	 4'sd 7 * $signed(input_fmap_7[47:40]) +
	 3'sd 3 * $signed(input_fmap_7[55:48]) +
	 3'sd 2 * $signed(input_fmap_7[63:56]) +
	 3'sd 3 * $signed(input_fmap_7[71:64]);

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

logic [7:0] relu_0;
assign relu_0[7:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[9:3]}} :'d6) : '0;
logic [7:0] relu_1;
assign relu_1[7:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[9:3]}} :'d6) : '0;
logic [7:0] relu_2;
assign relu_2[7:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[9:3]}} :'d6) : '0;
logic [7:0] relu_3;
assign relu_3[7:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[9:3]}} :'d6) : '0;
logic [7:0] relu_4;
assign relu_4[7:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[9:3]}} :'d6) : '0;
logic [7:0] relu_5;
assign relu_5[7:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[9:3]}} :'d6) : '0;
logic [7:0] relu_6;
assign relu_6[7:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[9:3]}} :'d6) : '0;
logic [7:0] relu_7;
assign relu_7[7:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[9:3]}} :'d6) : '0;

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
