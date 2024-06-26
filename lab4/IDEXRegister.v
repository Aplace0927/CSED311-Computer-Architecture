module IDEXRegister (
    input clk,
    input reset,

    input wb_enable_in,
    input mem_enable_in,
    input mem_write_in,
    input op1_pc_in,
    input [1:0] op2_sel_in,
    input is_halted_in,
    input ex_forwardable_in,
    input valid_in,
    input is_branch_in,
    input is_jalr_in,

    input [31:0] rs1_in,
    input [31:0] rs2_in,
    input [ 4:0] rs1_id_in,
    input [ 4:0] rs2_id_in,
    input [ 4:0] rd_id_in,
    input [31:0] inst_in,
    input [31:0] imm_in,
    input [31:0] pc_in,

    output reg wb_enable,
    output reg mem_enable,
    output reg mem_write,
    output reg op1_pc,
    output reg [1:0] op2_sel,
    output reg is_halted,
    output reg ex_forwardable,
    output reg valid,
    output reg is_branch,
    output reg is_jalr,

    output reg [31:0] rs1,
    output reg [31:0] rs2,
    output reg [ 4:0] rs1_id,
    output reg [ 4:0] rs2_id,
    output reg [ 4:0] rd_id,
    output reg [31:0] inst,
    output reg [31:0] imm,
    output reg [31:0] pc
);
  always @(posedge clk) begin
    if (reset) begin
      wb_enable <= 0;
      mem_enable <= 0;
      mem_write <= 0;
      op1_pc <= 0;
      op2_sel <= 2'b0;
      is_halted <= 0;
      ex_forwardable <= 0;
      valid <= 0;
      is_branch <= 0;
      is_jalr <= 0;

      rs1 <= 32'b0;
      rs2 <= 32'b0;
      rs1_id <= 5'b0;
      rs2_id <= 5'b0;
      rd_id <= 5'b0;
      inst <= 32'b0;
      imm <= 32'b0;
      pc <= 32'b0;
    end else begin
      wb_enable <= wb_enable_in;
      mem_enable <= mem_enable_in;
      mem_write <= mem_write_in;
      op1_pc <= op1_pc_in;
      op2_sel <= op2_sel_in;
      is_halted <= is_halted_in;
      ex_forwardable <= ex_forwardable_in;
      valid <= valid_in;
      is_branch <= is_branch_in;
      is_jalr <= is_jalr_in;

      rs1 <= rs1_in;
      rs2 <= rs2_in;
      rs1_id <= rs1_id_in;
      rs2_id <= rs2_id_in;
      rd_id <= rd_id_in;
      inst <= inst_in;
      imm <= imm_in;
      pc <= pc_in;
    end
  end
endmodule
