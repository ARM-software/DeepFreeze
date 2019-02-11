module line_buffer_controller
#(
parameter   KER_SIZE        = 3
)
(
input       logic                   clk         ,
input       logic                   rstn        ,
input       logic                   valid       ,
input       logic                   sram_row_is_done    ,
input       logic                   flush       ,
output  logic  [3-1:0]  col_ptr ,
output  logic  [3-1:0]  init_col_ptr
);
logic  [3-1:0]  init_col_ptr_nxt;
logic  [3-1:0]  col_ptr_nxt;
logic sram_row_is_done_reg;
//counters
always_ff @(posedge clk or negedge rstn)
begin
    if(!rstn)
    begin
        col_ptr                             <=  '0;
        init_col_ptr                <=  '0;
        sram_row_is_done_reg  <=    '0;
    end
    else if(flush)
    begin
        col_ptr                             <=  '0;
        init_col_ptr                    <=  '0;
        sram_row_is_done_reg    <=  '0;
    end
    else
    begin
        col_ptr                             <=  col_ptr_nxt;
        init_col_ptr                    <=  init_col_ptr_nxt;
        sram_row_is_done_reg    <=  sram_row_is_done;
    end
end

assign col_ptr_nxt                  = (valid)   ? (col_ptr==(KER_SIZE-1)    ?   '0  :   col_ptr + 1'd1) : col_ptr ;
assign init_col_ptr_nxt         = (valid && (init_col_ptr<KER_SIZE-1))  ? init_col_ptr + 1'd1 : (sram_row_is_done_reg==1'b1)? '0 : init_col_ptr;

endmodule
