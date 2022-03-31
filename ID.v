module ID (inst, rd, rs1, rs2, imm);
	
	input [31:0] inst;
	
	output [4:0] rd, rs1, rs2;
	output [11:0] imm;
	
	assign rd = inst[11:7];
	assign rs1 = inst[19:15];
	assign rs2 = inst[24:20];
	assign imm = inst[31:20];
	
endmodule
