`include "Verilog3.v"

module testbench;

    reg b, clk;
    wire F;
    top UUT (F, b, clk);

    //run clock
    always begin
        clk = !clk; #1;
    end

    //test execution
    initial begin
        clk = 0; #1;
        $dumpfile("Verilog3.vcd");
        $dumpvars(0, testbench);
        b = 1'b0; #10;
        b = 1'b1; #10;
        $finish;
    end

endmodule