--------------------------------------------------------------------
-- Name:	George York
-- Date:	Feb 3, 2015
-- File:	hw8b_tb.vhdl
-- HW:	hw8b_tb
--	Crs:	ECE 383
--
-- Purp: The testbench for hw8b
--
--
-- Academic Integrity Statement: I certify that, while others may have 
-- assisted me in brain storming, debugging and validating this program, 
-- the program itself is my own work. I understand that submitting code 
-- which is the work of other individuals is a violation of the honor   
-- code.  I also understand that if I knowingly give my original work to 
-- another individual is also a violation of the honor code. 
------------------------------------------------------------------------- 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY hw8b_tb IS
END hw8b_tb;

ARCHITECTURE behavior OF hw8b_tb IS 

	COMPONENT hw8b_cu is
	Port(	clk: in  STD_LOGIC;
			reset : in  STD_LOGIC;
			cw: out STD_LOGIC_VECTOR(5 downto 0);
			sw: in STD_LOGIC_VECTOR(1 downto 0);
			ACQ: out std_logic;
			REQ: in std_logic);
	END COMPONENT;
	
	COMPONENT hw8b_dp is
	Port(	clk: in  STD_LOGIC;
			reset_n : in  STD_LOGIC;
			cw: in std_logic_vector(5 downto 0);
			sw: out std_logic_vector(1 downto 0);
			data : in std_logic_vector (15 downto 0);
			match: out unsigned (9 downto 0));
	END COMPONENT;	

	SIGNAL clk :  std_logic;
	SIGNAL reset :  std_logic;
	SIGNAL cw_sig : STD_LOGIC_VECTOR(5 downto 0);
	SIGNAL sw_sig : STD_LOGIC_VECTOR(1 downto 0);
	
	SIGNAL REQ_sig :  std_logic;
	SIGNAL ACQ_sig :  std_logic;
	SIGNAL data_sig :  std_logic_vector(15 downto 0);
	SIGNAL match_sig :  unsigned(9 downto 0);

   -- Clock period definitions
   constant clk_period : time := 500 ns;


BEGIN

	uut_cu: hw8b_cu PORT MAP(
		clk => clk,
		reset => reset,
		cw => cw_sig,
		sw => sw_sig,
		ACQ => ACQ_sig,
		REQ => REQ_sig);
	
	uut_dp: hw8b_dp PORT MAP(
		clk => clk,
		reset_n => reset,
		cw => cw_sig,
		sw => sw_sig,
		data => data_sig,
		match => match_sig);
		
  -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2; 
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	reset <= '0', '1' after 2 us;
	REQ_sig <= '0', '1' after 4750 ns, '0' after 6750 ns;
	data_sig <= "0111111111111111"; 

END;
