// ============================================================
// Top Module for Hamming Code Encoder and Decoder
// Author  : Dedeepya
// Date    : 2025-11-01
// ============================================================

module dedee (
    input        clk,           // System clock (for ASIC timing)
    input  [3:0] data_in,       // 4-bit input data
    output [3:0] data_out,      // 4-bit decoded data
    output [6:0] encoded_data,  // 7-bit encoded codeword
    output [2:0] syndrome,      // Error syndrome
    output       error_flag     // Error indication
);
    // Internal signals
    wire [6:0] code_temp;
    wire [3:0] dec_temp;
    wire [2:0] syn_temp;
    wire err_temp;

    // Encoder instance
    hamming_encoder u1 (
        .data_in(data_in),
        .code_out(code_temp)
    );

    // Decoder instance
    hamming_decoder u2 (
        .code_in(code_temp),
        .data_out(dec_temp),
        .syndrome(syn_temp),
        .error_flag(err_temp)
    );

    // Optional clocked registers for ASIC timing
    reg [6:0] encoded_reg;
    reg [3:0] decoded_reg;
    reg [2:0] syndrome_reg;
    reg       error_reg;

    always @(posedge clk) begin
        encoded_reg  <= code_temp;
        decoded_reg  <= dec_temp;
        syndrome_reg <= syn_temp;
        error_reg    <= err_temp;
    end

    assign encoded_data = encoded_reg;
    assign data_out     = decoded_reg;
    assign syndrome     = syndrome_reg;
    assign error_flag   = error_reg;

endmodule
