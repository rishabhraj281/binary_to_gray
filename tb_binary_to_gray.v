module tb_binary_gray;
    reg  [3:0] b;
    wire [3:0] g;


    binary_gray dut (.b(b),.g(g));

    initial begin
	$printtimescale();
	$display("binary \tgray");    
        $monitor("%b\t%b", b, g);

        b = 4'b0000; #10;
        b = 4'b0001; #10;
        b = 4'b0011; #10;
        b = 4'b0110; #10;

        #10;
        $finish;
    end

endmodule
