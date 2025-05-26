library ieee;
use ieee.std_logic_1164.all;

package const_types_pkg is
    constant fpga_clk_f: integer := 1e8;
    -- for a minimum frequency of 100 MHz/2^27 = 0.745 Hz
    subtype clk_div_n_vec is std_logic_vector (26 downto 0);

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

    subtype dip_sw_vector is std_logic_vector (7 downto 0);
    
    constant num_lights: integer := 8;
    constant num_lights_bit_vec: clk_div_n_vec := (2 downto 0 => '1', others => '0');
    subtype led_vector is std_logic_vector (num_lights-1 downto 0);
    type direction is (left, right);
end package;

