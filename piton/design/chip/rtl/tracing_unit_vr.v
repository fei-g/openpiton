module tracing_unit_vr #(
  parameter ID = "yo"
)(  
  input         clk,
  input         rst,

  input  [63:0] din_msg,
  input         din_val,
  output        din_rdy,

  output [63:0] dout_msg,
  output        dout_val,
  input         dout_rdy  
);

assign dout_msg = din_msg; 
assign dout_val = din_val;
assign din_rdy  = dout_rdy;

localparam HEADER  = 1'b0;
localparam PAYLOAD = 1'b1;
integer cycle = 0;

reg  state;
reg  next_state;
reg  [7:0] cnt;
wire [7:0] plen;

assign plen = din_msg[29:22];

// An FSM for printing the packet
always @ (*) begin
  case (state)
    HEADER: 
      if (din_val & din_rdy) begin 
        next_state = plen==0? HEADER : PAYLOAD;
      end 
      else begin
        next_state = HEADER;
      end
    PAYLOAD: 
      if (cnt == 0 || ( cnt == 1 && din_val  ) ) begin 
        next_state = HEADER;
      end
      else begin 
        next_state = PAYLOAD;
      end
  endcase
end

always @ (posedge clk) begin 
  if (rst) begin 
    cycle <= 0;
    cnt <= 0;
    state <= HEADER;
  end
  else begin
    cycle <= cycle + 1;
    case (state)
      HEADER:
        if (din_val & din_rdy) begin 
          cnt <= plen;
            $display("%8d:TracingUnit <%16s>: chip_id: %d, xpos: %d, ypos: %d, pay_len: %d, msg_type: %d\n", 
          	  cycle, ID, din_msg[63:50], din_msg[49:42], din_msg[41:34], din_msg[29:22], din_msg[21:14]); 
        end
        else begin
          cnt <= cnt;
        end
      PAYLOAD: begin 
        if (din_val & din_rdy) begin
          cnt <= cnt - 1'b1;
          $display("%8d:TracingUnit <%16s>: cnt: %d, payload: %h\n", cycle, ID, cnt, din_msg);
        end
        else begin
          cnt <= cnt;
        end
      end
    endcase
    state <= next_state;
  end
end 

endmodule
