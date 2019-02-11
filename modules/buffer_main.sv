module line_buffer
#(
    parameter KER_SIZE_X = 3,
    parameter KER_SIZE_Y = 3,
    parameter STRIDE_X = 1,
    parameter STRIDE_Y = 1,
    parameter NBITS = 8,
    parameter NFMAPS = 3,
    parameter IMAGE_SIZE_X = 32, // NW
    parameter ADDR_WIDTH = $clog2(IMAGE_SIZE_X),
    parameter WORD_SIZE = NFMAPS * NBITS
)
(
    input logic clk,
    input logic rstn,
    input logic valid,
    input logic flush,
    input logic [INPUT_FMAPS*BITWIDTH-1:0] input_act,
    output logic [INPUT_FMAPS*KER_SIZE*KER_SIZE*BITWIDTH-1:0] output_act,
    output logic ready
);

genvar i,j;

logic [ADDR_WIDTH-1:0] addr;
logic [KER_SIZE_X:0] write_en;
logic [KER_SIZE_X:0] read_en;
logic [KER_SIZE_X*-1:0] sram_read_data;
logic [WORD_SIZE-1:0] sram_read_data_rowwise [KER_SIZE-1:0];
logic [KER_SIZE*BITWIDTH-1:0] pixel_in_fmap_wise [INPUT_FMAPS-1:0];
logic [KER_SIZE*KER_SIZE*BITWIDTH-1:0] pixel_out_fmap_wise [INPUT_FMAPS-1:0];
logic [3-1:0] col_ptr;
logic [3-1:0] init_col_ptr;
logic [3-1:0] col_stride_counter;
logic [3-1:0] col_stride_counter_nxt;
logic sram_is_ready,sram_is_ready_D1;
logic valid_D1;
logic ready_wire;
logic line_buf_is_ready;
logic sram_row_is_done_wire;

sram_controller #(
    .KER_SIZE (KER_SIZE),
    .BITWIDTH (BITWIDTH),
    .STRIDE (STRIDE),
    .INPUT_FMAPS (INPUT_FMAPS),
    .INPUT_X_DIM (NW),
    .AW (AW)
) sram_ctrl_inst (
    .clk (clk),    
    .rstn (rstn),    
    .valid (valid),
    .flush (flush),
    .addr (address),  
    .write_en (write_en),      
    .read_en (read_en),
    .row_is_complete (sram_row_is_done),
    .ready (sram_is_ready)
);
    
generate
if(KER_SIZE==3)
    sram_array_k3
    #(.KER_SIZE         (KER_SIZE ),
        .DW                     (DW             ),
        .NW                     (NW             ),
        .AW                     (AW             ))
    sram_array_k3_inst(
        .clk(clk),
        .rstn(rstn),     
        .a  (address),
        .wen(write_en),
        .ren(read_en),
        .d  (D),      
        .q  (sram_read_data));
    
else if(KER_SIZE==2)
    sram_array_k2
    #(.KER_SIZE         (KER_SIZE   ),
        .DW                     (DW                 ),
        .NW                     (NW                 ),
        .AW                     (AW                 ))
    sram_array_k2_inst(
        .clk(clk),
        .rstn(rstn),     
        .a  (address_wire),
        .wen(write_en_wire),
        .ren(read_en_wire),
        .d  (D_reg),      
        .q  (sram_read_data_wire));
        
else if(KER_SIZE==5)
    sram_array_k5
    #(.KER_SIZE         (KER_SIZE   ),
        .DW                     (DW                 ),
        .NW                     (NW                 ),
        .AW                     (AW                 ))
    sram_array_k5_inst(
        .clk(clk),    
        .rstn(rstn),      
        .a  (address_wire),
        .wen(write_en_wire),
        .ren(read_en_wire),
        .d  (D_reg),      
        .q  (sram_read_data_wire));
endgenerate

// delay for sram read cycle, sram data is ready after a cycle when sram is ready
always_ff @(posedge clk or negedge rstn)
begin
    if(!rstn)
    begin
        valid_D1            <=  '0;
        sram_is_ready_D1 <= '0;
    end
    else
    begin
        valid_D1            <=  valid_reg;
        sram_is_ready_D1 <= sram_is_ready;
    end
