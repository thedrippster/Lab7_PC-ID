module rom (addr, clk, out);
	input [7:0] addr;
	input clk;
	output reg [31:0] out;
	
	always @ (posedge clk) begin
		case (addr)
			8'h00 : out = 32'h00450693; //addi a3, a0, 4
			8'h04 : out = 32'h00100713; //addi a4, x0, 1
			
			8'h08 : out = 32'h00b76463; //bltu a4, a1, 10
			
			8'h0c : out = 32'h00008067; //jalr x0, x1, 0
			
			8'h10 : out = 32'h0006a803; //lw   a6, 0(a3)
			8'h14 : out = 32'h00068613; //addi a2, a3, 0
			8'h18 : out = 32'h00070793; //addi a5, a4, 0
			
			8'h1c : out = 32'hffc62883; //lw   a7, -4(a2)
			8'h20 : out = 32'h01185a63; //bge  a6, a7, 34
			8'h24 : out = 32'h01162023; //sw   a7, 0(a2)
			8'h28 : out = 32'hfff78793; //addi a5, a5, -1
			8'h2c : out = 32'hffc60613; //addi a2, a2, -4
			8'h30 : out = 32'hfe0796e3; //bne  a5, x0, 1c
			
			8'h34 : out = 32'h00279793; //slli a5, a5, 0x2
			8'h38 : out = 32'h00f507b3; //add  a5, a0, a5
			8'h3c : out = 32'h0107a023; //sw   a6, 0(a5)
			8'h40 : out = 32'h00170713; //addi a4, a4, 1
			8'h44 : out = 32'h00468693; //addi a3, a3, 4
			8'h48 : out = 32'hfc1ff06f; //jal  x0, 8
		endcase
	end
	
endmodule
