`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2020 08:46:14 AM
// Design Name: 
// Module Name: TwoByOneMux
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


module TwoByOneMux(input a, b, s, output reg c);
always@(*) begin 
if(s) c=b;
else c=a;
end 
endmodule