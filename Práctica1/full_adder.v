//Full-Adder usando los operadores de concatenación

module fa(output wire c_out, sum, input wire a, b, c_in);

//Asignación de bit más significativo a c_out
	assign {c_out, sum} = a + b + c_in;

endmodule

//Forma conductual
// module fa(output reg c_out, sum, input wire a, b, c_in);

// 	always @(a, b, c_in)
// 		sum = a ^ b ^ c_in;
// 		c_out = (a & b) | (b & c_in) | (a & c_in);

// endmodule