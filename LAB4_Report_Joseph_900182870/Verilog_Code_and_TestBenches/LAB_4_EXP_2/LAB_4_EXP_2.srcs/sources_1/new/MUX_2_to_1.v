`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2020 09:41:17 PM
// Design Name: 
// Module Name: MUX_2_to_1
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


module MUX_2_to_1(
input A,
input B,
input select,
output C
    );

reg out;
always @ (*)
begin
case (select)
1'b0: out = A;
1'b1: out = B;
endcase
end    

assign C=out;

endmodule
