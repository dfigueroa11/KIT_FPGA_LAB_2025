library ieee;
use ieee.std_logic_1164.all;

use work.const_types_pkg.all;

entity decimal_cnt_99 is
  port (increment, rst: in std_logic;
        cnt_out: inout digit_array);
end decimal_cnt_99;

architecture behave of decimal_cnt_99 is
    signal cnt_tmp: digit_array;
begin
    process (cnt_out)
    begin
        if cnt_out(0) = 9 then
            cnt_tmp(0) <= 0;
            if cnt_out(1) = 9 then
                cnt_tmp(1) <= 0;
            else
                cnt_tmp(1) <= cnt_out(1) + 1;
            end if;
        else
            cnt_tmp(0) <= cnt_out(0) + 1;
            cnt_tmp(1) <= cnt_out(1);
        end if;
    end process;

    process (increment, rst)
    begin
        if rst = '1' then
            cnt_out <= (0,0);
        elsif increment'event and increment = '1' then
            cnt_out <= cnt_tmp;
        end if;
    end process;
end behave;