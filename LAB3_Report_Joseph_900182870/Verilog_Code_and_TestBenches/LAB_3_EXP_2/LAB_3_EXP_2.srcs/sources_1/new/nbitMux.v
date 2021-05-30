`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2020 08:47:47 AM
// Design Name: 
// Module Name: nbitMux
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


module nbitMux #(parameter N=4)(input [N-1:0] a,b,input s,output [N-1:0] c);
genvar i;
generate for(i=0;i<N;i=i+1)
TwoByOneMux m(a[i],b[i],s,c[i]);
endgenerate

endmodule
