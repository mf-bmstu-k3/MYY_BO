library verilog;
use verilog.vl_types.all;
entity control_unit_for_4op_BO is
    port(
        sko             : out    vl_logic;
        clk             : in     vl_logic;
        set             : in     vl_logic;
        sno             : in     vl_logic;
        cop             : in     vl_logic_vector(1 downto 0);
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        incr_i          : out    vl_logic;
        f               : out    vl_logic_vector(3 downto 1);
        next_state_out  : out    vl_logic_vector(2 downto 0);
        priznak         : out    vl_logic_vector(1 downto 0);
        rr              : out    vl_logic_vector(7 downto 0);
        s_out           : out    vl_logic_vector(2 downto 0);
        y               : out    vl_logic_vector(10 downto 1)
    );
end control_unit_for_4op_BO;
