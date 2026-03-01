module bin_dec_3_8(input [2:0] y,output reg [7:0] D);
always @(y) begin
case(y)
3'b000:D=8'b0000_0001;
3'b001:D=8'b0000_0010;
3'b010:D=8'b0000_0100;
3'b011:D=8'b0000_1000;
3'b100:D=8'b0001_0000;
3'b101:D=8'b0010_0000;
3'b110:D=8'b0100_0000;
3'b111:D=8'b1000_0000;
default:D=8'b0000_0000;
endcase
end

endmodule
