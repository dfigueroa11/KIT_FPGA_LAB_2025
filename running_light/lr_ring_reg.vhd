library ieee;
use ieee.std_logic_1164.all;

use work.const_types_pkg.all;

entity lr_ring_reg is
    generic(num_cells: integer := 8);
    port(clk, load: in std_logic;
         dir: in direction;
         pattern_in: in std_logic_vector(num_cells - 1 downto 0);
         pattern_out: inout std_logic_vector(num_cells - 1 downto 0));
end lr_ring_reg;

architecture behave of lr_ring_reg is
    signal pattern_shift: std_logic_vector(num_cells - 1 downto 0);
begin
    process (pattern_out, dir)
    begin
        if dir = left then
            pattern_shift(num_cells - 2 downto 0) <= pattern_out(num_cells - 1 downto 1);
            pattern_shift(num_cells - 1) <= pattern_out(0);
        else
            pattern_shift(num_cells - 1 downto 1) <= pattern_out(num_cells - 2 downto 0);
            pattern_shift(0) <= pattern_out(num_cells -1);
        end if;
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