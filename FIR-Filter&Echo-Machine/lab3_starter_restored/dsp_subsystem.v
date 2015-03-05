module dsp_subsystem (input sample_clock,  input reset, input [1:0] selector, input [15:0] input_sample, output[15:0] output_sample);

wire [15:0] fir;
wire [15:0]	echo;

echo ec (.clk(sample_clock), .reset(reset),.input_signal(input_sample), .output_signal(echo));
assign output_sample = (selector == 2'b00)? fir :
							(selector == 2'b01)? echo:
							input_sample;
							
FIR #(24) test (.clk(sample_clock),.reset(reset),.input_signal(input_sample),.output_signal(fir));
endmodule
