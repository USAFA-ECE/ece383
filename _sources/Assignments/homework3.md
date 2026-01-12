# ✏️ HW 3

## 📜 Instructions
- Submit via gradescope
- Use Digital for C-code to Schematic questions

## HW3_CODE
- Create a schematic in Digital (see resources section below), similar to the one at the end of lecture 3, for the following circuits.

You may use comparators, muxes and adders, as well as wires, constants, and splitters.  Do NOT use memory-type devices like Lookup Tables or RAM.  Whenever possible reduce the number of devices required to realize the design. You should assume that X, Y, and Z are unsigned(3 downto O).

You will need to specify the number of bits on each component for the simulation to run. Be sure to name your inputs and outputs X,Y, and Z.  Name your files "hw3_a.dig","hw3_b.dig","hw3_c.dig","hw3_d.dig".

- a) if (X==0) then Z = X else Z = Y
- b) if (X==Y) then Z = Y else Z = X+Y
- c) if (X < Y) then Z = X+4 else Z = Y+6
- d) if (X > Y) then Z = X+5 else Z = X+6

- In VHDL, create a digital circuit that takes as input an 8-bit unsigned value (provided by the DIP switches) and illuminates an LED if the input is a multiple of 17. Do NOT use the remainder or division operations. This can easily be accomplished using a single conditional signal assignment
statement.

- Use the following entity for your component.  These names must match exactly for the autograder to work.

entity hw3 is
	port(	d:	in unsigned(7 downto 0); 
			h: out std_logic);
end hw3;

- Commit your VHDL files and XDC file for your component, testbench, and constraints to Github.

- Create a zip file with hw3.vhdl, hw3_tb.vhdl, hw3_a.dig, hw3_b.dig, hw3_c.dig, and hw3_d.dig and submit this to the HW3_CODE assignment in Gradescope.

- Save a screenshot of your simulation waveform.  You will submit this in the HW3 assignment. You should test several inputs and show the output. You do not need to test all possibilities. Use a screenshot or image export from
Vivado, not a photo of your monitor.

## HW3

- Answer the questions in the HW3 assignment in Gradescope.

## Resources

- The Digital simulator is linked on the [Resources page](https://usafa-ece.github.io/ece383/resources.html)
