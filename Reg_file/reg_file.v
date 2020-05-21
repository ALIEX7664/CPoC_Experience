`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:09:28 12/17/2019 
// Design Name: 
// Module Name:    reg_file 
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
module reg_file(
    input [31:0] busW,
    output [31:0] busA,
    output [31:0] busB,
    input [4:0]ra,rb,rw,
    input ew,
    input CLK
    );
reg [31:0] file_array[1:31];//MIPS的0号寄存器位为特殊寄存器 $0=0,32个31位的寄存器

assign busA=file_array[ra];
assign busb=file_array[rb];

always@(posedge CLK)
if(ew) file_array[rw]<=busW;

endmodule
