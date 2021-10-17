# ####################################################################

#  Created by Genus(TM) Synthesis Solution GENUS15.20 - 15.20-p004_1 on Thu Jan 16 09:34:16 +0530 2020

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design mod8

create_clock -name "clk" -add -period 650.0 -waveform {0.0 390.0} [get_ports clk]
#set_clock_transition -rise 0.001 [get_clocks clk]
#set_clock_transition -fall 0.001 [get_clocks clk]
set_input_delay -clock [get_clocks clk] -add_delay 60.0 [get_ports rst]


set_output_delay -clock [get_clocks clk] -add_delay 95.0 [get_ports out]
set_wire_load_mode "top"
set_clock_uncertainty -setup 35.0 [get_clocks clk]
set_clock_uncertainty -hold 0.02 [get_clocks clk]
