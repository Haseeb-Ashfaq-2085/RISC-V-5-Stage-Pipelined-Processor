# 5-Stage Pipelined RISC-V Processor

## Overview
This project features the design and simulation of a 32-bit RISC-V processor using a 5-stage pipeline architecture. The design focuses on increasing Instruction Per Cycle (IPC) by overlapping the execution of multiple instructions.

## Pipeline Stages
1. **IF (Instruction Fetch):** Program counter management and instruction memory access.
2. **ID (Instruction Decode):** Register file read and control signal generation.
3. **EX (Execute):** ALU operations and branch target calculation.
4. **MEM (Memory Access):** Data memory read/write operations.
5. **WB (Write Back):** Updating the register file with results.

## Key Features
* **Forwarding Unit:** Resolves data hazards (RAW) by routing results directly to the ALU.
* **Hazard Detection Unit:** Handles load-use hazards and branch-related control hazards via stalling and flushing.
* **RV32I Support:** Implements standard arithmetic, logical, and memory-reference instructions.

## Technical Specifications
* **HDL:** Verilog
* **Architecture:** 5-Stage Pipeline (RV32I)
* **Simulation:** ModelSim / Vivado
