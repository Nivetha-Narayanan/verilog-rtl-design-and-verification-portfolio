`timescale 1ns / 1ps
module tb_mux_2_1();
reg s,i0,i1;
wire out;
mux_2_1 uut(s,i0,i1,out);
initial begin
$display("Sel|  i0 | i1 | out ");
$monitor("%b |  %b  |  %b | %b ",s,i0,i1,out);
s=0;i0=0;i1=1;#10;
s=1; #10;
$finish;
end

endmodule


