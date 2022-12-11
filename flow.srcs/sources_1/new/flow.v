`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/10 19:48:25
// Design Name: 
// Module Name: run_led
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

module source_WallterfallLight(
    input clk,
    output [7:0]led
);
    
    reg [7:0] led;
    integer counter;
    reg [1:0] state;  // ?????????????
    integer flag = 0;
    // ??????????
    always @(posedge clk)
        begin
            if (counter == 49999999) 
                begin
                counter <= 0;  // ????????100M????
                end
            else
                begin
                counter <= counter + 1;
                end
        end
    
    // ????????
    always @(posedge clk)
        begin
            if (counter == 0)
                begin
                state <= 2'b11; // 2'b11????????????
                end
            else
                begin
                state <= 2'b01;  // 2'b01???????????
                end
        end
    
    // led????   
    always @(posedge clk)
        begin
            if (state == 2'b11)  // ??state?????????????led???§Ò£
                begin
                if (flag == 0)
                begin
                    case(led)
                        8'b00000000:led=8'b10000001;
                        8'b10000001:led=8'b01000010;
                        8'b01000010:led=8'b00100100;
                        8'b00100100:led=8'b00011000;
                        8'b00011000:led=8'b00000000;
                    endcase
                    if (led==8'b0)
                        flag<=1;
                 end
                 else
                 begin
                    case(led)
                        8'b00000000:led=8'b00011000;
                        8'b00011000:led=8'b00100100;
                        8'b00100100:led=8'b01000010;
                        8'b01000010:led=8'b10000001;
                        8'b10000001:led=8'b00000000;
                    endcase
                    if (led==8'b0)
                        flag<=0;
                 end
                end
         end
endmodule
