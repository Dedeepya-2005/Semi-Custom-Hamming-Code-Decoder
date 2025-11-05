# =====================================================================
# Cadence Genus Synthesis Script for Hamming Encoder-Decoder
# Target Technology : 90 nm CMOS
# Author            : Dedeepya
# Date              : 2025-11-01
# =====================================================================

# ------------------------------------------------------------
# Library Setup
# ------------------------------------------------------------
set_db init_lib_search_path {/home/install/FOUNDRY/digital/90nm/dig/lib/}
set_db library slow.lib

# ------------------------------------------------------------
# Read HDL Sources
# ------------------------------------------------------------
read_hdl {./hamming_encoder.v ./hamming_decoder.v ./dedee.v}

# ------------------------------------------------------------
# Elaborate and Set Current Design
# ------------------------------------------------------------
elaborate dedee
current_design dedee

# ------------------------------------------------------------
# Apply Timing Constraints
# ------------------------------------------------------------
if {[file exists "./constraint_dedee_90nm.sdc"]} {
    read_sdc ./constraint_dedee_90nm.sdc
} else {
    create_clock -name CLK -period 10 [get_ports clk]
    set_input_delay 1 -clock CLK [all_inputs]
    set_output_delay 1 -clock CLK [all_outputs]
}

# ------------------------------------------------------------
# Synthesis Effort Levels
# ------------------------------------------------------------
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

# ------------------------------------------------------------
# Run Full Synthesis Flow
# ------------------------------------------------------------
syn_generic
syn_map
syn_opt

# ------------------------------------------------------------
# Write Synthesized Outputs
# ------------------------------------------------------------
write_hdl > dedee_90nm_netlist.v
write_sdc > dedee_90nm_output.sdc

# ------------------------------------------------------------
# Generate Reports
# ------------------------------------------------------------
report timing > dedee_90nm_timing.rpt
report power  > dedee_90nm_power.rpt
report area   > dedee_90nm_area.rpt
report gates  > dedee_90nm_gates.rpt

# =====================================================================
# End of Script
# =====================================================================
