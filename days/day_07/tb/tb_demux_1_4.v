`timescale 1ns / 1ps
module tb_demux_1_4();
reg i;
reg [1:0] sel;
wire [3:0] y;
integer l; 
demux_1_4 uut(i,sel,y);
initial begin
$display("i  |sel  | y3 y2 y1 y0 ");
$monitor("%b | %b  | %b",i,sel,y);
i=0;
for(l=0;l<4;l=l+1) begin 
 sel=l;#10;
 end
i=1;
for(l=0;l<4;l=l+1) begin
 sel=l;#10;
 end
$finish;
end
endmodule

