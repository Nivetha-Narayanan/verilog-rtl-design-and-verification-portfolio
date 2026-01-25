# Design:Half_Subtractor,Full_Subtractor
## Half_Subtractor:
<details>
<summary><b>Touch here to see more</b></summary>
   
  - Half Adder is a basic combinational design that can subtracts two single bits and results in a difference and borrow bit as an output.
  - The borrow obtained in one subtraction will not be forwarded in the next subtraction because of this it is known as half Subtractor whereas in Full Subtractor we can forward the borrow to other Subtractor.
    - **Inputs**: 1bit **A**,**B**.
    - **Outputs**: 1bit **Difference**,**Borrow**.
 ### Block Diagram
 <img width="791" height="378" alt="image" src="https://github.com/user-attachments/assets/c8342289-d324-41ca-b776-1b7a8e04d84a" />


 
 ### Equation
   - **Difference** = A ^ B      ----> A exor B
   - **Borrow** = $\bar{A }$  & B   ----> ~A and B
### Half_subtractor(Verilog Codes)
-  Design module [half_subtractor.v](./src/half_subtractor.v) 
- Testbench [tb_half_subtractor.v](./tb/tb_half_subtractor.v) 
### Output Screenshots
![Design_code](./screenshots/half_subtractor/design_code.png)
![Waveform](./screenshots/half_subtractor/wave_form.png)
![Schematic](./screenshots/half_subtractor/schematic.png)
![Synthesized](./screenshots/half_subtractor/syn_schematic.png)

</details>

---

## Full_subtractor using Half subtractor:
<details>
<summary><b>Touch here to see more</b></summary>
   
  - A combinational logic circuit that can add two binary digits (bits) and a borrow in bit, and produces a difference bit and a borrow out bit as output is known as a full-adder.
  - A full adder circuit adds three binary digits, where two are the inputs and one is the borrow forwarded from the previous subtraction.
    - **Inputs**: 1bit **A**,**B**,**Bin**.
    - **Outputs**: 1bit **Difference**,**Borrow**.
 ### Block Diagram
<img width="1536" height="708" alt="image" src="https://github.com/user-attachments/assets/7d14530c-b1c0-4509-a9d3-7c6e5ba9af89" /> 



### Equation
   - **Diff** = A ^ B ^ Bin     ----> A exor B exor Bin
   - **Bout** = (A' & B)|(Bin &(A^B)') (or)   A'B+BBin+A'Bin
### Full_subtractor(Verilog Codes)
-  Design module [full_subtractor.v](./src/full_subtractor.v) 
- Testbench [tb_full_subtractor.v](./tb/tb_full_subtractor.v) 
### Output Screenshots
![Design_code](./screenshots/full_subtractor/design_code.png)
![Waveform](./screenshots/full_subtractor/waveform.png)
![Schematic](./screenshots/full_subtractor/schematic.png)
![Synthesized](./screenshots/full_subtractor/syn_schematic.png)

</details>

---
## Ripple_Carry_Adder or Parallel Adder:
<details>
<summary><b>Touch here to see more</b></summary>
   
  - Full adder can add single bit two inputs and extra carry bit generated from its previous stage. To add multiple 'n' bits binary sequence, multiples cascaded full adders can be used which can generate a carry bit and be applied to the next stage full adder as an input till the last stage of full adder. This appears as carry-bit ripples to the next stage, hence it is known as "Ripple carry adder".
    - **Inputs**: n-bit **A**,**B**,1-bit **Cin**.
    - **Outputs**: n-bit **Sum**,1-bit **Carry_out**.

### Ripple carry adder delay computation 
- Worst case delay = ((n-1) full adder * carry propagation delay of each adder)+ sum propagation delay of each full adder
 ### Block Diagram
 <img width="850" height="678" alt="image" src="https://github.com/user-attachments/assets/b0806f9c-7fa1-415b-a216-37762fe7fbc0" />


### Ripple_Carry_Adder(Verilog Codes)
-  Design module [rca_adder.v](./src/rca.v) 
- Testbench [tb_rca_adder.v](./tb/tb_rca.v) 
### Output Screenshots
![Design_code](./screenshots/rca/design_code.png)
![Design_code](./screenshots/rca/design_code1.png)
![Waveform](./screenshots/rca/waveform.png)
![Schematic](./screenshots/rca/schematic.png)
![Synthesized](./screenshots/rca/syn_schematic.png)

</details>

---
## Design Hierarchy
- Design Hierarchy is a "bottom-up" structure where simple modules (Half Adders) are nested inside larger modules (Full Adders) to build a complex system (Ripple Carry Adder).
  ![Schematic](./screenshots/rca/schematic.png)
## **Next Steps**

➡️ **[Navigate to Day 03](../day_04/)**

