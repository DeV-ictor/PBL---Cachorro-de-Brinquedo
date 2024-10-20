module dis7segdecspd (
	input A, B,
	output F_ade, F_cf, F_b, F_g, F_p
);

	wire A_not, B_not;
	
	not not0 (A_not, A);
	not not1 (B_not, B);
	
	// Saída para segmentos A, D, E

	and and_ade (F_ade, A, B_not);
	
	// Saída para segmentos C, F

	and and_cf (F_cf, A_not, B);

	// Saída para segmentos G

	and and_g (F_g, A_not, B_not);
	
	// Saída para segmentos B

	and and_b (F_b, 1'b0, A);
	
	// Saída para segmentos P

	or or_p (F_p, 1'b1, B);

endmodule