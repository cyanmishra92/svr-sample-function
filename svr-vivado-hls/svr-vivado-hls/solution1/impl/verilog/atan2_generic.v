// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module atan2_generic (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        y_in,
        x_in,
        ap_return
);

parameter    ap_ST_fsm_state1 = 40'd1;
parameter    ap_ST_fsm_state2 = 40'd2;
parameter    ap_ST_fsm_state3 = 40'd4;
parameter    ap_ST_fsm_state4 = 40'd8;
parameter    ap_ST_fsm_state5 = 40'd16;
parameter    ap_ST_fsm_state6 = 40'd32;
parameter    ap_ST_fsm_state7 = 40'd64;
parameter    ap_ST_fsm_state8 = 40'd128;
parameter    ap_ST_fsm_state9 = 40'd256;
parameter    ap_ST_fsm_state10 = 40'd512;
parameter    ap_ST_fsm_state11 = 40'd1024;
parameter    ap_ST_fsm_state12 = 40'd2048;
parameter    ap_ST_fsm_state13 = 40'd4096;
parameter    ap_ST_fsm_state14 = 40'd8192;
parameter    ap_ST_fsm_state15 = 40'd16384;
parameter    ap_ST_fsm_state16 = 40'd32768;
parameter    ap_ST_fsm_state17 = 40'd65536;
parameter    ap_ST_fsm_state18 = 40'd131072;
parameter    ap_ST_fsm_state19 = 40'd262144;
parameter    ap_ST_fsm_state20 = 40'd524288;
parameter    ap_ST_fsm_state21 = 40'd1048576;
parameter    ap_ST_fsm_state22 = 40'd2097152;
parameter    ap_ST_fsm_state23 = 40'd4194304;
parameter    ap_ST_fsm_state24 = 40'd8388608;
parameter    ap_ST_fsm_state25 = 40'd16777216;
parameter    ap_ST_fsm_state26 = 40'd33554432;
parameter    ap_ST_fsm_state27 = 40'd67108864;
parameter    ap_ST_fsm_state28 = 40'd134217728;
parameter    ap_ST_fsm_state29 = 40'd268435456;
parameter    ap_ST_fsm_state30 = 40'd536870912;
parameter    ap_ST_fsm_state31 = 40'd1073741824;
parameter    ap_ST_fsm_state32 = 40'd2147483648;
parameter    ap_ST_fsm_state33 = 40'd4294967296;
parameter    ap_ST_fsm_state34 = 40'd8589934592;
parameter    ap_ST_fsm_state35 = 40'd17179869184;
parameter    ap_ST_fsm_state36 = 40'd34359738368;
parameter    ap_ST_fsm_state37 = 40'd68719476736;
parameter    ap_ST_fsm_state38 = 40'd137438953472;
parameter    ap_ST_fsm_state39 = 40'd274877906944;
parameter    ap_ST_fsm_state40 = 40'd549755813888;
parameter    ap_const_lv64_FFFFFFFFFFFFFFFF = 64'd18446744073709551615;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] y_in;
input  [63:0] x_in;
output  [63:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] ap_return;

