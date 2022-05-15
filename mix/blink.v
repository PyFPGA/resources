module Blink (
  input  wire clk_i,
  output wire led_o
);

  localparam            DIV = 50000;

  reg                   led;
  reg [$clog2(DIV)-1:0] cnt = 0;

  always @(posedge clk_i) begin
    if (cnt == DIV-1) begin
      cnt = 0;
      led <= ~led;
    end else begin
      cnt = cnt + 1;
    end
  end

  assign led_o = led;

endmodule
