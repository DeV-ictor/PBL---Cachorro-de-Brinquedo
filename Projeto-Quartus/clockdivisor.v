module clockdivisor (
    input clk,
    input reset,
    output reg clk_out
);

    reg [4:0] count;  // 5 bits para contar até 19 (2^5 = 32)

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 5'b0;
            clk_out <= 1'b0;
        end else begin
            if (count == 19'd18) begin  // Verifica se o contador chegou a 18
                count <= 5'b0;
                clk_out <= ~clk_out; // Inverte a saída do clock
            end else begin
                count <= count + 1'b1;
            end
        end
    end

endmodule