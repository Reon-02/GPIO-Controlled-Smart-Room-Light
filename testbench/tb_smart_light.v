`timescale 1ns/1ps

module tb_smart_light;

reg clk;
reg reset;
reg [7:0] sensor;
wire led;

// Instantiate the DUT (Device Under Test)
smart_light uut (
    .clk(clk),
    .reset(reset),
    .sensor(sensor),
    .led(led)
);

// Clock generation (10 ns period)
always #5 clk = ~clk;

initial begin
    // Generate VCD file for GTKWave
    $dumpfile("smart_light.vcd");
    $dumpvars(0, tb_smart_light);

    clk = 0;
    reset = 1;
    sensor = 150;

    #10 reset = 0;

    // Bright -> LED OFF
    sensor = 150;
    #20;

    // Dark -> LED ON
    sensor = 80;
    #20;

    // Still Dark -> LED ON
    sensor = 50;
    #20;

    // Bright -> LED OFF
    sensor = 170;
    #20;

    // Bright -> LED OFF
    sensor = 250;
    #20;

    // Dark -> LED ON
    sensor = 60;
    #20;

    $finish;
end

endmodule
