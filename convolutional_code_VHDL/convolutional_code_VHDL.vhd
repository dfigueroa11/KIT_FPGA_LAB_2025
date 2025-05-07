library ieee;
use ieee.std_logic_1164.all;

entity convolutional_code_VHDL is
	port(data_in, clk, rst: in std_logic;
			data_out0, data_out1: out std_logic);
end convolutional_code_VHDL;

architecture state_machine of convolutional_code_VHDL is
	type state is (s00, s01, s10, s11);
	signal curr_st, next_st: state;
	signal d_tmp, d_out0, d_out1: std_logic;
	begin
		process(curr_st, d_tmp) -- state logic
		begin
			case curr_st is
			when s00 =>
				if d_tmp = '0' then
					d_out0 <= '0';
					d_out1 <= '0';
					next_st <= s00;
				else
					d_out0 <= '1';
					d_out1 <= '1';
					next_st <= s01;
				end if;
			when s01 =>
				if d_tmp = '0' then
					d_out0 <= '0';
					d_out1 <= '1';
					next_st <= s10;
				else
					d_out0 <= '1';
					d_out1 <= '0';
					next_st <= s11;
				end if;
			when s10 =>
				if d_tmp = '0' then
					d_out0 <= '1';
					d_out1 <= '1';
					next_st <= s00;
				else
					d_out0 <= '0';
					d_out1 <= '0';
					next_st <= s01;
				end if;
			when s11 =>
				if d_tmp = '0' then
					d_out0 <= '1';
					d_out1 <= '0';
					next_st <= s10;
				else
					d_out0 <= '0';
					d_out1 <= '1';
					next_st <= s11;
				end if;
			end case;
		end process;
		
		process(clk, rst) -- go to next state
		begin
			if rst = '1' then
				curr_st <= s00;
				d_tmp <= '0';
			elsif (clk = '1' and clk'event) then
				curr_st <= next_st;
				d_tmp <= data_in;
			end if;
		end process;
		
		-- concurrent assigment of the output
		data_out0 <= d_out0;
		data_out1 <= d_out1;
	end state_machine;


