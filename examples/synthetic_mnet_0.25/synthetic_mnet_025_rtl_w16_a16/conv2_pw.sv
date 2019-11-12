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
	( 16'sd 16788) * $signed(input_fmap_0[15:0]) +
	( 16'sd 22404) * $signed(input_fmap_1[15:0]) +
	( 15'sd 15994) * $signed(input_fmap_2[15:0]) +
	( 16'sd 26354) * $signed(input_fmap_3[15:0]) +
	( 16'sd 29312) * $signed(input_fmap_4[15:0]) +
	( 15'sd 15465) * $signed(input_fmap_5[15:0]) +
	( 16'sd 31219) * $signed(input_fmap_6[15:0]) +
	( 16'sd 31717) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 16'sd 29490) * $signed(input_fmap_0[15:0]) +
	( 15'sd 14856) * $signed(input_fmap_1[15:0]) +
	( 12'sd 1399) * $signed(input_fmap_2[15:0]) +
	( 14'sd 4472) * $signed(input_fmap_3[15:0]) +
	( 14'sd 6823) * $signed(input_fmap_4[15:0]) +
	( 15'sd 14788) * $signed(input_fmap_5[15:0]) +
	( 16'sd 32498) * $signed(input_fmap_6[15:0]) +
	( 12'sd 2000) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 13'sd 2842) * $signed(input_fmap_0[15:0]) +
	( 16'sd 20345) * $signed(input_fmap_1[15:0]) +
	( 16'sd 30608) * $signed(input_fmap_2[15:0]) +
	( 12'sd 1296) * $signed(input_fmap_3[15:0]) +
	( 16'sd 23530) * $signed(input_fmap_4[15:0]) +
	( 14'sd 6022) * $signed(input_fmap_5[15:0]) +
	( 16'sd 27651) * $signed(input_fmap_6[15:0]) +
	( 14'sd 5480) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 16'sd 16693) * $signed(input_fmap_0[15:0]) +
	( 14'sd 4180) * $signed(input_fmap_1[15:0]) +
	( 16'sd 31296) * $signed(input_fmap_2[15:0]) +
	( 15'sd 14578) * $signed(input_fmap_3[15:0]) +
	( 15'sd 13854) * $signed(input_fmap_4[15:0]) +
	( 16'sd 30859) * $signed(input_fmap_5[15:0]) +
	( 16'sd 20452) * $signed(input_fmap_6[15:0]) +
	( 13'sd 2273) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 13'sd 3718) * $signed(input_fmap_0[15:0]) +
	( 15'sd 11728) * $signed(input_fmap_1[15:0]) +
	( 16'sd 30438) * $signed(input_fmap_2[15:0]) +
	( 13'sd 3390) * $signed(input_fmap_3[15:0]) +
	( 16'sd 26995) * $signed(input_fmap_4[15:0]) +
	( 15'sd 14139) * $signed(input_fmap_5[15:0]) +
	( 13'sd 3285) * $signed(input_fmap_6[15:0]) +
	( 15'sd 12371) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 15'sd 9068) * $signed(input_fmap_0[15:0]) +
	( 16'sd 26996) * $signed(input_fmap_1[15:0]) +
	( 14'sd 4268) * $signed(input_fmap_2[15:0]) +
	( 16'sd 24501) * $signed(input_fmap_3[15:0]) +
	( 13'sd 2568) * $signed(input_fmap_4[15:0]) +
	( 16'sd 22267) * $signed(input_fmap_5[15:0]) +
	( 16'sd 29330) * $signed(input_fmap_6[15:0]) +
	( 16'sd 23380) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 13'sd 3378) * $signed(input_fmap_0[15:0]) +
	( 16'sd 27610) * $signed(input_fmap_1[15:0]) +
	( 15'sd 8903) * $signed(input_fmap_2[15:0]) +
	( 11'sd 636) * $signed(input_fmap_3[15:0]) +
	( 15'sd 14259) * $signed(input_fmap_4[15:0]) +
	( 16'sd 22656) * $signed(input_fmap_5[15:0]) +
	( 16'sd 17098) * $signed(input_fmap_6[15:0]) +
	( 16'sd 21442) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 16'sd 17876) * $signed(input_fmap_0[15:0]) +
	( 16'sd 24385) * $signed(input_fmap_1[15:0]) +
	( 16'sd 25893) * $signed(input_fmap_2[15:0]) +
	( 16'sd 16958) * $signed(input_fmap_3[15:0]) +
	( 16'sd 30977) * $signed(input_fmap_4[15:0]) +
	( 16'sd 20819) * $signed(input_fmap_5[15:0]) +
	( 14'sd 6409) * $signed(input_fmap_6[15:0]) +
	( 14'sd 7136) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_8;
assign conv_mac_8 = 
	( 14'sd 6152) * $signed(input_fmap_0[15:0]) +
	( 16'sd 27684) * $signed(input_fmap_1[15:0]) +
	( 15'sd 9819) * $signed(input_fmap_2[15:0]) +
	( 16'sd 24766) * $signed(input_fmap_3[15:0]) +
	( 15'sd 13806) * $signed(input_fmap_4[15:0]) +
	( 15'sd 11587) * $signed(input_fmap_5[15:0]) +
	( 16'sd 26742) * $signed(input_fmap_6[15:0]) +
	( 16'sd 23589) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_9;
assign conv_mac_9 = 
	( 16'sd 17117) * $signed(input_fmap_0[15:0]) +
	( 15'sd 10321) * $signed(input_fmap_1[15:0]) +
	( 14'sd 7200) * $signed(input_fmap_2[15:0]) +
	( 10'sd 381) * $signed(input_fmap_3[15:0]) +
	( 16'sd 20080) * $signed(input_fmap_4[15:0]) +
	( 15'sd 13581) * $signed(input_fmap_5[15:0]) +
	( 16'sd 25071) * $signed(input_fmap_6[15:0]) +
	( 16'sd 23801) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_10;
assign conv_mac_10 = 
	( 16'sd 26188) * $signed(input_fmap_0[15:0]) +
	( 16'sd 22311) * $signed(input_fmap_1[15:0]) +
	( 16'sd 26087) * $signed(input_fmap_2[15:0]) +
	( 16'sd 20347) * $signed(input_fmap_3[15:0]) +
	( 16'sd 28302) * $signed(input_fmap_4[15:0]) +
	( 16'sd 21591) * $signed(input_fmap_5[15:0]) +
	( 16'sd 16708) * $signed(input_fmap_6[15:0]) +
	( 16'sd 23256) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_11;
assign conv_mac_11 = 
	( 12'sd 1491) * $signed(input_fmap_0[15:0]) +
	( 16'sd 30093) * $signed(input_fmap_1[15:0]) +
	( 15'sd 13081) * $signed(input_fmap_2[15:0]) +
	( 16'sd 29036) * $signed(input_fmap_3[15:0]) +
	( 15'sd 9539) * $signed(input_fmap_4[15:0]) +
	( 10'sd 500) * $signed(input_fmap_5[15:0]) +
	( 16'sd 32746) * $signed(input_fmap_6[15:0]) +
	( 15'sd 12794) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_12;
assign conv_mac_12 = 
	( 15'sd 13334) * $signed(input_fmap_0[15:0]) +
	( 16'sd 18719) * $signed(input_fmap_1[15:0]) +
	( 15'sd 13653) * $signed(input_fmap_2[15:0]) +
	( 16'sd 27844) * $signed(input_fmap_3[15:0]) +
	( 16'sd 31448) * $signed(input_fmap_4[15:0]) +
	( 16'sd 30069) * $signed(input_fmap_5[15:0]) +
	( 16'sd 30373) * $signed(input_fmap_6[15:0]) +
	( 16'sd 31742) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_13;
assign conv_mac_13 = 
	( 16'sd 31835) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6751) * $signed(input_fmap_1[15:0]) +
	( 15'sd 13299) * $signed(input_fmap_2[15:0]) +
	( 16'sd 19823) * $signed(input_fmap_3[15:0]) +
	( 16'sd 27378) * $signed(input_fmap_4[15:0]) +
	( 16'sd 20460) * $signed(input_fmap_5[15:0]) +
	( 16'sd 24844) * $signed(input_fmap_6[15:0]) +
	( 16'sd 26109) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_14;
assign conv_mac_14 = 
	( 16'sd 19009) * $signed(input_fmap_0[15:0]) +
	( 16'sd 28505) * $signed(input_fmap_1[15:0]) +
	( 16'sd 18625) * $signed(input_fmap_2[15:0]) +
	( 16'sd 24940) * $signed(input_fmap_3[15:0]) +
	( 16'sd 21223) * $signed(input_fmap_4[15:0]) +
	( 15'sd 16015) * $signed(input_fmap_5[15:0]) +
	( 11'sd 643) * $signed(input_fmap_6[15:0]) +
	( 15'sd 14120) * $signed(input_fmap_7[15:0]);

logic signed [31:0] conv_mac_15;
assign conv_mac_15 = 
	( 15'sd 12030) * $signed(input_fmap_0[15:0]) +
	( 15'sd 14480) * $signed(input_fmap_1[15:0]) +
	( 16'sd 31630) * $signed(input_fmap_2[15:0]) +
	( 16'sd 28232) * $signed(input_fmap_3[15:0]) +
	( 16'sd 31853) * $signed(input_fmap_4[15:0]) +
	( 16'sd 20500) * $signed(input_fmap_5[15:0]) +
	( 11'sd 988) * $signed(input_fmap_6[15:0]) +
	( 16'sd 17696) * $signed(input_fmap_7[15:0]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 14'd6739;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1 + 13'd3977;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 15'd13463;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3 + 16'd25198;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4 + 16'd17438;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5 + 16'd30618;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6 + 16'd18857;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7 + 16'd21685;
logic [31:0] bias_add_8;
assign bias_add_8 = conv_mac_8 + 12'd1274;
logic [31:0] bias_add_9;
assign bias_add_9 = conv_mac_9 + 16'd28481;
logic [31:0] bias_add_10;
assign bias_add_10 = conv_mac_10 + 10'd366;
logic [31:0] bias_add_11;
assign bias_add_11 = conv_mac_11 + 14'd6474;
logic [31:0] bias_add_12;
assign bias_add_12 = conv_mac_12 + 16'd19671;
logic [31:0] bias_add_13;
assign bias_add_13 = conv_mac_13 + 16'd19401;
logic [31:0] bias_add_14;
assign bias_add_14 = conv_mac_14 + 14'd7003;
logic [31:0] bias_add_15;
assign bias_add_15 = conv_mac_15 + 11'd812;

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
logic [15:0] relu_8;
assign relu_8[15:0] = (bias_add_8[31]==0) ? ((bias_add_8<3'd6) ? {{bias_add_8[31],bias_add_8[29:15]}} :'d6) : '0;
logic [15:0] relu_9;
assign relu_9[15:0] = (bias_add_9[31]==0) ? ((bias_add_9<3'd6) ? {{bias_add_9[31],bias_add_9[29:15]}} :'d6) : '0;
logic [15:0] relu_10;
assign relu_10[15:0] = (bias_add_10[31]==0) ? ((bias_add_10<3'd6) ? {{bias_add_10[31],bias_add_10[29:15]}} :'d6) : '0;
logic [15:0] relu_11;
assign relu_11[15:0] = (bias_add_11[31]==0) ? ((bias_add_11<3'd6) ? {{bias_add_11[31],bias_add_11[29:15]}} :'d6) : '0;
logic [15:0] relu_12;
assign relu_12[15:0] = (bias_add_12[31]==0) ? ((bias_add_12<3'd6) ? {{bias_add_12[31],bias_add_12[29:15]}} :'d6) : '0;
logic [15:0] relu_13;
assign relu_13[15:0] = (bias_add_13[31]==0) ? ((bias_add_13<3'd6) ? {{bias_add_13[31],bias_add_13[29:15]}} :'d6) : '0;
logic [15:0] relu_14;
assign relu_14[15:0] = (bias_add_14[31]==0) ? ((bias_add_14<3'd6) ? {{bias_add_14[31],bias_add_14[29:15]}} :'d6) : '0;
logic [15:0] relu_15;
assign relu_15[15:0] = (bias_add_15[31]==0) ? ((bias_add_15<3'd6) ? {{bias_add_15[31],bias_add_15[29:15]}} :'d6) : '0;

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
