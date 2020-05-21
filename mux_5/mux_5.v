`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:51:48 12/18/2019 
// Design Name: 
// Module Name:    mux_5 
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
module mux_5(
	input[4:0]in_0,in_1,
	input s,
	output reg[4:0]out
    );
	always@(in_0 or in_1 or s)
	begin
		if(s==0) out=in_0;
		else out=in_1;
	end

endmodule
