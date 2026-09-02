module carrylook_tb;

    wire [3:0] S;
    wire C4;
    reg [3:0] A, B;

    carrylook ca1(
        .S(S),
        .A(A),
        .B(B),
        .C4(C4)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);

        A = 4'b0111;
        B = 4'b0101;

        $monitor("A=%b B=%b | C4=%b S=%b", A, B, C4, S);

        #10;
        $finish;
    end

endmodule
