library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Declare the testbench entity
entity LED_blink_tb is
end LED_blink_tb;

-- Architecture for the testbench
architecture behavior of LED_blink_tb is

    -- Component declaration of the entity under test (LED_blink)
    component LED_blink
        Port ( clk : in STD_LOGIC;
               led_1 : out STD_LOGIC;
               led_2 : out STD_LOGIC;
               led_3 : out STD_LOGIC;
               led_4 : out STD_LOGIC
        );
    end component;

    -- Signals to connect the testbench to the device under test
    signal clk : STD_LOGIC := '0';
    signal led_1, led_2, led_3, led_4 : STD_LOGIC;

begin
    -- Instantiate the device under test (DUT)
    uut: LED_blink
        Port map (
            clk => clk,
            led_1 => led_1,
            led_2 => led_2,
            led_3 => led_3,
            led_4 => led_4
        );

    -- Clock generation process
    clk_process: process
    begin
        -- Generate a clock signal with a period of 20 ns (50 MHz clock)
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    -- Test process to check LED behavior
    test_process: process
    begin
        -- Wait for some time to observe the LEDs after a few clock cycles
        wait for 200 ns;  -- You can adjust this based on your pulse duration (e.g., 50 million clock cycles)
        
        -- Here, you can add more test steps or checks, such as asserting that the LEDs toggle as expected
        -- For example:
        assert (led_1 = led_2) and (led_2 = led_3) and (led_3 = led_4)
            report "All LEDs should toggle simultaneously" severity failure;
        
        -- End the simulation after a certain time
        wait for 500 ns;  -- Adjust according to your simulation duration
        assert false report "End of test" severity note;
        wait;
    end process;

end behavior;
