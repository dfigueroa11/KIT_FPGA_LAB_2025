library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.const_types_pkg.all;

entity fir_filters is
    port (
        clk : in std_logic;
        rst : in std_logic;
        sws : in std_logic_vector (3 downto 0);
        sig_in: in adc_num;
        sig_out: out adc_num;
        ss_disps: out sev_seg_disps
    );
end fir_filters;

architecture behave of fir_filters is
    component band_pass_direct_vhdl
        port (
        clk : in std_logic;
        rst : in std_logic;
        sig_in: in adc_num;
        sig_out: out adc_num);
    end component;

    component band_stop_transposed_vhdl
        port (
        clk : in std_logic;
        rst : in std_logic;
        sig_in: in adc_num;
        sig_out: out adc_num);
    end component;

    component high_pass_transposed_vhdl
        port (
        clk : in std_logic;
        rst : in std_logic;
        sig_in: in adc_num;
        sig_out: out adc_num);
    end component;

    component low_pass_direct_vhdl
        port (
        clk : in std_logic;
        rst : in std_logic;
        sig_in: in adc_num;
        sig_out: out adc_num);
    end component;

    signal sig_out_bp, sig_out_bs, sig_out_hp, sig_out_lp: adc_num;
    type fir_options is (band_pass, band_stop, high_pass, low_pass);
    signal fir_select: fir_options;

begin

    fir_bp: band_pass_direct_vhdl
        port map (clk, rst, sig_in, sig_out_bp);

    fir_bs: band_stop_transposed_vhdl
        port map (clk, rst, sig_in, sig_out_bs);

    fir_hp: high_pass_transposed_vhdl
        port map (clk, rst, sig_in, sig_out_hp);

    fir_lp: low_pass_direct_vhdl
        port map (clk, rst, sig_in, sig_out_lp);

    sig_out <= sig_out_bp when fir_select = band_pass else
               sig_out_bs when fir_select = band_stop else
               sig_out_hp when fir_select = high_pass else
               sig_out_lp when fir_select = low_pass;
    
    ss_disps <= ss_disp_band_pass when fir_select = band_pass else
                ss_disp_band_stop when fir_select = band_stop else
                ss_disp_high_pass when fir_select = high_pass else
                ss_disp_low_pass when fir_select = low_pass;

    process(rst, sws)
    begin
        if rst = '1' then
            fir_select <= band_pass;
        elsif sws(0) = '0' then
            fir_select <= band_pass;
        elsif sws(1) = '0' then
            fir_select <= band_stop;
        elsif sws(2) = '0' then
            fir_select <= high_pass;
        elsif sws(3) = '0' then
            fir_select <= low_pass;
        end if;
    end process;

end architecture;