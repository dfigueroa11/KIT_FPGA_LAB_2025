library ieee;
use ieee.std_logic_1164.all;

use work.const_types_pkg.all;

entity clk_div_tb is
end clk_div_tb;

architecture testbench of clk_div_tb is
    component clk_div_n
        generic(cnt_len: integer);
        port(clk_in, rst: in std_logic;
             n: in std_logic_vector(2 downto 0);
             clk_out: inout std_logic);
    end component;
    signal clk, clk_out, rst: std_logic;
    signal n: std_logic_vector(2 downto 0) := (others => '0');
begin

    uut: clk_div_n
        generic map(cnt_len => 3)
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
        wait for 1 ns;
        n <= "111";
        wait for 5 us;
        assert false report "Simulation finished" severity failure;
    end process;

end testbench;
