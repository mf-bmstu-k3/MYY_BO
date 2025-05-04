library verilog;
use verilog.vl_types.all;
entity control_unit_for_4op_vlg_check_tst is
    port(
        incr_i          : in     vl_logic;
        next_state_out  : in     vl_logic_vector(2 downto 0);
        s_out           : in     vl_logic_vector(2 downto 0);
        sko             : in     vl_logic;
        y               : in     vl_logic_vector(10 downto 1);
        sampler_rx      : in     vl_logic
    );
end control_unit_for_4op_vlg_check_tst;
