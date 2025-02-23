library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter4Bit_tb is
end Counter4Bit_tb;

architecture test of Counter4Bit_tb is
    signal clk_tb   : STD_LOGIC := '0';
    signal rst_tb   : STD_LOGIC := '0';
    signal en_tb    : STD_LOGIC := '0';
    signal count_tb : STD_LOGIC_VECTOR (3 downto 0);

    constant clk_period : time := 10 ns; -- Clock period

begin
    -- Instantiate the Counter4Bit module
    uut: entity work.Counter4Bit
         port map ( clk   => clk_tb,
                    rst   => rst_tb,
                    en    => en_tb,
                    count => count_tb );

    -- Clock Process
    process
    begin
        while true loop
            clk_tb <= '0';
            wait for clk_period / 2;
            clk_tb <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus Process
    process
    begin
        -- Reset the counter
        rst_tb <= '1';
        wait for 20 ns;
        rst_tb <= '0';

        -- Enable counter
        en_tb <= '1';
        wait for 200 ns;

        -- Disable counter
        en_tb <= '0';
        wait for 50 ns;

        -- Reset again
        rst_tb <= '1';
        wait for 20 ns;
        rst_tb <= '0';

        -- Stop simulation
        wait;
    end process;
end test;
