library IEEE;
use IEEE.std_logic_1164.all;

entity Blink is
    port (
        clk_i :  in std_logic;
        led_o : out std_logic
    );
end entity Blink;

architecture RTL of Blink is
    constant DIV : positive:=50000-1;
    signal   led : std_logic;
begin
    do_blink:
    process (clk_i)
        variable cnt: natural range 0 to DIV:=0;
    begin
        if rising_edge(clk_i) then
            if cnt=DIV then
                cnt:=0;
                led <= not(led);
            else
                cnt:=cnt+1;
            end if;
        end if;
    end process do_blink;
    led_o <= led;
end architecture RTL;
