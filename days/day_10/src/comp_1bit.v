module comp_1bit(input a,b,output g,l,e);
         assign g=a&~b;
         assign l=~a&b;
         assign e=~(a^b);

endmodule
