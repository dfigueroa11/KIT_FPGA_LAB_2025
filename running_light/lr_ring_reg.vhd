library ieee;
use ieee.std_logic_1164.all;

use work.const_types_pkg.all;

entity lr_ring_reg is
    generic(num_cells: integer := 8);
    port(clk, load: in std_logic;
         pattern_in: in std_logic_vector(num_cells - 1 downto 0);
         pattern_out_l, pattern_out_r: inout std_logic_vector(num_cells - 1 downto 0));
end lr_ring_reg;

architecture behave of lr_ring_reg is
    signal pattern_out, pattern_shift: std_logic_vector(num_cells - 1 downto 0);
begin
    gen_x: for i in pattern_out'range generate
        pattern_out_l(i) <= pattern_out(i);
        pattern_out_r(i) <= pattern_out(pattern_out'left + pattern_out'right - i);
    end generate;
    process (pattern_out)
    begin
        pattern_shift(num_cells - 2 downto 0) <= pattern_out(num_cells - 1 downto 1);
        pattern_shift(num_cells - 1) <= pattern_out(0);
    end process;

    process (clk, load, pattern_in)
    begin
        if load = '1' then
            pattern_out <= pattern_in;
        elsif clk'event and clk = '1' then
            pattern_out <= pattern_shift;
        end if;
    end process;
end behave;