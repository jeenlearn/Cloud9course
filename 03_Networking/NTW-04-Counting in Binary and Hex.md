# Counting in Binary and Hex
Computers store and process data in binary ie. 1 or 0.


## Key Terminologies
* Binary -It is a number system based on 2 symbols 0 and 1.
* Hexadecimal - It is a number system based on 16 symbols like 0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F
* Bit - One bit is represented by one digit in binary.
* Byte- 8 bits together is called Byte.Highest possible decimal value of byte 255(1111 1111)



## Exercise 1
- Translate the following decimal numbers into binary:

- Translate the following binary numbers into decimal:
- Translate the following decimal numbers into hexadecimal:

- Translate the following hexadecimal numbers into decimal:






### Sources

* [Decimal to Hexadecimal](https://www.tutorialspoint.com/how-to-convert-decimal-to-hexadecimal)
* [Decimal to Binary](https://www.tutorialspoint.com/how-to-convert-decimal-to-binary)
* [Conversion](https://www.rapidtables.com/convert/number/hex-to-decimal.html)


### Overcome challenges
 
No  challenges faced

 ### Results

#### Question 1
| Decimal          | Binary           |
| ---------------- | ---------------- |
| 16               | 10000            |
| 128              | 10000000         |
| 228              | 11100100         |
| 112              | 1110000          |
| 73               | 1001001          |

Explanation:
Example : 16 . See which number can be subtracted from 16 and keep on subracting till it reaches 0 .The first number that can be subtracted from 16 is 16.

Egs:

16-16=0

128-128=0

228 -128 =100-64 =36-32=4-4=0

112-64=48-32=16-16=0

73-64=9-8=1-1=0

|128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
| -- | ---| ---|----|---| --|---|---| 
|  0 | 0  |  0 | 1  | 0 | 0 | 0 | 0 |
|  1 | 0  |  0 | 0  | 0 | 0 | 0 | 0 |
|  1 | 1  |  1 | 0  | 0 | 1 | 0 | 0 |
|  0 | 1  |  1 | 1  | 0 | 0 | 0 | 0 |
|  0 | 1  |  0 | 0  | 1 | 0 | 0 | 1 |
#### Question 2

| Binary           | Decimal          |
| ---------------- | ---------------- |
| 1010 1010        | 170              |
| 1111 0000        | 240              |
| 1101 1011        | 219              |
| 1010 0000        | 160              |
| 0011 1010        | 58               |

Explanation:

Whereever the 1 are coming in the table we have to add the corresponding  column header numbers.

Egs:

10101010 : 128+32+8+2= 170

1111 0000 : 128+64+32+16 = 240

1101 1011 : 128+64+16+8+2+1 = 219

1010 0000 :128+32 = 160

0011 1010 : 32+16+8+2 = 58


|128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
| -- | ---| ---|----|---| --|---|---| 
|  1 | 0  |  1 | 0  | 1 | 0 | 1 | 0 |
|  1 | 1  |  1 | 1  | 0 | 0 | 0 | 0 |
|  1 | 1  |  0 | 1  | 1 | 0 | 1 | 1 |
|  1 | 0  |  1 | 0  | 0 | 0 | 0 | 0 |
|  0 | 0  |  1 | 1  | 1 | 0 | 1 | 0 |



#### Question 3

| Decimal          | Hex              |
| ---------------- | ---------------- |
| 15               | F                |
| 37               | 25               |
| 246              | F6               |
| 125              | 7D               |
| 209              | D1               |

Explanation :

Egs:

15= F the correpsonding number for 15 is F

37 = 37/16 = 2.3125 Remainder = .3125*16 = 5
    
    2/16 =0.125 Remainder = 0.125*16 = 2

    so read the remainders from most significant to the least sugnificant from bottom to top 
     ie : 25 is the Hex

246 = 246/16 = 15.375 R = 6

     15/16 = 0.9375 R = 15 = F

     Answer :F6

125 = 125/16 = 7.8125 R = 13 = D

     7/16 = 0.4375  R= 7

     Answer: 7D

209 = 209/16 = 13.0625 R = 1

    13/16 =0.8125 R= 13 = D

    Answer :D1


#### Question 4


| Hex              | Decimal          |
| ---------------- | ---------------- |
| 88               | 136              |
| E0               | 224              |
| CB               | 203              |
| 2F               | 47               |
| D8               | 216              |


Explanation :

Egs :

88 = 8*16^0+8*16^1 = 8*1+8*16 = 136

E0 = 0*16^0+14*16^1 = 0+224 =224

CB = 11*16^0+12*16^1 = 11+192 = 203

2F = 15*16^0+2*16^1 = 15+32 = 47

D8 = 8*16^0 +13*16^1 =8+208 = 216
  
  

