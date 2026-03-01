`timescale 1ns / 1ps
module tb_mux_4_1();
reg [1:0]sel;
reg [3:0]i;
wire out;
mux_4_1_with_2_1 uut(sel,i[0],i[1],i[2],i[3],out);
initial begin
$display("Sel|  i0 | i1 | i2 | i4 | out ");
$monitor("%b |  %b  |  %b |  %b  |  %b | %b ",sel,i[0],i[1],i[2],i[3],out);
i=4'b1011;
sel=2'b00;#10;
sel=2'b01;#10;
sel=2'b10;#10;
sel=2'b11;#10;
i=4'b0001;
sel=2'b00;#10;
sel=2'b01;#10;
sel=2'b10;#10;
sel=2'b11;#10;
$finish;
end
endmodule

