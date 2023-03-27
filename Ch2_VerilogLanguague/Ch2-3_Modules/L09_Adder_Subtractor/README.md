# Module adder-subtractor

### Problem：

透過將一個輸入反相，可以將加法器變成減法器，透過32bit的XOR，在sub為1時將一個輸入反相，即可透過sub控制輸出為加法或減法

```verilog
module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
```

![https://hdlbits.01xz.net/mw/images/a/ae/Module_addsub.png](https://hdlbits.01xz.net/mw/images/a/ae/Module_addsub.png)

### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-3_Modules/L09_Adder_Subtractor/waveform.png?raw=true)