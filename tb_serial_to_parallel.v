module tb_serial_to_parallel;

reg clk;
reg reset;
reg serial_in;
wire [7:0] parallel_out;

serial_to_parallel uut (
    .clk(clk),
    .reset(reset),
    .serial_in(serial_in),
    .parallel_out(parallel_out)
);


always #5 clk = ~clk;

initial begin
    
    $dumpfile("waves.vcd");
    $dumpvars(0, tb_serial_to_parallel);
    
    
    clk = 0;
    reset = 1;
    serial_in = 0;

    #10 reset = 0;

    
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;

    #50 $finish;
end

endmodule