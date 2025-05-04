library verilog;
use verilog.vl_types.all;
entity ctrl_un_BO is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        set             : in     vl_logic;
        cop             : in     vl_logic;
        sno             : in     vl_logic;
        rr              : out    vl_logic_vector(7 downto 0);
        priznak         : out    vl_logic_vector(1 downto 0);
        sko             : out    vl_logic
    );
end ctrl_un_BO;
