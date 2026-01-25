`timescale 1ns / 1ps

module full_adder (input a,b,cin,output sum,carry);

 wire w1,w2,w3;
half_adder a1(.a(a),.b(b),.cout(w2),.sum(w1));
half_adder a2(.a(w1),.b(cin),.cout(w3),.sum(sum));
assign carry=w2|w3;

endmodule 
