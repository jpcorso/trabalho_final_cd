library verilog;
use verilog.vl_types.all;
entity contador_top_vlg_sample_tst is
    port(
        C               : in     vl_logic;
        D               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contador_top_vlg_sample_tst;
