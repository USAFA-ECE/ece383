# 💻 VHDL Programming

(faq-vhdl_programming)=
## VHDL Programming Language

# VHDL Cheat-Sheet
**© Copyright: 2007 Bryan J. Mealy**

---

## Concurrent Statements vs. Sequential Statements

### Concurrent Signal Assignment (Dataflow Model) ⇔ Signal Assignment

#### Concurrent Signal Assignment
```vhdl
target <= expression;
A <= B AND C;
DAT <= (D AND E) OR (F AND G);
```

#### Sequential Signal Assignment
```vhdl
target <= expression;
A <= B AND C;
DAT <= (D AND E) OR (F AND G);
```

---

### Conditional Signal Assignment (Dataflow Model) ⇔ `if` Statements

#### Concurrent
```vhdl
target <= expression when condition else
          expression when condition else
          expression;
F3 <= '1' when (L = '0' AND M = '0') else
      '1' when (L = '1' AND M = '1') else
      '0';
```

#### Sequential
```vhdl
if (condition) then
    -- sequence of statements
elsif (condition) then
    -- sequence of statements
else -- (the else is optional)
    -- sequence of statements
end if;

if (SEL = "111") then
    F_CTRL <= D(7);
elsif (SEL = "110") then
    F_CTRL <= D(6);
elsif (SEL = "101") then
    F_CTRL <= D(1);
elsif (SEL = "000") then
    F_CTRL <= D(0);
else
    F_CTRL <= '0';
end if;
```

---

### Selective Signal Assignment (Dataflow Model) ⇔ `case` Statements

#### Concurrent
```vhdl
with chooser_expression select
    target <= expression when choices,
             expression when choices;
with SEL select
    MX_OUT <= D3 when "11",
              D2 when "10",
              D1 when "01",
              D0 when "00",
              '0' when others;
```

#### Sequential
```vhdl
case ABC is
    when "100" => F_OUT <= '1';
    when "011" => F_OUT <= '1';
    when "111" => F_OUT <= '1';
    when others => F_OUT <= '0';
end case;
```

---

### Process (Behavioral Model)

#### Syntax
```vhdl
opt_label: process(sensitivity_list)
begin
    -- sequential_statements
end process opt_label;
```

#### Example
```vhdl
proc1: process(A, B, C)
begin
    if (A = '1' and B = '0') then
        F_OUT <= '1';
    elsif (B = '1' and C = '1') then
        F_OUT <= '1';
    else
        F_OUT <= '0';
    end if;
end process proc1;
```

---

This cheat sheet summarizes key VHDL constructs, focusing on the differences between concurrent and sequential statement structures and their implementations.

