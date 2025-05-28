library ieee;
use ieee.std_logic_1164.all;

use work.const_types_pkg.all;

entity digit_cnt is
    port (inc, rst: in std_logic;
        inc_out: out std_logic;
        cnt_out: inout digit);
end digit_cnt;

architecture behave of digit_cnt is
    signal cnt_tmp: digit;
    signal inc_out_tmp: std_logic;
begin
    process (cnt_out)
    begin
        if cnt_out = 9 then
            cnt_tmp <= 0;
            inc_out_tmp <= '1';
        else
            cnt_tmp <= cnt_out + 1;
            inc_out_tmp <= '0';
        end if;
    end process;

    process (inc, rst)
    begin
        if rst = '1' then
            cnt_out <= 0;
            inc_out <= '0';
        elsif inc'event and inc = '1' then
            cnt_out <= cnt_tmp;
            inc_out <= inc_out_tmp;
        end if;
    end process;
end behave;