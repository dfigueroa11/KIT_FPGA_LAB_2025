import numpy as np

run_min_freq = 0.1
run_max_freq = 5
num_adr_bits = 5

num_steps = 2 ** num_adr_bits
fpga_clk_freq = 50e6
num_leds = 18

min_led_clk_freq = run_min_freq * num_leds
max_led_clk_freq = run_max_freq * num_leds
led_clk_freq_range = np.linspace(min_led_clk_freq, max_led_clk_freq, num_steps)
# led_clk_freq_range = np.geomspace(min_led_clk_freq, max_led_clk_freq, num_steps)

cnt_div_clk = (fpga_clk_freq // led_clk_freq_range).astype(np.int64)
num_cnt_bits = len(bin(cnt_div_clk.max()))
bin_format = f"#0{num_cnt_bits}b"

rom_def = f"\tconstant clk_leds_cnt_len: integer := {num_cnt_bits-2};\n"
rom_def += f"\tconstant adr_len: integer := {num_adr_bits};\n"
rom_def += f"\tconstant num_speeds: integer := {num_steps};\n"
rom_def += f"\ttype rom_speed is array (0 to num_speeds - 1) of unsigned(clk_leds_cnt_len - 1 downto 0);\n"
rom_def += "\tconstant speeds: rom_speed := (\n"
for i, cnt in enumerate(cnt_div_clk):
    rom_def += f'\t\t{i} => "{format(cnt, bin_format)[2:]}",\n'
rom_def = rom_def[:-2] + ");\n"


with open('running_light/speed_rom.vhd', 'w') as f:
    f.write("library ieee;\n")
    f.write("use ieee.std_logic_1164.all;\n")
    f.write("use ieee.numeric_std.all;\n\n")
    f.write("package speed_rom is\n")
    f.write(rom_def)
    f.write("end package;\n")