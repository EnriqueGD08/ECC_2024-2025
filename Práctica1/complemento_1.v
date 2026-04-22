//Módulo que calcula el negativo de un número en complemento a 1
//Se pasa una señal de control para elegir si se modifica el dato o no

module compl1(output wire[3:0] Out, input wire[3:0] Inp, input wire cp1);

//Una puerta lógica xor para cada bit de la entrada con la opción de entrada
	xor xor0(Out[0], Inp[0], cp1);
	xor xor1(Out[1], Inp[1], cp1);
	xor xor2(Out[2], Inp[2], cp1);
	xor xor3(Out[3], Inp[3], cp1);

endmodule

// module compl1(output wire[3:0] Out, input wire[3:0] Inp, input wire cp1);
// 	assign Out = cp1 ? ~Inp : Inp;
// endmodule

//Forma conductual
// module compl1(output reg[3:0] Out, input wire[3:0] Inp, input wire cp1);

// 	always (Inp, cp1)
// 		if (cp1 == 1'b1)
// 			Out = ~Inp;
// 		else
// 			Out = Inp;

// endmodule


