module display (
	input Digit1, Digit4,
	output A, B, C, D, E, F, G, P, digit1_out, digit4_out
);

	wire clk_out_19;

	clockdivider clkdiv_inst (
		.clk_out_19(clk_out_19)
	);
	
	mux_2x1_act_spd mux_act_spd_inst (
		.sel(clk_out_19),
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.E(E),
		.F(F),
		.G(G)
	);
	
	mux_2x1_digit mux_digit_inst (
		.sel(clk_out_19),
		.in0(Digit1),
		.in1(Digit4),
		.digit1_out(digit1_out),
		.digit4_out(digit4_out)
	);
	
	or and_P (P, 1'b1, Digit1);

endmodule