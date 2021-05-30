`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2020 08:33:09 AM
// Design Name: 
// Module Name: ImmGen
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


module ImmGen (output [31:0] gen_out2, input [31:0] inst);
 
reg [31:0] gen_out;
always@(*) begin
if(inst[6]) begin
    gen_out[11]=inst[31];
    gen_out[10]=inst[7];
    gen_out[9:4]=inst[30:25];
    gen_out[3:0]=inst[11:8];
    gen_out[31:12]={20{gen_out[11]}};
    end
else if(inst[5]) begin
    gen_out[11:5]=inst[31:25];
    gen_out[4:0]=inst[11:7];
    gen_out[31:12]={20{gen_out[11]}};
    end
else begin
    gen_out[11:0]=inst[31:20];
    gen_out[31:12]={20{gen_out[11]}};
    end
end
assign gen_out2=gen_out;
endmodule