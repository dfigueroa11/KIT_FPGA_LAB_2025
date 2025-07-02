library verilog;
use verilog.vl_types.all;
entity low_pass_direct_graph_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sig_in          : in     vl_logic_vector(13 downto 0);
        sampler_tx      : out    vl_logic
    );
end low_pass_direct_graph_vlg_sample_tst;
