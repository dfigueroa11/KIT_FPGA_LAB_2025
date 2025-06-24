library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.const_types_pkg.all;

entity fir_filters_tb is
end fir_filters_tb;

architecture test_bench of fir_filters_tb is
    
    signal clk, rst: std_logic;
    signal sws: std_logic_vector (3 downto 0);
    signal sig_in, sig_out: adc_num;
    signal ss_disps: sev_seg_disps;
    
    component fir_filters
        port (
        clk : in std_logic;
        rst : in std_logic;
        sws : in std_logic_vector (3 downto 0);
        sig_in: in adc_num;
        sig_out: out adc_num;
        ss_disps: out sev_seg_disps
        );
    end component;

begin
    firs: fir_filters
    port map(clk, rst, sws, sig_in, sig_out, ss_disps);
    
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for 0.5 ns;
            clk <= '1';
            wait for 0.5 ns;
        end loop;
    end process;
    
    fir_sel: process
    begin
        sws <= "1111";
        wait for 15 ns;
        sws <= "0111";
        wait for 1 ns;
        sws <= "1111";
        wait for 15 ns;
        sws <= "1011";
        wait for 1 ns;
        sws <= "1111";
        wait for 15 ns;
        sws <= "1101";
        wait for 1 ns;
        sws <= "1111";
        wait for 15 ns;
        sws <= "1110";
        wait for 1 ns;
        sws <= "1111";
        wait for 15 ns;
        sws <= "1011";
        wait for 1 ns;
        sws <= "1111";
        wait for 15 ns;
        sws <= "0111";
        wait for 1 ns;
        sws <= "1111";
        wait for 15 ns;
        sws <= "1110";
        wait for 1 ns;
        sws <= "1111";
        wait for 15 ns;
        sws <= "1101";
        wait for 1 ns;
        sws <= "1111";
        wait;
    end process;

    filter : process
    begin
        rst <= '1';
        sig_in <= to_signed(0, adc_width);
        wait for 5 ns;
        rst <= '0';
        wait for 2.3 ns;
        -- impulse response
        wait until clk'event and clk = '0';
        sig_in <= to_signed(5000, adc_width);
        wait until clk'event and clk = '0';
        sig_in <= to_signed(0, adc_width);
        wait for 30 ns;
        
        -- f0 = 0
        wait until clk'event and clk = '0';
        sig_in <= to_signed(5000, adc_width);
        wait for 30 ns;
        
        -- f0 = 1
        for i in 0 to 20 loop
            wait until clk'event and clk = '0';
            sig_in <= to_signed(5000, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(-5000, adc_width);
        end loop;
        wait for 30 ns;
        
        -- f0 = 1/2
        for i in 0 to 20 loop
            wait until clk'event and clk = '0';
            sig_in <= to_signed(5000, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(0, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(-5000, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(0, adc_width);
        end loop;
        wait for 30 ns;
        
        -- f0 = 1/4
        for i in 0 to 20 loop
            wait until clk'event and clk = '0';
            sig_in <= to_signed(5000, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(3535, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(0, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(-3535, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(-5000, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(-3535, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(0, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(3535, adc_width);
        end loop;
        wait for 30 ns;
        
        for i in 0 to 20 loop
            wait until clk'event and clk = '0';
            sig_in <= to_signed(5000, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(-3535, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(0, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(3535, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(-5000, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(3535, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(0, adc_width);
            wait until clk'event and clk = '0';
            sig_in <= to_signed(-3535, adc_width);
        end loop;
        
        
        wait for 30 ns;
        assert false report "Simulation finished" severity failure;
        
    end process;
    
    
end architecture;