//Preprocesador

module preprocess(output wire[3:0] AMod, output wire[3:0] BMod, input wire[3:0] A, input wire[3:0] B, input wire[2:0] Op);

//Buses para las conexiones internas
	//Opciones de las operaciones
	wire op2_B, cpl, add1, op1_A;
	//Resultados de las operaciones
	wire[3:0] salida_mux_1, salida_mux_2, n0, n1;

//Se le dan valores a los buses de opciones y a los de valor constante
	assign add1 = (Op[0]);
	assign op1_A = ((~Op[0] & Op[1]) | Op[2]);
	assign op2_B = ((~Op[0] & Op[1]) | Op[2]);
	assign cpl = ((~Op[2] & ~Op[1] & Op[0]));
	assign n0 = 4'b0000;
	assign n1 = 4'b0001;

//Se utlizan multiplexores para que salga el valor que se necesita para la operación
	mux2_4 mux_inicial(salida_mux_1, A, B, op2_B);
	mux2_4 mux_segundo(salida_mux_2, n0, n1, add1);
	mux2_4 mux_final(AMod, salida_mux_2, A, op1_A);
//Se calcula el complemento (o no) de lo que salga del multiplexor en el que entran A y B
	compl1 complemento(BMod, salida_mux_1, cpl);

endmodule