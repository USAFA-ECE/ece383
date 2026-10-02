--------------------------------------------------------------------
-- Name:	George York
-- Date:	Feb 3, 2023
-- File:	hw8b2_tb.vhdl
-- HW:	    hw8b2_tb
--	Crs:	ECE 383
--
-- Purp: The testbench for hw8b2
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

	COMPONENT hw8b2_cu is
	Port(	clk: in  STD_LOGIC;
			reset : in  STD_LOGIC;
			cw: out STD_LOGIC_VECTOR(3 downto 0);
			sw: in STD_LOGIC;
			Ready: in std_logic);
	END COMPONENT;
	
	COMPONENT hw8b2_dp is
	Port(	clk: in  STD_LOGIC;
			reset_n : in  STD_LOGIC;
			cw: in std_logic_vector(3 downto 0);
			sw: out std_logic;
			data_in : in std_logic_vector (15 downto 0);
			data_out : out std_logic_vector (15 downto 0));
	END COMPONENT;	

	SIGNAL clk :  std_logic;
	SIGNAL reset :  std_logic;
	SIGNAL cw_sig : STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL sw_sig : STD_LOGIC;
	
	SIGNAL Ready_sig, Ready_clk :  std_logic;
	SIGNAL data_in_sig :  unsigned(15 downto 0);
	SIGNAL data_out_sig :  std_logic_vector(15 downto 0);
	
   -- Clock period definitions
   constant clk_period : time := 500 ns;
   constant ready_clk_period : time := 4 us;

BEGIN

	uut_cu: hw8b2_cu PORT MAP(
		clk => clk,
		reset => reset,
		cw => cw_sig,
		sw => sw_sig,
		Ready => Ready_sig);
	
	uut_dp: hw8b2_dp PORT MAP(
		clk => clk,
		reset_n => reset,
		cw => cw_sig,
		sw => sw_sig,
		data_in => std_logic_vector(data_in_sig),
		data_out => data_out_sig);
		
  -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2; 
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	reset <= '0', '1' after 1.5 us;
	
	
   -- use a counter and  slower clock to generate ready signal and data_in	
   Ready_clk_process :process
   begin
		Ready_clk <= '0';
		wait for ready_clk_period/2; 
		Ready_clk <= '1';
		wait for ready_clk_period/2;
   end process;	
   
 	process(clk)
	begin
	    if (reset = '0') then
            data_in_sig <= (others => '0');
            Ready_sig <= '0';
        else if (rising_edge(Ready_clk)) then
                Ready_sig <= '1'; 
				data_in_sig <= data_in_sig + 13;
			 else
                Ready_sig <= '0'; 		 
			end if;
		end if;
	end process;  
   

END;
