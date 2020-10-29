module FMStb();

	logic clk, reset;
	logic [2:0] x;
	logic [3:0] s;
	
	FMSCafe mCafe (clk, reset, x, s);
	
	always begin 
	clk = 1; #10;
	clk = 0; #10;
	end
	
	initial begin
	reset = 0;
	
	x = 3'b001;
	x = 3'b001;
	x = 3'b001;
	
	x = 3'b011;
	
	end
endmodule
