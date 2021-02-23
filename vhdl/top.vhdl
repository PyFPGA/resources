library IEEE;
use IEEE.std_logic_1164.all;
library blink_lib;
use blink_lib.blink_pkg.all;

entity Top is
    port (
        clk_i :  in std_logic;
        led_o : out std_logic
    );
end entity Top;

architecture Structural of Top is
    constant FREQ : positive := 50e6;
begin

    dut: Blink
        generic map (FREQ => FREQ, SECS => 1)
        port map (clk_i => clk_i, led_o => led_o);

end architecture Structural;
