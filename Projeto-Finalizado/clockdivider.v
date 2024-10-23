module clockdivider (
	input	clk, reset,
	output clk_out_25, clk_out_19, clk_out_15
);

	wire clk1, clk2, clk3, clk4, clk5, clk6, clk7, clk8, clk9, clk10, clk11, clk12, clk13, clk14, clk15, clk16, clk17, clk18, clk19, clk20, clk21, clk22, clk23, clk24;

	t_ff tff1 (
		.clk(clk),
		.q(clk1),
		.reset(reset)
	);
	
	t_ff tff2 (
		.clk(clk1),
		.q(clk2),
		.reset(reset)
	);
	
	t_ff tff3 (
		.clk(clk2),
		.q(clk3),
		.reset(reset)
	);
	
	t_ff tff4 (
		.clk(clk3),
		.q(clk4),
		.reset(reset)
	);
	
	t_ff tff5 (
		.clk(clk4),
		.q(clk5),
		.reset(reset)
	);
	
	t_ff tff6 (
		.clk(clk5),
		.q(clk6),
		.reset(reset)
	);
	
	t_ff tff7 (
		.clk(clk6),
		.q(clk7),
		.reset(reset)
	);
	
	t_ff tff8 (
		.clk(clk7),
		.q(clk8),
		.reset(reset)
	);
	
	t_ff tff9 (
		.clk(clk8),
		.q(clk9),
		.reset(reset)
	);
	
	t_ff tff10 (
		.clk(clk9),
		.q(clk10),
		.reset(reset)
	);
	
	t_ff tff11 (
		.clk(clk10),
		.q(clk11),
		.reset(reset)
	);
	
	t_ff tff12 (
		.clk(clk11),
		.q(clk12),
		.reset(reset)
	);
	
	t_ff tff13 (
		.clk(clk12),
		.q(clk13),
		.reset(reset)
	);
	
	t_ff tff14 (
		.clk(clk13),
		.q(clk14),
		.reset(reset)
	);
	
	t_ff tff15 (
		.clk(clk14),
		.q(clk_out_15),
		.reset(reset)
	);
	
	t_ff tff16 (
		.clk(clk_out_15),
		.q(clk16),
		.reset(reset)
	);
	
	t_ff tff17 (
		.clk(clk16),
		.q(clk17),
		.reset(reset)
	);
	
	t_ff tff18 (
		.clk(clk17),
		.q(clk18),
		.reset(reset)
	);
	
	t_ff tff19 (
		.clk(clk18),
		.q(clk_out_19),
		.reset(reset)
	);
	
	t_ff tff20 (
		.clk(clk_out_19),
		.q(clk20),
		.reset(reset)
	);
	
	t_ff tff21 (
		.clk(clk20),
		.q(clk21),
		.reset(reset)
	);
	
	t_ff tff22 (
		.clk(clk21),
		.q(clk22),
		.reset(reset)
	);
	
	t_ff tff23 (
		.clk(clk22),
		.q(clk23),
		.reset(reset)
	);
	
	t_ff tff24 (
		.clk(clk23),
		.q(clk24),
		.reset(reset)
	);
	
		t_ff tff25 (
		.clk(clk24),
		.q(clk_out_25),
		.reset(reset)
	);

endmodule