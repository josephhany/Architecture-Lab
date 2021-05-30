module RegFile #(parameter n=8)(
input clk,
input rst, 
input [4:0] r1,
input [4:0] r2,
input [4:0] rw,
input [n-1:0] wd,
input RegWrite,
output [n-1:0] rd1,
output [n-1:0] rd2
);


reg[31:0]load;
wire [n-1:0]Q[31:0];
genvar i;
generate 
	for(i=0;i<32;i=i+1)
	begin:RegisterFile
		n_bit_register #(.n(n))r0(load[i],wd,clk,rst,Q[i]);
	end
	endgenerate 

assign rd1=Q[r1];
assign rd2=Q[r2];
integer j;
always@(RegWrite) begin

 for(j=0;j<32;j=j+1) begin 
 if(j==rw) load[j]=RegWrite;
 else load[j]=0;
 end
end

endmodule