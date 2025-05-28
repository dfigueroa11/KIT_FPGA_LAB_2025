library ieee;
use ieee.std_logic_1164.all;

package const_types_pkg is

    constant num_sev_seg: integer := 4;
    subtype digit is integer range 0 to 9;
    type digit_array is array (natural range <>) of digit;
    subtype sev_seg_disp is std_logic_vector (0 to 6);
    type sev_seg_disp_array is array (num_sev_seg - 1 downto 0) of sev_seg_disp;
    constant ss_disp_0: sev_seg_disp := "0000001";
    constant ss_disp_1: sev_seg_disp := "1001111";
    constant ss_disp_2: sev_seg_disp := "0010010";
    constant ss_disp_3: sev_seg_disp := "0000110";
    constant ss_disp_4: sev_seg_disp := "1001100";
    constant ss_disp_5: sev_seg_disp := "0100100";
    constant ss_disp_6: sev_seg_disp := "0100000";
    constant ss_disp_7: sev_seg_disp := "0001111";
    constant ss_disp_8: sev_seg_disp := "0000000";
    constant ss_disp_9: sev_seg_disp := "0000100";

    constant num_dip_sws: integer := 18;
    constant num_lights: integer := 18;

    constant clk_div1_len: integer := 3;
    constant num_lights_bit_vec: std_logic_vector(clk_div1_len - 1 downto 0) := (others => '1');
    type direction is (left, right);
end package;

