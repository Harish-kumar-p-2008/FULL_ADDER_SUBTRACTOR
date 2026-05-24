# FULL_ADDER_SUBTRACTOR

Implementation-of-Full-Adder-and-Full-subtractor-circuit

**AIM:**

To design a Full Adder and Full Subtractor circuit and verify its truth table in Quartus using Verilog programming.

**Equipments Required:**

Hardware – PCs, Cyclone II , USB flasher

Software – Quartus prime

**Full Adder and Full Subtractor**

**FULL ADDER**

Full adder is a digital circuit used to calculate the sum of three binary bits. It consists of three inputs and two outputs. Two of the input variables, denoted by A and B, represent the two significant bits to be added. The third input, Cin, represents the carry from the previous lower significant position. Two outputs are necessary because the arithmetic sum of three binary digits ranges in value from 0 to 3, and binary 2 or 3 needs two digits. The two outputs are sum and carry.

Sum =A’B’Cin + A’BCin’ + ABCin + AB’Cin’ = A ⊕ B ⊕ Cin 

Carry = AB + ACin + BCin

![image](https://github.com/naavaneetha/FULL_ADDER_SUBTRACTOR/assets/154305477/0f30ba51-5ffb-4198-845f-18e054f675e7)

**Figure -1 FULL ADDER**

**FULL SUBTRACTOR**

A full subtractor is a combinational circuit that performs subtraction involving three bits, namely minuend, subtrahend, and borrow-in . It accepts three inputs: minuend, subtrahend and a borrow bit and it produces two outputs: difference and borrow.

![image](https://github.com/naavaneetha/FULL_ADDER_SUBTRACTOR/assets/154305477/02b24f51-ab51-4304-9ad6-7b81ffc1ead5)

Diff = A ⊕ B ⊕ Bin 

Borrow out = A'Bin + A'B + BBin

**Truthtable**

FULL ADDER

![alt text](image.png)

FULL SUBTRACTOR

![alt text](image-1.png)


**Procedure**

Type the program in Quartus software.

Compile and run the program.

Generate the RTL schematic and save the logic diagram.

Create nodes for inputs and outputs to generate the timing diagram.

For different input combinations generate the timing diagram.

**Program:**

/* Program to design a half subtractor and full subtractor circuit and verify its truth table in quartus using Verilog programming. 

Developed by: Harish Kumar P

RegisterNumber: 212225230095

FULL ADDER

module deexp3(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
xor (sum,a,b,cin);
wire w1,w2,w3;
and (w1,a,b);
and (w2,b,cin);
and (w3,a,cin);
or (carry,w1,w2,w3);
endmodule

FULL SUBTRACTOR

module full_subtractor(a,b,bin,diff,borrow);
input a,b,bin;
output diff,borrow;
xor (diff,a,b,bin);
wire w1,w2;
and (w1,~a,b);
and (w2,~(a^b),bin);
or (borrow,w1,w2);
endmodule

*/

**RTL Schematic**

FULL ADDER

![alt text](<Screenshot 2026-05-24 132812.png>)

FULL SUBTRACTOR

![alt text](<Screenshot 2026-05-24 133538.png>)


**Output Timing Waveform**

FULL ADDER

![alt text](<Screenshot 2026-05-24 133812.png>)

FULL SUBTRACTOR

![alt text](<Screenshot 2026-05-24 134056.png>)


**Result:**

Thus the Full Adder and Full Subtractor circuits are designed and the truth tables is verified using Quartus software.



