`timescale 1ns / 1ps
module decoder2_4 ( out, in );

output [3:0] out;

input [1:0] in;

//Since it is non sync, we are assinging the output as soon as input changes
// and hence we have taken assign statements. 
assign out[0] = ~(in[1]) & ~(in[0]);
assign out[1] = ~(in[1]) & in[0];
assign out[2] =  in[1]   & ~(in[0]);
assign out[3] =  in[1]   & in[0];

endmodule
