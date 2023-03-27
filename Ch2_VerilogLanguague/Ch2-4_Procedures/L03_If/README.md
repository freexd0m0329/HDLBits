## Always & IF statement

if 描述語句常被用來應用於2對1多工器
```verilog
    always @(*) begin
        if (condition) begin
            out = x;
        end
        else begin
            out = y;
        end
    end
```
也可以用持續性賦值的conditional operator完成
```verilog
    assign out = (condition) ? x : y;
```
然而，Procedural的if語句容易導致錯誤，如果out變數沒有一直被assign，這個電路就會變成組合邏輯電路。也就是說必須確保所有的條件分支都將out變數賦值，否則可能會產生意外的錯誤，而且很難被發現，因為他們可能不是在所有情況都會出現。
### Problem：

設計一個2對1多工器使用assign與procedural兩種不同的方式，並滿足以下真值表:
|  sel_b1   | sel_b2  | out |
|-----|--------|--------|
|  0  | 0  | a |
| 0  | 1 | a |
| 1  | 0 | a |
| 1  | 1 | b |



### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-4_Procedures/L03_If/waveform.PNG?raw=true)