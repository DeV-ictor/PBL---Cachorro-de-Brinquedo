module debouncer (
	input buttom
);

	wire clk, S0, S1;

	clockdivider clk_15 (
		.clk_out_15(clk)
	);

	t_ff_deb ff1 (
		.clk(clk),
		.t(1'b1),
		.q(S0)
	);
	
	t_ff_deb ff2 (
		.clk(clk),
		.t(s0),
		.q(S1)
	);

endmodule