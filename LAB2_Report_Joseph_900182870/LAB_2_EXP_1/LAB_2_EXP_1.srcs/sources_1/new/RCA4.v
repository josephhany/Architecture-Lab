`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2020 09:49:03 PM
// Design Name: 
// Module Name: RCA4
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

module RCA4 #(parameter n = 4) (input [n-1:0] x,input [n-1:0] y,input cin, output [n:0] out,output last_carry);
//module RCA4 #(parameter n = 4,parameter m = 0) (input [n-1:0] x,input [n-1:0] y, output [n-1:0] out);


wire [n-1:0] sum;
wire carry[n:0];
assign carry[0]=cin;
//assign carry[0]=m;

genvar i;
generate
    for(i=0;i<n;i=i+1)
    begin
        Full_Adder fa(.x(x[i]),.y(y[i]),.cin(carry[i]),.sum(sum[i]),.carry_out(carry[i+1]));
    end
endgenerate

assign out={carry[n],sum};

assign last_carry=carry[n];


endmodule