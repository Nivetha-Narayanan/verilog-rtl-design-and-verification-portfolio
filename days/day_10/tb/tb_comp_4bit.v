`timescale 1ns / 1ps
module tb_comp_4bit();
reg [3:0] a,b; wire l,g,e;
comp_4bit uut(a,b,l,g,e);
integer i;

initial begin
$display("Time| A B | G  L  E");
$monitor("%0t | %d %d | %b %b %b",$time,a,b,g,l,e);
for(i=0;i<10;i=i+1) begin
a=$random;b=$random;#10;
end
$finish;
end

endmodule
