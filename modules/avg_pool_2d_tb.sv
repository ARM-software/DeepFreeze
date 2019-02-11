`timescale 1ns / 1ps

module tb;

parameter NBITS = 8;
parameter NFMAPS = 4;
parameter KER_SIZE_X = 2;
parameter KER_SIZE_Y = 2;

int input_fd;
int output_fd;

logic clk;
logic rstn;
logic valid;
logic [NBITS*NFMAPS*KER_SIZE_X*KER_SIZE_Y-1:0] features;
logic [NBITS*NFMAPS-1:0] labels;

avg_pool_2d #(
    .NBITS (NBITS),
    .NFMAPS (NFMAPS),
    .KER_SIZE_X (KER_SIZE_X),
    .KER_SIZE_Y (KER_SIZE_Y)
) dut (
    .input_act (features),
    .output_act (labels)
);

// Clock
initial clk = 0;
always begin
    #10 clk = ~clk;
end

// Record outputs
always @(posedge clk) begin
    if (rstn && valid) begin
        $fwrite(output_fd, "%b\n", labels);
    end
end

initial begin
    // Initialize module inputs
    valid = 0;
    features = '0;
    #20 @(negedge clk);
    rstn = 1;

    // Send input vector
    input_fd = $fopen("../features.txt", "r");
    output_fd = $fopen("labels.txt", "w");
    while (!$feof(input_fd)) begin
        @(negedge clk);
        $fscanf(input_fd, "%b\n", features);
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