library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hw11_p3 is
	Port (  signal sel     : in  STD_LOGIC_VECTOR(2 downto 0);
        	signal mux_in  : in  STD_LOGIC_VECTOR(7 downto 0);
        	signal mux_out : out STD_LOGIC);
end hw11_p3;

architecture behavioral of hw11_p3 is begin 
	process (sel, mux_in, mux_out) is begin
		case sel is
			when "000" => mux_out <= mux_in(0);
			when "001" => mux_out <= mux_in(1);
			when "010" => mux_out <= mux_in(2);
			when "011" => mux_out <= mux_in(3);
			when "100" => mux_out <= mux_in(4);
			when "101" => mux_out <= mux_in(5);
			when "110" => mux_out <= mux_in(6);
			when others => mux_out <= mux_in(7); -- "111"
		end case;
	end process;
end behavioral;