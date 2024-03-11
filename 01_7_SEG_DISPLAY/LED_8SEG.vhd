library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; -- "+" and "-" operators
 
 
entity LED_8SEG is
	port (-- remove later
			Clock : in std_logic;	-- Assigned to the ondoard 50.000 MHz oscillator
			led_1 : out std_logic;
			led_2 : out std_logic;
			led_3 : out std_logic;
			led_4 : out std_logic;
			-- end remove
			
			Reset : in std_logic;
			--clk : in std_logic;
			LEDout : out std_logic_vector(7 downto 0);
			DIGITindex : out std_logic_vector(3 downto 0));
end LED_8SEG;


architecture Behavioral of LED_8SEG is
	signal pulse : std_logic := '0';
	signal count : integer range 0 to 50000000 := 0;
	-- end remove
	signal Symbol : std_logic_vector(3 downto 0);
	signal Period_uS, Period_mS, Period_S : std_logic;
begin
--	BLINK : process(Clock)
--	begin
--		if Clock'event and Clock = '1' then
--			if count = 49999999 then
--				count <= 0;
--				pulse <= not pulse;
--			else
--				count <= count + 1;
--			end if;
--		end if;
--	end process;

	BLINK2 : process(Period_S, Clock)
	begin
		if( Period_mS'event and Period_mS = '1' ) then
			if count = 200 then 	-- 50Mhz / 1000 -> 50mS. Then /50 -> 1mS
				count <= 0;
				pulse <= not pulse;
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	led_1 <= '1';
	led_2 <= '1';
	led_3 <= '1';
	led_4 <= '1';
	
	
	TIMING : process (Clock, Reset, Period_uS, Period_mS)
		-- uS is microsecond (10^-6 -> 0.000 001 / Sec)
		variable Count_uS : std_logic_vector(5 downto 0); -- To get 1 microsecond, 1 / 1 000 000, do 50/50MHz to get 1/1MHz. Looks like skipping 49 clock cycles and acting on the 50th.
																		  -- So 49 in binary is "11 0001", that's 6 binary digits.
		-- mS is milisecond (10^-3 -> 0.001 / Sec)
		variable Count_mS : std_logic_vector(9 downto 0); -- Same idea but this time it's 1000 microseconds. To skip 999 microseconds, we need "11 1110 0111", that's 10-long binary.
		variable Count_S  : std_logic_vector(9 downto 0);
	begin
		if( Reset = '0' ) then
			Count_uS := "000000";
		elsif( Clock'event and  Clock = '1' ) then
			if( Count_uS > "110001" ) then
				Count_uS := "000000";
				-- try period update here
			else
				Count_uS := Count_uS + 1;
			end if;
			Period_uS <= Count_uS(5);
		end if;
		
		if( Period_uS'event and Period_uS = '1' ) then
			if( Count_mS > "1111100111" ) then 
				Count_mS := "0000000000";
			else
				Count_mS := Count_mS + 1;
			end if;
			Period_mS <= Count_mS(9);
		end if;
		
		if( Period_mS'event and Period_mS = '1' ) then
			if( Count_S > "1111100111" ) then 
				Count_S := "0000000000";
			else
				Count_S := Count_S + 1;
			end if;
			Period_S <= Count_S(9);
		end if;
		
	end process;
	
	
	DECODE : process( Symbol )
	begin
		case Symbol is
			when "0000"=>LEDout<= "11000000";    -- '0'
			when "0001"=>LEDout<= "11111001";    -- '1'
			when "0010"=>LEDout<= "10100100";    -- '2'
			when "0011"=>LEDout<= "10110000";    -- '3'
			when "0100"=>LEDout<= "10011001";    -- '4'
			when "0101"=>LEDout<= "10010010";    -- '5'
			when "0110"=>LEDout<= "10000010";    -- '6'
			when "0111"=>LEDout<= "11111000";    -- '7'
			when "1000"=>LEDout<= "10000000";    -- '8'
			when "1001"=>LEDout<= "10010000";    -- '9'
			when "1010"=>LEDout<= "10001000";    -- 'a'
			when "1011"=>LEDout<= "10000011";    -- 'b'
			when "1100"=>LEDout<= "11000110";    -- 'c'
			when "1101"=>LEDout<= "10100001";    -- 'd'
			when "1110"=>LEDout<= "10000110";    -- 'e'
			when "1111"=>LEDout<= "10001110";    -- 'f'
			when others=>LEDout<= "XXXXXXXX";    -- ' '
		end case;
	end process;
	
	
	
	LED8_UPDATE : process (Reset, Period_S, Period_mS, pulse)
		variable CurrentLED : integer range 0 to 3 := 0;
	begin
		
		if( pulse = '1' ) then
			
			DIGITindex <= "0001";
			Symbol <= "0000";			
		
			
			
		elsif( pulse = '0' )then
			
			
			DIGITindex <= "0010";
			--Symbol <= "0001";
		end if;
		
	
		
		--DIGITindex <= "0010";
		--Symbol <= "0011";
		
	end process;
	
	
	
	
end Behavioral;
	