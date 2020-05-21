`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:59:36 12/18/2019 
// Design Name: 
// Module Name:    Ext 
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
module Ext(
	input Extop,   //0À©Õ¹£¬1·ûºÅÀ©Õ¹
	input [15:0]in,
	output [31:0]out
    );
	assign out = Extop?{16{in[15]},in}:{16'b0,in};

endmodule
