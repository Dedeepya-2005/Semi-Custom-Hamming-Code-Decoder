// ============================================================
// Hamming(7,4) Encoder
// Author  : Dedeepya
// Date    : 2025-11-01
// ============================================================

module hamming_encoder (
    input  [3:0] data_in,     // 4-bit input data
    output [6:0] code_out     // 7-bit encoded output
);
    wire p1, p2, p4;

    // Parity bit calculations
    assign p1 = data_in[0] ^ data_in[1] ^ data_in[3];
    assign p2 = data_in[0] ^ data_in[2] ^ data_in[3];
    assign p4 = data_in[1] ^ data_in[2] ^ data_in[3];

    // Codeword format: p1 p2 d0 p4 d1 d2 d3
    assign code_out = {p1, p2, data_in[0], p4, data_in[1], data_in[2], data_in[3]};

endmodule
