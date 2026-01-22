`timescale 1ns / 1ps

module basicgate (input a, b, output andg, org, notg, exorg, enorg, nandg, norg);

// in case Dataflow model
// assign {notg, andg, nandg, org, norg, exorg, enorg} = {~a, a&b, ~(a&b), a|b, ~(a|b), a^b, ~a^b};

// Below is Gate level model
not g3 (notg, a);
and g1 (andg, a, b);
nand g6 (nandg, a, b);
or g2 (org, a, b);
nor g7 (norg, a, b);
xor g4 (exorg, a, b);
xnor g5 (enorg, a, b);

endmodule

