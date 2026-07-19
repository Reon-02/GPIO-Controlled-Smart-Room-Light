# GPIO-Controlled Smart Room Light

A Moore Finite State Machine (FSM) based Smart Room Light Controller implemented in Verilog HDL.

The system automatically turns the room light ON when the sensor detects darkness (sensor value below a predefined threshold) and turns it OFF when the room becomes bright.

---

## Project Overview

This project demonstrates the design, simulation, and verification of a GPIO-controlled smart room light using Verilog.

The design was:

- Designed using Verilog HDL
- Simulated using Icarus Verilog
- Verified using GTKWave
- Synthesized using Yosys

---

## Features

- Moore FSM
- Threshold-based decision making
- 8-bit sensor input
- LED output
- Synthesizable RTL
- Testbench included

---

## Folder Structure

```text
rtl/
testbench/
simulation/
synthesis/
docs/
images/
```

---

## Tools Used

- Verilog HDL
- Ubuntu Linux
- Icarus Verilog
- GTKWave
- Yosys

---

## How to Run

Compile

```bash
iverilog -o smart_light rtl/smart_light.v testbench/tb_smart_light.v
```

Run

```bash
vvp smart_light
```

Open GTKWave

```bash
gtkwave simulation/smart_light.vcd
```

---

## Author

Reon Dantis

Electronics and Communication Engineering

Mangalore Institute of Technology & Engineering
