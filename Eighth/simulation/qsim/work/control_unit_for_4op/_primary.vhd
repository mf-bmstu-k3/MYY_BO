library verilog;
use verilog.vl_types.all;
entity control_unit_for_4op is
    port(
        clk             : in     vl_logic;
        set             : in     vl_logic;
        cop             : in     vl_logic_vector(1 downto 0);
        x               : in     vl_logic_vector(2 downto 0);
        sno             : in     vl_logic;
        sko             : out    vl_logic;
        y               : out    vl_logic_vector(10 downto 1);
        incr_i          : out    vl_logic;
        s_out           : out    vl_logic_vector(2 downto 0);
        next_state_out  : out    vl_logic_vector(2 downto 0)
    );
end control_unit_for_4op;
