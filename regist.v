`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2022 13:22:39
// Design Name: 
// Module Name: regist
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


module regist #(width = 4)(
    input [width - 1:0] in,
    input [2:0] set_work,
    input wire clk,
    output reg [width - 1:0] out_reg 
    );
    
    
    initial out_reg = 0;
    always@(posedge clk)
    case (set_work)
    0: out_reg <= in;
    1: out_reg <= {in, out_reg[width - 1 : 1]};
    2: out_reg <= {out_reg[width - 2:0], 1'b0};
    3: out_reg <= {1'b0, out_reg[width - 1:1]};
    4: out_reg <= {out_reg[width-1], out_reg[width - 1:1]};
    5: out_reg <= {out_reg[width - 2:0], 1'b0};
    6: out_reg <= {out_reg[width - 2:0], out_reg[width-1]};
    7: out_reg <= {out_reg[0], out_reg[width - 1:1]};
    
    endcase
endmodule
