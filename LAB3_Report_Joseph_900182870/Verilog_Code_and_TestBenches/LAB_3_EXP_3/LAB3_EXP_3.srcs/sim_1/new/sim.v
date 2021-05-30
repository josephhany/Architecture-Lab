`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2020 11:20:20 PM
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


module sim();

reg [31:0] In_Shift;
wire [31:0] ShiftOut;

shift_left_1 sl1(In_Shift,ShiftOut);

always begin
In_Shift=32'b00000000000000000000000000000001;
#10;
In_Shift=32'b00000000000000000000000000000111;
#10;
end

endmodule
