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
![Waveform](./screenshots/half_subtractor/waveform.png)
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

## **Next Steps**

➡️ **[Navigate to Day 04](../day_04/)**

