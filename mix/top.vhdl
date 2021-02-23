library IEEE;
use IEEE.std_logic_1164.all;

entity Top is
    port (
        clk_i :  in std_logic;
        led_o : out std_logic
    );
end entity Top;

architecture Structural of Top is

    component Blink is
        port (
            clk_i :  in std_logic;
            led_o : out std_logic
        );
    end component Blink;

begin

    dut: Blink
        port map (clk_i => clk_i, led_o => led_o);

end architecture Structural;
