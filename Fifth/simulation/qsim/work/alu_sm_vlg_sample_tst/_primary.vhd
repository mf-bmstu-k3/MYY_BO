library verilog;
use verilog.vl_types.all;
entity alu_sm_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        set             : in     vl_logic;
        sno             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end alu_sm_vlg_sample_tst;
