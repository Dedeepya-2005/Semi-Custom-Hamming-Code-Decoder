# 🧮 Semi-Custom Implementation of Hamming (7,4) Decoder using Verilog HDL

### 🎯 Project Overview
This project focuses on the **design and semi-custom implementation** of a **Hamming (7,4) Decoder** using **Verilog HDL** and **Cadence Genus & Innovus** tools with **90 nm CMOS technology**.  
The decoder detects and corrects single-bit errors in a 7-bit code word, ensuring reliable data transmission in digital systems.

---

## 📘 Abstract
Error detection and correction are crucial in communication systems.  
This project demonstrates how the **Hamming (7,4) code** can be implemented at the **Register Transfer Level (RTL)** and realized through the **VLSI semi-custom design flow**, transitioning from RTL to layout using Cadence EDA tools.

---

## 🧩 Objectives
- To design a Hamming (7,4) decoder using Verilog HDL.  
- To perform **simulation, synthesis, placement, and routing** using industry-grade tools.  
- To analyze **area, power, and timing** parameters after synthesis.  
- To visualize the **layout generation** using 90 nm CMOS technology.

---

## ⚙️ Design Flow
The semi-custom design was carried out using the **Cadence RTL-to-GDSII** flow.

| Stage | Tool Used | Description |
|--------|------------|-------------|
| RTL Design | Verilog HDL | Functional design of Hamming (7,4) decoder |
| Simulation | Vivado / GTKWave | To verify logic and functionality |
| Synthesis | Cadence Genus | Converts RTL into gate-level netlist |
| Floorplanning & Placement | Cadence Innovus | Physical layout design |
| Routing | Cadence Innovus | Final routed layout |
| Verification | Innovus / Genus Reports | Timing, area, and power analysis |

---

## 🧱 Project Files Structure
📁 Semi-Custom-Hamming-Decoder/
┣ 📜 hamming7_4_decoder.v → Verilog RTL code
┣ 📜 hamming7_4_tb.v → Testbench for simulation
┣ 📜 run.tcl → Synthesis automation script
┣ 📜 constraints.sdc → Design constraints file
┣ 📜 netlist.v → Synthesized netlist
┣ 📜 report.pdf → Final project report
┣ 📁 results/ → Simulation & layout screenshots
│ ┣ 🖼️ simulation_waveform.png
│ ┣ 🖼️ synthesis_report.png
│ ┣ 🖼️ floorplan.png
│ ┣ 🖼️ placement.png
│ ┣ 🖼️ routed_layout.png
│ ┗ 🖼️ timing_report.png
┗ 📜 README.md
Parameter	Value
Technology	90 nm CMOS
Operating Voltage	1.2 V
Frequency	100 MHz
Cell Area	122 µm²
Total Power	0.52 mW
Max Delay	8.1 ns
🧠 Learning Outcomes

Understood the RTL-to-GDSII flow using Cadence EDA tools.

Successfully implemented a semi-custom layout for an error-correcting decoder.

Gained hands-on experience with Verilog synthesis, floorplanning, and routing.

Analyzed area, power, and timing of the synthesized design.

🖼️ Simulation & Layout Results
Stage	Screenshot
RTL Simulation	

Synthesis Report	

Floorplan	

Placement	

Routed Layout	

Timing Report	
🏁 Conclusion

The semi-custom implementation of the Hamming (7,4) Decoder successfully demonstrates the transformation of a digital design from RTL code to a physical layout using 90 nm technology. The results confirm the decoder’s functionality, optimized area, and timing performance.

🧑‍💻 Author

Dedeepya Bandi
Department of Electronics and Communication Engineering
(Project under VLSI Design Laboratory)