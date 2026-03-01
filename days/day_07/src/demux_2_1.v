module demux_1_2 (input i,sel,output [1:0] y);
assign y[0]=i&(~sel);
assign y[1]=i&sel;
endmodule
