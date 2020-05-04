library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hw11_p5_or is
	Port (	signal in1, in2 : in  STD_LOGIC;
         	signal or_out   : out STD_LOGIC);
end hw11_p5_or;

architecture behavioral of hw11_p5_or is begin
	process (in1, in2, or_out) is begin
		case std_logic_vector'(in1, in2) is
			when "00" => or_out <= '0';
  			when others => or_out <= '1';
		end case;
  	end process;
end behavioral;