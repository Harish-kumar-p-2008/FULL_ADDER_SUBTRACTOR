module deexp3(a,b,bin,diff,borrow);
input a,b,bin;
output diff,borrow;
xor (diff,a,b,bin);
wire w1,w2;
and (w1,~a,b);
and (w2,~(a^b),bin);
or (borrow,w1,w2);
endmodule