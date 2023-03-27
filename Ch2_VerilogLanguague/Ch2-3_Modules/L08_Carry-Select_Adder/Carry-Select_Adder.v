module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum);
    
    wire [15:0] s0, s1;
    wire sel;
    
    add16 x1(a[15:0], b[15:0], 1'b0, sum[15:0], sel);
    add16 x2(a[31:16], b[31:16], 1'b0, s0[15:0], 1'b0);
    add16 x3(a[31:16], b[31:16], 1'b1, s1[15:0], 1'b0);
    
    assign sum[31:16] = ({16{~sel}} & s0[15:0]) | ({16{sel}} & s1[15:0]);

endmodule
