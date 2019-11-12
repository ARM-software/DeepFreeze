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
	( 2'sd 1) * $signed(input_fmap_0[15:8]) +
	( 2'sd 1) * $signed(input_fmap_0[23:16]) +
	( 2'sd 1) * $signed(input_fmap_0[39:32]) +
	( 2'sd 1) * $signed(input_fmap_0[47:40]) +
	( 3'sd 2) * $signed(input_fmap_0[55:48]) +
	( 2'sd 1) * $signed(input_fmap_0[63:56]) +
	( 2'sd 1) * $signed(input_fmap_0[71:64]) +
	( 3'sd 2) * $signed(input_fmap_1[15:8]) +
	( 3'sd 2) * $signed(input_fmap_1[31:24]) +
	( 2'sd 1) * $signed(input_fmap_1[39:32]) +
	( 3'sd 2) * $signed(input_fmap_1[47:40]) +
	( 2'sd 1) * $signed(input_fmap_1[55:48]) +
	( 2'sd 1) * $signed(input_fmap_1[71:64]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:8]) +
	( 3'sd 2) * $signed(input_fmap_2[23:16]) +
	( 3'sd 2) * $signed(input_fmap_2[31:24]) +
	( 2'sd 1) * $signed(input_fmap_2[39:32]) +
	( 3'sd 2) * $signed(input_fmap_2[47:40]) +
	( 3'sd 2) * $signed(input_fmap_2[63:56]) +
	( 3'sd 2) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 3'sd 2) * $signed(input_fmap_0[15:8]) +
	( 2'sd 1) * $signed(input_fmap_0[23:16]) +
	( 2'sd 1) * $signed(input_fmap_0[31:24]) +
	( 2'sd 1) * $signed(input_fmap_0[47:40]) +
	( 2'sd 1) * $signed(input_fmap_0[55:48]) +
	( 2'sd 1) * $signed(input_fmap_0[71:64]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[23:16]) +
	( 2'sd 1) * $signed(input_fmap_1[31:24]) +
	( 3'sd 2) * $signed(input_fmap_1[39:32]) +
	( 3'sd 2) * $signed(input_fmap_1[47:40]) +
	( 2'sd 1) * $signed(input_fmap_1[55:48]) +
	( 2'sd 1) * $signed(input_fmap_1[63:56]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[23:16]) +
	( 2'sd 1) * $signed(input_fmap_2[31:24]) +
	( 2'sd 1) * $signed(input_fmap_2[39:32]) +
	( 3'sd 2) * $signed(input_fmap_2[47:40]) +
	( 2'sd 1) * $signed(input_fmap_2[63:56]) +
	( 2'sd 1) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 2'sd 1) * $signed(input_fmap_0[15:8]) +
	( 3'sd 2) * $signed(input_fmap_0[23:16]) +
	( 3'sd 2) * $signed(input_fmap_0[39:32]) +
	( 2'sd 1) * $signed(input_fmap_0[55:48]) +
	( 2'sd 1) * $signed(input_fmap_0[63:56]) +
	( 2'sd 1) * $signed(input_fmap_0[71:64]) +
	( 3'sd 2) * $signed(input_fmap_1[15:8]) +
	( 2'sd 1) * $signed(input_fmap_1[23:16]) +
	( 2'sd 1) * $signed(input_fmap_1[31:24]) +
	( 2'sd 1) * $signed(input_fmap_1[39:32]) +
	( 2'sd 1) * $signed(input_fmap_1[47:40]) +
	( 2'sd 1) * $signed(input_fmap_1[55:48]) +
	( 2'sd 1) * $signed(input_fmap_1[63:56]) +
	( 3'sd 2) * $signed(input_fmap_1[71:64]) +
	( 3'sd 2) * $signed(input_fmap_2[15:8]) +
	( 3'sd 2) * $signed(input_fmap_2[23:16]) +
	( 2'sd 1) * $signed(input_fmap_2[31:24]) +
	( 2'sd 1) * $signed(input_fmap_2[39:32]) +
	( 3'sd 2) * $signed(input_fmap_2[55:48]) +
	( 3'sd 2) * $signed(input_fmap_2[63:56]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 3'sd 2) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_0[15:8]) +
	( 3'sd 2) * $signed(input_fmap_0[23:16]) +
	( 2'sd 1) * $signed(input_fmap_0[31:24]) +
	( 2'sd 1) * $signed(input_fmap_0[39:32]) +
	( 2'sd 1) * $signed(input_fmap_0[47:40]) +
	( 2'sd 1) * $signed(input_fmap_0[63:56]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:8]) +
	( 2'sd 1) * $signed(input_fmap_1[23:16]) +
	( 3'sd 2) * $signed(input_fmap_1[31:24]) +
	( 2'sd 1) * $signed(input_fmap_1[39:32]) +
	( 3'sd 2) * $signed(input_fmap_1[47:40]) +
	( 2'sd 1) * $signed(input_fmap_1[71:64]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:8]) +
	( 3'sd 2) * $signed(input_fmap_2[23:16]) +
	( 2'sd 1) * $signed(input_fmap_2[31:24]) +
	( 3'sd 2) * $signed(input_fmap_2[39:32]) +
	( 3'sd 2) * $signed(input_fmap_2[47:40]) +
	( 3'sd 2) * $signed(input_fmap_2[55:48]) +
	( 2'sd 1) * $signed(input_fmap_2[63:56]) +
	( 2'sd 1) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 2'sd 1) * $signed(input_fmap_0[7:0]) +
	( 2'sd 1) * $signed(input_fmap_0[23:16]) +
	( 2'sd 1) * $signed(input_fmap_0[31:24]) +
	( 2'sd 1) * $signed(input_fmap_0[39:32]) +
	( 3'sd 2) * $signed(input_fmap_0[47:40]) +
	( 3'sd 2) * $signed(input_fmap_0[55:48]) +
	( 2'sd 1) * $signed(input_fmap_0[63:56]) +
	( 3'sd 2) * $signed(input_fmap_0[71:64]) +
	( 2'sd 1) * $signed(input_fmap_1[7:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:8]) +
	( 3'sd 2) * $signed(input_fmap_1[23:16]) +
	( 3'sd 2) * $signed(input_fmap_1[31:24]) +
	( 2'sd 1) * $signed(input_fmap_1[47:40]) +
	( 2'sd 1) * $signed(input_fmap_1[55:48]) +
	( 3'sd 2) * $signed(input_fmap_1[63:56]) +
	( 2'sd 1) * $signed(input_fmap_1[71:64]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:8]) +
	( 2'sd 1) * $signed(input_fmap_2[23:16]) +
	( 3'sd 2) * $signed(input_fmap_2[31:24]) +
	( 2'sd 1) * $signed(input_fmap_2[39:32]) +
	( 2'sd 1) * $signed(input_fmap_2[47:40]) +
	( 2'sd 1) * $signed(input_fmap_2[55:48]) +
	( 2'sd 1) * $signed(input_fmap_2[63:56]) +
	( 3'sd 2) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 3'sd 2) * $signed(input_fmap_0[55:48]) +
	( 2'sd 1) * $signed(input_fmap_0[63:56]) +
	( 2'sd 1) * $signed(input_fmap_1[31:24]) +
	( 2'sd 1) * $signed(input_fmap_1[39:32]) +
	( 2'sd 1) * $signed(input_fmap_1[47:40]) +
	( 2'sd 1) * $signed(input_fmap_1[55:48]) +
	( 2'sd 1) * $signed(input_fmap_1[63:56]) +
	( 2'sd 1) * $signed(input_fmap_1[71:64]) +
	( 2'sd 1) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:8]) +
	( 3'sd 2) * $signed(input_fmap_2[23:16]) +
	( 2'sd 1) * $signed(input_fmap_2[39:32]) +
	( 3'sd 2) * $signed(input_fmap_2[47:40]) +
	( 2'sd 1) * $signed(input_fmap_2[63:56]) +
	( 3'sd 2) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 3'sd 2) * $signed(input_fmap_0[15:8]) +
	( 3'sd 2) * $signed(input_fmap_0[23:16]) +
	( 3'sd 2) * $signed(input_fmap_0[31:24]) +
	( 2'sd 1) * $signed(input_fmap_0[39:32]) +
	( 3'sd 2) * $signed(input_fmap_0[47:40]) +
	( 2'sd 1) * $signed(input_fmap_0[55:48]) +
	( 2'sd 1) * $signed(input_fmap_0[71:64]) +
	( 3'sd 2) * $signed(input_fmap_1[15:8]) +
	( 3'sd 2) * $signed(input_fmap_1[23:16]) +
	( 2'sd 1) * $signed(input_fmap_1[39:32]) +
	( 2'sd 1) * $signed(input_fmap_1[47:40]) +
	( 2'sd 1) * $signed(input_fmap_1[55:48]) +
	( 2'sd 1) * $signed(input_fmap_1[63:56]) +
	( 2'sd 1) * $signed(input_fmap_2[39:32]) +
	( 2'sd 1) * $signed(input_fmap_2[55:48]) +
	( 2'sd 1) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 2'sd 1) * $signed(input_fmap_0[15:8]) +
	( 2'sd 1) * $signed(input_fmap_0[23:16]) +
	( 3'sd 2) * $signed(input_fmap_0[31:24]) +
	( 3'sd 2) * $signed(input_fmap_0[47:40]) +
	( 2'sd 1) * $signed(input_fmap_0[55:48]) +
	( 2'sd 1) * $signed(input_fmap_0[63:56]) +
	( 2'sd 1) * $signed(input_fmap_0[71:64]) +
	( 3'sd 2) * $signed(input_fmap_1[7:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:8]) +
	( 3'sd 2) * $signed(input_fmap_1[31:24]) +
	( 3'sd 2) * $signed(input_fmap_1[39:32]) +
	( 2'sd 1) * $signed(input_fmap_1[47:40]) +
	( 2'sd 1) * $signed(input_fmap_1[63:56]) +
	( 2'sd 1) * $signed(input_fmap_1[71:64]) +
	( 3'sd 2) * $signed(input_fmap_2[7:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:8]) +
	( 3'sd 2) * $signed(input_fmap_2[23:16]) +
	( 2'sd 1) * $signed(input_fmap_2[31:24]) +
	( 3'sd 2) * $signed(input_fmap_2[47:40]) +
	( 2'sd 1) * $signed(input_fmap_2[63:56]) +
	( 2'sd 1) * $signed(input_fmap_2[71:64]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 2'd1;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1 + 2'd1;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 2'd1;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3 + 3'd2;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4 + 2'd1;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5 + 2'd1;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7 + 2'd1;

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
