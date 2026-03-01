# Design:Multiplexer  
  - A Multiplexer(MUX) is a combinational circuit that connects any one line out of multiple N lines to the single output line based on its control input signal(selection lines).
  - For **n** selection lines, there are **N=2^n** input lines
  - **N:1** denotes N input lines and one output line.

## 2:1 MUX:
<details>
<summary><b>Touch here to see more</b></summary>

- Has 2 input lines and one select line.
  
  <img width="238" height="256" alt="image" src="https://github.com/user-attachments/assets/b7ae61f5-76ef-4904-84ac-4d3799bce99f" />

  
| Select | Out |
|:---|:---|
|0	| i0|
|1	| i1|  

### Equation
   - **Out** = (~s&i0) | (s &i1)
### 2:1mux(Verilog Codes)
-  Design module [mux_2_1.v](./src/mux_2_1.v) 
- Testbench [tb_mux_2_1.v](./tb/tb_mux_2_1.v) 
### Output Screenshots
![Design_code](./screenshots/mux_2_1/design_code.png)
![Waveform](./screenshots/mux_2_1/waveform.png)
![Schematic](./screenshots/mux_2_1/schematic.png)


</details>  
  
---  

## 4:1 MUX:
<details>
<summary><b>Touch here to see more</b></summary>

- Has 4 input lines and two select line.
  
  <img width="195" height="256" alt="image" src="https://github.com/user-attachments/assets/00690ffe-fd83-4146-978c-772b81a757ab" />

  
| Sel[0]|Sel[1] | Out |
|:---|:---|:---|
|0	|0 | i0|
|0	|1 | i1|
|1 |0 |i2 |
|1  |1 |i3 |  

### 4:1mux(Verilog Codes)
-  Design module [mux_4_1.v](./src/mux_4_1.v) 
- Testbench [tb_mux_4_1.v](./tb/tb_mux_4_1.v) 
### Output Screenshots
![Design_code](./screenshots/mux_4_1/design_code.png)
![Waveform](./screenshots/mux_4_1/waveform.png)
![Schematic](./screenshots/mux_4_1/schematic.png)

</details>  
  
---

## 4:1 MUX using 2:1 MUXes:
<details>
<summary><b>Touch here to see more</b></summary>

- Has 4 input lines and two select line.
  
  <img width="279" height="282" alt="image" src="https://github.com/user-attachments/assets/dead730e-3bb6-4a80-93f0-ee01559e653e" />

  
| Sel[0]|Sel[1] | Out |
|:---|:---|:---|
|0	|0 | i0|
|0	|1 | i1|
|1 |0 |i2 |
|1  |1 |i3 |

### 4:1mux using 2:1 muxes (Verilog Codes)
-  Design module [mux_4_1_with_2_1.v](./src/mux_4_1_with_2_1.v) 
- Testbench [tb_mux_4_1_with_2:1.v](./tb/tb_mux_4_1_with_2_1.v)
  ### Output Screenshots
![Design_code](./screenshots/mux_4_1_with_2_1/design_code.png)
![Waveform](./screenshots/mux_4_1_with_2_1/waveform.png)
![Schematic](./screenshots/mux_4_1_with_2_1/schematic.png)

</details>  
  
---

## **Next Steps**

➡️ **[Navigate to Day 07](../day_07/)**

