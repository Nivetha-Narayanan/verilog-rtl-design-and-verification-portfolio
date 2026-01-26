`timescale 1ns / 1ps
module tb_full_subtractor();
reg a,b,bin;
wire bout,diff;
integer i;
full_subtractor uut(.a(a),.b(b),.bin(bin),.bout(bout),.diff(diff));
initial
begin
for(i=0;i<8;i=i+1) begin
{a,b,bin}=i;
#5;
 if({bout,diff}==(a-b-bin))begin
 $display("%0t  a=%b  b=%b  bin=%b---> diff=%b , Bout=%b --->Pass",$time,a,b,bin,diff,bout);
 end 
 else begin 
 $display("%0t  a=%b  b=%b bin=%b ---> diff=%b , Bout=%b --->Fail",$time,a,b,bin,diff,bout);
 $display("Expected (bout,diff)=%b",a-b-bin);
 end
 end
 $finish;
 end
endmodule
