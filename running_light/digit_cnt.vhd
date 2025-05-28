library ieee;
use ieee.std_logic_1164.all;

use work.const_types_pkg.all;

entity digit_cnt is
  port (increment, rst: in std_logic;
		  inc_out: out std_logic;
        cnt_out: inout digit);
end digit_cnt;

architecture behave of digit_cnt is
    signal cnt_tmp: digit;
begin
    process (cnt_out)
    begin
        if cnt_out = 9 then
            cnt_tmp <= 0;
				inc_out <= '1';
        else
            cnt_tmp <= cnt_out + 1;
            inc_out <= '0';
        end if;
    end process;

    process (increment, rst)
    begin
        if rst = '1' then
            cnt_out <= (0);		
        elsif increment'event and increment = '1' then
            cnt_out <= cnt_tmp;
        end if;
    end process;
end behave;