module FSMCafe (input logic clk, input logic reset, 
					input logic [2:0] x,
					output logic [3:0] s);
	
	int saldo;
	logic currentState;
	Expreso expreso(clk, reset, s, saldo);

			
	always_ff @(posedge clk or posedge reset)
		
		if (reset) s = 4'b0000; assign saldo = 0;
		
		else
		if(x == 3'b001) saldo = saldo + 100; assign s = saldo / 100;
		
		if(x == 3'b010) //500
			saldo = saldo + 500;
			assign s = saldo / 100;
		if(x == 3'b011 && saldo >= 300) //expresso
			currentState = expreso; 
				
			
endmodule 