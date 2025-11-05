# ==============================================================
# Cadence Genus SDC for Hamming Encoder-Decoder (dedee)
# ==============================================================

# Create clock
create_clock -name CLK -period 10 [get_ports clk]

# Input/output delays
set_input_delay 1 -clock CLK [all_inputs]
set_output_delay 1 -clock CLK [all_outputs]

# Define drive and load
set_driving_cell -lib_cell INVX1 [all_inputs]
set_load 0.05 [all_outputs]

# Clock uncertainty
set_clock_uncertainty 0.2 [get_clocks CLK]

# Reports
report_clocks
report_timing -max_paths 5
