## Alwaysblock in Sequential

時序觸發的always與組合邏輯電路相同，會產生一個包含組合邏輯的邏輯區塊，但他會額外在輸出端建立一組正反器(或暫存器)，造成輸出結果並不像組合邏輯的always一樣立刻改變，而是在下一個clock正緣觸發後才會改變。<br>
也就是說，時序觸發的always會被一個clock訊號觸發，再執行區塊內的內容，並在下一個觸發時輸出結果。<br>
在Verilog中，時序觸發的always定義為:
```verilog
    always @(posedge clk)
```
## ****Blocking vs. Non-Blocking Assignment****
Verilog有兩種賦值(assignment)方式：
* ### **持續性賦值(Continuous assignments)**<br>
    這種賦值方式僅能被用在Procedure以外<br>
    ```verilog
        assign x = y;
    ```
* ### **程序性賦值(Procedural assignments)**<br>
    這種賦值方式僅能被用在Procedure內<br>
    ```verilog
        always @(posedge clk) begin
            x = y;      // blocking assignment
            x <= y;     // non-blocking assignment
        end
    ```
此外，使用組合邏輯的always應該要使用blocking assignment，而在循序邏輯電路中應該要使用non-blocking asignment，在這邊去理解這麼做對硬體設計並不特別有用，這需要對Verilog如何模擬電路有深刻的理解。
### Problem：

設計一個XOR電路使用三種不同的描述方式
![https://hdlbits.01xz.net/mw/images/4/40/Alwaysff.png](https://hdlbits.01xz.net/mw/images/4/40/Alwaysff.png)

### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-4_Procedures/L02_Alwaysblock_clock/waveform.PNG?raw=true)