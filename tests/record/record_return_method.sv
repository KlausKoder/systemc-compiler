//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(

);

endmodule



//==============================================================================
//
// Module: A (test_return_method.cpp:79:5)
//
module A // "b_mod.a_mod"
(
);

// Variables generated for SystemC signals
logic dummy;

//------------------------------------------------------------------------------
// Method process: record_return1 (test_return_method.cpp:46:5) 

always_comb 
begin : record_return1     // test_return_method.cpp:46:5
    logic r_a;
    integer r_b;
    logic TMP_0_a;
    integer TMP_0_b;
    logic s_a;
    integer s_b;
    integer i;
    // Call f() begin
    r_b = 2;
    TMP_0_a = r_a; TMP_0_b = r_b;
    // Call f() end
    s_a = TMP_0_a; s_b = TMP_0_b;
    i = s_b + 1;
end

//------------------------------------------------------------------------------
// Method process: record_return2 (test_return_method.cpp:59:5) 

always_comb 
begin : record_return2     // test_return_method.cpp:59:5
    logic val1;
    integer val2;
    logic r_a;
    integer r_b;
    logic TMP_0_a;
    integer TMP_0_b;
    logic s_a;
    integer s_b;
    val1 = 1; val2 = 2;
    // Call g() begin
    r_a = val1;
    r_b = val2;
    TMP_0_a = r_a; TMP_0_b = r_b;
    // Call g() end
    s_a = TMP_0_a; s_b = TMP_0_b;
    s_b = 1;
end

//------------------------------------------------------------------------------
// Method process: record_return3 (test_return_method.cpp:67:5) 

always_comb 
begin : record_return3     // test_return_method.cpp:67:5
    logic s_a;
    integer s_b;
    logic r_a;
    integer r_b;
    logic TMP_0_a;
    integer TMP_0_b;
    integer i;
    if (dummy)
    begin
        // Call f() begin
        r_b = 2;
        TMP_0_a = r_a; TMP_0_b = r_b;
        // Call f() end
        s_a = TMP_0_a; s_b = TMP_0_b;
    end
    i = s_b;
end

endmodule


