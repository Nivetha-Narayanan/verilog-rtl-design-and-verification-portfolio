# Design:Encoder  
  - An encoder converts **M** input lines (decimal, hex, octal, etc.) into **N** coded output lines.
  - Various encoders can be designed such as decimal-to-binary encoders,octal-binary encoders,decimal-BCD encoders ,etc.
  - It "shrinks" receiving many input data lines into fewer output lines.This is helpful in reducing input data lines for further processing.
 <img width="669" height="225" alt="image" src="https://github.com/user-attachments/assets/57553219-0973-4ae9-9b6c-30638b3f853b" />


## Binary Encoder:
<details>
<summary><b>Touch here to see more</b></summary>

- A binary encoder converts **M (=2^n)** input lines to **N (=n)** coded binary code. It is also known as a digital encoder. A single input line must be high for valid coded output; otherwise, the output line will be invalid. To address this limitation, the priority encoder prioritizes each input line when multiple input lines are set to high.
- M:N encoder where M denotes input lines and N denotes coded output lines.

  ### 8:3 Binary Encoder:
  - 8:3 encoder where 8 denotes input lines and 3 denotes coded output lines.
    
<img width="683" height="377" alt="image" src="https://github.com/user-attachments/assets/cf1533e1-2754-4af2-a69d-bb2bb1b74d6d" />
 
  

### Equation
   - **y2=D4+D5+D6+D7**
   - **y1=D2+D3+D6+D7**
   - **y0=D1+D3+D5+D7**
### Verilog Codes
-  Design module [bin_en_8_3.v](./src/bin_en_8_3.v) 
- Testbench [tb_bin_en_8_3.v](./tb/tb_bin_en_8_3.v) 
### Output Screenshots
![Design_code](./screenshots/bin_en_8_3/design_code.png)
![Waveform](./screenshots/bin_en_8_3/waveform.png)
![Schematic](./screenshots/bin_en_8_3/schematic.png)


</details>  
  
---  

## Priority Encoder:
<details>
<summary><b>Touch here to see more</b></summary>

- The priority encoder overcome the drawback of binary encoder that generates invalid output for more than one input line is set to high. The priority encoder prioritizes each input line and provides an encoder output corresponding to its highest input priority.
- The priority encoder is widely used in digital applications. One common example of a microprocessor detecting the highest priority interrupt. The priority encoders are also used in navigation systems, robotics for controlling arm positions, communication systems, etc.
  
  <img width="644" height="571" alt="image" src="https://github.com/user-attachments/assets/ceaec640-b3fc-421f-8c30-6c5020c506ec" />
 

### 8:3 Priority Encoder(Verilog Codes)
-  Design module [pri_en_8_3.v](./src/pri_en_8_3.v) 
- Testbench [tb_pri_en_8_3.v](./tb/tb_pri_en_8_3.v) 
### Output Screenshots
![Design_code](./screenshots/pri_en_8_3/design_code.png)
![Waveform](./screenshots/pri_en_8_3/waveform.png)
![Schematic](./screenshots/pri_en_8_3/schematic.png)

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

