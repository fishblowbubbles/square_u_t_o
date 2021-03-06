/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_18 (
    input [11:0] a,
    input [11:0] b,
    input [5:0] alufn,
    output reg [11:0] out,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  wire [192-1:0] M_adder_s;
  wire [1-1:0] M_adder_z;
  wire [1-1:0] M_adder_v;
  wire [1-1:0] M_adder_n;
  reg [12-1:0] M_adder_a;
  reg [12-1:0] M_adder_b;
  reg [2-1:0] M_adder_alufn;
  adder_24 adder (
    .a(M_adder_a),
    .b(M_adder_b),
    .alufn(M_adder_alufn),
    .s(M_adder_s),
    .z(M_adder_z),
    .v(M_adder_v),
    .n(M_adder_n)
  );
  
  wire [12-1:0] M_boolean_boole;
  reg [12-1:0] M_boolean_a;
  reg [12-1:0] M_boolean_b;
  reg [4-1:0] M_boolean_alufn;
  boolean_25 boolean (
    .a(M_boolean_a),
    .b(M_boolean_b),
    .alufn(M_boolean_alufn),
    .boole(M_boolean_boole)
  );
  
  wire [12-1:0] M_shifter_shift;
  reg [12-1:0] M_shifter_a;
  reg [12-1:0] M_shifter_b;
  reg [2-1:0] M_shifter_alufn;
  shifter_26 shifter (
    .a(M_shifter_a),
    .b(M_shifter_b),
    .alufn(M_shifter_alufn),
    .shift(M_shifter_shift)
  );
  
  wire [12-1:0] M_compare_cmp;
  reg [12-1:0] M_compare_a;
  reg [12-1:0] M_compare_b;
  reg [2-1:0] M_compare_alufn;
  compare_27 compare (
    .a(M_compare_a),
    .b(M_compare_b),
    .alufn(M_compare_alufn),
    .cmp(M_compare_cmp)
  );
  
  always @* begin
    out = 12'h000;
    M_adder_a = $signed(a);
    M_adder_b = $signed(b);
    M_adder_alufn = alufn[0+1-:2];
    M_boolean_a = $signed(a);
    M_boolean_b = $signed(b);
    M_boolean_alufn = alufn[0+3-:4];
    M_shifter_a = $signed(a);
    M_shifter_b = $signed(b);
    M_shifter_alufn = alufn[0+1-:2];
    M_compare_a = $signed(a);
    M_compare_b = $signed(b);
    M_compare_alufn = alufn[1+1-:2];
    z = 1'h0;
    v = 1'h0;
    n = 1'h0;
    
    case (alufn[4+1-:2])
      2'h0: begin
        out = $signed(M_adder_s);
        z = M_adder_z;
        v = M_adder_v;
        n = M_adder_n;
      end
      2'h1: begin
        out = M_boolean_boole;
      end
      2'h2: begin
        out = M_shifter_shift;
      end
      2'h3: begin
        out = M_compare_cmp;
      end
    endcase
  end
endmodule
