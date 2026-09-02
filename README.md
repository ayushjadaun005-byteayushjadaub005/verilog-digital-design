# 4-bit Carry Look-Ahead Adder

## Overview

This project implements a 4-bit Carry Look-Ahead Adder (CLA) using Verilog/SystemVerilog.

The Carry Look-Ahead Adder reduces carry propagation delay by calculating the carry signals in parallel using generate and propagate functions.

## Design

The design uses:

- Generate (G) signals
- Propagate (P) signals
- Carry look-ahead equations
- XOR gates for sum generation

### Inputs

- `A[3:0]` - 4-bit input A
- `B[3:0]` - 4-bit input B

### Outputs

- `S[3:0]` - 4-bit sum
- `C4` - Final carry output

## Files

| File | Description |
|---|---|
| `carry_lookahead_adder.sv` | 4-bit CLA RTL design |
| `carry_lookahead_adder_tb.sv` | Verilog testbench |

## Test Case

For:

A = `0111`  
B = `0101`

Expected result:

S = `1100`  
C4 = `0`

## Tools

- Verilog/SystemVerilog
- EDA Playground
- VCD waveform simulation
