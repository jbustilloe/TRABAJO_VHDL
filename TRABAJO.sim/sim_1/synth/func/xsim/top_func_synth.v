// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Dec 16 12:33:04 2022
// Host        : DESKTOP-GS26EEL running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/yagob/Documents/GitHub/TRABAJO_VHDL/TRABAJO.sim/sim_1/synth/func/xsim/top_func_synth.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module EDGEDTCTR
   (E,
    \sreg_reg[1]_0 ,
    \sreg_reg[0]_0 ,
    CLK_IBUF_BUFG,
    Q,
    \FSM_onehot_current_state_reg[4] ,
    \FSM_onehot_current_state_reg[4]_0 );
  output [0:0]E;
  output [0:0]\sreg_reg[1]_0 ;
  input \sreg_reg[0]_0 ;
  input CLK_IBUF_BUFG;
  input [0:0]Q;
  input \FSM_onehot_current_state_reg[4] ;
  input \FSM_onehot_current_state_reg[4]_0 ;

  wire CLK_IBUF_BUFG;
  wire [0:0]E;
  wire \FSM_onehot_current_state_reg[4] ;
  wire \FSM_onehot_current_state_reg[4]_0 ;
  wire [0:0]Q;
  wire [2:0]sreg;
  wire \sreg_reg[0]_0 ;
  wire [0:0]\sreg_reg[1]_0 ;

  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \FSM_onehot_current_state[4]_i_2 
       (.I0(sreg[2]),
        .I1(Q),
        .I2(sreg[0]),
        .I3(sreg[1]),
        .I4(\FSM_onehot_current_state_reg[4] ),
        .I5(\FSM_onehot_current_state_reg[4]_0 ),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\sreg_reg[0]_0 ),
        .Q(sreg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[0]),
        .Q(sreg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[1]),
        .Q(sreg[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000)) 
    \tiempo_inicio_reg[30]_i_1 
       (.I0(sreg[1]),
        .I1(sreg[0]),
        .I2(Q),
        .I3(sreg[2]),
        .O(\sreg_reg[1]_0 ));
endmodule

