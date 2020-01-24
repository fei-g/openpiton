# Copyright (c) 2016 Princeton University
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of Princeton University nor the
#       names of its contributors may be used to endorse or promote products
#       derived from this software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY PRINCETON UNIVERSITY "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL PRINCETON UNIVERSITY BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# Clock signals
set_property IOSTANDARD LVDS [get_ports clk_osc_p]
set_property PACKAGE_PIN AD12 [get_ports clk_osc_p]
set_property PACKAGE_PIN AD11 [get_ports clk_osc_n]
set_property IOSTANDARD LVDS [get_ports clk_osc_n]

set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets clk_mmcm_memio_unit_tests/inst/clk_in1_clk_mmcm_memio_unit_tests]

# Reset
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property PACKAGE_PIN R19 [get_ports rst_n]


# serial:0.tx
set_property LOC Y23 [get_ports serial_tx]
set_property IOSTANDARD LVCMOS33 [get_ports serial_tx]
## serial:0.rx
set_property LOC Y20 [get_ports serial_rx]
set_property IOSTANDARD LVCMOS33 [get_ports serial_rx]


# Switches
set_property PACKAGE_PIN G19 [get_ports sw[0]]
set_property IOSTANDARD LVCMOS12 [get_ports sw[0]]
set_property PACKAGE_PIN G25 [get_ports sw[1]]
set_property IOSTANDARD LVCMOS12 [get_ports sw[1]]
set_property PACKAGE_PIN H24 [get_ports sw[2]]
set_property IOSTANDARD LVCMOS12 [get_ports sw[2]]
set_property PACKAGE_PIN K19 [get_ports sw[3]]
set_property IOSTANDARD LVCMOS12 [get_ports sw[3]]
set_property PACKAGE_PIN N19 [get_ports sw[4]]
set_property IOSTANDARD LVCMOS12 [get_ports sw[4]]
set_property PACKAGE_PIN P19 [get_ports sw[5]]
set_property IOSTANDARD LVCMOS12 [get_ports sw[5]]
set_property PACKAGE_PIN P26 [get_ports sw[6]]
set_property IOSTANDARD LVCMOS33 [get_ports sw[6]]
set_property PACKAGE_PIN P27 [get_ports sw[7]]
set_property IOSTANDARD LVCMOS33 [get_ports sw[7]]

# LEDs
set_property PACKAGE_PIN T28 [get_ports led[0]]
set_property IOSTANDARD LVCMOS33 [get_ports led[0]]
set_property PACKAGE_PIN V19 [get_ports led[1]]
set_property IOSTANDARD LVCMOS33 [get_ports led[1]]
set_property PACKAGE_PIN U30 [get_ports led[2]]
set_property IOSTANDARD LVCMOS33 [get_ports led[2]]
set_property PACKAGE_PIN U29 [get_ports led[3]]
set_property IOSTANDARD LVCMOS33 [get_ports led[3]]
set_property PACKAGE_PIN V20 [get_ports led[4]]
set_property IOSTANDARD LVCMOS33 [get_ports led[4]]
set_property PACKAGE_PIN V26 [get_ports led[5]]
set_property IOSTANDARD LVCMOS33 [get_ports led[5]]
set_property PACKAGE_PIN W24 [get_ports led[6]]
set_property IOSTANDARD LVCMOS33 [get_ports led[6]]
set_property PACKAGE_PIN W23 [get_ports led[7]]
set_property IOSTANDARD LVCMOS33 [get_ports led[7]]

# DDR
 ## ddr:0.a
set_property LOC AC12 [get_ports ddr_addr[0]]
set_property SLEW FAST [get_ports ddr_addr[0]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[0]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[0]]
 ## ddr:0.a
set_property LOC AE8 [get_ports ddr_addr[1]]
set_property SLEW FAST [get_ports ddr_addr[1]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[1]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[1]]
 ## ddr:0.a
set_property LOC AD8 [get_ports ddr_addr[2]]
set_property SLEW FAST [get_ports ddr_addr[2]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[2]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[2]]
 ## ddr:0.a
