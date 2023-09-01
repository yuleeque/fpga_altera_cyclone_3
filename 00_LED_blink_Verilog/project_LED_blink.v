`timescale 1s/1ms
/* module */
module project_LED_blink (
   input 		 i_CLK,
   output [3:0] o_LED 
);

   /* reg */
	reg [31:0] counter;
	reg [ 3:0] state = 4'b1001;
    
   /* assign */
   assign o_LED = state;
    
   /* always */
   always @(posedge i_CLK) begin
		state = 4'b1100;
		#1;
		state = 4'b0011;
		#1;
   end
	 
//	initial forever begin
//		@(posedge i_CLK) begin
//			state = ~state;
//			#10;
//		end
//	end
		

endmodule