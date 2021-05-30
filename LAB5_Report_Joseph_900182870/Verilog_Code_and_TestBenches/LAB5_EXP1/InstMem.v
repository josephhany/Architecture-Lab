`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2020 12:10:11 AM
// Design Name: 
// Module Name: InstMem
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


module InstMem(
input [5:0] addr, output [31:0] data_out
    );
        
    reg [31:0] mem [0:63];
    initial begin
        mem[0]=32'd17;
        mem[1]=32'd9;
        mem[2]=32'd25;
        mem[20]=32'd5000;
        mem[30]=32'd6000;
        mem[40]=32'd7000;
    end
    assign data_out = mem[addr]; 
endmodule
