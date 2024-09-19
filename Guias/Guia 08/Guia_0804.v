// Guia 08 
// 801779 
// Giuseppe

module isDiff ( output s, input a, input b ); 
    xor XOR0 ( s, a, b ); 
endmodule // isDiff 

module Guia_0804; 
    reg  [4:0] x; 
    reg  [4:0] y; 
    reg  [4:0] a; 
    reg  [4:0] b; 
    wire [4:0] s1; 
    wire [4:0] s2; 
    
    isDiff XY0 ( s1[0], x[0], y[0] );
    isDiff XY1 ( s1[1], x[1], y[1] );
    isDiff XY2 ( s1[2], x[2], y[2] );
    isDiff XY3 ( s1[3], x[3], y[3] );
    isDiff XY4 ( s1[4], x[4], y[4] );

    isDiff AB0 ( s2[0], a[0], b[0] );
    isDiff AB1 ( s2[1], a[1], b[1] );
    isDiff AB2 ( s2[2], a[2], b[2] );
    isDiff AB3 ( s2[3], a[3], b[3] );
    isDiff AB4 ( s2[4], a[4], b[4] );

    initial begin : start
        x = 5'b10101;
        y = 5'b10101;
        a = 5'b10011;
        b = 5'b10010;
    end 

    initial begin : main 

        #1;
        $write( "%b  ==  %b ? %b = ", x, y, s1 );
        if( s1 == 5'b00000 ) begin
            $display( "true" );
        end else begin
            $display( "false" );
        end 

        #1;
        $write( "%b  ==  %b ? %b = ", a, b, s2 );
        if( s2 == 5'b00000 ) begin
            $display( "true" );
        end else begin
            $display( "false" );
        end 
    end 
endmodule // Guia_0804
