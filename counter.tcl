set_db init_lib_search_path {/home/install/FOUNDRY/digital/180nm/dig/lib/}

set_db library typical.lib
read_hdl counter.v
elaborate
read_sdc counter.sdc
syn_generic
syn_map
syn_opt
file mkdir outputs
file mkdir reports
write_hdl > outputs/counter_net.v
write_sdc > outputs/counter_out_sdc.sdc

report_timing > reports/counter_timing.rpt
report_power > reports/counter_power.rpt
report_area > reports/counter_area.rpt
report_gates > reports/counter_gates.rpt

puts "genus Synthesis complete successfully!"
exit
