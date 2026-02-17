`include "verilog2.v"

module testbench;
wire F;
reg A, B, C, D;
top UUT(F, A, B, C, D);
reg [4:0] counter = 4'd0;
reg [4:0] truthtable [0:15];
initial begin
    counter = 0;
    $readmemb("truthtable.mem", truthtable);
    for (integer i = 0; i < 16; i = i + 1) begin
        {A, B, C, D} = truthtable[i][4:1]; #1;
        if (F == truthtable[i][0]) begin
            counter = counter + 1;
        end else begin
            $display ("(%d) %b %b %b %b | %b (%b)", i[3:0], A, B, C, D, F, truthtable[i][0]);

        end
    end
    $display("test ended with %d of 16 passes", counter);
end

endmodule