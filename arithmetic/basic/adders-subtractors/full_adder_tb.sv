module full_adder_tb();
  wire S,C;
  reg A,B,Z;
  integer i;

  full_adder h1(S,C,A,B,Z);

  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);

      for(i = 0; i < 8; i = i + 1)
        begin
          #5
          {A,B,Z} = i;
        end

      #5
      $finish;
    end

endmodule
