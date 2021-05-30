`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2020 08:39:03 AM
// Design Name: 
// Module Name: tb
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


`timescale 1ns / 1ps
module tb();
reg [6:0] Inst;
wire Branch;
wire MemRead;
wire MemtoReg;
wire [1:0]ALUOp;
wire MemWrite;
wire ALUSrc;
wire RegWrite;
ControlUnit uut(Inst,Branch,MemRead,MemtoReg,ALUOp,MemWrite,ALUSrc,RegWrite);
initial begin 
	Inst=7'b0110000;
	#100
	Inst=7'b0000000;
	#100
	Inst=7'b0100000;
	#100
	Inst=7'b1100000;
	end 
endmodule