`timescale 1ns / 1ps
module rca #(width=4)(input [width-1:0] a,b,input cin,output [width-1:0] sum,output cout);
 wire [width:0] c;

assign c[0]=cin;
genvar i;
generate
for(i=0;i<width;i=i+1)
  begin:adder_gen
  full_adder inst(.a(a[i]),.b(b[i]),.cin(c[i]),.sum(sum[i]),.carry(c[i+1]));
  end
  endgenerate
  
  assign cout=c[width];
 
endmodule

 
