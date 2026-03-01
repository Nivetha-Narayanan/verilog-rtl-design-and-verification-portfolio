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

</details>  
  
---
  
## Binary to Gray Code Conversion  

<details>
<summary><b>Touch here to see more</b></summary> 
  
- The Most Significant Bit (MSB) of Gray code is the same as the MSB of the binary number.
- Each next Gray bit is obtained by XOR of the current binary bit with the previous binary bit.
  <img width="418" height="290" alt="image" src="https://github.com/user-attachments/assets/fb2d9669-d211-4eac-b3e8-83f714049272" />
  <img width="1920" height="1022" alt="Screenshot 2026-01-29 221412" src="https://github.com/user-attachments/assets/ceea0512-3456-4e78-afb0-a8b4e69b0883" />
 <img width="1920" height="1011" alt="Screenshot 2026-01-29 222628" src="https://github.com/user-attachments/assets/9e5a5a03-64be-4323-b9b8-14e04df2134f" />

</details>
  
---

## Gray to Binary Code Conversion  

<details>
<summary><b>Touch here to see more</b></summary>  
  
- The MSB of binary is the same as the MSB of Gray code.
- Each next binary bit is obtained by XOR of the previous binary bit with the current Gray bit.
  <img width="480" height="308" alt="image" src="https://github.com/user-attachments/assets/1f89462d-0aea-479b-85d6-bb032441c14b" />

  <img width="1920" height="1020" alt="image" src="https://github.com/user-attachments/assets/48955c63-ba4f-46b3-b9f4-b0afdf63f523" />
  <img width="1920" height="1020" alt="Screenshot 2026-01-29 222649" src="https://github.com/user-attachments/assets/cdef9cca-32bb-418e-aba4-12544693acb5" />
  
</details> 
  
  ---
## **Next Steps**

➡️ **[Navigate to Day 05](../day_06/)**

