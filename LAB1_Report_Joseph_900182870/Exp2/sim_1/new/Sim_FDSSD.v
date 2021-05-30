`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2020 03:31:29 PM
// Design Name: 
// Module Name: Sim_FDSSD
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


module Sim_FDSSD();
reg clk;
wire [3:0] Anode;
wire [6:0] LED_out;
Four_Digit_Seven_Segment_Driver FDSSD(.clk(clk),.Anode(Anode),.LED_out(LED_out));

parameter PERIOD=2;

always begin
clk=1'b0;
#(PERIOD/2);
clk=1'b1;
#(PERIOD/2);
end 

initial begin
end

endmodule