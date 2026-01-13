# ✏️ HW 4

## 📜 Instructions

In this homework you will create a generic counter.  By default it will be a mod-10 counter but you can easily customize it by changing the parameters in the generic map.

The counters behavior is described in the table below.

| clk          | reset_n  | ctrl     | Q+ |
|:------------:|:--------:|:--------:|:-----------------:|
|  0,1,falling |  X       |  X       | Q                 |
|  rising      |  0       |  X       | 0                 |
|  rising      |  1       |  0       | Q                 |
|  rising      |  1       |  1       | Q+1 mod max_value |

`roll` should be 1 when `Q` is at `max_value`.  For example, for a mod-10 counter, `roll` should be 1 when `Q` is 9.


Implement your counter in counter.vhdl with the entity below.  Creating a counter_tb.vhdl testbench to test your standalone counter is a good idea, but not required.

```vhdl

entity counter is
    generic (
           num_bits : integer := 4;
           max_value : integer := 9
    );
    port ( clk : in STD_LOGIC;
           reset_n : in STD_LOGIC;
           ctrl : in STD_LOGIC_VECTOR (1 downto 0);
           roll : out STD_LOGIC;
           D : in unsigned (num_bits-1 downto 0);
           Q : out unsigned (num_bits-1 downto 0));
end counter;
```

Create a testbench called hw4_tb.vhdl.  In this testbench, instantiate a pair of cascaded counters, similar to those in Figure 13.2 of the text. The pair of counters operate in a coordinated fashion, with one counter representing a least-significant
value, and the other a most-significant value. When the least-significant counter is going to roll over, the most-significant counter will count up by one. At no other time will the most-significant counter increment.

```{note}
In order to test your cascade counters, you will need to apply a complex test sequence to the control signal. The following VHDL code in your testbench will help achieve this. This is CSA version of the
process structure given in section 2.2.4 of the textbook.

ctrl <= 'O' after 15 us, '1' after 16 us, 'O' after 17 us, 'li after 18 us;

```

## Deliverables

- Submit via gradescope

### HW4
- Circuit block diagram
- Screenshot of your waveform plot
  -- The testbench exercising the cascade pair, must:
  --- Hold the least significant counter at 4 for one clock cycle (using ctrl='0')
  --- Roll over the least significant counter once
  --- Show clk, reset, Q1, Q0, least-significant roll signal, and the ctrl input to the most-significant counter
  --- Remove all junk signals
  --- Fit waveform on one page
- Answer the questions on VHDL best practices

### HW4_CODE
- Submit a zip file containing counter.vhdl and hw4_tb.vhdl (creating a counter_tb.vhdl testbench is recommended but not required).

  
