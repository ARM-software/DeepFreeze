`timescale 1ns / 1ps

module tb;

int input_fd;
int output_fd;

logic clk;
logic rstn;
logic valid;
logic [48-1:0] input_act;
logic [4096-1:0] output_act;
logic ready;

top dut (.*);

// Clock
initial clk = 0;
always begin
    #10 clk = ~clk;
end

// Record outputs
always @(posedge clk) begin
    if (rstn && ready) begin
        $fwrite(output_fd, "%b\n", output_act);
        $display("output_act = %b\n", output_act);
    end
end

initial begin
    // Initialize module inputs
    valid = 0;
    rstn = 0;
    input_act = '0;
    #20 @(negedge clk);
    rstn = 1;

    // Open vector files
    input_fd = $fopen("/home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/test_vectors/input_act.vec", "r");
    output_fd = $fopen("/home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/test_vectors/output_act.vec", "w");

    // Feed input vector
    while (!$feof(input_fd)) begin
        @(negedge clk);
        $fscanf(input_fd, "%b\n", input_act);
        valid = 1;
    end

    // Wait for outputs to pass through
    for (int i = 0; i < 6272; ++i) begin
        @(negedge clk);
        input_act = '0;
        valid = 1;
    end

    @(negedge clk);
    valid = 0;
    #1000

    // Close vector files
    $fclose(input_fd);
    $fclose(output_fd);

    $finish();
end

endmodule
