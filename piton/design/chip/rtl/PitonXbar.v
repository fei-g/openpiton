//-----------------------------------------------------------------------------
// PitonXbar_0x7f59336c0f23d4c9
//-----------------------------------------------------------------------------
// num_ports: 3
// msg_type: 768
// hdr_type: 64
// dump-vcd: False
// verilator-xinit: zeros
`default_nettype none
module PitonXbar
(
  input  wire [   0:0] clk,
  input  wire [  63:0] in_$000_msg,
  output wire [   0:0] in_$000_rdy,
  input  wire [   0:0] in_$000_val,
  input  wire [  63:0] in_$001_msg,
  output wire [   0:0] in_$001_rdy,
  input  wire [   0:0] in_$001_val,
  input  wire [  63:0] in_$002_msg,
  output wire [   0:0] in_$002_rdy,
  input  wire [   0:0] in_$002_val,
  output wire [  63:0] out$000_msg,
  input  wire [   0:0] out$000_rdy,
  output wire [   0:0] out$000_val,
  output wire [  63:0] out$001_msg,
  input  wire [   0:0] out$001_rdy,
  output wire [   0:0] out$001_val,
  output wire [  63:0] out$002_msg,
  input  wire [   0:0] out$002_rdy,
  output wire [   0:0] out$002_val,
  input  wire [   0:0] reset
);

  // wire declarations
  wire   [   1:0] sels$000;
  wire   [   1:0] sels$001;
  wire   [   1:0] sels$002;
  wire   [   0:0] arb_en$000;
  wire   [   0:0] arb_en$001;
  wire   [   0:0] arb_en$002;
  wire   [   0:0] has_grant$000;
  wire   [   0:0] has_grant$001;
  wire   [   0:0] has_grant$002;
  wire   [   0:0] ser_in_val$000;
  wire   [   0:0] ser_in_val$001;
  wire   [   0:0] ser_in_val$002;
  wire   [   0:0] ser_in_rdy$000;
  wire   [   0:0] ser_in_rdy$001;
  wire   [   0:0] ser_in_rdy$002;
  wire   [   0:0] des_out_val$000;
  wire   [   0:0] des_out_val$001;
  wire   [   0:0] des_out_val$002;
  wire   [   0:0] des_out_rdy$000;
  wire   [   0:0] des_out_rdy$001;
  wire   [   0:0] des_out_rdy$002;
  wire   [ 767:0] des_out_msg$000;
  wire   [ 767:0] des_out_msg$001;
  wire   [ 767:0] des_out_msg$002;
  wire   [   0:0] offchip$000;
  wire   [   0:0] offchip$001;
  wire   [   0:0] offchip$002;
  wire   [   7:0] dest_x$000;
  wire   [   7:0] dest_x$001;
  wire   [   7:0] dest_x$002;


  // localparam declarations
  localparam num_ports = 3;

  // loop variable declarations
  integer i;
  integer j;

  // des$000 temporaries
  wire   [   0:0] des$000$clk;
  wire   [   0:0] des$000$reset;
  wire   [  63:0] des$000$in__msg;
  wire   [   0:0] des$000$in__val;
  wire   [   0:0] des$000$out_rdy;
  wire   [   0:0] des$000$in__rdy;
  wire   [ 767:0] des$000$out_msg;
  wire   [   0:0] des$000$out_val;

  Deserializer_0x7d3cf1d776b62dc3 des$000
  (
    .clk     ( des$000$clk ),
    .reset   ( des$000$reset ),
    .in__msg ( des$000$in__msg ),
    .in__val ( des$000$in__val ),
    .out_rdy ( des$000$out_rdy ),
    .in__rdy ( des$000$in__rdy ),
    .out_msg ( des$000$out_msg ),
    .out_val ( des$000$out_val )
  );

  // des$001 temporaries
  wire   [   0:0] des$001$clk;
  wire   [   0:0] des$001$reset;
  wire   [  63:0] des$001$in__msg;
  wire   [   0:0] des$001$in__val;
  wire   [   0:0] des$001$out_rdy;
  wire   [   0:0] des$001$in__rdy;
  wire   [ 767:0] des$001$out_msg;
  wire   [   0:0] des$001$out_val;

  Deserializer_0x7d3cf1d776b62dc3 des$001
  (
    .clk     ( des$001$clk ),
    .reset   ( des$001$reset ),
    .in__msg ( des$001$in__msg ),
    .in__val ( des$001$in__val ),
    .out_rdy ( des$001$out_rdy ),
    .in__rdy ( des$001$in__rdy ),
    .out_msg ( des$001$out_msg ),
    .out_val ( des$001$out_val )
  );

  // des$002 temporaries
  wire   [   0:0] des$002$clk;
  wire   [   0:0] des$002$reset;
  wire   [  63:0] des$002$in__msg;
  wire   [   0:0] des$002$in__val;
  wire   [   0:0] des$002$out_rdy;
  wire   [   0:0] des$002$in__rdy;
  wire   [ 767:0] des$002$out_msg;
  wire   [   0:0] des$002$out_val;

  Deserializer_0x7d3cf1d776b62dc3 des$002
  (
    .clk     ( des$002$clk ),
    .reset   ( des$002$reset ),
    .in__msg ( des$002$in__msg ),
    .in__val ( des$002$in__val ),
    .out_rdy ( des$002$out_rdy ),
    .in__rdy ( des$002$in__rdy ),
    .out_msg ( des$002$out_msg ),
    .out_val ( des$002$out_val )
  );

  // xbar temporaries
  wire   [   0:0] xbar$clk;
  wire   [   0:0] xbar$reset;
  wire   [ 767:0] xbar$in_$000;
  wire   [ 767:0] xbar$in_$001;
  wire   [ 767:0] xbar$in_$002;
  wire   [   1:0] xbar$sel$000;
  wire   [   1:0] xbar$sel$001;
  wire   [   1:0] xbar$sel$002;
  wire   [ 767:0] xbar$out$000;
  wire   [ 767:0] xbar$out$001;
  wire   [ 767:0] xbar$out$002;

  Crossbar_0x393007c9e5bcc09f xbar
  (
    .clk     ( xbar$clk ),
    .reset   ( xbar$reset ),
    .in_$000 ( xbar$in_$000 ),
    .in_$001 ( xbar$in_$001 ),
    .in_$002 ( xbar$in_$002 ),
    .sel$000 ( xbar$sel$000 ),
    .sel$001 ( xbar$sel$001 ),
    .sel$002 ( xbar$sel$002 ),
    .out$000 ( xbar$out$000 ),
    .out$001 ( xbar$out$001 ),
    .out$002 ( xbar$out$002 )
  );

  // ser$000 temporaries
  wire   [   0:0] ser$000$clk;
  wire   [   0:0] ser$000$reset;
  wire   [ 767:0] ser$000$in__msg;
  wire   [   0:0] ser$000$in__val;
  wire   [   0:0] ser$000$out_rdy;
  wire   [   0:0] ser$000$in__rdy;
  wire   [  63:0] ser$000$out_msg;
  wire   [   0:0] ser$000$out_val;

  Serializer_0x44b4e9815337b1b0 ser$000
  (
    .clk     ( ser$000$clk ),
    .reset   ( ser$000$reset ),
    .in__msg ( ser$000$in__msg ),
    .in__val ( ser$000$in__val ),
    .out_rdy ( ser$000$out_rdy ),
    .in__rdy ( ser$000$in__rdy ),
    .out_msg ( ser$000$out_msg ),
    .out_val ( ser$000$out_val )
  );

  // ser$001 temporaries
  wire   [   0:0] ser$001$clk;
  wire   [   0:0] ser$001$reset;
  wire   [ 767:0] ser$001$in__msg;
  wire   [   0:0] ser$001$in__val;
  wire   [   0:0] ser$001$out_rdy;
  wire   [   0:0] ser$001$in__rdy;
  wire   [  63:0] ser$001$out_msg;
  wire   [   0:0] ser$001$out_val;

  Serializer_0x44b4e9815337b1b0 ser$001
  (
    .clk     ( ser$001$clk ),
    .reset   ( ser$001$reset ),
    .in__msg ( ser$001$in__msg ),
    .in__val ( ser$001$in__val ),
    .out_rdy ( ser$001$out_rdy ),
    .in__rdy ( ser$001$in__rdy ),
    .out_msg ( ser$001$out_msg ),
    .out_val ( ser$001$out_val )
  );

  // ser$002 temporaries
  wire   [   0:0] ser$002$clk;
  wire   [   0:0] ser$002$reset;
  wire   [ 767:0] ser$002$in__msg;
  wire   [   0:0] ser$002$in__val;
  wire   [   0:0] ser$002$out_rdy;
  wire   [   0:0] ser$002$in__rdy;
  wire   [  63:0] ser$002$out_msg;
  wire   [   0:0] ser$002$out_val;

  Serializer_0x44b4e9815337b1b0 ser$002
  (
    .clk     ( ser$002$clk ),
    .reset   ( ser$002$reset ),
    .in__msg ( ser$002$in__msg ),
    .in__val ( ser$002$in__val ),
    .out_rdy ( ser$002$out_rdy ),
    .in__rdy ( ser$002$in__rdy ),
    .out_msg ( ser$002$out_msg ),
    .out_val ( ser$002$out_val )
  );

  // arbitors$000 temporaries
  wire   [   0:0] arbitors$000$clk;
  wire   [   0:0] arbitors$000$reset;
  wire   [   0:0] arbitors$000$en;
  wire   [   2:0] arbitors$000$reqs;
  wire   [   2:0] arbitors$000$grants;

  RoundRobinArbiterEn_0x26266b5c3a0ddf1e arbitors$000
  (
    .clk    ( arbitors$000$clk ),
    .reset  ( arbitors$000$reset ),
    .en     ( arbitors$000$en ),
    .reqs   ( arbitors$000$reqs ),
    .grants ( arbitors$000$grants )
  );

  // arbitors$001 temporaries
  wire   [   0:0] arbitors$001$clk;
  wire   [   0:0] arbitors$001$reset;
  wire   [   0:0] arbitors$001$en;
  wire   [   2:0] arbitors$001$reqs;
  wire   [   2:0] arbitors$001$grants;

  RoundRobinArbiterEn_0x26266b5c3a0ddf1e arbitors$001
  (
    .clk    ( arbitors$001$clk ),
    .reset  ( arbitors$001$reset ),
    .en     ( arbitors$001$en ),
    .reqs   ( arbitors$001$reqs ),
    .grants ( arbitors$001$grants )
  );

  // arbitors$002 temporaries
  wire   [   0:0] arbitors$002$clk;
  wire   [   0:0] arbitors$002$reset;
  wire   [   0:0] arbitors$002$en;
  wire   [   2:0] arbitors$002$reqs;
  wire   [   2:0] arbitors$002$grants;

  RoundRobinArbiterEn_0x26266b5c3a0ddf1e arbitors$002
  (
    .clk    ( arbitors$002$clk ),
    .reset  ( arbitors$002$reset ),
    .en     ( arbitors$002$en ),
    .reqs   ( arbitors$002$reqs ),
    .grants ( arbitors$002$grants )
  );

  // signal connections
  assign arbitors$000$clk   = clk;
  assign arbitors$000$en    = arb_en$000;
  assign arbitors$000$reset = reset;
  assign arbitors$001$clk   = clk;
  assign arbitors$001$en    = arb_en$001;
  assign arbitors$001$reset = reset;
  assign arbitors$002$clk   = clk;
  assign arbitors$002$en    = arb_en$002;
  assign arbitors$002$reset = reset;
  assign des$000$clk        = clk;
  assign des$000$in__msg    = in_$000_msg;
  assign des$000$in__val    = in_$000_val;
  assign des$000$out_rdy    = des_out_rdy$000;
  assign des$000$reset      = reset;
  assign des$001$clk        = clk;
  assign des$001$in__msg    = in_$001_msg;
  assign des$001$in__val    = in_$001_val;
  assign des$001$out_rdy    = des_out_rdy$001;
  assign des$001$reset      = reset;
  assign des$002$clk        = clk;
  assign des$002$in__msg    = in_$002_msg;
  assign des$002$in__val    = in_$002_val;
  assign des$002$out_rdy    = des_out_rdy$002;
  assign des$002$reset      = reset;
  assign des_out_msg$000    = des$000$out_msg;
  assign des_out_msg$001    = des$001$out_msg;
  assign des_out_msg$002    = des$002$out_msg;
  assign des_out_val$000    = des$000$out_val;
  assign des_out_val$001    = des$001$out_val;
  assign des_out_val$002    = des$002$out_val;
  assign in_$000_rdy        = des$000$in__rdy;
  assign in_$001_rdy        = des$001$in__rdy;
  assign in_$002_rdy        = des$002$in__rdy;
  assign out$000_msg        = ser$000$out_msg;
  assign out$000_val        = ser$000$out_val;
  assign out$001_msg        = ser$001$out_msg;
  assign out$001_val        = ser$001$out_val;
  assign out$002_msg        = ser$002$out_msg;
  assign out$002_val        = ser$002$out_val;
  assign ser$000$clk        = clk;
  assign ser$000$in__msg    = xbar$out$000;
  assign ser$000$in__val    = ser_in_val$000;
  assign ser$000$out_rdy    = out$000_rdy;
  assign ser$000$reset      = reset;
  assign ser$001$clk        = clk;
  assign ser$001$in__msg    = xbar$out$001;
  assign ser$001$in__val    = ser_in_val$001;
  assign ser$001$out_rdy    = out$001_rdy;
  assign ser$001$reset      = reset;
  assign ser$002$clk        = clk;
  assign ser$002$in__msg    = xbar$out$002;
  assign ser$002$in__val    = ser_in_val$002;
  assign ser$002$out_rdy    = out$002_rdy;
  assign ser$002$reset      = reset;
  assign ser_in_rdy$000     = ser$000$in__rdy;
  assign ser_in_rdy$001     = ser$001$in__rdy;
  assign ser_in_rdy$002     = ser$002$in__rdy;
  assign xbar$clk           = clk;
  assign xbar$in_$000       = des$000$out_msg;
  assign xbar$in_$001       = des$001$out_msg;
  assign xbar$in_$002       = des$002$out_msg;
  assign xbar$reset         = reset;
  assign xbar$sel$000       = sels$000;
  assign xbar$sel$001       = sels$001;
  assign xbar$sel$002       = sels$002;

  // array declarations
  reg    [   0:0] arb_en[0:2];
  assign arb_en$000 = arb_en[  0];
  assign arb_en$001 = arb_en[  1];
  assign arb_en$002 = arb_en[  2];
  wire   [   2:0] arbitors$grants[0:2];
  assign arbitors$grants[  0] = arbitors$000$grants;
  assign arbitors$grants[  1] = arbitors$001$grants;
  assign arbitors$grants[  2] = arbitors$002$grants;
  reg    [   2:0] arbitors$reqs[0:2];
  assign arbitors$000$reqs = arbitors$reqs[  0];
  assign arbitors$001$reqs = arbitors$reqs[  1];
  assign arbitors$002$reqs = arbitors$reqs[  2];
  wire   [ 767:0] des_out_msg[0:2];
  assign des_out_msg[  0] = des_out_msg$000;
  assign des_out_msg[  1] = des_out_msg$001;
  assign des_out_msg[  2] = des_out_msg$002;
  reg    [   0:0] des_out_rdy[0:2];
  assign des_out_rdy$000 = des_out_rdy[  0];
  assign des_out_rdy$001 = des_out_rdy[  1];
  assign des_out_rdy$002 = des_out_rdy[  2];
  wire   [   0:0] des_out_val[0:2];
  assign des_out_val[  0] = des_out_val$000;
  assign des_out_val[  1] = des_out_val$001;
  assign des_out_val[  2] = des_out_val$002;
  reg    [   7:0] dest_x[0:2];
  assign dest_x$000 = dest_x[  0];
  assign dest_x$001 = dest_x[  1];
  assign dest_x$002 = dest_x[  2];
  reg    [   0:0] has_grant[0:2];
  assign has_grant$000 = has_grant[  0];
  assign has_grant$001 = has_grant[  1];
  assign has_grant$002 = has_grant[  2];
  reg    [   0:0] offchip[0:2];
  assign offchip$000 = offchip[  0];
  assign offchip$001 = offchip[  1];
  assign offchip$002 = offchip[  2];
  reg    [   1:0] sels[0:2];
  assign sels$000 = sels[  0];
  assign sels$001 = sels[  1];
  assign sels$002 = sels[  2];
  wire   [   0:0] ser_in_rdy[0:2];
  assign ser_in_rdy[  0] = ser_in_rdy$000;
  assign ser_in_rdy[  1] = ser_in_rdy$001;
  assign ser_in_rdy[  2] = ser_in_rdy$002;
  reg    [   0:0] ser_in_val[0:2];
  assign ser_in_val$000 = ser_in_val[  0];
  assign ser_in_val$001 = ser_in_val[  1];
  assign ser_in_val$002 = ser_in_val[  2];

  // PYMTL SOURCE:
  //
  // @s.combinational
  // def xbarSel():
  //       for i in range( num_ports ):
  //         for j in range( num_ports ):
  //           if s.arbitors[i].grants[j]:
  //             s.sels[i].value = j

  // logic for xbarSel()
  always @ (*) begin
    for (i=0; i < num_ports; i=i+1)
    begin
      for (j=0; j < num_ports; j=j+1)
      begin
        if (arbitors$grants[i][j]) begin
          sels[i] = j;
        end
        else begin
        end
      end
    end
  end

  // PYMTL SOURCE:
  //
  // @s.combinational
  // def offchipSet():
  //       for i in range( num_ports ):
  //         s.offchip[i].value = s.des_out_msg[i][63]

  // logic for offchipSet()
  always @ (*) begin
    for (i=0; i < num_ports; i=i+1)
    begin
      offchip[i] = des_out_msg[i][63];
    end
  end

  // PYMTL SOURCE:
  //
  // @s.combinational
  // def desOutRdy():
  //       for i in range( num_ports ):
  //         s.has_grant[i].value = 0
  //         for j in range( num_ports ):
  //           if s.arbitors[j].grants[i]:
  //             s.has_grant[i].value = s.ser_in_rdy[j]
  //
  //       for i in range( num_ports ):
  //         s.des_out_rdy[i].value = s.has_grant[i]

  // logic for desOutRdy()
  always @ (*) begin
    for (i=0; i < num_ports; i=i+1)
    begin
      has_grant[i] = 0;
      for (j=0; j < num_ports; j=j+1)
      begin
        if (arbitors$grants[j][i]) begin
          has_grant[i] = ser_in_rdy[j];
        end
        else begin
        end
      end
    end
    for (i=0; i < num_ports; i=i+1)
    begin
      des_out_rdy[i] = has_grant[i];
    end
  end

  // PYMTL SOURCE:
  //
  // @s.combinational
  // def serInVal():
  //       for i in range( num_ports ):
  //         s.ser_in_val[i].value = 0
  //         if s.arbitors[i].grants > 0 :
  //           s.ser_in_val[i].value = 1

  // logic for serInVal()
  always @ (*) begin
    for (i=0; i < num_ports; i=i+1)
    begin
      ser_in_val[i] = 0;
      if ((arbitors$grants[i] > 0)) begin
        ser_in_val[i] = 1;
      end
      else begin
      end
    end
  end

  // PYMTL SOURCE:
  //
  // @s.combinational
  // def arbitorEnable():
  //       for i in range( num_ports ):
  //         s.arb_en[i].value = s.ser_in_val[i] & s.ser_in_rdy[i]

  // logic for arbitorEnable()
  always @ (*) begin
    for (i=0; i < num_ports; i=i+1)
    begin
      arb_en[i] = (ser_in_val[i]&ser_in_rdy[i]);
    end
  end

  // PYMTL SOURCE:
  //
  // @s.combinational
  // def arbitorReq():
  //       for i in range( num_ports ):
  //         for j in range( num_ports ):
  //           s.arbitors[i].reqs[j].value = 0
  //
  //       #for i in range( num_ports ): 
  //       #  s.arbitors[i].reqs.value = 0
  //       #  s.dest_x[i].value = ( num_ports - 1 ) if s.offchip[i] \
  //       #                                        else s.des_out_msg[i].xpos    
  //       #  for j in range( num_ports ):
  //       #    if s.dest_x[i] == j:
  //       #      s.arbitors[j].reqs[i].value = s.des_out_val[i]
  //
  //         #s.arbitors[s.dest_x[i]].reqs[i].value = s.des_out_val[i]        
  //
  //       for i in range( num_ports ): 
  //         s.dest_x[i].value = s.des_out_msg[i][42:50]
  //         if s.offchip[i]:
  //           s.arbitors[num_ports-1].reqs[i].value = s.des_out_val[i]
  //         else:
  //           s.arbitors[s.dest_x[i]].reqs[i].value = s.des_out_val[i]

  // logic for arbitorReq()
  always @ (*) begin
    for (i=0; i < num_ports; i=i+1)
    begin
      for (j=0; j < num_ports; j=j+1)
      begin
        arbitors$reqs[i][j] = 0;
      end
    end
    for (i=0; i < num_ports; i=i+1)
    begin
      dest_x[i] = des_out_msg[i][(50)-1:42];
      if (offchip[i]) begin
        arbitors$reqs[(num_ports-1)][i] = des_out_val[i];
      end
      else begin
        arbitors$reqs[dest_x[i]][i] = des_out_val[i];
      end
    end
  end


endmodule // PitonXbar_0x7f59336c0f23d4c9
`default_nettype wire

