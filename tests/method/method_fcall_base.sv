//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B ()
//
module B // "b_mod"
(
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: virt_meth0 (test_fcall_base.cpp:49:5) 

always_comb 
begin : virt_meth0     // test_fcall_base.cpp:49:5
    integer k;
    k = 2;    // Call of vf()
    `ifndef INTEL_SVA_OFF
        assert (k == 2) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
    k = 3;    // Call of vf()
    `ifndef INTEL_SVA_OFF
        assert (k == 3) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
    k = 3;    // Call of vf()
    `ifndef INTEL_SVA_OFF
        assert (k == 3) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: meth0 (test_fcall_base.cpp:60:5) 

always_comb 
begin : meth0     // test_fcall_base.cpp:60:5
    integer k;
    k = 2;    // Call of f()
    `ifndef INTEL_SVA_OFF
        assert (k == 2) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
    k = 2;    // Call of f()
    `ifndef INTEL_SVA_OFF
        assert (k == 2) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
    k = 2;    // Call of f()
    `ifndef INTEL_SVA_OFF
        assert (k == 2) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: virt_meth1 (test_fcall_base.cpp:108:5) 

always_comb 
begin : virt_meth1     // test_fcall_base.cpp:108:5
    integer k;
    k = 2;    // Call of vf()
    `ifndef INTEL_SVA_OFF
        assert (k == 2) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
    k = 3;    // Call of vf()
    `ifndef INTEL_SVA_OFF
        assert (k == 3) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
    k = 3;    // Call of vf()
    `ifndef INTEL_SVA_OFF
        assert (k == 3) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
    k = 3;    // Call of vf()
    `ifndef INTEL_SVA_OFF
        assert (k == 3) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
    k = 3;    // Call of vf()
    `ifndef INTEL_SVA_OFF
        assert (k == 3) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: meth1 (test_fcall_base.cpp:124:5) 

always_comb 
begin : meth1     // test_fcall_base.cpp:124:5
    integer k;
    k = 2;    // Call of f()
    `ifndef INTEL_SVA_OFF
        assert (k == 2) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
    k = 3;    // Call of f()
    `ifndef INTEL_SVA_OFF
        assert (k == 3) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
    k = 3;    // Call of f()
    `ifndef INTEL_SVA_OFF
        assert (k == 3) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
    k = 3;    // Call of f()
    `ifndef INTEL_SVA_OFF
        assert (k == 3) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
    k = 2;    // Call of f()
    `ifndef INTEL_SVA_OFF
        assert (k == 2) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: meth2 (test_fcall_base.cpp:140:5) 

always_comb 
begin : meth2     // test_fcall_base.cpp:140:5
    integer k;
    integer TMP_0;
    integer i;
    integer j;
    integer TMP_3;
    integer i_1;
    integer j_1;
    i = 1;
    // Call vff() begin
    j = 2;    // Call of vff()
    TMP_0 = j + 2;
    // Call vff() end
    k = TMP_0;
    `ifndef INTEL_SVA_OFF
        assert (k == 4) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
    i_1 = 1;
    // Call ff() begin
    j_1 = 2;    // Call of ff()
    TMP_3 = j_1 + 2;
    // Call ff() end
    k = TMP_3;
    `ifndef INTEL_SVA_OFF
        assert (k == 4) else $error("Assertion failed at test_fcall_base.cpp:15:20>");
    `endif // INTEL_SVA_OFF
end

endmodule


