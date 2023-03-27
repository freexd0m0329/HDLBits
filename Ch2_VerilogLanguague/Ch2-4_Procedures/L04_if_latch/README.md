## Always & IF statement 2

在進行電路設計時，必須先考慮具體的電路實作，如:
* 我想用這個邏輯閘
* 我想設計一個具有輸入並產生輸出的組合邏輯電路
* 我想設計一個組合邏輯電路連接一個正反器輸出<br>

不要一開始就埋頭苦寫程式碼，這樣容易造成想像與實際設計的電路有很大的差距。<br>
語法上正確的程式碼不見得會產生合理的電路，最常見的發生原因是"未指定其他狀況下會發生甚麼"，這在Verilog中會保持輸出不變。而這種保持不變的行為意味的需要記住目前的狀態，因此會產生一個latch (因組合邏輯無法"記住"任何狀態)，如果編譯器產生類似以下的訊息:<br>
 >Warning (10240): ... inferring latch(es)<br>

除非是有意的latch，否則這代表著存在著邏輯的錯誤，組合電路必須要在所有條件分支下都assign輸出，也就是永遠都需要有else分支或將預設值assign給輸出。<br>

### Problem：
以下程式碼具有錯誤的行為:
```verilog
    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        end

    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty;
    end
```
請修正他只有在真正的過熱時才關閉電腦，以及真的抵達目的地或者需要加油時才停車。
![https://hdlbits.01xz.net/mw/images/d/d1/Always_if2.png](https://hdlbits.01xz.net/mw/images/d/d1/Always_if2.png)


### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-4_Procedures/L04_if_latch/waveform.png?raw=true)