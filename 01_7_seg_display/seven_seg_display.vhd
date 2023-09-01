library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
 
entity seven_seg_display is
	Port (-- remove later
			clk : in STD_LOGIC;
			led_1 : out STD_LOGIC;
			led_2 : out STD_LOGIC;
			led_3 : out STD_LOGIC;
			led_4 : out STD_LOGIC;
			-- end remove
			
			RSTin : in STD_LOGIC;
			CLKin : in STD_LOGIC;
			LEDout : out STD_LOGIC_VECTOR(7 downto 0);
			DIGITsel : out STD_LOGIC_VECTOR(3 downto 0));
end seven_seg_display;


architecture Behavioral of seven_seg_display is
	signal pulse : STD_LOGIC := '0';
	signal count : integer range 0 to 50000000 := 0;
	-- end remove
	signal DIGIT : STD_LOGIC_VECTOR(3 downto 0);
	
begin
	blink_process : process(clk)
	begin
		if clk'event AND clk = '1' then
			if count = 49999999 then
				count <= 0;
				pulse <= NOT pulse;
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	led_1 <= pulse;
	led_2 <= pulse;
	led_3 <= NOT pulse;
	led_4 <= pulse;
	
	
	SEVEN_SEG_PROCESS : process (DIGIT, CLKin)
	begin
		case DIGIT is
			when "0000"=>LEDOut<= "11000000";    --'0'
			when "0001"=>LEDOut<= "11111001";    --'1'
			when "0010"=>LEDOut<= "10100100";    --'2'
			when "0011"=>LEDOut<= "10110000";    --'3'
			when "0100"=>LEDOut<= "10011001";    --'4'
			when "0101"=>LEDOut<= "10010010";    --'5'
			when "0110"=>LEDOut<= "10000010";    --'6'
			when "0111"=>LEDOut<= "11111000";    --'7'
			when "1000"=>LEDOut<= "10000000";    --'8'
			when "1001"=>LEDOut<= "10010000";    --'9'
			when "1010"=>LEDOut<= "10001000";    --'A'
			when "1011"=>LEDOut<= "10000011";    --'b'
			when "1100"=>LEDOut<= "11000110";    --'C'
			when "1101"=>LEDOut<= "10100001";    --'d'
			when "1110"=>LEDOut<= "10000110";    --'E'
			when "1111"=>LEDOut<= "10001110";    --'F'
			when others=>LEDOut<= "XXXXXXXX";    --' '
		end case;
	end process;
	
end Behavioral;
	