// Quartus II Verilog Template
// One-bit wide, N-bit long shift register

module clkmake

(
	input clk,
	
	output reg clk3HZ
);

	reg [35:0]q;

	
	always @ (posedge clk)
	begin
		q <= q + 1;
		clk3HZ <= q[25];
	end


	
endmodule
