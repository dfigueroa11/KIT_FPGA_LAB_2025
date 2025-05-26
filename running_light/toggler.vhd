library ieee;
use ieee.std_logic_1164.all;

entity toggler is
    port(clk_in, toggle, rst: in std_logic;
         clk_out: inout std_logic);
end toggler;

architecture behave of toggler is
begin
    process (clk_in, rst)
    begin
        if rst = '1' then
            clk_out <= '0';
        elsif clk_in'event and clk_in = '1' then
            clk_out <=  clk_out xor toggle;
        end if;
    end process;
end behave;