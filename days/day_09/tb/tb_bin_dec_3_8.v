`timescale 1ns / 1ps
module tb_bin_dec_3_8();
reg [2:0] y;
wire [7:0] D;
integer i;
bin_dec_3_8 uut(y,D);
initial begin
$display("bin(y2 y1 y0) | decoded (d7 d6 d5 d4 d3 d2 d1 d0)");
$monitor("%b            | %b           ",y,D);
for (i=0;i<8;i=i+1) begin
 y=i;#10;
end
$finish;
end
endmodule
