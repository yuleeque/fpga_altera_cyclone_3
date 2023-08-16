library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity LED_blink is
	Port (clk : in STD_LOGIC;
			led_1 : out STD_LOGIC;
			led_2 : out STD_LOGIC;
			led_3 : out STD_LOGIC;
			led_4 : out STD_LOGIC
			);		 													--buzz : out STD_LOGIC
end LED_blink;

architecture Behavioral of LED_blink is
	signal pulse : STD_LOGIC := '0';
	signal count : integer range 0 to 50000000 := 0;
	
	
begin
	blink_process : process(clk)
	begin
		if clk'event and clk = '1' then
			if count = 49999999 then
				count <= 0;
				pulse <= not pulse;
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	led_1 <= pulse;
	led_2 <= pulse;
	led_3 <= pulse;
	led_4 <= pulse;
																		--buzz 	<= pulse;
	
	
	

	
end Behavioral;
	