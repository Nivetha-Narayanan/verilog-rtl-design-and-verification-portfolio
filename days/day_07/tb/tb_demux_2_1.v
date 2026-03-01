`timescale 1ns / 1ps
module tb_demux_1_2();
reg i,sel;
wire [1:0] y;
demux_1_2 uut(i,sel,y);
initial begin
$display("i  |sel  | y1 y0");
$monitor("%b | %b  | %b",i,sel,y);
i=0;
sel=0;#10;
sel=1;#10;
i=1;
sel=0;#10;
sel=1;#10;
$finish;
end
endmodule

