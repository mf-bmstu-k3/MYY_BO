library verilog;
use verilog.vl_types.all;
entity alu_sm_vlg_check_tst is
    port(
        f               : in     vl_logic_vector(3 downto 1);
        priznak         : in     vl_logic_vector(1 downto 0);
        rr              : in     vl_logic_vector(7 downto 0);
        sko             : in     vl_logic;
        y               : in     vl_logic_vector(10 downto 1);
        sampler_rx      : in     vl_logic
    );
end alu_sm_vlg_check_tst;
