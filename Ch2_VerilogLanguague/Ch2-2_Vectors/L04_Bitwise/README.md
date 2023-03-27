# Vectorgates

## ****Bitwise vs. Logical Operators****

在Verilog中，布林運算有分為位元及邏輯運算，使用vector時會有明顯的區別，當N個位元的vector進行位元運算將會對每一個位元逐一比較，並產生N個輸出。反之使用邏輯運算會將整個vector視為一個布林值，並產生一個位元的輸出

### Problem：

![Untitled](https://hdlbits.01xz.net/mw/images/1/1b/Vectorgates.png)

### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-2_Vectors/L04_Bitwise/waveform.png?raw=true)