module DataMem
(input clk, input MemRead, input MemWrite,
input [5:0] addr, input [31:0] data_in, output reg [31:0] data_out);
reg [31:0] mem [0:63];

always @(addr, MemRead, MemWrite) begin
if(MemRead)
if(~MemWrite)
data_out=mem[addr];
end 

always @(posedge clk) begin 
if(MemWrite)begin
if(~MemRead)
mem[addr]=data_in;
end 
end
endmodule