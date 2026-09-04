module half_subt_tb();
  wire DIF,BORROW;
  reg A,B;
  half_subt hs(A,B,DIF,BORROW);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      A = 1'b0;B = 1'b0;
  #10 A = 1'b0;B = 1'b1;
  #10 A = 1'b1;B = 1'b0;
  #10 A = 1'b1;B = 1'b1;
      $finish;
    end
endmodule
      
