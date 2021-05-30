module ControlUnit(
input [6:0]Inst,
output reg Branch,
output reg MemRead,
output reg MemtoReg,
output reg [1:0]ALUOp,
output reg MemWrite,
output reg ALUSrc,
output reg RegWrite
);
always @(Inst) begin
case (Inst[6:2])
	5'b01100: begin 
		Branch<=0;
		MemRead<=0;
		MemtoReg<=0;
		ALUOp<=2'b10;
		MemWrite<=0;
		ALUSrc<=0;
		RegWrite<=1;
		end
	5'b00000: begin 
		Branch<=0;
		MemRead<=1;
		MemtoReg<=1;
		ALUOp<=2'b00;
		MemWrite<=0;
		ALUSrc<=1;
		RegWrite<=1;
		end 
	5'b01000: begin 
		Branch<=0;
		MemRead<=0;
		ALUOp<=2'b00;
		MemWrite<=1;
		ALUSrc<=1;
		RegWrite<=0;
		end
	5'b11000: begin 
		Branch<=1;
		MemRead<=0;
		ALUOp<=2'b01;
		MemWrite<=0;
		ALUSrc<=0;
		RegWrite<=0;
		end 
	default: begin 
		Branch<=0;
		MemRead<=0;
		MemtoReg<=0;
		ALUOp<=0;
		MemWrite<=0;
		ALUSrc<=0;
		RegWrite<=0;
		end
	endcase
end
endmodule