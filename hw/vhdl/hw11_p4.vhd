library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hw11_p4 is
	Port (  signal sel     : in  STD_LOGIC_VECTOR(2 downto 0);
        	signal mux_in  : in  STD_LOGIC_VECTOR(3 downto 0);
        	signal mux_out : out STD_LOGIC);
end hw11_p4;

architecture behavioral of hw11_p4 is begin 
	process (sel, mux_in, mux_out) is begin
		case sel is
			when "00" => mux_out <= mux_in(0);
			when "01" => mux_out <= mux_in(1);
			when "10" => mux_out <= mux_in(2);
			when others => mux_out <= mux_in(3); -- "11"
		end case;
	end process;
end behavioral;