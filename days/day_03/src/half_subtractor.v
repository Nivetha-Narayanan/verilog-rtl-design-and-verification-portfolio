module half_subtractor(input a,b,output diff,Bout);
assign diff=a^b;
assign Bout=~a&b;
endmodule
