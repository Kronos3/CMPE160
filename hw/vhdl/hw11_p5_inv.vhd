library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hw11_p5_inv is
	Port (	signal inv_in    : in  STD_LOGIC;
         	signal inv_out   : out STD_LOGIC);
end hw11_p5_inv;

architecture behavioral of hw11_p5_inv is begin
	process (inv_in, inv_out) is begin
		case inv_in is
			when '0' => inv_out <= '1';
  			when others => inv_out <= '0';
		end case;
  	end process;
end behavioral;