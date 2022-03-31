module rom_tb ();	
	
	reg [7:0] addr;
	reg clk;
	wire [31:0] out;
	
	rom dut (addr, clk, out);
	
	initial begin
		clk = 0;
		addr = 8'h00;
	end
	
	always #5 clk <= ~clk;
	
	always begin
		#10 addr <= addr + 8'h04;
	end
	
	initial
		#200 $stop;

endmodule
