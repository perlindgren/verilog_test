module adder (
    input [3:0] a,
    input [3:0] b,
    input c_in,
    output c_out,
    output [3:0] sum
);
  assign {c_out, sum} = a + b + {3'b000, c_in};
endmodule

