module clockdivisor (
  input clk,
  output clk_out
);

	wire q1, q2, q3;

  // Instância dos flip-flops tipo T
  tff tff1 (
    .clk(clk),
    .j(1'b1),
	 .k(1'b1),
    .q(q1)
  );
  
  tff tff2 (
    .clk(q1),
    .j(1'b1),
	 .k(1'b1),
    .q(q2)
  );
  
  tff tff3 (
    .clk(q2),
    .j(1'b1),
	 .k(1'b1),
    .q(q3)
  );
  
  tff tff4 (
    .clk(q3),
    .j(1'b1),
	 .k(1'b1),
    .q(clk_out)
  );

  // Saída do divisor de clock (invertida após 16 clocks)

endmodule
