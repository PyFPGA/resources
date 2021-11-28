library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library blink_lib;
use blink_lib.blink_pkg.all;

entity Top is
  generic (
    FREQ      : positive                     := 10e6;
    --
    BOO       : boolean                      := FALSE;
    INT       : integer                      := 0;
    LOG       : std_logic                    := '0';
    VEC       : std_logic_vector(7 downto 0) := "00000000";
    CHR       : character                    := 'A';
    STR       : string                       := "ABCD";
    REA       : real                         := 0.0;
    --
    SKIP_BOO  : integer                      := 0;
    SKIP_INT  : integer                      := 0;
    SKIP_LOG  : integer                      := 0;
    SKIP_VEC  : integer                      := 0;
    SKIP_CHR  : integer                      := 0;
    SKIP_STR  : integer                      := 0;
    SKIP_REA  : integer                      := 0;
    --
    SKIP_ARCH : integer                      := 0
  );
  port (
    clk_i :  in std_logic;
    led_o : out std_logic
  );
end entity Top;

architecture ARCH_TOP of Top is
begin
  assert FALSE report "ERROR: ARCH_TOP selected" severity failure;
end architecture ARCH_TOP;

architecture ARCH_SEL of Top is
begin

  boo_g: if SKIP_BOO=0 generate
    assert BOO=TRUE report "ERROR: BOO has not the specified value" severity failure;
  end generate boo_g;

  int_g: if SKIP_INT=0 generate
    assert INT=255 report "ERROR: INT has not the specified value" severity failure;
  end generate int_g;

  log_g: if SKIP_LOG=0 generate
    assert LOG='1' report "ERROR: LOG has not the specified value" severity failure;
  end generate log_g;

  vec_g: if SKIP_VEC=0 generate
    assert VEC="11111111" report "ERROR: VEC has not the specified value" severity failure;
  end generate vec_g;

  chr_g: if SKIP_CHR=0 generate
    assert CHR='Z' report "ERROR: CHR has not the specified value" severity failure;
  end generate chr_g;

  str_g: if SKIP_STR=0 generate
    assert STR="WXYZ" report "ERROR: STR has not the specified value" severity failure;
  end generate str_g;

  rea_g: if SKIP_REA=0 generate
    assert REA=1.1 report "ERROR: REA has not the specified value" severity failure;
  end generate rea_g;

  blink_i: Blink
  generic map (FREQ => FREQ, SECS => 1)
  port map (clk_i => clk_i, led_o => led_o);

end architecture ARCH_SEL;

architecture ARCH_BOTTOM of Top is
begin

  no_arch_workaround_g: if SKIP_ARCH=0 generate
    assert FALSE report "ERROR: ARCH_BOTTOM selected" severity failure;
  end generate no_arch_workaround_g;

  arch_workaround_g: if SKIP_ARCH=1 generate
    blink_i: entity work.top(ARCH_SEL)
    generic map (
      FREQ => FREQ,
      --
      BOO => BOO,
      INT => INT,
      LOG => LOG,
      VEC => VEC,
      CHR => CHR,
      STR => STR,
      REA => REA,
      --
      SKIP_BOO => SKIP_BOO,
      SKIP_INT => SKIP_INT,
      SKIP_LOG => SKIP_LOG,
      SKIP_VEC => SKIP_VEC,
      SKIP_CHR => SKIP_CHR,
      SKIP_STR => SKIP_STR,
      SKIP_REA => SKIP_REA
    )
    port map (clk_i => clk_i, led_o => led_o);
  end generate arch_workaround_g;

end architecture ARCH_BOTTOM;
