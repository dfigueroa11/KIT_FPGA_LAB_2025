library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.const_types_pkg.all;

entity high_pass_transposed_vhdl is
    port (
        clk : in std_logic;
        rst : in std_logic;
        sig_in: in adc_num;
        sig_out: out adc_num
    );
end high_pass_transposed_vhdl;

architecture behave of high_pass_transposed_vhdl is

    signal taps: tap_reg;

begin
    process(clk, rst)
    begin
        if rst = '1' then
            for i in 0 to fir_order loop
                taps(i) <= to_signed(0, adc_width);
            end loop;
        elsif clk'event and clk = '1' then
            taps(2) <= sig_in / 4;
            taps(1) <= taps(2) - sig_in / 2;
            taps(0) <= taps(1) + sig_in / 4;
        end if;
    end process;
    sig_out <= taps(0);
end architecture;