library ieee;
use ieee.std_logic_1164.all;

use work.const_types_pkg.all;

entity decimal_cnt_tb is
end decimal_cnt_tb;

architecture testbench of decimal_cnt_tb is
    component decimal_cnt
        port(inc, rst: in std_logic;
             cnt_out: inout digit_array);
    end component;
    signal inc, rst: std_logic;
    signal d_out: digit_array (3 downto 0);
    signal d1, d2, d3, d4: integer;
begin

    uut: decimal_cnt port map(inc, rst, d_out);
    d1 <= d_out(0);
    d2 <= d_out(1);
    d3 <= d_out(2);
    d4 <= d_out(3);
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
        wait for 1300 ns;
        
        assert false report "Simulation finished" severity failure;
    end process;

end testbench;
