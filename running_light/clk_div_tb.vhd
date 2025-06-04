library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

use work.const_types_pkg.all;

entity clk_div_tb is
end clk_div_tb;

architecture testbench of clk_div_tb is
    component clk_div_n
        generic(CNT_WIDTH: integer);
        port(clk_in, rst: in std_logic;
             n: in unsigned;
             clk_out: inout std_logic);
    end component;
    signal clk, clk_out, rst: std_logic;
    signal n: unsigned(2 downto 0) := (others => '0');
begin

    uut: clk_div_n
        generic map(CNT_WIDTH => 3)
        port map(clk, rst, n, clk_out);
    
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for 0.5 ns;
            clk <= '1';
            wait for 0.5 ns;
        end loop;
    end process;
    
    process
    begin
        rst <= '1';
        wait for 1 ns;
        rst <= '0';
        wait for 100 ns;
        n <= "001";
        wait for 15 ns;
        n <= "010";
        wait for 15 ns;
        n <= "011";
        wait for 15 ns;
        n <= "110";
        wait for 21 ns;
        n <= "010";
        wait for 20 ns;
        assert false report "Simulation finished" severity failure;
    end process;

end testbench;
