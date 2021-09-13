`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module adder(
i_a, 
i_b, 
i_cin,
o_sum, 
o_cout
    );

input wire i_a, i_b, i_cin;
output wire o_sum, o_cout;

assign o_sum   = i_a ^ i_b ^ i_cin;
assign o_cout = ((i_a ^ i_b) & i_cin) | (i_a & i_b);

   
endmodule