end

line_buffer_controller#(
    .KER_SIZE(KER_SIZE))
line_buffer_controller_inst(
    .clk                    (clk    ),
    .rstn                   (rstn   ),
    .valid              (valid_D1 && sram_is_ready_D1),
    .flush              (flush_reg),
    .sram_row_is_done               (sram_row_is_done_wire),
    .col_ptr            (col_ptr_wire),
    .init_col_ptr   (init_col_ptr_wire)
);



generate
    for (i=0;i<KER_SIZE;i++)
        assign sram_read_data_rowwise[i] = sram_read_data_wire [(i+1)*DW-1:(i*DW)];

    for (j=0;j<INPUT_FMAPS;j++)
    begin
        for (i=0;i<KER_SIZE;i++)
        begin
            assign pixel_in_fmap_wise [j][(i+1)*BITWIDTH-1:(i*BITWIDTH)]     = sram_read_data_rowwise[i][(j+1)*BITWIDTH-1:(j*BITWIDTH)];
        end
    end

    for(i=0;i<INPUT_FMAPS;i++)
        begin
            if(KER_SIZE==3)
                line_buffer_array_k3
                #(
                    .KER_SIZE  (KER_SIZE ),
                    .BITWIDTH  (BITWIDTH),
                    .AW              (AW             )
                )
                line_buffer_array_k3_inst(
                    .clk                    (clk),
                    .rstn                   (rstn),
                    .pixel_in           (pixel_in_fmap_wise [i]),
                    .col_ptr            (col_ptr_wire),
                    .init_col_ptr   (init_col_ptr_wire),
                    .pixel_out      (pixel_out_fmap_wise [i]));
                    
            else if(KER_SIZE==2)
                line_buffer_array_k2
                #(
                    .KER_SIZE  (KER_SIZE ),
                    .BITWIDTH  (BITWIDTH),
                    .AW              (AW             )
                )
                line_buffer_array_k2_inst(
                    .clk                    (clk),
                    .rstn                   (rstn),
                    .pixel_in           (pixel_in_fmap_wise [i]),
                    .col_ptr            (col_ptr_wire),
                    .init_col_ptr   (init_col_ptr_wire),
                    .pixel_out      (pixel_out_fmap_wise [i])); 
                    
            else if(KER_SIZE==5)
                line_buffer_array_k5
                #(
                    .KER_SIZE  (KER_SIZE ),
                    .BITWIDTH  (BITWIDTH),
                    .AW              (AW             )
                )
                line_buffer_array_k5_inst(
                    .clk                    (clk),
                    .rstn                   (rstn),
                    .pixel_in           (pixel_in_fmap_wise [i]),
                    .col_ptr            (col_ptr_wire),
                    .init_col_ptr   (init_col_ptr_wire),
                    .pixel_out      (pixel_out_fmap_wise [i]));
        end 
        
    for (i=0;i<INPUT_FMAPS;i++)
        assign Q[(i+1)*KER_SIZE*KER_SIZE*BITWIDTH-1:(i*KER_SIZE*KER_SIZE*BITWIDTH)] = pixel_out_fmap_wise [i];
        
endgenerate

//ready_logic
always_ff @(posedge clk or negedge rstn)
begin
    if(!rstn)
    begin
        col_stride_counter  <=  '0;
    end 
    else if(flush || sram_row_is_done_wire) 
    begin   
        col_stride_counter  <=  '0;
    end 
    else    
    begin   
        col_stride_counter  <=  col_stride_counter_nxt;
    end
end

//because of one cycle delay of line buffer
always_ff @(posedge clk or negedge rstn)
begin
    if(!rstn)
        ready   <= '0;
    else         
        ready   <= ready_wire;
end

assign line_buf_is_ready = (init_col_ptr_wire == KER_SIZE-1 && valid_D1);
assign col_stride_counter_nxt = (line_buf_is_ready) ? ((col_stride_counter<STRIDE-1'd1)?col_stride_counter+1'd1:'0 ): col_stride_counter;
assign ready_wire = (col_stride_counter==0) && line_buf_is_ready;
endmodule
