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
	 7'sd 63 * $signed(input_fmap_0[7:0]) +
	 8'sd 118 * $signed(input_fmap_0[15:8]) +
	 8'sd 116 * $signed(input_fmap_0[23:16]) +
	 8'sd 76 * $signed(input_fmap_0[31:24]) +
	 8'sd 120 * $signed(input_fmap_0[39:32]) +
	 8'sd 124 * $signed(input_fmap_0[47:40]) +
	 5'sd 8 * $signed(input_fmap_0[55:48]) +
	 7'sd 58 * $signed(input_fmap_0[63:56]) +
	 8'sd 87 * $signed(input_fmap_0[71:64]);

logic signed [31:0] dw_conv_mac_1;
assign dw_conv_mac_1 = 
	 8'sd 78 * $signed(input_fmap_1[7:0]) +
	 8'sd 102 * $signed(input_fmap_1[15:8]) +
	 8'sd 106 * $signed(input_fmap_1[23:16]) +
	 7'sd 52 * $signed(input_fmap_1[31:24]) +
	 8'sd 115 * $signed(input_fmap_1[39:32]) +
	 8'sd 124 * $signed(input_fmap_1[47:40]) +
	 8'sd 83 * $signed(input_fmap_1[55:48]) +
	 8'sd 123 * $signed(input_fmap_1[63:56]) +
	 6'sd 28 * $signed(input_fmap_1[71:64]);

logic signed [31:0] dw_conv_mac_2;
assign dw_conv_mac_2 = 
	 8'sd 124 * $signed(input_fmap_2[7:0]) +
	 8'sd 83 * $signed(input_fmap_2[15:8]) +
	 7'sd 39 * $signed(input_fmap_2[23:16]) +
	 8'sd 117 * $signed(input_fmap_2[31:24]) +
	 7'sd 49 * $signed(input_fmap_2[39:32]) +
	 8'sd 106 * $signed(input_fmap_2[47:40]) +
	 5'sd 12 * $signed(input_fmap_2[55:48]) +
	 7'sd 49 * $signed(input_fmap_2[63:56]) +
	 8'sd 68 * $signed(input_fmap_2[71:64]);

logic signed [31:0] dw_conv_mac_3;
assign dw_conv_mac_3 = 
	 8'sd 115 * $signed(input_fmap_3[7:0]) +
	 8'sd 82 * $signed(input_fmap_3[15:8]) +
	 8'sd 115 * $signed(input_fmap_3[23:16]) +
	 5'sd 12 * $signed(input_fmap_3[31:24]) +
	 6'sd 29 * $signed(input_fmap_3[39:32]) +
	 8'sd 126 * $signed(input_fmap_3[47:40]) +
	 5'sd 14 * $signed(input_fmap_3[55:48]) +
	 7'sd 58 * $signed(input_fmap_3[63:56]) +
	 8'sd 126 * $signed(input_fmap_3[71:64]);

logic signed [31:0] dw_conv_mac_4;
assign dw_conv_mac_4 = 
	 6'sd 30 * $signed(input_fmap_4[7:0]) +
	 8'sd 70 * $signed(input_fmap_4[15:8]) +
	 8'sd 118 * $signed(input_fmap_4[23:16]) +
	 7'sd 34 * $signed(input_fmap_4[31:24]) +
	 6'sd 18 * $signed(input_fmap_4[39:32]) +
	 8'sd 116 * $signed(input_fmap_4[47:40]) +
	 8'sd 67 * $signed(input_fmap_4[55:48]) +
	 6'sd 26 * $signed(input_fmap_4[63:56]) +
	 8'sd 115 * $signed(input_fmap_4[71:64]);

logic signed [31:0] dw_conv_mac_5;
assign dw_conv_mac_5 = 
	 8'sd 100 * $signed(input_fmap_5[7:0]) +
	 8'sd 114 * $signed(input_fmap_5[15:8]) +
	 7'sd 56 * $signed(input_fmap_5[23:16]) +
	 7'sd 39 * $signed(input_fmap_5[31:24]) +
	 6'sd 25 * $signed(input_fmap_5[39:32]) +
	 8'sd 93 * $signed(input_fmap_5[47:40]) +
	 7'sd 63 * $signed(input_fmap_5[55:48]) +
	 8'sd 88 * $signed(input_fmap_5[63:56]) +
	 5'sd 9 * $signed(input_fmap_5[71:64]);

logic signed [31:0] dw_conv_mac_6;
assign dw_conv_mac_6 = 
	 7'sd 42 * $signed(input_fmap_6[7:0]) +
	 8'sd 71 * $signed(input_fmap_6[15:8]) +
	 8'sd 96 * $signed(input_fmap_6[23:16]) +
	 8'sd 104 * $signed(input_fmap_6[31:24]) +
	 7'sd 46 * $signed(input_fmap_6[39:32]) +
	 8'sd 92 * $signed(input_fmap_6[47:40]) +
	 8'sd 127 * $signed(input_fmap_6[55:48]) +
	 7'sd 55 * $signed(input_fmap_6[63:56]) +
	 8'sd 114 * $signed(input_fmap_6[71:64]);

logic signed [31:0] dw_conv_mac_7;
assign dw_conv_mac_7 = 
	 8'sd 92 * $signed(input_fmap_7[7:0]) +
	 6'sd 26 * $signed(input_fmap_7[15:8]) +
	 8'sd 119 * $signed(input_fmap_7[23:16]) +
	 7'sd 45 * $signed(input_fmap_7[31:24]) +
	 8'sd 88 * $signed(input_fmap_7[39:32]) +
	 8'sd 117 * $signed(input_fmap_7[47:40]) +
	 7'sd 42 * $signed(input_fmap_7[55:48]) +
	 7'sd 35 * $signed(input_fmap_7[63:56]) +
	 7'sd 41 * $signed(input_fmap_7[71:64]);

logic [31:0] bias_add_0;
assign bias_add_0 = dw_conv_mac_0 + 5'd12;
logic [31:0] bias_add_1;
assign bias_add_1 = dw_conv_mac_1 + 7'd62;
logic [31:0] bias_add_2;
assign bias_add_2 = dw_conv_mac_2 + 7'd49;
logic [31:0] bias_add_3;
assign bias_add_3 = dw_conv_mac_3 + 8'd90;
logic [31:0] bias_add_4;
assign bias_add_4 = dw_conv_mac_4 + 7'd52;
logic [31:0] bias_add_5;
assign bias_add_5 = dw_conv_mac_5 + 8'd74;
logic [31:0] bias_add_6;
assign bias_add_6 = dw_conv_mac_6 + 8'd71;
logic [31:0] bias_add_7;
assign bias_add_7 = dw_conv_mac_7 + 7'd50;

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
