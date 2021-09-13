`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////

class transaction_Adder;

randc bit [2:0] adderInputs;


endclass : transaction_Adder


module tb_adder();
transaction_Adder t1;

integer i;

bit a,b,cin;

initial begin

t1 = new();


for(i = 0; i < 8; i++) begin
t1.randomize();
a = t1.adderInputs[0];
b = t1.adderInputs[1];
cin = t1.adderInputs[2];
#10;
$display("value of a : %0d, b : %0d, cin : %od",a,b,cin);
end
end

endmodule
