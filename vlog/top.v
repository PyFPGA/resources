`include "header1.vh"
`include "header2.vh"

module Top #(
  parameter BOO      = 0, // is an integer
  parameter INT      = 0,
  parameter LOG      = 1'b0,
  parameter VEC      = 8'd0,
  parameter CHR      = "A", // is an string
  parameter STR      = "ABCD",
  parameter REA      = 0.0,
  //
  parameter SKIP_BOO = 0,
  parameter SKIP_INT = 0,
  parameter SKIP_LOG = 0,
  parameter SKIP_VEC = 0,
  parameter SKIP_CHR = 0,
  parameter SKIP_STR = 0,
  parameter SKIP_REA = 0
)(
  input  clk_i,
  output led_o
);

`ifdef ARCH_SEL

  initial begin
    if (SKIP_BOO==0 & BOO!=1) begin
      $display("ERROR: BOO has not the specified value"); $finish;
    end
    if (SKIP_INT==0 & INT!=255) begin
      $display("ERROR: INT has not the specified value"); $finish;
    end
    if (SKIP_LOG==0 & LOG!=1'b1) begin
      $display("ERROR: LOG has not the specified value"); $finish;
    end
    if (SKIP_VEC==0 & VEC!=8'b11111111) begin
      $display("ERROR: VEC has not the specified value"); $finish;
    end
    if (SKIP_CHR==0 & CHR!="Z") begin
      $display("ERROR: CHR has not the specified value"); $finish; $error("ERROR");
    end
    if (SKIP_STR==0 & STR!="WXYZ") begin
      $display("ERROR: STR has not the specified value"); $finish;
    end
    if (SKIP_REA==0 & REA!=1.1) begin
      $display("ERROR: REA has not the specified value"); $finish;
    end
  end

  Blink #(.FREQ (`FREQ), .SECS (`SECS))
  dut (.clk_i (clk_i), .led_o (led_o));

`else

  initial begin
    $display("ERROR: ARCH_SEL was not specified"); $finish;
  end

`endif

endmodule
