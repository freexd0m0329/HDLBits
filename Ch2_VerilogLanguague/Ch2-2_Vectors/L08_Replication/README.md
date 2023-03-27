# Vector4

連接運算子”{}”則是將vector串聯為更大的vector，但有些時候你會需要重複做很多次同樣的事，例如:

```verilog
assign a = {b,b,b,b,b,b};
```

這時候有更好用的工具，複製運算子允許快速的重複做相同的事:

```verilog
{num{vector}}       // replicates vector by num times
{5{1'b1}}           // 5'b11111 (or 5'd31 or 5'h1f)
{2{a,b,c}}          // The same as {a,b,c,a,b,c}
{3'd5, {2{3'd6}}}   // 9'b101_110_110. It's a concatenation of 101 with
                    // the second vector, which is two copies of 3'b110.
```

### Problem：

複製運算子最常被用來擴充有號數的位元，如將4’b1101(-3)擴充為8個位元，即8’b11111101，可以透過將數字向左複製完成

下面請按照上面的做法擴充一個8bit有號數為32bit