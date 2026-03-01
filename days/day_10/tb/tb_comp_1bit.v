`timescale 1ns / 1ps
module tb_com_1bit();
reg a,b; wire l,g,e;
comp_1bit uut(a,b,g,l,e);

initial begin
$display("Time| A B | G  L  E");
$monitor("%t | %b %b | %b %b %b",$time,a,b,g,l,e);
{a,b}=2'b00;#10;
{a,b}=2'b01;#10;
{a,b}=2'b10;#10;
{a,b}=2'b11;#10;
$finish;
end

endmodule