set_property LOC AC10 [get_ports ddr_addr[3]]
set_property SLEW FAST [get_ports ddr_addr[3]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[3]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[3]]
 ## ddr:0.a
set_property LOC AD9 [get_ports ddr_addr[4]]
set_property SLEW FAST [get_ports ddr_addr[4]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[4]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[4]]
 ## ddr:0.a
set_property LOC AA13 [get_ports ddr_addr[5]]
set_property SLEW FAST [get_ports ddr_addr[5]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[5]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[5]]
 ## ddr:0.a
set_property LOC AA10 [get_ports ddr_addr[6]]
set_property SLEW FAST [get_ports ddr_addr[6]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[6]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[6]]
 ## ddr:0.a
set_property LOC AA11 [get_ports ddr_addr[7]]
set_property SLEW FAST [get_ports ddr_addr[7]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[7]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[7]]
 ## ddr:0.a
set_property LOC Y10 [get_ports ddr_addr[8]]
set_property SLEW FAST [get_ports ddr_addr[8]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[8]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[8]]
 ## ddr:0.a
set_property LOC Y11 [get_ports ddr_addr[9]]
set_property SLEW FAST [get_ports ddr_addr[9]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[9]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[9]]
 ## ddr:0.a
set_property LOC AB8 [get_ports ddr_addr[10]]
set_property SLEW FAST [get_ports ddr_addr[10]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[10]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[10]]
 ## ddr:0.a
set_property LOC AA8 [get_ports ddr_addr[11]]
set_property SLEW FAST [get_ports ddr_addr[11]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[11]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[11]]
 ## ddr:0.a
set_property LOC AB12 [get_ports ddr_addr[12]]
set_property SLEW FAST [get_ports ddr_addr[12]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[12]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[12]]
 ## ddr:0.a
set_property LOC AA12 [get_ports ddr_addr[13]]
set_property SLEW FAST [get_ports ddr_addr[13]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[13]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[13]]
 ## ddr:0.a
set_property LOC AH9 [get_ports ddr_addr[14]]
set_property SLEW FAST [get_ports ddr_addr[14]]
set_property VCCAUX_IO HIGH [get_ports ddr_addr[14]]
set_property IOSTANDARD SSTL15 [get_ports ddr_addr[14]]
 ## ddr:0.ba
set_property LOC AE9 [get_ports ddr_ba[0]]
set_property SLEW FAST [get_ports ddr_ba[0]]
set_property VCCAUX_IO HIGH [get_ports ddr_ba[0]]
set_property IOSTANDARD SSTL15 [get_ports ddr_ba[0]]
 ## ddr:0.ba
set_property LOC AB10 [get_ports ddr_ba[1]]
set_property SLEW FAST [get_ports ddr_ba[1]]
set_property VCCAUX_IO HIGH [get_ports ddr_ba[1]]
set_property IOSTANDARD SSTL15 [get_ports ddr_ba[1]]
 ## ddr:0.ba
set_property LOC AC11 [get_ports ddr_ba[2]]
set_property SLEW FAST [get_ports ddr_ba[2]]
set_property VCCAUX_IO HIGH [get_ports ddr_ba[2]]
set_property IOSTANDARD SSTL15 [get_ports ddr_ba[2]]
 ## ddr:0.ras_n
set_property LOC AE11 [get_ports ddr_ras_n]
set_property SLEW FAST [get_ports ddr_ras_n]
set_property VCCAUX_IO HIGH [get_ports ddr_ras_n]
set_property IOSTANDARD SSTL15 [get_ports ddr_ras_n]
 ## ddr:0.cas_n
set_property LOC AF11 [get_ports ddr_cas_n]
set_property SLEW FAST [get_ports ddr_cas_n]
set_property VCCAUX_IO HIGH [get_ports ddr_cas_n]
set_property IOSTANDARD SSTL15 [get_ports ddr_cas_n]
 ## ddr:0.we_n
set_property LOC AG13 [get_ports ddr_we_n]
set_property SLEW FAST [get_ports ddr_we_n]
set_property VCCAUX_IO HIGH [get_ports ddr_we_n]
set_property IOSTANDARD SSTL15 [get_ports ddr_we_n]
 ## ddr:0.cs_n
