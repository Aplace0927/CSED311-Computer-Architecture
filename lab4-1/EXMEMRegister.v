module EXMEMRegister (
    input clk,
    input reset,

    input wb_enable_in,
    input mem_enable_in,
    input mem_write_in,
    input is_ecall_in,

    input [31:0] alu_output_in,
    input [31:0] rs2_in,
    input [ 4:0] rd_id_in,

    output reg wb_enable,
    output reg mem_enable,
    output reg mem_write,
    output reg is_ecall,

    output [31:0] alu_output,
    output [31:0] rs2,
    output [ 4:0] rd_id
);
  always @(posedge clk) begin
    if (reset) begin
      wb_enable <= 0;
      mem_enable <= 0;
      mem_write <= 0;
      is_ecall <= 0;

      alu_output <= 32'b0;
      rs2 <= 32'b0;
      rd_id <= 5'b0;
    end else begin
      wb_enable <= wb_enable_in;
      mem_enable <= mem_enable_in;
      mem_write <= mem_write_in;
      is_ecall <= is_ecall_in;

      alu_output <= alu_output_in;
      rs2 <= rs2_in;
      rd_id <= rd_id_in;
    end
  end
endmodule
