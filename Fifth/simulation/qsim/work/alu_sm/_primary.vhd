library verilog;
use verilog.vl_types.all;
entity alu_sm is
    port(
        sko             : out    vl_logic;
        clk             : in     vl_logic;
        set             : in     vl_logic;
        sno             : in     vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        f               : out    vl_logic_vector(3 downto 1);
        priznak         : out    vl_logic_vector(1 downto 0);
        rr              : out    vl_logic_vector(7 downto 0);
        y               : out    vl_logic_vector(10 downto 1)
    );
end alu_sm;
