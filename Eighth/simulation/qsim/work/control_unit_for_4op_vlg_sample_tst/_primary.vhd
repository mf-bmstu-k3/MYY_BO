library verilog;
use verilog.vl_types.all;
entity control_unit_for_4op_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        cop             : in     vl_logic_vector(1 downto 0);
        set             : in     vl_logic;
        sno             : in     vl_logic;
        x               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end control_unit_for_4op_vlg_sample_tst;
