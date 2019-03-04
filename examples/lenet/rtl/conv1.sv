module conv1 (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [400-1:0] input_act,
    output logic [96-1:0] output_act,
    output logic ready
);

logic [400-1:0] input_act_ff;
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

logic [399:0] input_fmap_0;
assign input_fmap_0 = input_act_ff[399:0];

logic signed [31:0] conv_mac_0;
assign conv_mac_0 = 
	-2'sd 1 * $signed(input_fmap_0[15:0]) +
	-3'sd 3 * $signed(input_fmap_0[31:16]) +
	-3'sd 3 * $signed(input_fmap_0[47:32]) +
	-3'sd 2 * $signed(input_fmap_0[63:48]) +
	-3'sd 2 * $signed(input_fmap_0[79:64]) +
	-3'sd 2 * $signed(input_fmap_0[95:80]) +
	-4'sd 7 * $signed(input_fmap_0[111:96]) +
	-4'sd 6 * $signed(input_fmap_0[127:112]) +
	-4'sd 4 * $signed(input_fmap_0[143:128]) +
	-2'sd 1 * $signed(input_fmap_0[159:144]) +
	-3'sd 2 * $signed(input_fmap_0[191:176]) +
	-3'sd 2 * $signed(input_fmap_0[207:192]) +
	 3'sd 2 * $signed(input_fmap_0[239:224]) +
	 4'sd 6 * $signed(input_fmap_0[255:240]) +
	 4'sd 6 * $signed(input_fmap_0[271:256]) +
	 4'sd 5 * $signed(input_fmap_0[287:272]) +
	 4'sd 4 * $signed(input_fmap_0[303:288]) +
	 3'sd 3 * $signed(input_fmap_0[319:304]) +
	 4'sd 7 * $signed(input_fmap_0[335:320]) +
	 5'sd 8 * $signed(input_fmap_0[351:336]) +
	 4'sd 6 * $signed(input_fmap_0[367:352]) +
	 4'sd 4 * $signed(input_fmap_0[383:368]) +
	 3'sd 2 * $signed(input_fmap_0[399:384]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	-3'sd 3 * $signed(input_fmap_0[15:0]) +
	-3'sd 2 * $signed(input_fmap_0[31:16]) +
	 2'sd 1 * $signed(input_fmap_0[47:32]) +
	 3'sd 3 * $signed(input_fmap_0[63:48]) +
	 3'sd 2 * $signed(input_fmap_0[79:64]) +
	-3'sd 3 * $signed(input_fmap_0[95:80]) +
	-2'sd 1 * $signed(input_fmap_0[111:96]) +
	 3'sd 3 * $signed(input_fmap_0[127:112]) +
	 4'sd 4 * $signed(input_fmap_0[143:128]) +
	 2'sd 1 * $signed(input_fmap_0[159:144]) +
	-4'sd 4 * $signed(input_fmap_0[175:160]) +
	-3'sd 2 * $signed(input_fmap_0[191:176]) +
	 4'sd 4 * $signed(input_fmap_0[207:192]) +
	 4'sd 5 * $signed(input_fmap_0[223:208]) +
	 2'sd 1 * $signed(input_fmap_0[239:224]) +
	-3'sd 3 * $signed(input_fmap_0[255:240]) +
	 4'sd 4 * $signed(input_fmap_0[287:272]) +
	 4'sd 6 * $signed(input_fmap_0[303:288]) +
	 3'sd 2 * $signed(input_fmap_0[319:304]) +
	 2'sd 1 * $signed(input_fmap_0[351:336]) +
	 3'sd 3 * $signed(input_fmap_0[367:352]) +
	 4'sd 4 * $signed(input_fmap_0[383:368]) +
	 3'sd 2 * $signed(input_fmap_0[399:384]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	 2'sd 1 * $signed(input_fmap_0[31:16]) +
	 3'sd 2 * $signed(input_fmap_0[47:32]) +
	 2'sd 1 * $signed(input_fmap_0[63:48]) +
	-3'sd 2 * $signed(input_fmap_0[79:64]) +
	 2'sd 1 * $signed(input_fmap_0[95:80]) +
	 3'sd 3 * $signed(input_fmap_0[111:96]) +
	 3'sd 2 * $signed(input_fmap_0[127:112]) +
	-3'sd 2 * $signed(input_fmap_0[159:144]) +
	 3'sd 3 * $signed(input_fmap_0[191:176]) +
	 4'sd 4 * $signed(input_fmap_0[207:192]) +
	 2'sd 1 * $signed(input_fmap_0[223:208]) +
	-3'sd 2 * $signed(input_fmap_0[239:224]) +
	 4'sd 4 * $signed(input_fmap_0[271:256]) +
	 4'sd 6 * $signed(input_fmap_0[287:272]) +
	 4'sd 4 * $signed(input_fmap_0[303:288]) +
	 2'sd 1 * $signed(input_fmap_0[319:304]) +
	 3'sd 2 * $signed(input_fmap_0[351:336]) +
	 3'sd 2 * $signed(input_fmap_0[367:352]) +
	 3'sd 2 * $signed(input_fmap_0[383:368]) +
	 3'sd 2 * $signed(input_fmap_0[399:384]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	-2'sd 1 * $signed(input_fmap_0[15:0]) +
	 2'sd 1 * $signed(input_fmap_0[31:16]) +
	 3'sd 3 * $signed(input_fmap_0[47:32]) +
	 2'sd 1 * $signed(input_fmap_0[63:48]) +
	-2'sd 1 * $signed(input_fmap_0[79:64]) +
	 3'sd 3 * $signed(input_fmap_0[111:96]) +
	 4'sd 4 * $signed(input_fmap_0[127:112]) +
	 3'sd 2 * $signed(input_fmap_0[143:128]) +
	-3'sd 2 * $signed(input_fmap_0[159:144]) +
	-2'sd 1 * $signed(input_fmap_0[175:160]) +
	 4'sd 4 * $signed(input_fmap_0[191:176]) +
	 4'sd 5 * $signed(input_fmap_0[207:192]) +
	 3'sd 3 * $signed(input_fmap_0[223:208]) +
	-3'sd 3 * $signed(input_fmap_0[239:224]) +
	 4'sd 4 * $signed(input_fmap_0[271:256]) +
	 4'sd 6 * $signed(input_fmap_0[287:272]) +
	 3'sd 3 * $signed(input_fmap_0[303:288]) +
	 2'sd 1 * $signed(input_fmap_0[335:320]) +
	 3'sd 2 * $signed(input_fmap_0[351:336]) +
	 3'sd 3 * $signed(input_fmap_0[367:352]) +
	 3'sd 2 * $signed(input_fmap_0[383:368]) +
	 2'sd 1 * $signed(input_fmap_0[399:384]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	 2'sd 1 * $signed(input_fmap_0[15:0]) +
	 3'sd 2 * $signed(input_fmap_0[31:16]) +
	-3'sd 2 * $signed(input_fmap_0[63:48]) +
	-4'sd 4 * $signed(input_fmap_0[79:64]) +
	 3'sd 2 * $signed(input_fmap_0[95:80]) +
	 4'sd 4 * $signed(input_fmap_0[111:96]) +
	 2'sd 1 * $signed(input_fmap_0[127:112]) +
	-3'sd 3 * $signed(input_fmap_0[143:128]) +
	-3'sd 3 * $signed(input_fmap_0[159:144]) +
	 3'sd 2 * $signed(input_fmap_0[175:160]) +
	 4'sd 5 * $signed(input_fmap_0[191:176]) +
	 4'sd 7 * $signed(input_fmap_0[207:192]) +
	 4'sd 5 * $signed(input_fmap_0[223:208]) +
	 2'sd 1 * $signed(input_fmap_0[239:224]) +
	-2'sd 1 * $signed(input_fmap_0[255:240]) +
	 4'sd 4 * $signed(input_fmap_0[287:272]) +
	 4'sd 6 * $signed(input_fmap_0[303:288]) +
	 3'sd 3 * $signed(input_fmap_0[319:304]) +
	-3'sd 3 * $signed(input_fmap_0[335:320]) +
	-3'sd 3 * $signed(input_fmap_0[351:336]) +
	-3'sd 2 * $signed(input_fmap_0[367:352]) +
	 2'sd 1 * $signed(input_fmap_0[383:368]) +
	 3'sd 2 * $signed(input_fmap_0[399:384]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	 2'sd 1 * $signed(input_fmap_0[15:0]) +
	 3'sd 2 * $signed(input_fmap_0[31:16]) +
	 2'sd 1 * $signed(input_fmap_0[47:32]) +
	-3'sd 2 * $signed(input_fmap_0[79:64]) +
	 2'sd 1 * $signed(input_fmap_0[95:80]) +
	 3'sd 2 * $signed(input_fmap_0[111:96]) +
	 3'sd 2 * $signed(input_fmap_0[127:112]) +
	-3'sd 2 * $signed(input_fmap_0[159:144]) +
	 3'sd 3 * $signed(input_fmap_0[191:176]) +
	 4'sd 5 * $signed(input_fmap_0[207:192]) +
	 3'sd 3 * $signed(input_fmap_0[223:208]) +
	-2'sd 1 * $signed(input_fmap_0[239:224]) +
	 3'sd 2 * $signed(input_fmap_0[271:256]) +
	 4'sd 5 * $signed(input_fmap_0[287:272]) +
	 4'sd 4 * $signed(input_fmap_0[303:288]) +
	 3'sd 2 * $signed(input_fmap_0[319:304]) +
	 3'sd 2 * $signed(input_fmap_0[383:368]) +
	 3'sd 2 * $signed(input_fmap_0[399:384]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 10'd256;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5;

logic [15:0] relu_0;
assign relu_0[15:0] = (bias_add_0[31]==0) ? {{bias_add_0[31],bias_add_0[18:4]}} : '0;
logic [15:0] relu_1;
assign relu_1[15:0] = (bias_add_1[31]==0) ? {{bias_add_1[31],bias_add_1[18:4]}} : '0;
logic [15:0] relu_2;
assign relu_2[15:0] = (bias_add_2[31]==0) ? {{bias_add_2[31],bias_add_2[18:4]}} : '0;
logic [15:0] relu_3;
assign relu_3[15:0] = (bias_add_3[31]==0) ? {{bias_add_3[31],bias_add_3[18:4]}} : '0;
logic [15:0] relu_4;
assign relu_4[15:0] = (bias_add_4[31]==0) ? {{bias_add_4[31],bias_add_4[18:4]}} : '0;
logic [15:0] relu_5;
assign relu_5[15:0] = (bias_add_5[31]==0) ? {{bias_add_5[31],bias_add_5[18:4]}} : '0;

assign output_act = {
	relu_5,
	relu_4,
	relu_3,
	relu_2,
	relu_1,
	relu_0
};

endmodule
