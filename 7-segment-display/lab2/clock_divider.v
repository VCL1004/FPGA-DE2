module clock_divider (input wire clock,reset,output wire clk_en);

	reg [31:0] count;
	reg Q;
	always@(posedge clock,posedge reset)
	begin
		if(reset)
		begin
			Q <= 1'b0;
			count = 32'b0;
		end
		else if (count < 25000)
			count <= count +32'b01;
		else
		begin
			count = 32'b00;
			Q <= ~Q;
		end
	end
	assign clk_en = Q;
	endmodule
	/*wire [31:0]storQ;
	reg [31:0] Q,D;
	wire comp;
	wire rset;
	assign storQ = Q;
	assign comp = (storQ%50000 == 0)?1'b1:1'b0;
	always@(*)
		begin
		D = Q+1;
		end
	always@(*)
		begin
		if(reset)
			Q=0;
		else
			Q<=D;
		end
	assign clk_en = comp;*/

