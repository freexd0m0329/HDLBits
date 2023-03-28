## Always no latches

假設你正在寫一個用於處理PS/2鍵盤掃描碼的電路，給定最後收到的兩個bytes你需要判斷鍵盤是否被按下，這是一個相當簡單的mapping，可以用case語句(或if-elseif)分為以下四種case項。
|  Scancode   | Arrow key  |
|-----------|--------|
| 16'he06b  | left arrow |
| 16'he072  | down arrow |
| 16'he074  | right arrow |
| 16'he075  | up arrow |
| others  | none |
你的電路總共會有一個16bit的輸入，以及4個輸出，建立這個電路並輸出正確的訊號。<br>
同時，為了避免不必要的latches，必須在所有條件下都為輸出賦值。
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