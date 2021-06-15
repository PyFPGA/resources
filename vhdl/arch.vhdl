library IEEE;
use IEEE.std_logic_1164.all;

entity Arch is
    port (
        clk_i :  in std_logic;
        d_i   :  in std_logic;
        d_o   : out std_logic
    );
end entity Arch;

architecture First of Arch is
begin
    d_o <= '1';
end architecture First;

architecture Second of Arch is
begin
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            d_o <= d_i;
        end if;
    end process;
end architecture Second;

architecture Third of Arch is
begin
    d_o <= '0';
end architecture Third;

