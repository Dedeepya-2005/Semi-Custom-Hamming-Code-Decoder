# **Semi-Custom Implementation of Hamming Code Decoder using Verilog HDL**

---

## **1. Introduction**
The main aim of this project is to design and implement a **Hamming (7,4) code decoder** using **Verilog HDL** and perform the **semi-custom physical design flow** using **Cadence tools**.  
The Hamming code is one of the most widely used error-correcting codes that can detect up to two-bit errors and correct a single-bit error.  
This project demonstrates both **functional design (RTL)** and **physical implementation (VLSI backend)** stages of a digital system, providing a complete understanding of the modern **ASIC design flow**.

---

## **2. Project Objectives**
- To design a Hamming (7,4) decoder capable of detecting and correcting single-bit errors.  
- To simulate the Verilog design and verify correct decoding using testbench waveforms.  
- To perform synthesis using **Cadence Genus** with a **90nm standard cell library**.  
- To complete placement, routing, and DRC verification using **Cadence Innovus**.  
- To understand the overall **semi-custom ASIC design flow**, from RTL design to layout generation.

---

## **3. Theory Behind Hamming Code**
The **Hamming code** is a linear error-correcting code invented by **Richard Hamming** in 1950.  
It adds redundant bits (parity bits) to the data to allow detection and correction of single-bit errors.

For a (7,4) Hamming code:
- 4 data bits → D1, D2, D3, D4  
- 3 parity bits → P1, P2, P4  

The parity bits are placed at positions **1, 2, and 4**.  
The codeword is arranged as:  
**P1, P2, D1, P4, D2, D3, D4**

### **Parity Equations:**
P1 = D1 ⊕ D2 ⊕ D4
P2 = D1 ⊕ D3 ⊕ D4
P4 = D2 ⊕ D3 ⊕ D4
The decoder recomputes the parity bits and checks for errors using the **syndrome** value.  
If the syndrome is non-zero, it identifies the bit position that contains the error and corrects it.

---

## **4. Methodology**
The project was implemented in the following major stages:

### **Stage 1: RTL Design**
- Verilog HDL was used to design the functional behavior of the Hamming (7,4) decoder.  
- The testbench verified functionality by applying data with single-bit and double-bit errors.  
- Simulation was done using **Vivado** or **GTKWave**, where the waveforms were analyzed.

### **Stage 2: Synthesis**
- RTL design was synthesized in **Cadence Genus**, targeting the **90nm CMOS standard cell library**.  
- Constraints such as clock period and timing specifications were applied using the `.sdc` file.  
- The synthesis produced a **gate-level netlist** optimized for timing and area.

### **Stage 3: Placement and Routing**
- The synthesized netlist was imported into **Cadence Innovus**.  
- Floorplanning, placement, clock tree synthesis, and routing were performed.  
- The layout was checked for **Design Rule Check (DRC)** and **Layout vs Schematic (LVS)** errors.  
- A clean layout image was generated after successful routing.

### **Stage 4: Verification**
- Post-synthesis and post-layout simulations were performed to ensure functionality was retained.  
- DRC and LVS checks confirmed that the layout met manufacturing and functional requirements.

---

## **5. Tools and Technologies Used**
- **Vivado / GTKWave:** Simulation and waveform verification  
- **Cadence Genus:** Logic synthesis and netlist generation  
- **Cadence Innovus:** Placement, routing, and layout verification  
- **90nm Standard Cell Library:** Target CMOS technology for semi-custom design

---

## **6. Project Results**
- The Verilog design of the Hamming (7,4) decoder was successfully implemented and verified.  
- Functional simulation in GTKWave confirmed that the decoder correctly identifies and corrects single-bit errors.  
- Synthesis in Cadence Genus generated a **timing-optimized netlist**.  
- Placement and routing were completed in Cadence Innovus with a **DRC-clean layout**.  
- The final **GDSII layout** verified that the design can be fabricated without rule violations.

### **Outputs:**
- Simulation waveform showing decoded data recovery  
- Schematic view after synthesis  
- Physical layout view after routing  

---

## **7. Key Files Included**
- `decoder.v` – Verilog source code for the Hamming (7,4) decoder  
- `decoder_tb.v` – Testbench for verifying decoder functionality  
- `run.tcl` – TCL automation script for synthesis  
- `constraints.sdc` – Timing constraint file  
- `synthesis.log` – Log file of synthesis process  
- `waveform.png` – Simulation waveform screenshot  
- `layout.png` – Final layout after routing  
- `SemiCustom_HammingDecoder_Report.pdf` – Complete report with results  

---

## **8. Conclusion**
The **Hamming (7,4) Decoder** was successfully designed, simulated, synthesized, and physically implemented using the **semi-custom design flow**.  
The decoder effectively corrects single-bit errors and detects double-bit errors, demonstrating its reliability in communication systems.  
This project provided valuable practical exposure to **VLSI design tools**, bridging the gap between theoretical concepts and real-world implementation.

---

## **9. Future Scope**
- Extend the design to **Hamming (15,11)** or other advanced ECC codes.  
- Implement an **encoder-decoder system** on FPGA for real-time testing.  
- Explore **power optimization** and multi-bit error correction techniques.  
- Integrate the design into a complete **error-correcting subsystem** for communication processors.

---

## **10. Author Details**
**Name:** Dedeepya Bandi  
**Roll Number:** 123EC0051  
**Department:** Electronics and Communication Engineering  
**Project Title:** Semi-Custom Implementation of Hamming Code Decoder using Verilog HDL  
**Under the Guidance of:** Rangababu Sir  

---

## **11. Acknowledgment**
I would like to express my sincere gratitude to **Rangababu Sir** for his constant guidance and encouragement throughout this project.  
His valuable suggestions and insights have greatly contributed to the successful completion of this work.  
I also extend my thanks to the **Department of ECE** for providing access to the **Cadence VLSI Lab** and necessary resources for simulation and layout implementation.

---

## **12. References**
1. R. W. Hamming, *“Error Detecting and Error Correcting Codes,”* Bell System Technical Journal, 1950.  
2. Cadence Genus and Innovus Tool Manuals.  
3. Xilinx Vivado Design Suite Documentation.  
4. *Digital Design* by M. Morris Mano, Pearson Publications.

---

