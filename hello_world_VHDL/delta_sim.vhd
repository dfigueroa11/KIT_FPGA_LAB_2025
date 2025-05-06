

entity delta_sim is
    port(a, clk: in bit;
         d: out bit);
end delta_sim;

architecture test of delta_sim is
    signal b, c: bit;
    begin
        b <= not(a) after 1 ns;
        c <= not(clk and b) after 1 ns;
        d <= c and b after 1 ns;
    end test;

