module adder_tb ();

	reg [7:0] in;
	reg clk, rst;
	
	wire [7:0] out;
	
	adder dut (in, clk, rst, out);
	
	initial begin
		in = 8'b0;
		clk = 0;
		rst = 0;
	end
	
	always #5 clk <= ~clk;
	
	always #10 in <= in + 8'd4;
	
	always begin
		#50 rst <=1;
		#10 rst <=0;
	end
	
	initial #150 $stop;
	
endmodule
