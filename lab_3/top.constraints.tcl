reset_design

set_max_area 0

create_clock -period 20 [get_ports clk]

set_input_delay -max 0.6 -clock clk [all_inputs]

set_output_delay -max 0.8 -clock clk [all_outputs]

set_input_transition -max 0.12 [all_inputs]


