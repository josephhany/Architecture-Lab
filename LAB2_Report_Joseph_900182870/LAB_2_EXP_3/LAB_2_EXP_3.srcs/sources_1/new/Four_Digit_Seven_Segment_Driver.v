`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2020 02:15:23 PM
// Design Name: 
// Module Name: Four_Digit_Seven_Segment_Driver
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


module Four_Digit_Seven_Segment_Driver (
 input clk,
 //input [12:0] Num,
 input uart_in,
 output reg [3:0] Anode,
 output reg [6:0] LED_out,
 output [7:0] outp
 );

 wire [12:0] Num;
 wire [3:0] x;wire [3:0] y; wire cin; wire [4:0] out; wire last_carry;
 wire [7:0] outp;
  
  UART_receiver_multiple_Keys(clk,uart_in,outp);

  assign x=outp[7:4];
  assign y=outp[3:0];
// assign x=-4;
// assign y=7;
 assign cin=0;
 
// assign cin=(x>0 && y<0)?1:(x<0 && y>0)?1:0;
 
// wire [3:0] xored;
// genvar j;
// generate
//     for(j=0;j<3;j=j+1)
//         begin
//             xor g1(xored[j],y[j],cin);
//         end
// endgenerate
 
 RCA4 rca4(.x(x),.y(y),.cin(cin),.out(out),.last_carry(last_carry));
 assign Num={9'b000000000,out};
 
 reg [12:0] New_Num;
 reg Sign;
 integer i;
 always @(*)
 begin
 case(Num[3])
  1'b0: begin
    Sign=1'b0;
    New_Num=Num;
   end
  1'b1: begin
  Sign=1'b1;
  New_Num=-Num;
  end
 endcase
 end
  
 
 wire [3:0] thousands, hunderds, tens, ones;
// BCD bcd(.num(Num),.Thousands(thousands),.Hundreds(hunderds),.Tens(tens),.Ones(ones));
 BCD bcd(New_Num,thousands,hunderds,tens,ones);
 reg [3:0] LED_BCD;
 reg [19:0] refresh_counter = 0; // 20-bit counter
 wire [1:0] LED_activating_counter;
 always @(posedge clk)
 begin
 refresh_counter <= refresh_counter + 1;
 end

 assign LED_activating_counter = refresh_counter[19:18];

 always @(*)
 begin
 case(LED_activating_counter)
 2'b00: begin
 Anode = 4'b0111;
// LED_BCD = thousands;
  case(Sign)
  1'b0: LED_BCD = 4'b0000;
  1'b1: LED_BCD = 4'b1010;
  default: LED_BCD = 4'b0000;
  endcase

 
 end
 2'b01: begin
 Anode = 4'b1011;
 LED_BCD = hunderds;
  
 end
 2'b10: begin
 Anode = 4'b1101;
 LED_BCD = tens;
  
 end
 2'b11: begin
 Anode = 4'b1110;
 LED_BCD = ones;
  
 end
 endcase
 end
 always @(*)
 begin
 case(LED_BCD)
 4'b0000: LED_out = 7'b0000001; // "0"
 4'b0001: LED_out = 7'b1001111; // "1"
 4'b0010: LED_out = 7'b0010010; // "2"
 4'b0011: LED_out = 7'b0000110; // "3"
 4'b0100: LED_out = 7'b1001100; // "4"
 4'b0101: LED_out = 7'b0100100; // "5"
 4'b0110: LED_out = 7'b0100000; // "6"
 4'b0111: LED_out = 7'b0001111; // "7"
 4'b1000: LED_out = 7'b0000000; // "8"
 4'b1001: LED_out = 7'b0000100; // "9"
 4'b1010: LED_out = 7'b1111110; // "- sign"
 default: LED_out = 7'b0000001; // "0"
 endcase
 end
endmodule
