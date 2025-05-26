library ieee;
use ieee.std_logic_1164.all;

use work.const_types_pkg.all;

entity decimal_cnt_99_tb is
end decimal_cnt_99_tb;

architecture testbench of decimal_cnt_99_tb is
    component decimal_cnt_99
        port(increment, rst: in std_logic;
             cnt_out: inout digit_array);
    end component;
    signal inc, rst: std_logic;
    signal d_out: digit_array;
    signal d1, d2: integer;
begin

    uut: decimal_cnt_99 port map(inc, rst, d_out);
    d1 <= d_out(0);
    d2 <= d_out(1);
    clk_process: process
    begin
        while true loop
            inc <= '0';
            wait for 0.5 ns;
            inc <= '1';
            wait for 0.5 ns;
        end loop;
    end process;
    
    process
    begin
        rst <= '1';
        wait for 1 ns;
        rst <= '0';
        wait for 155 ns;
        rst <= '1';
        wait for 3 ns;
        rst <= '0';
        wait for 220 ns;
        
        assert false report "Simulation finished" severity failure;
    end process;

end testbench;
