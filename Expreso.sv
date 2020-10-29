module Expreso (input logic clk, reset,
					 input int saldo,
					 output logic [3:0] s);

	int vuelto = saldo - 300; 
	logic [3:0] salida, flag;
	agua a(salida[0],flag[0]);
			
	always_ff @(posedge clk)
		if (clk) begin
			salida[0] = 1'b1; #2000;
			flag[0] = 1'b1; #3000;
			end
			
	assign s = {salida};
		 
endmodule 