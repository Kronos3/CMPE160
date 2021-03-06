library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hw11_p1 is
	Port ( signal A, B, C : in  STD_LOGIC;
           signal in7, in6, in5, in4, in3, in2, in1, in0  : in  STD_LOGIC;
           signal mux_out : out STD_LOGIC);
end hw11_p1;

architecture behavioral of hw11_p1 is begin
	process (A, B, C, in7, in6, in5, in4, in3, in2, in1, in0) is begin
		case std_logic_vector'(A,B,C) is
			when "000" => mux_out <= in0;
  			when "001" => mux_out <= in1;
  			when "010" => mux_out <= in2;
			when "011" => mux_out <= in3;
			when "100" => mux_out <= in4;
			when "101" => mux_out <= in5;
			when "110" => mux_out <= in6;
			when others => mux_out <= in7; -- "111"
		end case;
  	end process;
end behavioral;