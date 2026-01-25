# Design:Half_Adder,Full_adder,Ripple_Carry_Adder
   - Addition is one of the most basic operations performed by different electronic devices like computers, calculators,even nowadays AI calculation etc. The electronic circuit that performs the addition of two or more numbers, more specifically binary numbers, is called as adder.
## Half_Adder:
  - Half Adder is a basic combinational design that can add two single bits and results to a sum and carry bit as output.
  - The carry obtained in one addition will not be forwarded in the next addition because of this it is known as half adder whereas in Full adder we can forward the carry to other adder.
    - **Inputs**: 1bit **A**,**B**.
    - **Outputs**: 1bit **Sum**,**Carry**.
 ### Block Diagram
 <img width="628" height="384" alt="image" src="https://github.com/user-attachments/assets/4e830f08-3ddb-4efe-b406-446482ea3993" />

 ### Truth Table 
 |**A**|**B**|**Sum**|**Carry**|
   |:---|:---|:---|:---|
   |0|0|0|0|
   |0|1|1|0|
   |1|0|1|0|
   |1|1|0|1|
### Equation
   - **Sum** = A ^ B      ----> A exor B
   - **Carry** = A & B   ----> A and B
