// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _addsub_HH_
#define _addsub_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct addsub : public sc_module {
    // Port declarations 5
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<43> > a_V;
    sc_in< sc_lv<43> > b_V;
    sc_in< sc_logic > add;
    sc_out< sc_lv<44> > ap_return;


    // Module declarations
    addsub(sc_module_name name);
    SC_HAS_PROCESS(addsub);

    ~addsub();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<44> > tmp_fu_34_p1;
    sc_signal< sc_lv<44> > tmp_s_fu_38_p1;
    sc_signal< sc_lv<1> > r_V_10_fu_54_p0;
    sc_signal< sc_lv<44> > r_V_fu_48_p2;
    sc_signal< sc_lv<44> > r_V_2_fu_42_p2;
    static const sc_logic ap_const_logic_1;
    static const bool ap_const_boolean_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_ready();
    void thread_ap_return();
    void thread_r_V_10_fu_54_p0();
    void thread_r_V_2_fu_42_p2();
    void thread_r_V_fu_48_p2();
    void thread_tmp_fu_34_p1();
    void thread_tmp_s_fu_38_p1();
};

}

using namespace ap_rtl;

#endif
