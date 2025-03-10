# 🔬 Lab 3 Software Control of a Datapath 

## 📌 Objectives
- Students should implement a soft CPU in the fabric of the FPGA and use it to control a hardware datapath

## 📜 Synopsis
In this lab, we will integrate the video display controller developed in Lab 2 with the MicroBlaze processor built using the fabric of the Artix-7 FPGA. In the preceding lectures, we learned about the Vivado and SDK tool chains, now it's time to put that knowledge to the test by building a software controlled datapath. Lab 2 revealed some shortcomings of our oscilloscope that this lab intends on correcting. Specifically, we will add:
- Using both trigger volt and trigger time for the trigger
- Using polling and/or interrupts
- The ability to enable and disable which channels are being displayed

The following figure shows required functionality - your program should allow the user to change the position of the triggerVolt and triggerTime indicators with the result that the waveform should be drawn so that the periodic waveform is increasing through that voltage at that time.

![Triggering](https://georgeyork.github.io/ECE383_web/lab/lab3/img/lab3-1.gif)

## 💻 Procedure

### Setup
In order to accomplish this lab you will need to make some minor changes to the lab2 component, create a new piece of IP, and then program that IP using the MicroBlaze, as described in the block diagram below. We will walk through these steps below.

![Lab2_Hardware](https://georgeyork.github.io/ECE383_web/lab/lab3/img/lab3-2.jpg)

```{note}
Remember the Ready signal in the diagram above is coming from the Flag Register (FlagQ). It is assumed that you hooked the Ready signal coming from the Audio Codec into the "Set Flag" input to the Flag Register and the output of the Flag register FlagQ is the new "Ready" signal coming out of the lab2_dp, and eventually connecting toe Microblaze's interrupt pin. If you accidentally skip the Flag Register and hook the audio codec's Ready signal directly to the interrupt pin, you will find your system plots the sinusoid's incorrectly, plotting what looks to be a very high frequency sinusoid instead of the correct frequency.
```

```{note}
If your Flag Register is 8-bits wide, you will need to extract the single bit of Q (the std_logic_vector output from the flag register) as the interrupt signal (the one set by the Ready signal). This may require you to extract the one bit Q as a separate signal to connect to the MicroBlaze in your block design.
```

### Hardware

Quick instructions for creating your Microblaze project can be found at Lab3 Install.

For the most part, your hardware you developed in lab2 will be unchanged. For controlling your TriggerVolt and TriggerTime, you can either
(1) Retain your Lab2 buttons to control Trigger Volt and Trigger Time, but you must input these signals into Microblaze, and be able to display the values on the UART monitor
or
(2) Control TriggerVolt and TriggerTime from your Microblaze UART keyboard interface by using the slv_regs for microblaze to be able to write to TrigVolt and TrigTime into lab2 datapath ports

### Hardware Setup

Your first step will be to create a component for your lab2 component in your Vivado repository. This will require you to think about what signals are routed to the MicroBlaze and what signals are going outside the Artix 7 chip. The following table should help.

| Signals To/From MicroBlaze | Signals Going Outside Artix 7 |
|----------------------------|-------------------------------|
| exWrAddr                   | clk                           |
| exWen                      | reset                         |
| exSel                      | ac_mclk                       |
| L_bus_out, R_bus_out       | ac_adc_sdata                  |
| exLbus, exRbus             | ac_dac_sdata                  |
| flagQ                      | ac_bclk                       |
| flagClear                  | ac_lrclk                      |
| triggerTime                | sda                           |
| triggerVolt                | scl                           |
| ready                      | tmds                          |
| ch1_enb, ch2_enb?          | tmdsb                         |

For the mapping of the MicroBlaze slv_reg to/from lab2 ports, you need to specify not only which 32-bit slv_reg for each signal, but also which bits are used, and whether it is read/write (in or out to microblaze). Hint: use this spreadsheet: [lab3_signal_mapping.xlsx](https://georgeyork.github.io/ECE383_web/hand/lab3_signal_mapping.xlsx)

### Implementation and Testing
Lessons from previous years:
- For all the lab2 signals you are reading into Microblaze AXI registers, add them to your C-code menu, using printf to print their values when you type the "?" command. This is very useful in debugging

Build your C-code incrementally, with baby-step tests such as these (and add each of these tests as one of your C-code menu options):
- Draw a horizontal line on channel 1 and a diagonal line on channel 2, by writing the proper values to the BRAM (this test does not require your interface with the audio codec or the interrupt to work, and tests if you can write to the BRAM, and see the correct output on the scopeface)
```{C}
pseudo code:
        case 'd':     // some of these will be XIL commands
            for (i=0;i<1024;i++) {
			   exWrAddr = i; // set BRAM address
			   exLBus = 185; // row for horz line 
			                 // need to shift to upper 10bits?
			   exRBus = i;   // diagnonal line [need to shift?]
			   exWen = 1;    // write data to address in BRAM
			   exWen = 0;    // turn off write
            }
			break;
```

Or you could modify the above case 'd' to plot a sine wave, using a hardcoded sine wave look-up-table [this is only 64 samples so you would have to repeat it 16 times for 1024 samples]. Also, you need to scale these values to move to the upper 10-bits of the 16-bit values you write to the BRAM... like shift left 7, or multiply by 128.
```{C}
u16 sinFunc[64] = {128,141,153,165,177,189,200,210,219,227,235,241,246,250,253,255,
255,254,252,248,244,238,231,223,214,205,194,183,171,159,147,134,
122,109, 97, 85, 73, 62, 51, 42, 33, 25, 18, 12,  8,  4,  2,  1,
1,  3,  6, 10, 15, 21, 29, 37, 46, 56, 67, 79, 91,103,115,128};
```

## 🚚 Deliverables

#### Gate Check 1 - Design
- *[5 Points]*

- You need to decide if TrigVolt, TrigTime, Ch1_enb, and Ch2_enb will be controlled via buttons on the FGPA board or using the UART keyboard controlling them through Microblaze.
- For this Gate Check you will turn in a revised Lab2_datapath block diagram, correctly showing all these signals (and their directions), and adding or removing parts (like button debouncing).
- Also for this Gate Check, you will turn in a mapping of 32 AXI registers (slv_reg) to lab2 signals. or the mapping of the MicroBlaze slv_reg to/from lab2 ports, you need to specify not only which 32-bit slv_reg for each signal, but also which bits are used, and whether it is read/write (in or out to microblaze). Hint: use this spreadsheet: [lab3_signal_mapping.xlsx](https://georgeyork.github.io/ECE383_web/hand/lab3_signal_mapping.xlsx)

- Push your code to your GitHub repository using git with the [tag](https://www.atlassian.com/git/tutorials/inspecting-a-repository/git-tag) `Lab3_GC1`

#### Gate Check 2 - Lab 2 with ExSel Off ('0')
- *[5 Points]*

- You need to have all of your Lab 2 functionality implemented with the Microblaze. That is, you need to be able to set ExSel to '0' from your microblaze C program and be able to achieve the same functionality as you did in Lab 2.
  
- The demo can be live to your instructor or a video uploaded to Teams.

- Push your code to your GitHub repository using git with the [tag](https://www.atlassian.com/git/tutorials/inspecting-a-repository/git-tag) `Lab3_GC2`
  
#### Gate Check 3 - CPU Interface
- *[5 Points]*

- You need to be able to send UART commands using the terminal to your FPGA to adjust the trigger on the screen. The trigger on the screen should properly react to moving the trigger either up or down. Or, if you choose to not to control the trigger from the terminal and kept the lab 2 Trigger Volt and Time buttons, then show on your UART display that your C program can read the Trigger Volt and Trigger Time from the hardware buttons.

- You need to implement at least one of the baby-step tests mentioned above in the "Implementation and Testing" section.

- The demo can be live to your instructor or a video uploaded to Teams.

- Push your code to your GitHub repository using git with the [tag](https://www.atlassian.com/git/tutorials/inspecting-a-repository/git-tag) `Lab3_GC3`

### Required Functionality
- *[40 Points]*

In order to achieve required functionality, you will need to properly trigger the oscilloscope on channel 1 using a positive edge trigger. Control of this process is to be performed using the MicroBlaze. The main tasks of the MicroBlaze will include:
- Move audio samples into a pair of linear or circular buffers. These circular buffers will be maintained in the address space of the MicroBlaze. That is, you should have two big arrays defined in your program. Use interrupts or polling of the ready bit through the flag register.
- Examine the samples, looking for a trigger event.
- Fill the remaining sample slots in memory.
- Move the appropriate buffer values into the display memory of the oscilloscope (lab2) component.
- Provide a user menu (through the terminal) allowing the user to adjust the trigger voltage and trigger time. (Or if you did not implement trigger control in C show that your MicroBlaze can read trigger volt and time by displaying on the UART monitor)
- Your system must operate in continuous mode (not blocked waiting on user key-press)
- For partial credit if the full system is not working, enumerate the test cases that do work (like case 'm')

- The demo can be live to your instructor or a video uploaded to Teams.

- Push your code to your GitHub repository using git with the [tag](https://www.atlassian.com/git/tutorials/inspecting-a-repository/git-tag) `Lab3_ReqdFunc`

### A-level Functionality
- *[10 Points]*
- Achieve required functionality.
- Use the ready bit of the flag register to trigger an interrupt. The ISR should store the samples, look for a triggering event, and signal when the stored samples should be transfered to the BRAM in the oscilloscope component.
- Add means to control Ch1_enb and Ch2_enb either by adding two FPGA board switches or controlled by MicroBlaze terminal interface.

- The demo can be live to your instructor or a video uploaded to Teams.

- Push your code to your GitHub repository using git with the [tag](https://www.atlassian.com/git/tutorials/inspecting-a-repository/git-tag) `Lab3_AFunc`

### Turn In

- All of your work in this lab is to be submitted using Github and you will make submission in Gradescope to record the time each milestone is completed.

#### README

- *[20 Points]*
For this lab, README only needs
- **Design**: Updated lab2 block diagram with correct signals
- **Design**: Mapping of 32 AXI registers to lab2 signals
- **Functionality**
  - Evidence of completing Gate Checks 1 and 2, required functionality, and A-functionality, along with the date/time achieved. This section should clearly state for each milestone/functionality the date/time it was achieved, level of achievement (e.g, achieved, partially-achieved, not achieved), what was achieved, and how you proved it (via demo or evidence like images/videos). For example, you could have a table like this:

| Milestone | Date/Time | What was achieved |
|-----------|-----------|-------------------|
| Gate Check 1	||	|
|Gate Check 2	||	|
|Gate Check 3	||	|
|Required Functionality	||	 |
|A Functionality	||	 |

- **Conclusion** - Explain what your learned from this lab and what changes you would recommend in future years to this lab or the lectures leading up to this lab.

### Grading
| Item | Points |
|------|--------|
| Gate Check 1 | 5 |
| Gate Check 2 | 5 |
| Gate Check 3 | 5 |
| Required Functionality | 40 |
| A-Level Functionality | 10 |
| Use of Git / GitHub | 5 |
| Code Style | 10 |
| README | 20 |
| **Total** | **100** |
