LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE WORK.my_pkg.ALL;

entity shift_reg_tb is
end shift_reg_tb;

architecture testbench of shift_reg_tb is
    component shift_reg 
        Port(din : IN bit4;
             clk, load, left_right : IN std_logic;
             dout : INOUT bit4);
    end component;

    signal clk, load, left_right: std_logic :='0';
    signal din, dout: bit4;

begin

    uut: shift_reg port map (din, clk, load, left_right, dout);
    
   clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
    end process;
    
    process
    begin
        din <= "00100110"; wait for 1 ns;
        load <= '1'; wait for 1 ns;
        load <= '0'; wait for 5 ns;
        wait for 7 ns;
        left_right <= '1'; wait for 2 ns;
        left_right <= '0'; wait for 1 ns;


        wait for 100 ns;
        assert false report "Simulation finished" severity failure;

    end process;

    
end testbench;
