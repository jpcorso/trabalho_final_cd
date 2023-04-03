library verilog;
use verilog.vl_types.all;
entity contador_top_vlg_check_tst is
    port(
        Carry           : in     vl_logic;
        \out\           : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end contador_top_vlg_check_tst;
