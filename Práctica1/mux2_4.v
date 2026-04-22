//Multiplexor de 2 entradas de cuatro bits a una salida de 4 bits

module mux2_4(output wire[3:0] Out, input wire[3:0] A, input wire[3:0] B, input wire s);

//Buses necesarios para las conexiones internas
	wire sn;
	wire [3:0] sa, sb;

//Módulos necesarios
	// Se le da el valor contrario de s a sn
	not inv1 (sn, s);
	// Un and para cada valor de entrada con sn y s respectivamente
	and andA[3:0] (sa, A, {4{sn}});
	and andB[3:0] (sb, B, {4{s}});
	//Como uno de los valores será 0, saldrá o A o B (B + 0 ^ A + 0)
	or salida[3:0] (Out, sa, sb);

endmodule

// module mux2_4(output wire[3:0] Out, input wire[3:0] A, input wire[3:0] B, input wire s);
// 	assign Out = s ? B : A;
// endmodule

//Forma conductual
// module mux2_4(output reg[3:0] Out, input wire[3:0] A, input wire[3:0] B, input wire s);

	// always @(A or B or s)
	// 	case (s)
	// 		1'b0: Out = A;
	// 		1'b1: Out = B;
	// 		default: Out = 3'bxxx;
	// 	endcase
// endmodule
