<h1>Lesson Notes for Lesson 19</h1>

<h2>example code for today's class</h2>
	See ICE1 folder in class github repo [class github repo](https://github.com/USAFA-ECE/ece383_wksp) 
 


<h2>MicroBlaze</h2>
The goal of today's class is to bring you up to speed on how to
instantiate a microBlaze processor on our Artix 7, integrate
a custom piece of VHDL code to the processor, and then to write
some C code to run on the microBlaze to control the custom 
VHDL module.  Here are some specifications on the microBlaze processor:

<ul>
<li> It has thirty-two 32-bit general purpose registers.
<li> It uses a 32-bit instruction word with three operands, and has two addressing modes.
<li> It has a 32-bit address bus.
<li> It uses a single issue (3 or 5)-stage pipeline.
</ul>

The following image was copied from the "MicroBlaze Processor Reference Guide"
and summarizes the major features of the processor.

![image](./img/lecture17-4.gif.gif)
<!-- <br><img src="./img/lecture17-4.gif"><br><br> -->


<h2>HW9 or ICE1</h2>
The rest of the class will be devoted to getting the microBlaze to work, doing ICE1.

