module conv5_pw (
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [512-1:0] input_act,
    output logic [1024-1:0] output_act,
    output logic ready
);

logic [512-1:0] input_act_ff;
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
logic [15:0] input_fmap_16;
assign input_fmap_16 = input_act_ff[271:256];
logic [15:0] input_fmap_17;
assign input_fmap_17 = input_act_ff[287:272];
logic [15:0] input_fmap_18;
assign input_fmap_18 = input_act_ff[303:288];
logic [15:0] input_fmap_19;
assign input_fmap_19 = input_act_ff[319:304];
logic [15:0] input_fmap_20;
assign input_fmap_20 = input_act_ff[335:320];
logic [15:0] input_fmap_21;
assign input_fmap_21 = input_act_ff[351:336];
logic [15:0] input_fmap_22;
assign input_fmap_22 = input_act_ff[367:352];
logic [15:0] input_fmap_23;
assign input_fmap_23 = input_act_ff[383:368];
logic [15:0] input_fmap_24;
assign input_fmap_24 = input_act_ff[399:384];
logic [15:0] input_fmap_25;
assign input_fmap_25 = input_act_ff[415:400];
logic [15:0] input_fmap_26;
assign input_fmap_26 = input_act_ff[431:416];
logic [15:0] input_fmap_27;
assign input_fmap_27 = input_act_ff[447:432];
logic [15:0] input_fmap_28;
assign input_fmap_28 = input_act_ff[463:448];
logic [15:0] input_fmap_29;
assign input_fmap_29 = input_act_ff[479:464];
logic [15:0] input_fmap_30;
assign input_fmap_30 = input_act_ff[495:480];
logic [15:0] input_fmap_31;
assign input_fmap_31 = input_act_ff[511:496];

