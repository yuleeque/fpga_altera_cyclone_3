library verilog;
use verilog.vl_types.all;
entity project_LED_blink is
    port(
        i_CLK           : in     vl_logic;
        o_LED           : out    vl_logic_vector(3 downto 0)
    );
end project_LED_blink;
