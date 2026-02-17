module top(F, A, B, C); 

    //inputs
    input A;
    input B;    // its better to list them all out because it makes it easier in hard problems
    input C;

    //outputs
    output F;

    //wires
    wire wnA;  // (wire NOT A)
    wire wBC;  // (wire BC)

    //Logic gates
    not U0 (wnA, A);
    and U1 (wBC, B, C);
    or U2 (F, wnA, wBC);


endmodule