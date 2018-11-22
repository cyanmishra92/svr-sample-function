create_project test1 tes1.xpr -force
read_verilog [glob verilogs/*.v]
synth_design -top crt -part xc7z020clg484-1
create_clock -period 20.000 -name ap_clk -waveform {0.000 10.000} [get_ports ap_clk]
set_input_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports {height[*]}]
set_input_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports {height[*]}]
set_input_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports {hp_V[*]}]
set_input_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports {hp_V[*]}]
set_input_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports {ht_V[*]}]
set_input_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports {ht_V[*]}]
set_input_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports {option[*]}]
set_input_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports {option[*]}]
set_input_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports {width[*]}]
set_input_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports {width[*]}]
set_input_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports ap_rst]
set_input_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports ap_rst]
set_input_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports ap_start]
set_input_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports ap_start]
set_input_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports fov_0_full_n]
set_input_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports fov_0_full_n]
set_input_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports fov_1_full_n]
set_input_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports fov_1_full_n]
set_output_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports {fov_0_din[*]}]
set_output_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports {fov_0_din[*]}]
set_output_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports {fov_1_din[*]}]
set_output_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports {fov_1_din[*]}]
set_output_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports ap_done]
set_output_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports ap_done]
set_output_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports ap_idle]
set_output_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports ap_idle]
set_output_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports ap_ready]
set_output_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports ap_ready]
set_output_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports fov_0_write]
set_output_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports fov_0_write]
set_output_delay -clock [get_clocks ap_clk] -min -add_delay 0.0 [get_ports fov_1_write]
set_output_delay -clock [get_clocks ap_clk] -max -add_delay 0.0 [get_ports fov_1_write]
set_switching_activity -default_toggle_rate 4
set_switching_activity -default_static_probability 0.1
report_power -file power.txt