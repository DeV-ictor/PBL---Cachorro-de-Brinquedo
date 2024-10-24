/*
	Multiplexador responsável por alternar o dígito ativo
	.
	.
	.
*/

module mux_4x1 (
  input sel,
  input in0,
  input in1,
  output out
);

  // Declaração de fios internos para as portas AND e OR
  wire and_out0, and_out1;

  // Portas AND para selecionar a entrada apropriada
  and #(1) and_gate0 (and_out0, in0, ~sel);
  and #(1) and_gate1 (and_out1, in1, sel);

  // Porta OR para combinar as saídas das portas AND
  or #(1) or_gate (out, and_out0, and_out1);

endmodule