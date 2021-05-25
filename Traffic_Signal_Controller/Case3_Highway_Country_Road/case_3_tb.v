`timescale 1s / 1ms

module case_3_tb;
wire [2:0] MAIN_SIG, CNTRY_SIG;
reg CAR_ON_CNTRY_RD;
reg CLOCK, CLEAR;

case_3 SC(MAIN_SIG, CNTRY_SIG, CAR_ON_CNTRY_RD, CLOCK, CLEAR);

initial
 $monitor($time, " Main Sig = %b Country Sig = %b Car_on_cntry = %b",
 MAIN_SIG, CNTRY_SIG, CAR_ON_CNTRY_RD);

initial
begin
 CLOCK = `FALSE;
 forever #5 CLOCK = ~CLOCK;
end

initial 
begin
 CLEAR = `TRUE;
 repeat (5) @(negedge CLOCK);
 CLEAR = `FALSE;
end

initial
begin
 CAR_ON_CNTRY_RD = `FALSE;
 repeat(20)@(negedge CLOCK); CAR_ON_CNTRY_RD = `TRUE;
 repeat(10)@(negedge CLOCK); CAR_ON_CNTRY_RD = `FALSE;
 repeat(20)@(negedge CLOCK); CAR_ON_CNTRY_RD = `TRUE;
 repeat(10)@(negedge CLOCK); CAR_ON_CNTRY_RD = `FALSE;
 repeat(20)@(negedge CLOCK); CAR_ON_CNTRY_RD = `TRUE;
 repeat(10)@(negedge CLOCK); CAR_ON_CNTRY_RD = `FALSE;
 repeat(10)@(negedge CLOCK); $stop;
end
endmodule

