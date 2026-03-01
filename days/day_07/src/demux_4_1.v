module demux_1_4(input i,input [1:0] sel,output [3:0] y);
assign y[0]=i&(~sel[1]&~sel[0]);
assign y[1]=i&(~sel[1]&sel[0]);
assign y[2]=i&(sel[1]&~sel[0]);
assign y[3]=i&(sel[1]&sel[0]);
endmodule
