// ============================================================
// Testbench for Hamming Encoder and Decoder (Top Module: dedee)
// Author  : Dedeepya
// Date    : 2025-11-01
// ============================================================

`timescale 1ns/1ps

module dedeetb;

    // ------------------------
    // Signal Declarations
    // ------------------------
    reg         clk;
    reg  [3:0]  data_in;
    wire [3:0]  data_out;
    wire [6:0]  encoded_data;
    wire [2:0]  syndrome;
    wire        error_flag;

    // ------------------------
    // DUT Instantiation
    // ------------------------
    dedee uut (
        .clk(clk),
        .data_in(data_in),
        .data_out(data_out),
        .encoded_data(encoded_data),
        .syndrome(syndrome),
        .error_flag(error_flag)
    );

    // ------------------------
    // Clock Generation
    // ------------------------
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 100 MHz clock -> 10 ns period
    end

    // ------------------------
    // Stimulus
    // ------------------------
    initial begin
        $display("===============================================");
        $display("   Hamming Encoder-Decoder Simulation Started  ");
        $display("===============================================");
        $display("Time\tData_in\tEncoded\tDecoded\tErrorFlag\tSyndrome");
        $monitor("%0dns\t%b\t%b\t%b\t%b\t\t%b", $time, data_in, encoded_data, data_out, error_flag, syndrome);

        data_in = 4'b0000;  #10;
        data_in = 4'b0001;  #10;
        data_in = 4'b0010;  #10;
        data_in = 4'b0101;  #10;
        data_in = 4'b1010;  #10;
        data_in = 4'b1111;  #10;
        data_in = 4'b1001;  #10;
        data_in = 4'b0110;  #10;

        #20;
        $display("===============================================");
        $display("   Simulation Completed Successfully");
        $display("===============================================");
        $finish;
    end

endmodule
