`timescale 1ns / 1ps

module Instruction_Memory(rst,A,RD);

  input rst;        //reset bit
  input [31:0]A;
  output [31:0]RD;

  reg [31:0] mem [1023:0];          //instruction memory
  
  assign RD = (rst == 1'b0) ? {32{1'b0}} : mem[A[31:2]];
//adding instructions to memory
 initial begin
    mem[0] = 32'h00100493;  // addi x9, x0, 1
    mem[1] = 32'h00940533;  // add x10, x8, x9
    mem[2] = 32'h00A30633;  // add x12, x6, x10
    mem[3] = 32'h40550633;  // **sub x12, x10, x5** (NEW)
    mem[4] = 32'h00500293;  // addi x5, x0, 5
    mem[5] = 32'hFF534E63;  // beq x5, x10, -16
    mem[6] = 32'h006283B3;  // add x7, x5, x6
    mem[7] = 32'h00002403;  // lw x8, 0(x0)
    mem[8] = 32'h00000000;  // nop
    mem[9] = 32'h00300313;  // addi x6, x0, 3
    mem[10] = 32'h012A8020; // add x16, x20, x18
end



/*
  initial begin
    //mem[0] = 32'hFFC4A303;
    //mem[1] = 32'h00832383;
    // mem[0] = 32'h0064A423;
    // mem[1] = 32'h00B62423;
    mem[0] = 32'h0062E233;
    // mem[1] = 32'h00B62423;

  end
*/
endmodule