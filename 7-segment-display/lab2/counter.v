module counter (input wire clk,ENA,input [17:0]SW, output[31:0]count);
	reg [31:0] Q,D;
	wire[31:0] num;
	assign num =(SW[0]!=1'b0)?1:0;
	always@(posedge ENA,posedge SW[1])
	begin
		if(SW[1])
		begin
			Q<=0;
		end
		else
			Q<=Q+num;
	end
	/*always@(posedge ENA)
		begin
			if(SW[1])
			D = 0;
			else
			D = Q+num;
		end*/
	assign count = Q;
endmodule
