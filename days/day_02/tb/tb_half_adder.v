`timescale 1ns / 1ps
module tb_ha();
reg a,b;
wire Sum,Carry;
 
half_adder uut(.a(a),.b(b),.sum(Sum),.cout(Carry));
initial
begin 
$monitor("time=%0t    a=%b b=%b   sum=%b Carry=%b",$time,a,b,Sum,Carry);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule
