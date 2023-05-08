module mid
(
	input CLK,
	input [3:0]btn,
	output reg [7:0]BCD,BCD1,BCD2,BCD3
);


	reg [30:0] q;
	reg clk_3;
	reg [3:0]b;
	reg [7:0]x; 


	always @ (posedge CLK)
	begin
		q <= q + 1;
		if(btn != 4'b1111)
			b<=btn;
	end

	
	always @ (posedge q[24])
	begin
		if(x == 8'b00000010 || x == 8'd0)
			x <= 8'b10000000;
		else
			x <= x>>1;
		
		case(b)
			4'b1101:begin BCD<=~0;BCD1<=~x;BCD2<=~0;BCD3<=~0;end
			4'b1011:begin BCD<=~0;BCD1<=~0;BCD2<=~x;BCD3<=~0;end
			4'b0111:begin BCD<=~0;BCD1<=~0;BCD2<=~0;BCD3<=~x;end
			default:begin BCD<=~x;BCD1<=~0;BCD2<=~0;BCD3<=~0;end
		endcase
	end

endmodule
