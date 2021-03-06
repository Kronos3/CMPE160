library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hw11_p5_and is
	Port (	signal in1, in2 : in  STD_LOGIC;
        	signal and_out  : out STD_LOGIC);
end hw11_p5_and;

architecture behavioral of hw11_p5_and is begin
	process (in1, in2, and_out) is begin
		case std_logic_vector'(in1, in2) is
			when "11" => and_out <= '1';
  			when others => and_out <= '0';
		end case;
  	end process;
end behavioral;