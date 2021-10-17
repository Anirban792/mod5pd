# ####################################################################

#  Created by Genus(TM) Synthesis Solution 19.12-s121_1 on Sun Oct 17 21:27:08 IST 2021

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design mod8

create_clock -name "clk" -period 650.0 -waveform {0.0 390.0} [get_ports clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 60.0 [get_ports rst]
set_output_delay -clock [get_clocks clk] -add_delay 95.0 [get_ports {out[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 95.0 [get_ports {out[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 95.0 [get_ports {out[0]}]
set_wire_load_mode "top"
set_clock_uncertainty -setup 35.0 [get_clocks clk]
set_clock_uncertainty -hold 0.02 [get_clocks clk]
