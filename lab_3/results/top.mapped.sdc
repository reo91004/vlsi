###################################################################

# Created by write_sdc on Tue Jun 30 15:17:29 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_max_area 0
create_clock [get_ports clk]  -period 20  -waveform {0 10}
set_input_delay -clock clk  -max 0.6  [get_ports clk]
set_input_delay -clock clk  -max 0.6  [get_ports rstN]
set_input_delay -clock clk  -max 0.6  [get_ports A_7_]
set_input_delay -clock clk  -max 0.6  [get_ports A_6_]
set_input_delay -clock clk  -max 0.6  [get_ports A_5_]
set_input_delay -clock clk  -max 0.6  [get_ports A_4_]
set_input_delay -clock clk  -max 0.6  [get_ports A_3_]
set_input_delay -clock clk  -max 0.6  [get_ports A_2_]
set_input_delay -clock clk  -max 0.6  [get_ports A_1_]
set_input_delay -clock clk  -max 0.6  [get_ports A_0_]
set_input_delay -clock clk  -max 0.6  [get_ports A_en]
set_output_delay -clock clk  -max 0.8  [get_ports check_7_]
set_output_delay -clock clk  -max 0.8  [get_ports check_6_]
set_output_delay -clock clk  -max 0.8  [get_ports check_5_]
set_output_delay -clock clk  -max 0.8  [get_ports check_4_]
set_output_delay -clock clk  -max 0.8  [get_ports check_3_]
set_output_delay -clock clk  -max 0.8  [get_ports check_2_]
set_output_delay -clock clk  -max 0.8  [get_ports check_1_]
set_output_delay -clock clk  -max 0.8  [get_ports check_0_]
set_output_delay -clock clk  -max 0.8  [get_ports state_2_]
set_output_delay -clock clk  -max 0.8  [get_ports state_1_]
set_output_delay -clock clk  -max 0.8  [get_ports state_0_]
set_input_transition -max 0.12  [get_ports clk]
set_input_transition -max 0.12  [get_ports rstN]
set_input_transition -max 0.12  [get_ports A_7_]
set_input_transition -max 0.12  [get_ports A_6_]
set_input_transition -max 0.12  [get_ports A_5_]
set_input_transition -max 0.12  [get_ports A_4_]
set_input_transition -max 0.12  [get_ports A_3_]
set_input_transition -max 0.12  [get_ports A_2_]
set_input_transition -max 0.12  [get_ports A_1_]
set_input_transition -max 0.12  [get_ports A_0_]
set_input_transition -max 0.12  [get_ports A_en]
