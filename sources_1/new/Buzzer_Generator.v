`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/27 19:31:34
// Design Name: 
// Module Name: Buzzer_Generator
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


module Buzzer_Generator(
   input i_clk,
    input i_reset,
    input [9:0] i_scale,
    output o_soundFreq
    );

    ClockDivider U0(
        .i_clk(i_clk),
        .i_reset(i_reset),
        .i_value(i_scale),
        .o_clk(o_soundFreq)
    );
endmodule