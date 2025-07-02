library verilog;
use verilog.vl_types.all;
entity high_pass_transposed_graph is
    port(
        sig_out         : out    vl_logic_vector(13 downto 0);
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        sig_in          : in     vl_logic_vector(13 downto 0)
    );
end high_pass_transposed_graph;
