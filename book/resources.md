# 💎 Resources

# ECE383 - Embedded Systems II with the Digilent Nexys Video

- [Datasheets](https://georgeyork.github.io/ECE383_web/datasheets.html)
- [Labs](https://georgeyork.github.io/ECE383_web/lab/labs.html)
- [Admin](https://georgeyork.github.io/ECE383_web/admin.html)

## Xilinx

- [Vivado/Vitis Installation Instructions](./files/Vivado%20and%20Vitis%20Installation%20Instructions.pdf)
- [Xilinx Development Tools Download](https://www.xilinx.com/support/download.html)
- [Artix-7 XC7A200T-1SBG484C Digikey Page](https://www.digikey.com/en/products/detail/xilinx-inc/XC7A200T-1SBG484C/520-1463-ND)

## Digilent Nexys Video

- [Overview](https://store.digilentinc.com/nexys-video-artix-7-fpga-trainer-board-for-multimedia-applications/)
- [Introduction to the Digilent Nexys Video](https://reference.digilentinc.com/reference/programmable-logic/nexys-video/start)
- [Datasheet on BRAMs](https://docs.amd.com/r/en-US/ug953-vivado-7series-libraries/BRAM_SDP_MACRO)
- [Memory Resources Guide](https://docs.amd.com/v/u/en-US/ug473_7Series_Memory_Resources)
- [Nexys Video Board Reference Manual](https://reference.digilentinc.com/reference/programmable-logic/nexys-video/reference-manual)
  - [Reference Manual on Digilent Website](https://reference.digilentinc.com/reference/programmable-logic/nexys-video/reference-manual)
- [Nexys Video Board Schematic](https://reference.digilentinc.com/_media/programmable-logic/nexys-video/nexys_video_sch.pdf)
  - [Schematic on Digilent Website](https://reference.digilentinc.com/reference/programmable-logic/nexys-video/reference-manual)
- [Nexys Video Master XDC File](https://github.com/Digilent/digilent-xdc/blob/master/Nexys-Video-Master.xdc)
  - [XDC File on Digilent Website](https://reference.digilentinc.com/reference/programmable-logic/nexys-video/reference-manual)

## MicroBlaze

- [MicroBlaze Tutorial (Spring 2016 - uses Digilent Atlys)](https://georgeyork.github.io/ECE383_web/hand/hand17.docx)
- [MicroBlaze Processor Reference Guide](http://www.xilinx.com/support/documentation/sw_manuals/mb_ref_guide.pdf)
- [BYU MicroBlaze Tutorial (uses Digilent Atlys)](http://ee427plblabs.groups.et.byu.net/wiki/lib/exe/fetch.php?media=lab1-how-to.pdf)
- [Xilinx MicroBlaze Documentation](http://www.xilinx.com/tools/microblaze.htm)
- [CMake Fix](https://adaptivesupport.amd.com/s/question/0D52E00006hpL4aSAE/vitis-20192-unable-to-select-libmetal-and-openamp?language=en_US)

## Final Project Help

- [IR controller hints](https://georgeyork.github.io/ECE383_web/datasheets/IR_controller_hints.pptx)
- [NES controller hints](https://georgeyork.github.io/ECE383_web/datasheets/NES%20controller%20hints.pptx)
- [PS2 Mouse interface hints](https://georgeyork.github.io/ECE383_web/datasheets/PS2_Mouse_HowTo.zip)
- [Example Grid Memory with BRAMs (zip)](https://georgeyork.github.io/ECE383_web/datasheets/grid%20memory.zip)
- [Example Grid Memory with 2D Arrays (zip)](https://georgeyork.github.io/ECE383_web/datasheets/2Darray_memory.zip)
- [Example Graphics Memory, 2 bits per pixel (zip)](https://georgeyork.github.io/ECE383_web/datasheets/graphics%20memory%202bits%20per%20pixel.zip)
- [Reading UART keyboard without being locked out](https://georgeyork.github.io/ECE383_web/datasheets/Using%20keyboard%20buffer.pdf)
- [Analog to Digital Converter hints](https://georgeyork.github.io/ECE383_web/datasheets/Analog%20to%20Digital%20Converter.zip)
- [Random Number Hints](https://georgeyork.github.io/ECE383_web/datasheets/Random_Number_Hints.pdf)
- [How to 3D print a case for your FPGA board](https://georgeyork.github.io/ECE383_web/datasheets/3D_Print_Case.zip)
- [How to use the logic analyzer](https://georgeyork.github.io/ECE383_web/datasheets/Logic_Analyzer.pdf)
- [Example code: How to print to OLED display](https://georgeyork.github.io/ECE383_web/datasheets/OLED_example2.zip)

## Debugging Hints

You can always simulate your design with a Testbench; however, to debug your live code, here are four ways to observe live signals:

1. **LEDs**: You can send a live signal to one of the 8 LEDs on the FPGA board.
2. **OLED Display**: You can "print" a message of the status of signals to the OLED display on the FPGA board.
3. **GPIO and Logic Analyzer**: You have 24 GPIO output pins on your FPGA board to which you can send live signals, and then display the signals on the Logic Analyzer.
4. **MicroBlaze and UART Monitor**: If you are running MicroBlaze and have the signals connected to a MicroBlaze register, you can use `printf` to output to the UART monitor.

## Textbook Errata 😵




