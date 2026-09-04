# Basic Adders and Subtractors

## Overview

This project contains the implementation of fundamental 1-bit arithmetic circuits using Verilog/SystemVerilog.

The following circuits are included:

- Half Adder
- Full Adder
- Half Subtractor
- Full Subtractor

These circuits are fundamental building blocks used in digital arithmetic and are later used to construct more complex arithmetic circuits.

---

## 1. Half Adder

A Half Adder performs the addition of two 1-bit binary inputs.

### Inputs

- `A` - First input bit
- `B` - Second input bit

### Outputs

- `S` - Sum
- `C` - Carry

### Logic Equations

```text
S = A ^ B
C = A & B
```

### Files

- `half_adder.sv`
- `half_adder_tb.sv`

---

## 2. Full Adder

A Full Adder performs the addition of two 1-bit binary inputs along with a carry input.

### Inputs

- `A` - First input bit
- `B` - Second input bit
- `Z` - Carry input

### Outputs

- `S` - Sum
- `C` - Carry output

### Logic Equations

```text
S = A ^ B ^ Z
C = (A & B) | (Z & (A ^ B))
```

### Files

- `full_adder.sv`
- `full_adder_tb.sv`

---

## 3. Half Subtractor

A Half Subtractor performs the subtraction of two 1-bit binary inputs.

### Inputs

- `A` - Minuend
- `B` - Subtrahend

### Outputs

- `D` - Difference
- `Borrow` - Borrow output

### Logic Equations

```text
D = A ^ B
Borrow = (~A) & B
```

### Files

- `half_subtractor.sv`
- `half_subtractor_tb.sv`

---

## 4. Full Subtractor

A Full Subtractor performs the subtraction of two 1-bit binary inputs along with a borrow input.

### Inputs

- `A` - Minuend
- `B` - Subtrahend
- `Bin` - Borrow input

### Outputs

- `D` - Difference
- `Bout` - Borrow output

### Logic Equations

```text
D = A ^ B ^ Bin
Bout = ((~A) & B) | ((~(A ^ B)) & Bin)
```

### Files

- `full_subtractor.sv`
- `full_subtractor_tb.sv`

---

## Tools

- Verilog/SystemVerilog
- EDA Playground
- Icarus Verilog

## Learning Outcome

This project provides a foundation in basic binary arithmetic and digital logic design.

These fundamental circuits will be used as building blocks for more advanced arithmetic circuits such as Ripple Carry Adders, Carry Look-Ahead Adders, Adder-Subtractors, Multipliers, and Dividers.
