`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 11:29:08 PM
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
    parameter n=4;
    reg [n-1:0] A;
    reg [n-1:0] B;
    reg [3:0] Sel;
    wire [n-1:0] ALUOutput;
    wire ZeroFlag;
    
    ALU #(n) uut(A,B,Sel,ALUOutput,ZeroFlag);
    
    initial begin
    A=4'b0010;
    B=4'b0001;      //ADD
    Sel=4'b0010;
    #100;
    A=4'b0010;
    B=4'b0001;      //SUB
    Sel=4'b0110;
    #100;
    A=4'b0010;
    B=4'b0001;      //AND
    Sel=4'b0000;
    #100;
    A=4'b0010;
    B=4'b0001;      //OR
    Sel=4'b0001;
    #100;
    A=4'b0010;
    B=4'b0001;      //OR
    Sel=4'b1111;
    #100;
    end


endmodule