set_property LOC AH12 [get_ports ddr_cs_n]
set_property SLEW FAST [get_ports ddr_cs_n]
set_property VCCAUX_IO HIGH [get_ports ddr_cs_n]
set_property IOSTANDARD SSTL15 [get_ports ddr_cs_n]
 ## ddr:0.dm
set_property LOC AD4 [get_ports ddr_dm[0]]
set_property SLEW FAST [get_ports ddr_dm[0]]
set_property VCCAUX_IO HIGH [get_ports ddr_dm[0]]
set_property IOSTANDARD SSTL15 [get_ports ddr_dm[0]]
 ## ddr:0.dm
set_property LOC AF3 [get_ports ddr_dm[1]]
set_property SLEW FAST [get_ports ddr_dm[1]]
set_property VCCAUX_IO HIGH [get_ports ddr_dm[1]]
set_property IOSTANDARD SSTL15 [get_ports ddr_dm[1]]
 ## ddr:0.dm
set_property LOC AH4 [get_ports ddr_dm[2]]
set_property SLEW FAST [get_ports ddr_dm[2]]
set_property VCCAUX_IO HIGH [get_ports ddr_dm[2]]
set_property IOSTANDARD SSTL15 [get_ports ddr_dm[2]]
 ## ddr:0.dm
set_property LOC AF8 [get_ports ddr_dm[3]]
set_property SLEW FAST [get_ports ddr_dm[3]]
set_property VCCAUX_IO HIGH [get_ports ddr_dm[3]]
set_property IOSTANDARD SSTL15 [get_ports ddr_dm[3]]
 ## ddr:0.dq
set_property LOC AD3 [get_ports ddr_dq[0]]
set_property SLEW FAST [get_ports ddr_dq[0]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[0]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[0]]
 ## ddr:0.dq
set_property LOC AC2 [get_ports ddr_dq[1]]
set_property SLEW FAST [get_ports ddr_dq[1]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[1]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[1]]
 ## ddr:0.dq
set_property LOC AC1 [get_ports ddr_dq[2]]
set_property SLEW FAST [get_ports ddr_dq[2]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[2]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[2]]
 ## ddr:0.dq
set_property LOC AC5 [get_ports ddr_dq[3]]
set_property SLEW FAST [get_ports ddr_dq[3]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[3]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[3]]
 ## ddr:0.dq
set_property LOC AC4 [get_ports ddr_dq[4]]
set_property SLEW FAST [get_ports ddr_dq[4]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[4]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[4]]
 ## ddr:0.dq
set_property LOC AD6 [get_ports ddr_dq[5]]
set_property SLEW FAST [get_ports ddr_dq[5]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[5]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[5]]
 ## ddr:0.dq
set_property LOC AE6 [get_ports ddr_dq[6]]
set_property SLEW FAST [get_ports ddr_dq[6]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[6]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[6]]
 ## ddr:0.dq
set_property LOC AC7 [get_ports ddr_dq[7]]
set_property SLEW FAST [get_ports ddr_dq[7]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[7]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[7]]
 ## ddr:0.dq
set_property LOC AF2 [get_ports ddr_dq[8]]
set_property SLEW FAST [get_ports ddr_dq[8]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[8]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[8]]
 ## ddr:0.dq
set_property LOC AE1 [get_ports ddr_dq[9]]
set_property SLEW FAST [get_ports ddr_dq[9]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[9]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[9]]
 ## ddr:0.dq
set_property LOC AF1 [get_ports ddr_dq[10]]
set_property SLEW FAST [get_ports ddr_dq[10]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[10]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[10]]
 ## ddr:0.dq
set_property LOC AE4 [get_ports ddr_dq[11]]
set_property SLEW FAST [get_ports ddr_dq[11]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[11]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[11]]
 ## ddr:0.dq
set_property LOC AE3 [get_ports ddr_dq[12]]
set_property SLEW FAST [get_ports ddr_dq[12]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[12]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[12]]
 ## ddr:0.dq
