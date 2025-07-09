library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.const_types_pkg.all;

entity fir_filters_mux is
    port (
        clk : in std_logic;
        rst : in std_logic;
        sws : in std_logic_vector (3 downto 0);
        sig_in_bp, sig_in_bs, sig_in_hp, sig_in_lp: in adc_num;
        sig_out: out adc_num;
        clk_adc: out std_logic;
        ss_disps: out sev_seg_disps
    );
end fir_filters_mux;

architecture behave of fir_filters_mux is

    type fir_options is (band_pass, band_stop, high_pass, low_pass);
    signal fir_select: fir_options;
    
    -- f_clk_adc = f_clk_fpga / div_n
    constant div_n: integer := 25;      -- fs/2 = 500 kHz
    signal cnt: unsigned(4 downto 0);
    signal pulse_reg: std_logic;

begin

    sig_out <= sig_in_bp when fir_select = band_pass else
               sig_in_bs when fir_select = band_stop else
               sig_in_hp when fir_select = high_pass else
               sig_in_lp when fir_select = low_pass;

    ss_disps <= ss_disp_band_pass when fir_select = band_pass else
                ss_disp_band_stop when fir_select = band_stop else
                ss_disp_high_pass when fir_select = high_pass else
                ss_disp_low_pass when fir_select = low_pass;

    process(rst, clk)
    begin
        if rst = '1' then
            fir_select <= band_pass;
		  elsif clk'event and clk = '1' then
			  if sws(0) = '0' then
					fir_select <= band_pass;
			  elsif sws(1) = '0' then
					fir_select <= band_stop;
			  elsif sws(2) = '0' then
					fir_select <= high_pass;
			  elsif sws(3) = '0' then
					fir_select <= low_pass;
			  end if;
		  end if;
    end process;

	 
	  process(clk, rst)
    begin
        if rst = '1' then
            cnt <= (others => '0');
            pulse_reg <= '0';
            --n_prev <= n;
        elsif clk'event and clk = '1' then
            if cnt = to_unsigned(div_n - 1, cnt'length) then
                cnt <= (others => '0');
                pulse_reg <= '1';
            else
                cnt <= cnt + 1;
                pulse_reg <= '0';
            end if;
        end if;
    end process;
	 
    clk_adc <= pulse_reg;

end architecture;