# 🔬 Lab 4: Direct Digital Synthesis

## 📌 Objectives
- The goal of this lab is to generate an audio waveform of a desired frequency with a high degree of accuracy.

## 📜 Synopsis

You are to use Direct Digital Synthesis to reproduce your audio waveform. You are given a template which implements the [Interpolation Block Diagram](https://georgeyork.github.io/ECE383_web/lab/lab4/Interpolation_block_diagram.pptx) from the class lecture.  Your task will be to create the lookup table, implement the equations for interpolation, and choose an appropriate phase increment to create the desired frequency.

## 💻 Procedure

### Requirements

While you have the flexibility to design the waveform generator as you see fit, your system must meet the following requirements:
- Use an update rate of 48kHz
- Your function generator should be able to create a maximum frequency of 12000 Hz.
- Your function generator should be able to create a minimum frequency between a 0.5 Hz and 1.0 Hz (this is also the minimum change in frequency).
- The provided code uses a phase increment of Q8.8 to meet the above requirements.
- When your phase increment X = 1.0, the output frequency should be 200 Hz +/- 20 Hz.
- Produce a frequency which is equal to your birth month and birth day concatenated together.  For example, if your birthday is July 6th, you should produce a frequency of 0706 = 706Hz.  Note that your final frequency may be slightly off from this desired frequency.  This is ok as long as your phase increment calculation is correct.

### Hardware

Provided Code: [Lab04_cadet_code.zip](https://github.com/USAFA-ECE/ece383/raw/refs/heads/main/book/Assignments/files/Lab04_cadet_code.zip)

The provided VHDL code will allow you to reproduce 5 different frequencies, selectable by button press, via the audio codec's line out interface.  You can plug a speaker or headset into the line out jack and then use a spectrum analyzer to view the frequency of the output.

The code template breaks the design into the following components: Control Unit and Data Path.  

Within the Data Path are:
- ResultReg for storing the final result
- LUT to hold the BRAM and return either the base or next value
- Amplify to multiply the output for amplification
- Interpolate to interpolate between the base and next value by the offset amount
- IndexOffsetReg to hold the index.offset value and increment it by the phase increment

Each of the components above has its own test bench.  Note that the overall Lab4_tb is not intended to be used at this time.  For the other components, feel free to use the test bench to assist you in completing the lab.

### TODO items

To complete the lab you will need to make the following changes.

- Complete the interpolate component by adding equations for delta x offset and base + delta x offset.
- Create a LUT based on the requirements above.
- Choose a phase increment to produce a frequency which is your birth month and day concatenated together.  [This site ](https://www.exploringbinary.com/binary-converter/) can be useful for converting to fixed point binary format.

## 🚚 Deliverables

- To be submitted via gradescope.
- Submit a picture from a spectrum analyzer showing that you can produce the birth month/day frequency.
- Answer the follow up questions.

## Spectrum Analyzer

```{raw} html
<iframe src="https://htmlpreview.github.io/?https://raw.githubusercontent.com/USAFA-ECE/ece383/refs/heads/main/book/Assignments/files/Lab04_spectrum_analyzer.htm" width="100%" height="400px" style="border: none;" allow="microphone;"></iframe>
```