(* fsm_encoding = "none" *) reg   [39:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] cordic_ctab_table_12_address0;
reg    cordic_ctab_table_12_ce0;
wire   [125:0] cordic_ctab_table_12_q0;
wire   [51:0] loc_V_4_fu_220_p1;
reg   [51:0] loc_V_4_reg_818;
wire   [0:0] tmp_s_fu_256_p2;
reg   [0:0] tmp_s_reg_823;
wire   [85:0] y_V_fu_274_p4;
reg   [85:0] y_V_reg_830;
wire   [0:0] tmp_18_fu_262_p2;
wire   [0:0] tmp_19_fu_284_p2;
reg   [0:0] tmp_19_reg_835;
wire   [0:0] isNeg_fu_290_p3;
reg   [0:0] isNeg_reg_840;
wire  signed [31:0] sh_assign_3_cast_fu_312_p1;
reg  signed [31:0] sh_assign_3_cast_reg_845;
wire   [85:0] sel_tmp_fu_326_p3;
reg   [85:0] sel_tmp_reg_850;
wire   [88:0] x_V_cast_fu_343_p1;
wire    ap_CS_fsm_state2;
wire   [88:0] p_Val2_22_ph_fu_372_p3;
wire   [6:0] k_fu_386_p2;
reg   [6:0] k_reg_868;
wire    ap_CS_fsm_state3;
wire   [88:0] y_s_V_fu_396_p2;
reg   [88:0] y_s_V_reg_873;
wire   [0:0] exitcond_i_fu_380_p2;
wire   [88:0] x_s_V_fu_402_p2;
reg   [88:0] x_s_V_reg_879;
wire   [85:0] tmp_28_fu_419_p2;
reg   [85:0] tmp_28_reg_893;
wire   [0:0] tmp_24_fu_413_p2;
wire   [0:0] tmp_fu_425_p3;
reg   [0:0] tmp_reg_898;
wire    ap_CS_fsm_state4;
wire   [88:0] tx_V_fu_443_p3;
reg   [88:0] tx_V_reg_903;
wire   [88:0] ty_V_fu_461_p3;
reg   [88:0] ty_V_reg_908;
wire   [84:0] p_Val2_42_fu_491_p2;
reg   [84:0] p_Val2_42_reg_913;
wire   [85:0] tz_V_fu_512_p3;
wire    ap_CS_fsm_state5;
wire   [0:0] isneg_fu_519_p3;
reg   [0:0] isneg_reg_923;
wire    ap_CS_fsm_state6;
wire  signed [85:0] tmp_187_s_fu_527_p3;
reg  signed [85:0] tmp_187_s_reg_929;
wire   [31:0] NZeros_i_1_i_fu_606_p3;
reg   [31:0] NZeros_i_1_i_reg_934;
wire   [10:0] tmp_81_fu_614_p1;
reg   [10:0] tmp_81_reg_940;
wire   [31:0] j_fu_618_p2;
reg   [31:0] j_reg_945;
wire    ap_CS_fsm_state7;
wire   [0:0] tmp_34_fu_623_p2;
reg   [0:0] tmp_34_reg_951;
wire   [0:0] tmp_82_fu_654_p2;
reg   [0:0] tmp_82_reg_956;
wire   [6:0] tmp_83_fu_660_p1;
reg   [6:0] tmp_83_reg_963;
wire   [6:0] tmp_84_fu_664_p1;
reg   [6:0] tmp_84_reg_971;
wire   [6:0] tmp_92_fu_714_p2;
reg   [6:0] tmp_92_reg_977;
wire    ap_CS_fsm_state8;
wire   [86:0] tmp_95_fu_724_p2;
reg   [86:0] tmp_95_reg_982;
wire   [0:0] tmp_39_fu_730_p2;
reg   [0:0] tmp_39_reg_987;
wire   [31:0] tmp_40_fu_735_p2;
reg   [31:0] tmp_40_reg_992;
wire   [63:0] dp_fu_804_p1;
wire    ap_CS_fsm_state9;
wire   [63:0] grp_fu_200_p2;
reg   [63:0] tmp_i_reg_1002;
wire    ap_CS_fsm_state39;
reg   [85:0] p_Val2_s_reg_141;
reg   [88:0] p_Val2_1_reg_153;
reg   [88:0] p_Val2_37_reg_163;
reg   [6:0] sh_assign_2_reg_173;
reg   [63:0] ap_phi_mux_p_s_phi_fu_188_p8;
reg   [63:0] p_s_reg_184;
wire    ap_CS_fsm_state40;
wire   [63:0] tmp_26_fu_408_p1;
wire   [63:0] p_Val2_33_fu_206_p1;
wire   [63:0] p_Val2_34_fu_224_p1;
wire   [10:0] loc_V_5_fu_228_p4;
wire   [11:0] rhs_V_fu_242_p1;
wire   [10:0] loc_V_fu_210_p4;
wire   [11:0] r_V_fu_246_p2;
wire   [11:0] lhs_V_fu_252_p1;
wire   [51:0] loc_V_6_fu_238_p1;
wire   [11:0] r_V_1_fu_268_p2;
wire   [11:0] tmp_20_fu_298_p2;
wire   [11:0] sh_assign_fu_304_p3;
wire   [85:0] tmp_24_cast_fu_316_p1;
wire   [85:0] tmp_23_fu_320_p2;
wire   [85:0] x_V_fu_334_p4;
wire   [88:0] y_V_cast_fu_347_p1;
wire   [88:0] tmp_21_fu_350_p1;
wire   [0:0] sel_tmp1_fu_362_p2;
wire   [0:0] sel_tmp2_fu_367_p2;
wire   [88:0] tmp_22_fu_353_p2;
wire   [88:0] sel_tmp_cast_fu_359_p1;
wire   [88:0] tmp_25_fu_392_p1;
wire   [88:0] r_V_3_i_fu_433_p2;
wire   [88:0] r_V_i_fu_438_p2;
wire   [88:0] r_V_i1_fu_456_p2;
wire   [88:0] r_V_2_i_fu_451_p2;
wire   [0:0] tmp_77_fu_479_p3;
wire   [84:0] tmp_31_cast_fu_487_p1;
wire   [84:0] p_Val2_2_cast_fu_469_p4;
wire   [85:0] p_Val2_43_cast_fu_497_p1;
wire   [85:0] r_V_4_i_fu_500_p2;
wire   [85:0] r_V_i2_fu_506_p2;
wire  signed [62:0] tmp_16_fu_534_p4;
wire  signed [63:0] p_Result_s_fu_544_p1;
reg   [63:0] tmp_29_fu_548_p3;
reg   [22:0] p_Result_5_fu_566_p4;
reg   [63:0] p_Result_39_fu_576_p5;
reg   [63:0] tmp_32_fu_588_p3;
wire   [31:0] tmp_79_fu_556_p1;
wire   [31:0] tmp_80_fu_596_p1;
wire   [0:0] tmp_31_fu_560_p2;
wire   [31:0] NZeros_fu_600_p2;
wire   [0:0] tmp_35_fu_628_p2;
wire   [31:0] tmp_36_fu_634_p2;
wire   [31:0] tmp_37_fu_640_p3;
wire   [31:0] tmp_38_fu_648_p2;
wire  signed [86:0] tmp_V_fu_668_p1;
wire   [6:0] tmp_86_fu_681_p2;
wire   [6:0] tmp_88_fu_690_p2;
reg   [86:0] tmp_85_fu_671_p4;
wire   [6:0] tmp_87_fu_685_p2;
wire   [6:0] tmp_89_fu_694_p3;
wire   [6:0] tmp_91_fu_708_p3;
wire   [86:0] tmp_90_fu_701_p3;
wire   [86:0] tmp_93_fu_720_p1;
wire   [10:0] p_Repl2_27_trunc_fu_740_p2;
wire   [86:0] tmp_94_fu_754_p1;
wire   [86:0] tmp_96_fu_757_p2;
wire   [86:0] p_Result_s_53_fu_763_p2;
wire   [31:0] tmp_41_fu_772_p3;
wire   [51:0] man_V_fu_768_p1;
wire   [51:0] tmp_42_fu_778_p1;
wire   [51:0] man_V_2_fu_782_p2;
wire   [63:0] p_Result_40_fu_745_p4;
wire   [63:0] p_Result_41_fu_788_p4;
wire   [63:0] res_V_fu_797_p3;
reg   [63:0] ap_return_preg;
reg   [39:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 40'd1;
#0 ap_return_preg = 64'd0;
end

atan2_generic_corqcK #(
    .DataWidth( 126 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
cordic_ctab_table_12_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(cordic_ctab_table_12_address0),
    .ce0(cordic_ctab_table_12_ce0),
    .q0(cordic_ctab_table_12_q0)
);

convert_ddiv_64nsrcU #(
    .ID( 1 ),
    .NUM_STAGE( 31 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
convert_ddiv_64nsrcU_U34(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(y_in),
    .din1(x_in),
    .ce(1'b1),
    .dout(grp_fu_200_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 64'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state40)) begin
            ap_return_preg <= ap_phi_mux_p_s_phi_fu_188_p8;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_Val2_1_reg_153 <= p_Val2_22_ph_fu_372_p3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        p_Val2_1_reg_153 <= ty_V_reg_908;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_Val2_37_reg_163 <= x_V_cast_fu_343_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        p_Val2_37_reg_163 <= tx_V_reg_903;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_Val2_s_reg_141 <= 86'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        p_Val2_s_reg_141 <= tz_V_fu_512_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        p_s_reg_184 <= dp_fu_804_p1;
    end else if ((((tmp_18_fu_262_p2 == 1'd1) & (tmp_s_fu_256_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state3) & (tmp_24_fu_413_p2 == 1'd1) & (exitcond_i_fu_380_p2 == 1'd1)))) begin
        p_s_reg_184 <= 64'd0;
    end else if (((tmp_s_reg_823 == 1'd1) & (1'b1 == ap_CS_fsm_state40))) begin
        p_s_reg_184 <= tmp_i_reg_1002;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        sh_assign_2_reg_173 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sh_assign_2_reg_173 <= k_reg_868;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        NZeros_i_1_i_reg_934 <= NZeros_i_1_i_fu_606_p3;
        isneg_reg_923 <= p_Val2_s_reg_141[32'd85];
        tmp_187_s_reg_929 <= tmp_187_s_fu_527_p3;
        tmp_81_reg_940 <= tmp_81_fu_614_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_18_fu_262_p2 == 1'd0) & (tmp_s_fu_256_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        isNeg_reg_840 <= r_V_1_fu_268_p2[32'd11];
        sel_tmp_reg_850 <= sel_tmp_fu_326_p3;
        sh_assign_3_cast_reg_845 <= sh_assign_3_cast_fu_312_p1;
        tmp_19_reg_835 <= tmp_19_fu_284_p2;
        y_V_reg_830[84 : 33] <= y_V_fu_274_p4[84 : 33];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        j_reg_945 <= j_fu_618_p2;
        tmp_34_reg_951 <= tmp_34_fu_623_p2;
        tmp_82_reg_956 <= tmp_82_fu_654_p2;
        tmp_83_reg_963 <= tmp_83_fu_660_p1;
        tmp_84_reg_971 <= tmp_84_fu_664_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        k_reg_868 <= k_fu_386_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        loc_V_4_reg_818 <= loc_V_4_fu_220_p1;
        tmp_s_reg_823 <= tmp_s_fu_256_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_Val2_42_reg_913 <= p_Val2_42_fu_491_p2;
        tmp_reg_898 <= p_Val2_1_reg_153[32'd88];
        tx_V_reg_903 <= tx_V_fu_443_p3;
        ty_V_reg_908 <= ty_V_fu_461_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_24_fu_413_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (exitcond_i_fu_380_p2 == 1'd1))) begin
        tmp_28_reg_893 <= tmp_28_fu_419_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_34_reg_951 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        tmp_39_reg_987 <= tmp_39_fu_730_p2;
        tmp_40_reg_992 <= tmp_40_fu_735_p2;
        tmp_92_reg_977 <= tmp_92_fu_714_p2;
        tmp_95_reg_982 <= tmp_95_fu_724_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        tmp_i_reg_1002 <= grp_fu_200_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_fu_380_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        x_s_V_reg_879 <= x_s_V_fu_402_p2;
        y_s_V_reg_873 <= y_s_V_fu_396_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state40) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_s_reg_823 == 1'd1) & (1'b1 == ap_CS_fsm_state40))) begin
        ap_phi_mux_p_s_phi_fu_188_p8 = tmp_i_reg_1002;
    end else begin
        ap_phi_mux_p_s_phi_fu_188_p8 = p_s_reg_184;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        ap_return = ap_phi_mux_p_s_phi_fu_188_p8;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cordic_ctab_table_12_ce0 = 1'b1;
    end else begin
        cordic_ctab_table_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((tmp_18_fu_262_p2 == 1'd1) & (tmp_s_fu_256_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state40;
            end else if (((tmp_18_fu_262_p2 == 1'd0) & (tmp_s_fu_256_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((tmp_s_fu_256_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (tmp_24_fu_413_p2 == 1'd1) & (exitcond_i_fu_380_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state40;
            end else if (((tmp_24_fu_413_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (exitcond_i_fu_380_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign NZeros_fu_600_p2 = (tmp_79_fu_556_p1 + tmp_80_fu_596_p1);

assign NZeros_i_1_i_fu_606_p3 = ((tmp_31_fu_560_p2[0:0] === 1'b1) ? NZeros_fu_600_p2 : tmp_79_fu_556_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state39 = ap_CS_fsm[32'd38];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state40 = ap_CS_fsm[32'd39];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign cordic_ctab_table_12_address0 = tmp_26_fu_408_p1;

assign dp_fu_804_p1 = res_V_fu_797_p3;

assign exitcond_i_fu_380_p2 = ((sh_assign_2_reg_173 == 7'd88) ? 1'b1 : 1'b0);

assign isNeg_fu_290_p3 = r_V_1_fu_268_p2[32'd11];

assign isneg_fu_519_p3 = p_Val2_s_reg_141[32'd85];

assign j_fu_618_p2 = (32'd86 - NZeros_i_1_i_reg_934);

assign k_fu_386_p2 = (sh_assign_2_reg_173 + 7'd1);

assign lhs_V_fu_252_p1 = loc_V_fu_210_p4;

assign loc_V_4_fu_220_p1 = p_Val2_33_fu_206_p1[51:0];

assign loc_V_5_fu_228_p4 = {{p_Val2_34_fu_224_p1[62:52]}};

assign loc_V_6_fu_238_p1 = p_Val2_34_fu_224_p1[51:0];

assign loc_V_fu_210_p4 = {{p_Val2_33_fu_206_p1[62:52]}};

assign man_V_2_fu_782_p2 = man_V_fu_768_p1 << tmp_42_fu_778_p1;

assign man_V_fu_768_p1 = p_Result_s_53_fu_763_p2[51:0];

assign p_Repl2_27_trunc_fu_740_p2 = ($signed(11'd1024) - $signed(tmp_81_reg_940));

integer ap_tvar_int_0;

always @ (p_Result_5_fu_566_p4) begin
    for (ap_tvar_int_0 = 64 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 63 | ap_tvar_int_0 < 41) begin
            p_Result_39_fu_576_p5[ap_tvar_int_0] = ap_const_lv64_FFFFFFFFFFFFFFFF[ap_tvar_int_0];
        end else if (63 - ap_tvar_int_0 >= 23) begin
            p_Result_39_fu_576_p5[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_39_fu_576_p5[ap_tvar_int_0] = p_Result_5_fu_566_p4[63 - ap_tvar_int_0];
        end
    end
end

assign p_Result_40_fu_745_p4 = {{{isneg_reg_923}, {p_Repl2_27_trunc_fu_740_p2}}, {52'd0}};

assign p_Result_41_fu_788_p4 = {{{isneg_reg_923}, {p_Repl2_27_trunc_fu_740_p2}}, {man_V_2_fu_782_p2}};

integer ap_tvar_int_1;

always @ (tmp_187_s_fu_527_p3) begin
    for (ap_tvar_int_1 = 23 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 22 - 0) begin
            p_Result_5_fu_566_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            p_Result_5_fu_566_p4[ap_tvar_int_1] = tmp_187_s_fu_527_p3[22 - ap_tvar_int_1];
        end
    end
end

assign p_Result_s_53_fu_763_p2 = (tmp_96_fu_757_p2 & tmp_95_reg_982);

assign p_Result_s_fu_544_p1 = tmp_16_fu_534_p4;

assign p_Val2_22_ph_fu_372_p3 = ((sel_tmp2_fu_367_p2[0:0] === 1'b1) ? tmp_22_fu_353_p2 : sel_tmp_cast_fu_359_p1);

assign p_Val2_2_cast_fu_469_p4 = {{cordic_ctab_table_12_q0[125:41]}};

assign p_Val2_33_fu_206_p1 = x_in;

assign p_Val2_34_fu_224_p1 = y_in;

assign p_Val2_42_fu_491_p2 = (tmp_31_cast_fu_487_p1 + p_Val2_2_cast_fu_469_p4);

assign p_Val2_43_cast_fu_497_p1 = p_Val2_42_reg_913;

assign r_V_1_fu_268_p2 = (lhs_V_fu_252_p1 - rhs_V_fu_242_p1);

assign r_V_2_i_fu_451_p2 = (p_Val2_1_reg_153 - x_s_V_reg_879);

assign r_V_3_i_fu_433_p2 = (p_Val2_37_reg_163 - y_s_V_reg_873);

assign r_V_4_i_fu_500_p2 = (p_Val2_s_reg_141 - p_Val2_43_cast_fu_497_p1);

assign r_V_fu_246_p2 = (12'd27 + rhs_V_fu_242_p1);

assign r_V_i1_fu_456_p2 = (p_Val2_1_reg_153 + x_s_V_reg_879);

assign r_V_i2_fu_506_p2 = (p_Val2_s_reg_141 + p_Val2_43_cast_fu_497_p1);

assign r_V_i_fu_438_p2 = (p_Val2_37_reg_163 + y_s_V_reg_873);

assign res_V_fu_797_p3 = ((tmp_34_reg_951[0:0] === 1'b1) ? p_Result_40_fu_745_p4 : p_Result_41_fu_788_p4);

assign rhs_V_fu_242_p1 = loc_V_5_fu_228_p4;

assign sel_tmp1_fu_362_p2 = (tmp_19_reg_835 ^ 1'd1);

assign sel_tmp2_fu_367_p2 = (sel_tmp1_fu_362_p2 & isNeg_reg_840);

assign sel_tmp_cast_fu_359_p1 = sel_tmp_reg_850;

assign sel_tmp_fu_326_p3 = ((tmp_19_fu_284_p2[0:0] === 1'b1) ? y_V_fu_274_p4 : tmp_23_fu_320_p2);

assign sh_assign_3_cast_fu_312_p1 = $signed(sh_assign_fu_304_p3);

assign sh_assign_fu_304_p3 = ((isNeg_fu_290_p3[0:0] === 1'b1) ? tmp_20_fu_298_p2 : r_V_1_fu_268_p2);

assign tmp_16_fu_534_p4 = {{tmp_187_s_fu_527_p3[85:23]}};

assign tmp_187_s_fu_527_p3 = ((isneg_fu_519_p3[0:0] === 1'b1) ? tmp_28_reg_893 : p_Val2_s_reg_141);

assign tmp_18_fu_262_p2 = ((loc_V_5_fu_228_p4 == 11'd0) ? 1'b1 : 1'b0);

assign tmp_19_fu_284_p2 = ((loc_V_fu_210_p4 == loc_V_5_fu_228_p4) ? 1'b1 : 1'b0);

assign tmp_20_fu_298_p2 = (12'd0 - r_V_1_fu_268_p2);

assign tmp_21_fu_350_p1 = $unsigned(sh_assign_3_cast_reg_845);

assign tmp_22_fu_353_p2 = y_V_cast_fu_347_p1 << tmp_21_fu_350_p1;

assign tmp_23_fu_320_p2 = y_V_fu_274_p4 >> tmp_24_cast_fu_316_p1;

assign tmp_24_cast_fu_316_p1 = $unsigned(sh_assign_3_cast_fu_312_p1);

assign tmp_24_fu_413_p2 = ((p_Val2_s_reg_141 == 86'd0) ? 1'b1 : 1'b0);

assign tmp_25_fu_392_p1 = sh_assign_2_reg_173;

assign tmp_26_fu_408_p1 = sh_assign_2_reg_173;

assign tmp_28_fu_419_p2 = (86'd0 - p_Val2_s_reg_141);

always @ (p_Result_s_fu_544_p1) begin
    if (p_Result_s_fu_544_p1[63] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd0;
    end else if (p_Result_s_fu_544_p1[62] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd1;
    end else if (p_Result_s_fu_544_p1[61] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd2;
    end else if (p_Result_s_fu_544_p1[60] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd3;
    end else if (p_Result_s_fu_544_p1[59] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd4;
    end else if (p_Result_s_fu_544_p1[58] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd5;
    end else if (p_Result_s_fu_544_p1[57] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd6;
    end else if (p_Result_s_fu_544_p1[56] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd7;
    end else if (p_Result_s_fu_544_p1[55] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd8;
    end else if (p_Result_s_fu_544_p1[54] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd9;
    end else if (p_Result_s_fu_544_p1[53] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd10;
    end else if (p_Result_s_fu_544_p1[52] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd11;
    end else if (p_Result_s_fu_544_p1[51] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd12;
    end else if (p_Result_s_fu_544_p1[50] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd13;
    end else if (p_Result_s_fu_544_p1[49] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd14;
    end else if (p_Result_s_fu_544_p1[48] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd15;
    end else if (p_Result_s_fu_544_p1[47] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd16;
    end else if (p_Result_s_fu_544_p1[46] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd17;
    end else if (p_Result_s_fu_544_p1[45] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd18;
    end else if (p_Result_s_fu_544_p1[44] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd19;
    end else if (p_Result_s_fu_544_p1[43] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd20;
    end else if (p_Result_s_fu_544_p1[42] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd21;
    end else if (p_Result_s_fu_544_p1[41] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd22;
    end else if (p_Result_s_fu_544_p1[40] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd23;
    end else if (p_Result_s_fu_544_p1[39] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd24;
    end else if (p_Result_s_fu_544_p1[38] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd25;
    end else if (p_Result_s_fu_544_p1[37] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd26;
    end else if (p_Result_s_fu_544_p1[36] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd27;
    end else if (p_Result_s_fu_544_p1[35] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd28;
    end else if (p_Result_s_fu_544_p1[34] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd29;
    end else if (p_Result_s_fu_544_p1[33] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd30;
    end else if (p_Result_s_fu_544_p1[32] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd31;
    end else if (p_Result_s_fu_544_p1[31] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd32;
    end else if (p_Result_s_fu_544_p1[30] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd33;
    end else if (p_Result_s_fu_544_p1[29] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd34;
    end else if (p_Result_s_fu_544_p1[28] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd35;
    end else if (p_Result_s_fu_544_p1[27] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd36;
    end else if (p_Result_s_fu_544_p1[26] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd37;
    end else if (p_Result_s_fu_544_p1[25] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd38;
    end else if (p_Result_s_fu_544_p1[24] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd39;
    end else if (p_Result_s_fu_544_p1[23] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd40;
    end else if (p_Result_s_fu_544_p1[22] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd41;
    end else if (p_Result_s_fu_544_p1[21] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd42;
    end else if (p_Result_s_fu_544_p1[20] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd43;
    end else if (p_Result_s_fu_544_p1[19] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd44;
    end else if (p_Result_s_fu_544_p1[18] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd45;
    end else if (p_Result_s_fu_544_p1[17] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd46;
    end else if (p_Result_s_fu_544_p1[16] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd47;
    end else if (p_Result_s_fu_544_p1[15] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd48;
    end else if (p_Result_s_fu_544_p1[14] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd49;
    end else if (p_Result_s_fu_544_p1[13] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd50;
    end else if (p_Result_s_fu_544_p1[12] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd51;
    end else if (p_Result_s_fu_544_p1[11] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd52;
    end else if (p_Result_s_fu_544_p1[10] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd53;
    end else if (p_Result_s_fu_544_p1[9] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd54;
    end else if (p_Result_s_fu_544_p1[8] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd55;
    end else if (p_Result_s_fu_544_p1[7] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd56;
    end else if (p_Result_s_fu_544_p1[6] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd57;
    end else if (p_Result_s_fu_544_p1[5] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd58;
    end else if (p_Result_s_fu_544_p1[4] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd59;
    end else if (p_Result_s_fu_544_p1[3] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd60;
    end else if (p_Result_s_fu_544_p1[2] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd61;
    end else if (p_Result_s_fu_544_p1[1] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd62;
    end else if (p_Result_s_fu_544_p1[0] == 1'b1) begin
        tmp_29_fu_548_p3 = 64'd63;
    end else begin
        tmp_29_fu_548_p3 = 64'd64;
    end
end

assign tmp_31_cast_fu_487_p1 = tmp_77_fu_479_p3;

assign tmp_31_fu_560_p2 = ((tmp_16_fu_534_p4 == 63'd0) ? 1'b1 : 1'b0);

always @ (p_Result_39_fu_576_p5) begin
    if (p_Result_39_fu_576_p5[63] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd0;
    end else if (p_Result_39_fu_576_p5[62] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd1;
    end else if (p_Result_39_fu_576_p5[61] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd2;
    end else if (p_Result_39_fu_576_p5[60] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd3;
    end else if (p_Result_39_fu_576_p5[59] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd4;
    end else if (p_Result_39_fu_576_p5[58] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd5;
    end else if (p_Result_39_fu_576_p5[57] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd6;
    end else if (p_Result_39_fu_576_p5[56] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd7;
    end else if (p_Result_39_fu_576_p5[55] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd8;
    end else if (p_Result_39_fu_576_p5[54] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd9;
    end else if (p_Result_39_fu_576_p5[53] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd10;
    end else if (p_Result_39_fu_576_p5[52] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd11;
    end else if (p_Result_39_fu_576_p5[51] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd12;
    end else if (p_Result_39_fu_576_p5[50] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd13;
    end else if (p_Result_39_fu_576_p5[49] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd14;
    end else if (p_Result_39_fu_576_p5[48] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd15;
    end else if (p_Result_39_fu_576_p5[47] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd16;
    end else if (p_Result_39_fu_576_p5[46] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd17;
    end else if (p_Result_39_fu_576_p5[45] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd18;
    end else if (p_Result_39_fu_576_p5[44] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd19;
    end else if (p_Result_39_fu_576_p5[43] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd20;
    end else if (p_Result_39_fu_576_p5[42] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd21;
    end else if (p_Result_39_fu_576_p5[41] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd22;
    end else if (p_Result_39_fu_576_p5[40] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd23;
    end else if (p_Result_39_fu_576_p5[39] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd24;
    end else if (p_Result_39_fu_576_p5[38] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd25;
    end else if (p_Result_39_fu_576_p5[37] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd26;
    end else if (p_Result_39_fu_576_p5[36] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd27;
    end else if (p_Result_39_fu_576_p5[35] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd28;
    end else if (p_Result_39_fu_576_p5[34] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd29;
    end else if (p_Result_39_fu_576_p5[33] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd30;
    end else if (p_Result_39_fu_576_p5[32] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd31;
    end else if (p_Result_39_fu_576_p5[31] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd32;
    end else if (p_Result_39_fu_576_p5[30] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd33;
    end else if (p_Result_39_fu_576_p5[29] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd34;
    end else if (p_Result_39_fu_576_p5[28] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd35;
    end else if (p_Result_39_fu_576_p5[27] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd36;
    end else if (p_Result_39_fu_576_p5[26] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd37;
    end else if (p_Result_39_fu_576_p5[25] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd38;
    end else if (p_Result_39_fu_576_p5[24] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd39;
    end else if (p_Result_39_fu_576_p5[23] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd40;
    end else if (p_Result_39_fu_576_p5[22] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd41;
    end else if (p_Result_39_fu_576_p5[21] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd42;
    end else if (p_Result_39_fu_576_p5[20] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd43;
    end else if (p_Result_39_fu_576_p5[19] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd44;
    end else if (p_Result_39_fu_576_p5[18] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd45;
    end else if (p_Result_39_fu_576_p5[17] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd46;
    end else if (p_Result_39_fu_576_p5[16] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd47;
    end else if (p_Result_39_fu_576_p5[15] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd48;
    end else if (p_Result_39_fu_576_p5[14] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd49;
    end else if (p_Result_39_fu_576_p5[13] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd50;
    end else if (p_Result_39_fu_576_p5[12] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd51;
    end else if (p_Result_39_fu_576_p5[11] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd52;
    end else if (p_Result_39_fu_576_p5[10] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd53;
    end else if (p_Result_39_fu_576_p5[9] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd54;
    end else if (p_Result_39_fu_576_p5[8] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd55;
    end else if (p_Result_39_fu_576_p5[7] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd56;
    end else if (p_Result_39_fu_576_p5[6] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd57;
    end else if (p_Result_39_fu_576_p5[5] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd58;
    end else if (p_Result_39_fu_576_p5[4] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd59;
    end else if (p_Result_39_fu_576_p5[3] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd60;
    end else if (p_Result_39_fu_576_p5[2] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd61;
    end else if (p_Result_39_fu_576_p5[1] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd62;
    end else if (p_Result_39_fu_576_p5[0] == 1'b1) begin
        tmp_32_fu_588_p3 = 64'd63;
    end else begin
        tmp_32_fu_588_p3 = 64'd64;
    end
end

assign tmp_34_fu_623_p2 = ((NZeros_i_1_i_reg_934 == 32'd86) ? 1'b1 : 1'b0);

assign tmp_35_fu_628_p2 = (($signed(j_fu_618_p2) > $signed(32'd52)) ? 1'b1 : 1'b0);

assign tmp_36_fu_634_p2 = ($signed(32'd4294967244) + $signed(j_fu_618_p2));

assign tmp_37_fu_640_p3 = ((tmp_35_fu_628_p2[0:0] === 1'b1) ? tmp_36_fu_634_p2 : 32'd0);

assign tmp_38_fu_648_p2 = ($signed(32'd4294967295) + $signed(j_fu_618_p2));

assign tmp_39_fu_730_p2 = (($signed(j_reg_945) < $signed(32'd52)) ? 1'b1 : 1'b0);

assign tmp_40_fu_735_p2 = (32'd52 - j_reg_945);

assign tmp_41_fu_772_p3 = ((tmp_39_reg_987[0:0] === 1'b1) ? tmp_40_reg_992 : 32'd0);

assign tmp_42_fu_778_p1 = tmp_41_fu_772_p3;

assign tmp_77_fu_479_p3 = cordic_ctab_table_12_q0[32'd40];

assign tmp_79_fu_556_p1 = tmp_29_fu_548_p3[31:0];

assign tmp_80_fu_596_p1 = tmp_32_fu_588_p3[31:0];

assign tmp_81_fu_614_p1 = NZeros_i_1_i_fu_606_p3[10:0];

assign tmp_82_fu_654_p2 = ((tmp_37_fu_640_p3 > tmp_38_fu_648_p2) ? 1'b1 : 1'b0);

assign tmp_83_fu_660_p1 = tmp_37_fu_640_p3[6:0];

assign tmp_84_fu_664_p1 = tmp_38_fu_648_p2[6:0];

integer ap_tvar_int_2;

always @ (tmp_V_fu_668_p1) begin
    for (ap_tvar_int_2 = 87 - 1; ap_tvar_int_2 >= 0; ap_tvar_int_2 = ap_tvar_int_2 - 1) begin
        if (ap_tvar_int_2 > 86 - 0) begin
            tmp_85_fu_671_p4[ap_tvar_int_2] = 1'b0;
        end else begin
            tmp_85_fu_671_p4[ap_tvar_int_2] = tmp_V_fu_668_p1[86 - ap_tvar_int_2];
        end
    end
end

assign tmp_86_fu_681_p2 = (tmp_83_reg_963 - tmp_84_reg_971);

assign tmp_87_fu_685_p2 = ($signed(7'd86) - $signed(tmp_83_reg_963));

assign tmp_88_fu_690_p2 = (tmp_84_reg_971 - tmp_83_reg_963);

assign tmp_89_fu_694_p3 = ((tmp_82_reg_956[0:0] === 1'b1) ? tmp_86_fu_681_p2 : tmp_88_fu_690_p2);

assign tmp_90_fu_701_p3 = ((tmp_82_reg_956[0:0] === 1'b1) ? tmp_85_fu_671_p4 : tmp_V_fu_668_p1);

assign tmp_91_fu_708_p3 = ((tmp_82_reg_956[0:0] === 1'b1) ? tmp_87_fu_685_p2 : tmp_83_reg_963);

assign tmp_92_fu_714_p2 = ($signed(7'd86) - $signed(tmp_89_fu_694_p3));

assign tmp_93_fu_720_p1 = tmp_91_fu_708_p3;

assign tmp_94_fu_754_p1 = tmp_92_reg_977;

assign tmp_95_fu_724_p2 = tmp_90_fu_701_p3 >> tmp_93_fu_720_p1;

assign tmp_96_fu_757_p2 = 87'd154742504910672534362390527 >> tmp_94_fu_754_p1;

assign tmp_V_fu_668_p1 = tmp_187_s_reg_929;

assign tmp_fu_425_p3 = p_Val2_1_reg_153[32'd88];

assign tmp_s_fu_256_p2 = ((r_V_fu_246_p2 < lhs_V_fu_252_p1) ? 1'b1 : 1'b0);

assign tx_V_fu_443_p3 = ((tmp_fu_425_p3[0:0] === 1'b1) ? r_V_3_i_fu_433_p2 : r_V_i_fu_438_p2);

assign ty_V_fu_461_p3 = ((tmp_fu_425_p3[0:0] === 1'b1) ? r_V_i1_fu_456_p2 : r_V_2_i_fu_451_p2);

assign tz_V_fu_512_p3 = ((tmp_reg_898[0:0] === 1'b1) ? r_V_4_i_fu_500_p2 : r_V_i2_fu_506_p2);

assign x_V_cast_fu_343_p1 = x_V_fu_334_p4;

assign x_V_fu_334_p4 = {{{{1'd1}, {loc_V_4_reg_818}}}, {33'd0}};

assign x_s_V_fu_402_p2 = $signed(p_Val2_37_reg_163) >>> tmp_25_fu_392_p1;

assign y_V_cast_fu_347_p1 = y_V_reg_830;

assign y_V_fu_274_p4 = {{{{1'd1}, {loc_V_6_fu_238_p1}}}, {33'd0}};

assign y_s_V_fu_396_p2 = $signed(p_Val2_1_reg_153) >>> tmp_25_fu_392_p1;

always @ (posedge ap_clk) begin
    y_V_reg_830[32:0] <= 33'b000000000000000000000000000000000;
    y_V_reg_830[85] <= 1'b1;
end

endmodule //atan2_generic
