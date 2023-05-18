module mid
(
	input CLK,
	input [3:0]btn,
	output reg [7:0]BCD,BCD1,BCD2,BCD3
);

	reg [3:0]num[0:9];
	reg [9:0]w;
	initial begin
           num[0] =8'h60;
           num[1] =8'h6D;
           num[2] =8'h79;
           num[3] =8'h33;
           num[4] =8'h5B;
           num[5] =8'h1F;
           num[6] =8'h70;
           num[7] =8'h7F;
           num[8] =8'h73;
           num[9] =8'h77;
		   w = 10'd70;
   end

	reg [30:0] q;
	reg [1:0]btnr;
	reg [7:0]x; 
	reg [9:0]t;
	reg flag,flag1;
	
assign BCD1	<=num[a];
assign BCD	<=num[b];

	always @ (posedge CLK)
		q <= q + 1;


	always @ (posedge q[20])
	begin
		if(btn != 4'b1111)begin
			case(btn)
				4'b0001:	btnr <= 2'd1;
				4'b0010:	btnr <= 2'd2;
				4'b0100:	btnr <= 2'd0;
			endcase;
			if(t =< 10'd100)t <= t + 1;
		else begin
			flag <= 1'b0;t <= 0;
		end
		
		
		a <= x / 10;
		b <= x % 10;
	end
	
	always @ (posedge q[25])
	begin
		if(t < w && flag == 1'b0)begin
			case(btnr)
				2'd1:	x <= x + 1;
				2'd2:	x <= x - 1;
			endcase;
		end
		else if(t >= w)begin
			case(btnr)
				2'd0:	x <= 0;
				2'd1:	x <= x + 1;
				2'd2:	x <= x - 1;
			endcase;
		end
		else
	end
	

endmodule
