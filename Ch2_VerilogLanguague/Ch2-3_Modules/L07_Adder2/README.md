# Module adder2

### Problem：

在本題中，將會描述一個具有兩個層級結構的電路，宣告一個add16的模組，功能為一個16bit的加法器，宣告的模組如下

```verilog
module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
```

在宣告一個add1模組，撰寫一個1bit的全加器，將add1組合為一個add16(已經寫好)並組合為一個32bit的加法器

![https://hdlbits.01xz.net/mw/images/f/f3/Module_fadd.png](https://hdlbits.01xz.net/mw/images/f/f3/Module_fadd.png)

### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-3_Modules/L07_Adder2/waveform.png?raw=true)