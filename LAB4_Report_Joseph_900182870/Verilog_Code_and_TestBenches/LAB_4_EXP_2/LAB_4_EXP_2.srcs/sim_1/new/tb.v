`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2020 08:32:52 AM
// Design Name: 
// Module Name: tb
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


module tb();

parameter n=8;
reg clk;
reg rst;
reg [4:0] r1,r2,rw;
reg [n-1:0] wd;
reg RegWrite;
wire [n-1:0] rd1,rd2;

	RegFile #(.n(n))uut(clk,rst,r1,r2,rw,wd,RegWrite,rd1,rd2);
parameter PERIOD=2;
    
    always begin
    clk=1'b0;
    #(PERIOD/2);
    clk=1'b1;
    #(PERIOD/2);
    end 
	 initial begin
    rst=1;
    #10
    rst=0;
    RegWrite=1;
	wd=1;
	rw=0;
	r1=0;
	r2=1;
    #10;
    RegWrite=0;
	wd=0;
    #10;
    wd=1;
	rw=1;
	RegWrite=1;
    end
endmodule 
