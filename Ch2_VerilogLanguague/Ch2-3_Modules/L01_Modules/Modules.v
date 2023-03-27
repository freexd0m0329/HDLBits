module top_module ( input a, input b, output out );
    
    //mod_a x1(a, b, out);						// connect by posistion
    mod_a x2(.in1(a), .in2(b), .out(out));		// connect by name
    
endmodule