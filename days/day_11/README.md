# Design : N-Bit Parity Generator and Checker

##  What is a Parity Bit?
<details>
<summary><b>Touch here to see more</b></summary>  

A **Parity Bit** is the simplest form of **Error Detection Code (EDC)**. It is a single redundant bit added to a binary data string to ensure that the total number of 1-bits in the string is either even or odd.

In digital communication, data can be corrupted by electrical noise or interference, causing a `0` to flip to a `1` or vice versa. The parity bit acts as a "checksum" to verify that the data arrived exactly as it was sent.

</details>

---

##  Why is it Needed?
<details>
<summary><b>Touch here to see more</b></summary>  

* **Reliability:** It detects **Single-Bit Errors** during data transmission (e.g., across a serial cable or between a CPU and RAM).
* **Efficiency:** It is extremely "cheap" in terms of hardware. It only requires a few XOR gates and 1 extra bit of storage.
* **Immediate Feedback:** It allows the receiver to request a re-transmission (ARQ) the moment an error is detected.

> **Note:** Parity can detect an *odd* number of bit flips (1, 3, 5...), but it cannot detect an *even* number of flips (2, 4...) because they cancel each other out. It also cannot *correct* the error; it only knows that an error occurred.
</details>

---


## Even Parity
<details>
<summary><b>Touch here to see more</b></summary>  

The parity bit is chosen so that the **total number of 1s** in the data set (including the parity bit) is **Even**.

* If data has an odd number of 1s, the parity bit is `1`.
* If data has an even number of 1s, the parity bit is `0`.
  </details>

## Odd Parity
<details>
<summary><b>Touch here to see more</b></summary>  

The parity bit is chosen so that the **total number of 1s** (including the parity bit) is **Odd**.

* If data has an odd number of 1s, the parity bit is `0`.
* If data has an even number of 1s, the parity bit is `1`.
  </details>

---

##  Truth Table 
<details>
<summary><b>Touch here to see more</b></summary>  

| Binary Data ($D_3 D_2 D_1 D_0$) | Number of 1s | Even Parity Bit | Odd Parity Bit |
| --- | --- | --- | --- |
| `0000` | 0 | **0** | **1** |
| `0001` | 1 | **1** | **0** |
| `0010` | 1 | **1** | **0** |
| `0011` | 2 | **0** | **1** |
| `0100` | 1 | **1** | **0** |
| `0101` | 2 | **0** | **1** |
| `0110` | 2 | **0** | **1** |
| `0111` | 3 | **1** | **0** |
| `1000` | 1 | **1** | **0** |
| `1001` | 2 | **0** | **1** |
| `1010` | 2 | **0** | **1** |
| `1011` | 3 | **1** | **0** |
| `1100` | 2 | **0** | **1** |
| `1101` | 3 | **1** | **0** |
| `1110` | 3 | **1** | **0** |
| `1111` | 4 | **0** | **1** |  
</details>

---


## The Generator (Transmitter Side)
<details>
<summary><b>Touch here to see more</b></summary>  

The Generator takes the raw $n$-bit data and calculates the parity bit. This bit is then appended to the data to create an $(n+1)$-bit message.

* **Logic:** Uses a tree of **XOR gates**. For even parity, the logic is simply $\bigoplus D_i$.
  </details>

## The Checker (Receiver Side)
<details>
<summary><b>Touch here to see more</b></summary>  

The Checker receives the $(n+1)$-bit message. It recalculates the parity of the entire received string.

* **For Even Parity:** The XOR sum of all bits (including the parity bit) must be **0**.
* **For Odd Parity:** The XOR sum of all bits (including the parity bit) must be **1**.
* **Error Flag:** If the result doesn't match the expected state, an `Error` signal is driven high.
  </details>

---  

### Verilog Codes
-  Design module [parity.v](./parity.v) 
- Testbench [tb_parity.v](./tb_parity.v) 
### Output Screenshots
![Design_code](./screenshots/design_code.png)
![Waveform](./screenshots/waveform.png)
![Schematic](./screenshots/schematic.png)

