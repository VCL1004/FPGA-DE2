module multiplier (input [15:0]dataa,input [15:0]datab, output[15:0]out);
wire [31:0] result;

multi mui (.dataa(dataa),.datab(datab), .result(result));
assign out = {result[31],result[29:15]}; 
endmodule
