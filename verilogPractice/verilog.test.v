`include "verilog1.v"

module testbench;

// reg = inputs

reg A;
reg B;
reg C;

//wire = outputs

wire F;

// unit under test

top UUT(F, A, B, C);

//test

initial begin
    
    A = 0;
    B = 0;
    C = 0;
    #1;
    $display("A B C | F");
    $display("------|--");
    $display("%b %b %b | %b", A, B, C, F);
    for (integer i = 0; i < 8; i = i + 1) begin
        {A, B, C} = i[2:0]; #1;
        $display("%b %b %b | %b", A, B, C, F);
    end
end
endmodule