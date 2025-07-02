library verilog;
use verilog.vl_types.all;
entity low_pass_direct_graph is
    port(
        sig_out         : out    vl_logic_vector(13 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sig_in          : in     vl_logic_vector(13 downto 0)
    );
end low_pass_direct_graph;
