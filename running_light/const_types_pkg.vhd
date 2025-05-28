library ieee;
use ieee.std_logic_1164.all;

package const_types_pkg is

    subtype digit is integer range 0 to 9;
    type digit_array is array (natural range <>) of digit;
    subtype seven_seg_disp is std_logic_vector (0 to 6);
    constant ss_disp_0: seven_seg_disp := "0000001";
    constant ss_disp_1: seven_seg_disp := "1001111";
    constant ss_disp_2: seven_seg_disp := "0010010";
    constant ss_disp_3: seven_seg_disp := "0000110";
    constant ss_disp_4: seven_seg_disp := "1001100";
    constant ss_disp_5: seven_seg_disp := "0100100";
    constant ss_disp_6: seven_seg_disp := "0100000";
    constant ss_disp_7: seven_seg_disp := "0001111";
    constant ss_disp_8: seven_seg_disp := "0000000";
    constant ss_disp_9: seven_seg_disp := "0000100";

    constant num_dip_sws: integer := 18;
    constant num_lights: integer := 18;

    constant clk_div1_len: integer := 3;
    constant num_lights_bit_vec: std_logic_vector(clk_div1_len - 1 downto 0) := (others => '1');
    type direction is (left, right);
end package;

