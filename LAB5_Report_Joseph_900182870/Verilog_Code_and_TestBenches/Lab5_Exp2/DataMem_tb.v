`timescale 1ns / 1ps
module DataMem_tb ();
reg clk, MemRead, MemWrite;
reg [5:0] addr; 
reg [31:0] data_in; 
wire [31:0] data_out;

DataMem uut(clk,MemRead,MemWrite,addr,data_in,data_out);
parameter PERIOD=2;
    
    always begin
    clk=1'b0;
    #(PERIOD/2);
    clk=1'b1;
    #(PERIOD/2);
    end 
	
	initial begin
	MemRead=0;
	MemWrite=0;
	#5
    data_in=8;
    addr=1;
	MemWrite=1;
	#10
	MemWrite=0;
	MemRead=1;
	data_in=2;
	#10
	
	addr=0;
	#5
	MemRead=0;
	MemWrite=1;
	#5
	MemRead=1;
	
    end
endmodule 
