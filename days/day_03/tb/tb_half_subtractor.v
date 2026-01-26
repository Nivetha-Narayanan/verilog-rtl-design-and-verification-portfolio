`timescale 1ns / 1ps
module tb_half_subtractor();
reg a,b;
wire bout,diff;
integer i;
half_subtractor uut(.a(a),.b(b),.Bout(bout),.diff(diff));
initial
begin
for(i=0;i<4;i=i+1) begin
{a,b}=i;
#5;
 if({bout,diff}==(a-b))begin
 $display("%0t  a=%b  b=%b  ---> diff=%b , Bout=%b --->Pass",$time,a,b,diff,bout);
 end 
 else begin 
 $display("%0t  a=%b  b=%b  ---> diff=%b , Bout=%b --->Fail",$time,a,b,diff,bout);
 $display("Expected (bout,diff)=%b",a-b);
 end
 end
 $finish;
 end
endmodule
