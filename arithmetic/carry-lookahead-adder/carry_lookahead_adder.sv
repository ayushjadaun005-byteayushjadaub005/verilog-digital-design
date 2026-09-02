module carrylook(
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] S,
    output C4
);

    wire P0, P1, P2, P3;
    wire G0, G1, G2, G3;
    wire C0, C1, C2, C3;

    // Initial carry
    assign C0 = 1'b0;

    // Propagation functions
    assign P0 = A[0] ^ B[0];
    assign P1 = A[1] ^ B[1];
    assign P2 = A[2] ^ B[2];
    assign P3 = A[3] ^ B[3];

    // Generate functions
    assign G0 = A[0] & B[0];
    assign G1 = A[1] & B[1];
    assign G2 = A[2] & B[2];
    assign G3 = A[3] & B[3];

    // Carry equations
    assign C1 = G0 | (P0 & C0);

    assign C2 = G1 |
                (P1 & G0) |
                (P1 & P0 & C0);

    assign C3 = G2 |
                (P2 & G1) |
                (P2 & P1 & G0) |
                (P2 & P1 & P0 & C0);

    assign C4 = G3 |
                (P3 & G2) |
                (P3 & P2 & G1) |
                (P3 & P2 & P1 & G0) |
                (P3 & P2 & P1 & P0 & C0);

    // Sum
    assign S[0] = P0 ^ C0;
    assign S[1] = P1 ^ C1;
    assign S[2] = P2 ^ C2;
    assign S[3] = P3 ^ C3;

endmodule
