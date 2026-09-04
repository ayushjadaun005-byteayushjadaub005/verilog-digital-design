module full_subt_tb();
  wire DIFF,BORROW;
  reg A,B,C;
  full_sub fs(A,B,C,BORROW,DIFF);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      A=1'b0;B=1'b0;C=1'b0;
  #10 A=1'b0;B=1'b0;C=1'b1;
  #10 A=1'b0;B=1'b1;C=1'b0;
  #10 A=1'b0;B=1'b1;C=1'b1;
  #10 A=1'b1;B=1'b0;C=1'b0;
  #10 A=1'b1;B=1'b0;C=1'b1;
  #10 A=1'b1;B=1'b1;C=1'b0;
  #10 A=1'b1;B=1'b1;C=1'b1;
      $finish;
    end
endmodule
