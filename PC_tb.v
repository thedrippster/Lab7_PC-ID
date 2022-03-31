module PC_tb ();

	reg [7:0] in;
	reg clk, rst;
	
	wire [7:0] out;
	
	PC dut (in, clk, rst, out);
	
	initial begin
		clk = 0;
		rst = 0;
		in = 8'b0;
	end
	
	always #5 clk <= ~clk;
	
	always #8 in <= in + 8'd10;
	
	always begin
		#50 rst <=1;
		#10 rst <=0;
	end
	
	initial #200 $stop;
	
endmodule
