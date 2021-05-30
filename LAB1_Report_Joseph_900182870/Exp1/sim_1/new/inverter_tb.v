`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2020 01:08:53 PM
// Design Name: 
// Module Name: inverter_tb
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


module inverter_tb();
wire b;
reg a;
inverter u1(.A(a),.B(b));

intial begin
a=1'b0;
#100;
a = 1'b1;
#100;
a = 1'b0;
#100;
a = 1'b1;
end

endmodule