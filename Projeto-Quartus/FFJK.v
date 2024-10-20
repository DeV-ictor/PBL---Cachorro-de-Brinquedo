module FFJK (
    input clk,    // Clock
    input d,      // Dado de entrada
    input reset,  // Sinal de reset
    output reg q  // Dado de saída
);

always @(posedge clk or posedge reset) begin
    if (reset)
        q <= 0;
    else
        q <= d;
end

endmodule