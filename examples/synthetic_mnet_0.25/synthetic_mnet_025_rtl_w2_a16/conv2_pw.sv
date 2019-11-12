module conv2_pw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [128-1:0] input_act,
    output logic [256-1:0] output_act,
    output logic ready
);

logic [128-1:0] input_act_ff;
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

logic [15:0] input_fmap_0;
assign input_fmap_0 = input_act_ff[15:0];
logic [15:0] input_fmap_1;
assign input_fmap_1 = input_act_ff[31:16];
logic [15:0] input_fmap_2;
assign input_fmap_2 = input_act_ff[47:32];
logic [15:0] input_fmap_3;
assign input_fmap_3 = input_act_ff[63:48];
logic [15:0] input_fmap_4;
assign input_fmap_4 = input_act_ff[79:64];
logic [15:0] input_fmap_5;
assign input_fmap_5 = input_act_ff[95:80];
logic [15:0] input_fmap_6;
assign input_fmap_6 = input_act_ff[111:96];
logic [15:0] input_fmap_7;
assign input_fmap_7 = input_act_ff[127:112];

logic signed [31:0] conv_mac_0;
assign conv_mac_0 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]);

logic signed [31:0] conv_mac_8;
assign conv_mac_8 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_9;
assign conv_mac_9 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_10;
assign conv_mac_10 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_11;
assign conv_mac_11 = 
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_12;
assign conv_mac_12 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 3'sd 2) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_13;
assign conv_mac_13 = 
	( 3'sd 2) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 2'sd 1) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 3'sd 2) * $signed(input_fmap_6[15:0]) +
	( 3'sd 2) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_14;
assign conv_mac_14 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 3'sd 2) * $signed(input_fmap_1[15:0]) +
	( 2'sd 1) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 2'sd 1) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_15;
assign conv_mac_15 = 
	( 2'sd 1) * $signed(input_fmap_0[15:0]) +
	( 2'sd 1) * $signed(input_fmap_1[15:0]) +
	( 3'sd 2) * $signed(input_fmap_2[15:0]) +
	( 3'sd 2) * $signed(input_fmap_3[15:0]) +
	( 3'sd 2) * $signed(input_fmap_4[15:0]) +
	( 2'sd 1) * $signed(input_fmap_5[15:0]) +
	( 2'sd 1) * $signed(input_fmap_7[15:0]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 2'd1;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3 + 3'd2;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4 + 2'd1;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5 + 3'd2;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6 + 2'd1;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7 + 2'd1;
logic [31:0] bias_add_8;
assign bias_add_8 = conv_mac_8;
logic [31:0] bias_add_9;
assign bias_add_9 = conv_mac_9 + 3'd2;
logic [31:0] bias_add_10;
assign bias_add_10 = conv_mac_10;
logic [31:0] bias_add_11;
assign bias_add_11 = conv_mac_11;
logic [31:0] bias_add_12;
assign bias_add_12 = conv_mac_12 + 2'd1;
logic [31:0] bias_add_13;
assign bias_add_13 = conv_mac_13 + 2'd1;
logic [31:0] bias_add_14;
assign bias_add_14 = conv_mac_14;
logic [31:0] bias_add_15;
assign bias_add_15 = conv_mac_15;

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
logic [15:0] relu_8;
assign relu_8[15:0] = (bias_add_8[31]==0) ? ((bias_add_8<3'd6) ? {{bias_add_8[31],bias_add_8[15:1]}} :'d6) : '0;
logic [15:0] relu_9;
assign relu_9[15:0] = (bias_add_9[31]==0) ? ((bias_add_9<3'd6) ? {{bias_add_9[31],bias_add_9[15:1]}} :'d6) : '0;
logic [15:0] relu_10;
assign relu_10[15:0] = (bias_add_10[31]==0) ? ((bias_add_10<3'd6) ? {{bias_add_10[31],bias_add_10[15:1]}} :'d6) : '0;
logic [15:0] relu_11;
assign relu_11[15:0] = (bias_add_11[31]==0) ? ((bias_add_11<3'd6) ? {{bias_add_11[31],bias_add_11[15:1]}} :'d6) : '0;
logic [15:0] relu_12;
assign relu_12[15:0] = (bias_add_12[31]==0) ? ((bias_add_12<3'd6) ? {{bias_add_12[31],bias_add_12[15:1]}} :'d6) : '0;
logic [15:0] relu_13;
assign relu_13[15:0] = (bias_add_13[31]==0) ? ((bias_add_13<3'd6) ? {{bias_add_13[31],bias_add_13[15:1]}} :'d6) : '0;
logic [15:0] relu_14;
assign relu_14[15:0] = (bias_add_14[31]==0) ? ((bias_add_14<3'd6) ? {{bias_add_14[31],bias_add_14[15:1]}} :'d6) : '0;
logic [15:0] relu_15;
assign relu_15[15:0] = (bias_add_15[31]==0) ? ((bias_add_15<3'd6) ? {{bias_add_15[31],bias_add_15[15:1]}} :'d6) : '0;

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
