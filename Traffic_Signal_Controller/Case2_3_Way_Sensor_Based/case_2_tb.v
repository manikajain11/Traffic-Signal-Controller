`timescale 1ms / 1ns

module case_2_tb();
reg SENSOR,clk;
wire[2:0] main_road1;
wire[2:0] main_road1T;
wire[2:0] main_road2;
wire[2:0] side_road;
wire[7:0] count;

case_2 DUT(main_road1,main_road1T,main_road2,side_road,SENSOR,clk,count);

initial
    begin                            //Change clock every 500ms
       clk=1; forever #500 clk=~clk; //so a cycle is 1s
    end
initial 
    begin                                         //Change SENSOR every
        SENSOR=0; forever #40000 SENSOR=~SENSOR;   //80 seconds
    end
endmodule