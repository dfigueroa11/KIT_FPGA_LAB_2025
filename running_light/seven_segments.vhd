library ieee;
use ieee.std_logic_1164.all;

use work.const_types_pkg.all;

entity seven_segments is
  port (digit_in: in digit;
        seven_seg_leds: out sev_seg_disp);
end seven_segments;

architecture behave of seven_segments is
begin
    seven_seg_leds <= ss_disp_0 when digit_in = 0 else
                      ss_disp_1 when digit_in = 1 else
                      ss_disp_2 when digit_in = 2 else
                      ss_disp_3 when digit_in = 3 else
                      ss_disp_4 when digit_in = 4 else
                      ss_disp_5 when digit_in = 5 else
                      ss_disp_6 when digit_in = 6 else
                      ss_disp_7 when digit_in = 7 else
                      ss_disp_8 when digit_in = 8 else
                      ss_disp_9 when digit_in = 9;
end behave;