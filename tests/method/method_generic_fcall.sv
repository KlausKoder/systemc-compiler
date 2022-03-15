//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: top ()
//
module top // "t_inst"
(
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: test_method (test_generic_fcall.cpp:60:5) 

always_comb 
begin : test_method     // test_generic_fcall.cpp:60:5
    integer x;
    integer y;
    integer z;
    integer unsigned k;
    integer unsigned TMP_8;
    logic signed [1:0] i2;
    x = 0;    // Call of getZero()
    y = 1;    // Call of getOne()
    z = 2;    // Call of sum_plus_1()
    k = 3;    // Call of generate()
    // Call increment() begin
    TMP_8 = ++k;
    // Call increment() end
    x = TMP_8;
    i2 = 0;
    i2 = -2'sd1;
end

endmodule


