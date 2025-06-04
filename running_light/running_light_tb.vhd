library ieee;
use ieee.std_logic_1164.all;

use work.const_types_pkg.all;
use work.speed_rom.all;

entity running_light_tb is
end running_light_tb;

architecture testbench of running_light_tb is
    component running_light
        port(clk, start_fpga, stop_sys_fpga, rst_fpga, load_pattern_fpga: in std_logic;
            dip_sws: in std_logic_vector(num_dip_sws - 1 downto 0);
            seven_segs: out sev_seg_disp_array;
            leds: out std_logic_vector(num_lights - 1 downto 0);
            leds_status: out std_logic_vector(adr_len + 2 downto 0));
    end component;
    signal clk, start, stop_sys, rst, load_pattern: std_logic;
    signal start_n, stop_sys_n, rst_n, load_pattern_n: std_logic;
    signal dip_sws: std_logic_vector(num_dip_sws - 1 downto 0);
    signal seven_segs: sev_seg_disp_array;
    signal leds: std_logic_vector(num_lights - 1 downto 0);
    signal leds_speed: std_logic_vector(adr_len + 2 downto 0);
begin
    start_n <= not start;
    stop_sys_n <= not stop_sys;
    rst_n <= not rst;
    load_pattern_n <= not load_pattern;
    
    uut: running_light port map (clk, start_n, stop_sys_n, rst_n, load_pattern_n, dip_sws, seven_segs, leds, leds_speed);
    
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
        dip_sws <= "000000000000111111";
        wait for 1 ns;
        rst <= '0';
        start <= '1';
        wait for 1 ns;
        start <= '0';
        wait for 1 ns;
        dip_sws <= "000000000000100100";
        wait for 100 ns;
        load_pattern <= '1';
        wait for 1 ns;
        load_pattern <= '0';
        wait for 5 ns;
        dip_sws <= "000000000001100100";
        wait for 3 ns; 
        dip_sws <= "000000000011100111";
        wait for 1.3 ns; 
        dip_sws <= "000000000000000111";
        wait for 1.3 ns; 
        dip_sws <= "000000000011110000";
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
        wait for 10 ns;
        start <= '1';
        wait for 1 ns;
        start <= '0';
        dip_sws <= "000000000000100011";
        wait for 200 ns;
        dip_sws <= "000000000000100111";
        wait for 200 ns;
        dip_sws <= "000000000000101011";
        wait for 200 ns;
        dip_sws <= "000000000000110011";
        wait for 500 ns;
        assert false report "Simulation finished" severity failure;
    end process;

end testbench;
