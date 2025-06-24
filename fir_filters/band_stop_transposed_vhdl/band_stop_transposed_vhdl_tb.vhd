library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.const_types_pkg.all;

entity band_stop_transposed_vhdl_tb is
end band_stop_transposed_vhdl_tb;

architecture test_bench of band_stop_transposed_vhdl_tb is

    signal clk, rst: std_logic;
    signal sig_in, sig_out: adc_num;

    component band_stop_transposed_vhdl
        port (
        clk : in std_logic;
        rst : in std_logic;
        sig_in: in adc_num;
        sig_out: out adc_num);
    end component;

begin
    fir: band_stop_transposed_vhdl
        port map(clk, rst, sig_in, sig_out);

    clk_process: process
        begin
            while true loop
                clk <= '0';
                wait for 0.5 ns;
                clk <= '1';
                wait for 0.5 ns;
            end loop;
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