//-----------------------------------------------------------------------------
// Deserializer_0x7d3cf1d776b62dc3
//-----------------------------------------------------------------------------
// dump-vcd: False
// verilator-xinit: zeros
`default_nettype none
module Deserializer_0x7d3cf1d776b62dc3
(
  input  wire [   0:0] clk,
  input  wire [  63:0] in__msg,
  output reg  [   0:0] in__rdy,
  input  wire [   0:0] in__val,
  output reg  [ 767:0] out_msg,
  input  wire [   0:0] out_rdy,
  output reg  [   0:0] out_val,
  input  wire [   0:0] reset
);

  // wire declarations
  wire   [ 767:0] out_reg;
  wire   [  63:0] out_reg_wire$000;
  wire   [  63:0] out_reg_wire$001;
  wire   [  63:0] out_reg_wire$002;
  wire   [  63:0] out_reg_wire$003;
  wire   [  63:0] out_reg_wire$004;
  wire   [  63:0] out_reg_wire$005;
  wire   [  63:0] out_reg_wire$006;
  wire   [  63:0] out_reg_wire$007;
  wire   [  63:0] out_reg_wire$008;
  wire   [  63:0] out_reg_wire$009;
  wire   [  63:0] out_reg_wire$010;
  wire   [  63:0] out_reg_wire$011;


  // register declarations
  reg    [   7:0] cnt;
  reg    [   1:0] state;
  reg    [   3:0] wr_addr;

  // localparam declarations
  localparam IDLE = 0;
  localparam RECV = 1;
  localparam SEND = 2;

  // loop variable declarations
  integer i;

  // signal connections
  assign out_reg[127:64]  = out_reg_wire$001;
  assign out_reg[191:128] = out_reg_wire$002;
  assign out_reg[255:192] = out_reg_wire$003;
  assign out_reg[319:256] = out_reg_wire$004;
  assign out_reg[383:320] = out_reg_wire$005;
  assign out_reg[447:384] = out_reg_wire$006;
  assign out_reg[511:448] = out_reg_wire$007;
  assign out_reg[575:512] = out_reg_wire$008;
  assign out_reg[639:576] = out_reg_wire$009;
  assign out_reg[63:0]    = out_reg_wire$000;
  assign out_reg[703:640] = out_reg_wire$010;
  assign out_reg[767:704] = out_reg_wire$011;

  // array declarations
  reg    [  63:0] out_reg_wire[0:11];
  assign out_reg_wire$000 = out_reg_wire[  0];
  assign out_reg_wire$001 = out_reg_wire[  1];
  assign out_reg_wire$002 = out_reg_wire[  2];
  assign out_reg_wire$003 = out_reg_wire[  3];
  assign out_reg_wire$004 = out_reg_wire[  4];
  assign out_reg_wire$005 = out_reg_wire[  5];
  assign out_reg_wire$006 = out_reg_wire[  6];
  assign out_reg_wire$007 = out_reg_wire[  7];
  assign out_reg_wire$008 = out_reg_wire[  8];
  assign out_reg_wire$009 = out_reg_wire[  9];
  assign out_reg_wire$010 = out_reg_wire[ 10];
  assign out_reg_wire$011 = out_reg_wire[ 11];

  // PYMTL SOURCE:
  //
  // @s.tick_rtl
  // def fsm():
  //       if s.reset:
  //         s.state.next   = s.IDLE
  //         s.cnt.next     = 0
  //         s.wr_addr.next = 0
  //         #s.out_reg.next = 0
  //         for i in range( 12 ):
  //           s.out_reg_wire[i].next = 0
  //
  //       elif s.state == s.IDLE:
  //         if s.in_.val:
  //           s.state.next           = s.RECV
  //           s.cnt.next             = s.in_.msg.pay_len
  //           s.wr_addr.next         = 1
  //           s.out_reg_wire[0].next = s.in_.msg
  //           #s.out_reg[0:64].next = s.in_.msg
  //         else:
  //           s.state.next   = s.IDLE
  //           s.cnt.next     = 0
  //           #s.out_reg.next = 0
  //
  //       elif s.state == s.RECV:
  //         if s.cnt==0 or ( s.cnt==1 and s.in_.val and s.in_.rdy ):
  //         #if s.cnt==0:
  //           s.state.next   = s.SEND
  //           s.cnt.next     = 0
  //           s.wr_addr.next = 0
  //           s.out_reg_wire[s.wr_addr].next = s.in_.msg
  //           #s.out_reg.next = s.out_reg
  //         elif s.in_.val:
  //           # shift out reg
  //           #s.out_reg_wire[1].next = s.in_.msg
  //           #s.out_reg[64:128].next = s.in_.msg
  //           s.out_reg_wire[s.wr_addr].next = s.in_.msg
  //           #for i in range( 2, 12 ):
  //           #  s.out_reg[i*64:i*64+64].next = s.out_reg[(i-1)*64:(i-1)*64+64]
  //           s.cnt.next = s.cnt - 1
  //           s.wr_addr.next = s.wr_addr + 1
  //         else:
  //           s.state.next   = s.state
  //           #s.out_reg.next = s.out_reg
  //           s.cnt.next     = s.cnt
  //           s.wr_addr.next = s.wr_addr
  //       
  //       else: # SEND
  //         if s.out.val and s.out.rdy:
  //           s.state.next   = s.IDLE
  //           #s.out_reg.next = 0
  //           s.cnt.next     = 0
  //           s.wr_addr.next = 0
  //           for i in range( 12 ):
  //             s.out_reg_wire[i].next = 0
  //         else:
  //           s.state.next = s.state

  // logic for fsm()
  always @ (posedge clk) begin
    if (reset) begin
      state <= IDLE;
      cnt <= 0;
      wr_addr <= 0;
      for (i=0; i < 12; i=i+1)
      begin
        out_reg_wire[i] <= 0;
      end
    end
    else begin
      if ((state == IDLE)) begin
        if (in__val) begin
          state <= RECV;
          cnt <= in__msg[(30)-1:22];
          wr_addr <= 1;
          out_reg_wire[0] <= in__msg;
        end
        else begin
          state <= IDLE;
          cnt <= 0;
        end
      end
      else begin
        if ((state == RECV)) begin
          if (((cnt == 0)||((cnt == 1)&&in__val&&in__rdy))) begin
            state <= SEND;
            cnt <= 0;
            wr_addr <= 0;
            out_reg_wire[wr_addr] <= in__msg;
          end
          else begin
            if (in__val) begin
              out_reg_wire[wr_addr] <= in__msg;
              cnt <= (cnt-1);
              wr_addr <= (wr_addr+1);
            end
            else begin
              state <= state;
              cnt <= cnt;
              wr_addr <= wr_addr;
            end
          end
        end
        else begin
          if ((out_val&&out_rdy)) begin
            state <= IDLE;
            cnt <= 0;
            wr_addr <= 0;
            for (i=0; i < 12; i=i+1)
            begin
              out_reg_wire[i] <= 0;
            end
          end
          else begin
            state <= state;
          end
        end
      end
    end
  end

  // PYMTL SOURCE:
  //
  // @s.combinational
  // def outVal():
  //       s.out.val.value = 1 if s.state==s.SEND else 0
  //       s.in_.rdy.value = 1 if s.state!=s.SEND else 0
  //       s.out.msg.value = s.out_reg

  // logic for outVal()
  always @ (*) begin
    out_val = (state == SEND) ? 1 : 0;
    in__rdy = (state != SEND) ? 1 : 0;
    out_msg = out_reg;
  end


endmodule // Deserializer_0x7d3cf1d776b62dc3
`default_nettype wire

