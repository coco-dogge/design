module HW18
(
	input CLK,
	input [3:0]btn,
	output reg [7:0]BCD,BCD1,BCD2,BCD3
);

	reg [7:0]num[0:9];
	reg [9:0]w;
	initial begin
           num[0] =8'h03;
           num[1] =8'h9F;
           num[2] =8'h25;
           num[3] =8'h0D;
           num[4] =8'h99;
           num[5] =8'h49;
           num[6] =8'hC1;
           num[7] =8'h1F;
           num[8] =8'h01;
           num[9] =8'h19;
		   w = 10'd5;
   end

	reg [30:0] q;
	reg [1:0]btnr;
	integer x; 
	reg [9:0]t;
	reg flag,flag1;
	reg [3:0]a,b;
	


	always @ (posedge CLK)
	begin
		q <= q + 1;
		BCD1	<= num[a];
		BCD	<= num[b];
		BCD2	<= num[3];
		BCD3	<= num[4];
		//flag <= flag1;
	end

	
	
	always @ (posedge q[23])
	begin
	
	a <= (x / 10)%10;
	b <= x % 10;
	
	if(btn != 4'b1111)
		begin
			if(t < w)
				begin
					if(flag == 1'b0)
						begin
							case(btn)
								4'b1110:	x <= x + 1;
								4'b1101:	x <= x - 1;
							endcase;
							flag <= 1;
						end
					t <= t + 1;
				end
			else if(t == w)
				begin
					case(btn)
						4'b1110:	x <= x + 1;
						4'b1101:	x <= x - 1;
						4'b1011:	x <= 0;
					endcase;
				end
		end
	else if(btn == 4'b1111)
		begin 
			t <= 0;
			flag <= 0;
		end
	end
	

endmodule
