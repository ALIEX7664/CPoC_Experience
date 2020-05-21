`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:04:24 12/18/2019 
// Design Name: 
// Module Name:    reg_32x32 
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
module reg_32x32(clk,WE,RA,RB,RW,busA,busB,busW
    );
	input clk,WE;
	input [4:0]RA,RB,RW;
	input [31:0]busW;
	output [31:0]busA,busB;
	reg[31:0] file_array[31:1];
	assign busA=(RA==0)?32'd0:file_array[RA];
	assign busB=(RB==0)?32'd0:file_array[RB];

	always@(negedge clk)
		if(WE&&(RW!=0)) file_array[RW]<=busW;
	integer i;
	initial begin
				for(i=1;i<=31;i=i+1) file_arry[i]=i;
				end
endmodule
