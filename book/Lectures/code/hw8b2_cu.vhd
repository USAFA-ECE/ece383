--------------------------------------------------------------------
-- Name:	
-- Date:	
-- File:	hw8b2_cu.vhdl
-- HW:	    hw8b2
-- Crs:	    ECE 383
--
-- Purp:	testing writing and reading from BRAM
--
-- Documentation:	
--
-- Academic Integrity Statement: I certify that, while others may have 
-- assisted me in brain storming, debugging and validating this program, 
-- the program itself is my own work. I understand that submitting code 
-- which is the work of other individuals is a violation of the honor   
-- code.  I also understand that if I knowingly give my original work to 
-- another individual is also a violation of the honor code. 
------------------------------------------------------------------------- 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity hw8b2_cu is
	Port(	clk: in  STD_LOGIC;
			reset : in  STD_LOGIC;
			cw: out STD_LOGIC_VECTOR(3 downto 0);
			sw: in STD_LOGIC;
			Ready: in std_logic);
end hw8b2_cu;

architecture behavior of hw8b2_cu is

	type state_type is (    *** complete this ***    );
	signal state: state_type;
	
begin
	
    state_process: process(clk)
	 begin
		if (rising_edge(clk)) then
			if (reset = '0') then 
				state <= initC;
			else
				case state is
					when initC =>
					*** complete this ***								
				end case;
			end if;
		end if;
	end process;

	------------------------------------------------------------------------------
	--			OUTPUT EQUATIONS
	--	
	--		bits 3          bit 2			bit 1,0					             
	--		DataOut			WriteBRAM       Loop Counter		    
	--		0 - hold  		0 - hold        00 hold	        	    
	--		1 - load		1 - write    	01 count up				
	--		  		                        11 reset			    
	------------------------------------------------------------------------------	
	cw <= "0011" when state = initC else
			 *** complete this ***


	
end behavior;	