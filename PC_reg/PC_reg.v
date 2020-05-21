`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:18 12/18/2019 
// Design Name: 
// Module Name:    PC_reg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PC_reg(
	input[29:0]in,
	input clk,reset,
	output reg[29:0]out
    );
	always@(negedge clk or negedge reset)
		if(reset==1'b0) out<=30'd0;
		else out<=in;
endmodule
