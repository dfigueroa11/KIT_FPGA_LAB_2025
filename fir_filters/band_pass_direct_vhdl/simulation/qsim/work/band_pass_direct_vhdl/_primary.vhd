library verilog;
use verilog.vl_types.all;
entity band_pass_direct_vhdl is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sig_in          : in     vl_logic_vector(13 downto 0);
        sig_out         : out    vl_logic_vector(13 downto 0)
    );
end band_pass_direct_vhdl;
