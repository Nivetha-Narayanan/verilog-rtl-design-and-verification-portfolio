# Design:Decoder  
  - The decoder behaves exactly opposite of the encoder. They decode already coded input to its decoded form. The ‘N’(=n) input coded lines decode to ‘M’(=2^n) decoded output lines. The decoder sets exactly one line high at the output for a given encoded input line.
  - **N: M** decoder where N denotes coded input lines and M denotes decoded output lines.

<img width="640" height="238" alt="image" src="https://github.com/user-attachments/assets/ae543d1b-dd2c-464b-9894-6842aa1919cd" />



## 3:8 Decoder:
<details>
<summary><b>Touch here to see more</b></summary>  

  
  - The 3 input lines denote 3-bit binary code and 8 output line represents its decoded decimal form.
    
<img width="642" height="590" alt="image" src="https://github.com/user-attachments/assets/c68c6a1d-f478-42f0-8c8d-ae8bd2916920" />

 
  

### Verilog Codes
-  Design module [bin_dec_3_8.v](./src/bin_dec_3_8.v) 
- Testbench [tb_bin_dec_3_8.v](./tb/tb_bin_dec_3_8.v) 
### Output Screenshots
![Design_code](./screenshots/bin_dec_3_8/design_code.png)
![Waveform](./screenshots/bin_dec_3_8/waveform.png)
![Schematic](./screenshots/bin_dec_3_8/schematic.png)


</details>  
  
---  
## **Next Steps**

➡️ **[Navigate to Day 09](../day_09/)**


