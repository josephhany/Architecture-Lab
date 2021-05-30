`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2020 12:22:45 AM
// Design Name: 
// Module Name: sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sim(
    );
    reg [1:0] ALUOp;
    reg [31:0] Inst;
    wire [3:0] ALU_Selection;
    ALU_Control_Unit ACU(ALUOp,Inst,ALU_Selection);
    initial begin
    Inst=0;
    ALUOp=2'b00;
    Inst[14:12]=3'bxxx;
    Inst[30]=1'bx;
    #100;
    ALUOp=2'b01;
    Inst[14:12]=3'bxxx;
    Inst[30]=1'bx;
    #100;
    ALUOp=2'b10;
    Inst[14:12]=3'b000;
    Inst[30]=1'b0;
    #100;
    ALUOp=2'b10;
    Inst[14:12]=3'b000;
    Inst[30]=1'b1;
    #100;
    ALUOp=2'b10;
    Inst[14:12]=3'b111;
    Inst[30]=1'b0;
    #100;
    ALUOp=2'b10;
    Inst[14:12]=3'b110;
    Inst[30]=1'b0;
    #100;
    end

endmodule
