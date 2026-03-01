# Design:Comparator
  - A digital combinational circuit used to compare the magnitude of two binary numbers to determine the equality or non-equality is called a comparator.
  - Therefore, the main function of a comparator is to compare the values of input numbers and produce an output indicating whether the numbers are equal or first numbers is greater or lesser.
<img width="1045" height="308" alt="image" src="https://github.com/user-attachments/assets/200f6afe-8043-4431-a4c7-636c8a8c9881" />




## 1-bit Comparator:
<details>
<summary><b>Touch here to see more</b></summary>  

  
  - A 1-bit magnitude comparator is a logic circuit which can compare two binary numbers of one bit each.
  - In other words, a 1-bit magnitude comparator is one that compares two 1-bit binary numbers and generates an output showing whether one number is equal to or greater than or less than the other.
    
<img width="595" height="250" alt="image" src="https://github.com/user-attachments/assets/e2c8e65e-48c4-4b2a-ab5c-5ff2bc1b7cdd" />  

### **1-Bit Magnitude Comparator Truth Table**

| A | B | A < B | A = B | A > B |
| --- | --- | --- | --- | --- |
| 0 | 0 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 0 |
| 1 | 0 | 0 | 0 | 1 |
| 1 | 1 | 0 | 1 | 0 |

### **Logical Expressions**

* **Greater Than ($A > B$):** This output is high only when $A=1$ and $B=0$.

$$A > B = A\bar{B}$$


* **Equal To ($A = B$):** This output is high when both inputs are the same ($0,0$ or $1,1$). This corresponds to the **XNOR** operation.

$$A = B = \bar{A}\bar{B} + AB = \overline{A \oplus B}$$


* **Less Than ($A < B$):** This output is high only when $A=0$ and $B=1$.

$$A < B = \bar{A}B$$


 
  
### Verilog Codes
-  Design module [comp_1bit.v](./src/comp_1bit.v) 
- Testbench [tb_comp_1bit.v](./tb/tb_bin_dec_3_8.v) 
### Output Screenshots
![Design_code](./screenshots/comp_1bit/design_code.png)
![Waveform](./screenshots/comp_1bit/waveform.png)
![Schematic](./screenshots/comp_1bit/schematic.png)


</details>  
  
---  

## 4-bit Comparator:
<details>
<summary><b>Touch here to see more</b></summary>  

  
  -It is a type of comparator that can compare the values or magnitudes of two 4-bit binary numbers and produce an output indicating whether one number is equal to or less than or greater than the other.
    
<img width="595" height="250" alt="image" src="https://github.com/user-attachments/assets/e2c8e65e-48c4-4b2a-ab5c-5ff2bc1b7cdd" />  

### **1-Bit Magnitude Comparator Truth Table**

| A | B | A < B | A = B | A > B |
| --- | --- | --- | --- | --- |
| 0 | 0 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 0 |
| 1 | 0 | 0 | 0 | 1 |
| 1 | 1 | 0 | 1 | 0 |

### **Logical Expressions**

* **Greater Than ($A > B$):** This output is high only when $A=1$ and $B=0$.

$$A > B = A\bar{B}$$


* **Equal To ($A = B$):** This output is high when both inputs are the same ($0,0$ or $1,1$). This corresponds to the **XNOR** operation.

$$A = B = \bar{A}\bar{B} + AB = \overline{A \oplus B}$$


* **Less Than ($A < B$):** This output is high only when $A=0$ and $B=1$.

$$A < B = \bar{A}B$$


 
  
### Verilog Codes
-  Design module [comp_1bit.v](./src/comp_1bit.v) 
- Testbench [tb_comp_1bit.v](./tb/tb_bin_dec_3_8.v) 
### Output Screenshots
![Design_code](./screenshots/comp_1bit/design_code.png)
![Waveform](./screenshots/comp_1bit/waveform.png)
![Schematic](./screenshots/comp_1bit/schematic.png)


</details>  
  
---  



## **Next Steps**

➡️ **[Navigate to Day 11](../day_11/)**


