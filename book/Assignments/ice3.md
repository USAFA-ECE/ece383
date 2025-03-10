# 🔬 ICE 3: Microblaze Interrupts

## 📌 Objectives

- Students should know how to trigger Microblaze interrupts

## 📜 Synopsis

In this ICE, you will add a roll flag to the counter and connect it to the MicroBlaze's interrupt input

## 🧮 Procedure

- [Part 1](https://guidejar.com/guides/d4b787e3-ba6d-4aeb-aa3a-b8b560b7f9b6)
- [Part 2](https://guidejar.com/guides/beb6e748-f2a7-487c-81b1-6f7f24f73ac6)

## 💻 Code Snippets
- [lec19.c](https://georgeyork.github.io/ECE383_web/lecture/code/lec19.c)

```{code-block} c
void myISR(void) {
	isrCount = isrCount + 1;
	Xil_Out8(countCtrlReg,count_RESET);
	Xil_Out8(countCtrlReg,count_HOLD);
}
```

