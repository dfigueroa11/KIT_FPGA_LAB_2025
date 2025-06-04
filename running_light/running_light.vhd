library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.const_types_pkg.all;
use work.speed_rom.all;

entity running_light is
    port(clk, start_fpga, stop_sys_fpga, rst_fpga, load_pattern_fpga: in std_logic;
        dip_sws: in std_logic_vector(num_dip_sws - 1 downto 0);
        seven_segs: out sev_seg_disp_array;
        leds: out std_logic_vector(num_lights - 1 downto 0);
        leds_status: out std_logic_vector(adr_len + 2 downto 0));
end running_light;

architecture behave of running_light is
    component lr_ring_reg
        generic (num_cells: integer);
        port (clk, load: in std_logic;
            pattern_in: in std_logic_vector(num_lights - 1 downto 0);
            pattern_out_l, pattern_out_r: inout std_logic_vector(num_lights - 1 downto 0));
    end component;
    component clk_div_n
        generic (CNT_WIDTH: integer);
        port (clk_in, rst: in std_logic;
            n: in unsigned;
            clk_out: out std_logic);
    end component;
    component seven_segments
        port (digit_in: in digit;
            seven_seg_leds: out sev_seg_disp);
    end component;
    component decimal_cnt
        port(inc, rst: in std_logic;
            cnt_out: inout digit_array);
    end component;

    signal rst, start, stop_sys, load_pattern: std_logic;
    signal rst_dec_cnt, rst_clk_leds, rst_clk_cnt: std_logic;
    signal inc_cnt, leds_clk, load: std_logic;
    signal cnt_runs: digit_array (num_sev_seg - 1 downto 0);
    signal speed: unsigned(clk_leds_cnt_len - 1 downto 0);
    signal pattern_in, pattern_out_l, pattern_out_r: std_logic_vector(num_lights - 1 downto 0);
    type state is (ss_reset, ss_stop_sys, ss_run_light, ss_load_pattern);
    signal curr_state, next_state: state;
    signal dir: direction := left;
    signal dir_mode: std_logic_vector(2 downto 0);

begin
    dec_cnt: decimal_cnt
        port map(inc_cnt, rst_dec_cnt, cnt_runs);
    gen_ss : for i in 0 to num_sev_seg - 1 generate
        ssx: seven_segments port map(cnt_runs(i), seven_segs(i));
    end generate;
    clk_leds: clk_div_n
        generic map(CNT_WIDTH => clk_leds_cnt_len)
        port map(clk, rst_clk_leds, speed, leds_clk);
    clk_cnt: clk_div_n
        generic map(CNT_WIDTH => clk_cnt_len)
        port map(leds_clk, rst_clk_cnt, num_lights_bit_vec, inc_cnt);
    lr_rr: lr_ring_reg
        generic map(num_cells => num_lights)
        port map(leds_clk, load, pattern_in, pattern_out_l, pattern_out_r);

    speed <= speeds(to_integer(unsigned(dip_sws(adr_len - 1 downto 0))));
    dir_mode <= dip_sws(adr_len + 2 downto adr_len);
    leds_status(adr_len - 1 downto 0) <= dip_sws(adr_len - 1 downto 0);
    leds <= pattern_out_l when dir = left else
            pattern_out_r when dir = right;
    rst <= not rst_fpga;
    start <= not start_fpga;
    stop_sys <= not stop_sys_fpga;
    load_pattern <= not load_pattern_fpga;

    process(inc_cnt, dir_mode, dir)
    begin
        if dir_mode = "000" then
            leds_status(adr_len + 2 downto adr_len) <= "001";
            dir <= left;
        elsif dir_mode(0) = '1' then
            dir <= left;
            leds_status(adr_len + 2 downto adr_len) <= "001";
        elsif dir_mode(1) = '1' then
            dir <= right;
            leds_status(adr_len + 2 downto adr_len) <= "010";
        else
            leds_status(adr_len + 2 downto adr_len) <= "100";
            if inc_cnt'event and inc_cnt = '1' then
                if dir = left then
                    dir <= right;
                else
                    dir <= left;
                end if;
            end if;
        end if;
    end process;

    process(curr_state, start, load_pattern, stop_sys, dip_sws)
    begin
        case curr_state is
            when ss_reset =>
                pattern_in <= (num_lights - 1 => '1', others => '0');
                load <= '1';
                rst_dec_cnt <= '1';
                rst_clk_leds <= '1';
                rst_clk_cnt <= '1';
                if start = '1' then
                    next_state <= ss_run_light;
                elsif load_pattern = '1' then
                    next_state <= ss_load_pattern;
                else
                    next_state <= ss_reset;
                end if;
            when ss_stop_sys =>
                pattern_in <= (others => '0');
                load <= '0';
                rst_dec_cnt <= '0';
                rst_clk_leds <= '1';
                rst_clk_cnt <= '1';
                if start = '1' then
                    next_state <= ss_run_light;
                elsif load_pattern = '1' then
                    next_state <= ss_load_pattern;
                else
                    next_state <= ss_stop_sys;
                end if;
            when ss_run_light =>
                pattern_in <= (others => '0');
                load <= '0';
                rst_dec_cnt <= '0';
                rst_clk_leds <= '0';
                rst_clk_cnt <= '0';
                if stop_sys = '1' then
                    next_state <= ss_stop_sys;
                elsif load_pattern = '1' then
                    next_state <= ss_load_pattern;
                else
                    next_state <= ss_run_light;
                end if;
            when ss_load_pattern =>
                pattern_in <= dip_sws;
                rst_dec_cnt <= '1';
                rst_clk_leds <= '1';
                rst_clk_cnt <= '1';
                if start = '1' then
                    load <= '0';
                    next_state <= ss_run_light;
                else
                    load <= '1';
                    next_state <= ss_load_pattern;
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
