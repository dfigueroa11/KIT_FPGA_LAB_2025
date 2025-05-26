library ieee;
use ieee.std_logic_1164.all;

use work.const_types_pkg.all;

entity running_light_tb is
end running_light_tb;

architecture testbench of running_light_tb is
    component running_light
        port(clk, start, stop_sys, rst, load_pattern: in std_logic;
             dip_sws: in std_logic_vector(num_dip_sws - 1 downto 0);
             seven_seg0, seven_seg1: out seven_seg_disp;
             leds: out std_logic_vector(num_lights - 1 downto 0));
    end component;
    signal clk, start, stop_sys, rst, load_pattern: std_logic;
    signal dip_sws: std_logic_vector(num_dip_sws - 1 downto 0);
    signal seven_seg0, seven_seg1: seven_seg_disp;
    signal leds: std_logic_vector(num_lights - 1 downto 0);
begin

    uut: running_light port map (clk, start, stop_sys, rst, load_pattern, dip_sws, seven_seg0, seven_seg1, leds);
    
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
        start <= '0';
        stop_sys <= '0';
        load_pattern <= '0';
        wait for 1 ns;
        rst <= '0';
        start <= '1';
        wait for 1 ns;
        start <= '0';
        wait for 1 ns;
        dip_sws <= "00100100";
        wait for 100 ns;
        load_pattern <= '1';
        wait for 1 ns;
        load_pattern <= '0';
        wait for 5 ns;
        dip_sws <= "01100100";
        wait for 3 ns; 
        dip_sws <= "11100111";
        wait for 1.3 ns; 
        dip_sws <= "00000111";
        wait for 1.3 ns; 
        dip_sws <= "11110000";
        wait for 1 ns;
        start <= '1';
        wait for 1 ns;
        start <= '0';
        wait for 1 ns;
        
        wait for 100 ns;
        stop_sys <= '1';
        wait for 1 ns;
        stop_sys <= '0';
        wait for 30 ns;
        start <= '1';
        wait for 1 ns;
        start <= '0';
        wait for 30 ns;
        load_pattern <= '1';
        wait for 0.5 ns;
        load_pattern <= '0';
        wait for 1 ns;
        start <= '1';
        wait for 1 ns;
        start <= '0';
        wait for 50 ns;
        rst <= '1';
        wait for 1 ns;
        rst <= '0';
        
        wait for 5 us;
        assert false report "Simulation finished" severity failure;
    end process;

end testbench;
