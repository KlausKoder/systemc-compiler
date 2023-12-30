/******************************************************************************
* Copyright (c) 2020, Intel Corporation. All rights reserved.
* 
* SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception.
* 
*****************************************************************************/

//
// Created by ripopov on 7/14/18.
//

#include <systemc.h>
#include <sct_assert.h>

SC_MODULE(top) {

    sc_in<bool> clk;
    sc_signal<bool> nrst;

    SC_CTOR(top) {
        SC_CTHREAD(test_thread, clk.pos());
        async_reset_signal_is(nrst, 0);
    }

    void wait_void () {

        wait();
        return;

    }

    int wait_r1() {
        wait();
        return 1;
    }

    int wait_r0() {
        wait();
        return 0;
    }

    void test_thread() {

        while (1) {

            wait_void();

            bool y = wait_r1();

            sct_assert_const( y == true);

            bool x = wait_r0() || wait_r1();
            sct_assert_const( x == true);

            bool z = wait_r0() || wait_r0();
            //sct_assert_const( x == false);
        }

    }

};

int sc_main (int argc, char ** argv ) {

    sc_clock clk{"clk", 10, SC_NS};
    top top_inst{"top_inst"};
    top_inst.clk(clk);
    sc_start(100, SC_NS);

    return 0;
}
