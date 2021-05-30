`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2020 04:15:03 PM
// Design Name: 
// Module Name: UART_reciver_multiple_keys
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

 
module UART_receiver_multiple_Keys(
      input clk, // input clock
      input uart_in, // input receiving data line
      output [7:0]out // output
    );
	
	UART_receiver_switch #(8'h61) IN7 (clk, uart_in, out[7]);	//character 'a'
	UART_receiver_switch #(8'h73) IN6 (clk, uart_in, out[6]);	//character 's'
	UART_receiver_switch #(8'h64) IN5 (clk, uart_in, out[5]);	//character 'd'
	UART_receiver_switch #(8'h66) IN4 (clk, uart_in, out[4]);	//character 'f'
	
	UART_receiver_switch #(8'h7a) IN3 (clk, uart_in, out[3]);	//character 'z'
	UART_receiver_switch #(8'h78) IN2 (clk, uart_in, out[2]);	//character 'x'
	UART_receiver_switch #(8'h63) IN1 (clk, uart_in, out[1]);	//character 'c'
	UART_receiver_switch #(8'h76) IN0 (clk, uart_in, out[0]);	//character 'v'
	
endmodule
