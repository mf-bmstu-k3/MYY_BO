library verilog;
use verilog.vl_types.all;
entity control_unit_for_4op_BO_vlg_check_tst is
    port(
        f               : in     vl_logic_vector(3 downto 1);
        incr_i          : in     vl_logic;
        next_state_out  : in     vl_logic_vector(2 downto 0);
        priznak         : in     vl_logic_vector(1 downto 0);
        rr              : in     vl_logic_vector(7 downto 0);
        s_out           : in     vl_logic_vector(2 downto 0);
        sko             : in     vl_logic;
        y               : in     vl_logic_vector(10 downto 1);
        sampler_rx      : in     vl_logic
    );
end control_unit_for_4op_BO_vlg_check_tst;
