module Expreso (input logic clk,
					 output s,
					 int saldo);

	int vuelto = saldo - 300; 
	logic salida [1:0];
			
	always_ff @(posedge clk)
		if (clk)
			agua(salida[0]); #2000
			cafe(salida[1]); #3000
			

	assign s = {salida}
		 
					 

endmodule