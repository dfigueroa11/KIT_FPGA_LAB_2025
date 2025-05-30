library ieee;
use ieee.std_logic_1164.all;

package speed_rom is
	constant clk_div0_len: integer := 4;
	constant adr_len: integer := 2;
	constant num_speeds: integer := 4;
	type rom_speed is array (0 to num_speeds - 1) of std_logic_vector (clk_div0_len - 1 downto 0);
	constant speeds: rom_speed := (
		0 => "1100",
		1 => "0011",
		2 => "0011",
		3 => "0011");
end package;
