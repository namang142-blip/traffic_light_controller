# 🚦 Traffic Light Controller (Verilog)

## 📌 Overview

Traffic Light Controller implemented using a **Moore FSM** in Verilog.
Controls two roads (A & B) with proper sequencing and timing.

---

## 🧠 FSM Design

### States

| State | Road A | Road B |
| ----- | ------ | ------ |
| S0    | Green  | Red    |
| S1    | Yellow | Red    |
| S2    | Red    | Green  |
| S3    | Red    | Yellow |

### Transition

S0 → S1 → S2 → S3 → S0

---

## ⏱ Timing

* Green: 5 cycles
* Yellow: 2 cycles

Implemented using a counter.

---

## 🔧 Features

* Moore FSM
* Safe switching (no overlap)
* Counter-based timing
* Synthesizable RTL

---

## 🧪 Simulation

Testbench verifies:

* State transitions
* Output correctness

---

## 📊 Encoding

```text
{Red, Yellow, Green}
001 → Green
010 → Yellow
100 → Red
```

---

## 📁 Files

* `TLC_timer.v` – Design
* `testbench.v` – Simulation

---
