module MUX2X1 #(
    parameter WIDTH = 32
) (
    input [WIDTH-1:0] mux_in_0,
    input [WIDTH-1:0] mux_in_1,
    input sel,

    output reg [WIDTH-1:0] mux_out
);
  always @(*) begin
    case (sel)
      1'b0: mux_out = mux_in_0;
      1'b1: mux_out = mux_in_1;
    endcase
  end
endmodule
