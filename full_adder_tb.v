`timescale 1 ns / 1ns
`include "full_adder.v"

module full_adder_tb;
  reg a, b, c;
  wire sum, carry;

  full_adder adder(a, b, c, sum, carry);

  initial begin
    $dumpfile("full_adder_tb.vcd");
    $dumpvars(0, full_adder_tb);
    $monitor("a = %b, b = %b, c = %b, sum = %b, carry = %b", a, b, c, sum, carry);
    a = 0; b = 0; c = 0; #10;
    a = 0; b = 0; c = 1; #10;
    a = 0; b = 1; c = 0; #10;
    a = 0; b = 1; c = 1; #10;
    a = 1; b = 0; c = 0; #10;
    a = 1; b = 0; c = 1; #10;
    a = 1; b = 1; c = 0; #10;
    a = 1; b = 1; c = 1; #10;
    $finish;

  end
endmodule