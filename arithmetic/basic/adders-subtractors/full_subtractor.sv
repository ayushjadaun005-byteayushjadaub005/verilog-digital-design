module full_sub(A,B,C,BORROW,DIFF);
input wire A,B,C;
output DIFF,BORROW;

assign DIFF = (A ^ B ^ C);
assign BORROW = (((~A)& B) | (B & C) | (C & (~A)));

endmodule
                   
