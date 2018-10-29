/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_1 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg [15:0] out
  );
  
  
  
  wire [16-1:0] M_adder_out;
  adder_9 adder (
    .a(a),
    .b(b),
    .alufn(alufn),
    .out(M_adder_out)
  );
  wire [16-1:0] M_boolean_out;
  boolean_10 boolean (
    .a(a),
    .b(b),
    .alufn(alufn),
    .out(M_boolean_out)
  );
  wire [16-1:0] M_compare_out;
  compare_11 compare (
    .a(a),
    .b(b),
    .alufn(alufn),
    .out(M_compare_out)
  );
  wire [16-1:0] M_shifter_out;
  shifter_12 shifter (
    .a(a),
    .b(b),
    .alufn(alufn),
    .out(M_shifter_out)
  );
  wire [16-1:0] M_multiplier_out;
  multiplier_13 multiplier (
    .a(a),
    .b(b),
    .alufn(alufn),
    .out(M_multiplier_out)
  );
  
  always @* begin
    out = 1'h0;
    if (alufn == 6'h00 | alufn == 6'h01) begin
      out = M_adder_out;
    end else begin
      if (alufn == 6'h33 | alufn == 6'h35 | alufn == 6'h37) begin
        out = M_compare_out;
      end else begin
        if (alufn == 6'h18 | alufn == 6'h1e | alufn == 6'h16 | alufn == 6'h1a) begin
          out = M_boolean_out;
        end else begin
          if (alufn == 6'h20 | alufn == 6'h21 | alufn == 6'h23) begin
            out = M_shifter_out;
          end else begin
            if (alufn == 6'h02 | alufn == 6'h03) begin
              out = M_multiplier_out;
            end else begin
              out = 1'h0;
            end
          end
        end
      end
    end
  end
endmodule
