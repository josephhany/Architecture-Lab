`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2020 09:30:29 PM
// Design Name: 
// Module Name: DFlipFlop
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


module DFlipFlop(input clk, // clock input
                 input rst, // asynchronous reset high level
                 input D, // Data input 
                 output reg Q // output Q
                 );
//reg Q;
 always @ (posedge clk or posedge rst)
 begin
     if (rst) begin
     Q <= 1'b0;
     end 
     else begin
     Q <= D;
     end
 end
//assign Q2=Q;
 
endmodule
