module FSMCafe (input logic clk, input logic reset, 
					input logic [2:0] x,
					output logic [3:0] s);
	
	int saldo;
	logic currentState;
	logic [3:0] flag;
	logic [3:0] aux;
	Expreso expreso(clk, reset, saldo, s);

			
	always_ff @(posedge clk or posedge reset) begin
		if (reset) begin
			aux = 4'b0000;
			saldo = 1'b0;
			end
		else if(x == 3'b001) begin
				saldo = saldo + 100;
				aux = saldo/100;
				end
		else if(x == 3'b010) //500
				saldo = saldo + 500;
		else if(x == 3'b011 && saldo >= 300) //expresso
				flag[0] = 1'b1;
	end
	
	assign s = aux;

endmodule 