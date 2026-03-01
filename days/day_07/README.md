# Design:Demultiplexer  
  - A Demultiplexer(MUX) is a combinational circuit that works exactly opposite to a MUX.A demux has a single input line to any one line out of multiple N output lines based on its control input signal(selection lines).
  - For **n** selection lines, there are **N=2^n** output lines
  - **1:N** denotes N output lines and one input line.

## 1:2 DEMUX:
<details>
<summary><b>Touch here to see more</b></summary>

- Has 2 output lines and one select line.
  
 <img width="257" height="264" alt="image" src="https://github.com/user-attachments/assets/076d90c3-76d6-498a-9650-46de762ddf1a" />


  
| Select | y0 | y1|
|:---|:---|:---|
|0	| i|0|
|1	|0| i|  

### demux 2:1 (Verilog Codes)
-  Design module [demux_2_1.v](./src/demux_2_1.v) 
- Testbench [tb_demux_2_1.v](./tb/tb_demux_2_1.v) 
### Output Screenshots
![Design_code](./screenshots/demux_2_1/design_code.png)
![Waveform](./screenshots/demux_2_1/waveform.png)
![Schematic](./screenshots/demux_2_1/schematic.png)


</details>  
  
---  

## 1:4 DEMUX:
<details>
<summary><b>Touch here to see more</b></summary>

- Has 4 output lines and two select line.
  
  <img width="212" height="258" alt="image" src="https://github.com/user-attachments/assets/4887e0c9-8e4f-400c-a3ab-dd198d2d67bd" />


  
| Sel[0]|Sel[1] | y0 |y1|y2|y3|
|:---|:---|:---|:---|:---|:---|
|0	|0 | i|0|0|0|
|0	|1 | 0|i|0|0|
|1 |0 |0|0|i|0|
|1  |1 |0|0|0|i|  

### 1:4 demux(Verilog Codes)
-  Design module [demux_4_1.v](./src/demux_4_1.v) 
- Testbench [tb_demux_4_1.v](./tb/tb_demux_4_1.v) 
### Output Screenshots
![Design_code](./screenshots/demux_4_1/design_code.png)
![Waveform](./screenshots/demux_4_1/waveform.png)
![Schematic](./screenshots/demux_4_1/schematic.png)

</details>  
  
---

## 1:8 DEMUX using 1:4 DEMUXes:
<details>
<summary><b>Touch here to see more</b></summary>

- Has 8 output lines and three select line.
  
  <img width="719" height="485" alt="image" src="https://github.com/user-attachments/assets/1a54b66b-0b82-4d01-bf2e-25853dfcb7f7" />


  
| S2|S1|S0 | y0 |y1|y2|y3| y4 |y5|y6|y7|
|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|
|0	|0 |0| i|0|0|0|0|0|0|0|
|0	|0|1 |0|i|0|0|0|0|0|0|
|0|1 |0 |0|0|i|0|0|0|0|0|
|0|1  |1 |0|0|0|i|0|0|0|0|
|1	|0 |0| 0|0|0|0|i|0|0|0|
|1	|0|1 |0|0|0|0|0|i|0|0|
|1|1 |0 |0|0|0|0|0|0|i|0|
|1|1  |1 |0|0|0|0|0|0|0|i|

### 1:8 demux using 1:4 demuxes (Verilog Codes)
-  Design module [demux_8_1.v](./src/demux_8_1.v) 
- Testbench [tb_demux_8_1.v](./tb/tb_demux_8_1.v)
  ### Output Screenshots
![Design_code](./screenshots/demux_8_1/design_code.png)
![Waveform](./screenshots/demux_8_1/waveform.png)
![Schematic](./screenshots/demux_8_1/schematic.png)

</details>  
  
---

## **Next Steps**

➡️ **[Navigate to Day 08](../day_08/)**

