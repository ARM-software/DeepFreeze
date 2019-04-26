module buffer_main
#(
    parameter KER_SIZE = 3,
    parameter BITWIDTH = 8,
    parameter NFMAPS = 3,
    parameter STRIDE = 1,
    parameter PAD = 1,
    parameter NW = 32,
    parameter AW = 10
)
(
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic [NFMAPS*BITWIDTH-1:0] D,
    output logic [NFMAPS*KER_SIZE*KER_SIZE*BITWIDTH-1:0] Q,
    output logic ready
);

parameter DW = NFMAPS*BITWIDTH;
genvar i,j;

logic [AW-1:0] address_wire;
logic [KER_SIZE:0] write_en_wire;
logic [KER_SIZE:0] read_en_wire; 
logic [KER_SIZE*DW-1:0] sram_read_data_wire;
logic [DW-1:0] sram_read_data_rowwise [KER_SIZE-1:0];
logic [KER_SIZE*BITWIDTH-1:0] pixel_in_fmap_wise [NFMAPS-1:0];
logic [KER_SIZE*KER_SIZE*BITWIDTH-1:0] pixel_out_fmap_wise [NFMAPS-1:0];

logic [3-1:0] col_ptr_wire;
logic [3-1:0] init_col_ptr_wire;
logic [3-1:0] col_stride_counter;
logic [3-1:0] col_stride_counter_nxt;
logic sram_is_ready,sram_is_ready_D1;
logic valid_D1;
logic ready_wire;
logic line_buf_is_ready;

//PAD signals
logic right_pad_valid;
logic bottom_pad_mask;
logic [KER_SIZE-1:0] top_pad_mask	  ;
logic [KER_SIZE-1:0] left_pad_mask	  ;
logic [KER_SIZE-1:0] right_pad_mask	  ;

//input flops
logic valid_reg;
logic [NFMAPS*BITWIDTH-1:0]D_reg;
logic row_complete_wire;
 
assign valid_reg = valid;
assign D_reg = bottom_pad_mask ? D & {NFMAPS*BITWIDTH{1'b0}} : D; //mask dummy data as zeros at bottom pad

sram_controller #(
    .KER_SIZE 		(KER_SIZE	),
    .BITWIDTH 		(BITWIDTH	),
    .STRIDE 		(STRIDE		),
    .PAD 			(PAD		),
    .NFMAPS 		(NFMAPS		),
    .INPUT_X_DIM 	(NW			),
    .AW 			(AW			)
) sram_ctrl_inst (
    .clk 			 (clk),
    .rstn 			 (rstn),
    .valid 			 (valid_reg),
    .addr 			 (address_wire),
    .write_en 		 (write_en_wire),
    .read_en 		 (read_en_wire ),
    .row_is_complete (row_complete_wire),
	.top_pad_mask	 (top_pad_mask	),
	.bottom_pad_mask (bottom_pad_mask),
    .ready 			 (sram_is_ready)
);

// TODO: generalize sram array module to different kernel sizes
generate
if (KER_SIZE == 3)
    sram_array_k3 #(
        .KER_SIZE (KER_SIZE),
        .DW (DW),
        .NW (NW),
        .AW (AW)
    ) sram_array_k3_inst (
        .clk (clk),
        .rstn (rstn),
        .a (address_wire),
        .wen (write_en_wire),
        .ren (read_en_wire),
        .d (D_reg),
        .q (sram_read_data_wire)
    );
    
else if (KER_SIZE == 2)
    sram_array_k2 #(
        .KER_SIZE (KER_SIZE),
        .DW (DW),
        .NW (NW),
        .AW (AW)
    ) sram_array_k2_inst (
        .clk (clk),
        .rstn (rstn),
        .a (address_wire),
        .wen (write_en_wire),
        .ren (read_en_wire),
        .d (D_reg),
        .q (sram_read_data_wire)
    );
        
else if(KER_SIZE == 5)
    sram_array_k5 #(
        .KER_SIZE (KER_SIZE),
        .DW (DW),
        .NW (NW),
        .AW (AW)
    ) sram_array_k5_inst (
        .clk (clk),
        .rstn (rstn),
        .a (address_wire),
        .wen (write_en_wire),
        .ren (read_en_wire),
        .d (D_reg),
        .q (sram_read_data_wire));
endgenerate

