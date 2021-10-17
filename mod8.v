`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:31:59 10/06/2021 
// Design Name: 
// Module Name:    mod8 
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
module mod8(clk,rst,out
    );

input clk,rst;
output [2:0]out;
reg [2:0]out;
always @(posedge clk)
begin

if(rst==0)
out <= 0;
else if(out<4)
out <= out+1;
else
out <= 0;
end
endmodule
