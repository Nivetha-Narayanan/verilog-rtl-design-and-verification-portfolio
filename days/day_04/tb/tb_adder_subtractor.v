`timescale 1ns / 1ps

module tb_adder_subtractor;
    parameter WIDTH = 4;
    reg [WIDTH-1:0] A, B;
    reg mode;
    wire [WIDTH-1:0] Sum;
    wire CarryOut;

    adder_subtractor #(.WIDTH(WIDTH)) uut (.A(A),.B(B),.mode(mode),.Sum(Sum),.CarryOut(CarryOut));

    initial begin
        $display("---------------------------------------");
        $display(" Mode |  A  |  B  | Sum/Diff | CarryOut");
        $display("---------------------------------------");
        mode = 0;
        A = 4; B = 3; #10;
        $display("  ADD | %d | %d |    %d     |    %b", A, B, Sum, CarryOut);
        $display("  ADD | %d | %d |    %d     |    %b", A, B, Sum, CarryOut);
        mode = 1;
        A = 10; B = 4; #10;
        $display("  SUB | %d | %d |    %d     |    %b", A, B, Sum, CarryOut);
        A = 5; B = 9; #10;
        $display("  SUB | %d | %d |    %d    |    %b", A, B, Sum, CarryOut);
        $display("---------------------------------------");
        $finish;
    end

endmodule
