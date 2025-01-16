# 🪲 Debugging

- ERROR: [VRFC 10-1360] signal cannot be unconstrained
  - SOLUTION: This problem arose from assigning an unsigned number of 10 bits to a signal without a size specified.
  Problem code was ```vhdl signal vga_col: unsigned := to_unsigned(0,10);``` and solution code was ```vhdl signal vga_col: unsigned (9 downto 0) := to_unsigned(0,10);```
