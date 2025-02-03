library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter4Bit is
    Port ( clk   : in  STD_LOGIC;  -- Clock input
           rst   : in  STD_LOGIC;  -- Active-high reset
           en    : in  STD_LOGIC;  -- Enable signal
           count : out STD_LOGIC_VECTOR (3 downto 0)); -- 4-bit output
end Counter4Bit;

architecture Behavioral of Counter4Bit is
    signal counter_value : STD_LOGIC_VECTOR (3 downto 0) := "0000"; -- Internal counter

begin
    process (clk)
    begin
        if rising_edge(clk) then  -- Detect positive clock edge
            if rst = '1' then
                counter_value <= "0000";  -- Reset the counter
            elsif en = '1' then
                counter_value <= counter_value + 1;  -- Increment counter if enabled
            end if;
        end if;
    end process;

    count <= counter_value; -- Assign internal value to output
end Behavioral;
