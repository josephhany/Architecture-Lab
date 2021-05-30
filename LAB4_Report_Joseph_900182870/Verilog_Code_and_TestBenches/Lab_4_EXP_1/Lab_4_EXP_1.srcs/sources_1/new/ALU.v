`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 10:19:57 PM
// Design Name: 
// Module Name: ALU
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



module ALU #(parameter n = 4)(
input[n-1:0] A,
input[n-1:0] B,
input[3:0]Sel,
output [n-1:0] ALUOutput,
output ZeroFlag
    );
    
    
    wire[n-1:0] Bout;
    nbitMux #(n) nmux(.a(B),.b(~B),.s(Sel[2]),.c(Bout));
    wire cin=Sel[2];
    wire[n-1:0] out;
    wire lasy_carry;
    RCA4 #(n) rca4(.x(A),.y(Bout),.cin(cin),.out(out),.last_carry(last_carry));
    //assign ALUOutput ={lasy_carry,sum};
    reg [n-1:0] Output;
    always @ (*)
    begin
    case (Sel)
    4'b0010: Output = out;
    4'b0110: Output = out;
    4'b0000: Output = A&B;
    4'b0001: Output = A|B;
    default: Output =0;
    endcase
    end    
    assign ALUOutput=Output;
    assign ZeroFlag=(ALUOutput==0)?1:0;
    
endmodule