//-----------------------------------------------------------------------------
// Crossbar_0x393007c9e5bcc09f
//-----------------------------------------------------------------------------
// nports: 3
// dtype: 768
// dump-vcd: False
// verilator-xinit: zeros
`default_nettype none
module Crossbar_0x393007c9e5bcc09f
(
  input  wire [   0:0] clk,
  input  wire [ 767:0] in_$000,
  input  wire [ 767:0] in_$001,
  input  wire [ 767:0] in_$002,
  output wire [ 767:0] out$000,
  output wire [ 767:0] out$001,
  output wire [ 767:0] out$002,
  input  wire [   0:0] reset,
  input  wire [   1:0] sel$000,
  input  wire [   1:0] sel$001,
  input  wire [   1:0] sel$002
);

  // localparam declarations
  localparam nports = 3;

  // loop variable declarations
  integer i;


  // array declarations
  wire   [ 767:0] in_[0:2];
  assign in_[  0] = in_$000;
  assign in_[  1] = in_$001;
  assign in_[  2] = in_$002;
  reg    [ 767:0] out[0:2];
  assign out$000 = out[  0];
  assign out$001 = out[  1];
  assign out$002 = out[  2];
  wire   [   1:0] sel[0:2];
  assign sel[  0] = sel$000;
  assign sel[  1] = sel$001;
  assign sel[  2] = sel$002;

  // PYMTL SOURCE:
  //
  // @s.combinational
  // def comb_logic():
  //
  //       for i in range( nports ):
  //         s.out[i].value = s.in_[ s.sel[ i ] ]

  // logic for comb_logic()
  always @ (*) begin
    for (i=0; i < nports; i=i+1)
    begin
      out[i] = in_[sel[i]];
    end
  end


endmodule // Crossbar_0x393007c9e5bcc09f
`default_nettype wire

