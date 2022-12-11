## clk
set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports clk]
 
## LED
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS33} [get_ports led[0]]
set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS33} [get_ports led[1]]
set_property -dict {PACKAGE_PIN J3 IOSTANDARD LVCMOS33} [get_ports led[2]]
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports led[3]]
##led1
set_property -dict {PACKAGE_PIN F6 IOSTANDARD LVCMOS33} [get_ports led[7]]
set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS33} [get_ports led[6]]
set_property -dict {PACKAGE_PIN G3 IOSTANDARD LVCMOS33} [get_ports led[5]]
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports led[4]]