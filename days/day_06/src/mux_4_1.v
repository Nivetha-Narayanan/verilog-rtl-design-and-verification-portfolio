module mux_4_1(input [1:0] S,input i0,i1,i2,i3,output reg out);
always @(*) begin
case(S)
2'b00: out=i0;
2'b01: out=i1;
2'b10: out=i2;
2'b11: out=i3;
endcase

end
endmodule
