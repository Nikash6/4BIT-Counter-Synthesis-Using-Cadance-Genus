# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Thu Oct 15 12:25:50 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design counter

set_load -pin_load 0.02 [get_ports {count[3]}]
set_load -pin_load 0.02 [get_ports {count[2]}]
set_load -pin_load 0.02 [get_ports {count[1]}]
set_load -pin_load 0.02 [get_ports {count[0]}]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
