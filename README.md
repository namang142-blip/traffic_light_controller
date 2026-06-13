# Traffic Light Controller FSM (Verilog)

## Overview

This project implements a Moore Finite State Machine (FSM)-based Traffic Light Controller using Verilog HDL.

The controller manages traffic flow between:

* Highway Road
* Side Road

using timer-based state transitions.

---

## FSM States

The controller cycles through the following states:

| State | Description              |
| ----- | ------------------------ |
| HG_SR | Highway Green, Side Red  |
| HY_SR | Highway Yellow, Side Red |
| HR_SG | Highway Red, Side Green  |
| HR_SY | Highway Red, Side Yellow |

---

## Features

* Moore FSM design
* Timer/counter-based transitions
* Asynchronous reset
* Separate sequential and combinational logic
* Simple Verilog testbench
* Clock-driven synchronous design

---

## Files

* `TLC.v` → RTL design of Traffic Light Controller
* `TLC_tb.v` → Testbench for simulation

---

## Concepts Used

* Finite State Machines (FSM)
* State Encoding
* Sequential Logic
* Combinational Logic
* Counter Logic
* Moore FSM Architecture
* Verilog HDL

---

## Simulation

The testbench:

* Generates clock and reset
* Simulates FSM transitions
* Displays traffic light outputs over time

---

## Author

Naman
