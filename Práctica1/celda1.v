//Celda lógica calcula sobre los bits de "a" y "b" las operaciones lógicas and, or, xor e inversión
//Los valores de S son 00, 01, 10, 11 respectivamente

module celda1(output wire out, input wire a, b, input wire[1:0] S);

//Buses necesarios para las conexiones internas
	wire s1, s2, s3, s4;

//Operaciones lógicas de 1 bit con un bit
	and andAB (s1, a, b);
	or orAB (s2, a, b);
	xor (s3, a, b);
	not invA (s4, a);

//multiplexor por el que se determina cúal operación es la que saldrá por el bus de salida
	mux4_1 mux(out, s1, s2, s3, s4, S);
		
endmodule

//Forma conductual
// module celda1(output reg out, input wire a, b, input wire[1:0] S);
// 	always @(a or b or S)
// 		case (S)
// 			2'b00: out = a & b;
// 			2'b01: out = a | b;
// 			2'b10: out = a ^ b;
// 			2'b11: out = ~a;
// 		endcase
// endmodule
