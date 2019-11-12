module conv1 (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [432-1:0] input_act,
    output logic [128-1:0] output_act,
    output logic ready
);

logic [432-1:0] input_act_ff;
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

logic signed [31:0] conv_mac_0;
assign conv_mac_0 = 
	( 2'sd 1) * $signed(input_fmap_0[31:16]) +
	( 2'sd 1) * $signed(input_fmap_0[47:32]) +
	( 2'sd 1) * $signed(input_fmap_0[79:64]) +
	( 2'sd 1) * $signed(input_fmap_0[95:80]) +
	( 3'sd 2) * $signed(input_fmap_0[111:96]) +
	( 2'sd 1) * $signed(input_fmap_0[127:112]) +
	( 2'sd 1) * $signed(input_fmap_0[143:128]) +
	( 3'sd 2) * $signed(input_fmap_1[31:16]) +
	( 3'sd 2) * $signed(input_fmap_1[63:48]) +
	( 2'sd 1) * $signed(input_fmap_1[79:64]) +
	( 3'sd 2) * $signed(input_fmap_1[95:80]) +
	( 2'sd 1) * $signed(input_fmap_1[111:96]) +
	( 2'sd 1) * $signed(input_fmap_1[143:128]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[31:16]) +
	( 3'sd 2) * $signed(input_fmap_2[47:32]) +
	( 3'sd 2) * $signed(input_fmap_2[63:48]) +
	( 2'sd 1) * $signed(input_fmap_2[79:64]) +
	( 3'sd 2) * $signed(input_fmap_2[95:80]) +
	( 3'sd 2) * $signed(input_fmap_2[127:112]) +
	( 3'sd 2) * $signed(input_fmap_2[143:128]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_0[31:16]) +
	( 2'sd 1) * $signed(input_fmap_0[47:32]) +
	( 2'sd 1) * $signed(input_fmap_0[63:48]) +
	( 2'sd 1) * $signed(input_fmap_0[95:80]) +
	( 2'sd 1) * $signed(input_fmap_0[111:96]) +
	( 2'sd 1) * $signed(input_fmap_0[143:128]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[47:32]) +
	( 2'sd 1) * $signed(input_fmap_1[63:48]) +
	( 3'sd 2) * $signed(input_fmap_1[79:64]) +
	( 3'sd 2) * $signed(input_fmap_1[95:80]) +
	( 2'sd 1) * $signed(input_fmap_1[111:96]) +
	( 2'sd 1) * $signed(input_fmap_1[127:112]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[47:32]) +
	( 2'sd 1) * $signed(input_fmap_2[63:48]) +
	( 2'sd 1) * $signed(input_fmap_2[79:64]) +
	( 3'sd 2) * $signed(input_fmap_2[95:80]) +
	( 2'sd 1) * $signed(input_fmap_2[127:112]) +
	( 2'sd 1) * $signed(input_fmap_2[143:128]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 2'sd 1) * $signed(input_fmap_0[31:16]) +
	( 3'sd 2) * $signed(input_fmap_0[47:32]) +
	( 3'sd 2) * $signed(input_fmap_0[79:64]) +
	( 2'sd 1) * $signed(input_fmap_0[111:96]) +
	( 2'sd 1) * $signed(input_fmap_0[127:112]) +
	( 2'sd 1) * $signed(input_fmap_0[143:128]) +
	( 3'sd 2) * $signed(input_fmap_1[31:16]) +
	( 2'sd 1) * $signed(input_fmap_1[47:32]) +
	( 2'sd 1) * $signed(input_fmap_1[63:48]) +
	( 2'sd 1) * $signed(input_fmap_1[79:64]) +
	( 2'sd 1) * $signed(input_fmap_1[95:80]) +
	( 2'sd 1) * $signed(input_fmap_1[111:96]) +
	( 2'sd 1) * $signed(input_fmap_1[127:112]) +
	( 3'sd 2) * $signed(input_fmap_1[143:128]) +
	( 3'sd 2) * $signed(input_fmap_2[31:16]) +
	( 3'sd 2) * $signed(input_fmap_2[47:32]) +
	( 2'sd 1) * $signed(input_fmap_2[63:48]) +
	( 2'sd 1) * $signed(input_fmap_2[79:64]) +
	( 3'sd 2) * $signed(input_fmap_2[111:96]) +
	( 3'sd 2) * $signed(input_fmap_2[127:112]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_0[31:16]) +
	( 3'sd 2) * $signed(input_fmap_0[47:32]) +
	( 2'sd 1) * $signed(input_fmap_0[63:48]) +
	( 2'sd 1) * $signed(input_fmap_0[79:64]) +
	( 2'sd 1) * $signed(input_fmap_0[95:80]) +
	( 2'sd 1) * $signed(input_fmap_0[127:112]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[31:16]) +
	( 2'sd 1) * $signed(input_fmap_1[47:32]) +
	( 3'sd 2) * $signed(input_fmap_1[63:48]) +
	( 2'sd 1) * $signed(input_fmap_1[79:64]) +
	( 3'sd 2) * $signed(input_fmap_1[95:80]) +
	( 2'sd 1) * $signed(input_fmap_1[143:128]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[31:16]) +
	( 3'sd 2) * $signed(input_fmap_2[47:32]) +
	( 2'sd 1) * $signed(input_fmap_2[63:48]) +
	( 3'sd 2) * $signed(input_fmap_2[79:64]) +
	( 3'sd 2) * $signed(input_fmap_2[95:80]) +
	( 3'sd 2) * $signed(input_fmap_2[111:96]) +
	( 2'sd 1) * $signed(input_fmap_2[127:112]) +
	( 2'sd 1) * $signed(input_fmap_2[143:128]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_0[47:32]) +
	( 2'sd 1) * $signed(input_fmap_0[63:48]) +
	( 2'sd 1) * $signed(input_fmap_0[79:64]) +
	( 3'sd 2) * $signed(input_fmap_0[95:80]) +
	( 3'sd 2) * $signed(input_fmap_0[111:96]) +
	( 2'sd 1) * $signed(input_fmap_0[127:112]) +
	( 3'sd 2) * $signed(input_fmap_0[143:128]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[31:16]) +
	( 3'sd 2) * $signed(input_fmap_1[47:32]) +
	( 3'sd 2) * $signed(input_fmap_1[63:48]) +
	( 2'sd 1) * $signed(input_fmap_1[95:80]) +
	( 2'sd 1) * $signed(input_fmap_1[111:96]) +
	( 3'sd 2) * $signed(input_fmap_1[127:112]) +
	( 2'sd 1) * $signed(input_fmap_1[143:128]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[31:16]) +
	( 2'sd 1) * $signed(input_fmap_2[47:32]) +
	( 3'sd 2) * $signed(input_fmap_2[63:48]) +
	( 2'sd 1) * $signed(input_fmap_2[79:64]) +
	( 2'sd 1) * $signed(input_fmap_2[95:80]) +
	( 2'sd 1) * $signed(input_fmap_2[111:96]) +
	( 2'sd 1) * $signed(input_fmap_2[127:112]) +
	( 3'sd 2) * $signed(input_fmap_2[143:128]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 3'sd 2) * $signed(input_fmap_0[111:96]) +
	( 2'sd 1) * $signed(input_fmap_0[127:112]) +
	( 2'sd 1) * $signed(input_fmap_1[63:48]) +
	( 2'sd 1) * $signed(input_fmap_1[79:64]) +
	( 2'sd 1) * $signed(input_fmap_1[95:80]) +
	( 2'sd 1) * $signed(input_fmap_1[111:96]) +
	( 2'sd 1) * $signed(input_fmap_1[127:112]) +
	( 2'sd 1) * $signed(input_fmap_1[143:128]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[31:16]) +
	( 3'sd 2) * $signed(input_fmap_2[47:32]) +
	( 2'sd 1) * $signed(input_fmap_2[79:64]) +
	( 3'sd 2) * $signed(input_fmap_2[95:80]) +
	( 2'sd 1) * $signed(input_fmap_2[127:112]) +
	( 3'sd 2) * $signed(input_fmap_2[143:128]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 3'sd 2) * $signed(input_fmap_0[31:16]) +
	( 3'sd 2) * $signed(input_fmap_0[47:32]) +
	( 3'sd 2) * $signed(input_fmap_0[63:48]) +
	( 2'sd 1) * $signed(input_fmap_0[79:64]) +
	( 3'sd 2) * $signed(input_fmap_0[95:80]) +
	( 2'sd 1) * $signed(input_fmap_0[111:96]) +
	( 2'sd 1) * $signed(input_fmap_0[143:128]) +
	( 3'sd 2) * $signed(input_fmap_1[31:16]) +
	( 3'sd 2) * $signed(input_fmap_1[47:32]) +
	( 2'sd 1) * $signed(input_fmap_1[79:64]) +
	( 2'sd 1) * $signed(input_fmap_1[95:80]) +
	( 2'sd 1) * $signed(input_fmap_1[111:96]) +
	( 2'sd 1) * $signed(input_fmap_1[127:112]) +
	( 2'sd 1) * $signed(input_fmap_2[79:64]) +
	( 2'sd 1) * $signed(input_fmap_2[111:96]) +
	( 2'sd 1) * $signed(input_fmap_2[143:128]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 2'sd 1) * $signed(input_fmap_0[31:16]) +
	( 2'sd 1) * $signed(input_fmap_0[47:32]) +
	( 3'sd 2) * $signed(input_fmap_0[63:48]) +
	( 3'sd 2) * $signed(input_fmap_0[95:80]) +
	( 2'sd 1) * $signed(input_fmap_0[111:96]) +
	( 2'sd 1) * $signed(input_fmap_0[127:112]) +
	( 2'sd 1) * $signed(input_fmap_0[143:128]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[31:16]) +
	( 3'sd 2) * $signed(input_fmap_1[63:48]) +
	( 3'sd 2) * $signed(input_fmap_1[79:64]) +
	( 2'sd 1) * $signed(input_fmap_1[95:80]) +
	( 2'sd 1) * $signed(input_fmap_1[127:112]) +
	( 2'sd 1) * $signed(input_fmap_1[143:128]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[31:16]) +
	( 3'sd 2) * $signed(input_fmap_2[47:32]) +
	( 2'sd 1) * $signed(input_fmap_2[63:48]) +
	( 3'sd 2) * $signed(input_fmap_2[95:80]) +
	( 2'sd 1) * $signed(input_fmap_2[127:112]) +
	( 2'sd 1) * $signed(input_fmap_2[143:128]);

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

logic [15:0] relu_0;
assign relu_0[15:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[15:1]}} :'d6) : '0;
logic [15:0] relu_1;
assign relu_1[15:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[15:1]}} :'d6) : '0;
logic [15:0] relu_2;
assign relu_2[15:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[15:1]}} :'d6) : '0;
logic [15:0] relu_3;
assign relu_3[15:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[15:1]}} :'d6) : '0;
logic [15:0] relu_4;
assign relu_4[15:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[15:1]}} :'d6) : '0;
logic [15:0] relu_5;
assign relu_5[15:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[15:1]}} :'d6) : '0;
logic [15:0] relu_6;
assign relu_6[15:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[15:1]}} :'d6) : '0;
logic [15:0] relu_7;
assign relu_7[15:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[15:1]}} :'d6) : '0;

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
