//ALU con la unión de los componentes

module alu(output wire[3:0] R, output wire zero, carry, sign, input wire[3:0] A, B, input wire c_in, input wire[2:0] Op);

//Buses necesarios para unir los componentes
	wire[3:0] Op1, Op2, resultado_sum, resultado_log;

//módulos creados anteriormente conectados como en el dibujo de la práctica
	preprocess preprocesador(Op1, Op2, A, B, Op);
	sum4 sumador(resultado_sum, carry, Op1, Op2, c_in);
	ul4 unidad_logica(resultado_log, Op1, Op2, Op[1:0]);
	mux2_4 multiplexor(R, resultado_sum, resultado_log, Op[2]);

//flags cero y de signo (el de carry ya está conectado al sumador)
	assign zero = (R == 4'b0000) ? 1 : 0;
	assign sign = R[3];

endmodule