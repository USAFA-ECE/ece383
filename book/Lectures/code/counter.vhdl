--------------------------------------------------------------------
-- Name:	Nathanael Bean
-- Date:	Jan 13, 2022
-- File:	lec04.vhdl
-- HW:	Lecture 4
--	Crs:	ECE 383
--
-- Purp:	Demos the use of processes
--
-- Documentation:	I pulled some information from chapter .
--
-- Academic Integrity Statement: I certify that, while others may have 
-- assisted me in brain storming, debugging and validating this program, 
-- the program itself is my own work. I understand that submitting code 
-- which is the work of other individuals is a violation of the honor   
-- code.  I also understand that if I knowingly give my original work to 
-- another individual is also a violation of the honor code. 
------------------------------------------------------------------------- 
library IEEE;		
use IEEE.std_logic_1164.all; 
use IEEE.NUMERIC_STD.ALL;


entity counter is
	Port(	clk: in  STD_LOGIC;
			reset : in  STD_LOGIC;
			ctrl: in std_logic;
			Q: out unsigned (2 downto 0)
			);
end counter;

architecture behavior of counter is
	

	signal processQ: unsigned (2 downto 0);

begin
	
	
	-----------------------------------------------------------------------------
	--		ctrl
	--		0			hold
	--		1			count up mod 5
	-----------------------------------------------------------------------------
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '0') then
				processQ <= (others => '0');
			elsif ((processQ < 4) and (ctrl = '1')) then
				processQ <= processQ + 1;
			elsif ((processQ = 4) and (ctrl = '1')) then
				processQ <= (others => '0');
			end if;
		end if;
	end process;
 
	-- CSA
	Q <= processQ;
	
end behavior;