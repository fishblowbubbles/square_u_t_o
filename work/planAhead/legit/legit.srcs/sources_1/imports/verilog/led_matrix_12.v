/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module led_matrix_12 (
    input clk,
    input rst,
    input [1535:0] data,
    output reg stream
  );
  
  
  
  reg [16:0] M_transfer_time_d, M_transfer_time_q = 1'h0;
  
  integer i;
  
  always @* begin
    M_transfer_time_d = M_transfer_time_q;
    
    M_transfer_time_d = M_transfer_time_q + 1'h1;
    i = M_transfer_time_q / 7'h40;
    if (M_transfer_time_q < 17'h18000) begin
      if (data[(i)*1+0-:1] == 1'h1) begin
        if (M_transfer_time_q[0+5-:6] > 6'h2e) begin
          stream = 1'h0;
        end else begin
          stream = 1'h1;
        end
      end else begin
        if (data[(i)*1+0-:1] == 1'h0) begin
          if (M_transfer_time_q[0+5-:6] > 5'h12) begin
            stream = 1'h0;
          end else begin
            stream = 1'h1;
          end
        end
      end
    end else begin
      stream = 1'h0;
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_transfer_time_q <= 1'h0;
    end else begin
      M_transfer_time_q <= M_transfer_time_d;
    end
  end
  
endmodule
