## Always & Case statement 2

優先編碼器是一個組合邏輯電路，輸入一個像向量時，輸出這個向量中最右邊的第一個1的位置，舉例來說:<br>
>輸入為: 8'b10010000<br>
輸出即為: 3'd4<br>

這是因為從右邊屬過來編號4的位置是第一個1。<br>


### Problem：
設計一個4位元優先編碼器，若沒有輸入則輸出為0，4位元輸入具有16種觸發的可能性。


### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-4_Procedures/L06_PriorityEncoder/waveform.PNG?raw=true)