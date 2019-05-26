module line_buffer_controller
#(
    parameter KER_SIZE    = 3,
    parameter INPUT_X_DIM = 3,
    parameter PAD         = 1
)
(
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic row_complete,
    output logic right_pad_valid,
    output logic [3-1:0] col_ptr,
    output logic [KER_SIZE-1:0] left_pad_mask,	 
    output logic [KER_SIZE-1:0] right_pad_mask,	 
    output logic [3-1:0] init_col_ptr
);

logic [3-1:0] init_col_ptr_nxt;
logic [3-1:0] col_ptr_nxt;

logic [7:0] global_col_ptr;
logic [7:0] global_col_ptr_nxt;

//-------------------------------------
logic padrow_complete;
logic row_complete_D1;
logic row_complete_D2;
always_ff @(posedge clk or negedge rstn) 
begin
	if (!rstn) 
	begin
			row_complete_D1 	 <='0;
			row_complete_D2 	 <='0;
	end
	else if (padrow_complete)
	begin	
			row_complete_D1 		<= '0;
			row_complete_D2 		<= '0;
	end
	else
	begin
			row_complete_D1 		<= row_complete;
			row_complete_D2 		<= row_complete_D1;
	end
end
assign padrow_complete = row_complete_D1;
//-------------------------------------


// initialize counters
always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        col_ptr 			      <= PAD;//Left padding
        init_col_ptr 		    <= PAD;//Left padding
        global_col_ptr 		  <='0;
    end
    else if (padrow_complete) begin
        col_ptr 				    <= PAD; //Left padding
        init_col_ptr 			  <= PAD;//Left padding
        global_col_ptr 			<= '0;
    end
    else begin
        col_ptr 				    <= col_ptr_nxt;
        init_col_ptr 			  <= init_col_ptr_nxt;
        global_col_ptr 			<= global_col_ptr_nxt;
    end
end


// Increment counters based on conditions
assign col_ptr_nxt 		  	= valid ? (col_ptr==KER_SIZE-1 ? '0 : col_ptr + 1'd1) : col_ptr;
assign global_col_ptr_nxt = padrow_complete ? 'd0 : valid ?  global_col_ptr + 1'd1: global_col_ptr;
assign init_col_ptr_nxt   = valid && init_col_ptr<KER_SIZE-1 ? init_col_ptr + 1'd1 :padrow_complete==1'b1 ? PAD : init_col_ptr;

// Left pad logic
logic [KER_SIZE-1:0]left_pad_shift;

generate
	if(PAD>0) 
	begin
		logic [PAD-1:0] shifted_left_pad_mask;
		always_ff @(posedge clk or negedge rstn) 
		begin
			if (!rstn) 
				shifted_left_pad_mask <= {PAD{1'b1}}; 
			else if (padrow_complete) 
				shifted_left_pad_mask <= {PAD{1'b1}}; 
			else if (valid)
				shifted_left_pad_mask <= shifted_left_pad_mask << left_pad_shift; 
			else
				shifted_left_pad_mask <= shifted_left_pad_mask; 
		end
	assign left_pad_mask =  {{KER_SIZE-PAD{1'b0}},shifted_left_pad_mask};
	end
	
	else
	begin
		assign left_pad_mask =  {KER_SIZE{1'b0}};
	end
endgenerate
	
assign left_pad_shift  = global_col_ptr >= KER_SIZE-PAD-1 && global_col_ptr < KER_SIZE-1 ? 1'b1 : 1'b0;

// Right pad logic
logic right_pad_en;
logic [2:0] right_pad_counter;
logic [KER_SIZE-1:0]right_pad_shift;

always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        right_pad_en <= '0;
    end
    else if (global_col_ptr==INPUT_X_DIM-PAD-1) begin
        right_pad_en <= '1;
    end
    else if(right_pad_counter==KER_SIZE-1)begin //PAD + (KER_SIZE-PAD-1)
        right_pad_en <= 0;
    end
end

always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        right_pad_counter <= '0;
    end
    else if (right_pad_counter==KER_SIZE-1) begin
        right_pad_counter <= 0;
    end
    else if (right_pad_en) begin
        right_pad_counter <= right_pad_counter + 1'd1;
    end
    else 
        right_pad_counter <= 0;
end

assign right_pad_shift =  right_pad_en && !(right_pad_counter<PAD+1);
assign right_pad_valid = right_pad_shift;

generate
	if(PAD>0) 
	begin
		logic [KER_SIZE-1:0] right_pad_mask_wire;
		always_ff @(posedge clk or negedge rstn) 
		begin
			if (!rstn) 
				right_pad_mask_wire <=  {1'b1,{KER_SIZE-1{1'b0}}};
			else if (global_col_ptr==INPUT_X_DIM-PAD-1) 
				right_pad_mask_wire <=  {1'b1,{KER_SIZE-1{1'b0}}};
			else if (right_pad_shift)
				right_pad_mask_wire <= (right_pad_mask_wire >> 1) | {1'b1,{KER_SIZE-1{1'b0}}};
			else
				right_pad_mask_wire <= {1'b1,{KER_SIZE-1{1'b0}}};
		end
		assign right_pad_mask = right_pad_shift ? right_pad_mask_wire: 0;
	end
	
	else
	begin
		assign right_pad_mask =  {KER_SIZE{1'b0}};
	end
endgenerate
endmodule
