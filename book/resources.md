# 💎 Resources

# ECE383 - Embedded Systems II with the Digilent Nexys Video

- [Datasheets](https://georgeyork.github.io/ECE383_web/datasheets.html)
- [Labs](https://georgeyork.github.io/ECE383_web/lab/labs.html)
- [Admin](https://georgeyork.github.io/ECE383_web/admin.html)

## Xilinx

- [Vivado/Vitis Installation Instructions](./files/Vivado%20WebPack%20Installation%20Instructions.pdf)
- [Xilinx Development Tools Download](https://www.xilinx.com/support/download.html)
- [Artix-7 XC7A200T-1SBG484C Digikey Page](https://www.digikey.com/en/products/detail/xilinx-inc/XC7A200T-1SBG484C/520-1463-ND)

## Digilent Nexys Video

- [Overview](https://store.digilentinc.com/nexys-video-artix-7-fpga-trainer-board-for-multimedia-applications/)
- [Introduction to the Digilent Nexys Video](https://reference.digilentinc.com/reference/programmable-logic/nexys-video/start)
- [Datasheet on BRAMs](https://docs.amd.com/r/en-US/ug953-vivado-7series-libraries/BRAM_SDP_MACRO)
- [Nexys Video Board Reference Manual](https://reference.digilentinc.com/reference/programmable-logic/nexys-video/reference-manual)
  - [Reference Manual on Digilent Website](https://reference.digilentinc.com/reference/programmable-logic/nexys-video/reference-manual)
- [Nexys Video Board Schematic](https://reference.digilentinc.com/_media/programmable-logic/nexys-video/nexys_video_sch.pdf)
  - [Schematic on Digilent Website](https://reference.digilentinc.com/reference/programmable-logic/nexys-video/reference-manual)
- [Nexys Video Master XDC File](https://github.com/Digilent/digilent-xdc/blob/master/Nexys-Video-Master.xdc)
  - [XDC File on Digilent Website](https://reference.digilentinc.com/reference/programmable-logic/nexys-video/reference-manual)

## MicroBlaze

- [MicroBlaze Tutorial (Spring 2016 - uses Digilent Atlys)](https://georgeyork.github.io/ECE383_web/datasheets/MicroBlaze_Tutorial.docx)
- [MicroBlaze Processor Reference Guide](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2019_1/ug984-vivado-microblaze-ref.pdf)
- [BYU MicroBlaze Tutorial (uses Digilent Atlys)](https://ee427plblabs.groups.et.byu.net/mb_tutorial/mb_tutorial.html)
- [Xilinx MicroBlaze Documentation](https://www.xilinx.com/products/design-tools/microblaze.html)

## Final Project Help

- [IR controller hints](https://georgeyork.github.io/ECE383_web/datasheets/IR_Controller_Hints.pdf)
- [NES controller hints](https://georgeyork.github.io/ECE383_web/datasheets/NES_Controller_Hints.pdf)
- [PS2 Mouse interface hints](https://georgeyork.github.io/ECE383_web/datasheets/PS2_Mouse_Interface_Hints.pdf)
- [Example Grid Memory with BRAMs (zip)](https://georgeyork.github.io/ECE383_web/datasheets/Example_Grid_Memory_with_BRAMs.zip)
- [Example Grid Memory with 2D Arrays (zip)](https://georgeyork.github.io/ECE383_web/datasheets/Example_Grid_Memory_with_2D_Arrays.zip)
- [Example Graphics Memory, 2 bits per pixel (zip)](https://georgeyork.github.io/ECE383_web/datasheets/Example_Graphics_Memory_2bpp.zip)
- [Reading UART keyboard without being locked out](https://georgeyork.github.io/ECE383_web/datasheets/Reading_UART_Keyboard.pdf)
- [Analog to Digital Converter hints](https://georgeyork.github.io/ECE383_web/datasheets/ADC_Hints.pdf)
- [Random Number Hints](https://georgeyork.github.io/ECE383_web/datasheets/Random_Number_Hints.pdf)
- [How to 3D print a case for your FPGA board](https://georgeyork.github.io/ECE383_web/datasheets/3D_Print_FPGA_Case.pdf)
- [How to use the logic analyzer](https://georgeyork.github.io/ECE383_web/datasheets/Using_Logic_Analyzer.pdf)
- [Example code: How to print to OLED display](https://georgeyork.github.io/ECE383_web/datasheets/Printing_to_OLED.pdf)

## Debugging Hints

You can always simulate your design with a Testbench; however, to debug your live code, here are four ways to observe live signals:

1. **LEDs**: You can send a live signal to one of the 8 LEDs on the FPGA board.
2. **OLED Display**: You can "print" a message of the status of signals to the OLED display on the FPGA board.
3. **GPIO and Logic Analyzer**: You have 24 GPIO output pins on your FPGA board to which you can send live signals, and then display the signals on the Logic Analyzer.
4. **MicroBlaze and UART Monitor**: If you are running MicroBlaze and have the signals connected to a MicroBlaze register, you can use `printf` to output to the UART monitor.

## Textbook Errata 😵




