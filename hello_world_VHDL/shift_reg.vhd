LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE work.my_pkg.ALL;

ENTITY shift_reg IS
    PORT( din : IN bit4;
        clk, load, left_right : IN std_logic;
        dout : INOUT bit4);
END shift_reg;

ARCHITECTURE synth OF shift_reg IS
    SIGNAL shift_val : bit4;
BEGIN
    nxt: PROCESS(left_right, dout)
    BEGIN
        IF (left_right = '0') THEN
            shift_val(shift_val'length-2 downto 0) <= dout(dout'length-1 downto 1);
            shift_val(shift_val'length-1) <= dout(0);
        ELSE
            shift_val(shift_val'length-1 downto 1) <= dout(dout'length-2 downto 0);
            shift_val(0) <= dout(dout'length-1);
        END IF;
    END PROCESS;
    current: PROCESS (clk, load, din)
    BEGIN
        if load = '1' then
            dout <= din;
        elsif (clk'EVENT AND clk = '1') then
            dout <= shift_val;
        end if;
    END PROCESS;
END synth;