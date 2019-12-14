`timescale 1ns / 1ps





module JK( Q,J,K,clk,R); //Module initialization 
output Q; //Defining outputs
input J, K, clk, R ; // Defining inputs
wire a,b,q1,q2; // Defining internal connections
wire Qbar;
//gate level modelling

nand #2 N1 (a, clk, J, q2); //providing delay of 2ns for nand gate output
nand #2 N2 (b, clk, K, q1);
nand #2 N3 (q1, a, q2);
nand #2 N4 (q2, b, q1, ~R); //
assign Q=q1; // connecting internal connections to output
assign Qbar=q2;
assign Q=~Qbar; 				// Qbar is complement of Q 
endmodule 		// end of module definition