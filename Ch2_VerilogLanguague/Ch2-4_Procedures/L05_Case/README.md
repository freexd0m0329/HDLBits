## Always & Case statement

在Verilog中case語句幾乎等於if-elseif-else，用來比較一個表達式與一組常數的列表，他的語法與功能與C語言中的switch-case有些不同。
```verilog
    always @(*) begin     // This is a combinational circuit
        case (in)
            1'b1: begin 
                   out = 1'b1;  // begin-end if >1 statement
                end
            1'b0: out = 1'b0;
            default: out = 1'bx;
        endcase
    end
```
* case語句以case開頭，每個常數以":"為結束。
* 每個常數列表只執行一個語句，因此不需要break來跳脫，但是如果需要執行多個語句就會需要"begin-end"。
* case語句允許重複，他只會執行第一個match的常數。

### Problem：
Case語句比if語句在面對多條件式時更為方便，在本次練習中請使用case語句描述一個6對1多工器，當sel介於0-5時選擇正確的對應輸出，除此之外都輸出0，請注意要避免產生上一個練習所說的latches。


### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-4_Procedures/L05_Case/waveform.png?raw=true)