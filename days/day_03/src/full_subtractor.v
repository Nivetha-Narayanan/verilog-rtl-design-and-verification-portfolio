module full_subtractor(input a,b,bin,output diff,bout);
wire w1,w2,w3;
half_subtractor hs0(.a(a),.b(b),.diff(w1),.Bout(w2));
half_subtractor hs1(.a(w1),.b(bin),.diff(diff),.Bout(w3));
assign bout=w3|w2;
endmodule
 
