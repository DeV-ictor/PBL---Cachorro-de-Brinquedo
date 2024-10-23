module t_ff (
  input clk, input j, input k, reset,
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
      case ({j,k})  
         2'b00 :  q <= q;  
         2'b01 :  q <= 0;  
         2'b10 :  q <= 1;
      endcase  
    end
  end

endmodule