//-----------------------------------------------------------------------------
// Serializer_0x44b4e9815337b1b0
//-----------------------------------------------------------------------------
// dout_type: 64
// din_type: 768
// dump-vcd: False
// verilator-xinit: zeros
`default_nettype none
module Serializer_0x44b4e9815337b1b0
(
  input  wire [   0:0] clk,
  input  wire [ 767:0] in__msg,
  output reg  [   0:0] in__rdy,
  input  wire [   0:0] in__val,
  output reg  [  63:0] out_msg,
  input  wire [   0:0] out_rdy,
  output reg  [   0:0] out_val,
  input  wire [   0:0] reset
);

  // register declarations
  reg    [   7:0] cnt;
  reg    [ 767:0] out_reg;
  reg    [   0:0] state;

  // localparam declarations
  localparam IDLE = 0;
  localparam SEND = 1;

  // loop variable declarations
  integer i;



  // PYMTL SOURCE:
  //
  // @s.tick_rtl
  // def fsm():
  //       if s.reset:
  //         s.state.next   = s.IDLE
  //         s.cnt.next     = 0
  //         s.out_reg.next = 0
  //
  //       elif s.state == s.IDLE:
  //         if s.in_.val:
  //           s.state.next   = s.SEND
  //           s.cnt.next     = s.in_.msg.pay_len
  //           s.out_reg.next = s.in_.msg
  //         else:
  //           s.state.next = s.state
  //
  //       else: # s.state == s.SEND
  //         if s.cnt == 0 and s.out.val and s.out.rdy:
  //           s.state.next = s.IDLE
  //           s.cnt.next     = 0
  //           s.out_reg.next = 0      
  //
  //         elif s.out.val and s.out.rdy:
  //           # decrement counter
  //           s.cnt.next = s.cnt - 1
  //           
  //           # shift [out_reg]
  //           s.out_reg.next = 0
  //           for i in range(11):
  //             s.out_reg[i*64:i*64+64].next = s.out_reg[(i+1)*64:(i+1)*64+64]
  //         
  //         else:
  //           s.state.next = s.SEND 

  // logic for fsm()
  always @ (posedge clk) begin
    if (reset) begin
      state <= IDLE;
      cnt <= 0;
      out_reg <= 0;
    end
    else begin
      if ((state == IDLE)) begin
        if (in__val) begin
          state <= SEND;
          cnt <= in__msg[(30)-1:22];
          out_reg <= in__msg;
        end
        else begin
          state <= state;
        end
      end
      else begin
        if (((cnt == 0)&&out_val&&out_rdy)) begin
          state <= IDLE;
          cnt <= 0;
          out_reg <= 0;
        end
        else begin
          if ((out_val&&out_rdy)) begin
            cnt <= (cnt-1);
            out_reg <= 0;
            for (i=0; i < 11; i=i+1)
            begin
              out_reg[(i*64) +: 64] <= out_reg[((i+1)*64) +: 64];
            end
          end
          else begin
            state <= SEND;
          end
        end
      end
    end
  end

  // PYMTL SOURCE:
  //
  // @s.combinational
  // def outVal():
  //       s.out.val.value = ( s.state==s.SEND )
  //       s.in_.rdy.value = ( s.state==s.IDLE )
  //       s.out.msg.value = s.out_reg[0:64]

  // logic for outVal()
  always @ (*) begin
    out_val = (state == SEND);
    in__rdy = (state == IDLE);
    out_msg = out_reg[(64)-1:0];
  end


endmodule // Serializer_0x44b4e9815337b1b0
`default_nettype wire

