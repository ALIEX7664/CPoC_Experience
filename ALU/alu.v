`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:46:54 12/17/2019 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0]a,
    input [31:0]b,
    output overflow,
    output zero,
    output [31:0]r,
    input [3:0] aluc  //controller

    );
    parameter Add    =    3'b000;    //r=a+b signed
    parameter Addu    =    3'b010;    //r=a+b unsigned
    parameter Sub    =     3'b001;    //r=a-b signed
    parameter Subu    =    3'b011;    //r=a-b unsigned
    parameter And    =    3'b100;    //r=a&b
    parameter Or    =    3'b101;    //r=a|b
    parameter Xor    =    3'b110;    //r=a^b
	 parameter Lui1    =    3'b111;    //r={b[15:0],16'b0}
	 wire signed [31:0] sa=a,sb=b;
	 reg [32:0]result;
	 
always@(*)begin
        case(aluc)
            Addu: begin
                result=a+b;
            end
            Subu: begin
                result=a-b;
            end
            Add: begin
                result=sa+sb;
            end
            Sub: begin
                result=sa-sb;
            end
           
            And: begin
                result=a&b;
            end
            Or: begin
                result=a|b;
            end
            Xor: begin
                result=a^b;
            end
          
            Lui1: begin
				result = {b[15:0], 16'b0};
				end
				
            default:
                result=a+b;
        endcase
    end

    assign r=result[31:0];
    assign zero=(r==32'b0)?1:0;
    assign overflow=result[32];
endmodule
