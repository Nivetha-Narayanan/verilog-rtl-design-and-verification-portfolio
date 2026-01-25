`timescale 1ns / 1ps

module tb_fa();
reg a,b,cin;
wire sum,cout;
integer i;

full_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(cout));

initial begin
  $display("Time  | A    B    Cin  |  Sum   Carry");
 for (i=0;i<8;i=i+1)begin
   {a,b,cin}=i;
   #5;
   if({cout,sum}==(a+b+cin)) begin
    $display("%0t  |    %b   %b   %b  |  %b   %b --Pass",$time,a,b,cin,sum,cout);
   end
  else begin
    $display("%0t  |    %b   %b   %b  |  %b   %b --Fail",$time,a,b,cin,sum,cout);
   end
   end
   $finish;
   end
endmodule
