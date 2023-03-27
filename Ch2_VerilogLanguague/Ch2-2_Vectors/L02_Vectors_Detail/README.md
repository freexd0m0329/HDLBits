# Vector1

## ****Declaring Vectors****

Vector可以用以下的方式進行宣告:

```verilog
type [upper:lower] vector_name;
```

其中 type可以被指定為特定資料型態的vector，通常為reg或是wire，以及宣告輸出及輸入時使用的input/output，需注意的是vector的方向具有唯一性，代表小端序[3:0]或是大端序[0:3]，一旦宣告了vector的方向性就必須保持一致，以下是多個範例:

```verilog
wire [7:0] w;         // 8-bit wire
reg  [4:1] x;         // 4-bit reg
output reg [0:0] y;   // 1-bit reg that is also an output port (this is still a vector)
input wire [3:-2] z;  // 6-bit wire input (negative ranges are allowed)
output [3:0] a;       // 4-bit output wire. Type is 'wire' unless specified otherwise.
wire [0:7] b;         // 8-bit wire where b[0] is the most-significant bit.
```

## ****Implicit nets****

Implicit nets是常見難以被發現的錯誤，由於net-type可以透過assign將未宣告的變數附加到module上進行隱藏式宣告，而net-type為一位元的wire，如果使用向量則可能會造成錯誤的輸出結果

加上`default_nettype none 可以停用net-type的自隱藏式宣告，以下為錯誤範例:

```verilog
wire [2:0] a, c;   // Two vectors
assign a = 3'b101;  // a = 101
assign b = a;       // b =   1  implicitly-created wire
assign c = b;       // c = 001  <-- bug
my_module i1 (d,e); // d and e are implicitly one-bit wide if not declared.
                    // This could be a bug if the port was intended to be a vector.
```

## ****Unpacked vs. Packed Arrays****

Packed Arrays是指將vector中的每個元素打包成一個連續的二進制位元，而Unpacked Array用於記憶體陣列宣告，與C語言當中的陣列宣告方式類似，如4x8的陣列可以透過以下方式宣告:

```verilog
reg [7:0] mem [0:3];    // 四個元素，每個元素具有8個位元
mem[0] = 8'b11001100;   // 定義第一個元素的值為0xCC
```

在verilog當中Packed Array不具有實際的硬體意義，他只在編譯器中用來方便定義及操作變數的方法，並沒有被映射到硬體當中。而記憶體陣列具有實際的意義，通常使用暫存器來實現

## ****Accessing Vector Elements: Part-Select****

可以直接透過vector的名稱去操作整個向量，如:

```verilog
wire [7:0] w;        
output [3:0] a;
assign w = a;
```

當左右兩邊的長度不對等時會進行補零或是截斷

### Problem：

建立一個組合電路將一個16bits(half-word)輸入分割為高低兩個位元組

### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-2_Vectors/L02_Vectors_Detail/waveform.png?raw=true)