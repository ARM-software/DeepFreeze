module line_buffer_array_k5
#(
parameter   KER_SIZE    = 5,
parameter BITWIDTH  = 8,
parameter AW                = 8
)
(
input       logic   clk                                                                         ,
input       logic   rstn                                                                        ,
input       logic   [BITWIDTH*KER_SIZE-1:0] pixel_in                ,
input       logic   [3-1:0]                                 col_ptr                 ,
input       logic   [3-1:0]                                 init_col_ptr        ,
output  logic  [BITWIDTH*KER_SIZE*KER_SIZE-1:0] pixel_out   
);

//wires
logic   [KER_SIZE*BITWIDTH-1:0] pixel_col [KER_SIZE-1:0];
logic   [KER_SIZE*KER_SIZE*BITWIDTH-1:0] pixel_out_wire;
logic ready;

//reg array
genvar i;
generate
for (i=0;i<KER_SIZE;i++)
    dff #(.BITWIDTH(BITWIDTH*KER_SIZE)) reg_inst (.clk(clk),.rstn(rstn),.valid(col_ptr==i),.D(pixel_in),.Q(pixel_col[i]));//each dff stores a column of data
endgenerate

//reshape
always_comb
begin
    case (1'b1)
        (col_ptr=='d0):pixel_out_wire = {pixel_in,pixel_col[4],pixel_col[3],pixel_col[2],pixel_col[1]};
        (col_ptr=='d1):pixel_out_wire = {pixel_in,pixel_col[0],pixel_col[4],pixel_col[3],pixel_col[2]};
        (col_ptr=='d2):pixel_out_wire = {pixel_in,pixel_col[1],pixel_col[0],pixel_col[4],pixel_col[3]};
        (col_ptr=='d3):pixel_out_wire = {pixel_in,pixel_col[2],pixel_col[1],pixel_col[0],pixel_col[4]};
        (col_ptr=='d4):pixel_out_wire = {pixel_in,pixel_col[3],pixel_col[2],pixel_col[1],pixel_col[0]};
        default:pixel_out_wire = '0;
  endcase
end

//output flop
always_ff @(posedge clk or negedge rstn)
begin
    if(!rstn)
        pixel_out   <=  '0;
    else if(ready)
        pixel_out   <=  pixel_out_wire;
    else
        pixel_out   <=  pixel_out;
end
assign ready = (init_col_ptr==KER_SIZE-1);
endmodule

module line_buffer_array_k3
#(
parameter   KER_SIZE    = 3,
parameter BITWIDTH  = 8,
parameter AW                = 8
)
(
input       logic   clk                                                                         ,
input       logic   rstn                                                                        ,
input       logic   [BITWIDTH*KER_SIZE-1:0] pixel_in                ,
input       logic   [3-1:0]                                 col_ptr                 ,
input       logic   [3-1:0]                                 init_col_ptr        ,
output  logic  [BITWIDTH*KER_SIZE*KER_SIZE-1:0] pixel_out   
);

//wires
logic   [KER_SIZE*BITWIDTH-1:0] pixel_col [KER_SIZE-1:0];
logic   [KER_SIZE*KER_SIZE*BITWIDTH-1:0] pixel_out_wire;
logic ready;

//reg array
genvar i;
generate
for (i=0;i<KER_SIZE;i++)
    dff #(.BITWIDTH(BITWIDTH*KER_SIZE)) reg_inst (.clk(clk),.rstn(rstn),.valid(col_ptr==i),.D(pixel_in),.Q(pixel_col[i]));//each dff stores a column of data
endgenerate

//reshape
always_comb
begin
    case (1'b1)
        (col_ptr=='d0):pixel_out_wire = {pixel_in,pixel_col[2],pixel_col[1]};
        (col_ptr=='d1):pixel_out_wire = {pixel_in,pixel_col[0],pixel_col[2]};
        (col_ptr=='d2):pixel_out_wire = {pixel_in,pixel_col[1],pixel_col[0]};
        default:pixel_out_wire = '0;
  endcase
end

//output flop
always_ff @(posedge clk or negedge rstn)
begin
    if(!rstn)
        pixel_out   <=  '0;
    else if(ready)
        pixel_out   <=  pixel_out_wire;
    else
        pixel_out   <=  pixel_out;
end
assign ready = (init_col_ptr==KER_SIZE-1);
endmodule

module line_buffer_array_k2
#(
parameter   KER_SIZE    = 3,
parameter BITWIDTH  = 8,
parameter AW                = 8
)
(
input       logic   clk                                                                         ,
input       logic   rstn                                                                        ,
input       logic   [BITWIDTH*KER_SIZE-1:0] pixel_in                ,
input       logic   [3-1:0]                                 col_ptr                 ,
input       logic   [3-1:0]                                 init_col_ptr        ,
output  logic  [BITWIDTH*KER_SIZE*KER_SIZE-1:0] pixel_out   
);

//wires
logic   [KER_SIZE*BITWIDTH-1:0] pixel_col [KER_SIZE-1:0];
logic   [KER_SIZE*KER_SIZE*BITWIDTH-1:0] pixel_out_wire;
logic ready;

//reg array
genvar i;
generate
for (i=0;i<KER_SIZE;i++)
    dff #(.BITWIDTH(BITWIDTH*KER_SIZE)) reg_inst (.clk(clk),.rstn(rstn),.valid(col_ptr==i),.D(pixel_in),.Q(pixel_col[i]));//each dff stores a column of data
endgenerate

//reshape
always_comb
begin
    case (1'b1)
        (col_ptr=='d0):pixel_out_wire = {pixel_in,pixel_col[1]};
        (col_ptr=='d1):pixel_out_wire = {pixel_in,pixel_col[0]};
        default:pixel_out_wire = '0;
  endcase
end

//output flop
always_ff @(posedge clk or negedge rstn)
begin
    if(!rstn)
        pixel_out   <=  '0;
    else if(ready)
        pixel_out   <=  pixel_out_wire;
    else
        pixel_out   <=  pixel_out;
end
assign ready = (init_col_ptr==KER_SIZE-1);
endmodule

//dff
module dff
#(
parameter BITWIDTH=8
)
(
input logic     clk,
input logic     rstn,
input logic     valid,
input logic     [BITWIDTH-1:0] D,
output logic    [BITWIDTH-1:0] Q
);
always_ff @(posedge clk or negedge rstn)
begin
    if(rstn==0)
        Q<='0;
    else if(valid==1)
        Q<=D;
    else
        Q<=Q;       
end
endmodule
