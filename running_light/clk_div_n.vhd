library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clk_div_n is
    generic (
        CNT_WIDTH : integer := 32
    );
    port (
        clk_in, rst: in  std_logic;
        n: in  unsigned(CNT_WIDTH-1 downto 0);
        clk_out: out std_logic
    );
end clk_div_n;

architecture rtl of clk_div_n is
    signal cnt: unsigned(CNT_WIDTH-1 downto 0) := (others => '0');
    signal pulse_reg: std_logic := '0';
    signal n_prev: unsigned(CNT_WIDTH-1 downto 0) := (others => '0');
begin

    process(clk_in, rst, n)
    begin
        if rst = '1' then
            cnt <= (others => '0');
            pulse_reg <= '0';
            n_prev <= n;
        elsif clk_in'event and clk_in = '1' then
            if n /= n_prev then
                cnt <= (others => '0');
                pulse_reg <= '0';
                n_prev <= n;
            elsif cnt = (n - 1) then
                cnt <= (others => '0');
                pulse_reg <= '1';
            else
                cnt <= cnt + 1;
                pulse_reg <= '0';
            end if;
        end if;
    end process;

    clk_out <= pulse_reg;

end rtl;
