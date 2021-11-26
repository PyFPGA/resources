module Top (
  input  wire clk_i,
  output wire led_o
);

  Blink dut (.clk_i (clk_i), .led_o (led_o));

endmodule
