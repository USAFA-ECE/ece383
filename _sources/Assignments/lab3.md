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
