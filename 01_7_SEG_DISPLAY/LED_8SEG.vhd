library ieee;
use ieee.std_logic_1164.all;
 
 
entity LED_8SEG is
	port (-- remove later
			clk : in std_logic;
			led_1 : out std_logic;
			led_2 : out std_logic;
			led_3 : out std_logic;
			led_4 : out std_logic;
			-- end remove
			
			reset : in std_logic;
			--clk : in std_logic;
			ledout : out std_logic_vector(7 downto 0);
			digitsel : out std_logic_vector(3 downto 0));
end LED_8SEG;


architecture Behavioral of LED_8SEG is
	signal pulse : std_logic := '0';
	signal count : integer range 0 to 50000000 := 0;
	-- end remove
	signal digit : std_logic_vector(3 downto 0);
	
begin
	BLINK : process(clk)
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
	
	
	--TIME : ()
	
	
	DECODE : process (digit)
	begin
		case digit is
			when "0000"=>ledout<= "11000000";    -- '0'
			when "0001"=>ledout<= "11111001";    -- '1'
			when "0010"=>ledout<= "10100100";    -- '2'
			when "0011"=>ledout<= "10110000";    -- '3'
			when "0100"=>ledout<= "10011001";    -- '4'
			when "0101"=>ledout<= "10010010";    -- '5'
			when "0110"=>ledout<= "10000010";    -- '6'
			when "0111"=>ledout<= "11111000";    -- '7'
			when "1000"=>ledout<= "10000000";    -- '8'
			when "1001"=>ledout<= "10010000";    -- '9'
			when "1010"=>ledout<= "10001000";    -- 'a'
			when "1011"=>ledout<= "10000011";    -- 'b'
			when "1100"=>ledout<= "11000110";    -- 'c'
			when "1101"=>ledout<= "10100001";    -- 'd'
			when "1110"=>ledout<= "10000110";    -- 'e'
			when "1111"=>ledout<= "10001110";    -- 'f'
			when others=>ledout<= "XXXXXXXX";    -- ' '
		end case;
	end process;
	
end Behavioral;
	