## Declaring wires

到目前為止的練習都還是簡單的電路，在更複雜的應用當中會需要導線來連結內部元件，使用時須宣告wire變數

### Example：

![P1](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-1_Basics/L07_DeclaringWires/P1.png?raw=true)

```verilog
module top_module (
    input in,              // Declare an input wire named "in"
    output out             // Declare an output wire named "out"
);

    wire not_in;           // Declare a wire named "not_in"

    assign out = ~not_in;  // Assign a value to out (create a NOT gate).
    assign not_in = ~in;   // Assign a value to not_in (create another NOT gate).

endmodule   // End of module "top_module"
```

### Problem：

實現以下的電路，可能會需要宣告多個wire來連接不同邏輯閘

![P2](https://hdlbits.01xz.net/mw/images/3/3a/Wiredecl2.png)

### Waveform：

![waveform](https://github.com/freexd0m0329/HDLBits/blob/main/Ch2_VerilogLanguague/Ch2-1_Basics/L07_DeclaringWires/waveform.png?raw=true)