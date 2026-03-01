module comp_4bit(input [3:0]a,b,output l,g,e);
wire [3:0] ll,gg,ee;
comp_1bit ab0(.a(a[0]),.b(b[0]),.l(ll[0]),.g(gg[0]),.e(ee[0]));
comp_1bit ab1(.a(a[1]),.b(b[1]),.l(ll[1]),.g(gg[1]),.e(ee[1]));
comp_1bit ab2(.a(a[2]),.b(b[2]),.l(ll[2]),.g(gg[2]),.e(ee[2]));
comp_1bit ab3(.a(a[3]),.b(b[3]),.l(ll[3]),.g(gg[3]),.e(ee[3]));

assign e=ee[0]&ee[1]&ee[2]&ee[3];
assign l=ll[3]|(ee[3]&ll[2])|(ee[3]&ee[2]&ll[1])|(ee[3]&ee[2]&ee[1]&ll[0]);
assign g=gg[3]|(ee[3]&gg[2])|(ee[3]&ee[2]&gg[1])|(ee[3]&ee[2]&ee[1]&gg[0]);

endmodule
