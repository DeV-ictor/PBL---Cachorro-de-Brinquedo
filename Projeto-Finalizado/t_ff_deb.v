module t_ff_deb (
	input clk, t, reset,
	output reg q
);

	  // Inicialização do valor de q
  initial begin
    q = 0;
  end

  // Lógica do flip-flop T
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      q <= 0; // Reinicialização 
    end else begin
			q <= t;
    end
  end

endmodule