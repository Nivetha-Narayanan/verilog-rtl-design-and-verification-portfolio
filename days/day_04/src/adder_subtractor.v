module adder_subtractor #(parameter WIDTH = 4) ( input [WIDTH-1:0] A,B, input mode,output [WIDTH-1:0] Sum,output CarryOut,Overflow);
    wire [WIDTH:0] carry;   
    wire [WIDTH-1:0] xor_B;

    assign carry[0] = mode; 
    assign CarryOut = carry[WIDTH];
    
    assign Overflow = carry[WIDTH] ^ carry[WIDTH-1];

    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin : fa_loop
            assign xor_B[i] = B[i] ^ mode;
            full_adder fa (.a(A[i]),.b(xor_B[i]),.cin(carry[i]),.sum(Sum[i]),.cout(carry[i+1]));
        end
    endgenerate

endmodule
