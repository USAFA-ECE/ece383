# 🔬 ICE 2: Microblaze Custom Hardware

## 📌 Objectives

- Students should know how to integrate custom hardware with the Microblaze architecture

## 📜 Synopsis

In this ice, you will add a counter with LEDs to the Microblaze hardware design then use a C program to interact with the counter through the serial terminal.

## 🧮 Procedure

- Download [ice2.zip](https://github.com/USAFA-ECE/ece383/raw/refs/heads/main/book/Assignments/files/ice2.zip)
- We will go through a modified version of [this tutorial](https://georgeyork.github.io/ECE383_web/hand/Lec18_Install_short_version.pdf) together.

## 💻 Code Snippets

### My_Counter_IP_slave_lite_v1_0_S00_AXI.vhd
```{code-block} c
    LED : out std_logic_vector(7 downto 0);
```
```{code-block} c
    component lec10 is
    generic (N: integer := 4);
    port(
        clk: in  STD_LOGIC;
        reset_n : in  STD_LOGIC;
        ctrl: in std_logic_vector(1 downto 0);
        D: in unsigned (N-1 downto 0);
        Q: out unsigned (N-1 downto 0));
    end component;

    signal Q : unsigned (7 downto 0);
```
```{code-block} c
    X"000000" & std_logic_vector(Q)
```
```{code-block} c
    counter: lec10 
    generic map (8)
    port map(
        clk => S_AXI_ACLK, 
        reset_n => S_AXI_ARESETN, 
        ctrl =>    slv_reg1(1 downto 0),
        D => unsigned(slv_reg0(7 downto 0)), 
        Q => Q);
    LED <= std_logic_vector(Q);
```

### My_Counter_IP.vhd
```{code-block} c
    LED : out std_logic_vector(7 downto 0); 
```
```{code-block} c
    LED : out std_logic_vector(7 downto 0); 
```
```{code-block} c
    LED => LED,
```
