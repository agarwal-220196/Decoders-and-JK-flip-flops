`timescale 1ns / 1ps
module JK( Q,J,K,clk,R); // module definition
output Q; 						 // defining outputs
input J, K, clk, R ; 				//defining inputs
reg Q,Qbar; 						//declaring outputs as reg type
always @ (posedge clk or posedge R) 	//output changes if either clock edge is thereor reset is high
begin
if (R == 1) begin 					// if reset is high then Q+ =0 irrespective of clock
Q <= 1'b0;
Qbar <= 1'b1;
end

else if ( J==0 & K==0) begin // J=0,K=0 => Q+ =Q
Q <= Q;
Qbar <= Qbar;
end

else if ( J==1 & K==0) begin // J=1,K=0 => Q+ =1
Q <= 1'b1;
Qbar <= 1'b0;
end

else if ( J==0 & K==1) begin // J=0,K=1 => Q+ =0
Q <= 1'b0;
Qbar <= 1'b1;
end

else if ( J==1 & K==1) begin // J=1,K=1 => Q+ =Qbar
Q <= Qbar;
Qbar <= Q;
end
end
endmodule //module definition ends
