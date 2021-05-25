`timescale 1ms / 1ns
module case_2(ML1,ML1T, ML2, SR,SENSOR,clk,second);
parameter S0=3'b000,//G,R,G,R
          S1=3'b001,//G,R,Y,R
          S2=3'b010,//G,G,R,R
          S3=3'b011,//Y,Y,R,R       
          S4=3'b100,//R,R,R,G
          S5=3'b101,//R,R,R,Y
          S6=3'b110;//G,Y,R,R
input SENSOR, //side road  sensor
    clk;
output reg[2:0] ML1,
                ML1T,
                ML2,
                SR;
reg[2:0] state,next_state; //to change the lights
output reg[7:0] second=-1;
initial state<=2'b000; 
initial ML1<=3'b001; 
initial ML1T<=3'b100;
initial ML2<=3'b001;
initial SR<=3'b100; 
always@(posedge clk)begin 
    state<=next_state; //to change state to next state
end
always @(*) begin //switch between states
    case(state) 
        S0:
            begin
               ML1<=3'b001; 
               ML1T<=3'b100;
               ML2<=3'b001;
               SR<=3'b100;
               if((SENSOR==1))begin 
                       next_state<=S3;end                

             else begin
                   next_state<=S1;end 
             end
         S1:
            begin
                ML1<=3'b001;
                ML1T<=3'b100;
                ML2<=3'b010;
                SR<=3'b100;
                if(second==3) begin       
                    next_state<=S2;end 
            end
          S2:
            begin
                ML1<=3'b001;
                ML1T<=3'b001;
                ML2<=3'b100;
                SR<=3'b100;
                #4000;
                if(SENSOR==1) begin       
                    next_state<=S3;end 
                else begin
                    #500;
                    next_state<=S6;end 
              end
        S3:
            begin
                ML1<=3'b010;
                ML1T<=3'b010;
                ML2<=3'b100;
                SR<=3'b100;
                if(second==2)begin                       
                     next_state<=S4;
                     end    
            end
        S4:
            begin
                ML1<=3'b100;
                ML1T<=3'b100;
                ML2<=3'b100;
                SR<=3'b001;
                if(second==6)begin                                             
                    next_state<=S5;end                                  
            end
        S5:
            begin
                ML1<=3'b100;
                ML1T<=3'b100;
                ML2<=3'b100;
                SR<=3'b010;
                if(second==2) begin       
                    next_state<=S0;end 
            end
         S6:
            begin
                ML1<=3'b001;
                ML1T<=3'b010;
                ML2<=3'b100;
                SR<=3'b100;
                if (second==2)begin 
                    next_state<=S0;end 
            end
        default state<=S0; 
        endcase
 end
 
 always@(posedge clk)begin
    if(state!=next_state)begin 
        state<=next_state;
        second<=0;end       
     else begin
        second<=second+1;end
 end
 endmodule