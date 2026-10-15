create -clock -name master_clk -period 1.0[get_ports clk]
set_input_delay 0.2 -clock master_clk[get_ports {rst enable}]
set_output_delay 0.2 -clock master_clk[get_ports{count[*]}]
set_load 0.02 [get_ports {count[*]}]
