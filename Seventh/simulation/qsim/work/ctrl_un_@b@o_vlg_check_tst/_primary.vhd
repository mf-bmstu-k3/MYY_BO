library verilog;
use verilog.vl_types.all;
entity ctrl_un_BO_vlg_check_tst is
    port(
        priznak         : in     vl_logic_vector(1 downto 0);
        rr              : in     vl_logic_vector(7 downto 0);
        sko             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ctrl_un_BO_vlg_check_tst;
