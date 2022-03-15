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
// Module: A (test_complex_method.cpp:441:5)
//
module A // "b_mod.a_mod"
(
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: record_name_coll (test_complex_method.cpp:76:5) 

always_comb 
begin : record_name_coll     // test_complex_method.cpp:76:5
    logic r_a;
    integer r_b;
    logic TMP_0_a;
    integer TMP_0_b;
    logic r_a_1;
    integer r_b_1;
    // Call g3() begin
    r_a = 1;
    TMP_0_a = r_a; TMP_0_b = r_b;
    // Call g3() end
    r_a_1 = TMP_0_a; r_b_1 = TMP_0_b;
    r_a_1 = 0;
end

//------------------------------------------------------------------------------
// Method process: record_local_complex (test_complex_method.cpp:124:5) 

always_comb 
begin : record_local_complex     // test_complex_method.cpp:124:5
    integer r1_x;
    logic signed [1:0] r1_y;
    logic [15:0] r1_var16;
    logic r1_flag;
    logic [31:0] r1_var32;
    integer r2_x;
    logic signed [1:0] r2_y;
    logic [15:0] r2_var16;
    logic r2_flag;
    logic [31:0] r2_var32;
    integer r3_x;
    logic signed [1:0] r3_y;
    logic [15:0] r3_var16;
    logic r3_flag;
    logic [31:0] r3_var32;
    r1_y = 1;
    r1_var16 = 0;
    r1_flag = 0;
    r1_var32 = 0;
    // Call Rec1() begin
    r1_x = 1;
    // Call Rec1() end
    r2_y = 1;
    r2_var16 = 0;
    r2_flag = 0;
    r2_var32 = 0;
    // Call Rec1() begin
    r2_x = 1;
    // Call Rec1() end
    r3_y = 1;
    r3_var16 = 0;
    r3_flag = 0;
    r3_var32 = 0;
    // Call Rec1() begin
    r3_x = 1;
    // Call Rec1() end
    r1_x = r1_y + 2;
    r2_x = r1_y + r2_y;
    r1_var32 = 'hFFFF;
    r2_var32 = 32'hA0A0A0A0;
    r3_x = r1_x | r2_x;
    r3_flag = 0;
    for (integer i = 0; i < 10; i++)
    begin
        r2_var16[i] = r1_var32[i * 2];
    end
end

//------------------------------------------------------------------------------
// Method process: record_local_complex2 (test_complex_method.cpp:175:5) 

always_comb 
begin : record_local_complex2     // test_complex_method.cpp:175:5
    integer x_;
    integer y_;
    integer c_x;
    logic [31:0] c_y;
    logic [7:0] c_z;
    integer c_t;
    integer c_tt;
    integer c_s;
    integer d_x;
    logic [31:0] d_y;
    logic [7:0] d_z;
    integer d_t;
    integer d_tt;
    integer d_s;
    integer e_x;
    logic [31:0] e_y;
    logic [7:0] e_z;
    integer e_t;
    integer e_tt;
    integer e_s;
    integer a;
    x_ = 2; y_ = 3;
    c_x = x_;
    c_y = 0;
    c_z = 3;
    c_t = 4;
    c_tt = 5;
    // Call Rec2() begin
    c_y = y_ - 1;
    // Call Rec2() end
    x_ = 3; y_ = 1;
    d_x = x_;
    d_y = 0;
    d_z = 3;
    d_t = 4;
    d_tt = 5;
    // Call Rec2() begin
    d_y = y_ + x_;
    // Call Rec2() end
    e_x = 1;
    e_y = 0;
    e_z = 3;
    e_t = 4;
    e_tt = 5;
    c_x = 4;
    d_x = c_x + e_x;
    a = 2;    // Call of f()
end

//------------------------------------------------------------------------------
// Method process: record_fcall1 (test_complex_method.cpp:231:5) 

always_comb 
begin : record_fcall1     // test_complex_method.cpp:231:5
    logic s_a;
    integer s_b;
    logic b;
    logic b_1;
    s_b = 1;
    // Call f1() begin
    b = s_a;
    s_b = 2;
    // Call f1() end
    // Call f1_const() begin
    b_1 = !s_a;
    // Call f1_const() end
end

//------------------------------------------------------------------------------
// Method process: record_fcall2 (test_complex_method.cpp:242:5) 

always_comb 
begin : record_fcall2     // test_complex_method.cpp:242:5
    logic s_a;
    integer s_b;
    logic par_a;
    integer par_b;
    logic b;
    s_b = 1;
    par_a = s_a; par_b = s_b;
    // Call f2() begin
    b = par_a;
    par_b = 2;
    // Call f2() end
end

//------------------------------------------------------------------------------
// Method process: record_fcall3 (test_complex_method.cpp:270:5) 

// Process-local variables
logic rec_a;

always_comb 
begin : record_fcall3     // test_complex_method.cpp:270:5
    integer rec_a_1;
    logic s_a;
    integer s_b;
    logic r_a;
    integer r_b;
    logic s1_a;
    integer s1_b;
    logic s2_a;
    integer s2_b;
    logic flag;
    logic flag2;
    logic TMP_0;
    logic b;
    integer s1_1;
    integer rec_a_2;
    rec_a = 1;
    rec_a_1 = 5;
    // Call seta() begin
    s1_a = 1;
    // Call seta() end
    // Call seta() begin
    s2_a = 1;
    // Call seta() end
    // Call f3ref() begin
    b = s1_a;
    s2_a = b;
    TMP_0 = 1;
    // Call f3ref() end
    flag = TMP_0;
    s1_a = 0;
    s1_1 = 1;
    rec_a_2 = 10;
end

//------------------------------------------------------------------------------
// Method process: record_in_bracket (test_complex_method.cpp:319:5) 

always_comb 
begin : record_in_bracket     // test_complex_method.cpp:319:5
    logic s_a;
    integer s_b;
    s_b = 1;
end

//------------------------------------------------------------------------------
// Method process: record_return1 (test_complex_method.cpp:325:5) 

always_comb 
begin : record_return1     // test_complex_method.cpp:325:5
    logic r_a;
    integer r_b;
    logic TMP_0_a;
    integer TMP_0_b;
    logic s_a;
    integer s_b;
    logic r_a_1;
    integer r_b_1;
    logic TMP_1_a;
    integer TMP_1_b;
    logic r_a_2;
    integer r_b_2;
    // Call g1() begin
    r_b = 2;
    TMP_0_a = r_a; TMP_0_b = r_b;
    // Call g1() end
    s_a = TMP_0_a; s_b = TMP_0_b;
    // Call g2() begin
    r_b_1 = 2;
    TMP_1_a = r_a_1; TMP_1_b = r_b_1;
    // Call g2() end
    r_a_2 = TMP_1_a; r_b_2 = TMP_1_b;
end

//------------------------------------------------------------------------------
// Method process: record_assign1 (test_complex_method.cpp:338:5) 

always_comb 
begin : record_assign1     // test_complex_method.cpp:338:5
    logic r_a;
    integer r_b;
    logic s_a;
    integer s_b;
    s_a = r_a; s_b = r_b;
    r_a = s_a; r_b = s_b;
end

endmodule


