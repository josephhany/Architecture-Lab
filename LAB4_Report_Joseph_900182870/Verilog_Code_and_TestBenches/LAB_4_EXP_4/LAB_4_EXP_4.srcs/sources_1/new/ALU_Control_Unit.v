`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2020 12:07:52 AM
// Design Name: 
// Module Name: ALU_Control_Unit
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


module ALU_Control_Unit(
input [1:0] ALUOp,
input [31:0] Inst,
output [3:0] ALU_Selection
    );
    reg [3:0] ALU_Sel;    
    always @(ALUOp or Inst)		
        begin
            case ({ALUOp,Inst[14:12],Inst[30]})   
                6'b00xxxx: ALU_Sel= 4'b0010;
                6'b01xxxx: ALU_Sel= 4'b0110;  
                6'b100000: ALU_Sel= 4'b0010;
                6'b100001: ALU_Sel= 4'b0110;
                6'b101110: ALU_Sel= 4'b0000;
                6'b101100: ALU_Sel= 4'b0001;
            endcase
        end
        assign ALU_Selection=ALU_Sel;
endmodule
