
module HW12
(
	input CLK,
	input rst,sw,
	output reg [7:0]led
);

	reg c;
	reg [35:0]q;
	reg clkHZ;
	
	always @ (posedge CLK)
	begin
		q <= q + 1;
		clkHZ <= q[24];
	end
	always @ (posedge clkHZ)
	begin
		if (rst == 0)
		begin
			c<=0;
			led <= 8'b10000000;
		end
		else begin
			if (c == 0)begin
			led <= 8'b10000000;
				c <= 1;end
			else
			begin
				if(sw == 0)
					led <= {led[6:0],led[7]};
				else
					led <= {led[0],led[7:1]};
			end
		end
			
		
	end



endmodule
