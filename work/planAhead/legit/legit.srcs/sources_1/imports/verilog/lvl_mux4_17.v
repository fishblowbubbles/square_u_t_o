/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module lvl_mux4_17 (
    input [1:0] sel,
    output reg [11:0] out
  );
  
  
  
  always @* begin
    out = 1'h0;
    
    case (sel)
      2'h0: begin
        out = 12'h784;
      end
      2'h1: begin
        out = 12'h2d3;
      end
      2'h2: begin
        out = 12'hb19;
      end
      2'h3: begin
        out = 12'ha46;
      end
    endcase
  end
endmodule