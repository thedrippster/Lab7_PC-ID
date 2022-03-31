module topLevel_tb ();

	reg clk, rst;
	
	wire [4:0] rd, rs1, rs2;
	wire [11:0] imm;
	
	topLevel dut (clk, rst, rd, rs1, rs2, imm);
	
	initial begin
		clk = 0;
		rst = 1;
	end
	
	always #5 clk <= ~clk;
	
	always begin
		#10 rst = 0;
		#100 rst = 1;
	end
	
	initial #200 $stop;
	
endmodule
