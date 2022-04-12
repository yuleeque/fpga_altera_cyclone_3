Credits: Joseph Holmner "FPGA Blinking Led Tutorial Step by Step [ Altera ]" (https://www.youtube.com/watch?v=JJ3XkNcLdx8)

# Steps

1. New Project Wizard -> "project name" -> Empty project -> select Device -> Finish

2. New -> VHDL File (in Design Files)

		library IEEE;
		use IEEE.STD_LOGIC_1164.ALL;
		 
		entity LED_blink is
			Port (clk : in STD_LOGIC;
					led : out STD_LOGIC);
		end LED_blink;

		architecture Behavioral of LED_blink is
			signal pulse : STD_LOGIC := '0';
			signal count : integer range 0 to 50000000 := 0;
			
			
		begin
			counter : process(clk)
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
			
			led <= pulse;
			
		end Behavioral;

3. Processing -> Start -> Analysis & Elaboration

4. Assignments -> Pin Planner

		clk - Input - PIN_31
		led - Output - PIN_98

![Alt text](/project_LED_blink/CoreEP3C16-Schematic_screenshot.png)