`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2020 11:08:45 PM
// Design Name: 
// Module Name: shift_left_1
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


module shift_left_1(input [31:0] In_Shift,output [31:0]ShiftOut);
    reg [31:0]ShiftOut2;
    integer i;
    always @(*)
    begin
    for(i=1;i<=31;i=i+1)
    begin
     ShiftOut2[i]=In_Shift[i-1];
    end
    ShiftOut2[0]=1'b0;
    end

    assign ShiftOut=ShiftOut2;
    
endmodule
