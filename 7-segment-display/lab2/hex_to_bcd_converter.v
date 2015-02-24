module hex_to_bcd_converter(input wire clk, reset, input wire [31:0] hex_number,
										output reg [3:0] bcd_digit_0, bcd_digit_1, bcd_digit_2,
										bcd_digit_3, bcd_digit_4, bcd_digit_5, bcd_digit_6, bcd_digit_7);

reg [31:0] st1,st2, st3, st4, st5, st6, st0;
/*
always@(hex_number or reset)
	begin
		if (reset)
		begin
			bcd_digit_0 =0;
			bcd_digit_1 =0;
			bcd_digit_2 = 0;
			bcd_digit_3 = 0;
			bcd_digit_4 =0;
			bcd_digit_5 = 0;
			bcd_digit_6 = 0;
			bcd_digit_7 = 0;
		end
		else
		begin
			bcd_digit_0=bcd_digit_0+1;
			if(bcd_digit_0>4'b1001)
			begin
				bcd_digit_0 = 0;
				bcd_digit_1=bcd_digit_1+1;
			end
			if(bcd_digit_1>4'b1001)
			begin
				bcd_digit_1 = 0;
				bcd_digit_2=bcd_digit_2+1;
			end
			if(bcd_digit_0>4'b1001)
			begin
				bcd_digit_2 = 0;
				bcd_digit_3=bcd_digit_3+1;
			end
			if(bcd_digit_3>4'b1001)
			begin
				bcd_digit_3 = 0;
				bcd_digit_4=bcd_digit_4+1;
			end
			if(bcd_digit_0>4'b1001)
			begin
				bcd_digit_4 = 0;
				bcd_digit_5=bcd_digit_5+1;
			end
			if(bcd_digit_5>4'b1001)
			begin
				bcd_digit_5 = 0;
				bcd_digit_6=bcd_digit_6+1;
			end
			if(bcd_digit_6>4'b1001)
			begin
				bcd_digit_6 = 0;
				bcd_digit_7=bcd_digit_7+1;
			end
			if(bcd_digit_7>4'b1001)
			begin
				bcd_digit_7 = 0;
				//bcd_digit_1++;
			end
		end
	end
	endmodule*/

always@(posedge clk,posedge reset)
	begin
		if (reset)
		begin
			bcd_digit_0 =0;
			bcd_digit_1 =0;
			bcd_digit_2 = 0;
			bcd_digit_3 = 0;
			bcd_digit_4 =0;
			bcd_digit_5 = 0;
			bcd_digit_6 = 0;
			bcd_digit_7 = 0;
		end
		else
		begin
			bcd_digit_0 = hex_number%10;
			st0 = hex_number/10;
			bcd_digit_1 = st0%10;
			st1 = st0/10;
			bcd_digit_2 = st1%10;
			st2 = st1 /10;
			bcd_digit_3= st2%10;
			st3 = st2 /10;
			bcd_digit_4= st3%10;
			st4 = st3 /10;
			bcd_digit_5= st4%10;
			st5 = st4/10;
			bcd_digit_6= st5%10;
			st6 = st5/10;
			bcd_digit_7= st6%10;
		end
	end
endmodule
