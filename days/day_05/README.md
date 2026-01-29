# Design:Gray code & Binary code Converter
## Gray Code:
- Gray Code is the minimum-change code category of coding in which, the two consecutive values changes by only a single bit.
- This coding technique was invented by Frank Gray, thus it is named so.
-  binary code is changed to gray equivalent in order to lessen the switching operations.
-  As only a single bit is changed at a particular time duration this leads to a reduction in switching from one bit to another.
  
| Decimal Value|	Binary Code	|Gray Code|
|:---|:---|:---|
|0	|0000|	0000|
|1	|0001	|0001|
|2	|0010	|0011|
|3	|0011	|0010|
|4	|0100	|0110|
|5	|0101	|0111|
|6	|0110	|0101|
|7	|0111	|0100|
|8	|1000	|1100|
|9	|1001	|1101|
|A	|1010	|1111|
|B	|1011	|1110|
|C	|1100	|1010|
|D	|1101	|1011|
|E	|1110	|1001|
|F	|1111	|1000|

## Binary to Gray Code Conversion
- The Most Significant Bit (MSB) of Gray code is the same as the MSB of the binary number.
- Each next Gray bit is obtained by XOR of the current binary bit with the previous binary bit.
  <img width="418" height="290" alt="image" src="https://github.com/user-attachments/assets/fb2d9669-d211-4eac-b3e8-83f714049272" />

## Gray to Binary Code Conversion
- The MSB of binary is the same as the MSB of Gray code.
- Each next binary bit is obtained by XOR of the previous binary bit with the current Gray bit.
  <img width="480" height="308" alt="image" src="https://github.com/user-attachments/assets/1f89462d-0aea-479b-85d6-bb032441c14b" />
