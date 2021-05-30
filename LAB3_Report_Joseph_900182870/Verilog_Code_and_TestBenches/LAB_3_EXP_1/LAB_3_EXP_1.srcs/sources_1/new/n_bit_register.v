`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2020 09:52:31 PM
// Design Name: 
// Module Name: n_bit_register
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


module n_bit_register #(parameter n = 8)(
input load,
input [n-1:0] D,
input clk,
input reset,
output [n-1:0] Q
    );
//   reg [n-1:0] Q;
   wire  [n-1:0] C;

   genvar i;
   generate
       for(i=0;i<n;i=i+1)
       begin:RegUnit
           MUX_2_to_1 mux(.A(Q[i]),.B(D[i]),.select(load),.C(C[i]));
           DFlipFlop flipflop(.clk(clk),.rst(reset),.D(C[i]),.Q(Q[i]));            
       end
   endgenerate

//    assign Q2=Q;
    
endmodule
