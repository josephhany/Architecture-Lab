`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2020 12:27:51 AM
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


module sim(

    );
    reg [5:0] addr; 
    wire [31:0] data_out;
    InstMem inst(addr,data_out);
    initial begin
    addr=6'd0;
    #100;
    addr=6'd1;
    #100;
    addr=6'd2;
    #100;
    addr=6'd20;
    #100;
    addr=6'd30;
    #100;
    addr=6'd40;
    end
endmodule