module SEMAFORO
   (\FSM_onehot_current_state_reg[3]_0 ,
    Q,
    \FSM_onehot_current_state[4]_i_10_0 ,
    LUZ_R_OBUF,
    CLK2_IBUF_BUFG,
    RESET_IBUF,
    E,
    CLK_IBUF_BUFG,
    \FSM_onehot_current_state[4]_i_49_0 );
  output \FSM_onehot_current_state_reg[3]_0 ;
  output [3:0]Q;
  output \FSM_onehot_current_state[4]_i_10_0 ;
  output [0:1]LUZ_R_OBUF;
  input CLK2_IBUF_BUFG;
  input RESET_IBUF;
  input [0:0]E;
  input CLK_IBUF_BUFG;
  input [0:0]\FSM_onehot_current_state[4]_i_49_0 ;

  wire CLK2_IBUF_BUFG;
  wire CLK_IBUF_BUFG;
  wire [0:0]E;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_2_n_0 ;
  wire \FSM_onehot_current_state[4]_i_10_0 ;
  wire \FSM_onehot_current_state[4]_i_10_n_0 ;
  wire \FSM_onehot_current_state[4]_i_11_n_0 ;
  wire \FSM_onehot_current_state[4]_i_13_n_0 ;
  wire \FSM_onehot_current_state[4]_i_1_n_0 ;
  wire \FSM_onehot_current_state[4]_i_21_n_0 ;
  wire \FSM_onehot_current_state[4]_i_22_n_0 ;
  wire \FSM_onehot_current_state[4]_i_23_n_0 ;
  wire \FSM_onehot_current_state[4]_i_24_n_0 ;
  wire \FSM_onehot_current_state[4]_i_25_n_0 ;
  wire \FSM_onehot_current_state[4]_i_26_n_0 ;
  wire \FSM_onehot_current_state[4]_i_27_n_0 ;
  wire \FSM_onehot_current_state[4]_i_28_n_0 ;
  wire \FSM_onehot_current_state[4]_i_29_n_0 ;
  wire \FSM_onehot_current_state[4]_i_30_n_0 ;
  wire \FSM_onehot_current_state[4]_i_31_n_0 ;
  wire \FSM_onehot_current_state[4]_i_32_n_0 ;
  wire \FSM_onehot_current_state[4]_i_33_n_0 ;
  wire \FSM_onehot_current_state[4]_i_34_n_0 ;
  wire \FSM_onehot_current_state[4]_i_35_n_0 ;
  wire \FSM_onehot_current_state[4]_i_36_n_0 ;
  wire \FSM_onehot_current_state[4]_i_37_n_0 ;
  wire \FSM_onehot_current_state[4]_i_38_n_0 ;
  wire \FSM_onehot_current_state[4]_i_39_n_0 ;
  wire \FSM_onehot_current_state[4]_i_40_n_0 ;
  wire \FSM_onehot_current_state[4]_i_41_n_0 ;
  wire \FSM_onehot_current_state[4]_i_42_n_0 ;
  wire \FSM_onehot_current_state[4]_i_43_n_0 ;
  wire \FSM_onehot_current_state[4]_i_44_n_0 ;
  wire \FSM_onehot_current_state[4]_i_45_n_0 ;
  wire \FSM_onehot_current_state[4]_i_46_n_0 ;
  wire \FSM_onehot_current_state[4]_i_47_n_0 ;
  wire \FSM_onehot_current_state[4]_i_48_n_0 ;
  wire [0:0]\FSM_onehot_current_state[4]_i_49_0 ;
  wire \FSM_onehot_current_state[4]_i_49_n_0 ;
  wire \FSM_onehot_current_state[4]_i_50_n_0 ;
  wire \FSM_onehot_current_state[4]_i_51_n_0 ;
  wire \FSM_onehot_current_state[4]_i_5_n_0 ;
  wire \FSM_onehot_current_state[4]_i_6_n_0 ;
  wire \FSM_onehot_current_state[4]_i_7_n_0 ;
  wire \FSM_onehot_current_state[4]_i_8_n_0 ;
  wire \FSM_onehot_current_state[4]_i_9_n_0 ;
  wire \FSM_onehot_current_state_reg[3]_0 ;
  wire \FSM_onehot_current_state_reg[4]_i_12_n_0 ;
  wire \FSM_onehot_current_state_reg[4]_i_12_n_1 ;
  wire \FSM_onehot_current_state_reg[4]_i_12_n_2 ;
  wire \FSM_onehot_current_state_reg[4]_i_12_n_3 ;
  wire \FSM_onehot_current_state_reg[4]_i_14_n_0 ;
  wire \FSM_onehot_current_state_reg[4]_i_14_n_1 ;
  wire \FSM_onehot_current_state_reg[4]_i_14_n_2 ;
  wire \FSM_onehot_current_state_reg[4]_i_14_n_3 ;
  wire \FSM_onehot_current_state_reg[4]_i_15_n_0 ;
  wire \FSM_onehot_current_state_reg[4]_i_15_n_1 ;
  wire \FSM_onehot_current_state_reg[4]_i_15_n_2 ;
  wire \FSM_onehot_current_state_reg[4]_i_15_n_3 ;
  wire \FSM_onehot_current_state_reg[4]_i_16_n_0 ;
  wire \FSM_onehot_current_state_reg[4]_i_16_n_1 ;
  wire \FSM_onehot_current_state_reg[4]_i_16_n_2 ;
  wire \FSM_onehot_current_state_reg[4]_i_16_n_3 ;
  wire \FSM_onehot_current_state_reg[4]_i_17_n_0 ;
  wire \FSM_onehot_current_state_reg[4]_i_17_n_1 ;
  wire \FSM_onehot_current_state_reg[4]_i_17_n_2 ;
  wire \FSM_onehot_current_state_reg[4]_i_17_n_3 ;
  wire \FSM_onehot_current_state_reg[4]_i_18_n_0 ;
  wire \FSM_onehot_current_state_reg[4]_i_18_n_1 ;
  wire \FSM_onehot_current_state_reg[4]_i_18_n_2 ;
  wire \FSM_onehot_current_state_reg[4]_i_18_n_3 ;
  wire \FSM_onehot_current_state_reg[4]_i_19_n_0 ;
  wire \FSM_onehot_current_state_reg[4]_i_19_n_1 ;
  wire \FSM_onehot_current_state_reg[4]_i_19_n_2 ;
  wire \FSM_onehot_current_state_reg[4]_i_19_n_3 ;
  wire \FSM_onehot_current_state_reg[4]_i_20_n_0 ;
  wire \FSM_onehot_current_state_reg[4]_i_20_n_2 ;
  wire \FSM_onehot_current_state_reg[4]_i_20_n_3 ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire [0:1]LUZ_R_OBUF;
  wire [3:0]Q;
  wire RESET_IBUF;
  wire \k[0]_i_2_n_0 ;
  wire [30:0]k_reg;
  wire \k_reg[0]_i_1_n_0 ;
  wire \k_reg[0]_i_1_n_1 ;
  wire \k_reg[0]_i_1_n_2 ;
  wire \k_reg[0]_i_1_n_3 ;
  wire \k_reg[0]_i_1_n_4 ;
  wire \k_reg[0]_i_1_n_5 ;
  wire \k_reg[0]_i_1_n_6 ;
  wire \k_reg[0]_i_1_n_7 ;
  wire \k_reg[12]_i_1_n_0 ;
  wire \k_reg[12]_i_1_n_1 ;
  wire \k_reg[12]_i_1_n_2 ;
  wire \k_reg[12]_i_1_n_3 ;
  wire \k_reg[12]_i_1_n_4 ;
  wire \k_reg[12]_i_1_n_5 ;
  wire \k_reg[12]_i_1_n_6 ;
  wire \k_reg[12]_i_1_n_7 ;
  wire \k_reg[16]_i_1_n_0 ;
  wire \k_reg[16]_i_1_n_1 ;
  wire \k_reg[16]_i_1_n_2 ;
  wire \k_reg[16]_i_1_n_3 ;
  wire \k_reg[16]_i_1_n_4 ;
  wire \k_reg[16]_i_1_n_5 ;
  wire \k_reg[16]_i_1_n_6 ;
  wire \k_reg[16]_i_1_n_7 ;
  wire \k_reg[20]_i_1_n_0 ;
  wire \k_reg[20]_i_1_n_1 ;
  wire \k_reg[20]_i_1_n_2 ;
  wire \k_reg[20]_i_1_n_3 ;
  wire \k_reg[20]_i_1_n_4 ;
  wire \k_reg[20]_i_1_n_5 ;
  wire \k_reg[20]_i_1_n_6 ;
  wire \k_reg[20]_i_1_n_7 ;
  wire \k_reg[24]_i_1_n_0 ;
  wire \k_reg[24]_i_1_n_1 ;
  wire \k_reg[24]_i_1_n_2 ;
  wire \k_reg[24]_i_1_n_3 ;
  wire \k_reg[24]_i_1_n_4 ;
  wire \k_reg[24]_i_1_n_5 ;
  wire \k_reg[24]_i_1_n_6 ;
  wire \k_reg[24]_i_1_n_7 ;
  wire \k_reg[28]_i_1_n_2 ;
  wire \k_reg[28]_i_1_n_3 ;
  wire \k_reg[28]_i_1_n_5 ;
  wire \k_reg[28]_i_1_n_6 ;
  wire \k_reg[28]_i_1_n_7 ;
  wire \k_reg[4]_i_1_n_0 ;
  wire \k_reg[4]_i_1_n_1 ;
  wire \k_reg[4]_i_1_n_2 ;
  wire \k_reg[4]_i_1_n_3 ;
  wire \k_reg[4]_i_1_n_4 ;
  wire \k_reg[4]_i_1_n_5 ;
  wire \k_reg[4]_i_1_n_6 ;
  wire \k_reg[4]_i_1_n_7 ;
  wire \k_reg[8]_i_1_n_0 ;
  wire \k_reg[8]_i_1_n_1 ;
  wire \k_reg[8]_i_1_n_2 ;
  wire \k_reg[8]_i_1_n_3 ;
  wire \k_reg[8]_i_1_n_4 ;
  wire \k_reg[8]_i_1_n_5 ;
  wire \k_reg[8]_i_1_n_6 ;
  wire \k_reg[8]_i_1_n_7 ;
  wire [30:0]next_state2;
  wire [30:0]tiempo_inicio;
  wire [2:2]\NLW_FSM_onehot_current_state_reg[4]_i_20_CO_UNCONNECTED ;
  wire [3:3]\NLW_FSM_onehot_current_state_reg[4]_i_20_O_UNCONNECTED ;
  wire [3:2]\NLW_k_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_k_reg[28]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\FSM_onehot_current_state[4]_i_10_0 ),
        .I1(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state[4]_i_10_0 ),
        .I2(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .O(\FSM_onehot_current_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(next_state2[4]),
        .I1(next_state2[5]),
        .I2(next_state2[3]),
        .I3(next_state2[2]),
        .I4(next_state2[0]),
        .I5(next_state2[1]),
        .O(\FSM_onehot_current_state[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(RESET_IBUF),
        .O(\FSM_onehot_current_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \FSM_onehot_current_state[4]_i_10 
       (.I0(next_state2[29]),
        .I1(next_state2[30]),
        .I2(next_state2[27]),
        .I3(next_state2[28]),
        .I4(\FSM_onehot_current_state_reg[4]_i_20_n_0 ),
        .I5(next_state2[6]),
        .O(\FSM_onehot_current_state[4]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0022C000)) 
    \FSM_onehot_current_state[4]_i_11 
       (.I0(Q[2]),
        .I1(next_state2[2]),
        .I2(Q[3]),
        .I3(next_state2[0]),
        .I4(next_state2[1]),
        .O(\FSM_onehot_current_state[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000030038080000)) 
    \FSM_onehot_current_state[4]_i_13 
       (.I0(Q[1]),
        .I1(next_state2[0]),
        .I2(next_state2[2]),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(next_state2[1]),
        .I5(next_state2[5]),
        .O(\FSM_onehot_current_state[4]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_21 
       (.I0(k_reg[7]),
        .I1(tiempo_inicio[7]),
        .O(\FSM_onehot_current_state[4]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_22 
       (.I0(k_reg[6]),
        .I1(tiempo_inicio[6]),
        .O(\FSM_onehot_current_state[4]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_23 
       (.I0(k_reg[5]),
        .I1(tiempo_inicio[5]),
        .O(\FSM_onehot_current_state[4]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_24 
       (.I0(k_reg[4]),
        .I1(tiempo_inicio[4]),
        .O(\FSM_onehot_current_state[4]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_25 
       (.I0(k_reg[3]),
        .I1(tiempo_inicio[3]),
        .O(\FSM_onehot_current_state[4]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_26 
       (.I0(k_reg[2]),
        .I1(tiempo_inicio[2]),
        .O(\FSM_onehot_current_state[4]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_27 
       (.I0(k_reg[1]),
        .I1(tiempo_inicio[1]),
        .O(\FSM_onehot_current_state[4]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_28 
       (.I0(k_reg[0]),
        .I1(tiempo_inicio[0]),
        .O(\FSM_onehot_current_state[4]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_29 
       (.I0(k_reg[23]),
        .I1(tiempo_inicio[23]),
        .O(\FSM_onehot_current_state[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_current_state[4]_i_3 
       (.I0(\FSM_onehot_current_state[4]_i_5_n_0 ),
        .I1(\FSM_onehot_current_state[4]_i_6_n_0 ),
        .I2(\FSM_onehot_current_state[4]_i_7_n_0 ),
        .I3(\FSM_onehot_current_state[4]_i_8_n_0 ),
        .I4(\FSM_onehot_current_state[4]_i_9_n_0 ),
        .I5(\FSM_onehot_current_state[4]_i_10_n_0 ),
        .O(\FSM_onehot_current_state[4]_i_10_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_30 
       (.I0(k_reg[22]),
        .I1(tiempo_inicio[22]),
        .O(\FSM_onehot_current_state[4]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_31 
       (.I0(k_reg[21]),
        .I1(tiempo_inicio[21]),
        .O(\FSM_onehot_current_state[4]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_32 
       (.I0(k_reg[20]),
        .I1(tiempo_inicio[20]),
        .O(\FSM_onehot_current_state[4]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_33 
       (.I0(k_reg[19]),
        .I1(tiempo_inicio[19]),
        .O(\FSM_onehot_current_state[4]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_34 
       (.I0(k_reg[18]),
        .I1(tiempo_inicio[18]),
        .O(\FSM_onehot_current_state[4]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_35 
       (.I0(k_reg[17]),
        .I1(tiempo_inicio[17]),
        .O(\FSM_onehot_current_state[4]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_36 
       (.I0(k_reg[16]),
        .I1(tiempo_inicio[16]),
        .O(\FSM_onehot_current_state[4]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_37 
       (.I0(k_reg[27]),
        .I1(tiempo_inicio[27]),
        .O(\FSM_onehot_current_state[4]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_38 
       (.I0(k_reg[26]),
        .I1(tiempo_inicio[26]),
        .O(\FSM_onehot_current_state[4]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_39 
       (.I0(k_reg[25]),
        .I1(tiempo_inicio[25]),
        .O(\FSM_onehot_current_state[4]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h220000F0)) 
    \FSM_onehot_current_state[4]_i_4 
       (.I0(\FSM_onehot_current_state[4]_i_11_n_0 ),
        .I1(next_state2[5]),
        .I2(\FSM_onehot_current_state[4]_i_13_n_0 ),
        .I3(next_state2[3]),
        .I4(next_state2[4]),
        .O(\FSM_onehot_current_state_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_40 
       (.I0(k_reg[24]),
        .I1(tiempo_inicio[24]),
        .O(\FSM_onehot_current_state[4]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_41 
       (.I0(k_reg[15]),
        .I1(tiempo_inicio[15]),
        .O(\FSM_onehot_current_state[4]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_42 
       (.I0(k_reg[14]),
        .I1(tiempo_inicio[14]),
        .O(\FSM_onehot_current_state[4]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_43 
       (.I0(k_reg[13]),
        .I1(tiempo_inicio[13]),
        .O(\FSM_onehot_current_state[4]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_44 
       (.I0(k_reg[12]),
        .I1(tiempo_inicio[12]),
        .O(\FSM_onehot_current_state[4]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_45 
       (.I0(k_reg[11]),
        .I1(tiempo_inicio[11]),
        .O(\FSM_onehot_current_state[4]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_46 
       (.I0(k_reg[10]),
        .I1(tiempo_inicio[10]),
        .O(\FSM_onehot_current_state[4]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_47 
       (.I0(k_reg[9]),
        .I1(tiempo_inicio[9]),
        .O(\FSM_onehot_current_state[4]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_48 
       (.I0(k_reg[8]),
        .I1(tiempo_inicio[8]),
        .O(\FSM_onehot_current_state[4]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_49 
       (.I0(k_reg[30]),
        .I1(tiempo_inicio[30]),
        .O(\FSM_onehot_current_state[4]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_current_state[4]_i_5 
       (.I0(next_state2[20]),
        .I1(next_state2[19]),
        .I2(next_state2[22]),
        .I3(next_state2[21]),
        .O(\FSM_onehot_current_state[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_50 
       (.I0(k_reg[29]),
        .I1(tiempo_inicio[29]),
        .O(\FSM_onehot_current_state[4]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_current_state[4]_i_51 
       (.I0(k_reg[28]),
        .I1(tiempo_inicio[28]),
        .O(\FSM_onehot_current_state[4]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_current_state[4]_i_6 
       (.I0(next_state2[24]),
        .I1(next_state2[23]),
        .I2(next_state2[26]),
        .I3(next_state2[25]),
        .O(\FSM_onehot_current_state[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_current_state[4]_i_7 
       (.I0(next_state2[12]),
        .I1(next_state2[11]),
        .I2(next_state2[14]),
        .I3(next_state2[13]),
        .O(\FSM_onehot_current_state[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_current_state[4]_i_8 
       (.I0(next_state2[16]),
        .I1(next_state2[15]),
        .I2(next_state2[18]),
        .I3(next_state2[17]),
        .O(\FSM_onehot_current_state[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_current_state[4]_i_9 
       (.I0(next_state2[8]),
        .I1(next_state2[7]),
        .I2(next_state2[10]),
        .I3(next_state2[9]),
        .O(\FSM_onehot_current_state[4]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "s1:00010,s2:00100,s4:10000,s0:00001,s3:01000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(\FSM_onehot_current_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s1:00010,s2:00100,s4:10000,s0:00001,s3:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(Q[0]),
        .Q(Q[1]),
        .R(\FSM_onehot_current_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s1:00010,s2:00100,s4:10000,s0:00001,s3:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(\FSM_onehot_current_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s1:00010,s2:00100,s4:10000,s0:00001,s3:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\FSM_onehot_current_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s1:00010,s2:00100,s4:10000,s0:00001,s3:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(Q[2]),
        .Q(Q[3]),
        .R(\FSM_onehot_current_state[4]_i_1_n_0 ));
  CARRY4 \FSM_onehot_current_state_reg[4]_i_12 
       (.CI(\FSM_onehot_current_state_reg[4]_i_14_n_0 ),
        .CO({\FSM_onehot_current_state_reg[4]_i_12_n_0 ,\FSM_onehot_current_state_reg[4]_i_12_n_1 ,\FSM_onehot_current_state_reg[4]_i_12_n_2 ,\FSM_onehot_current_state_reg[4]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(k_reg[7:4]),
        .O(next_state2[7:4]),
        .S({\FSM_onehot_current_state[4]_i_21_n_0 ,\FSM_onehot_current_state[4]_i_22_n_0 ,\FSM_onehot_current_state[4]_i_23_n_0 ,\FSM_onehot_current_state[4]_i_24_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[4]_i_14 
       (.CI(1'b0),
        .CO({\FSM_onehot_current_state_reg[4]_i_14_n_0 ,\FSM_onehot_current_state_reg[4]_i_14_n_1 ,\FSM_onehot_current_state_reg[4]_i_14_n_2 ,\FSM_onehot_current_state_reg[4]_i_14_n_3 }),
        .CYINIT(1'b1),
        .DI(k_reg[3:0]),
        .O(next_state2[3:0]),
        .S({\FSM_onehot_current_state[4]_i_25_n_0 ,\FSM_onehot_current_state[4]_i_26_n_0 ,\FSM_onehot_current_state[4]_i_27_n_0 ,\FSM_onehot_current_state[4]_i_28_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[4]_i_15 
       (.CI(\FSM_onehot_current_state_reg[4]_i_16_n_0 ),
        .CO({\FSM_onehot_current_state_reg[4]_i_15_n_0 ,\FSM_onehot_current_state_reg[4]_i_15_n_1 ,\FSM_onehot_current_state_reg[4]_i_15_n_2 ,\FSM_onehot_current_state_reg[4]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI(k_reg[23:20]),
        .O(next_state2[23:20]),
        .S({\FSM_onehot_current_state[4]_i_29_n_0 ,\FSM_onehot_current_state[4]_i_30_n_0 ,\FSM_onehot_current_state[4]_i_31_n_0 ,\FSM_onehot_current_state[4]_i_32_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[4]_i_16 
       (.CI(\FSM_onehot_current_state_reg[4]_i_18_n_0 ),
        .CO({\FSM_onehot_current_state_reg[4]_i_16_n_0 ,\FSM_onehot_current_state_reg[4]_i_16_n_1 ,\FSM_onehot_current_state_reg[4]_i_16_n_2 ,\FSM_onehot_current_state_reg[4]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI(k_reg[19:16]),
        .O(next_state2[19:16]),
        .S({\FSM_onehot_current_state[4]_i_33_n_0 ,\FSM_onehot_current_state[4]_i_34_n_0 ,\FSM_onehot_current_state[4]_i_35_n_0 ,\FSM_onehot_current_state[4]_i_36_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[4]_i_17 
       (.CI(\FSM_onehot_current_state_reg[4]_i_15_n_0 ),
        .CO({\FSM_onehot_current_state_reg[4]_i_17_n_0 ,\FSM_onehot_current_state_reg[4]_i_17_n_1 ,\FSM_onehot_current_state_reg[4]_i_17_n_2 ,\FSM_onehot_current_state_reg[4]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI(k_reg[27:24]),
        .O(next_state2[27:24]),
        .S({\FSM_onehot_current_state[4]_i_37_n_0 ,\FSM_onehot_current_state[4]_i_38_n_0 ,\FSM_onehot_current_state[4]_i_39_n_0 ,\FSM_onehot_current_state[4]_i_40_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[4]_i_18 
       (.CI(\FSM_onehot_current_state_reg[4]_i_19_n_0 ),
        .CO({\FSM_onehot_current_state_reg[4]_i_18_n_0 ,\FSM_onehot_current_state_reg[4]_i_18_n_1 ,\FSM_onehot_current_state_reg[4]_i_18_n_2 ,\FSM_onehot_current_state_reg[4]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI(k_reg[15:12]),
        .O(next_state2[15:12]),
        .S({\FSM_onehot_current_state[4]_i_41_n_0 ,\FSM_onehot_current_state[4]_i_42_n_0 ,\FSM_onehot_current_state[4]_i_43_n_0 ,\FSM_onehot_current_state[4]_i_44_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[4]_i_19 
       (.CI(\FSM_onehot_current_state_reg[4]_i_12_n_0 ),
        .CO({\FSM_onehot_current_state_reg[4]_i_19_n_0 ,\FSM_onehot_current_state_reg[4]_i_19_n_1 ,\FSM_onehot_current_state_reg[4]_i_19_n_2 ,\FSM_onehot_current_state_reg[4]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI(k_reg[11:8]),
        .O(next_state2[11:8]),
        .S({\FSM_onehot_current_state[4]_i_45_n_0 ,\FSM_onehot_current_state[4]_i_46_n_0 ,\FSM_onehot_current_state[4]_i_47_n_0 ,\FSM_onehot_current_state[4]_i_48_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[4]_i_20 
       (.CI(\FSM_onehot_current_state_reg[4]_i_17_n_0 ),
        .CO({\FSM_onehot_current_state_reg[4]_i_20_n_0 ,\NLW_FSM_onehot_current_state_reg[4]_i_20_CO_UNCONNECTED [2],\FSM_onehot_current_state_reg[4]_i_20_n_2 ,\FSM_onehot_current_state_reg[4]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,k_reg[30:28]}),
        .O({\NLW_FSM_onehot_current_state_reg[4]_i_20_O_UNCONNECTED [3],next_state2[30:28]}),
        .S({1'b1,\FSM_onehot_current_state[4]_i_49_n_0 ,\FSM_onehot_current_state[4]_i_50_n_0 ,\FSM_onehot_current_state[4]_i_51_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \LUZ_R_OBUF[0]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(LUZ_R_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \LUZ_R_OBUF[1]_inst_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(LUZ_R_OBUF[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \k[0]_i_2 
       (.I0(k_reg[0]),
        .O(\k[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[0] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[0]_i_1_n_7 ),
        .Q(k_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\k_reg[0]_i_1_n_0 ,\k_reg[0]_i_1_n_1 ,\k_reg[0]_i_1_n_2 ,\k_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\k_reg[0]_i_1_n_4 ,\k_reg[0]_i_1_n_5 ,\k_reg[0]_i_1_n_6 ,\k_reg[0]_i_1_n_7 }),
        .S({k_reg[3:1],\k[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[10] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[8]_i_1_n_5 ),
        .Q(k_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[11] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[8]_i_1_n_4 ),
        .Q(k_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[12] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[12]_i_1_n_7 ),
        .Q(k_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[12]_i_1 
       (.CI(\k_reg[8]_i_1_n_0 ),
        .CO({\k_reg[12]_i_1_n_0 ,\k_reg[12]_i_1_n_1 ,\k_reg[12]_i_1_n_2 ,\k_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[12]_i_1_n_4 ,\k_reg[12]_i_1_n_5 ,\k_reg[12]_i_1_n_6 ,\k_reg[12]_i_1_n_7 }),
        .S(k_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[13] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[12]_i_1_n_6 ),
        .Q(k_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[14] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[12]_i_1_n_5 ),
        .Q(k_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[15] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[12]_i_1_n_4 ),
        .Q(k_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[16] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[16]_i_1_n_7 ),
        .Q(k_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[16]_i_1 
       (.CI(\k_reg[12]_i_1_n_0 ),
        .CO({\k_reg[16]_i_1_n_0 ,\k_reg[16]_i_1_n_1 ,\k_reg[16]_i_1_n_2 ,\k_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[16]_i_1_n_4 ,\k_reg[16]_i_1_n_5 ,\k_reg[16]_i_1_n_6 ,\k_reg[16]_i_1_n_7 }),
        .S(k_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[17] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[16]_i_1_n_6 ),
        .Q(k_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[18] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[16]_i_1_n_5 ),
        .Q(k_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[19] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[16]_i_1_n_4 ),
        .Q(k_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[1] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[0]_i_1_n_6 ),
        .Q(k_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[20] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[20]_i_1_n_7 ),
        .Q(k_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[20]_i_1 
       (.CI(\k_reg[16]_i_1_n_0 ),
        .CO({\k_reg[20]_i_1_n_0 ,\k_reg[20]_i_1_n_1 ,\k_reg[20]_i_1_n_2 ,\k_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[20]_i_1_n_4 ,\k_reg[20]_i_1_n_5 ,\k_reg[20]_i_1_n_6 ,\k_reg[20]_i_1_n_7 }),
        .S(k_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[21] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[20]_i_1_n_6 ),
        .Q(k_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[22] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[20]_i_1_n_5 ),
        .Q(k_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[23] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[20]_i_1_n_4 ),
        .Q(k_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[24] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[24]_i_1_n_7 ),
        .Q(k_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[24]_i_1 
       (.CI(\k_reg[20]_i_1_n_0 ),
        .CO({\k_reg[24]_i_1_n_0 ,\k_reg[24]_i_1_n_1 ,\k_reg[24]_i_1_n_2 ,\k_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[24]_i_1_n_4 ,\k_reg[24]_i_1_n_5 ,\k_reg[24]_i_1_n_6 ,\k_reg[24]_i_1_n_7 }),
        .S(k_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[25] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[24]_i_1_n_6 ),
        .Q(k_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[26] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[24]_i_1_n_5 ),
        .Q(k_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[27] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[24]_i_1_n_4 ),
        .Q(k_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[28] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[28]_i_1_n_7 ),
        .Q(k_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[28]_i_1 
       (.CI(\k_reg[24]_i_1_n_0 ),
        .CO({\NLW_k_reg[28]_i_1_CO_UNCONNECTED [3:2],\k_reg[28]_i_1_n_2 ,\k_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_k_reg[28]_i_1_O_UNCONNECTED [3],\k_reg[28]_i_1_n_5 ,\k_reg[28]_i_1_n_6 ,\k_reg[28]_i_1_n_7 }),
        .S({1'b0,k_reg[30:28]}));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[29] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[28]_i_1_n_6 ),
        .Q(k_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[2] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[0]_i_1_n_5 ),
        .Q(k_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[30] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[28]_i_1_n_5 ),
        .Q(k_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[3] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[0]_i_1_n_4 ),
        .Q(k_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[4] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[4]_i_1_n_7 ),
        .Q(k_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[4]_i_1 
       (.CI(\k_reg[0]_i_1_n_0 ),
        .CO({\k_reg[4]_i_1_n_0 ,\k_reg[4]_i_1_n_1 ,\k_reg[4]_i_1_n_2 ,\k_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[4]_i_1_n_4 ,\k_reg[4]_i_1_n_5 ,\k_reg[4]_i_1_n_6 ,\k_reg[4]_i_1_n_7 }),
        .S(k_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[5] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[4]_i_1_n_6 ),
        .Q(k_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[6] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[4]_i_1_n_5 ),
        .Q(k_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[7] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[4]_i_1_n_4 ),
        .Q(k_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[8] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[8]_i_1_n_7 ),
        .Q(k_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[8]_i_1 
       (.CI(\k_reg[4]_i_1_n_0 ),
        .CO({\k_reg[8]_i_1_n_0 ,\k_reg[8]_i_1_n_1 ,\k_reg[8]_i_1_n_2 ,\k_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[8]_i_1_n_4 ,\k_reg[8]_i_1_n_5 ,\k_reg[8]_i_1_n_6 ,\k_reg[8]_i_1_n_7 }),
        .S(k_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[9] 
       (.C(CLK2_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_reg[8]_i_1_n_6 ),
        .Q(k_reg[9]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[0] 
       (.CLR(1'b0),
        .D(k_reg[0]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[10] 
       (.CLR(1'b0),
        .D(k_reg[10]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[11] 
       (.CLR(1'b0),
        .D(k_reg[11]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[12] 
       (.CLR(1'b0),
        .D(k_reg[12]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[13] 
       (.CLR(1'b0),
        .D(k_reg[13]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[14] 
       (.CLR(1'b0),
        .D(k_reg[14]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[15] 
       (.CLR(1'b0),
        .D(k_reg[15]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[16] 
       (.CLR(1'b0),
        .D(k_reg[16]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[17] 
       (.CLR(1'b0),
        .D(k_reg[17]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[18] 
       (.CLR(1'b0),
        .D(k_reg[18]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[19] 
       (.CLR(1'b0),
        .D(k_reg[19]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[1] 
       (.CLR(1'b0),
        .D(k_reg[1]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[20] 
       (.CLR(1'b0),
        .D(k_reg[20]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[21] 
       (.CLR(1'b0),
        .D(k_reg[21]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[22] 
       (.CLR(1'b0),
        .D(k_reg[22]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[23] 
       (.CLR(1'b0),
        .D(k_reg[23]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[24] 
       (.CLR(1'b0),
        .D(k_reg[24]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[25] 
       (.CLR(1'b0),
        .D(k_reg[25]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[26] 
       (.CLR(1'b0),
        .D(k_reg[26]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[27] 
       (.CLR(1'b0),
        .D(k_reg[27]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[28] 
       (.CLR(1'b0),
        .D(k_reg[28]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[29] 
       (.CLR(1'b0),
        .D(k_reg[29]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[2] 
       (.CLR(1'b0),
        .D(k_reg[2]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[30] 
       (.CLR(1'b0),
        .D(k_reg[30]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[3] 
       (.CLR(1'b0),
        .D(k_reg[3]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[4] 
       (.CLR(1'b0),
        .D(k_reg[4]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[5] 
       (.CLR(1'b0),
        .D(k_reg[5]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[6] 
       (.CLR(1'b0),
        .D(k_reg[6]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[7] 
       (.CLR(1'b0),
        .D(k_reg[7]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[8] 
       (.CLR(1'b0),
        .D(k_reg[8]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tiempo_inicio_reg[9] 
       (.CLR(1'b0),
        .D(k_reg[9]),
        .G(\FSM_onehot_current_state[4]_i_49_0 ),
        .GE(1'b1),
        .Q(tiempo_inicio[9]));
endmodule

module SYNCHRNZR
   (\sreg_reg[0]_0 ,
    CLK_IBUF_BUFG,
    SENSOR_IBUF);
  output \sreg_reg[0]_0 ;
  input CLK_IBUF_BUFG;
  input SENSOR_IBUF;

  wire CLK_IBUF_BUFG;
  wire SENSOR_IBUF;
  wire \sreg_reg[0]_0 ;
  wire \sreg_reg_n_0_[0] ;

  (* srl_name = "\Inst_syncro/s_out_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    s_out_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK_IBUF_BUFG),
        .D(\sreg_reg_n_0_[0] ),
        .Q(\sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(SENSOR_IBUF),
        .Q(\sreg_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module top
   (LUZ_R,
    LUZ_V,
    LUZ_A,
    SENSOR,
    CLK,
    RESET,
    CLK2);
  output [0:1]LUZ_R;
  output [0:1]LUZ_V;
  output [0:1]LUZ_A;
  input SENSOR;
  input CLK;
  input RESET;
  input CLK2;

  wire CLK;
  wire CLK2;
  wire CLK2_IBUF;
  wire CLK2_IBUF_BUFG;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire Inst_P3_n_0;
  wire Inst_P3_n_5;
  wire Inst_contr_n_0;
  wire Inst_syncro_n_0;
  wire [0:1]LUZ_A;
  wire [0:1]LUZ_A_OBUF;
  wire [0:1]LUZ_R;
  wire [0:1]LUZ_R_OBUF;
  wire [0:1]LUZ_V;
  wire [0:1]LUZ_V_OBUF;
  wire RESET;
  wire RESET_IBUF;
  wire SENSOR;
  wire SENSOR_IBUF;
  wire tiempo_inicio__0;

  BUFG CLK2_IBUF_BUFG_inst
       (.I(CLK2_IBUF),
        .O(CLK2_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    CLK2_IBUF_inst
       (.I(CLK2),
        .O(CLK2_IBUF));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  SEMAFORO Inst_P3
       (.CLK2_IBUF_BUFG(CLK2_IBUF_BUFG),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .E(Inst_contr_n_0),
        .\FSM_onehot_current_state[4]_i_10_0 (Inst_P3_n_5),
        .\FSM_onehot_current_state[4]_i_49_0 (tiempo_inicio__0),
        .\FSM_onehot_current_state_reg[3]_0 (Inst_P3_n_0),
        .LUZ_R_OBUF(LUZ_R_OBUF),
        .Q({LUZ_A_OBUF[1],LUZ_V_OBUF[1],LUZ_A_OBUF[0],LUZ_V_OBUF[0]}),
        .RESET_IBUF(RESET_IBUF));
  EDGEDTCTR Inst_contr
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .E(Inst_contr_n_0),
        .\FSM_onehot_current_state_reg[4] (Inst_P3_n_5),
        .\FSM_onehot_current_state_reg[4]_0 (Inst_P3_n_0),
        .Q(LUZ_V_OBUF[0]),
        .\sreg_reg[0]_0 (Inst_syncro_n_0),
        .\sreg_reg[1]_0 (tiempo_inicio__0));
  SYNCHRNZR Inst_syncro
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .SENSOR_IBUF(SENSOR_IBUF),
        .\sreg_reg[0]_0 (Inst_syncro_n_0));
  OBUF \LUZ_A_OBUF[0]_inst 
       (.I(LUZ_A_OBUF[0]),
        .O(LUZ_A[0]));
  OBUF \LUZ_A_OBUF[1]_inst 
       (.I(LUZ_A_OBUF[1]),
        .O(LUZ_A[1]));
  OBUF \LUZ_R_OBUF[0]_inst 
       (.I(LUZ_R_OBUF[0]),
        .O(LUZ_R[0]));
  OBUF \LUZ_R_OBUF[1]_inst 
       (.I(LUZ_R_OBUF[1]),
        .O(LUZ_R[1]));
  OBUF \LUZ_V_OBUF[0]_inst 
       (.I(LUZ_V_OBUF[0]),
        .O(LUZ_V[0]));
  OBUF \LUZ_V_OBUF[1]_inst 
       (.I(LUZ_V_OBUF[1]),
        .O(LUZ_V[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    RESET_IBUF_inst
       (.I(RESET),
        .O(RESET_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    SENSOR_IBUF_inst
       (.I(SENSOR),
        .O(SENSOR_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
