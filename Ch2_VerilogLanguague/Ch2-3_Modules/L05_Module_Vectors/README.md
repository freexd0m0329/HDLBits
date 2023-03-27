# Module shift

### Problem：

這個練習是[Three Modules](https://github.com/freexd0m0329/HDLBits/tree/main/Ch2_VerilogLanguague/Ch2-3_Modules/L04_Three_Modules)的延伸版本，模組的埠口從單一個bit改為一個vector

宣告一個my_dff8的模組，將他們重複三次並連接為一個長度為8寬度為3的shift register，並新增一個4對1的多工器選擇要輸出哪組訊號，宣告的模組如下

```verilog
my_dff8 ( input clk, input [7:0] d, output [7:0] q );
```

![https://hdlbits.01xz.net/mw/images/7/76/Module_shift8.png](https://hdlbits.01xz.net/mw/images/7/76/Module_shift8.png)

### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-3_Modules/L05_Module_Vectors/waveform.png?raw=true)