--------------------------------------------------------------------
-- Name:	
-- Date:	
-- File:	hw8b_cu.vhdl
-- HW:	    hw8b
-- Crs:	    ECE 383
--
-- Purp:	A FSM for HW8b keyboard scan unit
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

entity hw8b_cu is
	Port(	clk: in  STD_LOGIC;
			reset : in  STD_LOGIC;
			cw: out STD_LOGIC_VECTOR(5 downto 0);
			sw: in STD_LOGIC_VECTOR(1 downto 0);
			ACQ: out std_logic;
			REQ: in std_logic);
end hw8b_cu;

architecture behavior of hw8b_cu is

	type state_type is (    *** complete this ***    );
	signal state: state_type;
	signal bigCW: std_logic_vector(6 downto 0);
	
begin
	
    state_process: process(clk)
	 begin
		if (rising_edge(clk)) then
			if (reset = '0') then 
				state <= waitREQ;
			else
				case state is
					when waitREQ =>
						if (REQ = '1') then state <= *** complete this ***; end if;
					*** complete this ***								
				end case;
			end if;
		end if;
	end process;


	------------------------------------------------------------------------------
	--			OUTPUT EQUATIONS
	--	
	--		bits 6          bit 5			bit 4,3					bit 2,1          bit 0              
	--		ACQ 			MBR         	Loop Counter		    Match Counter    Key
	--		0 - not busy	1 - load        00 hold	        	    00 hold          1-load
	--		1 - busy		0 - hold    	01 count up				01 count up      0-hold
	--										10 unused			    10 unused	
	--										11 reset			    11 reset
	------------------------------------------------------------------------------	
	bigCW <= "0000000" when state = waitREQ else
			 *** complete this ***

	cw <= bigCW(5 downto 0);
	ACQ <= bigCW(6);
	
end behavior;	