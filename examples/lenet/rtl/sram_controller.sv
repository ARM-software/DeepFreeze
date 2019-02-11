module sram_controller
#(
    parameter NROWS = 4,
    parameter NCOLS = 32,
    parameter BITWIDTH = 8,
    parameter STRIDE_X = 1,
    parameter STRIDE_Y = 1,
    parameter NFMAPS = 3,
    parameter ADDR_WIDTH = $clog2(NCOLS)
)
(
    input logic clk,      
    input logic rstn,     
    input logic valid,
    input logic flush,
    output logic [AW-1:0] addr,     // same for read and write    
    output logic [KER_SIZE:0] write_en,     
    output logic [KER_SIZE:0] read_en,
    output logic ready,
    output logic row_is_complete 
);

genvar i;

logic [KER_SIZE:0] row_ptr;
logic [AW-1:0] col_ptr;
logic [3:0] init_row_counter;
logic [KER_SIZE:0] row_ptr_nxt;
logic [AW-1:0] col_ptr_nxt;
logic [3:0] init_row_counter_nxt;
logic [3-1:0] row_stride_counter;
logic [3-1:0] row_stride_counter_nxt;

always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        row_ptr <= '0;
        col_ptr <= '0;
        init_row_counter <= '0;
        row_stride_counter <= '0;
    end
    else if (flush) begin
        row_ptr <= '0;
        col_ptr <= '0;
        init_row_counter <= '0;
        row_stride_counter <= '0;
    end
    else begin
            row_ptr <= row_ptr_nxt;
            col_ptr <= col_ptr_nxt;
            init_row_counter <= (valid && (col_ptr==INPUT_X_DIM-1) && (init_row_counter<KER_SIZE)) ? init_row_counter + 1'd1 : init_row_counter;
            row_stride_counter <= row_stride_counter_nxt;
    end
end

generate
    for (i = 0; i < KER_SIZE+1; i++) begin
        assign write_en[i] = (row_ptr == i); 
    end
endgenerate

assign row_is_complete = valid && (col_ptr==INPUT_X_DIM-1);
assign col_ptr_nxt = (valid) ? (col_ptr==(INPUT_X_DIM-1) ? '0 : col_ptr + 1'd1) : col_ptr;
assign row_ptr_nxt = (valid && (col_ptr==INPUT_X_DIM-1))? ((row_ptr==KER_SIZE) ? '0 : row_ptr + 1'd1) : row_ptr;
assign read_en = {NROWS{init_row_counter == KER_SIZE}} & (~write_en); 
assign addr = col_ptr;
assign ready = (init_row_counter == KER_SIZE) && (row_stride_counter==0);
assign row_stride_counter_nxt = (col_ptr==(INPUT_X_DIM-1) && valid && init_row_counter == KER_SIZE) ? ((row_stride_counter<STRIDE-1'd1)?row_stride_counter+1'd1:'0 ): row_stride_counter;

endmodule
