`timescale 1ns / 1ps
`include "case_1.v"
module case_1_tb;
    reg clk,rst;
    wire [2:0]light_M1;
    wire [2:0]light_S;
    wire [2:0]light_MT;
    wire [2:0]light_M2;
    case_1 dut(.clk(clk) , .rst(rst) , .light_M1(light_M1) , .light_S(light_S)  ,.light_M2(light_M2),.light_MT(light_MT)   );

initial begin
    clk=1'b0;
    forever #(1000000000/2) clk=~clk;
end 
//    initial
//    $stop;//to add ps
initial begin
    rst=0;
    #1000000000;
    rst=1;
    #1000000000;
    rst=0;
    #(1000000000*2000);
    $finish;
end

endmodule