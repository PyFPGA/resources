create_clock -name clk_i -period 8 [get_ports clk_i]

set_property PACKAGE_PIN L16 [get_ports clk_i]
set_property IOSTANDARD LVCMOS33 [get_ports clk_i]
