module top (F, A, B, C, D);
    output F;
    input A, B, C, D;
    wire nA, nC, w0, w1, w2, w3;

    not u0 (nA, A);
    not u1 (nC, C);

    and u2 (w0, nA, nC);
    and u3 (w1, nA, B);
    and u4 (w2, B, D);
    and u5 (w3, A, C, D);

    or u6 (F, w0, w1, w2, w3);

endmodule