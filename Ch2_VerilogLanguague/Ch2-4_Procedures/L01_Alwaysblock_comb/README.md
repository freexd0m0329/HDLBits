## Alwaysblock in Combinational
數位電路是由導線與邏輯閘組合而成，以組合邏輯而言，任何電路都可以用模組與assign語句組合，但有時這不是最方便的描述方式，Procedures(以always)為一種代替的描述方式

always合成硬體時有兩種方式：
```verilog
    always @(*)                 //組合邏輯
    always @(posedge clk)       //循序邏輯
```
在組合邏輯電路當中，always與assign是相同的概念，因此兩種方式都可以用於描述組合邏輯電路，可以選擇較方便的語法。相較於assign，Procedures具有更靈活的描述語句，如if-then, case等。<br>
需注意的是Procedures內部的語法與外部不同，例如他不能進行持續性賦值(Continuous Assignment)，且經常導致一些非直觀的錯誤。<br>

>事實上Procedural Continuous Assignment是存在的，但他與Continuous Assignment有些差異，而且不能被用於合成電路。<br>

舉例來說，以下兩種描述方式皆描述相同的電路，也都會在輸入值有任何改變時重新計算

```verilog
    assign out1 = a & b | c ^ d;
    always @(*) out2 = a & b | c ^ d;
```

![https://hdlbits.01xz.net/mw/images/2/2b/Alwayscomb.png](https://hdlbits.01xz.net/mw/images/2/2b/Alwayscomb.png)

在組合邏輯電路使用always建議使用(*)作為sensitivity list，這樣做比較不容易出錯且合成硬體時會被忽略，如果你指定明確的訊號作為sensitivity list但漏掉了其中一個，合成硬體時仍然會與不指定相同，但是實際的硬體測試結果可能會與模擬的行為不相同。在SystemVerilog中，可以使用always_comb來避免這種問題。<br><br>
此外，使用assign時左側必須是wire變數，而always中左側必須是reg變數，這個規則與硬體合成無關，僅僅只是Verilog模擬描述硬體語言的語法。
    

### Problem：

設計一個AND電路使用兩種不同的描述方式

### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-4_Procedures/L01_Alwaysblock_comb/waveform.png?raw=true)