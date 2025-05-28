library ieee;
use ieee.std_logic_1164.all;

use work.const_types_pkg.all;

entity decimal_cnt is
    port(clk_in, rst: in std_logic;
         cnt_out: inout digit_array);
end decimal_cnt;

architecture behave of decimal_cnt is
    component digit_cnt
        port (increment, rst: in std_logic;
				  inc_out: out std_logic;
				  cnt_out: inout digit);
    end component;
    signal inc_out: std_logic_vector(cnt_out'high - 1 downto 0);
begin
    gen_uutx: for i in 1 to cnt_out'high generate
    begin
        uutx: digit_cnt port map (cnt_out(i-1), rst, inc_out(i), cnt_out(i));
    end generate gen_uutx;
    
end behave;