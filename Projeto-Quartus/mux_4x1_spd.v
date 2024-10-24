/*
	Multiplexador responsável pelo dígito da Ação e da Velocidade
	.
	.
	.
*/

module mux_4x1_spd (
	 input sel,        // Seletor de entrada
    output [6:0] out   // Saída do MUX
);
	
	 wire [6:0] in0, in1;

	 // Gerando os sinais de seleção para as portas AND
	 
    wire not_sel;
	 
    not not_sel0 (not_sel, sel);

    // Passando as entradas através das portas AND
	 
    wire [6:0] out0, out1;
	 
    and #(1) and_gate0 (out0[0], in0[0], not_sel);
    and #(1) and_gate1 (out0[1], in0[1], not_sel);
    and #(1) and_gate2 (out0[2], in0[2], not_sel);
    and #(1) and_gate3 (out0[3], in0[3], not_sel);
	 and #(1) and_gate4 (out0[4], in0[4], not_sel);
    and #(1) and_gate5 (out0[5], in0[5], not_sel);
	 and #(1) and_gate6 (out0[6], in0[6], not_sel);


    and #(1) and_gate7 (out1[0], in1[0], sel);
    and #(1) and_gate8 (out1[1], in1[1], sel);
    and #(1) and_gate9 (out1[2], in1[2], sel);
    and #(1) and_gate10 (out1[3], in1[3], sel);
	 and #(1) and_gate11 (out1[4], in1[4], sel);
    and #(1) and_gate12 (out1[5], in1[5], sel);
    and #(1) and_gate13 (out1[6], in1[6], sel);

    // Combinando as saídas das portas AND com uma porta OR
	 
    or #(1) or_gate0 (out[0], out0[0], out1[0]);
    or #(1) or_gate1 (out[1], out0[1], out1[1]);
    or #(1) or_gate2 (out[2], out0[2], out1[2]);
    or #(1) or_gate3 (out[3], out0[3], out1[3]);
	 or #(1) or_gate4 (out[4], out0[4], out1[4]);
	 or #(1) or_gate5 (out[5], out0[5], out1[5]);
	 or #(1) or_gate6 (out[6], out0[6], out1[6]);
	 
	 dis7segdec dis_act_inst (
		.S_a(in0[0]),
		.S_b(in0[1]),
		.S_c(in0[2]),
		.S_d(in0[3]),
		.S_e(in0[4]),
		.S_f(in0[5]),
		.S_g(in0[6])
	);

	dis7segdecspd dis_spd_inst (
		.S_a(in1[0]),
		.S_b(in1[1]),
		.S_c(in1[2]),
		.S_d(in1[3]),
		.S_e(in1[4]),
		.S_f(in1[5]),
		.S_g(in1[6])
	);

endmodule