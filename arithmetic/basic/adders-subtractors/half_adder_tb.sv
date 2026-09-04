module half_adder_tb();
  wire S,C;
  reg A,B;

  half_adder h1(S,C,A,B);

  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);

      A = 1'b0;
      B = 1'b0;

      #5
      A = 1'b0;
      B = 1'b1;

      #5
      A = 1'b1;
      B = 1'b1;

      #5
      A = 1'b1;
      B = 1'b0;

      #5
      $finish;
    end

endmodule
