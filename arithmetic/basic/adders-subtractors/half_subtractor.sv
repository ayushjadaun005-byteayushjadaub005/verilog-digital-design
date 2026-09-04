module half_subt(A,B,DIF,BORROW);
input wire A,B;
output wire DIF,BORROW;
  assign DIF = (A ^ B);
  assign BORROW  = ((~A) & B);
endmodule
