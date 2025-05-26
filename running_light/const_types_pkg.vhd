library ieee;
use ieee.std_logic_1164.all;

package const_types_pkg is

    subtype digit is integer range 0 to 9;
    type digit_array is array (0 to 1) of digit;
    subtype seven_seg_disp is std_logic_vector (6 downto 0);
    constant ss_disp_0: seven_seg_disp := "1111110";
    constant ss_disp_1: seven_seg_disp := "0110000";
    constant ss_disp_2: seven_seg_disp := "1101101";
    constant ss_disp_3: seven_seg_disp := "1111001";
    constant ss_disp_4: seven_seg_disp := "0110011";
    constant ss_disp_5: seven_seg_disp := "1011011";
    constant ss_disp_6: seven_seg_disp := "1011111";
    constant ss_disp_7: seven_seg_disp := "1110000";
    constant ss_disp_8: seven_seg_disp := "1111111";
    constant ss_disp_9: seven_seg_disp := "1111011";

    constant num_dip_sws: integer := 8;
    constant num_lights: integer := 8;
    constant clk_div0_len: integer := 26;
    constant clk_div1_len: integer := 3;
    
    constant num_lights_bit_vec: std_logic_vector(clk_div1_len - 1 downto 0) := (others => '1');
    type direction is (left, right);
end package;

