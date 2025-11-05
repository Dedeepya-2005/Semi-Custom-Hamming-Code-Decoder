// ============================================================
// Hamming(7,4) Decoder
// Author  : Dedeepya
// Date    : 2025-11-01
// ============================================================

module hamming_decoder (
    input  [6:0] code_in,     // 7-bit received codeword
    output [3:0] data_out,    // Corrected 4-bit data
    output [2:0] syndrome,    // Error syndrome bits
    output       error_flag   // Indicates if error was detected
);
    wire p1, p2, p4;

    // Extract parity and data bits
    assign p1 = code_in[6];
    assign p2 = code_in[5];
    assign p4 = code_in[3];

    // Syndrome bits (detect error position)
    assign syndrome[0] = p1 ^ code_in[4] ^ code_in[2] ^ code_in[0];
    assign syndrome[1] = p2 ^ code_in[4] ^ code_in[1] ^ code_in[0];
    assign syndrome[2] = p4 ^ code_in[2] ^ code_in[1] ^ code_in[0];

    // If any syndrome bit is 1, there's an error
    assign error_flag = |syndrome;

    // Correct the error (if any)
    reg [6:0] corrected;
    always @(*) begin
        corrected = code_in;
        if (error_flag) begin
            corrected[syndrome - 1] = ~code_in[syndrome - 1];
        end
    end

    // Extract data bits
    assign data_out = {corrected[4], corrected[2], corrected[1], corrected[0]};

endmodule
