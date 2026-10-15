module counter (
	input wire clk,
	input wire rst,
	input wire enable,
	output reg [3:0] count 
);

 always @(posedge clk or negedge rst) begin
	if(!rst) begin
	  count <= 4'b0000;
	end else if(enable) begin
	  count <= count + 1'b1;
	end
 end
endmodule
