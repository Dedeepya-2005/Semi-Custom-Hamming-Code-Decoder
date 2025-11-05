# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Sat Nov 01 14:48:37 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design dedee

create_clock -name "CLK" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {data_in[3]}]
set_input_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {data_in[2]}]
set_input_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {data_in[1]}]
set_input_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {data_in[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {data_out[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {data_out[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {data_out[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {data_out[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {encoded_data[6]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {encoded_data[5]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {encoded_data[4]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {encoded_data[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {encoded_data[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {encoded_data[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {encoded_data[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {syndrome[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {syndrome[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports {syndrome[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports error_flag]
set_wire_load_mode "enclosed"
