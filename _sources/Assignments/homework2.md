# ✏️ HW 2 

## 📜 Instructions
- Assignment is in gradescope

```{warning}
Be sure to use the correct component and port names.  These are case sensitive.
```

## 1. Scancode Decoder (VHDL)

In this problem, you will build a VHDL entity called **`scancode_decoder`** which processes keyboard scancodes.

When you press a key on a keyboard, the keyboard sends an 8-bit code to the computer called a **PS/2 scancode**. Each key has its own scancode listed below. The relationship between the keys and their scancodes is **not based on ASCII nor any other discernible pattern**.

Build a component which converts an **8-bit scancode for the digits 0–9** into a **4-bit hexadecimal value**.

---

### Keyboard Scancode Table

| Keyboard Key | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|-------------|---|---|---|---|---|---|---|---|---|---|
| Scancode (hex) | 0x45 | 0x16 | 0x1E | 0x26 | 0x25 | 0x2E | 0x36 | 0x3D | 0x3E | 0x46 |

---

### Component Specification

- **Nomenclature:** `scancode_decoder`
- **Data Input:**  
  `scancode = std_logic_vector(7 downto 0);`
- **Data Output:**  
  `decoded_value = std_logic_vector(3 downto 0);`
- **Control:** none  
- **Status:** none  

---

### Behavior

Converts a `scancode`, representing a keypress of a decimal digit, into its 4-bit value.

**Example:**  
If `scancode = 25₁₆` (the scancode for the character **"4"**), then the converter should output: 0b0100

Assume that the inputs are always **legal hexadecimal scancodes**.

Use the **`when` statement syntax** to describe the output in terms of the input.

---

# Deliverables
## a. HW2_CODE

In gradescope, submit a zip file to the HW2_CODE assignment.  The zip file should contain only your scancode_decoder.vhd and scancode_decoder_tb.vhd in the root of the zip file (no subfolders).

## b. HW2

In gradescope there is a second assignment called HW2.  This is where you'll submit the following:

- Provide a **cropped screenshot** of the resulting **simulation timing diagram**
- Ensure the **signal values are legible**

- GitHub commit and tagged with the VHDL code for your **Scancode Decoder component** and the **testbench**
- Tag your commit with the tag "HW2"

---



## Additional Resources

### How to Create a New Project in Vivado
<iframe width="560" height="315" src="https://www.youtube.com/embed/cmaD4V1UT9E?si=t9NwztxVXCztYtFp" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>