set_property LOC AE5 [get_ports ddr_dq[13]]
set_property SLEW FAST [get_ports ddr_dq[13]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[13]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[13]]
 ## ddr:0.dq
set_property LOC AF5 [get_ports ddr_dq[14]]
set_property SLEW FAST [get_ports ddr_dq[14]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[14]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[14]]
 ## ddr:0.dq
set_property LOC AF6 [get_ports ddr_dq[15]]
set_property SLEW FAST [get_ports ddr_dq[15]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[15]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[15]]
 ## ddr:0.dq
set_property LOC AJ4 [get_ports ddr_dq[16]]
set_property SLEW FAST [get_ports ddr_dq[16]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[16]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[16]]
 ## ddr:0.dq
set_property LOC AH6 [get_ports ddr_dq[17]]
set_property SLEW FAST [get_ports ddr_dq[17]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[17]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[17]]
 ## ddr:0.dq
set_property LOC AH5 [get_ports ddr_dq[18]]
set_property SLEW FAST [get_ports ddr_dq[18]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[18]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[18]]
 ## ddr:0.dq
set_property LOC AH2 [get_ports ddr_dq[19]]
set_property SLEW FAST [get_ports ddr_dq[19]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[19]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[19]]
 ## ddr:0.dq
set_property LOC AJ2 [get_ports ddr_dq[20]]
set_property SLEW FAST [get_ports ddr_dq[20]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[20]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[20]]
 ## ddr:0.dq
set_property LOC AJ1 [get_ports ddr_dq[21]]
set_property SLEW FAST [get_ports ddr_dq[21]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[21]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[21]]
 ## ddr:0.dq
set_property LOC AK1 [get_ports ddr_dq[22]]
set_property SLEW FAST [get_ports ddr_dq[22]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[22]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[22]]
 ## ddr:0.dq
set_property LOC AJ3 [get_ports ddr_dq[23]]
set_property SLEW FAST [get_ports ddr_dq[23]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[23]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[23]]
 ## ddr:0.dq
set_property LOC AF7 [get_ports ddr_dq[24]]
set_property SLEW FAST [get_ports ddr_dq[24]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[24]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[24]]
 ## ddr:0.dq
set_property LOC AG7 [get_ports ddr_dq[25]]
set_property SLEW FAST [get_ports ddr_dq[25]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[25]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[25]]
 ## ddr:0.dq
set_property LOC AJ6 [get_ports ddr_dq[26]]
set_property SLEW FAST [get_ports ddr_dq[26]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[26]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[26]]
 ## ddr:0.dq
set_property LOC AK6 [get_ports ddr_dq[27]]
set_property SLEW FAST [get_ports ddr_dq[27]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[27]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[27]]
 ## ddr:0.dq
set_property LOC AJ8 [get_ports ddr_dq[28]]
set_property SLEW FAST [get_ports ddr_dq[28]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[28]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[28]]
 ## ddr:0.dq
set_property LOC AK8 [get_ports ddr_dq[29]]
set_property SLEW FAST [get_ports ddr_dq[29]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[29]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[29]]
 ## ddr:0.dq
set_property LOC AK5 [get_ports ddr_dq[30]]
set_property SLEW FAST [get_ports ddr_dq[30]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[30]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[30]]
 ## ddr:0.dq
set_property LOC AK4 [get_ports ddr_dq[31]]
set_property SLEW FAST [get_ports ddr_dq[31]]
set_property VCCAUX_IO HIGH [get_ports ddr_dq[31]]
set_property IOSTANDARD SSTL15_T_DCI [get_ports ddr_dq[31]]
 ## ddr:0.dqs_p
set_property LOC AD2 [get_ports ddr_dqs_p[0]]
set_property SLEW FAST [get_ports ddr_dqs_p[0]]
set_property VCCAUX_IO HIGH [get_ports ddr_dqs_p[0]]
set_property IOSTANDARD DIFF_SSTL15 [get_ports ddr_dqs_p[0]]
 ## ddr:0.dqs_p
