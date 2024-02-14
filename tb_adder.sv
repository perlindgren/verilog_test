module tb_adder;

  logic [3:0] a;
  logic [3:0] b;
  logic c_in;

  logic c_out;
  logic [3:0] sum;

  integer i;
  adder fa0 (
      a,
      b,
      c_in,
      c_out,
      sum
  );

  initial begin
    a = 0;
    b = 0;
    c_in = 0;
    $monitor("a=0x%0h b=0x%0h c_in=0x%0h c_out=0x%0h sum=0x%0h", a, b, c_in, c_out, sum);

    for (i = 0; i < 5; i = i + 1) begin
      #10 a = $random;
      b = $random;
      c_in = $random;
    end
  end

endmodule
