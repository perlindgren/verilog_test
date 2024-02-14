module tb_adder;

  logic [3:0] a;
  logic [3:0] b;
  logic c_in;

  logic c_out;
  logic [3:0] sum;

  logic [31:0] r;

  integer i;
  adder fa0 (
      a,
      b,
      c_in,
      c_out,
      sum
  );

  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars;

    a = 0;
    b = 0;
    c_in = 0;


    for (i = 0; i < 5; i = i + 1) begin
      r = $random;
      a = r[3:0];
      b = r[7:4];
      c_in = r[8];
      #10 $display("a=0x%0h b=0x%0h c_in=0x%0h c_out=0x%0h sum=0x%0h", a, b, c_in, c_out, sum);
      // assert ( a + b + c_in  == {c_out, sum}) $display ("OK. A equals B");
      // else $error("It's gone wrong");
    end

    #10 $finish;

  end

endmodule