set_property LOC AG4 [get_ports ddr_dqs_p[1]]
set_property SLEW FAST [get_ports ddr_dqs_p[1]]
set_property VCCAUX_IO HIGH [get_ports ddr_dqs_p[1]]
set_property IOSTANDARD DIFF_SSTL15 [get_ports ddr_dqs_p[1]]
 ## ddr:0.dqs_p
set_property LOC AG2 [get_ports ddr_dqs_p[2]]
set_property SLEW FAST [get_ports ddr_dqs_p[2]]
set_property VCCAUX_IO HIGH [get_ports ddr_dqs_p[2]]
set_property IOSTANDARD DIFF_SSTL15 [get_ports ddr_dqs_p[2]]
 ## ddr:0.dqs_p
set_property LOC AH7 [get_ports ddr_dqs_p[3]]
set_property SLEW FAST [get_ports ddr_dqs_p[3]]
set_property VCCAUX_IO HIGH [get_ports ddr_dqs_p[3]]
set_property IOSTANDARD DIFF_SSTL15 [get_ports ddr_dqs_p[3]]
 ## ddr:0.dqs_n
set_property LOC AD1 [get_ports ddr_dqs_n[0]]
set_property SLEW FAST [get_ports ddr_dqs_n[0]]
set_property VCCAUX_IO HIGH [get_ports ddr_dqs_n[0]]
set_property IOSTANDARD DIFF_SSTL15 [get_ports ddr_dqs_n[0]]
 ## ddr:0.dqs_n
set_property LOC AG3 [get_ports ddr_dqs_n[1]]
set_property SLEW FAST [get_ports ddr_dqs_n[1]]
set_property VCCAUX_IO HIGH [get_ports ddr_dqs_n[1]]
set_property IOSTANDARD DIFF_SSTL15 [get_ports ddr_dqs_n[1]]
 ## ddr:0.dqs_n
set_property LOC AH1 [get_ports ddr_dqs_n[2]]
set_property SLEW FAST [get_ports ddr_dqs_n[2]]
set_property VCCAUX_IO HIGH [get_ports ddr_dqs_n[2]]
set_property IOSTANDARD DIFF_SSTL15 [get_ports ddr_dqs_n[2]]
 ## ddr:0.dqs_n
set_property LOC AJ7 [get_ports ddr_dqs_n[3]]
set_property SLEW FAST [get_ports ddr_dqs_n[3]]
set_property VCCAUX_IO HIGH [get_ports ddr_dqs_n[3]]
set_property IOSTANDARD DIFF_SSTL15 [get_ports ddr_dqs_n[3]]
 ## ddr:0.clk_p
set_property LOC AB9 [get_ports ddr_ck_p]
set_property SLEW FAST [get_ports ddr_ck_p]
set_property VCCAUX_IO HIGH [get_ports ddr_ck_p]
set_property IOSTANDARD DIFF_SSTL15 [get_ports ddr_ck_p]
 ## ddr:0.clk_n
set_property LOC AC9 [get_ports ddr_ck_n]
set_property SLEW FAST [get_ports ddr_ck_n]
set_property VCCAUX_IO HIGH [get_ports ddr_ck_n]
set_property IOSTANDARD DIFF_SSTL15 [get_ports ddr_ck_n]
 ## ddr:0.cke
set_property LOC AJ9 [get_ports ddr_cke]
set_property SLEW FAST [get_ports ddr_cke]
set_property VCCAUX_IO HIGH [get_ports ddr_cke]
set_property IOSTANDARD SSTL15 [get_ports ddr_cke]
 ## ddr:0.odt
set_property LOC AK9 [get_ports ddr_odt]
set_property SLEW FAST [get_ports ddr_odt]
set_property VCCAUX_IO HIGH [get_ports ddr_odt]
set_property IOSTANDARD SSTL15 [get_ports ddr_odt]
 ## ddr:0.reset_n
set_property LOC AG5 [get_ports ddr_reset_n]
set_property SLEW FAST [get_ports ddr_reset_n]
set_property VCCAUX_IO HIGH [get_ports ddr_reset_n]
set_property IOSTANDARD LVCMOS15 [get_ports ddr_reset_n]
