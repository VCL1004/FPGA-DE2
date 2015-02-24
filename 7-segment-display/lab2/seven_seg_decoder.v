module seven_seg_decoder (input [3:0] x, output [6:0] hex_LEDs);
	assign hex_LEDs[0] = (x == 4'b0001) ? 1'b1 : 
								(x == 4'b0100) ? 1'b1 :
								1'b0;
	assign hex_LEDs[1] = (x == 4'b0101) ? 1'b1 : 
								(x == 4'b0110) ? 1'b1 :
								1'b0;
	assign hex_LEDs[2] = (x == 4'b0010) ? 1'b1 : 
								1'b0;
	assign hex_LEDs[3] = (x == 4'b0001) ? 1'b1 : 
								(x == 4'b0100) ? 1'b1 :
								(x == 4'b0111) ? 1'b1 :
								1'b0;
	assign hex_LEDs[4] = (x == 4'b0001) ? 1'b1 : 
								(x == 4'b0011) ? 1'b1 :
								(x == 4'b0100) ? 1'b1 :
								(x == 4'b0101) ? 1'b1 :
								(x == 4'b0111) ? 1'b1 :
								(x == 4'b1001) ? 1'b1 :
								1'b0;
	assign hex_LEDs[5] = (x == 4'b0001) ? 1'b1 : 
								(x == 4'b0010) ? 1'b1 :
								(x == 4'b0011) ? 1'b1 :
								1'b0;
	assign hex_LEDs[6] = (x == 4'b0000) ? 1'b1 : 
								(x == 4'b0001) ? 1'b1 :
								(x == 4'b0111) ? 1'b1 :
								1'b0;
endmodule 