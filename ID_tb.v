module ID_tb ();
	
	reg [31:0] inst;
	
	wire [4:0] rd, rs1, rs2;
	wire [11:0] imm;
	
	ID dut (inst, rd, rs1, rs2, imm);
	
	initial begin
		inst = 32'b0;
	end
	
	always begin
		#10 inst <= 32'h00f507b3;
		#10 inst <= 32'h00450693;
		#10 inst <= 32'h00100713;
		#10 inst <= 32'h00068613;
		#10 inst <= 32'h00070793;
	end
	
	initial #50 $stop;
	
endmodule
