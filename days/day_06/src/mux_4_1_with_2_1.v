`timescale 1ns / 1ps
module mux_4_1_with_2_1(input [1:0] S,input i0,i1,i2,i3,output  out);
wire y0,y1;
mux_2_1 m1(.s(S[0]),.i0(i2),.i1(i3),.out(y1));
mux_2_1 m2(.s(S[0]),.i0(i0),.i1(i1),.out(y0));
mux_2_1 m3(.s(S[1]),.i0(y0),.i1(y1),.out(out));
endmodule

