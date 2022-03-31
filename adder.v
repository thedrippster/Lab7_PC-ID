module adder (in, clk, rst, out);

	input [7:0] in;
	input clk, rst;
	
	output reg [7:0] out;
	
	always @ (posedge clk) begin
		if (rst)
			out = 8'b0;
		else
			out = in +8'd4;
	end
	
endmodule
