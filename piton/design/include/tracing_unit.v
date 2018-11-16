//`include "network_define.v"

module tracing_unit #(
  parameter 
  ID = "yo"
)(
  input  [63:0] din_msg,
  input         din_val,
  output reg    din_yum,

  output reg [63:0] dout_msg,
  output reg        dout_val,
  input             dout_yum  
);

//assign dout_msg = din_msg; 
//assign dout_val = din_val;
//assign dout_yum = din_yum;

always @ (*) begin 
  dout_msg = din_msg;
  dout_val = din_val;
  din_yum  = dout_yum;
  $display("(%s): TRACING UNIT OUTPUT HERE <<<<<<<<<<<", ID);
end

endmodule