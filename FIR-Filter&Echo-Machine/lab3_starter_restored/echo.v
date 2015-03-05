module echo (
				input clk,
				input reset,
				input [15:0] input_signal,
				output reg [15:0] output_signal);
wire [15:0]b;
wire [15:0]c;


//assign output_signal = change_signal + c;
shiftregister SR (.clock(clk), .shiftin(output_signal), .shiftout(b));
div divider (.denom(16'b0010), .numer(b), .quotient(c));
always @(posedge clk or posedge reset)
begin
	if(reset)
		output_signal <= 0;
	else
		output_signal <= input_signal + c;
    

end
endmodule
