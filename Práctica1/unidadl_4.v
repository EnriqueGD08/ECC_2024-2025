//Unidad lógica de 4 bits de forma estructural

module ul4(output wire[3:0] Out, input wire[3:0] A, input wire[3:0] B, input wire[1:0] S);

//Se utilizan 4 celdas lógicas que trabajan con 1 bit individual para hacer la operación lógica con los 4 bits
	celda1 c1(Out[0], A[0], B[0], S);
	celda1 c2(Out[1], A[1], B[1], S);
	celda1 c3(Out[2], A[2], B[2], S);
	celda1 c4(Out[3], A[3], B[3], S);

endmodule