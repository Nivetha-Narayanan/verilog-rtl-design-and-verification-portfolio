`timescale 1ns / 1ps
module tb_demux_1_8();
reg i;
reg [2:0] sel;
wire [7:0] y;
integer l; 
demux_1_8 uut(i,sel,y);
initial begin
$display("i  |sel  | y7 y6 y5 y4 y3 y2 y1 y0 ");
$monitor("%b | %b  | %b",i,sel,y);
i=0;
for(l=0;l<8;l=l+1) begin 
 sel=l;#10;
 end
i=1;
for(l=0;l<8;l=l+1) begin
 sel=l;#10;
 end
$finish;
end
endmodule

