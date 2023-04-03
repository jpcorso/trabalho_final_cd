library verilog;
use verilog.vl_types.all;
entity contador_top is
    port(
        Carry           : out    vl_logic;
        D               : in     vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0);
        C               : in     vl_logic
    );
end contador_top;
