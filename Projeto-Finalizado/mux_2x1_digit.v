/*
	Multiplexador responsável por alternar o dígito ativo
	.
	.
	.
*/

module mux_2x1_digit (
  input sel,
  input in0,
  input in1,
  output digit1_out, digit4_out
);

  // Declaração de fios internos para as portas AND e OR
  
  wire not_sel;
  
  not sel_inv (not_sel, sel);

  // Portas AND para selecionar a entrada apropriada
  and #(1) and_gate0 (digit1_out, in0, not_sel);
  and #(1) and_gate1 (digit4_out, in1, sel);

  // Porta OR para combinar as saídas das portas AND

endmodule