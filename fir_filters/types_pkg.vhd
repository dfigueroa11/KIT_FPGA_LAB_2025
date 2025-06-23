library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package types_pkg is

    constant fir_order: integer := 2;
    constant adc_width: integer := 14;
    subtype adc_num is signed (adc_width - 1 downto 0);
    type tap_reg is array (0 to fir_order) of adc_num;

end package;

