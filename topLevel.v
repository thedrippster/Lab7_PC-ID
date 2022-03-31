module topLevel (clk, rst, rd, rs1, rs2, imm);

	input clk, rst;
	
	output [4:0] rd, rs1, rs2;
	output [11:0] imm;
	
	wire [7:0] pcin, pcout;
	wire [31:0] inst;
	
	PC d0 (pcin, clk, rst, pcout);
	
	adder d1 (pcout, clk, rst, pcin);
	
	rom d2 (pcout, clk, inst);
	
	ID d3 (inst, rd, rs1, rs2, imm);
	
endmodule
