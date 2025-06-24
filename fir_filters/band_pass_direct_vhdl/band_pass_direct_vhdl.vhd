library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.const_types_pkg.all;

entity band_pass_direct_vhdl is
    port (
        clk : in std_logic;
        rst : in std_logic;
        sig_in: in adc_num;
        sig_out: out adc_num
    );
end band_pass_direct_vhdl;

architecture behave of band_pass_direct_vhdl is

    signal taps: tap_reg;

begin
    process(clk, rst)
    begin
        if rst = '1' then
            for i in 0 to fir_order loop
                taps(i) <= to_signed(0, adc_width);
            end loop;
        elsif clk'event and clk = '1' then
            sig_out <= taps(2) / 2 - taps(0) / 2;
            for i in 1 to fir_order loop
                taps(i) <= taps(i - 1);
            end loop;
            taps(0) <= sig_in;
        end if;
    end process;
end architecture;