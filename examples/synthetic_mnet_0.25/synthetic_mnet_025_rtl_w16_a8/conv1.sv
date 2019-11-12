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
	( 14'sd 5536) * $signed(input_fmap_0[7:0]) +
	( 16'sd 22028) * $signed(input_fmap_0[15:8]) +
	( 16'sd 21914) * $signed(input_fmap_0[23:16]) +
	( 14'sd 5136) * $signed(input_fmap_0[31:24]) +
	( 15'sd 14451) * $signed(input_fmap_0[39:32]) +
	( 16'sd 17664) * $signed(input_fmap_0[47:40]) +
	( 16'sd 27621) * $signed(input_fmap_0[55:48]) +
	( 15'sd 11513) * $signed(input_fmap_0[63:56]) +
	( 16'sd 17151) * $signed(input_fmap_0[71:64]) +
	( 12'sd 1776) * $signed(input_fmap_1[7:0]) +
	( 16'sd 27408) * $signed(input_fmap_1[15:8]) +
	( 11'sd 703) * $signed(input_fmap_1[23:16]) +
	( 16'sd 27535) * $signed(input_fmap_1[31:24]) +
	( 15'sd 15214) * $signed(input_fmap_1[39:32]) +
	( 16'sd 28283) * $signed(input_fmap_1[47:40]) +
	( 16'sd 21603) * $signed(input_fmap_1[55:48]) +
	( 12'sd 1111) * $signed(input_fmap_1[63:56]) +
	( 15'sd 12640) * $signed(input_fmap_1[71:64]) +
	( 15'sd 9637) * $signed(input_fmap_2[7:0]) +
	( 15'sd 9711) * $signed(input_fmap_2[15:8]) +
	( 16'sd 31045) * $signed(input_fmap_2[23:16]) +
	( 16'sd 25091) * $signed(input_fmap_2[31:24]) +
	( 15'sd 12864) * $signed(input_fmap_2[39:32]) +
	( 16'sd 32679) * $signed(input_fmap_2[47:40]) +
	( 10'sd 475) * $signed(input_fmap_2[55:48]) +
	( 16'sd 27002) * $signed(input_fmap_2[63:56]) +
	( 16'sd 30711) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 16'sd 19200) * $signed(input_fmap_0[7:0]) +
	( 16'sd 31206) * $signed(input_fmap_0[15:8]) +
	( 15'sd 15251) * $signed(input_fmap_0[23:16]) +
	( 16'sd 20675) * $signed(input_fmap_0[31:24]) +
	( 13'sd 2380) * $signed(input_fmap_0[39:32]) +
	( 16'sd 22529) * $signed(input_fmap_0[47:40]) +
	( 15'sd 16241) * $signed(input_fmap_0[55:48]) +
	( 13'sd 3218) * $signed(input_fmap_0[63:56]) +
	( 15'sd 15401) * $signed(input_fmap_0[71:64]) +
	( 16'sd 16442) * $signed(input_fmap_1[7:0]) +
	( 14'sd 7679) * $signed(input_fmap_1[15:8]) +
	( 16'sd 18167) * $signed(input_fmap_1[23:16]) +
	( 15'sd 9305) * $signed(input_fmap_1[31:24]) +
	( 16'sd 29623) * $signed(input_fmap_1[39:32]) +
	( 16'sd 28291) * $signed(input_fmap_1[47:40]) +
	( 16'sd 21106) * $signed(input_fmap_1[55:48]) +
	( 15'sd 12838) * $signed(input_fmap_1[63:56]) +
	( 14'sd 5972) * $signed(input_fmap_1[71:64]) +
	( 15'sd 8501) * $signed(input_fmap_2[7:0]) +
	( 13'sd 4066) * $signed(input_fmap_2[15:8]) +
	( 16'sd 25496) * $signed(input_fmap_2[23:16]) +
	( 16'sd 17375) * $signed(input_fmap_2[31:24]) +
	( 16'sd 19146) * $signed(input_fmap_2[39:32]) +
	( 16'sd 29474) * $signed(input_fmap_2[47:40]) +
	( 13'sd 2601) * $signed(input_fmap_2[55:48]) +
	( 15'sd 11947) * $signed(input_fmap_2[63:56]) +
	( 16'sd 24071) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 13'sd 2128) * $signed(input_fmap_0[7:0]) +
	( 16'sd 20084) * $signed(input_fmap_0[15:8]) +
	( 16'sd 25646) * $signed(input_fmap_0[23:16]) +
	( 13'sd 3925) * $signed(input_fmap_0[31:24]) +
	( 16'sd 28290) * $signed(input_fmap_0[39:32]) +
	( 13'sd 3334) * $signed(input_fmap_0[47:40]) +
	( 15'sd 14578) * $signed(input_fmap_0[55:48]) +
	( 16'sd 16911) * $signed(input_fmap_0[63:56]) +
	( 15'sd 10566) * $signed(input_fmap_0[71:64]) +
	( 11'sd 615) * $signed(input_fmap_1[7:0]) +
	( 16'sd 26558) * $signed(input_fmap_1[15:8]) +
	( 15'sd 13883) * $signed(input_fmap_1[23:16]) +
	( 15'sd 10701) * $signed(input_fmap_1[31:24]) +
	( 16'sd 23109) * $signed(input_fmap_1[39:32]) +
	( 16'sd 24342) * $signed(input_fmap_1[47:40]) +
	( 15'sd 13933) * $signed(input_fmap_1[55:48]) +
	( 16'sd 23725) * $signed(input_fmap_1[63:56]) +
	( 16'sd 28991) * $signed(input_fmap_1[71:64]) +
	( 14'sd 7693) * $signed(input_fmap_2[7:0]) +
	( 16'sd 28213) * $signed(input_fmap_2[15:8]) +
	( 16'sd 24683) * $signed(input_fmap_2[23:16]) +
	( 16'sd 19987) * $signed(input_fmap_2[31:24]) +
	( 16'sd 16795) * $signed(input_fmap_2[39:32]) +
	( 12'sd 1590) * $signed(input_fmap_2[47:40]) +
	( 16'sd 31265) * $signed(input_fmap_2[55:48]) +
	( 16'sd 27612) * $signed(input_fmap_2[63:56]) +
	( 14'sd 4294) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 16'sd 28543) * $signed(input_fmap_0[7:0]) +
	( 16'sd 19308) * $signed(input_fmap_0[15:8]) +
	( 16'sd 31237) * $signed(input_fmap_0[23:16]) +
	( 16'sd 19293) * $signed(input_fmap_0[31:24]) +
	( 16'sd 17239) * $signed(input_fmap_0[39:32]) +
	( 15'sd 13634) * $signed(input_fmap_0[47:40]) +
	( 13'sd 2649) * $signed(input_fmap_0[55:48]) +
	( 16'sd 21289) * $signed(input_fmap_0[63:56]) +
	( 11'sd 565) * $signed(input_fmap_0[71:64]) +
	( 15'sd 10122) * $signed(input_fmap_1[7:0]) +
	( 15'sd 11890) * $signed(input_fmap_1[15:8]) +
	( 16'sd 21606) * $signed(input_fmap_1[23:16]) +
	( 16'sd 25447) * $signed(input_fmap_1[31:24]) +
	( 15'sd 13461) * $signed(input_fmap_1[39:32]) +
	( 16'sd 30091) * $signed(input_fmap_1[47:40]) +
	( 13'sd 2949) * $signed(input_fmap_1[55:48]) +
	( 14'sd 7455) * $signed(input_fmap_1[63:56]) +
	( 15'sd 9889) * $signed(input_fmap_1[71:64]) +
	( 16'sd 25582) * $signed(input_fmap_2[7:0]) +
	( 16'sd 26959) * $signed(input_fmap_2[15:8]) +
	( 16'sd 29675) * $signed(input_fmap_2[23:16]) +
	( 15'sd 9252) * $signed(input_fmap_2[31:24]) +
	( 16'sd 28991) * $signed(input_fmap_2[39:32]) +
	( 16'sd 28626) * $signed(input_fmap_2[47:40]) +
	( 16'sd 28115) * $signed(input_fmap_2[55:48]) +
	( 16'sd 23827) * $signed(input_fmap_2[63:56]) +
	( 16'sd 18070) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 16'sd 24281) * $signed(input_fmap_0[7:0]) +
	( 9'sd 200) * $signed(input_fmap_0[15:8]) +
	( 15'sd 13694) * $signed(input_fmap_0[23:16]) +
	( 15'sd 10856) * $signed(input_fmap_0[31:24]) +
	( 15'sd 15132) * $signed(input_fmap_0[39:32]) +
	( 16'sd 32364) * $signed(input_fmap_0[47:40]) +
	( 16'sd 32691) * $signed(input_fmap_0[55:48]) +
	( 16'sd 20359) * $signed(input_fmap_0[63:56]) +
	( 16'sd 28020) * $signed(input_fmap_0[71:64]) +
	( 15'sd 13511) * $signed(input_fmap_1[7:0]) +
	( 15'sd 11659) * $signed(input_fmap_1[15:8]) +
	( 16'sd 28623) * $signed(input_fmap_1[23:16]) +
	( 16'sd 31045) * $signed(input_fmap_1[31:24]) +
	( 12'sd 1362) * $signed(input_fmap_1[39:32]) +
	( 16'sd 17986) * $signed(input_fmap_1[47:40]) +
	( 16'sd 21264) * $signed(input_fmap_1[55:48]) +
	( 16'sd 27613) * $signed(input_fmap_1[63:56]) +
	( 16'sd 22835) * $signed(input_fmap_1[71:64]) +
	( 16'sd 16578) * $signed(input_fmap_2[7:0]) +
	( 15'sd 11960) * $signed(input_fmap_2[15:8]) +
	( 15'sd 12075) * $signed(input_fmap_2[23:16]) +
	( 16'sd 32520) * $signed(input_fmap_2[31:24]) +
	( 15'sd 11449) * $signed(input_fmap_2[39:32]) +
	( 16'sd 20468) * $signed(input_fmap_2[47:40]) +
	( 15'sd 12076) * $signed(input_fmap_2[55:48]) +
	( 16'sd 16588) * $signed(input_fmap_2[63:56]) +
	( 16'sd 31834) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 14'sd 4736) * $signed(input_fmap_0[7:0]) +
	( 11'sd 826) * $signed(input_fmap_0[15:8]) +
	( 14'sd 5839) * $signed(input_fmap_0[23:16]) +
	( 14'sd 4579) * $signed(input_fmap_0[31:24]) +
	( 14'sd 8063) * $signed(input_fmap_0[39:32]) +
	( 9'sd 131) * $signed(input_fmap_0[47:40]) +
	( 16'sd 24740) * $signed(input_fmap_0[55:48]) +
	( 16'sd 20335) * $signed(input_fmap_0[63:56]) +
	( 12'sd 1110) * $signed(input_fmap_0[71:64]) +
	( 13'sd 2758) * $signed(input_fmap_1[7:0]) +
	( 14'sd 8129) * $signed(input_fmap_1[15:8]) +
	( 13'sd 3793) * $signed(input_fmap_1[23:16]) +
	( 16'sd 19408) * $signed(input_fmap_1[31:24]) +
	( 15'sd 13181) * $signed(input_fmap_1[39:32]) +
	( 15'sd 14728) * $signed(input_fmap_1[47:40]) +
	( 15'sd 15858) * $signed(input_fmap_1[55:48]) +
	( 15'sd 14442) * $signed(input_fmap_1[63:56]) +
	( 16'sd 23817) * $signed(input_fmap_1[71:64]) +
	( 15'sd 15611) * $signed(input_fmap_2[7:0]) +
	( 15'sd 14399) * $signed(input_fmap_2[15:8]) +
	( 16'sd 28112) * $signed(input_fmap_2[23:16]) +
	( 14'sd 7068) * $signed(input_fmap_2[31:24]) +
	( 15'sd 13498) * $signed(input_fmap_2[39:32]) +
	( 16'sd 27696) * $signed(input_fmap_2[47:40]) +
	( 12'sd 1069) * $signed(input_fmap_2[55:48]) +
	( 16'sd 21061) * $signed(input_fmap_2[63:56]) +
	( 16'sd 24577) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 14'sd 5390) * $signed(input_fmap_0[7:0]) +
	( 16'sd 30962) * $signed(input_fmap_0[15:8]) +
	( 16'sd 27414) * $signed(input_fmap_0[23:16]) +
	( 16'sd 25074) * $signed(input_fmap_0[31:24]) +
	( 16'sd 23430) * $signed(input_fmap_0[39:32]) +
	( 16'sd 32174) * $signed(input_fmap_0[47:40]) +
	( 16'sd 22008) * $signed(input_fmap_0[55:48]) +
	( 12'sd 1710) * $signed(input_fmap_0[63:56]) +
	( 16'sd 23507) * $signed(input_fmap_0[71:64]) +
	( 13'sd 3303) * $signed(input_fmap_1[7:0]) +
	( 16'sd 24899) * $signed(input_fmap_1[15:8]) +
	( 16'sd 27197) * $signed(input_fmap_1[23:16]) +
	( 14'sd 6910) * $signed(input_fmap_1[31:24]) +
	( 15'sd 8243) * $signed(input_fmap_1[39:32]) +
	( 15'sd 8571) * $signed(input_fmap_1[47:40]) +
	( 16'sd 20775) * $signed(input_fmap_1[55:48]) +
	( 15'sd 13624) * $signed(input_fmap_1[63:56]) +
	( 14'sd 6504) * $signed(input_fmap_1[71:64]) +
	( 14'sd 7313) * $signed(input_fmap_2[7:0]) +
	( 14'sd 7260) * $signed(input_fmap_2[15:8]) +
	( 14'sd 7665) * $signed(input_fmap_2[23:16]) +
	( 14'sd 4202) * $signed(input_fmap_2[31:24]) +
	( 16'sd 22615) * $signed(input_fmap_2[39:32]) +
	( 13'sd 3361) * $signed(input_fmap_2[47:40]) +
	( 15'sd 10833) * $signed(input_fmap_2[55:48]) +
	( 13'sd 2556) * $signed(input_fmap_2[63:56]) +
	( 16'sd 22099) * $signed(input_fmap_2[71:64]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 13'sd 2251) * $signed(input_fmap_0[7:0]) +
	( 16'sd 19109) * $signed(input_fmap_0[15:8]) +
	( 15'sd 8606) * $signed(input_fmap_0[23:16]) +
	( 16'sd 32458) * $signed(input_fmap_0[31:24]) +
	( 14'sd 4348) * $signed(input_fmap_0[39:32]) +
	( 16'sd 24995) * $signed(input_fmap_0[47:40]) +
	( 15'sd 15333) * $signed(input_fmap_0[55:48]) +
	( 16'sd 23148) * $signed(input_fmap_0[63:56]) +
	( 16'sd 20805) * $signed(input_fmap_0[71:64]) +
	( 16'sd 29866) * $signed(input_fmap_1[7:0]) +
	( 16'sd 26986) * $signed(input_fmap_1[15:8]) +
	( 12'sd 1315) * $signed(input_fmap_1[23:16]) +
	( 16'sd 31370) * $signed(input_fmap_1[31:24]) +
	( 16'sd 27100) * $signed(input_fmap_1[39:32]) +
	( 16'sd 18387) * $signed(input_fmap_1[47:40]) +
	( 14'sd 6796) * $signed(input_fmap_1[55:48]) +
	( 15'sd 13672) * $signed(input_fmap_1[63:56]) +
	( 15'sd 9985) * $signed(input_fmap_1[71:64]) +
	( 16'sd 25243) * $signed(input_fmap_2[7:0]) +
	( 15'sd 13149) * $signed(input_fmap_2[15:8]) +
	( 16'sd 31849) * $signed(input_fmap_2[23:16]) +
	( 16'sd 20767) * $signed(input_fmap_2[31:24]) +
	( 13'sd 3313) * $signed(input_fmap_2[39:32]) +
	( 16'sd 27462) * $signed(input_fmap_2[47:40]) +
	( 12'sd 1686) * $signed(input_fmap_2[55:48]) +
	( 16'sd 20495) * $signed(input_fmap_2[63:56]) +
	( 16'sd 16623) * $signed(input_fmap_2[71:64]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 15'd12933;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1 + 15'd8767;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 15'd9066;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3 + 16'd32543;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4 + 16'd19024;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5 + 16'd22230;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6 + 13'd3066;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7 + 15'd12074;

logic [7:0] relu_0;
assign relu_0[7:0] = (bias_add_0[31]==0) ? ((bias_add_0<3'd6) ? {{bias_add_0[31],bias_add_0[21:15]}} :'d6) : '0;
logic [7:0] relu_1;
assign relu_1[7:0] = (bias_add_1[31]==0) ? ((bias_add_1<3'd6) ? {{bias_add_1[31],bias_add_1[21:15]}} :'d6) : '0;
logic [7:0] relu_2;
assign relu_2[7:0] = (bias_add_2[31]==0) ? ((bias_add_2<3'd6) ? {{bias_add_2[31],bias_add_2[21:15]}} :'d6) : '0;
logic [7:0] relu_3;
assign relu_3[7:0] = (bias_add_3[31]==0) ? ((bias_add_3<3'd6) ? {{bias_add_3[31],bias_add_3[21:15]}} :'d6) : '0;
logic [7:0] relu_4;
assign relu_4[7:0] = (bias_add_4[31]==0) ? ((bias_add_4<3'd6) ? {{bias_add_4[31],bias_add_4[21:15]}} :'d6) : '0;
logic [7:0] relu_5;
assign relu_5[7:0] = (bias_add_5[31]==0) ? ((bias_add_5<3'd6) ? {{bias_add_5[31],bias_add_5[21:15]}} :'d6) : '0;
logic [7:0] relu_6;
assign relu_6[7:0] = (bias_add_6[31]==0) ? ((bias_add_6<3'd6) ? {{bias_add_6[31],bias_add_6[21:15]}} :'d6) : '0;
logic [7:0] relu_7;
assign relu_7[7:0] = (bias_add_7[31]==0) ? ((bias_add_7<3'd6) ? {{bias_add_7[31],bias_add_7[21:15]}} :'d6) : '0;

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
