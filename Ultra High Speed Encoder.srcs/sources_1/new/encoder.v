`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2022 16:22:19
// Design Name: 
// Module Name: encoder
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


module encoder(
    input wire clk,
    input[14:0] tc,
    output reg[3:0] bits
    );
   always @(posedge clk)
   begin
     bits[0]<= tc[0]&~tc[1] | tc[2]&~tc[3] | tc[4]&~tc[5] | tc[6]&~tc[7] | tc[8]&~tc[9] | tc[10]&~tc[11] | tc[12]&~tc[13] | tc[14];
     bits[1]<= tc[1]&~tc[3] |  tc[5]&~tc[7] | tc[9]&~tc[11] | tc[13];
     bits[2]<= tc[3]&~tc[7] | tc[11];
     bits[3]<=tc[7];
   end
    
endmodule
