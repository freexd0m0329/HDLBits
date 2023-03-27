module top_module ( input clk, input d, output q );
    wire d1, d2;
    my_dff x1(clk, d, d1);
    my_dff x2(clk, d1, d2);
    my_dff x3(clk, d2, q);

endmodule