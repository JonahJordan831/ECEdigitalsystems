module top (F, b, clk);
// input + output

input b, clk;
output reg F;

//states

reg [1:0] state;

parameter [1:0] s0 = 2'b00;
parameter [1:0] s1 = 2'b01;
parameter [1:0] s2 = 2'b11;

//initialize
initial state = s0;
//finite state machine

always@(posedge clk) begin

    case (state)
        s0: begin
            F = 0;
            if (b) state = s1;
        end
        s1: begin
            F = 1;
            state = s2;
        end
        s2: begin
               
            F = 0;
            if (b) state = s0;
        end
    endcase

end

endmodule