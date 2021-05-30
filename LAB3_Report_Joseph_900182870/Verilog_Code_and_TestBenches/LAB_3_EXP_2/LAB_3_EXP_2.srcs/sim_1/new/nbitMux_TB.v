`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2020 08:52:14 AM
// Design Name: 
// Module Name: nbitMux_TB
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


module nbitMux_TB(
 
    );
    reg [3:0] a,b;
    reg s;
    wire [3:0]c;
    nbitMux uut(a,b,s,c);
    initial begin
    a=4'b0000;
    b=4'b1111;
    s=1'b0;
    #100 s=1'b1;
    end
 
endmodule