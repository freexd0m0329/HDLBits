## Always & Casez

設計一個8位元優先編碼器，若沒有輸入則輸出為0，8位元輸入具有256種觸發的可能性。
如果按照上一個練習的作法，這個case語句將會有256個case項。如果case語句中的case項與某些輸入項無關，就可以減少列出的數量，在本題中會使用到casez的作法。<br>
Casez會在比較時將被設為z的值當作是無關項(don't care)，舉例來說下面是一個4bit的優先編碼器:
```verilog
    always @(*) begin
        casez (in[3:0])
            4'bzzz1: out = 0;   // in[3:1]输入什么都可以
            4'bzz1z: out = 1;
            4'bz1zz: out = 2;
            4'b1zzz: out = 3;
            default: out = 0;
        endcase
    end
```
Case項會按照順序檢查(實際上會生成一個真值表來產生一個對應的組合電路)，注意有部分輸入會匹配到多個case項(如: 4'b1111)，他只會被匹配到第一個命中的case項。

### Problem：
設計一個8位元優先編碼器，若沒有輸入則輸出為0。


### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-4_Procedures/L07_PriorityEncoder_casez/waveform.PNG?raw=true)