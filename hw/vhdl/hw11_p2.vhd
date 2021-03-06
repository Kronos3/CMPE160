library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity hw11_p2 is
	Port ( signal A, B : in  STD_LOGIC;
           signal in3, in2, in1, in0  : in  STD_LOGIC;
           signal mux_out : out STD_LOGIC);

end hw11_p2;
architecture behavioral of hw11_p2 is begin
	process (A, B, in3, in2, in1, in0) is begin
		case std_logic_vector'(A,B) is
			when "00" => mux_out <= in0;
  			when "01" => mux_out <= in1;
  			when "10" => mux_out <= in2;
			when others => mux_out <= in3; -- "11"
		end case;
  end process;
end behavioral;