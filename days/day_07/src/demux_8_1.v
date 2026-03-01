module demux_1_8(input i,input [2:0] S,output [7:0] y);
wire w1,w2; 

demux_1_2 m1(.i(i),.sel(S[2]),.y({w2,w1}));
demux_1_4 m2(.i(w1),.sel(S[1:0]),.y(y[3:0]));
demux_1_4 m3(.i(w2),.sel(S[1:0]),.y(y[7:4]));
endmodule
