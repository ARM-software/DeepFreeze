`timescale 1ns / 1ps

module tb;

parameter NBITS = 8;
parameter NFMAPS = 4;
parameter XSIZE = 2;
parameter YSIZE = 2;

int input_fd;
int output_fd;

logic clk;
logic rstn;
logic valid;
logic flush;
logic [NBITS*NFMAPS-1:0] pixel;
logic [NBITS*NFMAPS-1:0] kernel_image;
logic ready;

buffer_main #(
    .KER_SIZE (3),
    .BITWIDTH (8),
    .INPUT_FMAPS (3),
    .STRIDE (1),
    .NW (32),
    .AW (10)
) dut (
    .clk (clk),
    .rstn (rstn),
    .valid (valid),
    .flush (flush),
    .D (pixel),
    .Q (kernel_image),
    .ready (ready)
);

// Clock
initial clk = 0;
always begin
    #10 clk = ~clk;
end

// Record outputs
always @(posedge clk) begin
    if (rstn && ready) begin
        $fwrite(output_fd, "%b\n", kernel_image);
    end
end

initial begin
    // Initialize module inputs
    valid = 0;
    pixel = '0;
    flush = 1;
    #20 @(negedge clk);
    flush = 0;
    rstn = 1;

    // Send input vector
    input_fd = $fopen("../features.txt", "r");
    output_fd = $fopen("labels.txt", "w");
    while (!$feof(input_fd)) begin
        @(negedge clk);
        $fscanf(input_fd, "%b\n", pixel);
        valid = 1;
    end

    @(negedge clk);
    valid = 0;
    #1000

    // Close files
    $fclose(input_fd);
    $fclose(output_fd);

    $finish();
end

endmodule