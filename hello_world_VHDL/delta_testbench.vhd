
entity delta_testbench is
end delta_testbench;

architecture behavior of delta_testbench is

    -- Component Declaration
    component delta_sim
        Port ( a : in bit;
               clk : in bit;
               d : out bit);
    end component;

    -- Signals to connect to the DUT
    signal a, clk : bit := '1';
    signal d    : bit;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: delta_sim
        Port map (
            a => a,
            clk => clk,
            d => d
        );

    -- Test process
    stim_proc: process
    begin
        -- Test vector 1: A = 1, B = 1
        a <= '1';
        clk <= '1';
        wait for 10 ns;

        -- Test vector 2: A = 0, B = 1
        a <= '0';
        wait for 10 ns;

        -- Finish simulation
        wait;
    end process;

end behavior;
