 `timescale 1ns / 1ps
module tb_rca_adder();
     parameter W=4;
    reg [W-1:0] a, b;
    reg cin;
    wire [W-1:0] sum;
    wire  carry;
    integer i; 
    
    rca #(.width(W))uut ( .a(a), .b(b), .cin(cin),.sum(sum), .cout(carry));

    initial begin
        $display("Time\t A B Cin | Sum Carry");
        $display("----------------------------");
        
        for (i = 0; i < 10; i = i + 1) begin
            a=$urandom_range(0,15); 
            b=$urandom_range(0,15);
            cin=$urandom_range(0,1);
            #10;             
            if ({carry, sum} === (a + b + cin)) begin
                $display("%0t\t %d %d %b   |  %d    %b  -- PASS", $time, a, b, cin, sum, carry);
            end else begin
                $display("%0t\t %d %d %b   |  %d    %b  -- FAIL! expected %d", $time, a, b, cin, sum, carry,(a+b+cin));
            end
        end

        $display("----------------------------");
        $display("All test cases completed.");
        $finish;
    end
endmodule
