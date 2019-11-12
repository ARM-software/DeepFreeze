module conv3_pw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [256-1:0] input_act,
    output logic [512-1:0] output_act,
    output logic ready
);

logic [256-1:0] input_act_ff;
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
logic [15:0] input_fmap_8;
assign input_fmap_8 = input_act_ff[143:128];
logic [15:0] input_fmap_9;
assign input_fmap_9 = input_act_ff[159:144];
logic [15:0] input_fmap_10;
assign input_fmap_10 = input_act_ff[175:160];
logic [15:0] input_fmap_11;
assign input_fmap_11 = input_act_ff[191:176];
logic [15:0] input_fmap_12;
assign input_fmap_12 = input_act_ff[207:192];
logic [15:0] input_fmap_13;
assign input_fmap_13 = input_act_ff[223:208];
logic [15:0] input_fmap_14;
assign input_fmap_14 = input_act_ff[239:224];
logic [15:0] input_fmap_15;
assign input_fmap_15 = input_act_ff[255:240];

logic signed [31:0] conv_mac_0;
assign conv_mac_0 = 
	( 14'sd 6730) * $signed(input_fmap_0[15:0]) +
	( 15'sd 10366) * $signed(input_fmap_1[15:0]) +
	( 14'sd 6584) * $signed(input_fmap_2[15:0]) +
	( 15'sd 12376) * $signed(input_fmap_3[15:0]) +
	( 14'sd 4847) * $signed(input_fmap_4[15:0]) +
	( 15'sd 12657) * $signed(input_fmap_5[15:0]) +
	( 15'sd 12166) * $signed(input_fmap_6[15:0]) +
	( 15'sd 13837) * $signed(input_fmap_7[15:0]) +
	( 16'sd 18902) * $signed(input_fmap_8[15:0]) +
	( 16'sd 27545) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1455) * $signed(input_fmap_10[15:0]) +
	( 13'sd 3515) * $signed(input_fmap_11[15:0]) +
	( 13'sd 3800) * $signed(input_fmap_12[15:0]) +
	( 12'sd 1778) * $signed(input_fmap_13[15:0]) +
	( 16'sd 20207) * $signed(input_fmap_14[15:0]) +
	( 11'sd 936) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 16'sd 21609) * $signed(input_fmap_0[15:0]) +
	( 16'sd 26386) * $signed(input_fmap_1[15:0]) +
	( 16'sd 26893) * $signed(input_fmap_2[15:0]) +
	( 16'sd 28207) * $signed(input_fmap_3[15:0]) +
	( 15'sd 11854) * $signed(input_fmap_4[15:0]) +
	( 14'sd 7411) * $signed(input_fmap_5[15:0]) +
	( 12'sd 2032) * $signed(input_fmap_6[15:0]) +
	( 16'sd 27288) * $signed(input_fmap_7[15:0]) +
	( 16'sd 20991) * $signed(input_fmap_8[15:0]) +
	( 16'sd 21961) * $signed(input_fmap_9[15:0]) +
	( 16'sd 20702) * $signed(input_fmap_10[15:0]) +
	( 15'sd 12421) * $signed(input_fmap_11[15:0]) +
	( 15'sd 12975) * $signed(input_fmap_12[15:0]) +
	( 15'sd 8917) * $signed(input_fmap_13[15:0]) +
	( 16'sd 20010) * $signed(input_fmap_14[15:0]) +
	( 15'sd 9480) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 16'sd 19343) * $signed(input_fmap_0[15:0]) +
	( 15'sd 8509) * $signed(input_fmap_1[15:0]) +
	( 16'sd 22027) * $signed(input_fmap_2[15:0]) +
	( 15'sd 13455) * $signed(input_fmap_3[15:0]) +
	( 16'sd 18840) * $signed(input_fmap_4[15:0]) +
	( 16'sd 17896) * $signed(input_fmap_5[15:0]) +
	( 16'sd 20021) * $signed(input_fmap_6[15:0]) +
	( 11'sd 524) * $signed(input_fmap_7[15:0]) +
	( 16'sd 32364) * $signed(input_fmap_8[15:0]) +
	( 16'sd 31045) * $signed(input_fmap_9[15:0]) +
	( 16'sd 29804) * $signed(input_fmap_10[15:0]) +
	( 12'sd 2001) * $signed(input_fmap_11[15:0]) +
	( 16'sd 29035) * $signed(input_fmap_12[15:0]) +
	( 15'sd 9906) * $signed(input_fmap_13[15:0]) +
	( 15'sd 8856) * $signed(input_fmap_14[15:0]) +
	( 15'sd 8665) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 15'sd 8581) * $signed(input_fmap_0[15:0]) +
	( 16'sd 32249) * $signed(input_fmap_1[15:0]) +
	( 16'sd 17542) * $signed(input_fmap_2[15:0]) +
	( 16'sd 18593) * $signed(input_fmap_3[15:0]) +
	( 16'sd 23409) * $signed(input_fmap_4[15:0]) +
	( 16'sd 29156) * $signed(input_fmap_5[15:0]) +
	( 16'sd 19249) * $signed(input_fmap_6[15:0]) +
	( 16'sd 21850) * $signed(input_fmap_7[15:0]) +
	( 16'sd 19425) * $signed(input_fmap_8[15:0]) +
	( 16'sd 28495) * $signed(input_fmap_9[15:0]) +
	( 16'sd 21925) * $signed(input_fmap_10[15:0]) +
	( 14'sd 4818) * $signed(input_fmap_11[15:0]) +
	( 16'sd 31187) * $signed(input_fmap_12[15:0]) +
	( 15'sd 14927) * $signed(input_fmap_13[15:0]) +
	( 16'sd 31127) * $signed(input_fmap_14[15:0]) +
	( 16'sd 22348) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 16'sd 25236) * $signed(input_fmap_0[15:0]) +
	( 14'sd 7585) * $signed(input_fmap_1[15:0]) +
	( 12'sd 1506) * $signed(input_fmap_2[15:0]) +
	( 16'sd 31458) * $signed(input_fmap_3[15:0]) +
	( 16'sd 24726) * $signed(input_fmap_4[15:0]) +
	( 14'sd 5724) * $signed(input_fmap_5[15:0]) +
	( 15'sd 8711) * $signed(input_fmap_6[15:0]) +
	( 15'sd 14727) * $signed(input_fmap_7[15:0]) +
	( 13'sd 3322) * $signed(input_fmap_8[15:0]) +
	( 14'sd 5741) * $signed(input_fmap_9[15:0]) +
	( 15'sd 14839) * $signed(input_fmap_10[15:0]) +
	( 15'sd 15071) * $signed(input_fmap_11[15:0]) +
	( 14'sd 4796) * $signed(input_fmap_12[15:0]) +
	( 14'sd 5830) * $signed(input_fmap_13[15:0]) +
	( 16'sd 27175) * $signed(input_fmap_14[15:0]) +
	( 16'sd 17825) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 16'sd 22931) * $signed(input_fmap_0[15:0]) +
	( 11'sd 1009) * $signed(input_fmap_1[15:0]) +
	( 16'sd 19551) * $signed(input_fmap_2[15:0]) +
	( 14'sd 5151) * $signed(input_fmap_3[15:0]) +
	( 16'sd 31489) * $signed(input_fmap_4[15:0]) +
	( 16'sd 20036) * $signed(input_fmap_5[15:0]) +
	( 13'sd 2950) * $signed(input_fmap_6[15:0]) +
	( 16'sd 22271) * $signed(input_fmap_7[15:0]) +
	( 16'sd 16465) * $signed(input_fmap_8[15:0]) +
	( 16'sd 26650) * $signed(input_fmap_9[15:0]) +
	( 13'sd 2130) * $signed(input_fmap_10[15:0]) +
	( 14'sd 6884) * $signed(input_fmap_11[15:0]) +
	( 16'sd 17480) * $signed(input_fmap_12[15:0]) +
	( 16'sd 29765) * $signed(input_fmap_13[15:0]) +
	( 16'sd 16635) * $signed(input_fmap_14[15:0]) +
	( 16'sd 17504) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 16'sd 27676) * $signed(input_fmap_0[15:0]) +
	( 14'sd 5471) * $signed(input_fmap_1[15:0]) +
	( 14'sd 5187) * $signed(input_fmap_2[15:0]) +
	( 16'sd 21507) * $signed(input_fmap_3[15:0]) +
	( 15'sd 14638) * $signed(input_fmap_4[15:0]) +
	( 14'sd 7466) * $signed(input_fmap_5[15:0]) +
	( 16'sd 17095) * $signed(input_fmap_6[15:0]) +
	( 16'sd 18835) * $signed(input_fmap_7[15:0]) +
	( 15'sd 12459) * $signed(input_fmap_8[15:0]) +
	( 16'sd 24713) * $signed(input_fmap_9[15:0]) +
	( 16'sd 26192) * $signed(input_fmap_10[15:0]) +
	( 15'sd 8563) * $signed(input_fmap_11[15:0]) +
	( 16'sd 25604) * $signed(input_fmap_12[15:0]) +
	( 15'sd 13942) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13195) * $signed(input_fmap_14[15:0]) +
	( 16'sd 25639) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 16'sd 31841) * $signed(input_fmap_0[15:0]) +
	( 16'sd 25515) * $signed(input_fmap_1[15:0]) +
	( 15'sd 9970) * $signed(input_fmap_2[15:0]) +
	( 16'sd 31988) * $signed(input_fmap_3[15:0]) +
	( 14'sd 7941) * $signed(input_fmap_4[15:0]) +
	( 16'sd 17248) * $signed(input_fmap_5[15:0]) +
	( 15'sd 9477) * $signed(input_fmap_6[15:0]) +
	( 16'sd 16399) * $signed(input_fmap_7[15:0]) +
	( 15'sd 8750) * $signed(input_fmap_8[15:0]) +
	( 16'sd 16487) * $signed(input_fmap_9[15:0]) +
	( 13'sd 3811) * $signed(input_fmap_10[15:0]) +
	( 16'sd 20853) * $signed(input_fmap_11[15:0]) +
	( 15'sd 13479) * $signed(input_fmap_12[15:0]) +
	( 16'sd 26203) * $signed(input_fmap_13[15:0]) +
	( 14'sd 5134) * $signed(input_fmap_14[15:0]) +
	( 16'sd 25997) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_8;
assign conv_mac_8 = 
	( 13'sd 2933) * $signed(input_fmap_0[15:0]) +
	( 15'sd 14858) * $signed(input_fmap_1[15:0]) +
	( 13'sd 4021) * $signed(input_fmap_2[15:0]) +
	( 15'sd 9713) * $signed(input_fmap_3[15:0]) +
	( 14'sd 5918) * $signed(input_fmap_4[15:0]) +
	( 15'sd 11136) * $signed(input_fmap_5[15:0]) +
	( 14'sd 6716) * $signed(input_fmap_6[15:0]) +
	( 16'sd 23773) * $signed(input_fmap_7[15:0]) +
	( 16'sd 19118) * $signed(input_fmap_8[15:0]) +
	( 16'sd 20199) * $signed(input_fmap_9[15:0]) +
	( 16'sd 17365) * $signed(input_fmap_10[15:0]) +
	( 16'sd 26018) * $signed(input_fmap_11[15:0]) +
	( 15'sd 13843) * $signed(input_fmap_12[15:0]) +
	( 16'sd 30590) * $signed(input_fmap_13[15:0]) +
	( 16'sd 22222) * $signed(input_fmap_14[15:0]) +
	( 15'sd 10960) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_9;
assign conv_mac_9 = 
	( 13'sd 2326) * $signed(input_fmap_0[15:0]) +
	( 15'sd 15658) * $signed(input_fmap_1[15:0]) +
	( 15'sd 8979) * $signed(input_fmap_2[15:0]) +
	( 14'sd 7582) * $signed(input_fmap_3[15:0]) +
	( 16'sd 30332) * $signed(input_fmap_4[15:0]) +
	( 15'sd 8967) * $signed(input_fmap_5[15:0]) +
	( 16'sd 25669) * $signed(input_fmap_6[15:0]) +
	( 15'sd 10561) * $signed(input_fmap_7[15:0]) +
	( 16'sd 19294) * $signed(input_fmap_8[15:0]) +
	( 15'sd 14486) * $signed(input_fmap_9[15:0]) +
	( 16'sd 30672) * $signed(input_fmap_10[15:0]) +
	( 16'sd 32131) * $signed(input_fmap_11[15:0]) +
	( 11'sd 870) * $signed(input_fmap_12[15:0]) +
	( 16'sd 21252) * $signed(input_fmap_13[15:0]) +
	( 16'sd 17091) * $signed(input_fmap_14[15:0]) +
	( 15'sd 9193) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_10;
assign conv_mac_10 = 
	( 15'sd 9340) * $signed(input_fmap_0[15:0]) +
	( 16'sd 19980) * $signed(input_fmap_1[15:0]) +
	( 14'sd 6749) * $signed(input_fmap_2[15:0]) +
	( 15'sd 8397) * $signed(input_fmap_3[15:0]) +
	( 14'sd 7816) * $signed(input_fmap_4[15:0]) +
	( 15'sd 11812) * $signed(input_fmap_5[15:0]) +
	( 16'sd 31301) * $signed(input_fmap_6[15:0]) +
	( 16'sd 20838) * $signed(input_fmap_7[15:0]) +
	( 16'sd 29275) * $signed(input_fmap_8[15:0]) +
	( 16'sd 20901) * $signed(input_fmap_9[15:0]) +
	( 14'sd 7701) * $signed(input_fmap_10[15:0]) +
	( 15'sd 14057) * $signed(input_fmap_11[15:0]) +
	( 16'sd 30650) * $signed(input_fmap_12[15:0]) +
	( 16'sd 30872) * $signed(input_fmap_13[15:0]) +
	( 14'sd 7258) * $signed(input_fmap_14[15:0]) +
	( 16'sd 26507) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_11;
assign conv_mac_11 = 
	( 16'sd 27920) * $signed(input_fmap_0[15:0]) +
	( 15'sd 15859) * $signed(input_fmap_1[15:0]) +
	( 14'sd 6833) * $signed(input_fmap_2[15:0]) +
	( 16'sd 18733) * $signed(input_fmap_3[15:0]) +
	( 16'sd 19854) * $signed(input_fmap_4[15:0]) +
	( 11'sd 640) * $signed(input_fmap_5[15:0]) +
	( 15'sd 10234) * $signed(input_fmap_6[15:0]) +
	( 15'sd 9450) * $signed(input_fmap_7[15:0]) +
	( 16'sd 24051) * $signed(input_fmap_8[15:0]) +
	( 12'sd 1466) * $signed(input_fmap_9[15:0]) +
	( 16'sd 22334) * $signed(input_fmap_10[15:0]) +
	( 16'sd 30630) * $signed(input_fmap_11[15:0]) +
	( 16'sd 24010) * $signed(input_fmap_12[15:0]) +
	( 14'sd 7625) * $signed(input_fmap_13[15:0]) +
	( 16'sd 31699) * $signed(input_fmap_14[15:0]) +
	( 16'sd 27182) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_12;
assign conv_mac_12 = 
	( 16'sd 28748) * $signed(input_fmap_0[15:0]) +
	( 16'sd 29220) * $signed(input_fmap_1[15:0]) +
	( 16'sd 28206) * $signed(input_fmap_2[15:0]) +
	( 16'sd 20204) * $signed(input_fmap_3[15:0]) +
	( 16'sd 17107) * $signed(input_fmap_4[15:0]) +
	( 16'sd 27793) * $signed(input_fmap_5[15:0]) +
	( 16'sd 27752) * $signed(input_fmap_6[15:0]) +
	( 15'sd 11682) * $signed(input_fmap_7[15:0]) +
	( 16'sd 20642) * $signed(input_fmap_8[15:0]) +
	( 16'sd 22018) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1607) * $signed(input_fmap_10[15:0]) +
	( 16'sd 20210) * $signed(input_fmap_11[15:0]) +
	( 16'sd 17865) * $signed(input_fmap_12[15:0]) +
	( 14'sd 7409) * $signed(input_fmap_13[15:0]) +
	( 16'sd 17364) * $signed(input_fmap_14[15:0]) +
	( 16'sd 20834) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_13;
assign conv_mac_13 = 
	( 14'sd 6329) * $signed(input_fmap_0[15:0]) +
	( 15'sd 9994) * $signed(input_fmap_1[15:0]) +
	( 16'sd 28289) * $signed(input_fmap_2[15:0]) +
	( 13'sd 3375) * $signed(input_fmap_3[15:0]) +
	( 14'sd 5008) * $signed(input_fmap_4[15:0]) +
	( 16'sd 27983) * $signed(input_fmap_5[15:0]) +
	( 16'sd 22347) * $signed(input_fmap_6[15:0]) +
	( 16'sd 31672) * $signed(input_fmap_7[15:0]) +
	( 16'sd 18865) * $signed(input_fmap_8[15:0]) +
	( 16'sd 22079) * $signed(input_fmap_9[15:0]) +
	( 10'sd 427) * $signed(input_fmap_10[15:0]) +
	( 15'sd 9151) * $signed(input_fmap_11[15:0]) +
	( 15'sd 12561) * $signed(input_fmap_12[15:0]) +
	( 15'sd 13142) * $signed(input_fmap_13[15:0]) +
	( 16'sd 16633) * $signed(input_fmap_14[15:0]) +
	( 16'sd 30535) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_14;
assign conv_mac_14 = 
	( 16'sd 17443) * $signed(input_fmap_0[15:0]) +
	( 16'sd 25684) * $signed(input_fmap_1[15:0]) +
	( 16'sd 25304) * $signed(input_fmap_2[15:0]) +
	( 16'sd 25635) * $signed(input_fmap_3[15:0]) +
	( 16'sd 31983) * $signed(input_fmap_4[15:0]) +
	( 16'sd 21136) * $signed(input_fmap_5[15:0]) +
	( 16'sd 24990) * $signed(input_fmap_6[15:0]) +
	( 16'sd 17088) * $signed(input_fmap_7[15:0]) +
	( 14'sd 5649) * $signed(input_fmap_8[15:0]) +
	( 15'sd 16026) * $signed(input_fmap_9[15:0]) +
	( 15'sd 14671) * $signed(input_fmap_10[15:0]) +
	( 16'sd 29693) * $signed(input_fmap_11[15:0]) +
	( 14'sd 4313) * $signed(input_fmap_12[15:0]) +
	( 16'sd 29999) * $signed(input_fmap_13[15:0]) +
	( 15'sd 9122) * $signed(input_fmap_14[15:0]) +
	( 15'sd 13900) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_15;
assign conv_mac_15 = 
	( 15'sd 14935) * $signed(input_fmap_0[15:0]) +
	( 16'sd 25955) * $signed(input_fmap_1[15:0]) +
	( 16'sd 20217) * $signed(input_fmap_2[15:0]) +
	( 16'sd 18520) * $signed(input_fmap_3[15:0]) +
	( 16'sd 16986) * $signed(input_fmap_4[15:0]) +
	( 16'sd 32033) * $signed(input_fmap_5[15:0]) +
	( 15'sd 10125) * $signed(input_fmap_6[15:0]) +
	( 16'sd 17482) * $signed(input_fmap_7[15:0]) +
	( 16'sd 25846) * $signed(input_fmap_8[15:0]) +
	( 16'sd 28371) * $signed(input_fmap_9[15:0]) +
	( 16'sd 28518) * $signed(input_fmap_10[15:0]) +
	( 16'sd 30839) * $signed(input_fmap_11[15:0]) +
	( 16'sd 20629) * $signed(input_fmap_12[15:0]) +
	( 15'sd 15702) * $signed(input_fmap_13[15:0]) +
	( 16'sd 24452) * $signed(input_fmap_14[15:0]) +
	( 16'sd 22908) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_16;
assign conv_mac_16 = 
	( 16'sd 28059) * $signed(input_fmap_0[15:0]) +
	( 15'sd 14290) * $signed(input_fmap_1[15:0]) +
	( 15'sd 13908) * $signed(input_fmap_2[15:0]) +
	( 16'sd 32254) * $signed(input_fmap_3[15:0]) +
	( 13'sd 2921) * $signed(input_fmap_4[15:0]) +
	( 16'sd 30562) * $signed(input_fmap_5[15:0]) +
	( 16'sd 24046) * $signed(input_fmap_6[15:0]) +
	( 13'sd 3523) * $signed(input_fmap_7[15:0]) +
	( 16'sd 27386) * $signed(input_fmap_8[15:0]) +
	( 15'sd 11849) * $signed(input_fmap_9[15:0]) +
	( 16'sd 29825) * $signed(input_fmap_10[15:0]) +
	( 9'sd 242) * $signed(input_fmap_11[15:0]) +
	( 15'sd 13920) * $signed(input_fmap_12[15:0]) +
	( 16'sd 29904) * $signed(input_fmap_13[15:0]) +
	( 16'sd 25629) * $signed(input_fmap_14[15:0]) +
	( 16'sd 21770) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_17;
assign conv_mac_17 = 
	( 15'sd 8357) * $signed(input_fmap_0[15:0]) +
	( 15'sd 16351) * $signed(input_fmap_1[15:0]) +
	( 16'sd 27679) * $signed(input_fmap_2[15:0]) +
	( 16'sd 17771) * $signed(input_fmap_3[15:0]) +
	( 14'sd 4514) * $signed(input_fmap_4[15:0]) +
	( 16'sd 20232) * $signed(input_fmap_5[15:0]) +
	( 16'sd 23808) * $signed(input_fmap_6[15:0]) +
	( 13'sd 4015) * $signed(input_fmap_7[15:0]) +
	( 16'sd 18657) * $signed(input_fmap_8[15:0]) +
	( 15'sd 15571) * $signed(input_fmap_9[15:0]) +
	( 14'sd 7219) * $signed(input_fmap_10[15:0]) +
	( 16'sd 25870) * $signed(input_fmap_11[15:0]) +
	( 15'sd 11785) * $signed(input_fmap_12[15:0]) +
	( 16'sd 22934) * $signed(input_fmap_13[15:0]) +
	( 15'sd 14499) * $signed(input_fmap_14[15:0]) +
	( 15'sd 14770) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_18;
assign conv_mac_18 = 
	( 16'sd 21440) * $signed(input_fmap_0[15:0]) +
	( 15'sd 11766) * $signed(input_fmap_1[15:0]) +
	( 15'sd 11250) * $signed(input_fmap_2[15:0]) +
	( 16'sd 25689) * $signed(input_fmap_3[15:0]) +
	( 16'sd 25210) * $signed(input_fmap_4[15:0]) +
	( 13'sd 3358) * $signed(input_fmap_5[15:0]) +
	( 16'sd 30319) * $signed(input_fmap_6[15:0]) +
	( 16'sd 30129) * $signed(input_fmap_7[15:0]) +
	( 16'sd 26396) * $signed(input_fmap_8[15:0]) +
	( 16'sd 26114) * $signed(input_fmap_9[15:0]) +
	( 16'sd 17154) * $signed(input_fmap_10[15:0]) +
	( 15'sd 12725) * $signed(input_fmap_11[15:0]) +
	( 16'sd 16581) * $signed(input_fmap_12[15:0]) +
	( 14'sd 5194) * $signed(input_fmap_13[15:0]) +
	( 16'sd 25988) * $signed(input_fmap_14[15:0]) +
	( 16'sd 19325) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_19;
assign conv_mac_19 = 
	( 16'sd 29906) * $signed(input_fmap_0[15:0]) +
	( 16'sd 27838) * $signed(input_fmap_1[15:0]) +
	( 16'sd 17982) * $signed(input_fmap_2[15:0]) +
	( 16'sd 18704) * $signed(input_fmap_3[15:0]) +
	( 16'sd 17060) * $signed(input_fmap_4[15:0]) +
	( 15'sd 12273) * $signed(input_fmap_5[15:0]) +
	( 15'sd 9307) * $signed(input_fmap_6[15:0]) +
	( 15'sd 13860) * $signed(input_fmap_7[15:0]) +
	( 16'sd 20676) * $signed(input_fmap_8[15:0]) +
	( 11'sd 629) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1147) * $signed(input_fmap_10[15:0]) +
	( 15'sd 9460) * $signed(input_fmap_11[15:0]) +
	( 15'sd 10480) * $signed(input_fmap_12[15:0]) +
	( 15'sd 11650) * $signed(input_fmap_13[15:0]) +
	( 15'sd 12425) * $signed(input_fmap_14[15:0]) +
	( 16'sd 31381) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_20;
assign conv_mac_20 = 
	( 15'sd 13534) * $signed(input_fmap_0[15:0]) +
	( 11'sd 736) * $signed(input_fmap_1[15:0]) +
	( 15'sd 15202) * $signed(input_fmap_2[15:0]) +
	( 13'sd 2276) * $signed(input_fmap_3[15:0]) +
	( 16'sd 31769) * $signed(input_fmap_4[15:0]) +
	( 10'sd 399) * $signed(input_fmap_5[15:0]) +
	( 15'sd 8581) * $signed(input_fmap_6[15:0]) +
	( 16'sd 32623) * $signed(input_fmap_7[15:0]) +
	( 16'sd 24636) * $signed(input_fmap_8[15:0]) +
	( 16'sd 29472) * $signed(input_fmap_9[15:0]) +
	( 13'sd 3903) * $signed(input_fmap_10[15:0]) +
	( 12'sd 1317) * $signed(input_fmap_11[15:0]) +
	( 15'sd 11805) * $signed(input_fmap_12[15:0]) +
	( 16'sd 27678) * $signed(input_fmap_13[15:0]) +
	( 16'sd 21560) * $signed(input_fmap_14[15:0]) +
	( 15'sd 10042) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_21;
assign conv_mac_21 = 
	( 16'sd 32591) * $signed(input_fmap_0[15:0]) +
	( 14'sd 4523) * $signed(input_fmap_1[15:0]) +
	( 16'sd 28552) * $signed(input_fmap_2[15:0]) +
	( 16'sd 21295) * $signed(input_fmap_3[15:0]) +
	( 14'sd 7128) * $signed(input_fmap_4[15:0]) +
	( 16'sd 32354) * $signed(input_fmap_5[15:0]) +
	( 16'sd 18329) * $signed(input_fmap_6[15:0]) +
	( 14'sd 5533) * $signed(input_fmap_7[15:0]) +
	( 16'sd 27434) * $signed(input_fmap_8[15:0]) +
	( 16'sd 24592) * $signed(input_fmap_9[15:0]) +
	( 16'sd 25314) * $signed(input_fmap_10[15:0]) +
	( 14'sd 7251) * $signed(input_fmap_11[15:0]) +
	( 9'sd 137) * $signed(input_fmap_12[15:0]) +
	( 16'sd 31815) * $signed(input_fmap_13[15:0]) +
	( 16'sd 24262) * $signed(input_fmap_14[15:0]) +
	( 16'sd 20076) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_22;
assign conv_mac_22 = 
	( 14'sd 4494) * $signed(input_fmap_0[15:0]) +
	( 12'sd 1125) * $signed(input_fmap_1[15:0]) +
	( 16'sd 18572) * $signed(input_fmap_2[15:0]) +
	( 16'sd 22779) * $signed(input_fmap_3[15:0]) +
	( 16'sd 20158) * $signed(input_fmap_4[15:0]) +
	( 14'sd 7689) * $signed(input_fmap_5[15:0]) +
	( 16'sd 24955) * $signed(input_fmap_6[15:0]) +
	( 14'sd 7900) * $signed(input_fmap_7[15:0]) +
	( 16'sd 22391) * $signed(input_fmap_8[15:0]) +
	( 16'sd 17816) * $signed(input_fmap_9[15:0]) +
	( 11'sd 962) * $signed(input_fmap_10[15:0]) +
	( 14'sd 5212) * $signed(input_fmap_11[15:0]) +
	( 16'sd 22581) * $signed(input_fmap_12[15:0]) +
	( 16'sd 28005) * $signed(input_fmap_13[15:0]) +
	( 15'sd 11252) * $signed(input_fmap_14[15:0]) +
	( 16'sd 18513) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_23;
assign conv_mac_23 = 
	( 14'sd 4618) * $signed(input_fmap_0[15:0]) +
	( 15'sd 8917) * $signed(input_fmap_1[15:0]) +
	( 16'sd 16893) * $signed(input_fmap_2[15:0]) +
	( 13'sd 3541) * $signed(input_fmap_3[15:0]) +
	( 16'sd 19441) * $signed(input_fmap_4[15:0]) +
	( 16'sd 28393) * $signed(input_fmap_5[15:0]) +
	( 14'sd 6914) * $signed(input_fmap_6[15:0]) +
	( 16'sd 31536) * $signed(input_fmap_7[15:0]) +
	( 15'sd 9565) * $signed(input_fmap_8[15:0]) +
	( 15'sd 11355) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1228) * $signed(input_fmap_10[15:0]) +
	( 15'sd 9661) * $signed(input_fmap_11[15:0]) +
	( 16'sd 20183) * $signed(input_fmap_12[15:0]) +
	( 15'sd 14291) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13205) * $signed(input_fmap_14[15:0]) +
	( 16'sd 32197) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_24;
assign conv_mac_24 = 
	( 16'sd 20314) * $signed(input_fmap_0[15:0]) +
	( 16'sd 26645) * $signed(input_fmap_1[15:0]) +
	( 15'sd 10896) * $signed(input_fmap_2[15:0]) +
	( 16'sd 29011) * $signed(input_fmap_3[15:0]) +
	( 14'sd 4996) * $signed(input_fmap_4[15:0]) +
	( 16'sd 31287) * $signed(input_fmap_5[15:0]) +
	( 14'sd 5910) * $signed(input_fmap_6[15:0]) +
	( 16'sd 30479) * $signed(input_fmap_7[15:0]) +
	( 14'sd 6263) * $signed(input_fmap_8[15:0]) +
	( 14'sd 7979) * $signed(input_fmap_9[15:0]) +
	( 16'sd 23907) * $signed(input_fmap_10[15:0]) +
	( 14'sd 6562) * $signed(input_fmap_11[15:0]) +
	( 11'sd 742) * $signed(input_fmap_12[15:0]) +
	( 14'sd 7085) * $signed(input_fmap_13[15:0]) +
	( 16'sd 30524) * $signed(input_fmap_14[15:0]) +
	( 10'sd 274) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_25;
assign conv_mac_25 = 
	( 16'sd 31985) * $signed(input_fmap_0[15:0]) +
	( 16'sd 28686) * $signed(input_fmap_1[15:0]) +
	( 16'sd 23199) * $signed(input_fmap_2[15:0]) +
	( 16'sd 20047) * $signed(input_fmap_3[15:0]) +
	( 15'sd 10284) * $signed(input_fmap_4[15:0]) +
	( 11'sd 790) * $signed(input_fmap_5[15:0]) +
	( 16'sd 23958) * $signed(input_fmap_6[15:0]) +
	( 14'sd 4147) * $signed(input_fmap_7[15:0]) +
	( 15'sd 13766) * $signed(input_fmap_8[15:0]) +
	( 15'sd 10104) * $signed(input_fmap_9[15:0]) +
	( 16'sd 17267) * $signed(input_fmap_10[15:0]) +
	( 13'sd 2772) * $signed(input_fmap_11[15:0]) +
	( 16'sd 27971) * $signed(input_fmap_12[15:0]) +
	( 14'sd 6722) * $signed(input_fmap_13[15:0]) +
	( 15'sd 10304) * $signed(input_fmap_14[15:0]) +
	( 16'sd 20560) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_26;
assign conv_mac_26 = 
	( 15'sd 12228) * $signed(input_fmap_0[15:0]) +
	( 16'sd 20434) * $signed(input_fmap_1[15:0]) +
	( 14'sd 5821) * $signed(input_fmap_2[15:0]) +
	( 16'sd 25819) * $signed(input_fmap_3[15:0]) +
	( 12'sd 1846) * $signed(input_fmap_4[15:0]) +
	( 11'sd 894) * $signed(input_fmap_5[15:0]) +
	( 14'sd 6205) * $signed(input_fmap_6[15:0]) +
	( 16'sd 29315) * $signed(input_fmap_7[15:0]) +
	( 15'sd 12352) * $signed(input_fmap_8[15:0]) +
	( 16'sd 21236) * $signed(input_fmap_9[15:0]) +
	( 15'sd 15189) * $signed(input_fmap_10[15:0]) +
	( 16'sd 17196) * $signed(input_fmap_11[15:0]) +
	( 16'sd 19977) * $signed(input_fmap_12[15:0]) +
	( 15'sd 9925) * $signed(input_fmap_13[15:0]) +
	( 16'sd 26442) * $signed(input_fmap_14[15:0]) +
	( 13'sd 3306) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_27;
assign conv_mac_27 = 
	( 13'sd 2142) * $signed(input_fmap_0[15:0]) +
	( 16'sd 16993) * $signed(input_fmap_1[15:0]) +
	( 15'sd 10259) * $signed(input_fmap_2[15:0]) +
	( 15'sd 11245) * $signed(input_fmap_3[15:0]) +
	( 16'sd 22839) * $signed(input_fmap_4[15:0]) +
	( 16'sd 17938) * $signed(input_fmap_5[15:0]) +
	( 16'sd 27660) * $signed(input_fmap_6[15:0]) +
	( 15'sd 10388) * $signed(input_fmap_7[15:0]) +
	( 15'sd 15209) * $signed(input_fmap_8[15:0]) +
	( 13'sd 2891) * $signed(input_fmap_9[15:0]) +
	( 16'sd 28821) * $signed(input_fmap_10[15:0]) +
	( 15'sd 13840) * $signed(input_fmap_11[15:0]) +
	( 15'sd 9632) * $signed(input_fmap_12[15:0]) +
	( 15'sd 9405) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13647) * $signed(input_fmap_14[15:0]) +
	( 15'sd 9560) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_28;
assign conv_mac_28 = 
	( 14'sd 6974) * $signed(input_fmap_0[15:0]) +
	( 12'sd 1451) * $signed(input_fmap_1[15:0]) +
	( 16'sd 28246) * $signed(input_fmap_2[15:0]) +
	( 16'sd 28083) * $signed(input_fmap_3[15:0]) +
	( 14'sd 6879) * $signed(input_fmap_4[15:0]) +
	( 15'sd 14539) * $signed(input_fmap_5[15:0]) +
	( 13'sd 4015) * $signed(input_fmap_6[15:0]) +
	( 15'sd 14121) * $signed(input_fmap_7[15:0]) +
	( 16'sd 26297) * $signed(input_fmap_8[15:0]) +
	( 15'sd 12859) * $signed(input_fmap_9[15:0]) +
	( 16'sd 30513) * $signed(input_fmap_10[15:0]) +
	( 15'sd 13024) * $signed(input_fmap_11[15:0]) +
	( 14'sd 6609) * $signed(input_fmap_12[15:0]) +
	( 15'sd 16035) * $signed(input_fmap_13[15:0]) +
	( 16'sd 22955) * $signed(input_fmap_14[15:0]) +
	( 16'sd 20801) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_29;
assign conv_mac_29 = 
	( 16'sd 24722) * $signed(input_fmap_0[15:0]) +
	( 16'sd 19612) * $signed(input_fmap_1[15:0]) +
	( 15'sd 12332) * $signed(input_fmap_2[15:0]) +
	( 13'sd 2967) * $signed(input_fmap_3[15:0]) +
	( 15'sd 8476) * $signed(input_fmap_4[15:0]) +
	( 14'sd 7229) * $signed(input_fmap_5[15:0]) +
	( 12'sd 1435) * $signed(input_fmap_6[15:0]) +
	( 16'sd 16670) * $signed(input_fmap_7[15:0]) +
	( 16'sd 20043) * $signed(input_fmap_8[15:0]) +
	( 16'sd 22694) * $signed(input_fmap_9[15:0]) +
	( 15'sd 14342) * $signed(input_fmap_10[15:0]) +
	( 14'sd 7082) * $signed(input_fmap_11[15:0]) +
	( 16'sd 26141) * $signed(input_fmap_12[15:0]) +
	( 11'sd 515) * $signed(input_fmap_13[15:0]) +
	( 16'sd 23552) * $signed(input_fmap_14[15:0]) +
	( 16'sd 30880) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_30;
assign conv_mac_30 = 
	( 16'sd 24369) * $signed(input_fmap_0[15:0]) +
	( 16'sd 24628) * $signed(input_fmap_1[15:0]) +
	( 16'sd 31909) * $signed(input_fmap_2[15:0]) +
	( 16'sd 31647) * $signed(input_fmap_3[15:0]) +
	( 12'sd 1839) * $signed(input_fmap_4[15:0]) +
	( 16'sd 26768) * $signed(input_fmap_5[15:0]) +
	( 16'sd 26809) * $signed(input_fmap_6[15:0]) +
	( 16'sd 22753) * $signed(input_fmap_7[15:0]) +
	( 13'sd 3687) * $signed(input_fmap_8[15:0]) +
	( 13'sd 3382) * $signed(input_fmap_9[15:0]) +
	( 16'sd 24708) * $signed(input_fmap_10[15:0]) +
	( 16'sd 17122) * $signed(input_fmap_11[15:0]) +
	( 16'sd 17674) * $signed(input_fmap_12[15:0]) +
	( 12'sd 1273) * $signed(input_fmap_13[15:0]) +
	( 13'sd 2137) * $signed(input_fmap_14[15:0]) +
	( 13'sd 3071) * $signed(input_fmap_15[15:0]);

logic signed [31:0] conv_mac_31;
assign conv_mac_31 = 
	( 15'sd 8906) * $signed(input_fmap_0[15:0]) +
	( 12'sd 1995) * $signed(input_fmap_1[15:0]) +
	( 16'sd 19672) * $signed(input_fmap_2[15:0]) +
	( 16'sd 30650) * $signed(input_fmap_3[15:0]) +
	( 16'sd 30368) * $signed(input_fmap_4[15:0]) +
	( 16'sd 22841) * $signed(input_fmap_5[15:0]) +
	( 15'sd 12903) * $signed(input_fmap_6[15:0]) +
	( 16'sd 23158) * $signed(input_fmap_7[15:0]) +
	( 14'sd 7307) * $signed(input_fmap_8[15:0]) +
	( 16'sd 28324) * $signed(input_fmap_9[15:0]) +
	( 16'sd 31774) * $signed(input_fmap_10[15:0]) +
	( 15'sd 10883) * $signed(input_fmap_11[15:0]) +
	( 16'sd 19723) * $signed(input_fmap_12[15:0]) +
	( 15'sd 13231) * $signed(input_fmap_13[15:0]) +
	( 16'sd 28717) * $signed(input_fmap_14[15:0]) +
	( 12'sd 1544) * $signed(input_fmap_15[15:0]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 15'd12466;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1 + 16'd22068;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 10'd429;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3 + 16'd31656;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4 + 15'd16200;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5 + 15'd10199;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6 + 16'd17722;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7 + 14'd4804;
logic [31:0] bias_add_8;
assign bias_add_8 = conv_mac_8 + 13'd2161;
logic [31:0] bias_add_9;
assign bias_add_9 = conv_mac_9 + 12'd1289;
logic [31:0] bias_add_10;
assign bias_add_10 = conv_mac_10 + 15'd13937;
logic [31:0] bias_add_11;
assign bias_add_11 = conv_mac_11 + 15'd11221;
logic [31:0] bias_add_12;
assign bias_add_12 = conv_mac_12 + 14'd5403;
logic [31:0] bias_add_13;
assign bias_add_13 = conv_mac_13 + 16'd26185;
logic [31:0] bias_add_14;
assign bias_add_14 = conv_mac_14 + 16'd29904;
logic [31:0] bias_add_15;
assign bias_add_15 = conv_mac_15 + 10'd284;
logic [31:0] bias_add_16;
assign bias_add_16 = conv_mac_16 + 16'd28827;
logic [31:0] bias_add_17;
assign bias_add_17 = conv_mac_17 + 16'd27311;
logic [31:0] bias_add_18;
assign bias_add_18 = conv_mac_18 + 16'd28651;
logic [31:0] bias_add_19;
assign bias_add_19 = conv_mac_19 + 14'd6300;
logic [31:0] bias_add_20;
assign bias_add_20 = conv_mac_20 + 15'd12223;
logic [31:0] bias_add_21;
assign bias_add_21 = conv_mac_21 + 15'd8537;
logic [31:0] bias_add_22;
assign bias_add_22 = conv_mac_22 + 15'd11573;
logic [31:0] bias_add_23;
assign bias_add_23 = conv_mac_23 + 16'd20222;
logic [31:0] bias_add_24;
assign bias_add_24 = conv_mac_24 + 14'd4974;
logic [31:0] bias_add_25;
assign bias_add_25 = conv_mac_25 + 14'd6523;
logic [31:0] bias_add_26;
assign bias_add_26 = conv_mac_26 + 12'd1182;
logic [31:0] bias_add_27;
assign bias_add_27 = conv_mac_27 + 16'd25800;
logic [31:0] bias_add_28;
assign bias_add_28 = conv_mac_28 + 16'd25960;
logic [31:0] bias_add_29;
assign bias_add_29 = conv_mac_29 + 16'd24615;
logic [31:0] bias_add_30;
assign bias_add_30 = conv_mac_30 + 15'd9574;
logic [31:0] bias_add_31;
assign bias_add_31 = conv_mac_31 + 16'd24980;

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
logic [15:0] relu_16;
assign relu_16[15:0] = (bias_add_16[31]==0) ? ((bias_add_16<3'd6) ? {{bias_add_16[31],bias_add_16[29:15]}} :'d6) : '0;
logic [15:0] relu_17;
assign relu_17[15:0] = (bias_add_17[31]==0) ? ((bias_add_17<3'd6) ? {{bias_add_17[31],bias_add_17[29:15]}} :'d6) : '0;
logic [15:0] relu_18;
assign relu_18[15:0] = (bias_add_18[31]==0) ? ((bias_add_18<3'd6) ? {{bias_add_18[31],bias_add_18[29:15]}} :'d6) : '0;
logic [15:0] relu_19;
assign relu_19[15:0] = (bias_add_19[31]==0) ? ((bias_add_19<3'd6) ? {{bias_add_19[31],bias_add_19[29:15]}} :'d6) : '0;
logic [15:0] relu_20;
assign relu_20[15:0] = (bias_add_20[31]==0) ? ((bias_add_20<3'd6) ? {{bias_add_20[31],bias_add_20[29:15]}} :'d6) : '0;
logic [15:0] relu_21;
assign relu_21[15:0] = (bias_add_21[31]==0) ? ((bias_add_21<3'd6) ? {{bias_add_21[31],bias_add_21[29:15]}} :'d6) : '0;
logic [15:0] relu_22;
assign relu_22[15:0] = (bias_add_22[31]==0) ? ((bias_add_22<3'd6) ? {{bias_add_22[31],bias_add_22[29:15]}} :'d6) : '0;
logic [15:0] relu_23;
assign relu_23[15:0] = (bias_add_23[31]==0) ? ((bias_add_23<3'd6) ? {{bias_add_23[31],bias_add_23[29:15]}} :'d6) : '0;
logic [15:0] relu_24;
assign relu_24[15:0] = (bias_add_24[31]==0) ? ((bias_add_24<3'd6) ? {{bias_add_24[31],bias_add_24[29:15]}} :'d6) : '0;
logic [15:0] relu_25;
assign relu_25[15:0] = (bias_add_25[31]==0) ? ((bias_add_25<3'd6) ? {{bias_add_25[31],bias_add_25[29:15]}} :'d6) : '0;
logic [15:0] relu_26;
assign relu_26[15:0] = (bias_add_26[31]==0) ? ((bias_add_26<3'd6) ? {{bias_add_26[31],bias_add_26[29:15]}} :'d6) : '0;
logic [15:0] relu_27;
assign relu_27[15:0] = (bias_add_27[31]==0) ? ((bias_add_27<3'd6) ? {{bias_add_27[31],bias_add_27[29:15]}} :'d6) : '0;
logic [15:0] relu_28;
assign relu_28[15:0] = (bias_add_28[31]==0) ? ((bias_add_28<3'd6) ? {{bias_add_28[31],bias_add_28[29:15]}} :'d6) : '0;
logic [15:0] relu_29;
assign relu_29[15:0] = (bias_add_29[31]==0) ? ((bias_add_29<3'd6) ? {{bias_add_29[31],bias_add_29[29:15]}} :'d6) : '0;
logic [15:0] relu_30;
assign relu_30[15:0] = (bias_add_30[31]==0) ? ((bias_add_30<3'd6) ? {{bias_add_30[31],bias_add_30[29:15]}} :'d6) : '0;
logic [15:0] relu_31;
assign relu_31[15:0] = (bias_add_31[31]==0) ? ((bias_add_31<3'd6) ? {{bias_add_31[31],bias_add_31[29:15]}} :'d6) : '0;

assign output_act = {
	relu_31,
	relu_30,
	relu_29,
	relu_28,
	relu_27,
	relu_26,
	relu_25,
	relu_24,
	relu_23,
	relu_22,
	relu_21,
	relu_20,
	relu_19,
	relu_18,
	relu_17,
	relu_16,
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
