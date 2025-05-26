library ieee;
use ieee.std_logic_1164.all;

use work.const_types_pkg.all;

entity clk_div_n is
    generic (cnt_len: integer := 26);
    port(clk_in, rst: in std_logic;
         n: in std_logic_vector(cnt_len - 1 downto 0);
         clk_out: inout std_logic);
end clk_div_n;

architecture behave of clk_div_n is
    component toggler
        port(clk_in, toggle, rst: in std_logic;
             clk_out: inout std_logic);
    end component;
    signal cnt, toggle_vec: std_logic_vector(cnt_len - 1 downto 0);
    signal rst_togglers, rst_cnt: std_logic;

begin
    toggle_vec(0) <= '1';
    uut0: toggler port map (clk_in, toggle_vec(0), rst_togglers, cnt(0));
    gen_uutx: for i in 1 to cnt'high generate
    begin
        toggle_vec(i) <= cnt(i-1) and toggle_vec(i-1);
        uutx: toggler port map (clk_in, toggle_vec(i), rst_togglers, cnt(i));
    end generate gen_uutx;
    rst_togglers <= rst or rst_cnt;
    
    process (clk_in)
    begin
        if clk_in'event and clk_in = '1' and cnt = n then
            clk_out <= '1';
            rst_cnt <= '1';
        else
            clk_out <= '0';
            rst_cnt <= '0';
        end if;
    end process;

end behave;