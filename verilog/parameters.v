module Params #(
    parameter BOO = 0,
    parameter INT = 0,
    parameter LOG = 1'b0,
    parameter VEC = 8'd0,
    parameter STR = "ABCD",
    parameter REA = 0.0
)(
    output wire boo_o,
    output wire [7:0] int_o,
    output wire log_o,
    output wire [7:0] vec_o,
    output wire str_o,
    output wire rea_o
);

    initial begin
        // if (BOO == 0)      $finish;
        // if (INT == 0)      $finish;
        // if (LOG == 0)      $finish;
        // if (VEC == 0)      $finish;
        // if (STR == "ABCD") $finish;
        // if (REA == 0.0)    $finish;
        $display("BOO = %d", BOO);
        $display("INT = %d", INT);
        $display("LOG = %d", LOG);
        $display("VEC = %d", VEC);
        $display("STR = %s", STR);
        $display("REA = %d", (REA==0.0   ) ? 1'b0 : 1'b1);
    end

    assign boo_o = BOO;
    assign int_o = INT;
    assign log_o = LOG;
    assign vec_o = VEC;
    assign str_o = (STR=="ABCD") ? 1'b0 : 1'b1;
    assign rea_o = (REA==0.0   ) ? 1'b0 : 1'b1;

endmodule
