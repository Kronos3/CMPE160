library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hw11_p5 is
	Port ( 	signal A, B, C  	: in  STD_LOGIC;
        	signal F            : out STD_LOGIC);
end hw11_p5;

architecture behavioral of hw11_p5 is
	signal int1, int2 : STD_LOGIC;
begin
	and0 : entity work.hw11_p5_and	port map ( in1 => B, in2 => C, and_out => int1);
  	inv0 : entity work.hw11_p5_inv	port map ( inv_in => A, inv_out => int2);
  	or0  : entity work.hw11_p5_or	port map ( in1 => int1, in2 => int2, or_out => F);
end behavioral;
