module mux_2_1(input s,i0,i1,output out);
assign out=s?i1:i0;
endmodule
