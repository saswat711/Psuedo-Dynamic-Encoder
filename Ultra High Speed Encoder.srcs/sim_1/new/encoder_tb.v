`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2022 17:14:57
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb(    );
 reg clk;
 reg[14:0] tc;
 wire[3:0] out;
 integer i;
 always #10 clk=~clk ;
 encoder ec0 (.clk(clk),  .tc(tc),  .bits(out));
 
 initial begin
    {tc,clk}<=0;
          #10 $display(tc);
    #10 $display(out);
    for (i=0;i<15;i=i+1)
     begin
      #10 tc[i]<=1;
      #10 $display(tc);
      #10 $display(out);
     end
    end
    
    
 
 
 
 
endmodule
