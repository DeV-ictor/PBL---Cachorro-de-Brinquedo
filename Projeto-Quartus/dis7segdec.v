module dis7segdec (
    input A, B, C,
    output F_a, F_b, F_c, F_d, F_e, F_f, F_g, F_p
);

	 wire A_not, B_not, C_not;
	 
	 not(A_not, A);
	 not(B_not, B);
	 not(C_not, C);

    // F = B' + C'
	 
    or SEG_a (F_a, B_not, C_not);

    // F = A + B + C
    
    or SEG_b (F_b, A, B, C);

    // F = B'
	 
    not SEG_c (F_c, B);

    // F = AC'

    and SEG_d (F_d, A, C_not);

    // F = B C + A' B' C'
	 
	 wire F1, F2;
	 
	 and and0 (F1, B, C);
	 and (F2, A_not, B_not, C_not);
    or SEG_e (F_e, F1, F2);

    // F = A + C
	 
    or SEG_f (F_f, A, C);

    // F = B C
	 
    and SEG_g (F_g, B, C);
	 
	 or SEG_p (F_p, 1'b1, A);
	 
endmodule