// Guia 06
// Giuseppe
// 801779

module func_a (
    input wire X, Y, Z,
    output wire F
);
    assign F = (X | ~Y | ~Z) & (~X | Y | ~Z) & (~X | Y | Z);
endmodule