`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2020 3:06:00
// Design Name: 
// Module Name: test_tb
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


module test_tb();

reg  [6:0] sw;
wire [6:0] led;

test DUT (
    .sw  ( sw ),
    .led ( led )
);

initial begin
    sw = 6'd0;
    repeat (64) begin
        #10;
        sw = sw + 1;
    end;
end;
endmodule
