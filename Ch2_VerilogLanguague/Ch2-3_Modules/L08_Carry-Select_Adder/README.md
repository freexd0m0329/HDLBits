# Module carry-select adder

上一個練習中，全加器的一個缺點是計算進位輸出的延遲相當慢，第二級加法器在第一級加法器完成之前無法開始計算其進位輸出。

### Problem：

在本題中，上述問題的一種改進方法是使用選擇進位加法器，如下所示。第一級加法器與以前相同，但我們複製了第二級加法器，假設進位輸入為0和1，然後使用快速的2到1多路復用器來選擇哪個結果恰好是正確的。

```verilog
module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
```

![https://hdlbits.01xz.net/mw/images/3/3e/Module_cseladd.png](https://hdlbits.01xz.net/mw/images/3/3e/Module_cseladd.png)

### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-3_Modules/L08_Carry-Select_Adder/waveform.png?raw=true)