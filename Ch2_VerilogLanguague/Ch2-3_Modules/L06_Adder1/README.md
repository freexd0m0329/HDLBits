# Module adder1

### Problem：

宣告一個add16的模組，功能為一個16bit的加法器，將他們組合為一個32bit的加法器，且不需要進位輸入輸出埠，宣告的模組如下

```verilog
module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
```

![https://hdlbits.01xz.net/mw/images/a/a3/Module_add.png](https://hdlbits.01xz.net/mw/images/a/a3/Module_add.png)

### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-3_Modules/L06_Adder1/waveform.png?raw=true)