// delay for sram read cycle, sram data is ready after a cycle when sram is ready
always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        valid_D1 			<= '0;
        sram_is_ready_D1 	<= '0;
    end
    else begin
        valid_D1 			<= valid_reg;
        sram_is_ready_D1 	<= sram_is_ready;
    end
end

line_buffer_controller #(
    .KER_SIZE 		(KER_SIZE	),
    .INPUT_X_DIM 	(NW			),
    .PAD 			(PAD		)
) line_buffer_controller_inst (
    .clk 				(clk							),
    .rstn 				(rstn							),
    .valid 				(valid_D1 && sram_is_ready_D1	),
    .row_complete 		(row_complete_wire				),
    .col_ptr 			(col_ptr_wire					),
    .right_pad_valid 	(right_pad_valid				),
    .left_pad_mask 		(left_pad_mask					),
    .right_pad_mask 	(right_pad_mask					),
    .init_col_ptr 		(init_col_ptr_wire				)
);

generate
    for (i = 0; i < KER_SIZE; i++) begin
        assign sram_read_data_rowwise[i] = sram_read_data_wire [(i+1)*DW-1:(i*DW)] & {KER_SIZE*DW{!top_pad_mask[i]}};
    end

    for (j = 0; j < NFMAPS; j++) begin
        for (i = 0; i < KER_SIZE; i++) begin
            assign pixel_in_fmap_wise[j][(i+1)*BITWIDTH-1:(i*BITWIDTH)] = sram_read_data_rowwise[i][(j+1)*BITWIDTH-1:(j*BITWIDTH)];
        end
    end

    // TODO: generalize line buffer arrays to different kernel sizes
    for (i = 0; i < NFMAPS; i++) begin
        if (KER_SIZE == 3) begin
            line_buffer_array_k3 #(
                .KER_SIZE (KER_SIZE),
                .BITWIDTH (BITWIDTH),
                .AW 		(AW)
            ) line_buffer_array_k3_inst (
                .clk (clk),
                .rstn (rstn),
                .pixel_in (pixel_in_fmap_wise[i]),
                .col_ptr (col_ptr_wire),
                .init_col_ptr (init_col_ptr_wire),
                .pixel_out (pixel_out_fmap_wise[i])
            );
        end
        else if (KER_SIZE == 2) begin
            line_buffer_array_k2 #(
                .KER_SIZE (KER_SIZE),
                .BITWIDTH (BITWIDTH),
                .AW (AW)
            ) line_buffer_array_k2_inst (
                .clk (clk),
                .rstn (rstn),
                .pixel_in (pixel_in_fmap_wise [i]),
                .col_ptr (col_ptr_wire),
                .init_col_ptr (init_col_ptr_wire),
                .pixel_out (pixel_out_fmap_wise [i])
            );
        end
        else if (KER_SIZE == 5) begin
            line_buffer_array_k5 #(
                .KER_SIZE (KER_SIZE),
                .PAD (PAD),
                .BITWIDTH (BITWIDTH),
                .AW (AW)
            ) line_buffer_array_k5_inst (
                .clk 			(clk),
                .rstn 			(rstn),
                .pixel_in 		(pixel_in_fmap_wise [i]),
                .col_ptr 		(col_ptr_wire),
                .init_col_ptr 	(init_col_ptr_wire),
                .left_pad_mask 	(left_pad_mask),
                .right_pad_mask (right_pad_mask),
                .pixel_out 		(pixel_out_fmap_wise [i])
            );
        end
    end

    for (i = 0; i < NFMAPS; i++) begin
        assign Q[(i+1)*KER_SIZE*KER_SIZE*BITWIDTH-1:(i*KER_SIZE*KER_SIZE*BITWIDTH)] = pixel_out_fmap_wise[i];
    end

endgenerate

// ready_logic
always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        col_stride_counter <= '0;
    end
    else if (row_complete_wire) begin
        col_stride_counter <= '0;
    end
    else begin
        col_stride_counter <= col_stride_counter_nxt;
    end
end

// because of one cycle delay of line buffer
always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        ready_wire <= '0;
    end
    else begin
        ready_wire <= (col_stride_counter==0) && (line_buf_is_ready);
    end
end

assign line_buf_is_ready = (init_col_ptr_wire == KER_SIZE-1 && valid_D1);
assign col_stride_counter_nxt = (line_buf_is_ready) ? ((col_stride_counter<STRIDE-1'd1)?col_stride_counter+1'd1:'0 ): col_stride_counter;
assign ready = ready_wire || right_pad_valid;

endmodule
