`timescale 1ns / 1ps

module basicgate_tb;
reg a, b;
wire andg, org, notg, exorg, enorg, nandg, norg;

basicgate uut (a, b, andg, org, notg, exorg, enorg, nandg, norg);

initial begin
a = 0; b = 0; #10;
a = 0; b = 1; #10;
a = 1; b = 0; #10;
a = 1; b = 1; #10;
$finish;
end

endmodule

