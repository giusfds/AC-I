// guia 06
// Giuseppe 
// 801779

module func_c (
  input X, Y, W, Z,
  output F
);

  assign F = (X | W | Z) & (Y | Z');

endmodule