module sram_controller
#(
    parameter KER_SIZE    = 3,
    parameter BITWIDTH    = 8,
    parameter STRIDE      = 8,
    parameter NFMAPS      = 3,
    parameter INPUT_X_DIM = 28,
    parameter PAD         = 1,
    parameter AW          = 5
)
(
  input logic clk,      
  input logic rstn,     
  input logic valid,
  output logic [AW-1:0] addr, // same for read and write    
  output logic [KER_SIZE-1:0] write_en,     
  output logic [KER_SIZE-1:0] read_en,
  output logic ready,
  output logic [KER_SIZE-1:0] top_pad_mask ,
  output logic bottom_pad_mask,
  output logic row_is_complete
);

genvar i;

logic [KER_SIZE:0] row_ptr          ;
logic [KER_SIZE:0] pad_row_ptr      ;
logic [7:0] global_row_ptr          ;
logic [7:0] global_row_ptr_nxt      ;
logic [AW-1:0] col_ptr              ;
logic [3:0] init_row_counter        ;
logic [KER_SIZE:0] row_ptr_nxt      ;
logic [AW-1:0] col_ptr_nxt          ;
logic [3:0] init_row_counter_nxt    ;
logic [3-1:0] row_stride_counter    ;
logic [3-1:0] row_stride_counter_nxt;

//padding
logic [KER_SIZE-1:0]top_pad_shift;
logic [KER_SIZE-1:0] init_top_pad_mask;

always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        row_ptr 			      <= PAD;//top padding
        global_row_ptr 		  <= 'd0;
        col_ptr 			      <= 'd0;
        init_row_counter 	  <= PAD;//top padding
        row_stride_counter 	<= 'd0;
    end
    else begin
        row_ptr 			      <= row_ptr_nxt;
        global_row_ptr 		  <= global_row_ptr_nxt;
        col_ptr 			      <= col_ptr_nxt;
        init_row_counter 	  <= init_row_counter_nxt;
        row_stride_counter 	<= row_stride_counter_nxt;
    end
end

generate
    for (i=0;i<KER_SIZE;i++) begin
        assign write_en[i] = (row_ptr==i); 
    end
endgenerate

logic col_ptr_done;
logic top_pad_en;
assign col_ptr_done           = col_ptr==(INPUT_X_DIM-1);

assign row_is_complete  	    = valid && col_ptr_done;
assign col_ptr_nxt 			      = valid ? (col_ptr_done ? 'd0 : col_ptr + 1'd1) : col_ptr ; 
assign row_ptr_nxt 			      = valid && col_ptr_done ? (row_ptr==KER_SIZE-1 ? 'd0 : row_ptr + 1'd1): row_ptr;
assign global_row_ptr_nxt 	  = valid && col_ptr_done ?  global_row_ptr + 1'd1 : global_row_ptr;
assign init_row_counter_nxt   = valid && col_ptr_done && (init_row_counter<KER_SIZE-1) 	? init_row_counter + 1'd1 : init_row_counter;

assign read_en 	              = {KER_SIZE{init_row_counter == KER_SIZE-1}} & (~write_en); 
assign addr 	                = col_ptr;
assign ready 	                = (init_row_counter == KER_SIZE-1) && (row_stride_counter==0);
assign row_stride_counter_nxt = (col_ptr==(INPUT_X_DIM-1) && valid && init_row_counter == KER_SIZE-1) ? ((row_stride_counter<STRIDE-1'd1)?row_stride_counter+1'd1:'0 ): row_stride_counter;

generate
if(PAD>0)
	begin
		always_ff @(posedge clk or negedge rstn) 
			begin
				if (!rstn) 
					top_pad_en   <= 1'd0; 
				else 
					top_pad_en   <= valid && col_ptr_done; 
			end
			
		always_ff @(posedge clk or negedge rstn) 
			begin
				if (!rstn) 
					top_pad_mask <= init_top_pad_mask; 
				else if (top_pad_en)
					top_pad_mask <= top_pad_mask >> top_pad_shift; 
				else
					top_pad_mask <= top_pad_mask; 
			end
			
	assign bottom_pad_mask 	= global_row_ptr > INPUT_X_DIM - 1'd1; // tell line buffer that one row is done, pad zeros if needed at the bottom rows
	assign top_pad_shift 		= global_row_ptr > KER_SIZE-PAD && global_row_ptr <KER_SIZE+1 ? 1'b1 : 1'b0;
	
	end
else 
	begin
		assign top_pad_mask 		= 0;
		assign bottom_pad_mask 	= 0;
		assign top_pad_en 			= 0;
		assign top_pad_shift 		= 0;
	end
endgenerate
		
generate
	for (i=0;i<KER_SIZE;i++) 
	begin
		always_ff @(posedge clk or negedge rstn) begin
			if (!rstn) 
				init_top_pad_mask[i] <= i<PAD ? 1'b1 : 1'd0; 
			else 
				init_top_pad_mask[i] <= init_top_pad_mask[i];
		end
    end
endgenerate

endmodule
