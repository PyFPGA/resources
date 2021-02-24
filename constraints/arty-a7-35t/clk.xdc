create_clock -period 10.0 [get_ports {clk_i}]

set_property PACKAGE_PIN E3 [get_ports {clk_i}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk_i}]