//-----------------------------------------------------------------------------
// RoundRobinArbiterEn_0x26266b5c3a0ddf1e
//-----------------------------------------------------------------------------
// nreqs: 3
// dump-vcd: False
// verilator-xinit: zeros
`default_nettype none
module RoundRobinArbiterEn_0x26266b5c3a0ddf1e
(
  input  wire [   0:0] clk,
  input  wire [   0:0] en,
  output reg  [   2:0] grants,
  input  wire [   2:0] reqs,
  input  wire [   0:0] reset
);

  // register declarations
  reg    [   5:0] grants_int;
  reg    [   6:0] kills;
  reg    [   0:0] priority_en;
  reg    [   5:0] priority_int;
  reg    [   5:0] reqs_int;

  // localparam declarations
  localparam nreqs = 3;
  localparam nreqsX2 = 6;

  // loop variable declarations
  integer i;

  // priority_reg temporaries
  wire   [   0:0] priority_reg$clk;
  wire   [   0:0] priority_reg$reset;
  wire   [   0:0] priority_reg$en;
  wire   [   2:0] priority_reg$in_;
  wire   [   2:0] priority_reg$out;

  RegEnRst_0x2b6646c5372a210a priority_reg
  (
    .clk   ( priority_reg$clk ),
    .reset ( priority_reg$reset ),
    .en    ( priority_reg$en ),
    .in_   ( priority_reg$in_ ),
    .out   ( priority_reg$out )
  );

  // signal connections
  assign priority_reg$clk      = clk;
  assign priority_reg$en       = priority_en;
  assign priority_reg$in_[0]   = grants[2];
  assign priority_reg$in_[2:1] = grants[1:0];
  assign priority_reg$reset    = reset;


  // PYMTL SOURCE:
  //
  // @s.combinational
  // def comb_arbitrate():
  //
  //       s.kills[0].value = 1
  //
  //       s.priority_int[    0:nreqs  ].value = s.priority_reg.out
  //       s.priority_int[nreqs:nreqsX2].value = 0
  //       s.reqs_int    [    0:nreqs  ].value = s.reqs
  //       s.reqs_int    [nreqs:nreqsX2].value = s.reqs
  //
  //       # Calculate the kill chain
  //       for i in range( nreqsX2 ):
  //
  //         # Set internal grants
  //         if s.priority_int[i].value:
  //           s.grants_int[i].value = s.reqs_int[i]
  //         else:
  //           s.grants_int[i].value = ~s.kills[i] & s.reqs_int[i]
  //
  //         # Set kill signals
  //         if s.priority_int[i].value:
  //           s.kills[i+1].value = s.grants_int[i]
  //         else:
  //           s.kills[i+1].value = s.kills[i] | s.grants_int[i]
  //
  //       # Assign the output ports
  //       for i in range( nreqs ):
  //         s.grants[i].value = s.grants_int[i] | s.grants_int[nreqs+i]

  // logic for comb_arbitrate()
  always @ (*) begin
    kills[0] = 1;
    priority_int[(nreqs)-1:0] = priority_reg$out;
    priority_int[(nreqsX2)-1:nreqs] = 0;
    reqs_int[(nreqs)-1:0] = reqs;
    reqs_int[(nreqsX2)-1:nreqs] = reqs;
    for (i=0; i < nreqsX2; i=i+1)
    begin
      if (priority_int[i]) begin
        grants_int[i] = reqs_int[i];
      end
      else begin
        grants_int[i] = (~kills[i]&reqs_int[i]);
      end
      if (priority_int[i]) begin
        kills[(i+1)] = grants_int[i];
      end
      else begin
        kills[(i+1)] = (kills[i]|grants_int[i]);
      end
    end
    for (i=0; i < nreqs; i=i+1)
    begin
      grants[i] = (grants_int[i]|grants_int[(nreqs+i)]);
    end
  end

  // PYMTL SOURCE:
  //
  // @s.combinational
  // def comb_feedback():
  //       s.priority_en.value = ( s.grants != 0 ) & s.en

  // logic for comb_feedback()
  always @ (*) begin
    priority_en = ((grants != 0)&en);
  end


endmodule // RoundRobinArbiterEn_0x26266b5c3a0ddf1e
`default_nettype wire

//-----------------------------------------------------------------------------
// RegEnRst_0x2b6646c5372a210a
//-----------------------------------------------------------------------------
// dtype: 3
// reset_value: 1
// dump-vcd: False
// verilator-xinit: zeros
`default_nettype none
module RegEnRst_0x2b6646c5372a210a
(
  input  wire [   0:0] clk,
  input  wire [   0:0] en,
  input  wire [   2:0] in_,
  output reg  [   2:0] out,
  input  wire [   0:0] reset
);

  // localparam declarations
  localparam reset_value = 1;



  // PYMTL SOURCE:
  //
  // @s.posedge_clk
  // def seq_logic():
  //       if s.reset:
  //         s.out.next = reset_value
  //       elif s.en:
  //         s.out.next = s.in_

  // logic for seq_logic()
  always @ (posedge clk) begin
    if (reset) begin
      out <= reset_value;
    end
    else begin
      if (en) begin
        out <= in_;
      end
      else begin
      end
    end
  end


endmodule // RegEnRst_0x2b6646c5372a210a
`default_nettype wire

