`timescale 1ns / 1ps
module tb_pri_en_8_3();
reg [7:0] D;
wire [2:0] y;
pri_en_8_3 uut(D,y);
initial begin
$display("D7 D6 D5 D4 D3 D2 D1 D0  | y2 y1 y0");
$monitor("%b            |     %b    ",D,y);
repeat(8) begin
 D=$random;#10;
 end

$finish;
end
endmodule
