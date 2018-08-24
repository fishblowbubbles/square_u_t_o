/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     WIDTH = 12
*/
module slider_14 (
    input clk,
    input rst,
    input wr,
    input [11:0] data,
    output reg [11:0] out
  );
  
  localparam WIDTH = 4'hc;
  
  
  reg [11:0] M_reg_d, M_reg_q = 1'h0;
  
  always @* begin
    M_reg_d = M_reg_q;
    
    if (wr == 1'h1) begin
      M_reg_d = data;
    end else begin
      M_reg_d = M_reg_q;
    end
    out = M_reg_q;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_reg_q <= 1'h0;
    end else begin
      M_reg_q <= M_reg_d;
    end
  end
  
endmodule