library verilog;
use verilog.vl_types.all;
entity low_pass_direct_graph_vlg_check_tst is
    port(
        sig_out         : in     vl_logic_vector(13 downto 0);
        sampler_rx      : in     vl_logic
    );
end low_pass_direct_graph_vlg_check_tst;
