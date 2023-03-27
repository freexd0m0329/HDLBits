## Module

模組會將電路打包起來，透過輸入及輸出埠與外部電路溝通，使用模組化可以將較小的模組連接起來組合成更大的模組，形成一種層次結構
下面簡單的示範一個模組電路，建立一個名為mod_a的模組，將三個接腳(in1, in2, out)連接到上層模組的三個埠口(a, b, out)

```verilog
module mod_a ( input in1, input in2, output out );
    // Module body
endmodule
```

![https://hdlbits.01xz.net/mw/images/c/c0/Module.png](https://hdlbits.01xz.net/mw/images/c/c0/Module.png)

## ****Connecting Signals to Module Ports****

- **By position**
    
    類似於C語言的語法，當創建一個模組時，根據模組的宣告埠口順序，由左至右連接，如:
    
    ```verilog
    mod_a instance1(wa, wb, wc);
    ```
    
    這樣的寫法會將上層模組的訊號wa連接至模組內的in1，wb連接至模組內的wb而wc連接至out，這樣的寫法缺點是如果更改模組內的埠口順序，所有應用的模組都必須更改
    
- **By name**
    
    透過將名稱直接對應到埠口，即使更改埠口順序也不會影響模組連接，但是相較上述的方法語句更為冗長
    
    ```verilog
    mod_a instance2 ( .out(wc), .in1(wa), .in2(wb) );
    ```
    

### Problem：

將mod_a以上面的範例方式連接，並嘗試上述兩種不同的連接方法

### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-3_Modules/L01_Modules/waveform.png?raw=true)