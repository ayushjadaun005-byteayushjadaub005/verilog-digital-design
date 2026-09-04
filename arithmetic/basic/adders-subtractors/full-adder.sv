module full_adder(S,C,A,B,Z);
  input A,B,Z;
  output S,C;

  assign S = (A ^ B ^ Z);
  assign C = ((A & B) | (Z & (A ^ B)));

endmodule
