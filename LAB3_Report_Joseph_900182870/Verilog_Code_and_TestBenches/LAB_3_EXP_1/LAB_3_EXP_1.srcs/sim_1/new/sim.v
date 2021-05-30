`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2020 10:38:22 PM
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
    parameter n=8;
    reg load;
    reg [n-1:0] D;
    reg clk;
    reg reset;
    wire[n-1:0] Q;
    
    
    n_bit_register uut(.load(load),.D(D),.clk(clk),.reset(reset),.Q(Q));
    
    
    parameter PERIOD=2;
    
    always begin
    clk=1'b0;
    #(PERIOD/2);
    clk=1'b1;
    #(PERIOD/2);
    end 

    initial begin
    reset=1;
    #10
    reset=0;
    D=8'b00000000;
    load=1;
    #10;
    D=8'b00000000;
    load=1;
    #10;
    D=8'b11111111;
    load=1;
    #10;
    D=8'b11111111;
    load=0;
    end

    
endmodule
