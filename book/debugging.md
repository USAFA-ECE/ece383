# 🪲 Debugging

- ERROR: [VRFC 10-1360] signal cannot be unconstrained
  - SOLUTION: This problem arose from assigning an unsigned number of 10 bits to a signal without a size specified.
  Problem code was `signal vga_col: unsigned := to_unsigned(0,10);` and solution code was `signal vga_col: unsigned (9 downto 0) := to_unsigned(0,10);`
- ERROR: Unspecified I/O Standard
  - SOLUTION: This problem usually comes from having the wrong device selected.  In Vivado, go to Tools->Settings, then under Project Settings->General, then Project Device, you should see Nexys Video.  If you don't, click the ellipses to change the device.  If Nexys Video is not listed, you can go to Tools->Vivado Store then the Boards tab to add it or follow the [instructions](https://digilent.com/reference/programmable-logic/guides/install-board-files) for manually adding board files.
