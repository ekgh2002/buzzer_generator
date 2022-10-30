`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/27 19:30:43
// Design Name: 
// Module Name: ClockDivider
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


`timescale 1ns / 1ps

module ClockDivider(
    input i_clk,
    input i_reset,
    input [9:0] i_value,
    output o_clk
    );

    reg r_clk = 1'b0;
    reg [31:0] r_counter = 0;
    
    assign o_clk = r_clk;

    always @(posedge i_clk or posedge i_reset) begin
        if (!i_reset) begin
            r_counter <= 0;
            r_clk <= 1'b0;
        end
        else begin
            if (r_counter == (50_000_000 / i_value) - 1) begin
                r_counter <= 0;
                r_clk <= ~r_clk;
            end
            else begin
                r_counter <= r_counter + 1;
            end
        end
    end
endmodule

