library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package const_types_pkg is

    constant fir_order: integer := 2;
    constant adc_width: integer := 14;
    subtype adc_num is signed (adc_width - 1 downto 0);
    type tap_reg is array (0 to fir_order) of adc_num;

    subtype sev_seg_disps is std_logic_vector (20 downto 0);
    constant ss_disp_low_pass : sev_seg_disps := "000111111101111110111";
    constant ss_disp_high_pass: sev_seg_disps := "111011111101110111001";
    constant ss_disp_band_pass: sev_seg_disps := "111011100010011110111";
    constant ss_disp_band_stop: sev_seg_disps := "000111111101110111001";
end package;

