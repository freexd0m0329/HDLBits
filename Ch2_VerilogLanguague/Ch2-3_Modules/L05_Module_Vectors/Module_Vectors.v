module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    
    wire [7:0] d1, d2, d3;
    
    my_dff8 x1(clk, d[7:0], d1[7:0]);
    my_dff8 x2(clk, d1[7:0], d2[7:0]);
    my_dff8 x3(clk, d2[7:0], d3[7:0]);
    
    assign q[7:0] = ({8{((~sel[0]) & (~sel[1]))}} & d[7:0]) | 
        			({8{((sel[0]) & (~sel[1]))}} & d1[7:0]) |
        			({8{((~sel[0]) & (sel[1]))}} & d2[7:0]) |
        			({8{((sel[0]) & (sel[1]))}} & d3[7:0]);

endmodule