library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.const_types_pkg.all;
use work.velocities_rom.all;

entity running_light is
    port(clk, start, stop_sys, rst, load_pattern: in std_logic;
         dip_sws: in std_logic_vector(num_dip_sws - 1 downto 0);
         seven_seg0, seven_seg1: out seven_seg_disp;
         leds: out std_logic_vector(num_lights - 1 downto 0));
end running_light;

architecture behave of running_light is
    component lr_ring_reg
        generic (num_cells: integer);
        port (clk, load: in std_logic;
              dir: in direction;
              pattern_in: in std_logic_vector(num_lights - 1 downto 0);
              pattern_out: inout std_logic_vector(num_lights - 1 downto 0));
    end component;
    component clk_div_n
        generic (cnt_len: integer);
        port (clk_in, rst: in std_logic;
              n: in std_logic_vector;
              clk_out: inout std_logic);
    end component;
    component seven_segments
        port (digit_in: in digit;
              seven_seg_leds: out seven_seg_disp);
    end component;
    component decimal_cnt_99
        port(increment, rst: in std_logic;
             cnt_out: inout digit_array);
    end component;

    signal rst_dec_cnt, rst_clk_div0, rst_clk_div1: std_logic;
    signal inc_cnt, leds_clk, load: std_logic;
    signal cnt_runs: digit_array;
    signal leds_vel: std_logic_vector(clk_div0_len - 1 downto 0);
    signal dir: direction;
    signal pattern_in, pattern_out: std_logic_vector(num_lights - 1 downto 0);
    type state is (ss_reset, ss_stop_sys, ss_run_light, ss_load_pattern);
    signal curr_state, next_state: state;
begin
    dec_cnt: decimal_cnt_99
        port map(inc_cnt, rst_dec_cnt, cnt_runs);
    ss0: seven_segments
        port map(cnt_runs(0), seven_seg0);
    ss1: seven_segments
        port map(cnt_runs(1), seven_seg1);
    clk_div0: clk_div_n
        generic map(cnt_len => clk_div0_len)
        port map(clk, rst_clk_div0, leds_vel, leds_clk);
    clk_div1: clk_div_n
        generic map(cnt_len => clk_div1_len)
        port map(leds_clk, rst_clk_div1, num_lights_bit_vec, inc_cnt);
    lr_rr: lr_ring_reg
        generic map(num_cells => num_lights)
        port map(leds_clk, load, dir, pattern_in, pattern_out);
    
    leds_vel <= velocities(to_integer(unsigned(dip_sws(adr_len - 1 downto 0))));
    leds <= pattern_out;
    dir <= left;

    process(curr_state, start, load_pattern, stop_sys, dip_sws)
    begin
        case curr_state is
        when ss_reset =>
            pattern_in <= (num_lights - 1 => '1', others => '0');
            load <= '1';
            rst_dec_cnt <= '1';
            rst_clk_div0 <= '1';
            rst_clk_div1 <= '1';
            if start = '1' then
                next_state <= ss_run_light;
            elsif load_pattern = '1' then
                next_state <= ss_load_pattern;
            end if;
        when ss_stop_sys =>
            load <= '0';
            rst_clk_div0 <= '1';
            rst_clk_div1 <= '1';
            if start = '1' then
                next_state <= ss_run_light;
            elsif load_pattern = '1' then
                next_state <= ss_load_pattern;
            end if;
        when ss_run_light =>
            load <= '0';
            rst_dec_cnt <= '0';
            rst_clk_div0 <= '0';
            rst_clk_div1 <= '0';
            if stop_sys = '1' then
                next_state <= ss_stop_sys;
            elsif load_pattern = '1' then
                next_state <= ss_load_pattern;
            end if;
        when ss_load_pattern =>
            pattern_in <= dip_sws;
            load <= '1';
            rst_dec_cnt <= '1';
            rst_clk_div0 <= '1';
            rst_clk_div1 <= '1';
            if start = '1' then
                next_state <= ss_run_light;
            end if;
        end case;
    end process;

    process (clk, rst)
    begin
        if rst = '1' then
            curr_state <= ss_reset;
        elsif clk'event and clk = '1' then
            curr_state <= next_state;
        end if;
    end process;
end behave;
