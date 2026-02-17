module top (F, b, clk);

//input + output
input b, clk;
output F;

//flip flops
reg A, B;

//initialize
initial begin
    A = 1'b0;
    B = 1'b0;
end
// finite state machine
always@(posedge clk) begin
    A <= !A & B | B & !b;
    B <= !A & b | B & !b;
end

//output eq.
assign F = !A & B;

endmodule