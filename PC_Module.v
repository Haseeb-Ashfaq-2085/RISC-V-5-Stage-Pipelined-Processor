`timescale 1ns / 1ps


module PC_Module(clk,rst,PC,PC_Next);
//declaring I/O
    input clk,rst;
    input [31:0]PC_Next;
    output [31:0]PC;
    reg [31:0]PC;

    always @(posedge clk)
    begin
        if(rst == 1'b0)
            PC <= {32{1'b0}};           //resetting PC
        else
            PC <= PC_Next;              //incrementing PC
    end
endmodule