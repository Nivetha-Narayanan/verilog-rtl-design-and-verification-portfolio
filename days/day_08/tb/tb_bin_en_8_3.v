`timescale 1ns / 1ps
module tb_bin_en_8_3();
reg [7:0] D;
wire [2:0] y;
integer i;
bin_en_8_3 uut(D,y);
initial begin
$display("D7 D6 D5 D4 D3 D2 D1 D0  | y2 y1 y0");
$monitor("%b            |     %b    ",D,y);
for(i=128;i>0;i=i>>1) begin
 D=i;#10;
end
$finish;
end
endmodule