logic signed [31:0] conv_mac_0;
assign conv_mac_0 = 
	( 16'sd 28450) * $signed(input_fmap_0[15:0]) +
	( 16'sd 27124) * $signed(input_fmap_1[15:0]) +
	( 16'sd 28806) * $signed(input_fmap_2[15:0]) +
	( 15'sd 11882) * $signed(input_fmap_3[15:0]) +
	( 11'sd 894) * $signed(input_fmap_4[15:0]) +
	( 15'sd 10885) * $signed(input_fmap_5[15:0]) +
	( 16'sd 23211) * $signed(input_fmap_6[15:0]) +
	( 14'sd 7607) * $signed(input_fmap_7[15:0]) +
	( 16'sd 23801) * $signed(input_fmap_8[15:0]) +
	( 16'sd 22940) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1439) * $signed(input_fmap_10[15:0]) +
	( 16'sd 23149) * $signed(input_fmap_11[15:0]) +
	( 12'sd 1388) * $signed(input_fmap_12[15:0]) +
	( 12'sd 1236) * $signed(input_fmap_13[15:0]) +
	( 15'sd 9003) * $signed(input_fmap_14[15:0]) +
	( 16'sd 27516) * $signed(input_fmap_15[15:0]) +
	( 13'sd 2521) * $signed(input_fmap_16[15:0]) +
	( 14'sd 7616) * $signed(input_fmap_17[15:0]) +
	( 12'sd 2022) * $signed(input_fmap_18[15:0]) +
	( 16'sd 22031) * $signed(input_fmap_19[15:0]) +
	( 16'sd 20232) * $signed(input_fmap_20[15:0]) +
	( 14'sd 6333) * $signed(input_fmap_21[15:0]) +
	( 13'sd 3089) * $signed(input_fmap_22[15:0]) +
	( 16'sd 27177) * $signed(input_fmap_23[15:0]) +
	( 16'sd 18672) * $signed(input_fmap_24[15:0]) +
	( 16'sd 27072) * $signed(input_fmap_25[15:0]) +
	( 16'sd 20089) * $signed(input_fmap_26[15:0]) +
	( 16'sd 28984) * $signed(input_fmap_27[15:0]) +
	( 16'sd 16767) * $signed(input_fmap_28[15:0]) +
	( 16'sd 21161) * $signed(input_fmap_29[15:0]) +
	( 16'sd 31109) * $signed(input_fmap_30[15:0]) +
	( 15'sd 15384) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_1;
assign conv_mac_1 = 
	( 13'sd 3527) * $signed(input_fmap_0[15:0]) +
	( 16'sd 26018) * $signed(input_fmap_1[15:0]) +
	( 15'sd 13604) * $signed(input_fmap_2[15:0]) +
	( 16'sd 19321) * $signed(input_fmap_3[15:0]) +
	( 16'sd 28233) * $signed(input_fmap_4[15:0]) +
	( 16'sd 17912) * $signed(input_fmap_5[15:0]) +
	( 13'sd 2209) * $signed(input_fmap_6[15:0]) +
	( 14'sd 7323) * $signed(input_fmap_7[15:0]) +
	( 11'sd 697) * $signed(input_fmap_8[15:0]) +
	( 10'sd 322) * $signed(input_fmap_9[15:0]) +
	( 15'sd 11115) * $signed(input_fmap_10[15:0]) +
	( 16'sd 23366) * $signed(input_fmap_11[15:0]) +
	( 14'sd 4709) * $signed(input_fmap_12[15:0]) +
	( 13'sd 3341) * $signed(input_fmap_13[15:0]) +
	( 15'sd 9650) * $signed(input_fmap_14[15:0]) +
	( 14'sd 6486) * $signed(input_fmap_15[15:0]) +
	( 16'sd 18773) * $signed(input_fmap_16[15:0]) +
	( 15'sd 16256) * $signed(input_fmap_17[15:0]) +
	( 13'sd 3272) * $signed(input_fmap_18[15:0]) +
	( 16'sd 31898) * $signed(input_fmap_19[15:0]) +
	( 15'sd 9287) * $signed(input_fmap_20[15:0]) +
	( 15'sd 12198) * $signed(input_fmap_21[15:0]) +
	( 14'sd 4688) * $signed(input_fmap_22[15:0]) +
	( 14'sd 5153) * $signed(input_fmap_23[15:0]) +
	( 13'sd 3978) * $signed(input_fmap_24[15:0]) +
	( 16'sd 20826) * $signed(input_fmap_25[15:0]) +
	( 16'sd 31744) * $signed(input_fmap_26[15:0]) +
	( 14'sd 5239) * $signed(input_fmap_27[15:0]) +
	( 16'sd 32325) * $signed(input_fmap_28[15:0]) +
	( 16'sd 23872) * $signed(input_fmap_29[15:0]) +
	( 15'sd 12193) * $signed(input_fmap_30[15:0]) +
	( 16'sd 22407) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_2;
assign conv_mac_2 = 
	( 15'sd 10041) * $signed(input_fmap_0[15:0]) +
	( 16'sd 19620) * $signed(input_fmap_1[15:0]) +
	( 15'sd 15553) * $signed(input_fmap_2[15:0]) +
	( 13'sd 3938) * $signed(input_fmap_3[15:0]) +
	( 16'sd 18615) * $signed(input_fmap_4[15:0]) +
	( 13'sd 3109) * $signed(input_fmap_5[15:0]) +
	( 14'sd 7881) * $signed(input_fmap_6[15:0]) +
	( 16'sd 28424) * $signed(input_fmap_7[15:0]) +
	( 15'sd 14946) * $signed(input_fmap_8[15:0]) +
	( 12'sd 1708) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1635) * $signed(input_fmap_10[15:0]) +
	( 15'sd 15756) * $signed(input_fmap_11[15:0]) +
	( 16'sd 20798) * $signed(input_fmap_12[15:0]) +
	( 15'sd 13705) * $signed(input_fmap_13[15:0]) +
	( 16'sd 19267) * $signed(input_fmap_14[15:0]) +
	( 16'sd 26277) * $signed(input_fmap_15[15:0]) +
	( 15'sd 9324) * $signed(input_fmap_16[15:0]) +
	( 14'sd 7942) * $signed(input_fmap_17[15:0]) +
	( 15'sd 10844) * $signed(input_fmap_18[15:0]) +
	( 16'sd 26145) * $signed(input_fmap_19[15:0]) +
	( 14'sd 5738) * $signed(input_fmap_20[15:0]) +
	( 13'sd 2305) * $signed(input_fmap_21[15:0]) +
	( 16'sd 18936) * $signed(input_fmap_22[15:0]) +
	( 12'sd 1202) * $signed(input_fmap_23[15:0]) +
	( 15'sd 12264) * $signed(input_fmap_24[15:0]) +
	( 11'sd 996) * $signed(input_fmap_25[15:0]) +
	( 16'sd 21326) * $signed(input_fmap_26[15:0]) +
	( 9'sd 243) * $signed(input_fmap_27[15:0]) +
	( 16'sd 18260) * $signed(input_fmap_28[15:0]) +
	( 16'sd 22315) * $signed(input_fmap_29[15:0]) +
	( 15'sd 15011) * $signed(input_fmap_30[15:0]) +
	( 16'sd 16588) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_3;
assign conv_mac_3 = 
	( 16'sd 21928) * $signed(input_fmap_0[15:0]) +
	( 15'sd 15843) * $signed(input_fmap_1[15:0]) +
	( 13'sd 3303) * $signed(input_fmap_2[15:0]) +
	( 16'sd 29441) * $signed(input_fmap_3[15:0]) +
	( 15'sd 12418) * $signed(input_fmap_4[15:0]) +
	( 16'sd 20968) * $signed(input_fmap_5[15:0]) +
	( 16'sd 23369) * $signed(input_fmap_6[15:0]) +
	( 16'sd 32763) * $signed(input_fmap_7[15:0]) +
	( 14'sd 5076) * $signed(input_fmap_8[15:0]) +
	( 16'sd 17219) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1119) * $signed(input_fmap_10[15:0]) +
	( 12'sd 1071) * $signed(input_fmap_11[15:0]) +
	( 16'sd 31040) * $signed(input_fmap_12[15:0]) +
	( 15'sd 9988) * $signed(input_fmap_13[15:0]) +
	( 15'sd 12724) * $signed(input_fmap_14[15:0]) +
	( 15'sd 11427) * $signed(input_fmap_15[15:0]) +
	( 14'sd 7826) * $signed(input_fmap_16[15:0]) +
	( 16'sd 21077) * $signed(input_fmap_17[15:0]) +
	( 16'sd 19962) * $signed(input_fmap_18[15:0]) +
	( 16'sd 20276) * $signed(input_fmap_19[15:0]) +
	( 15'sd 10453) * $signed(input_fmap_20[15:0]) +
	( 16'sd 17084) * $signed(input_fmap_21[15:0]) +
	( 15'sd 13409) * $signed(input_fmap_22[15:0]) +
	( 16'sd 30105) * $signed(input_fmap_23[15:0]) +
	( 15'sd 11839) * $signed(input_fmap_24[15:0]) +
	( 15'sd 12071) * $signed(input_fmap_25[15:0]) +
	( 15'sd 12026) * $signed(input_fmap_26[15:0]) +
	( 16'sd 16497) * $signed(input_fmap_27[15:0]) +
	( 16'sd 21559) * $signed(input_fmap_28[15:0]) +
	( 16'sd 30678) * $signed(input_fmap_29[15:0]) +
	( 11'sd 543) * $signed(input_fmap_30[15:0]) +
	( 11'sd 1002) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_4;
assign conv_mac_4 = 
	( 16'sd 21604) * $signed(input_fmap_0[15:0]) +
	( 14'sd 4620) * $signed(input_fmap_1[15:0]) +
	( 15'sd 16050) * $signed(input_fmap_2[15:0]) +
	( 16'sd 22818) * $signed(input_fmap_3[15:0]) +
	( 16'sd 16691) * $signed(input_fmap_4[15:0]) +
	( 16'sd 22219) * $signed(input_fmap_5[15:0]) +
	( 16'sd 31981) * $signed(input_fmap_6[15:0]) +
	( 15'sd 12380) * $signed(input_fmap_7[15:0]) +
	( 13'sd 2060) * $signed(input_fmap_8[15:0]) +
	( 14'sd 7548) * $signed(input_fmap_9[15:0]) +
	( 14'sd 6248) * $signed(input_fmap_10[15:0]) +
	( 15'sd 11291) * $signed(input_fmap_11[15:0]) +
	( 15'sd 14044) * $signed(input_fmap_12[15:0]) +
	( 16'sd 23804) * $signed(input_fmap_13[15:0]) +
	( 16'sd 31255) * $signed(input_fmap_14[15:0]) +
	( 15'sd 14220) * $signed(input_fmap_15[15:0]) +
	( 16'sd 22883) * $signed(input_fmap_16[15:0]) +
	( 16'sd 32690) * $signed(input_fmap_17[15:0]) +
	( 13'sd 2464) * $signed(input_fmap_18[15:0]) +
	( 16'sd 17828) * $signed(input_fmap_19[15:0]) +
	( 13'sd 2410) * $signed(input_fmap_20[15:0]) +
	( 13'sd 3430) * $signed(input_fmap_21[15:0]) +
	( 16'sd 20518) * $signed(input_fmap_22[15:0]) +
	( 16'sd 17572) * $signed(input_fmap_23[15:0]) +
	( 16'sd 31282) * $signed(input_fmap_24[15:0]) +
	( 15'sd 16265) * $signed(input_fmap_25[15:0]) +
	( 16'sd 22392) * $signed(input_fmap_26[15:0]) +
	( 15'sd 10017) * $signed(input_fmap_27[15:0]) +
	( 15'sd 12894) * $signed(input_fmap_28[15:0]) +
	( 16'sd 17656) * $signed(input_fmap_29[15:0]) +
	( 16'sd 29907) * $signed(input_fmap_30[15:0]) +
	( 16'sd 18398) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_5;
assign conv_mac_5 = 
	( 15'sd 8216) * $signed(input_fmap_0[15:0]) +
	( 15'sd 14543) * $signed(input_fmap_1[15:0]) +
	( 16'sd 32406) * $signed(input_fmap_2[15:0]) +
	( 16'sd 28235) * $signed(input_fmap_3[15:0]) +
	( 16'sd 26147) * $signed(input_fmap_4[15:0]) +
	( 15'sd 11784) * $signed(input_fmap_5[15:0]) +
	( 16'sd 24250) * $signed(input_fmap_6[15:0]) +
	( 16'sd 31501) * $signed(input_fmap_7[15:0]) +
	( 16'sd 18559) * $signed(input_fmap_8[15:0]) +
	( 14'sd 6419) * $signed(input_fmap_9[15:0]) +
	( 16'sd 23604) * $signed(input_fmap_10[15:0]) +
	( 14'sd 7499) * $signed(input_fmap_11[15:0]) +
	( 13'sd 2768) * $signed(input_fmap_12[15:0]) +
	( 16'sd 18474) * $signed(input_fmap_13[15:0]) +
	( 15'sd 15313) * $signed(input_fmap_14[15:0]) +
	( 16'sd 25572) * $signed(input_fmap_15[15:0]) +
	( 16'sd 26325) * $signed(input_fmap_16[15:0]) +
	( 15'sd 12319) * $signed(input_fmap_17[15:0]) +
	( 16'sd 23597) * $signed(input_fmap_18[15:0]) +
	( 16'sd 24667) * $signed(input_fmap_19[15:0]) +
	( 15'sd 10896) * $signed(input_fmap_20[15:0]) +
	( 15'sd 11345) * $signed(input_fmap_21[15:0]) +
	( 16'sd 22521) * $signed(input_fmap_22[15:0]) +
	( 15'sd 10784) * $signed(input_fmap_23[15:0]) +
	( 16'sd 20061) * $signed(input_fmap_24[15:0]) +
	( 15'sd 9880) * $signed(input_fmap_25[15:0]) +
	( 13'sd 2142) * $signed(input_fmap_26[15:0]) +
	( 16'sd 20706) * $signed(input_fmap_27[15:0]) +
	( 16'sd 23974) * $signed(input_fmap_28[15:0]) +
	( 16'sd 18189) * $signed(input_fmap_29[15:0]) +
	( 15'sd 8638) * $signed(input_fmap_30[15:0]) +
	( 16'sd 26873) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_6;
assign conv_mac_6 = 
	( 10'sd 456) * $signed(input_fmap_0[15:0]) +
	( 15'sd 10546) * $signed(input_fmap_1[15:0]) +
	( 15'sd 9188) * $signed(input_fmap_2[15:0]) +
	( 16'sd 24849) * $signed(input_fmap_3[15:0]) +
	( 16'sd 21552) * $signed(input_fmap_4[15:0]) +
	( 16'sd 27033) * $signed(input_fmap_5[15:0]) +
	( 16'sd 16884) * $signed(input_fmap_6[15:0]) +
	( 16'sd 17281) * $signed(input_fmap_7[15:0]) +
	( 15'sd 9844) * $signed(input_fmap_8[15:0]) +
	( 15'sd 10397) * $signed(input_fmap_9[15:0]) +
	( 16'sd 23378) * $signed(input_fmap_10[15:0]) +
	( 16'sd 32249) * $signed(input_fmap_11[15:0]) +
	( 14'sd 5291) * $signed(input_fmap_12[15:0]) +
	( 14'sd 6606) * $signed(input_fmap_13[15:0]) +
	( 14'sd 4578) * $signed(input_fmap_14[15:0]) +
	( 15'sd 14405) * $signed(input_fmap_15[15:0]) +
	( 16'sd 25198) * $signed(input_fmap_16[15:0]) +
	( 15'sd 11123) * $signed(input_fmap_17[15:0]) +
	( 15'sd 14828) * $signed(input_fmap_18[15:0]) +
	( 14'sd 8146) * $signed(input_fmap_19[15:0]) +
	( 16'sd 25257) * $signed(input_fmap_20[15:0]) +
	( 15'sd 13069) * $signed(input_fmap_21[15:0]) +
	( 16'sd 22553) * $signed(input_fmap_22[15:0]) +
	( 15'sd 14471) * $signed(input_fmap_23[15:0]) +
	( 14'sd 7160) * $signed(input_fmap_24[15:0]) +
	( 13'sd 2288) * $signed(input_fmap_25[15:0]) +
	( 16'sd 19264) * $signed(input_fmap_26[15:0]) +
	( 16'sd 25385) * $signed(input_fmap_27[15:0]) +
	( 16'sd 19785) * $signed(input_fmap_28[15:0]) +
	( 14'sd 7433) * $signed(input_fmap_29[15:0]) +
	( 15'sd 13719) * $signed(input_fmap_30[15:0]) +
	( 16'sd 31967) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_7;
assign conv_mac_7 = 
	( 15'sd 14567) * $signed(input_fmap_0[15:0]) +
	( 16'sd 28352) * $signed(input_fmap_1[15:0]) +
	( 15'sd 12634) * $signed(input_fmap_2[15:0]) +
	( 16'sd 27420) * $signed(input_fmap_3[15:0]) +
	( 14'sd 4249) * $signed(input_fmap_4[15:0]) +
	( 14'sd 7601) * $signed(input_fmap_5[15:0]) +
	( 16'sd 26369) * $signed(input_fmap_6[15:0]) +
	( 16'sd 28816) * $signed(input_fmap_7[15:0]) +
	( 11'sd 883) * $signed(input_fmap_8[15:0]) +
	( 13'sd 2065) * $signed(input_fmap_9[15:0]) +
	( 15'sd 10011) * $signed(input_fmap_10[15:0]) +
	( 15'sd 15701) * $signed(input_fmap_11[15:0]) +
	( 7'sd 36) * $signed(input_fmap_12[15:0]) +
	( 16'sd 31403) * $signed(input_fmap_13[15:0]) +
	( 16'sd 30461) * $signed(input_fmap_14[15:0]) +
	( 16'sd 22147) * $signed(input_fmap_15[15:0]) +
	( 14'sd 6918) * $signed(input_fmap_16[15:0]) +
	( 13'sd 3196) * $signed(input_fmap_17[15:0]) +
	( 15'sd 14397) * $signed(input_fmap_18[15:0]) +
	( 15'sd 13720) * $signed(input_fmap_19[15:0]) +
	( 10'sd 337) * $signed(input_fmap_20[15:0]) +
	( 16'sd 18588) * $signed(input_fmap_21[15:0]) +
	( 12'sd 1055) * $signed(input_fmap_22[15:0]) +
	( 16'sd 31251) * $signed(input_fmap_23[15:0]) +
	( 16'sd 27181) * $signed(input_fmap_24[15:0]) +
	( 14'sd 7775) * $signed(input_fmap_25[15:0]) +
	( 13'sd 2909) * $signed(input_fmap_26[15:0]) +
	( 14'sd 4890) * $signed(input_fmap_27[15:0]) +
	( 15'sd 12489) * $signed(input_fmap_28[15:0]) +
	( 13'sd 2281) * $signed(input_fmap_29[15:0]) +
	( 13'sd 3421) * $signed(input_fmap_30[15:0]) +
	( 16'sd 18626) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_8;
assign conv_mac_8 = 
	( 15'sd 15708) * $signed(input_fmap_0[15:0]) +
	( 16'sd 28388) * $signed(input_fmap_1[15:0]) +
	( 15'sd 15279) * $signed(input_fmap_2[15:0]) +
	( 16'sd 16746) * $signed(input_fmap_3[15:0]) +
	( 15'sd 13983) * $signed(input_fmap_4[15:0]) +
	( 14'sd 7310) * $signed(input_fmap_5[15:0]) +
	( 13'sd 2966) * $signed(input_fmap_6[15:0]) +
	( 16'sd 24904) * $signed(input_fmap_7[15:0]) +
	( 16'sd 27889) * $signed(input_fmap_8[15:0]) +
	( 16'sd 24921) * $signed(input_fmap_9[15:0]) +
	( 15'sd 8678) * $signed(input_fmap_10[15:0]) +
	( 12'sd 1309) * $signed(input_fmap_11[15:0]) +
	( 13'sd 2625) * $signed(input_fmap_12[15:0]) +
	( 16'sd 23661) * $signed(input_fmap_13[15:0]) +
	( 15'sd 9959) * $signed(input_fmap_14[15:0]) +
	( 15'sd 8244) * $signed(input_fmap_15[15:0]) +
	( 15'sd 15589) * $signed(input_fmap_16[15:0]) +
	( 16'sd 29065) * $signed(input_fmap_17[15:0]) +
	( 16'sd 31911) * $signed(input_fmap_18[15:0]) +
	( 16'sd 19587) * $signed(input_fmap_19[15:0]) +
	( 12'sd 1101) * $signed(input_fmap_20[15:0]) +
	( 16'sd 25397) * $signed(input_fmap_21[15:0]) +
	( 14'sd 6873) * $signed(input_fmap_22[15:0]) +
	( 16'sd 20128) * $signed(input_fmap_23[15:0]) +
	( 16'sd 30615) * $signed(input_fmap_24[15:0]) +
	( 16'sd 32652) * $signed(input_fmap_25[15:0]) +
	( 16'sd 31023) * $signed(input_fmap_26[15:0]) +
	( 10'sd 489) * $signed(input_fmap_27[15:0]) +
	( 15'sd 9174) * $signed(input_fmap_28[15:0]) +
	( 16'sd 20536) * $signed(input_fmap_29[15:0]) +
	( 16'sd 27942) * $signed(input_fmap_30[15:0]) +
	( 16'sd 23979) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_9;
assign conv_mac_9 = 
	( 16'sd 24916) * $signed(input_fmap_0[15:0]) +
	( 16'sd 26433) * $signed(input_fmap_1[15:0]) +
	( 16'sd 27989) * $signed(input_fmap_2[15:0]) +
	( 15'sd 11937) * $signed(input_fmap_3[15:0]) +
	( 14'sd 6907) * $signed(input_fmap_4[15:0]) +
	( 14'sd 7465) * $signed(input_fmap_5[15:0]) +
	( 13'sd 3219) * $signed(input_fmap_6[15:0]) +
	( 16'sd 23934) * $signed(input_fmap_7[15:0]) +
	( 12'sd 1471) * $signed(input_fmap_8[15:0]) +
	( 13'sd 2470) * $signed(input_fmap_9[15:0]) +
	( 16'sd 19997) * $signed(input_fmap_10[15:0]) +
	( 16'sd 32012) * $signed(input_fmap_11[15:0]) +
	( 16'sd 21220) * $signed(input_fmap_12[15:0]) +
	( 15'sd 16261) * $signed(input_fmap_13[15:0]) +
	( 14'sd 6308) * $signed(input_fmap_14[15:0]) +
	( 14'sd 6945) * $signed(input_fmap_15[15:0]) +
	( 16'sd 31218) * $signed(input_fmap_16[15:0]) +
	( 16'sd 32613) * $signed(input_fmap_17[15:0]) +
	( 14'sd 6463) * $signed(input_fmap_18[15:0]) +
	( 15'sd 13840) * $signed(input_fmap_19[15:0]) +
	( 16'sd 31344) * $signed(input_fmap_20[15:0]) +
	( 15'sd 13598) * $signed(input_fmap_21[15:0]) +
	( 16'sd 22572) * $signed(input_fmap_22[15:0]) +
	( 16'sd 30163) * $signed(input_fmap_23[15:0]) +
	( 16'sd 19253) * $signed(input_fmap_24[15:0]) +
	( 15'sd 14669) * $signed(input_fmap_25[15:0]) +
	( 16'sd 29772) * $signed(input_fmap_26[15:0]) +
	( 16'sd 20514) * $signed(input_fmap_27[15:0]) +
	( 12'sd 1514) * $signed(input_fmap_28[15:0]) +
	( 16'sd 25417) * $signed(input_fmap_29[15:0]) +
	( 16'sd 16892) * $signed(input_fmap_30[15:0]) +
	( 16'sd 23963) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_10;
assign conv_mac_10 = 
	( 16'sd 28626) * $signed(input_fmap_0[15:0]) +
	( 15'sd 13775) * $signed(input_fmap_1[15:0]) +
	( 16'sd 21466) * $signed(input_fmap_2[15:0]) +
	( 14'sd 6276) * $signed(input_fmap_3[15:0]) +
	( 15'sd 11007) * $signed(input_fmap_4[15:0]) +
	( 14'sd 6907) * $signed(input_fmap_5[15:0]) +
	( 16'sd 27605) * $signed(input_fmap_6[15:0]) +
	( 15'sd 12925) * $signed(input_fmap_7[15:0]) +
	( 16'sd 18520) * $signed(input_fmap_8[15:0]) +
	( 15'sd 11450) * $signed(input_fmap_9[15:0]) +
	( 16'sd 30965) * $signed(input_fmap_10[15:0]) +
	( 16'sd 27043) * $signed(input_fmap_11[15:0]) +
	( 16'sd 24601) * $signed(input_fmap_12[15:0]) +
	( 16'sd 31993) * $signed(input_fmap_13[15:0]) +
	( 16'sd 30447) * $signed(input_fmap_14[15:0]) +
	( 16'sd 22636) * $signed(input_fmap_15[15:0]) +
	( 16'sd 31115) * $signed(input_fmap_16[15:0]) +
	( 16'sd 29615) * $signed(input_fmap_17[15:0]) +
	( 15'sd 15563) * $signed(input_fmap_18[15:0]) +
	( 16'sd 26417) * $signed(input_fmap_19[15:0]) +
	( 16'sd 25989) * $signed(input_fmap_20[15:0]) +
	( 14'sd 4891) * $signed(input_fmap_21[15:0]) +
	( 16'sd 30267) * $signed(input_fmap_22[15:0]) +
	( 15'sd 8537) * $signed(input_fmap_23[15:0]) +
	( 16'sd 30651) * $signed(input_fmap_24[15:0]) +
	( 15'sd 11132) * $signed(input_fmap_25[15:0]) +
	( 15'sd 15954) * $signed(input_fmap_26[15:0]) +
	( 16'sd 19442) * $signed(input_fmap_27[15:0]) +
	( 15'sd 14461) * $signed(input_fmap_28[15:0]) +
	( 16'sd 21191) * $signed(input_fmap_29[15:0]) +
	( 15'sd 15847) * $signed(input_fmap_30[15:0]) +
	( 16'sd 22015) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_11;
assign conv_mac_11 = 
	( 16'sd 19506) * $signed(input_fmap_0[15:0]) +
	( 16'sd 16725) * $signed(input_fmap_1[15:0]) +
	( 16'sd 29993) * $signed(input_fmap_2[15:0]) +
	( 16'sd 25696) * $signed(input_fmap_3[15:0]) +
	( 16'sd 23161) * $signed(input_fmap_4[15:0]) +
	( 16'sd 26177) * $signed(input_fmap_5[15:0]) +
	( 16'sd 25207) * $signed(input_fmap_6[15:0]) +
	( 16'sd 21806) * $signed(input_fmap_7[15:0]) +
	( 16'sd 31123) * $signed(input_fmap_8[15:0]) +
	( 10'sd 392) * $signed(input_fmap_9[15:0]) +
	( 16'sd 26903) * $signed(input_fmap_10[15:0]) +
	( 15'sd 13502) * $signed(input_fmap_11[15:0]) +
	( 15'sd 16098) * $signed(input_fmap_12[15:0]) +
	( 16'sd 20759) * $signed(input_fmap_13[15:0]) +
	( 16'sd 19418) * $signed(input_fmap_14[15:0]) +
	( 15'sd 13574) * $signed(input_fmap_15[15:0]) +
	( 16'sd 24565) * $signed(input_fmap_16[15:0]) +
	( 16'sd 27976) * $signed(input_fmap_17[15:0]) +
	( 16'sd 30751) * $signed(input_fmap_18[15:0]) +
	( 16'sd 31014) * $signed(input_fmap_19[15:0]) +
	( 16'sd 24382) * $signed(input_fmap_20[15:0]) +
	( 16'sd 23512) * $signed(input_fmap_21[15:0]) +
	( 14'sd 6858) * $signed(input_fmap_22[15:0]) +
	( 15'sd 10002) * $signed(input_fmap_23[15:0]) +
	( 16'sd 17741) * $signed(input_fmap_24[15:0]) +
	( 14'sd 5546) * $signed(input_fmap_25[15:0]) +
	( 12'sd 1227) * $signed(input_fmap_26[15:0]) +
	( 15'sd 10051) * $signed(input_fmap_27[15:0]) +
	( 16'sd 26034) * $signed(input_fmap_28[15:0]) +
	( 16'sd 24176) * $signed(input_fmap_29[15:0]) +
	( 16'sd 32099) * $signed(input_fmap_30[15:0]) +
	( 14'sd 7375) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_12;
assign conv_mac_12 = 
	( 15'sd 12975) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6540) * $signed(input_fmap_1[15:0]) +
	( 15'sd 9697) * $signed(input_fmap_2[15:0]) +
	( 16'sd 30284) * $signed(input_fmap_3[15:0]) +
	( 16'sd 23413) * $signed(input_fmap_4[15:0]) +
	( 13'sd 4054) * $signed(input_fmap_5[15:0]) +
	( 16'sd 22288) * $signed(input_fmap_6[15:0]) +
	( 16'sd 22776) * $signed(input_fmap_7[15:0]) +
	( 16'sd 27172) * $signed(input_fmap_8[15:0]) +
	( 16'sd 23694) * $signed(input_fmap_9[15:0]) +
	( 15'sd 8997) * $signed(input_fmap_10[15:0]) +
	( 15'sd 9188) * $signed(input_fmap_11[15:0]) +
	( 16'sd 26567) * $signed(input_fmap_12[15:0]) +
	( 15'sd 9894) * $signed(input_fmap_13[15:0]) +
	( 13'sd 2049) * $signed(input_fmap_14[15:0]) +
	( 16'sd 18795) * $signed(input_fmap_15[15:0]) +
	( 16'sd 24922) * $signed(input_fmap_16[15:0]) +
	( 16'sd 27631) * $signed(input_fmap_17[15:0]) +
	( 15'sd 15521) * $signed(input_fmap_18[15:0]) +
	( 16'sd 18472) * $signed(input_fmap_19[15:0]) +
	( 15'sd 15257) * $signed(input_fmap_20[15:0]) +
	( 16'sd 25085) * $signed(input_fmap_21[15:0]) +
	( 16'sd 28454) * $signed(input_fmap_22[15:0]) +
	( 10'sd 407) * $signed(input_fmap_23[15:0]) +
	( 15'sd 15483) * $signed(input_fmap_24[15:0]) +
	( 15'sd 9670) * $signed(input_fmap_25[15:0]) +
	( 15'sd 9817) * $signed(input_fmap_26[15:0]) +
	( 14'sd 8117) * $signed(input_fmap_27[15:0]) +
	( 16'sd 28138) * $signed(input_fmap_28[15:0]) +
	( 14'sd 5472) * $signed(input_fmap_29[15:0]) +
	( 16'sd 17066) * $signed(input_fmap_30[15:0]) +
	( 16'sd 25732) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_13;
assign conv_mac_13 = 
	( 16'sd 22321) * $signed(input_fmap_0[15:0]) +
	( 16'sd 22479) * $signed(input_fmap_1[15:0]) +
	( 16'sd 17019) * $signed(input_fmap_2[15:0]) +
	( 13'sd 3286) * $signed(input_fmap_3[15:0]) +
	( 15'sd 12503) * $signed(input_fmap_4[15:0]) +
	( 16'sd 24727) * $signed(input_fmap_5[15:0]) +
	( 16'sd 32405) * $signed(input_fmap_6[15:0]) +
	( 15'sd 13845) * $signed(input_fmap_7[15:0]) +
	( 16'sd 17340) * $signed(input_fmap_8[15:0]) +
	( 15'sd 8534) * $signed(input_fmap_9[15:0]) +
	( 16'sd 28313) * $signed(input_fmap_10[15:0]) +
	( 16'sd 31670) * $signed(input_fmap_11[15:0]) +
	( 10'sd 299) * $signed(input_fmap_12[15:0]) +
	( 16'sd 30127) * $signed(input_fmap_13[15:0]) +
	( 15'sd 15407) * $signed(input_fmap_14[15:0]) +
	( 15'sd 11926) * $signed(input_fmap_15[15:0]) +
	( 16'sd 16648) * $signed(input_fmap_16[15:0]) +
	( 16'sd 27091) * $signed(input_fmap_17[15:0]) +
	( 13'sd 2254) * $signed(input_fmap_18[15:0]) +
	( 14'sd 4453) * $signed(input_fmap_19[15:0]) +
	( 15'sd 8486) * $signed(input_fmap_20[15:0]) +
	( 15'sd 12683) * $signed(input_fmap_21[15:0]) +
	( 14'sd 7593) * $signed(input_fmap_22[15:0]) +
	( 13'sd 3493) * $signed(input_fmap_23[15:0]) +
	( 16'sd 30668) * $signed(input_fmap_24[15:0]) +
	( 16'sd 31531) * $signed(input_fmap_25[15:0]) +
	( 16'sd 24626) * $signed(input_fmap_26[15:0]) +
	( 16'sd 32304) * $signed(input_fmap_27[15:0]) +
	( 16'sd 20730) * $signed(input_fmap_28[15:0]) +
	( 16'sd 31596) * $signed(input_fmap_29[15:0]) +
	( 12'sd 1423) * $signed(input_fmap_30[15:0]) +
	( 16'sd 23780) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_14;
assign conv_mac_14 = 
	( 16'sd 32291) * $signed(input_fmap_0[15:0]) +
	( 15'sd 11991) * $signed(input_fmap_1[15:0]) +
	( 16'sd 28605) * $signed(input_fmap_2[15:0]) +
	( 16'sd 20269) * $signed(input_fmap_3[15:0]) +
	( 13'sd 3215) * $signed(input_fmap_4[15:0]) +
	( 14'sd 6673) * $signed(input_fmap_5[15:0]) +
	( 14'sd 6337) * $signed(input_fmap_6[15:0]) +
	( 14'sd 7231) * $signed(input_fmap_7[15:0]) +
	( 16'sd 28410) * $signed(input_fmap_8[15:0]) +
	( 16'sd 29446) * $signed(input_fmap_9[15:0]) +
	( 16'sd 29542) * $signed(input_fmap_10[15:0]) +
	( 15'sd 9241) * $signed(input_fmap_11[15:0]) +
	( 16'sd 25222) * $signed(input_fmap_12[15:0]) +
	( 15'sd 11119) * $signed(input_fmap_13[15:0]) +
	( 16'sd 22019) * $signed(input_fmap_14[15:0]) +
	( 14'sd 6383) * $signed(input_fmap_15[15:0]) +
	( 16'sd 17254) * $signed(input_fmap_16[15:0]) +
	( 16'sd 29208) * $signed(input_fmap_17[15:0]) +
	( 15'sd 15091) * $signed(input_fmap_18[15:0]) +
	( 16'sd 20925) * $signed(input_fmap_19[15:0]) +
	( 14'sd 7910) * $signed(input_fmap_20[15:0]) +
	( 16'sd 29703) * $signed(input_fmap_21[15:0]) +
	( 15'sd 15230) * $signed(input_fmap_22[15:0]) +
	( 16'sd 22007) * $signed(input_fmap_23[15:0]) +
	( 15'sd 15642) * $signed(input_fmap_24[15:0]) +
	( 15'sd 14963) * $signed(input_fmap_25[15:0]) +
	( 14'sd 6455) * $signed(input_fmap_26[15:0]) +
	( 14'sd 5644) * $signed(input_fmap_27[15:0]) +
	( 15'sd 10581) * $signed(input_fmap_28[15:0]) +
	( 16'sd 22049) * $signed(input_fmap_29[15:0]) +
	( 12'sd 2011) * $signed(input_fmap_30[15:0]) +
	( 16'sd 31528) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_15;
assign conv_mac_15 = 
	( 15'sd 13271) * $signed(input_fmap_0[15:0]) +
	( 13'sd 2270) * $signed(input_fmap_1[15:0]) +
	( 16'sd 17206) * $signed(input_fmap_2[15:0]) +
	( 16'sd 20979) * $signed(input_fmap_3[15:0]) +
	( 16'sd 23930) * $signed(input_fmap_4[15:0]) +
	( 15'sd 8290) * $signed(input_fmap_5[15:0]) +
	( 15'sd 13689) * $signed(input_fmap_6[15:0]) +
	( 15'sd 15404) * $signed(input_fmap_7[15:0]) +
	( 16'sd 22794) * $signed(input_fmap_8[15:0]) +
	( 15'sd 8321) * $signed(input_fmap_9[15:0]) +
	( 16'sd 22817) * $signed(input_fmap_10[15:0]) +
	( 15'sd 14910) * $signed(input_fmap_11[15:0]) +
	( 14'sd 4251) * $signed(input_fmap_12[15:0]) +
	( 15'sd 13328) * $signed(input_fmap_13[15:0]) +
	( 16'sd 27113) * $signed(input_fmap_14[15:0]) +
	( 16'sd 31617) * $signed(input_fmap_15[15:0]) +
	( 14'sd 6196) * $signed(input_fmap_16[15:0]) +
	( 16'sd 20988) * $signed(input_fmap_17[15:0]) +
	( 16'sd 22418) * $signed(input_fmap_18[15:0]) +
	( 16'sd 27831) * $signed(input_fmap_19[15:0]) +
	( 15'sd 14597) * $signed(input_fmap_20[15:0]) +
	( 16'sd 26541) * $signed(input_fmap_21[15:0]) +
	( 15'sd 14926) * $signed(input_fmap_22[15:0]) +
	( 15'sd 9137) * $signed(input_fmap_23[15:0]) +
	( 16'sd 17289) * $signed(input_fmap_24[15:0]) +
	( 15'sd 8744) * $signed(input_fmap_25[15:0]) +
	( 16'sd 30334) * $signed(input_fmap_26[15:0]) +
	( 16'sd 25955) * $signed(input_fmap_27[15:0]) +
	( 16'sd 18155) * $signed(input_fmap_28[15:0]) +
	( 16'sd 20167) * $signed(input_fmap_29[15:0]) +
	( 16'sd 24914) * $signed(input_fmap_30[15:0]) +
	( 16'sd 18971) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_16;
assign conv_mac_16 = 
	( 14'sd 5610) * $signed(input_fmap_0[15:0]) +
	( 16'sd 19213) * $signed(input_fmap_1[15:0]) +
	( 16'sd 27610) * $signed(input_fmap_2[15:0]) +
	( 15'sd 10338) * $signed(input_fmap_3[15:0]) +
	( 16'sd 22593) * $signed(input_fmap_4[15:0]) +
	( 16'sd 18383) * $signed(input_fmap_5[15:0]) +
	( 16'sd 22451) * $signed(input_fmap_6[15:0]) +
	( 16'sd 23820) * $signed(input_fmap_7[15:0]) +
	( 16'sd 25328) * $signed(input_fmap_8[15:0]) +
	( 16'sd 17921) * $signed(input_fmap_9[15:0]) +
	( 14'sd 4714) * $signed(input_fmap_10[15:0]) +
	( 14'sd 6544) * $signed(input_fmap_11[15:0]) +
	( 14'sd 6625) * $signed(input_fmap_12[15:0]) +
	( 16'sd 29326) * $signed(input_fmap_13[15:0]) +
	( 16'sd 19822) * $signed(input_fmap_14[15:0]) +
	( 16'sd 29852) * $signed(input_fmap_15[15:0]) +
	( 15'sd 9839) * $signed(input_fmap_16[15:0]) +
	( 16'sd 22863) * $signed(input_fmap_17[15:0]) +
	( 15'sd 14172) * $signed(input_fmap_18[15:0]) +
	( 15'sd 11458) * $signed(input_fmap_19[15:0]) +
	( 15'sd 13405) * $signed(input_fmap_20[15:0]) +
	( 16'sd 25253) * $signed(input_fmap_21[15:0]) +
	( 16'sd 24862) * $signed(input_fmap_22[15:0]) +
	( 15'sd 13363) * $signed(input_fmap_23[15:0]) +
	( 15'sd 10589) * $signed(input_fmap_24[15:0]) +
	( 16'sd 22099) * $signed(input_fmap_25[15:0]) +
	( 16'sd 24158) * $signed(input_fmap_26[15:0]) +
	( 15'sd 15814) * $signed(input_fmap_27[15:0]) +
	( 16'sd 20898) * $signed(input_fmap_28[15:0]) +
	( 6'sd 16) * $signed(input_fmap_29[15:0]) +
	( 15'sd 14521) * $signed(input_fmap_30[15:0]) +
	( 16'sd 20545) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_17;
assign conv_mac_17 = 
	( 13'sd 2673) * $signed(input_fmap_0[15:0]) +
	( 15'sd 11540) * $signed(input_fmap_1[15:0]) +
	( 16'sd 25124) * $signed(input_fmap_2[15:0]) +
	( 16'sd 29699) * $signed(input_fmap_3[15:0]) +
	( 16'sd 30624) * $signed(input_fmap_4[15:0]) +
	( 13'sd 3240) * $signed(input_fmap_5[15:0]) +
	( 13'sd 2535) * $signed(input_fmap_6[15:0]) +
	( 16'sd 20210) * $signed(input_fmap_7[15:0]) +
	( 16'sd 26736) * $signed(input_fmap_8[15:0]) +
	( 16'sd 29515) * $signed(input_fmap_9[15:0]) +
	( 15'sd 9063) * $signed(input_fmap_10[15:0]) +
	( 16'sd 32484) * $signed(input_fmap_11[15:0]) +
	( 13'sd 2582) * $signed(input_fmap_12[15:0]) +
	( 14'sd 6944) * $signed(input_fmap_13[15:0]) +
	( 16'sd 23720) * $signed(input_fmap_14[15:0]) +
	( 16'sd 18546) * $signed(input_fmap_15[15:0]) +
	( 16'sd 31477) * $signed(input_fmap_16[15:0]) +
	( 15'sd 13785) * $signed(input_fmap_17[15:0]) +
	( 10'sd 310) * $signed(input_fmap_18[15:0]) +
	( 13'sd 2482) * $signed(input_fmap_19[15:0]) +
	( 16'sd 19737) * $signed(input_fmap_20[15:0]) +
	( 8'sd 120) * $signed(input_fmap_21[15:0]) +
	( 16'sd 16424) * $signed(input_fmap_22[15:0]) +
	( 14'sd 5529) * $signed(input_fmap_23[15:0]) +
	( 16'sd 31914) * $signed(input_fmap_24[15:0]) +
	( 16'sd 31275) * $signed(input_fmap_25[15:0]) +
	( 16'sd 25303) * $signed(input_fmap_26[15:0]) +
	( 14'sd 8119) * $signed(input_fmap_27[15:0]) +
	( 16'sd 24114) * $signed(input_fmap_28[15:0]) +
	( 16'sd 24943) * $signed(input_fmap_29[15:0]) +
	( 16'sd 29404) * $signed(input_fmap_30[15:0]) +
	( 16'sd 22507) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_18;
assign conv_mac_18 = 
	( 13'sd 3261) * $signed(input_fmap_0[15:0]) +
	( 16'sd 31861) * $signed(input_fmap_1[15:0]) +
	( 14'sd 7526) * $signed(input_fmap_2[15:0]) +
	( 16'sd 23256) * $signed(input_fmap_3[15:0]) +
	( 16'sd 26158) * $signed(input_fmap_4[15:0]) +
	( 15'sd 12801) * $signed(input_fmap_5[15:0]) +
	( 14'sd 6740) * $signed(input_fmap_6[15:0]) +
	( 14'sd 7468) * $signed(input_fmap_7[15:0]) +
	( 15'sd 16308) * $signed(input_fmap_8[15:0]) +
	( 15'sd 15621) * $signed(input_fmap_9[15:0]) +
	( 16'sd 20632) * $signed(input_fmap_10[15:0]) +
	( 16'sd 18751) * $signed(input_fmap_11[15:0]) +
	( 14'sd 7890) * $signed(input_fmap_12[15:0]) +
	( 15'sd 15983) * $signed(input_fmap_13[15:0]) +
	( 16'sd 29529) * $signed(input_fmap_14[15:0]) +
	( 16'sd 31924) * $signed(input_fmap_15[15:0]) +
	( 15'sd 9329) * $signed(input_fmap_16[15:0]) +
	( 13'sd 2874) * $signed(input_fmap_17[15:0]) +
	( 15'sd 10121) * $signed(input_fmap_18[15:0]) +
	( 16'sd 30846) * $signed(input_fmap_19[15:0]) +
	( 15'sd 15821) * $signed(input_fmap_20[15:0]) +
	( 13'sd 2762) * $signed(input_fmap_21[15:0]) +
	( 15'sd 12203) * $signed(input_fmap_22[15:0]) +
	( 15'sd 12836) * $signed(input_fmap_23[15:0]) +
	( 15'sd 13514) * $signed(input_fmap_24[15:0]) +
	( 16'sd 30288) * $signed(input_fmap_25[15:0]) +
	( 16'sd 32015) * $signed(input_fmap_26[15:0]) +
	( 16'sd 21027) * $signed(input_fmap_27[15:0]) +
	( 16'sd 18730) * $signed(input_fmap_28[15:0]) +
	( 14'sd 5417) * $signed(input_fmap_29[15:0]) +
	( 16'sd 27338) * $signed(input_fmap_30[15:0]) +
	( 15'sd 14522) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_19;
assign conv_mac_19 = 
	( 15'sd 11489) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6278) * $signed(input_fmap_1[15:0]) +
	( 14'sd 7511) * $signed(input_fmap_2[15:0]) +
	( 16'sd 22503) * $signed(input_fmap_3[15:0]) +
	( 16'sd 19882) * $signed(input_fmap_4[15:0]) +
	( 16'sd 19581) * $signed(input_fmap_5[15:0]) +
	( 16'sd 27481) * $signed(input_fmap_6[15:0]) +
	( 16'sd 23807) * $signed(input_fmap_7[15:0]) +
	( 13'sd 2775) * $signed(input_fmap_8[15:0]) +
	( 16'sd 19240) * $signed(input_fmap_9[15:0]) +
	( 15'sd 14544) * $signed(input_fmap_10[15:0]) +
	( 16'sd 17025) * $signed(input_fmap_11[15:0]) +
	( 16'sd 25750) * $signed(input_fmap_12[15:0]) +
	( 16'sd 28134) * $signed(input_fmap_13[15:0]) +
	( 16'sd 19472) * $signed(input_fmap_14[15:0]) +
	( 15'sd 11563) * $signed(input_fmap_15[15:0]) +
	( 16'sd 26796) * $signed(input_fmap_16[15:0]) +
	( 16'sd 21528) * $signed(input_fmap_17[15:0]) +
	( 12'sd 1927) * $signed(input_fmap_18[15:0]) +
	( 16'sd 23895) * $signed(input_fmap_19[15:0]) +
	( 15'sd 8347) * $signed(input_fmap_20[15:0]) +
	( 16'sd 28611) * $signed(input_fmap_21[15:0]) +
	( 15'sd 15527) * $signed(input_fmap_22[15:0]) +
	( 14'sd 7145) * $signed(input_fmap_23[15:0]) +
	( 16'sd 29324) * $signed(input_fmap_24[15:0]) +
	( 16'sd 26384) * $signed(input_fmap_25[15:0]) +
	( 16'sd 30363) * $signed(input_fmap_26[15:0]) +
	( 16'sd 21286) * $signed(input_fmap_27[15:0]) +
	( 15'sd 15214) * $signed(input_fmap_28[15:0]) +
	( 13'sd 3704) * $signed(input_fmap_29[15:0]) +
	( 16'sd 22857) * $signed(input_fmap_30[15:0]) +
	( 15'sd 13940) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_20;
assign conv_mac_20 = 
	( 15'sd 8696) * $signed(input_fmap_0[15:0]) +
	( 15'sd 12680) * $signed(input_fmap_1[15:0]) +
	( 16'sd 28705) * $signed(input_fmap_2[15:0]) +
	( 15'sd 12008) * $signed(input_fmap_3[15:0]) +
	( 15'sd 9165) * $signed(input_fmap_4[15:0]) +
	( 16'sd 21342) * $signed(input_fmap_5[15:0]) +
	( 15'sd 16341) * $signed(input_fmap_6[15:0]) +
	( 14'sd 7488) * $signed(input_fmap_7[15:0]) +
	( 12'sd 1884) * $signed(input_fmap_8[15:0]) +
	( 16'sd 17535) * $signed(input_fmap_9[15:0]) +
	( 14'sd 7436) * $signed(input_fmap_10[15:0]) +
	( 15'sd 13506) * $signed(input_fmap_11[15:0]) +
	( 16'sd 21164) * $signed(input_fmap_12[15:0]) +
	( 16'sd 27957) * $signed(input_fmap_13[15:0]) +
	( 16'sd 29115) * $signed(input_fmap_14[15:0]) +
	( 16'sd 21075) * $signed(input_fmap_15[15:0]) +
	( 16'sd 29937) * $signed(input_fmap_16[15:0]) +
	( 12'sd 1689) * $signed(input_fmap_17[15:0]) +
	( 14'sd 7864) * $signed(input_fmap_18[15:0]) +
	( 16'sd 30970) * $signed(input_fmap_19[15:0]) +
	( 12'sd 1707) * $signed(input_fmap_20[15:0]) +
	( 16'sd 30303) * $signed(input_fmap_21[15:0]) +
	( 12'sd 1661) * $signed(input_fmap_22[15:0]) +
	( 15'sd 11977) * $signed(input_fmap_23[15:0]) +
	( 11'sd 851) * $signed(input_fmap_24[15:0]) +
	( 16'sd 27225) * $signed(input_fmap_25[15:0]) +
	( 16'sd 28038) * $signed(input_fmap_26[15:0]) +
	( 16'sd 28275) * $signed(input_fmap_27[15:0]) +
	( 16'sd 30797) * $signed(input_fmap_28[15:0]) +
	( 14'sd 7728) * $signed(input_fmap_29[15:0]) +
	( 14'sd 7220) * $signed(input_fmap_30[15:0]) +
	( 13'sd 2127) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_21;
assign conv_mac_21 = 
	( 16'sd 31218) * $signed(input_fmap_0[15:0]) +
	( 15'sd 14552) * $signed(input_fmap_1[15:0]) +
	( 16'sd 27958) * $signed(input_fmap_2[15:0]) +
	( 16'sd 18078) * $signed(input_fmap_3[15:0]) +
	( 15'sd 8246) * $signed(input_fmap_4[15:0]) +
	( 15'sd 9804) * $signed(input_fmap_5[15:0]) +
	( 15'sd 15285) * $signed(input_fmap_6[15:0]) +
	( 16'sd 21625) * $signed(input_fmap_7[15:0]) +
	( 15'sd 11851) * $signed(input_fmap_8[15:0]) +
	( 15'sd 12889) * $signed(input_fmap_9[15:0]) +
	( 16'sd 18390) * $signed(input_fmap_10[15:0]) +
	( 16'sd 26643) * $signed(input_fmap_11[15:0]) +
	( 14'sd 5525) * $signed(input_fmap_12[15:0]) +
	( 16'sd 17525) * $signed(input_fmap_13[15:0]) +
	( 16'sd 19323) * $signed(input_fmap_14[15:0]) +
	( 16'sd 24263) * $signed(input_fmap_15[15:0]) +
	( 16'sd 25628) * $signed(input_fmap_16[15:0]) +
	( 16'sd 23000) * $signed(input_fmap_17[15:0]) +
	( 15'sd 10888) * $signed(input_fmap_18[15:0]) +
	( 15'sd 10405) * $signed(input_fmap_19[15:0]) +
	( 16'sd 30594) * $signed(input_fmap_20[15:0]) +
	( 14'sd 4247) * $signed(input_fmap_21[15:0]) +
	( 15'sd 8288) * $signed(input_fmap_22[15:0]) +
	( 15'sd 14428) * $signed(input_fmap_23[15:0]) +
	( 15'sd 15854) * $signed(input_fmap_24[15:0]) +
	( 16'sd 28124) * $signed(input_fmap_25[15:0]) +
	( 16'sd 23944) * $signed(input_fmap_26[15:0]) +
	( 15'sd 14909) * $signed(input_fmap_27[15:0]) +
	( 16'sd 31217) * $signed(input_fmap_28[15:0]) +
	( 16'sd 21485) * $signed(input_fmap_29[15:0]) +
	( 13'sd 3395) * $signed(input_fmap_30[15:0]) +
	( 16'sd 29749) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_22;
assign conv_mac_22 = 
	( 16'sd 17170) * $signed(input_fmap_0[15:0]) +
	( 14'sd 7985) * $signed(input_fmap_1[15:0]) +
	( 16'sd 20561) * $signed(input_fmap_2[15:0]) +
	( 16'sd 29255) * $signed(input_fmap_3[15:0]) +
	( 14'sd 6583) * $signed(input_fmap_4[15:0]) +
	( 16'sd 20344) * $signed(input_fmap_5[15:0]) +
	( 16'sd 16800) * $signed(input_fmap_6[15:0]) +
	( 16'sd 21347) * $signed(input_fmap_7[15:0]) +
	( 15'sd 12869) * $signed(input_fmap_8[15:0]) +
	( 13'sd 2779) * $signed(input_fmap_9[15:0]) +
	( 14'sd 5009) * $signed(input_fmap_10[15:0]) +
	( 13'sd 3843) * $signed(input_fmap_11[15:0]) +
	( 16'sd 22675) * $signed(input_fmap_12[15:0]) +
	( 15'sd 10113) * $signed(input_fmap_13[15:0]) +
	( 15'sd 11166) * $signed(input_fmap_14[15:0]) +
	( 11'sd 857) * $signed(input_fmap_15[15:0]) +
	( 14'sd 7447) * $signed(input_fmap_16[15:0]) +
	( 14'sd 4523) * $signed(input_fmap_17[15:0]) +
	( 15'sd 11274) * $signed(input_fmap_18[15:0]) +
	( 16'sd 32557) * $signed(input_fmap_19[15:0]) +
	( 16'sd 28512) * $signed(input_fmap_20[15:0]) +
	( 14'sd 4761) * $signed(input_fmap_21[15:0]) +
	( 13'sd 3573) * $signed(input_fmap_22[15:0]) +
	( 16'sd 23881) * $signed(input_fmap_23[15:0]) +
	( 16'sd 32535) * $signed(input_fmap_24[15:0]) +
	( 16'sd 23967) * $signed(input_fmap_25[15:0]) +
	( 14'sd 5206) * $signed(input_fmap_26[15:0]) +
	( 16'sd 30957) * $signed(input_fmap_27[15:0]) +
	( 16'sd 29745) * $signed(input_fmap_28[15:0]) +
	( 16'sd 31716) * $signed(input_fmap_29[15:0]) +
	( 16'sd 23863) * $signed(input_fmap_30[15:0]) +
	( 15'sd 8464) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_23;
assign conv_mac_23 = 
	( 16'sd 32005) * $signed(input_fmap_0[15:0]) +
	( 12'sd 1454) * $signed(input_fmap_1[15:0]) +
	( 15'sd 11647) * $signed(input_fmap_2[15:0]) +
	( 16'sd 29110) * $signed(input_fmap_3[15:0]) +
	( 16'sd 23050) * $signed(input_fmap_4[15:0]) +
	( 14'sd 5624) * $signed(input_fmap_5[15:0]) +
	( 14'sd 6644) * $signed(input_fmap_6[15:0]) +
	( 16'sd 31442) * $signed(input_fmap_7[15:0]) +
	( 16'sd 23090) * $signed(input_fmap_8[15:0]) +
	( 8'sd 122) * $signed(input_fmap_9[15:0]) +
	( 16'sd 19887) * $signed(input_fmap_10[15:0]) +
	( 15'sd 8846) * $signed(input_fmap_11[15:0]) +
	( 16'sd 18920) * $signed(input_fmap_12[15:0]) +
	( 16'sd 30268) * $signed(input_fmap_13[15:0]) +
	( 16'sd 24116) * $signed(input_fmap_14[15:0]) +
	( 16'sd 27835) * $signed(input_fmap_15[15:0]) +
	( 16'sd 31859) * $signed(input_fmap_16[15:0]) +
	( 15'sd 11859) * $signed(input_fmap_17[15:0]) +
	( 15'sd 12690) * $signed(input_fmap_18[15:0]) +
	( 16'sd 27224) * $signed(input_fmap_19[15:0]) +
	( 16'sd 18887) * $signed(input_fmap_20[15:0]) +
	( 16'sd 18580) * $signed(input_fmap_21[15:0]) +
	( 15'sd 8205) * $signed(input_fmap_22[15:0]) +
	( 16'sd 27380) * $signed(input_fmap_23[15:0]) +
	( 14'sd 8022) * $signed(input_fmap_24[15:0]) +
	( 16'sd 22962) * $signed(input_fmap_25[15:0]) +
	( 15'sd 14509) * $signed(input_fmap_26[15:0]) +
	( 16'sd 19735) * $signed(input_fmap_27[15:0]) +
	( 15'sd 16061) * $signed(input_fmap_28[15:0]) +
	( 15'sd 14944) * $signed(input_fmap_29[15:0]) +
	( 16'sd 20321) * $signed(input_fmap_30[15:0]) +
	( 15'sd 9127) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_24;
assign conv_mac_24 = 
	( 16'sd 19765) * $signed(input_fmap_0[15:0]) +
	( 16'sd 28781) * $signed(input_fmap_1[15:0]) +
	( 15'sd 16307) * $signed(input_fmap_2[15:0]) +
	( 15'sd 14598) * $signed(input_fmap_3[15:0]) +
	( 16'sd 25170) * $signed(input_fmap_4[15:0]) +
	( 16'sd 31019) * $signed(input_fmap_5[15:0]) +
	( 16'sd 30139) * $signed(input_fmap_6[15:0]) +
	( 16'sd 19361) * $signed(input_fmap_7[15:0]) +
	( 13'sd 3496) * $signed(input_fmap_8[15:0]) +
	( 13'sd 3246) * $signed(input_fmap_9[15:0]) +
	( 16'sd 19419) * $signed(input_fmap_10[15:0]) +
	( 7'sd 47) * $signed(input_fmap_11[15:0]) +
	( 16'sd 18458) * $signed(input_fmap_12[15:0]) +
	( 16'sd 30269) * $signed(input_fmap_13[15:0]) +
	( 14'sd 6080) * $signed(input_fmap_14[15:0]) +
	( 16'sd 24711) * $signed(input_fmap_15[15:0]) +
	( 16'sd 17315) * $signed(input_fmap_16[15:0]) +
	( 16'sd 27620) * $signed(input_fmap_17[15:0]) +
	( 13'sd 3480) * $signed(input_fmap_18[15:0]) +
	( 16'sd 22015) * $signed(input_fmap_19[15:0]) +
	( 13'sd 2186) * $signed(input_fmap_20[15:0]) +
	( 16'sd 18766) * $signed(input_fmap_21[15:0]) +
	( 16'sd 21989) * $signed(input_fmap_22[15:0]) +
	( 16'sd 22292) * $signed(input_fmap_23[15:0]) +
	( 15'sd 14585) * $signed(input_fmap_24[15:0]) +
	( 11'sd 942) * $signed(input_fmap_25[15:0]) +
	( 15'sd 16113) * $signed(input_fmap_26[15:0]) +
	( 15'sd 11056) * $signed(input_fmap_27[15:0]) +
	( 16'sd 25364) * $signed(input_fmap_28[15:0]) +
	( 16'sd 29880) * $signed(input_fmap_29[15:0]) +
	( 16'sd 18520) * $signed(input_fmap_30[15:0]) +
	( 16'sd 19609) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_25;
assign conv_mac_25 = 
	( 15'sd 13650) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6848) * $signed(input_fmap_1[15:0]) +
	( 15'sd 13806) * $signed(input_fmap_2[15:0]) +
	( 16'sd 30828) * $signed(input_fmap_3[15:0]) +
	( 16'sd 18169) * $signed(input_fmap_4[15:0]) +
	( 16'sd 31712) * $signed(input_fmap_5[15:0]) +
	( 15'sd 10687) * $signed(input_fmap_6[15:0]) +
	( 12'sd 1519) * $signed(input_fmap_7[15:0]) +
	( 15'sd 8771) * $signed(input_fmap_8[15:0]) +
	( 16'sd 18356) * $signed(input_fmap_9[15:0]) +
	( 16'sd 25753) * $signed(input_fmap_10[15:0]) +
	( 14'sd 6791) * $signed(input_fmap_11[15:0]) +
	( 15'sd 12108) * $signed(input_fmap_12[15:0]) +
	( 12'sd 1759) * $signed(input_fmap_13[15:0]) +
	( 16'sd 31351) * $signed(input_fmap_14[15:0]) +
	( 15'sd 14041) * $signed(input_fmap_15[15:0]) +
	( 16'sd 27550) * $signed(input_fmap_16[15:0]) +
	( 16'sd 23300) * $signed(input_fmap_17[15:0]) +
	( 12'sd 1715) * $signed(input_fmap_18[15:0]) +
	( 13'sd 3731) * $signed(input_fmap_19[15:0]) +
	( 16'sd 31945) * $signed(input_fmap_20[15:0]) +
	( 16'sd 25573) * $signed(input_fmap_21[15:0]) +
	( 16'sd 20209) * $signed(input_fmap_22[15:0]) +
	( 16'sd 29124) * $signed(input_fmap_23[15:0]) +
	( 16'sd 18742) * $signed(input_fmap_24[15:0]) +
	( 14'sd 7120) * $signed(input_fmap_25[15:0]) +
	( 14'sd 4926) * $signed(input_fmap_26[15:0]) +
	( 16'sd 17541) * $signed(input_fmap_27[15:0]) +
	( 16'sd 27615) * $signed(input_fmap_28[15:0]) +
	( 16'sd 31151) * $signed(input_fmap_29[15:0]) +
	( 15'sd 13814) * $signed(input_fmap_30[15:0]) +
	( 16'sd 16871) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_26;
assign conv_mac_26 = 
	( 15'sd 16185) * $signed(input_fmap_0[15:0]) +
	( 15'sd 9886) * $signed(input_fmap_1[15:0]) +
	( 16'sd 16902) * $signed(input_fmap_2[15:0]) +
	( 15'sd 13272) * $signed(input_fmap_3[15:0]) +
	( 16'sd 27348) * $signed(input_fmap_4[15:0]) +
	( 16'sd 24731) * $signed(input_fmap_5[15:0]) +
	( 16'sd 30387) * $signed(input_fmap_6[15:0]) +
	( 16'sd 32094) * $signed(input_fmap_7[15:0]) +
	( 13'sd 2571) * $signed(input_fmap_8[15:0]) +
	( 16'sd 27339) * $signed(input_fmap_9[15:0]) +
	( 15'sd 13424) * $signed(input_fmap_10[15:0]) +
	( 16'sd 20633) * $signed(input_fmap_11[15:0]) +
	( 16'sd 18831) * $signed(input_fmap_12[15:0]) +
	( 16'sd 30467) * $signed(input_fmap_13[15:0]) +
	( 15'sd 9256) * $signed(input_fmap_14[15:0]) +
	( 16'sd 29293) * $signed(input_fmap_15[15:0]) +
	( 14'sd 5701) * $signed(input_fmap_16[15:0]) +
	( 15'sd 12274) * $signed(input_fmap_17[15:0]) +
	( 12'sd 1454) * $signed(input_fmap_18[15:0]) +
	( 16'sd 32296) * $signed(input_fmap_19[15:0]) +
	( 15'sd 14748) * $signed(input_fmap_20[15:0]) +
	( 15'sd 14723) * $signed(input_fmap_21[15:0]) +
	( 16'sd 32280) * $signed(input_fmap_22[15:0]) +
	( 15'sd 8225) * $signed(input_fmap_23[15:0]) +
	( 16'sd 29088) * $signed(input_fmap_24[15:0]) +
	( 14'sd 8056) * $signed(input_fmap_25[15:0]) +
	( 12'sd 1722) * $signed(input_fmap_26[15:0]) +
	( 16'sd 32118) * $signed(input_fmap_27[15:0]) +
	( 16'sd 26880) * $signed(input_fmap_28[15:0]) +
	( 16'sd 22874) * $signed(input_fmap_29[15:0]) +
	( 16'sd 28167) * $signed(input_fmap_30[15:0]) +
	( 16'sd 25556) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_27;
assign conv_mac_27 = 
	( 14'sd 4517) * $signed(input_fmap_0[15:0]) +
	( 15'sd 10107) * $signed(input_fmap_1[15:0]) +
	( 14'sd 4912) * $signed(input_fmap_2[15:0]) +
	( 16'sd 26296) * $signed(input_fmap_3[15:0]) +
	( 15'sd 9656) * $signed(input_fmap_4[15:0]) +
	( 16'sd 28845) * $signed(input_fmap_5[15:0]) +
	( 15'sd 12475) * $signed(input_fmap_6[15:0]) +
	( 16'sd 17682) * $signed(input_fmap_7[15:0]) +
	( 16'sd 16850) * $signed(input_fmap_8[15:0]) +
	( 15'sd 12657) * $signed(input_fmap_9[15:0]) +
	( 16'sd 18739) * $signed(input_fmap_10[15:0]) +
	( 16'sd 19484) * $signed(input_fmap_11[15:0]) +
	( 14'sd 6355) * $signed(input_fmap_12[15:0]) +
	( 16'sd 21550) * $signed(input_fmap_13[15:0]) +
	( 16'sd 16998) * $signed(input_fmap_14[15:0]) +
	( 16'sd 22239) * $signed(input_fmap_15[15:0]) +
	( 13'sd 2580) * $signed(input_fmap_16[15:0]) +
	( 15'sd 13468) * $signed(input_fmap_17[15:0]) +
	( 16'sd 30192) * $signed(input_fmap_18[15:0]) +
	( 10'sd 381) * $signed(input_fmap_19[15:0]) +
	( 13'sd 3932) * $signed(input_fmap_20[15:0]) +
	( 16'sd 29325) * $signed(input_fmap_21[15:0]) +
	( 14'sd 4800) * $signed(input_fmap_22[15:0]) +
	( 16'sd 17590) * $signed(input_fmap_23[15:0]) +
	( 13'sd 2238) * $signed(input_fmap_24[15:0]) +
	( 16'sd 26891) * $signed(input_fmap_25[15:0]) +
	( 15'sd 11898) * $signed(input_fmap_26[15:0]) +
	( 16'sd 27394) * $signed(input_fmap_27[15:0]) +
	( 14'sd 7157) * $signed(input_fmap_28[15:0]) +
	( 16'sd 17793) * $signed(input_fmap_29[15:0]) +
	( 12'sd 1855) * $signed(input_fmap_30[15:0]) +
	( 14'sd 5020) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_28;
assign conv_mac_28 = 
	( 16'sd 16523) * $signed(input_fmap_0[15:0]) +
	( 15'sd 15499) * $signed(input_fmap_1[15:0]) +
	( 16'sd 18010) * $signed(input_fmap_2[15:0]) +
	( 12'sd 1510) * $signed(input_fmap_3[15:0]) +
	( 15'sd 12144) * $signed(input_fmap_4[15:0]) +
	( 14'sd 7131) * $signed(input_fmap_5[15:0]) +
	( 16'sd 30792) * $signed(input_fmap_6[15:0]) +
	( 14'sd 7772) * $signed(input_fmap_7[15:0]) +
	( 16'sd 22884) * $signed(input_fmap_8[15:0]) +
	( 16'sd 29908) * $signed(input_fmap_9[15:0]) +
	( 15'sd 14505) * $signed(input_fmap_10[15:0]) +
	( 16'sd 17623) * $signed(input_fmap_11[15:0]) +
	( 15'sd 15895) * $signed(input_fmap_12[15:0]) +
	( 16'sd 17409) * $signed(input_fmap_13[15:0]) +
	( 16'sd 32120) * $signed(input_fmap_14[15:0]) +
	( 16'sd 17490) * $signed(input_fmap_15[15:0]) +
	( 16'sd 17884) * $signed(input_fmap_16[15:0]) +
	( 16'sd 27687) * $signed(input_fmap_17[15:0]) +
	( 13'sd 3225) * $signed(input_fmap_18[15:0]) +
	( 16'sd 21916) * $signed(input_fmap_19[15:0]) +
	( 16'sd 30571) * $signed(input_fmap_20[15:0]) +
	( 15'sd 11796) * $signed(input_fmap_21[15:0]) +
	( 15'sd 8316) * $signed(input_fmap_22[15:0]) +
	( 16'sd 25750) * $signed(input_fmap_23[15:0]) +
	( 16'sd 32559) * $signed(input_fmap_24[15:0]) +
	( 16'sd 25588) * $signed(input_fmap_25[15:0]) +
	( 16'sd 32559) * $signed(input_fmap_26[15:0]) +
	( 16'sd 20534) * $signed(input_fmap_27[15:0]) +
	( 15'sd 12465) * $signed(input_fmap_28[15:0]) +
	( 16'sd 32503) * $signed(input_fmap_29[15:0]) +
	( 15'sd 15964) * $signed(input_fmap_30[15:0]) +
	( 16'sd 19551) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_29;
assign conv_mac_29 = 
	( 15'sd 12930) * $signed(input_fmap_0[15:0]) +
	( 16'sd 20422) * $signed(input_fmap_1[15:0]) +
	( 16'sd 20906) * $signed(input_fmap_2[15:0]) +
	( 15'sd 9747) * $signed(input_fmap_3[15:0]) +
	( 15'sd 9474) * $signed(input_fmap_4[15:0]) +
	( 15'sd 11596) * $signed(input_fmap_5[15:0]) +
	( 15'sd 8741) * $signed(input_fmap_6[15:0]) +
	( 16'sd 21195) * $signed(input_fmap_7[15:0]) +
	( 16'sd 20267) * $signed(input_fmap_8[15:0]) +
	( 16'sd 24159) * $signed(input_fmap_9[15:0]) +
	( 16'sd 31047) * $signed(input_fmap_10[15:0]) +
	( 16'sd 24372) * $signed(input_fmap_11[15:0]) +
	( 16'sd 28452) * $signed(input_fmap_12[15:0]) +
	( 14'sd 6673) * $signed(input_fmap_13[15:0]) +
	( 12'sd 1171) * $signed(input_fmap_14[15:0]) +
	( 14'sd 5601) * $signed(input_fmap_15[15:0]) +
	( 16'sd 29665) * $signed(input_fmap_16[15:0]) +
	( 14'sd 5456) * $signed(input_fmap_17[15:0]) +
	( 14'sd 4280) * $signed(input_fmap_18[15:0]) +
	( 13'sd 3386) * $signed(input_fmap_19[15:0]) +
	( 16'sd 25824) * $signed(input_fmap_20[15:0]) +
	( 16'sd 24706) * $signed(input_fmap_21[15:0]) +
	( 16'sd 23795) * $signed(input_fmap_22[15:0]) +
	( 16'sd 20616) * $signed(input_fmap_23[15:0]) +
	( 16'sd 22068) * $signed(input_fmap_24[15:0]) +
	( 14'sd 7236) * $signed(input_fmap_25[15:0]) +
	( 16'sd 19583) * $signed(input_fmap_26[15:0]) +
	( 14'sd 6959) * $signed(input_fmap_27[15:0]) +
	( 14'sd 8064) * $signed(input_fmap_28[15:0]) +
	( 14'sd 7855) * $signed(input_fmap_29[15:0]) +
	( 16'sd 30401) * $signed(input_fmap_30[15:0]) +
	( 16'sd 24089) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_30;
assign conv_mac_30 = 
	( 13'sd 3570) * $signed(input_fmap_0[15:0]) +
	( 16'sd 32401) * $signed(input_fmap_1[15:0]) +
	( 15'sd 15873) * $signed(input_fmap_2[15:0]) +
	( 15'sd 14316) * $signed(input_fmap_3[15:0]) +
	( 16'sd 16555) * $signed(input_fmap_4[15:0]) +
	( 16'sd 21781) * $signed(input_fmap_5[15:0]) +
	( 16'sd 20730) * $signed(input_fmap_6[15:0]) +
	( 16'sd 19889) * $signed(input_fmap_7[15:0]) +
	( 16'sd 22519) * $signed(input_fmap_8[15:0]) +
	( 14'sd 6521) * $signed(input_fmap_9[15:0]) +
	( 16'sd 20279) * $signed(input_fmap_10[15:0]) +
	( 10'sd 399) * $signed(input_fmap_11[15:0]) +
	( 16'sd 18357) * $signed(input_fmap_12[15:0]) +
	( 16'sd 24858) * $signed(input_fmap_13[15:0]) +
	( 16'sd 17215) * $signed(input_fmap_14[15:0]) +
	( 16'sd 28452) * $signed(input_fmap_15[15:0]) +
	( 13'sd 2644) * $signed(input_fmap_16[15:0]) +
	( 16'sd 22118) * $signed(input_fmap_17[15:0]) +
	( 16'sd 16724) * $signed(input_fmap_18[15:0]) +
	( 16'sd 26106) * $signed(input_fmap_19[15:0]) +
	( 16'sd 30577) * $signed(input_fmap_20[15:0]) +
	( 14'sd 6292) * $signed(input_fmap_21[15:0]) +
	( 15'sd 12747) * $signed(input_fmap_22[15:0]) +
	( 14'sd 8179) * $signed(input_fmap_23[15:0]) +
	( 16'sd 30973) * $signed(input_fmap_24[15:0]) +
	( 16'sd 20088) * $signed(input_fmap_25[15:0]) +
	( 15'sd 14869) * $signed(input_fmap_26[15:0]) +
	( 15'sd 9444) * $signed(input_fmap_27[15:0]) +
	( 15'sd 16188) * $signed(input_fmap_28[15:0]) +
	( 16'sd 31666) * $signed(input_fmap_29[15:0]) +
	( 15'sd 11856) * $signed(input_fmap_30[15:0]) +
	( 16'sd 22572) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_31;
assign conv_mac_31 = 
	( 14'sd 5923) * $signed(input_fmap_0[15:0]) +
	( 16'sd 28108) * $signed(input_fmap_1[15:0]) +
	( 15'sd 12681) * $signed(input_fmap_2[15:0]) +
	( 16'sd 17284) * $signed(input_fmap_3[15:0]) +
	( 16'sd 30422) * $signed(input_fmap_4[15:0]) +
	( 14'sd 6262) * $signed(input_fmap_5[15:0]) +
	( 13'sd 3381) * $signed(input_fmap_6[15:0]) +
	( 16'sd 19668) * $signed(input_fmap_7[15:0]) +
	( 11'sd 887) * $signed(input_fmap_8[15:0]) +
	( 16'sd 32370) * $signed(input_fmap_9[15:0]) +
	( 16'sd 26345) * $signed(input_fmap_10[15:0]) +
	( 16'sd 23636) * $signed(input_fmap_11[15:0]) +
	( 16'sd 30089) * $signed(input_fmap_12[15:0]) +
	( 16'sd 26010) * $signed(input_fmap_13[15:0]) +
	( 16'sd 18781) * $signed(input_fmap_14[15:0]) +
	( 16'sd 20309) * $signed(input_fmap_15[15:0]) +
	( 13'sd 2906) * $signed(input_fmap_16[15:0]) +
	( 12'sd 1323) * $signed(input_fmap_17[15:0]) +
	( 15'sd 15334) * $signed(input_fmap_18[15:0]) +
	( 16'sd 30848) * $signed(input_fmap_19[15:0]) +
	( 16'sd 16547) * $signed(input_fmap_20[15:0]) +
	( 15'sd 9596) * $signed(input_fmap_21[15:0]) +
	( 15'sd 11973) * $signed(input_fmap_22[15:0]) +
	( 16'sd 31389) * $signed(input_fmap_23[15:0]) +
	( 16'sd 18276) * $signed(input_fmap_24[15:0]) +
	( 16'sd 30120) * $signed(input_fmap_25[15:0]) +
	( 14'sd 7662) * $signed(input_fmap_26[15:0]) +
	( 16'sd 17760) * $signed(input_fmap_27[15:0]) +
	( 16'sd 31925) * $signed(input_fmap_28[15:0]) +
	( 16'sd 18032) * $signed(input_fmap_29[15:0]) +
	( 15'sd 10037) * $signed(input_fmap_30[15:0]) +
	( 15'sd 15093) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_32;
assign conv_mac_32 = 
	( 14'sd 4238) * $signed(input_fmap_0[15:0]) +
	( 15'sd 10489) * $signed(input_fmap_1[15:0]) +
	( 16'sd 31526) * $signed(input_fmap_2[15:0]) +
	( 15'sd 10082) * $signed(input_fmap_3[15:0]) +
	( 15'sd 15202) * $signed(input_fmap_4[15:0]) +
	( 15'sd 11673) * $signed(input_fmap_5[15:0]) +
	( 15'sd 13303) * $signed(input_fmap_6[15:0]) +
	( 14'sd 6053) * $signed(input_fmap_7[15:0]) +
	( 15'sd 15528) * $signed(input_fmap_8[15:0]) +
	( 16'sd 20438) * $signed(input_fmap_9[15:0]) +
	( 14'sd 7913) * $signed(input_fmap_10[15:0]) +
	( 14'sd 7872) * $signed(input_fmap_11[15:0]) +
	( 16'sd 30319) * $signed(input_fmap_12[15:0]) +
	( 15'sd 13491) * $signed(input_fmap_13[15:0]) +
	( 16'sd 20594) * $signed(input_fmap_14[15:0]) +
	( 16'sd 17112) * $signed(input_fmap_15[15:0]) +
	( 13'sd 2411) * $signed(input_fmap_16[15:0]) +
	( 16'sd 31715) * $signed(input_fmap_17[15:0]) +
	( 14'sd 6919) * $signed(input_fmap_18[15:0]) +
	( 16'sd 20031) * $signed(input_fmap_19[15:0]) +
	( 15'sd 11909) * $signed(input_fmap_20[15:0]) +
	( 14'sd 7721) * $signed(input_fmap_21[15:0]) +
	( 16'sd 26259) * $signed(input_fmap_22[15:0]) +
	( 16'sd 19203) * $signed(input_fmap_23[15:0]) +
	( 13'sd 3468) * $signed(input_fmap_24[15:0]) +
	( 12'sd 1277) * $signed(input_fmap_25[15:0]) +
	( 15'sd 15760) * $signed(input_fmap_26[15:0]) +
	( 16'sd 19720) * $signed(input_fmap_27[15:0]) +
	( 13'sd 2870) * $signed(input_fmap_28[15:0]) +
	( 15'sd 15181) * $signed(input_fmap_29[15:0]) +
	( 16'sd 27827) * $signed(input_fmap_30[15:0]) +
	( 15'sd 9156) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_33;
assign conv_mac_33 = 
	( 16'sd 21663) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6648) * $signed(input_fmap_1[15:0]) +
	( 13'sd 3903) * $signed(input_fmap_2[15:0]) +
	( 16'sd 30279) * $signed(input_fmap_3[15:0]) +
	( 16'sd 29706) * $signed(input_fmap_4[15:0]) +
	( 16'sd 27557) * $signed(input_fmap_5[15:0]) +
	( 16'sd 23243) * $signed(input_fmap_6[15:0]) +
	( 15'sd 12846) * $signed(input_fmap_7[15:0]) +
	( 16'sd 26707) * $signed(input_fmap_8[15:0]) +
	( 16'sd 24158) * $signed(input_fmap_9[15:0]) +
	( 16'sd 22887) * $signed(input_fmap_10[15:0]) +
	( 16'sd 22948) * $signed(input_fmap_11[15:0]) +
	( 16'sd 29514) * $signed(input_fmap_12[15:0]) +
	( 16'sd 31347) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13371) * $signed(input_fmap_14[15:0]) +
	( 16'sd 17867) * $signed(input_fmap_15[15:0]) +
	( 15'sd 10617) * $signed(input_fmap_16[15:0]) +
	( 16'sd 22371) * $signed(input_fmap_17[15:0]) +
	( 16'sd 18590) * $signed(input_fmap_18[15:0]) +
	( 15'sd 12686) * $signed(input_fmap_19[15:0]) +
	( 16'sd 16739) * $signed(input_fmap_20[15:0]) +
	( 16'sd 20401) * $signed(input_fmap_21[15:0]) +
	( 16'sd 27824) * $signed(input_fmap_22[15:0]) +
	( 16'sd 19516) * $signed(input_fmap_23[15:0]) +
	( 15'sd 8443) * $signed(input_fmap_24[15:0]) +
	( 16'sd 17708) * $signed(input_fmap_25[15:0]) +
	( 16'sd 24364) * $signed(input_fmap_26[15:0]) +
	( 13'sd 3089) * $signed(input_fmap_27[15:0]) +
	( 15'sd 15025) * $signed(input_fmap_28[15:0]) +
	( 16'sd 30705) * $signed(input_fmap_29[15:0]) +
	( 16'sd 22021) * $signed(input_fmap_30[15:0]) +
	( 15'sd 9683) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_34;
assign conv_mac_34 = 
	( 16'sd 24028) * $signed(input_fmap_0[15:0]) +
	( 7'sd 49) * $signed(input_fmap_1[15:0]) +
	( 16'sd 20961) * $signed(input_fmap_2[15:0]) +
	( 16'sd 27048) * $signed(input_fmap_3[15:0]) +
	( 14'sd 6177) * $signed(input_fmap_4[15:0]) +
	( 16'sd 24075) * $signed(input_fmap_5[15:0]) +
	( 16'sd 29719) * $signed(input_fmap_6[15:0]) +
	( 13'sd 3069) * $signed(input_fmap_7[15:0]) +
	( 15'sd 14007) * $signed(input_fmap_8[15:0]) +
	( 16'sd 30714) * $signed(input_fmap_9[15:0]) +
	( 15'sd 15764) * $signed(input_fmap_10[15:0]) +
	( 16'sd 23144) * $signed(input_fmap_11[15:0]) +
	( 16'sd 27857) * $signed(input_fmap_12[15:0]) +
	( 12'sd 2027) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13409) * $signed(input_fmap_14[15:0]) +
	( 14'sd 8006) * $signed(input_fmap_15[15:0]) +
	( 15'sd 16108) * $signed(input_fmap_16[15:0]) +
	( 15'sd 16245) * $signed(input_fmap_17[15:0]) +
	( 16'sd 20052) * $signed(input_fmap_18[15:0]) +
	( 12'sd 1726) * $signed(input_fmap_19[15:0]) +
	( 14'sd 5061) * $signed(input_fmap_20[15:0]) +
	( 16'sd 25498) * $signed(input_fmap_21[15:0]) +
	( 13'sd 2054) * $signed(input_fmap_22[15:0]) +
	( 16'sd 27338) * $signed(input_fmap_23[15:0]) +
	( 14'sd 4731) * $signed(input_fmap_24[15:0]) +
	( 16'sd 31815) * $signed(input_fmap_25[15:0]) +
	( 16'sd 23911) * $signed(input_fmap_26[15:0]) +
	( 12'sd 1038) * $signed(input_fmap_27[15:0]) +
	( 16'sd 18459) * $signed(input_fmap_28[15:0]) +
	( 14'sd 7836) * $signed(input_fmap_29[15:0]) +
	( 16'sd 32662) * $signed(input_fmap_30[15:0]) +
	( 15'sd 12087) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_35;
assign conv_mac_35 = 
	( 14'sd 5734) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6999) * $signed(input_fmap_1[15:0]) +
	( 16'sd 25590) * $signed(input_fmap_2[15:0]) +
	( 12'sd 1977) * $signed(input_fmap_3[15:0]) +
	( 15'sd 14434) * $signed(input_fmap_4[15:0]) +
	( 12'sd 1161) * $signed(input_fmap_5[15:0]) +
	( 15'sd 15364) * $signed(input_fmap_6[15:0]) +
	( 16'sd 21660) * $signed(input_fmap_7[15:0]) +
	( 16'sd 27062) * $signed(input_fmap_8[15:0]) +
	( 16'sd 20835) * $signed(input_fmap_9[15:0]) +
	( 15'sd 8348) * $signed(input_fmap_10[15:0]) +
	( 15'sd 11181) * $signed(input_fmap_11[15:0]) +
	( 15'sd 10451) * $signed(input_fmap_12[15:0]) +
	( 16'sd 31436) * $signed(input_fmap_13[15:0]) +
	( 16'sd 26335) * $signed(input_fmap_14[15:0]) +
	( 15'sd 10573) * $signed(input_fmap_15[15:0]) +
	( 16'sd 20455) * $signed(input_fmap_16[15:0]) +
	( 14'sd 4153) * $signed(input_fmap_17[15:0]) +
	( 13'sd 3127) * $signed(input_fmap_18[15:0]) +
	( 16'sd 22114) * $signed(input_fmap_19[15:0]) +
	( 15'sd 9793) * $signed(input_fmap_20[15:0]) +
	( 16'sd 32588) * $signed(input_fmap_21[15:0]) +
	( 16'sd 30846) * $signed(input_fmap_22[15:0]) +
	( 16'sd 20038) * $signed(input_fmap_23[15:0]) +
	( 15'sd 12489) * $signed(input_fmap_24[15:0]) +
	( 16'sd 23495) * $signed(input_fmap_25[15:0]) +
	( 15'sd 16128) * $signed(input_fmap_26[15:0]) +
	( 16'sd 26932) * $signed(input_fmap_27[15:0]) +
	( 14'sd 7366) * $signed(input_fmap_28[15:0]) +
	( 13'sd 3625) * $signed(input_fmap_29[15:0]) +
	( 8'sd 79) * $signed(input_fmap_30[15:0]) +
	( 15'sd 13807) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_36;
assign conv_mac_36 = 
	( 14'sd 6341) * $signed(input_fmap_0[15:0]) +
	( 15'sd 12905) * $signed(input_fmap_1[15:0]) +
	( 16'sd 21064) * $signed(input_fmap_2[15:0]) +
	( 15'sd 12008) * $signed(input_fmap_3[15:0]) +
	( 11'sd 1001) * $signed(input_fmap_4[15:0]) +
	( 16'sd 18876) * $signed(input_fmap_5[15:0]) +
	( 16'sd 29520) * $signed(input_fmap_6[15:0]) +
	( 16'sd 16948) * $signed(input_fmap_7[15:0]) +
	( 15'sd 13133) * $signed(input_fmap_8[15:0]) +
	( 16'sd 18563) * $signed(input_fmap_9[15:0]) +
	( 15'sd 11832) * $signed(input_fmap_10[15:0]) +
	( 14'sd 4310) * $signed(input_fmap_11[15:0]) +
	( 16'sd 17375) * $signed(input_fmap_12[15:0]) +
	( 16'sd 28897) * $signed(input_fmap_13[15:0]) +
	( 13'sd 2170) * $signed(input_fmap_14[15:0]) +
	( 15'sd 14679) * $signed(input_fmap_15[15:0]) +
	( 16'sd 18577) * $signed(input_fmap_16[15:0]) +
	( 15'sd 11942) * $signed(input_fmap_17[15:0]) +
	( 16'sd 21563) * $signed(input_fmap_18[15:0]) +
	( 15'sd 10299) * $signed(input_fmap_19[15:0]) +
	( 15'sd 14680) * $signed(input_fmap_20[15:0]) +
	( 16'sd 21187) * $signed(input_fmap_21[15:0]) +
	( 16'sd 24264) * $signed(input_fmap_22[15:0]) +
	( 15'sd 10857) * $signed(input_fmap_23[15:0]) +
	( 13'sd 2856) * $signed(input_fmap_24[15:0]) +
	( 14'sd 7337) * $signed(input_fmap_25[15:0]) +
	( 16'sd 24219) * $signed(input_fmap_26[15:0]) +
	( 16'sd 26755) * $signed(input_fmap_27[15:0]) +
	( 16'sd 22139) * $signed(input_fmap_28[15:0]) +
	( 16'sd 31228) * $signed(input_fmap_29[15:0]) +
	( 14'sd 4110) * $signed(input_fmap_30[15:0]) +
	( 16'sd 27983) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_37;
assign conv_mac_37 = 
	( 16'sd 17716) * $signed(input_fmap_0[15:0]) +
	( 16'sd 24860) * $signed(input_fmap_1[15:0]) +
	( 13'sd 2946) * $signed(input_fmap_2[15:0]) +
	( 16'sd 31709) * $signed(input_fmap_3[15:0]) +
	( 15'sd 12632) * $signed(input_fmap_4[15:0]) +
	( 16'sd 30374) * $signed(input_fmap_5[15:0]) +
	( 14'sd 5097) * $signed(input_fmap_6[15:0]) +
	( 16'sd 24780) * $signed(input_fmap_7[15:0]) +
	( 9'sd 223) * $signed(input_fmap_8[15:0]) +
	( 13'sd 2495) * $signed(input_fmap_9[15:0]) +
	( 15'sd 14381) * $signed(input_fmap_10[15:0]) +
	( 16'sd 18310) * $signed(input_fmap_11[15:0]) +
	( 14'sd 5157) * $signed(input_fmap_12[15:0]) +
	( 15'sd 11813) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13907) * $signed(input_fmap_14[15:0]) +
	( 15'sd 9686) * $signed(input_fmap_15[15:0]) +
	( 16'sd 31539) * $signed(input_fmap_16[15:0]) +
	( 16'sd 18054) * $signed(input_fmap_17[15:0]) +
	( 11'sd 890) * $signed(input_fmap_18[15:0]) +
	( 16'sd 19856) * $signed(input_fmap_19[15:0]) +
	( 14'sd 8160) * $signed(input_fmap_20[15:0]) +
	( 16'sd 30911) * $signed(input_fmap_21[15:0]) +
	( 16'sd 29292) * $signed(input_fmap_22[15:0]) +
	( 16'sd 27931) * $signed(input_fmap_23[15:0]) +
	( 13'sd 3058) * $signed(input_fmap_24[15:0]) +
	( 14'sd 4195) * $signed(input_fmap_25[15:0]) +
	( 15'sd 9487) * $signed(input_fmap_26[15:0]) +
	( 15'sd 8309) * $signed(input_fmap_27[15:0]) +
	( 16'sd 31641) * $signed(input_fmap_28[15:0]) +
	( 16'sd 22365) * $signed(input_fmap_29[15:0]) +
	( 16'sd 26828) * $signed(input_fmap_30[15:0]) +
	( 14'sd 7766) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_38;
assign conv_mac_38 = 
	( 15'sd 8474) * $signed(input_fmap_0[15:0]) +
	( 15'sd 16013) * $signed(input_fmap_1[15:0]) +
	( 16'sd 22195) * $signed(input_fmap_2[15:0]) +
	( 16'sd 27155) * $signed(input_fmap_3[15:0]) +
	( 16'sd 25614) * $signed(input_fmap_4[15:0]) +
	( 12'sd 1878) * $signed(input_fmap_5[15:0]) +
	( 14'sd 5813) * $signed(input_fmap_6[15:0]) +
	( 16'sd 16965) * $signed(input_fmap_7[15:0]) +
	( 16'sd 21818) * $signed(input_fmap_8[15:0]) +
	( 16'sd 28427) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1753) * $signed(input_fmap_10[15:0]) +
	( 13'sd 3806) * $signed(input_fmap_11[15:0]) +
	( 15'sd 10038) * $signed(input_fmap_12[15:0]) +
	( 15'sd 15579) * $signed(input_fmap_13[15:0]) +
	( 16'sd 32470) * $signed(input_fmap_14[15:0]) +
	( 15'sd 8487) * $signed(input_fmap_15[15:0]) +
	( 15'sd 13167) * $signed(input_fmap_16[15:0]) +
	( 15'sd 9777) * $signed(input_fmap_17[15:0]) +
	( 15'sd 9720) * $signed(input_fmap_18[15:0]) +
	( 16'sd 22201) * $signed(input_fmap_19[15:0]) +
	( 16'sd 26678) * $signed(input_fmap_20[15:0]) +
	( 16'sd 25784) * $signed(input_fmap_21[15:0]) +
	( 16'sd 29643) * $signed(input_fmap_22[15:0]) +
	( 15'sd 15502) * $signed(input_fmap_23[15:0]) +
	( 15'sd 8454) * $signed(input_fmap_24[15:0]) +
	( 15'sd 9725) * $signed(input_fmap_25[15:0]) +
	( 16'sd 25647) * $signed(input_fmap_26[15:0]) +
	( 14'sd 5049) * $signed(input_fmap_27[15:0]) +
	( 15'sd 9975) * $signed(input_fmap_28[15:0]) +
	( 16'sd 21726) * $signed(input_fmap_29[15:0]) +
	( 16'sd 25939) * $signed(input_fmap_30[15:0]) +
	( 15'sd 10540) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_39;
assign conv_mac_39 = 
	( 15'sd 10813) * $signed(input_fmap_0[15:0]) +
	( 16'sd 19236) * $signed(input_fmap_1[15:0]) +
	( 16'sd 32231) * $signed(input_fmap_2[15:0]) +
	( 16'sd 24490) * $signed(input_fmap_3[15:0]) +
	( 16'sd 16802) * $signed(input_fmap_4[15:0]) +
	( 16'sd 24780) * $signed(input_fmap_5[15:0]) +
	( 16'sd 23717) * $signed(input_fmap_6[15:0]) +
	( 16'sd 17704) * $signed(input_fmap_7[15:0]) +
	( 16'sd 22944) * $signed(input_fmap_8[15:0]) +
	( 16'sd 29059) * $signed(input_fmap_9[15:0]) +
	( 14'sd 6742) * $signed(input_fmap_10[15:0]) +
	( 16'sd 22531) * $signed(input_fmap_11[15:0]) +
	( 15'sd 9046) * $signed(input_fmap_12[15:0]) +
	( 14'sd 4297) * $signed(input_fmap_13[15:0]) +
	( 13'sd 2118) * $signed(input_fmap_14[15:0]) +
	( 14'sd 7278) * $signed(input_fmap_15[15:0]) +
	( 15'sd 14796) * $signed(input_fmap_16[15:0]) +
	( 15'sd 9703) * $signed(input_fmap_17[15:0]) +
	( 10'sd 349) * $signed(input_fmap_18[15:0]) +
	( 16'sd 28160) * $signed(input_fmap_19[15:0]) +
	( 16'sd 20577) * $signed(input_fmap_20[15:0]) +
	( 15'sd 12760) * $signed(input_fmap_21[15:0]) +
	( 16'sd 27231) * $signed(input_fmap_22[15:0]) +
	( 16'sd 25258) * $signed(input_fmap_23[15:0]) +
	( 16'sd 22896) * $signed(input_fmap_24[15:0]) +
	( 16'sd 22579) * $signed(input_fmap_25[15:0]) +
	( 15'sd 12120) * $signed(input_fmap_26[15:0]) +
	( 14'sd 5970) * $signed(input_fmap_27[15:0]) +
	( 16'sd 27267) * $signed(input_fmap_28[15:0]) +
	( 16'sd 16742) * $signed(input_fmap_29[15:0]) +
	( 13'sd 2341) * $signed(input_fmap_30[15:0]) +
	( 12'sd 1836) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_40;
assign conv_mac_40 = 
	( 16'sd 25539) * $signed(input_fmap_0[15:0]) +
	( 15'sd 15975) * $signed(input_fmap_1[15:0]) +
	( 15'sd 15122) * $signed(input_fmap_2[15:0]) +
	( 10'sd 390) * $signed(input_fmap_3[15:0]) +
	( 16'sd 32550) * $signed(input_fmap_4[15:0]) +
	( 16'sd 26563) * $signed(input_fmap_5[15:0]) +
	( 15'sd 12032) * $signed(input_fmap_6[15:0]) +
	( 16'sd 21920) * $signed(input_fmap_7[15:0]) +
	( 16'sd 32753) * $signed(input_fmap_8[15:0]) +
	( 14'sd 5983) * $signed(input_fmap_9[15:0]) +
	( 16'sd 17954) * $signed(input_fmap_10[15:0]) +
	( 15'sd 8288) * $signed(input_fmap_11[15:0]) +
	( 12'sd 1242) * $signed(input_fmap_12[15:0]) +
	( 16'sd 30454) * $signed(input_fmap_13[15:0]) +
	( 16'sd 24816) * $signed(input_fmap_14[15:0]) +
	( 16'sd 26036) * $signed(input_fmap_15[15:0]) +
	( 15'sd 12488) * $signed(input_fmap_16[15:0]) +
	( 15'sd 11080) * $signed(input_fmap_17[15:0]) +
	( 15'sd 12143) * $signed(input_fmap_18[15:0]) +
	( 16'sd 29456) * $signed(input_fmap_19[15:0]) +
	( 16'sd 17507) * $signed(input_fmap_20[15:0]) +
	( 15'sd 15026) * $signed(input_fmap_21[15:0]) +
	( 16'sd 24791) * $signed(input_fmap_22[15:0]) +
	( 16'sd 31746) * $signed(input_fmap_23[15:0]) +
	( 14'sd 4300) * $signed(input_fmap_24[15:0]) +
	( 16'sd 17123) * $signed(input_fmap_25[15:0]) +
	( 16'sd 19015) * $signed(input_fmap_26[15:0]) +
	( 15'sd 11598) * $signed(input_fmap_27[15:0]) +
	( 13'sd 3246) * $signed(input_fmap_28[15:0]) +
	( 13'sd 3485) * $signed(input_fmap_29[15:0]) +
	( 16'sd 18551) * $signed(input_fmap_30[15:0]) +
	( 16'sd 18845) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_41;
assign conv_mac_41 = 
	( 16'sd 26780) * $signed(input_fmap_0[15:0]) +
	( 16'sd 31948) * $signed(input_fmap_1[15:0]) +
	( 15'sd 8195) * $signed(input_fmap_2[15:0]) +
	( 16'sd 19074) * $signed(input_fmap_3[15:0]) +
	( 14'sd 6033) * $signed(input_fmap_4[15:0]) +
	( 16'sd 21818) * $signed(input_fmap_5[15:0]) +
	( 15'sd 13908) * $signed(input_fmap_6[15:0]) +
	( 16'sd 24496) * $signed(input_fmap_7[15:0]) +
	( 16'sd 17255) * $signed(input_fmap_8[15:0]) +
	( 16'sd 31421) * $signed(input_fmap_9[15:0]) +
	( 16'sd 31190) * $signed(input_fmap_10[15:0]) +
	( 16'sd 24698) * $signed(input_fmap_11[15:0]) +
	( 12'sd 1814) * $signed(input_fmap_12[15:0]) +
	( 14'sd 4278) * $signed(input_fmap_13[15:0]) +
	( 14'sd 4958) * $signed(input_fmap_14[15:0]) +
	( 16'sd 17068) * $signed(input_fmap_15[15:0]) +
	( 15'sd 13743) * $signed(input_fmap_16[15:0]) +
	( 16'sd 32491) * $signed(input_fmap_17[15:0]) +
	( 16'sd 28018) * $signed(input_fmap_18[15:0]) +
	( 15'sd 8831) * $signed(input_fmap_19[15:0]) +
	( 16'sd 28091) * $signed(input_fmap_20[15:0]) +
	( 14'sd 4883) * $signed(input_fmap_21[15:0]) +
	( 14'sd 7971) * $signed(input_fmap_22[15:0]) +
	( 11'sd 662) * $signed(input_fmap_23[15:0]) +
	( 16'sd 21067) * $signed(input_fmap_24[15:0]) +
	( 16'sd 26078) * $signed(input_fmap_25[15:0]) +
	( 15'sd 14939) * $signed(input_fmap_26[15:0]) +
	( 12'sd 1314) * $signed(input_fmap_27[15:0]) +
	( 16'sd 32522) * $signed(input_fmap_28[15:0]) +
	( 14'sd 4240) * $signed(input_fmap_29[15:0]) +
	( 13'sd 3495) * $signed(input_fmap_30[15:0]) +
	( 16'sd 24156) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_42;
assign conv_mac_42 = 
	( 16'sd 31744) * $signed(input_fmap_0[15:0]) +
	( 16'sd 23177) * $signed(input_fmap_1[15:0]) +
	( 15'sd 11514) * $signed(input_fmap_2[15:0]) +
	( 16'sd 27925) * $signed(input_fmap_3[15:0]) +
	( 16'sd 19174) * $signed(input_fmap_4[15:0]) +
	( 15'sd 13675) * $signed(input_fmap_5[15:0]) +
	( 15'sd 16203) * $signed(input_fmap_6[15:0]) +
	( 15'sd 15399) * $signed(input_fmap_7[15:0]) +
	( 16'sd 27347) * $signed(input_fmap_8[15:0]) +
	( 13'sd 2298) * $signed(input_fmap_9[15:0]) +
	( 16'sd 28399) * $signed(input_fmap_10[15:0]) +
	( 15'sd 12885) * $signed(input_fmap_11[15:0]) +
	( 16'sd 24215) * $signed(input_fmap_12[15:0]) +
	( 14'sd 8088) * $signed(input_fmap_13[15:0]) +
	( 15'sd 14673) * $signed(input_fmap_14[15:0]) +
	( 16'sd 19292) * $signed(input_fmap_15[15:0]) +
	( 16'sd 31107) * $signed(input_fmap_16[15:0]) +
	( 14'sd 5316) * $signed(input_fmap_17[15:0]) +
	( 15'sd 15040) * $signed(input_fmap_18[15:0]) +
	( 14'sd 5587) * $signed(input_fmap_19[15:0]) +
	( 12'sd 1679) * $signed(input_fmap_20[15:0]) +
	( 16'sd 19423) * $signed(input_fmap_21[15:0]) +
	( 16'sd 20250) * $signed(input_fmap_22[15:0]) +
	( 16'sd 25534) * $signed(input_fmap_23[15:0]) +
	( 16'sd 20859) * $signed(input_fmap_24[15:0]) +
	( 14'sd 7218) * $signed(input_fmap_25[15:0]) +
	( 15'sd 14084) * $signed(input_fmap_26[15:0]) +
	( 16'sd 26362) * $signed(input_fmap_27[15:0]) +
	( 16'sd 23229) * $signed(input_fmap_28[15:0]) +
	( 15'sd 8544) * $signed(input_fmap_29[15:0]) +
	( 16'sd 22177) * $signed(input_fmap_30[15:0]) +
	( 16'sd 23905) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_43;
assign conv_mac_43 = 
	( 16'sd 28038) * $signed(input_fmap_0[15:0]) +
	( 15'sd 13044) * $signed(input_fmap_1[15:0]) +
	( 15'sd 11584) * $signed(input_fmap_2[15:0]) +
	( 14'sd 6583) * $signed(input_fmap_3[15:0]) +
	( 16'sd 21302) * $signed(input_fmap_4[15:0]) +
	( 12'sd 1489) * $signed(input_fmap_5[15:0]) +
	( 16'sd 24513) * $signed(input_fmap_6[15:0]) +
	( 15'sd 9322) * $signed(input_fmap_7[15:0]) +
	( 16'sd 16494) * $signed(input_fmap_8[15:0]) +
	( 16'sd 22857) * $signed(input_fmap_9[15:0]) +
	( 16'sd 17615) * $signed(input_fmap_10[15:0]) +
	( 16'sd 30787) * $signed(input_fmap_11[15:0]) +
	( 16'sd 22627) * $signed(input_fmap_12[15:0]) +
	( 15'sd 13802) * $signed(input_fmap_13[15:0]) +
	( 16'sd 19448) * $signed(input_fmap_14[15:0]) +
	( 16'sd 26708) * $signed(input_fmap_15[15:0]) +
	( 16'sd 16910) * $signed(input_fmap_16[15:0]) +
	( 14'sd 4468) * $signed(input_fmap_17[15:0]) +
	( 15'sd 8310) * $signed(input_fmap_18[15:0]) +
	( 13'sd 3824) * $signed(input_fmap_19[15:0]) +
	( 12'sd 1228) * $signed(input_fmap_20[15:0]) +
	( 15'sd 14934) * $signed(input_fmap_21[15:0]) +
	( 16'sd 31235) * $signed(input_fmap_22[15:0]) +
	( 16'sd 17043) * $signed(input_fmap_23[15:0]) +
	( 16'sd 28893) * $signed(input_fmap_24[15:0]) +
	( 16'sd 16535) * $signed(input_fmap_25[15:0]) +
	( 15'sd 15349) * $signed(input_fmap_26[15:0]) +
	( 16'sd 22563) * $signed(input_fmap_27[15:0]) +
	( 16'sd 20095) * $signed(input_fmap_28[15:0]) +
	( 14'sd 6097) * $signed(input_fmap_29[15:0]) +
	( 16'sd 28643) * $signed(input_fmap_30[15:0]) +
	( 16'sd 18621) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_44;
assign conv_mac_44 = 
	( 14'sd 4134) * $signed(input_fmap_0[15:0]) +
	( 14'sd 4507) * $signed(input_fmap_1[15:0]) +
	( 16'sd 28034) * $signed(input_fmap_2[15:0]) +
	( 15'sd 8957) * $signed(input_fmap_3[15:0]) +
	( 13'sd 2910) * $signed(input_fmap_4[15:0]) +
	( 13'sd 4008) * $signed(input_fmap_5[15:0]) +
	( 15'sd 12329) * $signed(input_fmap_6[15:0]) +
	( 16'sd 20309) * $signed(input_fmap_7[15:0]) +
	( 14'sd 5612) * $signed(input_fmap_8[15:0]) +
	( 11'sd 806) * $signed(input_fmap_9[15:0]) +
	( 12'sd 1932) * $signed(input_fmap_10[15:0]) +
	( 16'sd 27286) * $signed(input_fmap_11[15:0]) +
	( 15'sd 13200) * $signed(input_fmap_12[15:0]) +
	( 15'sd 12882) * $signed(input_fmap_13[15:0]) +
	( 16'sd 30302) * $signed(input_fmap_14[15:0]) +
	( 16'sd 28793) * $signed(input_fmap_15[15:0]) +
	( 16'sd 32695) * $signed(input_fmap_16[15:0]) +
	( 16'sd 19213) * $signed(input_fmap_17[15:0]) +
	( 15'sd 14947) * $signed(input_fmap_18[15:0]) +
	( 16'sd 17653) * $signed(input_fmap_19[15:0]) +
	( 16'sd 16486) * $signed(input_fmap_20[15:0]) +
	( 16'sd 25423) * $signed(input_fmap_21[15:0]) +
	( 16'sd 23838) * $signed(input_fmap_22[15:0]) +
	( 15'sd 15296) * $signed(input_fmap_23[15:0]) +
	( 13'sd 2429) * $signed(input_fmap_24[15:0]) +
	( 15'sd 15305) * $signed(input_fmap_25[15:0]) +
	( 14'sd 4385) * $signed(input_fmap_26[15:0]) +
	( 16'sd 31394) * $signed(input_fmap_27[15:0]) +
	( 16'sd 24510) * $signed(input_fmap_28[15:0]) +
	( 16'sd 31612) * $signed(input_fmap_29[15:0]) +
	( 16'sd 25890) * $signed(input_fmap_30[15:0]) +
	( 15'sd 14921) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_45;
assign conv_mac_45 = 
	( 16'sd 27908) * $signed(input_fmap_0[15:0]) +
	( 15'sd 10583) * $signed(input_fmap_1[15:0]) +
	( 16'sd 21075) * $signed(input_fmap_2[15:0]) +
	( 14'sd 6625) * $signed(input_fmap_3[15:0]) +
	( 16'sd 23563) * $signed(input_fmap_4[15:0]) +
	( 15'sd 8897) * $signed(input_fmap_5[15:0]) +
	( 16'sd 26602) * $signed(input_fmap_6[15:0]) +
	( 15'sd 12907) * $signed(input_fmap_7[15:0]) +
	( 16'sd 19121) * $signed(input_fmap_8[15:0]) +
	( 16'sd 19902) * $signed(input_fmap_9[15:0]) +
	( 16'sd 26149) * $signed(input_fmap_10[15:0]) +
	( 16'sd 24884) * $signed(input_fmap_11[15:0]) +
	( 15'sd 11569) * $signed(input_fmap_12[15:0]) +
	( 16'sd 29331) * $signed(input_fmap_13[15:0]) +
	( 15'sd 14419) * $signed(input_fmap_14[15:0]) +
	( 16'sd 18515) * $signed(input_fmap_15[15:0]) +
	( 16'sd 22553) * $signed(input_fmap_16[15:0]) +
	( 15'sd 10269) * $signed(input_fmap_17[15:0]) +
	( 15'sd 10075) * $signed(input_fmap_18[15:0]) +
	( 16'sd 22741) * $signed(input_fmap_19[15:0]) +
	( 16'sd 22933) * $signed(input_fmap_20[15:0]) +
	( 16'sd 19196) * $signed(input_fmap_21[15:0]) +
	( 16'sd 24559) * $signed(input_fmap_22[15:0]) +
	( 15'sd 13694) * $signed(input_fmap_23[15:0]) +
	( 16'sd 29618) * $signed(input_fmap_24[15:0]) +
	( 14'sd 4992) * $signed(input_fmap_25[15:0]) +
	( 15'sd 13396) * $signed(input_fmap_26[15:0]) +
	( 16'sd 17676) * $signed(input_fmap_27[15:0]) +
	( 13'sd 3810) * $signed(input_fmap_28[15:0]) +
	( 16'sd 24979) * $signed(input_fmap_29[15:0]) +
	( 14'sd 6448) * $signed(input_fmap_30[15:0]) +
	( 16'sd 19642) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_46;
assign conv_mac_46 = 
	( 8'sd 109) * $signed(input_fmap_0[15:0]) +
	( 15'sd 15649) * $signed(input_fmap_1[15:0]) +
	( 16'sd 21097) * $signed(input_fmap_2[15:0]) +
	( 9'sd 232) * $signed(input_fmap_3[15:0]) +
	( 14'sd 7753) * $signed(input_fmap_4[15:0]) +
	( 16'sd 27776) * $signed(input_fmap_5[15:0]) +
	( 14'sd 6925) * $signed(input_fmap_6[15:0]) +
	( 15'sd 15712) * $signed(input_fmap_7[15:0]) +
	( 16'sd 24781) * $signed(input_fmap_8[15:0]) +
	( 15'sd 13245) * $signed(input_fmap_9[15:0]) +
	( 15'sd 10719) * $signed(input_fmap_10[15:0]) +
	( 12'sd 1427) * $signed(input_fmap_11[15:0]) +
	( 16'sd 28892) * $signed(input_fmap_12[15:0]) +
	( 16'sd 20350) * $signed(input_fmap_13[15:0]) +
	( 15'sd 15460) * $signed(input_fmap_14[15:0]) +
	( 16'sd 27503) * $signed(input_fmap_15[15:0]) +
	( 15'sd 16115) * $signed(input_fmap_16[15:0]) +
	( 16'sd 30926) * $signed(input_fmap_17[15:0]) +
	( 13'sd 3010) * $signed(input_fmap_18[15:0]) +
	( 16'sd 26507) * $signed(input_fmap_19[15:0]) +
	( 16'sd 30707) * $signed(input_fmap_20[15:0]) +
	( 15'sd 11417) * $signed(input_fmap_21[15:0]) +
	( 12'sd 1571) * $signed(input_fmap_22[15:0]) +
	( 16'sd 31008) * $signed(input_fmap_23[15:0]) +
	( 16'sd 30498) * $signed(input_fmap_24[15:0]) +
	( 16'sd 30905) * $signed(input_fmap_25[15:0]) +
	( 14'sd 7773) * $signed(input_fmap_26[15:0]) +
	( 15'sd 12091) * $signed(input_fmap_27[15:0]) +
	( 15'sd 16246) * $signed(input_fmap_28[15:0]) +
	( 14'sd 8176) * $signed(input_fmap_29[15:0]) +
	( 16'sd 30079) * $signed(input_fmap_30[15:0]) +
	( 16'sd 31008) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_47;
assign conv_mac_47 = 
	( 16'sd 28373) * $signed(input_fmap_0[15:0]) +
	( 16'sd 32455) * $signed(input_fmap_1[15:0]) +
	( 16'sd 20813) * $signed(input_fmap_2[15:0]) +
	( 15'sd 8640) * $signed(input_fmap_3[15:0]) +
	( 15'sd 9988) * $signed(input_fmap_4[15:0]) +
	( 13'sd 3528) * $signed(input_fmap_5[15:0]) +
	( 16'sd 30183) * $signed(input_fmap_6[15:0]) +
	( 14'sd 5626) * $signed(input_fmap_7[15:0]) +
	( 15'sd 15510) * $signed(input_fmap_8[15:0]) +
	( 16'sd 19169) * $signed(input_fmap_9[15:0]) +
	( 15'sd 9140) * $signed(input_fmap_10[15:0]) +
	( 16'sd 31197) * $signed(input_fmap_11[15:0]) +
	( 16'sd 18454) * $signed(input_fmap_12[15:0]) +
	( 16'sd 22997) * $signed(input_fmap_13[15:0]) +
	( 15'sd 13929) * $signed(input_fmap_14[15:0]) +
	( 14'sd 7079) * $signed(input_fmap_15[15:0]) +
	( 15'sd 9610) * $signed(input_fmap_16[15:0]) +
	( 16'sd 17750) * $signed(input_fmap_17[15:0]) +
	( 16'sd 28726) * $signed(input_fmap_18[15:0]) +
	( 16'sd 20540) * $signed(input_fmap_19[15:0]) +
	( 16'sd 27759) * $signed(input_fmap_20[15:0]) +
	( 16'sd 31831) * $signed(input_fmap_21[15:0]) +
	( 15'sd 12867) * $signed(input_fmap_22[15:0]) +
	( 16'sd 16605) * $signed(input_fmap_23[15:0]) +
	( 15'sd 12179) * $signed(input_fmap_24[15:0]) +
	( 16'sd 30103) * $signed(input_fmap_25[15:0]) +
	( 16'sd 17387) * $signed(input_fmap_26[15:0]) +
	( 16'sd 28871) * $signed(input_fmap_27[15:0]) +
	( 16'sd 30094) * $signed(input_fmap_28[15:0]) +
	( 16'sd 28235) * $signed(input_fmap_29[15:0]) +
	( 15'sd 9293) * $signed(input_fmap_30[15:0]) +
	( 15'sd 9305) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_48;
assign conv_mac_48 = 
	( 13'sd 3180) * $signed(input_fmap_0[15:0]) +
	( 16'sd 21436) * $signed(input_fmap_1[15:0]) +
	( 16'sd 22201) * $signed(input_fmap_2[15:0]) +
	( 15'sd 11374) * $signed(input_fmap_3[15:0]) +
	( 16'sd 24714) * $signed(input_fmap_4[15:0]) +
	( 15'sd 12329) * $signed(input_fmap_5[15:0]) +
	( 15'sd 9555) * $signed(input_fmap_6[15:0]) +
	( 16'sd 30792) * $signed(input_fmap_7[15:0]) +
	( 15'sd 11354) * $signed(input_fmap_8[15:0]) +
	( 15'sd 9329) * $signed(input_fmap_9[15:0]) +
	( 16'sd 23066) * $signed(input_fmap_10[15:0]) +
	( 16'sd 17221) * $signed(input_fmap_11[15:0]) +
	( 14'sd 6142) * $signed(input_fmap_12[15:0]) +
	( 16'sd 19254) * $signed(input_fmap_13[15:0]) +
	( 13'sd 2055) * $signed(input_fmap_14[15:0]) +
	( 15'sd 12006) * $signed(input_fmap_15[15:0]) +
	( 16'sd 19908) * $signed(input_fmap_16[15:0]) +
	( 15'sd 11984) * $signed(input_fmap_17[15:0]) +
	( 16'sd 22293) * $signed(input_fmap_18[15:0]) +
	( 16'sd 22159) * $signed(input_fmap_19[15:0]) +
	( 16'sd 22942) * $signed(input_fmap_20[15:0]) +
	( 16'sd 16628) * $signed(input_fmap_21[15:0]) +
	( 15'sd 9388) * $signed(input_fmap_22[15:0]) +
	( 16'sd 27659) * $signed(input_fmap_23[15:0]) +
	( 14'sd 5516) * $signed(input_fmap_24[15:0]) +
	( 16'sd 26929) * $signed(input_fmap_25[15:0]) +
	( 16'sd 19206) * $signed(input_fmap_26[15:0]) +
	( 16'sd 18998) * $signed(input_fmap_27[15:0]) +
	( 16'sd 32382) * $signed(input_fmap_28[15:0]) +
	( 16'sd 27191) * $signed(input_fmap_29[15:0]) +
	( 14'sd 5996) * $signed(input_fmap_30[15:0]) +
	( 16'sd 18220) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_49;
assign conv_mac_49 = 
	( 16'sd 30355) * $signed(input_fmap_0[15:0]) +
	( 16'sd 25881) * $signed(input_fmap_1[15:0]) +
	( 16'sd 23348) * $signed(input_fmap_2[15:0]) +
	( 16'sd 31953) * $signed(input_fmap_3[15:0]) +
	( 16'sd 24743) * $signed(input_fmap_4[15:0]) +
	( 16'sd 28264) * $signed(input_fmap_5[15:0]) +
	( 15'sd 10433) * $signed(input_fmap_6[15:0]) +
	( 16'sd 28200) * $signed(input_fmap_7[15:0]) +
	( 15'sd 10766) * $signed(input_fmap_8[15:0]) +
	( 13'sd 3420) * $signed(input_fmap_9[15:0]) +
	( 14'sd 7372) * $signed(input_fmap_10[15:0]) +
	( 15'sd 9879) * $signed(input_fmap_11[15:0]) +
	( 16'sd 21138) * $signed(input_fmap_12[15:0]) +
	( 15'sd 12186) * $signed(input_fmap_13[15:0]) +
	( 14'sd 6867) * $signed(input_fmap_14[15:0]) +
	( 16'sd 25465) * $signed(input_fmap_15[15:0]) +
	( 15'sd 12511) * $signed(input_fmap_16[15:0]) +
	( 11'sd 592) * $signed(input_fmap_17[15:0]) +
	( 14'sd 7857) * $signed(input_fmap_18[15:0]) +
	( 12'sd 1338) * $signed(input_fmap_19[15:0]) +
	( 5'sd 15) * $signed(input_fmap_20[15:0]) +
	( 16'sd 21874) * $signed(input_fmap_21[15:0]) +
	( 16'sd 25400) * $signed(input_fmap_22[15:0]) +
	( 16'sd 26023) * $signed(input_fmap_23[15:0]) +
	( 15'sd 11648) * $signed(input_fmap_24[15:0]) +
	( 14'sd 4367) * $signed(input_fmap_25[15:0]) +
	( 15'sd 14106) * $signed(input_fmap_26[15:0]) +
	( 14'sd 6775) * $signed(input_fmap_27[15:0]) +
	( 16'sd 24631) * $signed(input_fmap_28[15:0]) +
	( 15'sd 15325) * $signed(input_fmap_29[15:0]) +
	( 15'sd 14234) * $signed(input_fmap_30[15:0]) +
	( 14'sd 7106) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_50;
assign conv_mac_50 = 
	( 16'sd 21382) * $signed(input_fmap_0[15:0]) +
	( 13'sd 3840) * $signed(input_fmap_1[15:0]) +
	( 16'sd 25475) * $signed(input_fmap_2[15:0]) +
	( 16'sd 17714) * $signed(input_fmap_3[15:0]) +
	( 14'sd 6982) * $signed(input_fmap_4[15:0]) +
	( 16'sd 26469) * $signed(input_fmap_5[15:0]) +
	( 15'sd 12086) * $signed(input_fmap_6[15:0]) +
	( 16'sd 26953) * $signed(input_fmap_7[15:0]) +
	( 15'sd 14251) * $signed(input_fmap_8[15:0]) +
	( 16'sd 26910) * $signed(input_fmap_9[15:0]) +
	( 16'sd 22767) * $signed(input_fmap_10[15:0]) +
	( 16'sd 28630) * $signed(input_fmap_11[15:0]) +
	( 16'sd 21198) * $signed(input_fmap_12[15:0]) +
	( 15'sd 15227) * $signed(input_fmap_13[15:0]) +
	( 15'sd 11174) * $signed(input_fmap_14[15:0]) +
	( 16'sd 21596) * $signed(input_fmap_15[15:0]) +
	( 16'sd 20421) * $signed(input_fmap_16[15:0]) +
	( 16'sd 31476) * $signed(input_fmap_17[15:0]) +
	( 16'sd 26430) * $signed(input_fmap_18[15:0]) +
	( 15'sd 11306) * $signed(input_fmap_19[15:0]) +
	( 14'sd 5254) * $signed(input_fmap_20[15:0]) +
	( 15'sd 12881) * $signed(input_fmap_21[15:0]) +
	( 13'sd 2238) * $signed(input_fmap_22[15:0]) +
	( 16'sd 18474) * $signed(input_fmap_23[15:0]) +
	( 16'sd 28411) * $signed(input_fmap_24[15:0]) +
	( 16'sd 16545) * $signed(input_fmap_25[15:0]) +
	( 15'sd 14493) * $signed(input_fmap_26[15:0]) +
	( 15'sd 12463) * $signed(input_fmap_27[15:0]) +
	( 15'sd 15920) * $signed(input_fmap_28[15:0]) +
	( 16'sd 29413) * $signed(input_fmap_29[15:0]) +
	( 15'sd 16097) * $signed(input_fmap_30[15:0]) +
	( 16'sd 32101) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_51;
assign conv_mac_51 = 
	( 15'sd 8348) * $signed(input_fmap_0[15:0]) +
	( 15'sd 10939) * $signed(input_fmap_1[15:0]) +
	( 16'sd 20151) * $signed(input_fmap_2[15:0]) +
	( 16'sd 19290) * $signed(input_fmap_3[15:0]) +
	( 14'sd 6690) * $signed(input_fmap_4[15:0]) +
	( 16'sd 23617) * $signed(input_fmap_5[15:0]) +
	( 16'sd 23256) * $signed(input_fmap_6[15:0]) +
	( 15'sd 13177) * $signed(input_fmap_7[15:0]) +
	( 16'sd 26748) * $signed(input_fmap_8[15:0]) +
	( 16'sd 26679) * $signed(input_fmap_9[15:0]) +
	( 15'sd 9024) * $signed(input_fmap_10[15:0]) +
	( 15'sd 12846) * $signed(input_fmap_11[15:0]) +
	( 16'sd 22594) * $signed(input_fmap_12[15:0]) +
	( 13'sd 3703) * $signed(input_fmap_13[15:0]) +
	( 16'sd 22357) * $signed(input_fmap_14[15:0]) +
	( 15'sd 11084) * $signed(input_fmap_15[15:0]) +
	( 16'sd 19944) * $signed(input_fmap_16[15:0]) +
	( 16'sd 19350) * $signed(input_fmap_17[15:0]) +
	( 16'sd 23570) * $signed(input_fmap_18[15:0]) +
	( 14'sd 6748) * $signed(input_fmap_19[15:0]) +
	( 16'sd 30662) * $signed(input_fmap_20[15:0]) +
	( 16'sd 25498) * $signed(input_fmap_21[15:0]) +
	( 16'sd 18026) * $signed(input_fmap_22[15:0]) +
	( 15'sd 11606) * $signed(input_fmap_23[15:0]) +
	( 16'sd 17211) * $signed(input_fmap_24[15:0]) +
	( 14'sd 7614) * $signed(input_fmap_25[15:0]) +
	( 16'sd 29447) * $signed(input_fmap_26[15:0]) +
	( 16'sd 16986) * $signed(input_fmap_27[15:0]) +
	( 15'sd 9134) * $signed(input_fmap_28[15:0]) +
	( 16'sd 18597) * $signed(input_fmap_29[15:0]) +
	( 16'sd 28924) * $signed(input_fmap_30[15:0]) +
	( 16'sd 21960) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_52;
assign conv_mac_52 = 
	( 16'sd 28328) * $signed(input_fmap_0[15:0]) +
	( 15'sd 12741) * $signed(input_fmap_1[15:0]) +
	( 16'sd 21399) * $signed(input_fmap_2[15:0]) +
	( 14'sd 5187) * $signed(input_fmap_3[15:0]) +
	( 16'sd 22136) * $signed(input_fmap_4[15:0]) +
	( 16'sd 22228) * $signed(input_fmap_5[15:0]) +
	( 16'sd 24963) * $signed(input_fmap_6[15:0]) +
	( 16'sd 28378) * $signed(input_fmap_7[15:0]) +
	( 16'sd 16561) * $signed(input_fmap_8[15:0]) +
	( 12'sd 1753) * $signed(input_fmap_9[15:0]) +
	( 15'sd 14662) * $signed(input_fmap_10[15:0]) +
	( 16'sd 30222) * $signed(input_fmap_11[15:0]) +
	( 16'sd 24452) * $signed(input_fmap_12[15:0]) +
	( 14'sd 5384) * $signed(input_fmap_13[15:0]) +
	( 16'sd 19416) * $signed(input_fmap_14[15:0]) +
	( 15'sd 13440) * $signed(input_fmap_15[15:0]) +
	( 16'sd 26664) * $signed(input_fmap_16[15:0]) +
	( 16'sd 25804) * $signed(input_fmap_17[15:0]) +
	( 15'sd 14081) * $signed(input_fmap_18[15:0]) +
	( 16'sd 26827) * $signed(input_fmap_19[15:0]) +
	( 14'sd 6701) * $signed(input_fmap_20[15:0]) +
	( 15'sd 16187) * $signed(input_fmap_21[15:0]) +
	( 16'sd 22887) * $signed(input_fmap_22[15:0]) +
	( 16'sd 19050) * $signed(input_fmap_23[15:0]) +
	( 16'sd 31997) * $signed(input_fmap_24[15:0]) +
	( 13'sd 3564) * $signed(input_fmap_25[15:0]) +
	( 15'sd 9846) * $signed(input_fmap_26[15:0]) +
	( 16'sd 22552) * $signed(input_fmap_27[15:0]) +
	( 15'sd 11262) * $signed(input_fmap_28[15:0]) +
	( 16'sd 16816) * $signed(input_fmap_29[15:0]) +
	( 15'sd 11747) * $signed(input_fmap_30[15:0]) +
	( 16'sd 23016) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_53;
assign conv_mac_53 = 
	( 16'sd 18435) * $signed(input_fmap_0[15:0]) +
	( 14'sd 5399) * $signed(input_fmap_1[15:0]) +
	( 16'sd 32612) * $signed(input_fmap_2[15:0]) +
	( 14'sd 6922) * $signed(input_fmap_3[15:0]) +
	( 16'sd 21217) * $signed(input_fmap_4[15:0]) +
	( 15'sd 10655) * $signed(input_fmap_5[15:0]) +
	( 16'sd 28245) * $signed(input_fmap_6[15:0]) +
	( 15'sd 8437) * $signed(input_fmap_7[15:0]) +
	( 13'sd 3333) * $signed(input_fmap_8[15:0]) +
	( 14'sd 4197) * $signed(input_fmap_9[15:0]) +
	( 16'sd 17124) * $signed(input_fmap_10[15:0]) +
	( 11'sd 894) * $signed(input_fmap_11[15:0]) +
	( 14'sd 7763) * $signed(input_fmap_12[15:0]) +
	( 16'sd 26305) * $signed(input_fmap_13[15:0]) +
	( 11'sd 910) * $signed(input_fmap_14[15:0]) +
	( 16'sd 22588) * $signed(input_fmap_15[15:0]) +
	( 16'sd 30301) * $signed(input_fmap_16[15:0]) +
	( 16'sd 18291) * $signed(input_fmap_17[15:0]) +
	( 16'sd 30003) * $signed(input_fmap_18[15:0]) +
	( 16'sd 19563) * $signed(input_fmap_19[15:0]) +
	( 16'sd 17832) * $signed(input_fmap_20[15:0]) +
	( 16'sd 21177) * $signed(input_fmap_21[15:0]) +
	( 16'sd 28996) * $signed(input_fmap_22[15:0]) +
	( 9'sd 176) * $signed(input_fmap_23[15:0]) +
	( 16'sd 23598) * $signed(input_fmap_24[15:0]) +
	( 15'sd 11484) * $signed(input_fmap_25[15:0]) +
	( 15'sd 8900) * $signed(input_fmap_26[15:0]) +
	( 13'sd 4007) * $signed(input_fmap_27[15:0]) +
	( 13'sd 2915) * $signed(input_fmap_28[15:0]) +
	( 16'sd 26381) * $signed(input_fmap_29[15:0]) +
	( 16'sd 32211) * $signed(input_fmap_30[15:0]) +
	( 16'sd 26999) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_54;
assign conv_mac_54 = 
	( 14'sd 6416) * $signed(input_fmap_0[15:0]) +
	( 14'sd 6322) * $signed(input_fmap_1[15:0]) +
	( 16'sd 29623) * $signed(input_fmap_2[15:0]) +
	( 16'sd 25471) * $signed(input_fmap_3[15:0]) +
	( 15'sd 15074) * $signed(input_fmap_4[15:0]) +
	( 16'sd 26186) * $signed(input_fmap_5[15:0]) +
	( 16'sd 27889) * $signed(input_fmap_6[15:0]) +
	( 16'sd 21084) * $signed(input_fmap_7[15:0]) +
	( 15'sd 11320) * $signed(input_fmap_8[15:0]) +
	( 15'sd 15564) * $signed(input_fmap_9[15:0]) +
	( 15'sd 12529) * $signed(input_fmap_10[15:0]) +
	( 12'sd 1858) * $signed(input_fmap_11[15:0]) +
	( 15'sd 8982) * $signed(input_fmap_12[15:0]) +
	( 15'sd 12215) * $signed(input_fmap_13[15:0]) +
	( 15'sd 11230) * $signed(input_fmap_14[15:0]) +
	( 16'sd 27373) * $signed(input_fmap_15[15:0]) +
	( 14'sd 4609) * $signed(input_fmap_16[15:0]) +
	( 16'sd 16441) * $signed(input_fmap_17[15:0]) +
	( 15'sd 13560) * $signed(input_fmap_18[15:0]) +
	( 15'sd 16355) * $signed(input_fmap_19[15:0]) +
	( 16'sd 29894) * $signed(input_fmap_20[15:0]) +
	( 15'sd 10178) * $signed(input_fmap_21[15:0]) +
	( 15'sd 13758) * $signed(input_fmap_22[15:0]) +
	( 12'sd 1435) * $signed(input_fmap_23[15:0]) +
	( 16'sd 24504) * $signed(input_fmap_24[15:0]) +
	( 16'sd 28169) * $signed(input_fmap_25[15:0]) +
	( 14'sd 6379) * $signed(input_fmap_26[15:0]) +
	( 12'sd 1422) * $signed(input_fmap_27[15:0]) +
	( 15'sd 10848) * $signed(input_fmap_28[15:0]) +
	( 16'sd 31656) * $signed(input_fmap_29[15:0]) +
	( 15'sd 12912) * $signed(input_fmap_30[15:0]) +
	( 16'sd 21438) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_55;
assign conv_mac_55 = 
	( 15'sd 8634) * $signed(input_fmap_0[15:0]) +
	( 13'sd 2581) * $signed(input_fmap_1[15:0]) +
	( 16'sd 32726) * $signed(input_fmap_2[15:0]) +
	( 16'sd 20083) * $signed(input_fmap_3[15:0]) +
	( 16'sd 30430) * $signed(input_fmap_4[15:0]) +
	( 16'sd 23925) * $signed(input_fmap_5[15:0]) +
	( 15'sd 9075) * $signed(input_fmap_6[15:0]) +
	( 16'sd 21883) * $signed(input_fmap_7[15:0]) +
	( 13'sd 2842) * $signed(input_fmap_8[15:0]) +
	( 14'sd 6227) * $signed(input_fmap_9[15:0]) +
	( 13'sd 2879) * $signed(input_fmap_10[15:0]) +
	( 16'sd 19081) * $signed(input_fmap_11[15:0]) +
	( 16'sd 20109) * $signed(input_fmap_12[15:0]) +
	( 16'sd 20241) * $signed(input_fmap_13[15:0]) +
	( 15'sd 16240) * $signed(input_fmap_14[15:0]) +
	( 14'sd 7300) * $signed(input_fmap_15[15:0]) +
	( 15'sd 8234) * $signed(input_fmap_16[15:0]) +
	( 14'sd 6557) * $signed(input_fmap_17[15:0]) +
	( 16'sd 27474) * $signed(input_fmap_18[15:0]) +
	( 16'sd 18019) * $signed(input_fmap_19[15:0]) +
	( 15'sd 14677) * $signed(input_fmap_20[15:0]) +
	( 16'sd 28184) * $signed(input_fmap_21[15:0]) +
	( 16'sd 30620) * $signed(input_fmap_22[15:0]) +
	( 16'sd 24047) * $signed(input_fmap_23[15:0]) +
	( 16'sd 23609) * $signed(input_fmap_24[15:0]) +
	( 16'sd 26598) * $signed(input_fmap_25[15:0]) +
	( 14'sd 4749) * $signed(input_fmap_26[15:0]) +
	( 15'sd 15910) * $signed(input_fmap_27[15:0]) +
	( 16'sd 26635) * $signed(input_fmap_28[15:0]) +
	( 12'sd 1335) * $signed(input_fmap_29[15:0]) +
	( 14'sd 5141) * $signed(input_fmap_30[15:0]) +
	( 13'sd 3453) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_56;
assign conv_mac_56 = 
	( 14'sd 7967) * $signed(input_fmap_0[15:0]) +
	( 14'sd 7019) * $signed(input_fmap_1[15:0]) +
	( 16'sd 19555) * $signed(input_fmap_2[15:0]) +
	( 16'sd 22767) * $signed(input_fmap_3[15:0]) +
	( 16'sd 25079) * $signed(input_fmap_4[15:0]) +
	( 15'sd 10543) * $signed(input_fmap_5[15:0]) +
	( 16'sd 28922) * $signed(input_fmap_6[15:0]) +
	( 16'sd 32375) * $signed(input_fmap_7[15:0]) +
	( 16'sd 29802) * $signed(input_fmap_8[15:0]) +
	( 15'sd 9839) * $signed(input_fmap_9[15:0]) +
	( 16'sd 32045) * $signed(input_fmap_10[15:0]) +
	( 12'sd 1484) * $signed(input_fmap_11[15:0]) +
	( 16'sd 28227) * $signed(input_fmap_12[15:0]) +
	( 15'sd 10790) * $signed(input_fmap_13[15:0]) +
	( 16'sd 28717) * $signed(input_fmap_14[15:0]) +
	( 13'sd 3616) * $signed(input_fmap_15[15:0]) +
	( 13'sd 3063) * $signed(input_fmap_16[15:0]) +
	( 14'sd 4429) * $signed(input_fmap_17[15:0]) +
	( 12'sd 1457) * $signed(input_fmap_18[15:0]) +
	( 15'sd 15656) * $signed(input_fmap_19[15:0]) +
	( 16'sd 28881) * $signed(input_fmap_20[15:0]) +
	( 15'sd 14047) * $signed(input_fmap_21[15:0]) +
	( 16'sd 21035) * $signed(input_fmap_22[15:0]) +
	( 15'sd 8598) * $signed(input_fmap_23[15:0]) +
	( 16'sd 29022) * $signed(input_fmap_24[15:0]) +
	( 12'sd 1042) * $signed(input_fmap_25[15:0]) +
	( 16'sd 30999) * $signed(input_fmap_26[15:0]) +
	( 10'sd 415) * $signed(input_fmap_27[15:0]) +
	( 16'sd 20104) * $signed(input_fmap_28[15:0]) +
	( 14'sd 7475) * $signed(input_fmap_29[15:0]) +
	( 11'sd 790) * $signed(input_fmap_30[15:0]) +
	( 16'sd 28005) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_57;
assign conv_mac_57 = 
	( 16'sd 27530) * $signed(input_fmap_0[15:0]) +
	( 16'sd 21163) * $signed(input_fmap_1[15:0]) +
	( 12'sd 1165) * $signed(input_fmap_2[15:0]) +
	( 16'sd 26912) * $signed(input_fmap_3[15:0]) +
	( 16'sd 25927) * $signed(input_fmap_4[15:0]) +
	( 14'sd 4768) * $signed(input_fmap_5[15:0]) +
	( 16'sd 18257) * $signed(input_fmap_6[15:0]) +
	( 15'sd 15521) * $signed(input_fmap_7[15:0]) +
	( 16'sd 25586) * $signed(input_fmap_8[15:0]) +
	( 16'sd 17169) * $signed(input_fmap_9[15:0]) +
	( 16'sd 16715) * $signed(input_fmap_10[15:0]) +
	( 15'sd 11857) * $signed(input_fmap_11[15:0]) +
	( 16'sd 32656) * $signed(input_fmap_12[15:0]) +
	( 16'sd 19805) * $signed(input_fmap_13[15:0]) +
	( 15'sd 9258) * $signed(input_fmap_14[15:0]) +
	( 13'sd 2580) * $signed(input_fmap_15[15:0]) +
	( 16'sd 27363) * $signed(input_fmap_16[15:0]) +
	( 16'sd 17896) * $signed(input_fmap_17[15:0]) +
	( 16'sd 29133) * $signed(input_fmap_18[15:0]) +
	( 15'sd 13594) * $signed(input_fmap_19[15:0]) +
	( 15'sd 11473) * $signed(input_fmap_20[15:0]) +
	( 16'sd 19429) * $signed(input_fmap_21[15:0]) +
	( 16'sd 20542) * $signed(input_fmap_22[15:0]) +
	( 15'sd 11468) * $signed(input_fmap_23[15:0]) +
	( 15'sd 13091) * $signed(input_fmap_24[15:0]) +
	( 15'sd 15920) * $signed(input_fmap_25[15:0]) +
	( 16'sd 17683) * $signed(input_fmap_26[15:0]) +
	( 13'sd 3800) * $signed(input_fmap_27[15:0]) +
	( 16'sd 21346) * $signed(input_fmap_28[15:0]) +
	( 15'sd 11876) * $signed(input_fmap_29[15:0]) +
	( 16'sd 29264) * $signed(input_fmap_30[15:0]) +
	( 16'sd 16871) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_58;
assign conv_mac_58 = 
	( 16'sd 27096) * $signed(input_fmap_0[15:0]) +
	( 16'sd 26960) * $signed(input_fmap_1[15:0]) +
	( 15'sd 11632) * $signed(input_fmap_2[15:0]) +
	( 13'sd 4046) * $signed(input_fmap_3[15:0]) +
	( 16'sd 31141) * $signed(input_fmap_4[15:0]) +
	( 14'sd 4223) * $signed(input_fmap_5[15:0]) +
	( 16'sd 23185) * $signed(input_fmap_6[15:0]) +
	( 16'sd 19903) * $signed(input_fmap_7[15:0]) +
	( 14'sd 5948) * $signed(input_fmap_8[15:0]) +
	( 13'sd 3336) * $signed(input_fmap_9[15:0]) +
	( 16'sd 25079) * $signed(input_fmap_10[15:0]) +
	( 16'sd 23162) * $signed(input_fmap_11[15:0]) +
	( 16'sd 16971) * $signed(input_fmap_12[15:0]) +
	( 16'sd 31387) * $signed(input_fmap_13[15:0]) +
	( 13'sd 2271) * $signed(input_fmap_14[15:0]) +
	( 15'sd 15713) * $signed(input_fmap_15[15:0]) +
	( 16'sd 23307) * $signed(input_fmap_16[15:0]) +
	( 15'sd 12961) * $signed(input_fmap_17[15:0]) +
	( 16'sd 18552) * $signed(input_fmap_18[15:0]) +
	( 15'sd 13841) * $signed(input_fmap_19[15:0]) +
	( 15'sd 9030) * $signed(input_fmap_20[15:0]) +
	( 16'sd 16458) * $signed(input_fmap_21[15:0]) +
	( 16'sd 31910) * $signed(input_fmap_22[15:0]) +
	( 16'sd 26396) * $signed(input_fmap_23[15:0]) +
	( 16'sd 24083) * $signed(input_fmap_24[15:0]) +
	( 15'sd 15801) * $signed(input_fmap_25[15:0]) +
	( 16'sd 29047) * $signed(input_fmap_26[15:0]) +
	( 16'sd 24072) * $signed(input_fmap_27[15:0]) +
	( 15'sd 10113) * $signed(input_fmap_28[15:0]) +
	( 13'sd 2689) * $signed(input_fmap_29[15:0]) +
	( 16'sd 24724) * $signed(input_fmap_30[15:0]) +
	( 15'sd 8956) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_59;
assign conv_mac_59 = 
	( 16'sd 16928) * $signed(input_fmap_0[15:0]) +
	( 15'sd 8223) * $signed(input_fmap_1[15:0]) +
	( 14'sd 6374) * $signed(input_fmap_2[15:0]) +
	( 16'sd 17947) * $signed(input_fmap_3[15:0]) +
	( 15'sd 14221) * $signed(input_fmap_4[15:0]) +
	( 16'sd 30101) * $signed(input_fmap_5[15:0]) +
	( 14'sd 5490) * $signed(input_fmap_6[15:0]) +
	( 16'sd 29558) * $signed(input_fmap_7[15:0]) +
	( 15'sd 15300) * $signed(input_fmap_8[15:0]) +
	( 16'sd 30390) * $signed(input_fmap_9[15:0]) +
	( 13'sd 3955) * $signed(input_fmap_10[15:0]) +
	( 16'sd 17118) * $signed(input_fmap_11[15:0]) +
	( 15'sd 12017) * $signed(input_fmap_12[15:0]) +
	( 16'sd 31681) * $signed(input_fmap_13[15:0]) +
	( 16'sd 26054) * $signed(input_fmap_14[15:0]) +
	( 14'sd 6244) * $signed(input_fmap_15[15:0]) +
	( 16'sd 23911) * $signed(input_fmap_16[15:0]) +
	( 16'sd 31341) * $signed(input_fmap_17[15:0]) +
	( 15'sd 15874) * $signed(input_fmap_18[15:0]) +
	( 15'sd 12484) * $signed(input_fmap_19[15:0]) +
	( 13'sd 3742) * $signed(input_fmap_20[15:0]) +
	( 16'sd 26514) * $signed(input_fmap_21[15:0]) +
	( 7'sd 49) * $signed(input_fmap_22[15:0]) +
	( 9'sd 153) * $signed(input_fmap_23[15:0]) +
	( 16'sd 22353) * $signed(input_fmap_24[15:0]) +
	( 16'sd 27702) * $signed(input_fmap_25[15:0]) +
	( 16'sd 29339) * $signed(input_fmap_26[15:0]) +
	( 16'sd 26899) * $signed(input_fmap_27[15:0]) +
	( 10'sd 430) * $signed(input_fmap_28[15:0]) +
	( 16'sd 29330) * $signed(input_fmap_29[15:0]) +
	( 15'sd 12387) * $signed(input_fmap_30[15:0]) +
	( 16'sd 29301) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_60;
assign conv_mac_60 = 
	( 16'sd 17421) * $signed(input_fmap_0[15:0]) +
	( 15'sd 12487) * $signed(input_fmap_1[15:0]) +
	( 15'sd 14108) * $signed(input_fmap_2[15:0]) +
	( 15'sd 11166) * $signed(input_fmap_3[15:0]) +
	( 16'sd 25892) * $signed(input_fmap_4[15:0]) +
	( 15'sd 11302) * $signed(input_fmap_5[15:0]) +
	( 16'sd 32462) * $signed(input_fmap_6[15:0]) +
	( 16'sd 21645) * $signed(input_fmap_7[15:0]) +
	( 15'sd 11573) * $signed(input_fmap_8[15:0]) +
	( 12'sd 1531) * $signed(input_fmap_9[15:0]) +
	( 14'sd 6319) * $signed(input_fmap_10[15:0]) +
	( 16'sd 21013) * $signed(input_fmap_11[15:0]) +
	( 15'sd 14322) * $signed(input_fmap_12[15:0]) +
	( 13'sd 3762) * $signed(input_fmap_13[15:0]) +
	( 15'sd 15368) * $signed(input_fmap_14[15:0]) +
	( 14'sd 7859) * $signed(input_fmap_15[15:0]) +
	( 15'sd 15973) * $signed(input_fmap_16[15:0]) +
	( 14'sd 4449) * $signed(input_fmap_17[15:0]) +
	( 12'sd 1914) * $signed(input_fmap_18[15:0]) +
	( 12'sd 1858) * $signed(input_fmap_19[15:0]) +
	( 16'sd 16398) * $signed(input_fmap_20[15:0]) +
	( 16'sd 22279) * $signed(input_fmap_21[15:0]) +
	( 15'sd 16270) * $signed(input_fmap_22[15:0]) +
	( 11'sd 796) * $signed(input_fmap_23[15:0]) +
	( 7'sd 33) * $signed(input_fmap_24[15:0]) +
	( 16'sd 18681) * $signed(input_fmap_25[15:0]) +
	( 16'sd 26900) * $signed(input_fmap_26[15:0]) +
	( 13'sd 3867) * $signed(input_fmap_27[15:0]) +
	( 14'sd 5168) * $signed(input_fmap_28[15:0]) +
	( 16'sd 31800) * $signed(input_fmap_29[15:0]) +
	( 15'sd 8422) * $signed(input_fmap_30[15:0]) +
	( 16'sd 22234) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_61;
assign conv_mac_61 = 
	( 10'sd 261) * $signed(input_fmap_0[15:0]) +
	( 16'sd 26679) * $signed(input_fmap_1[15:0]) +
	( 16'sd 29895) * $signed(input_fmap_2[15:0]) +
	( 16'sd 26192) * $signed(input_fmap_3[15:0]) +
	( 16'sd 19197) * $signed(input_fmap_4[15:0]) +
	( 14'sd 7088) * $signed(input_fmap_5[15:0]) +
	( 15'sd 11872) * $signed(input_fmap_6[15:0]) +
	( 15'sd 13818) * $signed(input_fmap_7[15:0]) +
	( 16'sd 18312) * $signed(input_fmap_8[15:0]) +
	( 16'sd 21597) * $signed(input_fmap_9[15:0]) +
	( 16'sd 31330) * $signed(input_fmap_10[15:0]) +
	( 16'sd 19762) * $signed(input_fmap_11[15:0]) +
	( 16'sd 16955) * $signed(input_fmap_12[15:0]) +
	( 15'sd 10561) * $signed(input_fmap_13[15:0]) +
	( 14'sd 7420) * $signed(input_fmap_14[15:0]) +
	( 15'sd 9773) * $signed(input_fmap_15[15:0]) +
	( 14'sd 5644) * $signed(input_fmap_16[15:0]) +
	( 16'sd 18822) * $signed(input_fmap_17[15:0]) +
	( 16'sd 21061) * $signed(input_fmap_18[15:0]) +
	( 15'sd 14819) * $signed(input_fmap_19[15:0]) +
	( 16'sd 29242) * $signed(input_fmap_20[15:0]) +
	( 16'sd 22365) * $signed(input_fmap_21[15:0]) +
	( 16'sd 25128) * $signed(input_fmap_22[15:0]) +
	( 15'sd 8789) * $signed(input_fmap_23[15:0]) +
	( 15'sd 13958) * $signed(input_fmap_24[15:0]) +
	( 16'sd 23632) * $signed(input_fmap_25[15:0]) +
	( 16'sd 29841) * $signed(input_fmap_26[15:0]) +
	( 16'sd 17495) * $signed(input_fmap_27[15:0]) +
	( 16'sd 26035) * $signed(input_fmap_28[15:0]) +
	( 15'sd 14698) * $signed(input_fmap_29[15:0]) +
	( 16'sd 31933) * $signed(input_fmap_30[15:0]) +
	( 15'sd 16246) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_62;
assign conv_mac_62 = 
	( 10'sd 287) * $signed(input_fmap_0[15:0]) +
	( 14'sd 7694) * $signed(input_fmap_1[15:0]) +
	( 16'sd 23547) * $signed(input_fmap_2[15:0]) +
	( 15'sd 8807) * $signed(input_fmap_3[15:0]) +
	( 16'sd 26530) * $signed(input_fmap_4[15:0]) +
	( 16'sd 22054) * $signed(input_fmap_5[15:0]) +
	( 15'sd 15242) * $signed(input_fmap_6[15:0]) +
	( 16'sd 22073) * $signed(input_fmap_7[15:0]) +
	( 16'sd 24374) * $signed(input_fmap_8[15:0]) +
	( 16'sd 30442) * $signed(input_fmap_9[15:0]) +
	( 16'sd 29418) * $signed(input_fmap_10[15:0]) +
	( 16'sd 32360) * $signed(input_fmap_11[15:0]) +
	( 15'sd 13365) * $signed(input_fmap_12[15:0]) +
	( 16'sd 21941) * $signed(input_fmap_13[15:0]) +
	( 15'sd 15089) * $signed(input_fmap_14[15:0]) +
	( 15'sd 8957) * $signed(input_fmap_15[15:0]) +
	( 15'sd 8315) * $signed(input_fmap_16[15:0]) +
	( 16'sd 24813) * $signed(input_fmap_17[15:0]) +
	( 13'sd 3290) * $signed(input_fmap_18[15:0]) +
	( 15'sd 16376) * $signed(input_fmap_19[15:0]) +
	( 15'sd 8991) * $signed(input_fmap_20[15:0]) +
	( 16'sd 23861) * $signed(input_fmap_21[15:0]) +
	( 14'sd 4406) * $signed(input_fmap_22[15:0]) +
	( 16'sd 22870) * $signed(input_fmap_23[15:0]) +
	( 16'sd 30556) * $signed(input_fmap_24[15:0]) +
	( 16'sd 20370) * $signed(input_fmap_25[15:0]) +
	( 14'sd 6743) * $signed(input_fmap_26[15:0]) +
	( 15'sd 9946) * $signed(input_fmap_27[15:0]) +
	( 15'sd 13097) * $signed(input_fmap_28[15:0]) +
	( 12'sd 1702) * $signed(input_fmap_29[15:0]) +
	( 16'sd 25395) * $signed(input_fmap_30[15:0]) +
	( 13'sd 2830) * $signed(input_fmap_31[15:0]);

logic signed [31:0] conv_mac_63;
assign conv_mac_63 = 
	( 16'sd 31829) * $signed(input_fmap_0[15:0]) +
	( 16'sd 30423) * $signed(input_fmap_1[15:0]) +
	( 16'sd 25297) * $signed(input_fmap_2[15:0]) +
	( 16'sd 20273) * $signed(input_fmap_3[15:0]) +
	( 14'sd 4980) * $signed(input_fmap_4[15:0]) +
	( 16'sd 19239) * $signed(input_fmap_5[15:0]) +
	( 16'sd 23573) * $signed(input_fmap_6[15:0]) +
	( 15'sd 12090) * $signed(input_fmap_7[15:0]) +
	( 15'sd 13444) * $signed(input_fmap_8[15:0]) +
	( 15'sd 13516) * $signed(input_fmap_9[15:0]) +
	( 16'sd 21222) * $signed(input_fmap_10[15:0]) +
	( 14'sd 6167) * $signed(input_fmap_11[15:0]) +
	( 16'sd 30796) * $signed(input_fmap_12[15:0]) +
	( 16'sd 16710) * $signed(input_fmap_13[15:0]) +
	( 16'sd 27985) * $signed(input_fmap_14[15:0]) +
	( 16'sd 18899) * $signed(input_fmap_15[15:0]) +
	( 15'sd 15819) * $signed(input_fmap_16[15:0]) +
	( 13'sd 3355) * $signed(input_fmap_17[15:0]) +
	( 14'sd 5943) * $signed(input_fmap_18[15:0]) +
	( 16'sd 32197) * $signed(input_fmap_19[15:0]) +
	( 15'sd 16090) * $signed(input_fmap_20[15:0]) +
	( 15'sd 10364) * $signed(input_fmap_21[15:0]) +
	( 16'sd 19828) * $signed(input_fmap_22[15:0]) +
	( 16'sd 30620) * $signed(input_fmap_23[15:0]) +
	( 16'sd 26095) * $signed(input_fmap_24[15:0]) +
	( 16'sd 20001) * $signed(input_fmap_25[15:0]) +
	( 13'sd 2804) * $signed(input_fmap_26[15:0]) +
	( 15'sd 14778) * $signed(input_fmap_27[15:0]) +
	( 13'sd 2966) * $signed(input_fmap_28[15:0]) +
	( 16'sd 29973) * $signed(input_fmap_29[15:0]) +
	( 16'sd 24853) * $signed(input_fmap_30[15:0]) +
	( 12'sd 1546) * $signed(input_fmap_31[15:0]);

logic [31:0] bias_add_0;
assign bias_add_0 = conv_mac_0 + 16'd20495;
logic [31:0] bias_add_1;
assign bias_add_1 = conv_mac_1 + 15'd11614;
logic [31:0] bias_add_2;
assign bias_add_2 = conv_mac_2 + 16'd32682;
logic [31:0] bias_add_3;
assign bias_add_3 = conv_mac_3 + 14'd5823;
logic [31:0] bias_add_4;
assign bias_add_4 = conv_mac_4 + 16'd26982;
logic [31:0] bias_add_5;
assign bias_add_5 = conv_mac_5 + 16'd17100;
logic [31:0] bias_add_6;
assign bias_add_6 = conv_mac_6 + 16'd24452;
logic [31:0] bias_add_7;
assign bias_add_7 = conv_mac_7 + 16'd28129;
logic [31:0] bias_add_8;
assign bias_add_8 = conv_mac_8 + 15'd11985;
logic [31:0] bias_add_9;
assign bias_add_9 = conv_mac_9 + 14'd6388;
logic [31:0] bias_add_10;
assign bias_add_10 = conv_mac_10 + 15'd16336;
logic [31:0] bias_add_11;
assign bias_add_11 = conv_mac_11 + 16'd27603;
logic [31:0] bias_add_12;
assign bias_add_12 = conv_mac_12 + 14'd7346;
logic [31:0] bias_add_13;
assign bias_add_13 = conv_mac_13 + 16'd17377;
logic [31:0] bias_add_14;
assign bias_add_14 = conv_mac_14 + 16'd27559;
logic [31:0] bias_add_15;
assign bias_add_15 = conv_mac_15 + 16'd29255;
logic [31:0] bias_add_16;
assign bias_add_16 = conv_mac_16 + 16'd16906;
logic [31:0] bias_add_17;
assign bias_add_17 = conv_mac_17 + 15'd12783;
logic [31:0] bias_add_18;
assign bias_add_18 = conv_mac_18 + 12'd1544;
logic [31:0] bias_add_19;
assign bias_add_19 = conv_mac_19 + 16'd29358;
logic [31:0] bias_add_20;
assign bias_add_20 = conv_mac_20 + 16'd16601;
logic [31:0] bias_add_21;
assign bias_add_21 = conv_mac_21 + 15'd15594;
logic [31:0] bias_add_22;
assign bias_add_22 = conv_mac_22 + 16'd19241;
logic [31:0] bias_add_23;
assign bias_add_23 = conv_mac_23 + 15'd10254;
logic [31:0] bias_add_24;
assign bias_add_24 = conv_mac_24 + 16'd31937;
logic [31:0] bias_add_25;
assign bias_add_25 = conv_mac_25 + 16'd31441;
logic [31:0] bias_add_26;
assign bias_add_26 = conv_mac_26 + 15'd14690;
logic [31:0] bias_add_27;
assign bias_add_27 = conv_mac_27 + 12'd1647;
logic [31:0] bias_add_28;
assign bias_add_28 = conv_mac_28 + 16'd29085;
logic [31:0] bias_add_29;
assign bias_add_29 = conv_mac_29 + 14'd5345;
logic [31:0] bias_add_30;
assign bias_add_30 = conv_mac_30 + 16'd24078;
logic [31:0] bias_add_31;
assign bias_add_31 = conv_mac_31 + 16'd20800;
logic [31:0] bias_add_32;
assign bias_add_32 = conv_mac_32 + 14'd6318;
logic [31:0] bias_add_33;
assign bias_add_33 = conv_mac_33 + 15'd14952;
logic [31:0] bias_add_34;
assign bias_add_34 = conv_mac_34 + 16'd30788;
logic [31:0] bias_add_35;
assign bias_add_35 = conv_mac_35 + 15'd16298;
logic [31:0] bias_add_36;
assign bias_add_36 = conv_mac_36 + 16'd21914;
logic [31:0] bias_add_37;
assign bias_add_37 = conv_mac_37 + 14'd4270;
logic [31:0] bias_add_38;
assign bias_add_38 = conv_mac_38 + 16'd24076;
logic [31:0] bias_add_39;
assign bias_add_39 = conv_mac_39 + 16'd24606;
logic [31:0] bias_add_40;
assign bias_add_40 = conv_mac_40 + 16'd22070;
logic [31:0] bias_add_41;
assign bias_add_41 = conv_mac_41 + 15'd16200;
logic [31:0] bias_add_42;
assign bias_add_42 = conv_mac_42 + 16'd31741;
logic [31:0] bias_add_43;
assign bias_add_43 = conv_mac_43 + 11'd590;
logic [31:0] bias_add_44;
assign bias_add_44 = conv_mac_44 + 16'd26683;
logic [31:0] bias_add_45;
assign bias_add_45 = conv_mac_45 + 12'd1925;
logic [31:0] bias_add_46;
assign bias_add_46 = conv_mac_46 + 16'd23498;
logic [31:0] bias_add_47;
assign bias_add_47 = conv_mac_47 + 15'd8312;
logic [31:0] bias_add_48;
assign bias_add_48 = conv_mac_48 + 12'd1961;
logic [31:0] bias_add_49;
assign bias_add_49 = conv_mac_49 + 16'd22840;
logic [31:0] bias_add_50;
assign bias_add_50 = conv_mac_50 + 9'd198;
logic [31:0] bias_add_51;
assign bias_add_51 = conv_mac_51 + 15'd13968;
logic [31:0] bias_add_52;
assign bias_add_52 = conv_mac_52 + 14'd5349;
logic [31:0] bias_add_53;
assign bias_add_53 = conv_mac_53 + 14'd5002;
logic [31:0] bias_add_54;
assign bias_add_54 = conv_mac_54 + 14'd7297;
logic [31:0] bias_add_55;
assign bias_add_55 = conv_mac_55 + 12'd1846;
logic [31:0] bias_add_56;
assign bias_add_56 = conv_mac_56 + 16'd30077;
logic [31:0] bias_add_57;
assign bias_add_57 = conv_mac_57 + 13'd3884;
logic [31:0] bias_add_58;
assign bias_add_58 = conv_mac_58 + 14'd7890;
logic [31:0] bias_add_59;
assign bias_add_59 = conv_mac_59 + 16'd25526;
logic [31:0] bias_add_60;
assign bias_add_60 = conv_mac_60 + 14'd6624;
logic [31:0] bias_add_61;
assign bias_add_61 = conv_mac_61 + 14'd6788;
logic [31:0] bias_add_62;
assign bias_add_62 = conv_mac_62 + 16'd26798;
logic [31:0] bias_add_63;
assign bias_add_63 = conv_mac_63 + 16'd25492;

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
logic [15:0] relu_32;
assign relu_32[15:0] = (bias_add_32[31]==0) ? ((bias_add_32<3'd6) ? {{bias_add_32[31],bias_add_32[29:15]}} :'d6) : '0;
logic [15:0] relu_33;
assign relu_33[15:0] = (bias_add_33[31]==0) ? ((bias_add_33<3'd6) ? {{bias_add_33[31],bias_add_33[29:15]}} :'d6) : '0;
logic [15:0] relu_34;
assign relu_34[15:0] = (bias_add_34[31]==0) ? ((bias_add_34<3'd6) ? {{bias_add_34[31],bias_add_34[29:15]}} :'d6) : '0;
logic [15:0] relu_35;
assign relu_35[15:0] = (bias_add_35[31]==0) ? ((bias_add_35<3'd6) ? {{bias_add_35[31],bias_add_35[29:15]}} :'d6) : '0;
logic [15:0] relu_36;
assign relu_36[15:0] = (bias_add_36[31]==0) ? ((bias_add_36<3'd6) ? {{bias_add_36[31],bias_add_36[29:15]}} :'d6) : '0;
logic [15:0] relu_37;
assign relu_37[15:0] = (bias_add_37[31]==0) ? ((bias_add_37<3'd6) ? {{bias_add_37[31],bias_add_37[29:15]}} :'d6) : '0;
logic [15:0] relu_38;
assign relu_38[15:0] = (bias_add_38[31]==0) ? ((bias_add_38<3'd6) ? {{bias_add_38[31],bias_add_38[29:15]}} :'d6) : '0;
logic [15:0] relu_39;
assign relu_39[15:0] = (bias_add_39[31]==0) ? ((bias_add_39<3'd6) ? {{bias_add_39[31],bias_add_39[29:15]}} :'d6) : '0;
logic [15:0] relu_40;
assign relu_40[15:0] = (bias_add_40[31]==0) ? ((bias_add_40<3'd6) ? {{bias_add_40[31],bias_add_40[29:15]}} :'d6) : '0;
logic [15:0] relu_41;
assign relu_41[15:0] = (bias_add_41[31]==0) ? ((bias_add_41<3'd6) ? {{bias_add_41[31],bias_add_41[29:15]}} :'d6) : '0;
logic [15:0] relu_42;
assign relu_42[15:0] = (bias_add_42[31]==0) ? ((bias_add_42<3'd6) ? {{bias_add_42[31],bias_add_42[29:15]}} :'d6) : '0;
logic [15:0] relu_43;
assign relu_43[15:0] = (bias_add_43[31]==0) ? ((bias_add_43<3'd6) ? {{bias_add_43[31],bias_add_43[29:15]}} :'d6) : '0;
logic [15:0] relu_44;
assign relu_44[15:0] = (bias_add_44[31]==0) ? ((bias_add_44<3'd6) ? {{bias_add_44[31],bias_add_44[29:15]}} :'d6) : '0;
logic [15:0] relu_45;
assign relu_45[15:0] = (bias_add_45[31]==0) ? ((bias_add_45<3'd6) ? {{bias_add_45[31],bias_add_45[29:15]}} :'d6) : '0;
logic [15:0] relu_46;
assign relu_46[15:0] = (bias_add_46[31]==0) ? ((bias_add_46<3'd6) ? {{bias_add_46[31],bias_add_46[29:15]}} :'d6) : '0;
logic [15:0] relu_47;
assign relu_47[15:0] = (bias_add_47[31]==0) ? ((bias_add_47<3'd6) ? {{bias_add_47[31],bias_add_47[29:15]}} :'d6) : '0;
logic [15:0] relu_48;
assign relu_48[15:0] = (bias_add_48[31]==0) ? ((bias_add_48<3'd6) ? {{bias_add_48[31],bias_add_48[29:15]}} :'d6) : '0;
logic [15:0] relu_49;
assign relu_49[15:0] = (bias_add_49[31]==0) ? ((bias_add_49<3'd6) ? {{bias_add_49[31],bias_add_49[29:15]}} :'d6) : '0;
logic [15:0] relu_50;
assign relu_50[15:0] = (bias_add_50[31]==0) ? ((bias_add_50<3'd6) ? {{bias_add_50[31],bias_add_50[29:15]}} :'d6) : '0;
logic [15:0] relu_51;
assign relu_51[15:0] = (bias_add_51[31]==0) ? ((bias_add_51<3'd6) ? {{bias_add_51[31],bias_add_51[29:15]}} :'d6) : '0;
logic [15:0] relu_52;
assign relu_52[15:0] = (bias_add_52[31]==0) ? ((bias_add_52<3'd6) ? {{bias_add_52[31],bias_add_52[29:15]}} :'d6) : '0;
logic [15:0] relu_53;
assign relu_53[15:0] = (bias_add_53[31]==0) ? ((bias_add_53<3'd6) ? {{bias_add_53[31],bias_add_53[29:15]}} :'d6) : '0;
logic [15:0] relu_54;
assign relu_54[15:0] = (bias_add_54[31]==0) ? ((bias_add_54<3'd6) ? {{bias_add_54[31],bias_add_54[29:15]}} :'d6) : '0;
logic [15:0] relu_55;
assign relu_55[15:0] = (bias_add_55[31]==0) ? ((bias_add_55<3'd6) ? {{bias_add_55[31],bias_add_55[29:15]}} :'d6) : '0;
logic [15:0] relu_56;
assign relu_56[15:0] = (bias_add_56[31]==0) ? ((bias_add_56<3'd6) ? {{bias_add_56[31],bias_add_56[29:15]}} :'d6) : '0;
logic [15:0] relu_57;
assign relu_57[15:0] = (bias_add_57[31]==0) ? ((bias_add_57<3'd6) ? {{bias_add_57[31],bias_add_57[29:15]}} :'d6) : '0;
logic [15:0] relu_58;
assign relu_58[15:0] = (bias_add_58[31]==0) ? ((bias_add_58<3'd6) ? {{bias_add_58[31],bias_add_58[29:15]}} :'d6) : '0;
logic [15:0] relu_59;
assign relu_59[15:0] = (bias_add_59[31]==0) ? ((bias_add_59<3'd6) ? {{bias_add_59[31],bias_add_59[29:15]}} :'d6) : '0;
logic [15:0] relu_60;
assign relu_60[15:0] = (bias_add_60[31]==0) ? ((bias_add_60<3'd6) ? {{bias_add_60[31],bias_add_60[29:15]}} :'d6) : '0;
logic [15:0] relu_61;
assign relu_61[15:0] = (bias_add_61[31]==0) ? ((bias_add_61<3'd6) ? {{bias_add_61[31],bias_add_61[29:15]}} :'d6) : '0;
logic [15:0] relu_62;
assign relu_62[15:0] = (bias_add_62[31]==0) ? ((bias_add_62<3'd6) ? {{bias_add_62[31],bias_add_62[29:15]}} :'d6) : '0;
logic [15:0] relu_63;
assign relu_63[15:0] = (bias_add_63[31]==0) ? ((bias_add_63<3'd6) ? {{bias_add_63[31],bias_add_63[29:15]}} :'d6) : '0;

assign output_act = {
	relu_63,
	relu_62,
	relu_61,
	relu_60,
	relu_59,
	relu_58,
	relu_57,
	relu_56,
	relu_55,
	relu_54,
	relu_53,
	relu_52,
	relu_51,
	relu_50,
	relu_49,
	relu_48,
	relu_47,
	relu_46,
	relu_45,
	relu_44,
	relu_43,
	relu_42,
	relu_41,
	relu_40,
	relu_39,
	relu_38,
	relu_37,
	relu_36,
	relu_35,
	relu_34,
	relu_33,
	relu_32,
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
