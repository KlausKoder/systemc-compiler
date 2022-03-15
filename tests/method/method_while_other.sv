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

// Variables generated for SystemC signals
logic a;
logic b;
logic c;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .a(a),
  .b(b),
  .c(c)
);

endmodule



//==============================================================================
//
// Module: A (test_while_other.cpp:171:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: while_sc_int_type (test_while_other.cpp:44:5) 

always_comb 
begin : while_sc_int_type     // test_while_other.cpp:44:5
    integer k_1;
    logic signed [2:0] i;
    logic signed [3:0] j;
    k_1 = 0;
    i = 0;
    j = 0;
    while ((i < 2) && (j <= 3) || (k_1 == 5))
    begin
        k_1 = k_1 + 1;
        i++;
        j++;
    end
end

//------------------------------------------------------------------------------
// Method process: while_sc_uint_type (test_while_other.cpp:58:5) 

always_comb 
begin : while_sc_uint_type     // test_while_other.cpp:58:5
    integer k_1;
    logic [4:0] i;
    logic [5:0] j;
    k_1 = 0;
    i = 0;
    j = 0;
    while ((i < 2) && (j <= 3) || (k_1 == 5))
    begin
        i++;
        j++;
    end
end

//------------------------------------------------------------------------------
// Method process: while_sc_bigint_type (test_while_other.cpp:69:5) 

always_comb 
begin : while_sc_bigint_type     // test_while_other.cpp:69:5
    integer k_1;
    logic signed [4:0] i;
    logic signed [5:0] j;
    k_1 = 0;
    i = 0;
    j = 0;
    while ((i < 2) && (j <= 3) || (k_1 == 5))
    begin
        i++;
        j++;
    end
end

//------------------------------------------------------------------------------
// Method process: while_sc_biguint_type (test_while_other.cpp:80:5) 

always_comb 
begin : while_sc_biguint_type     // test_while_other.cpp:80:5
    integer k_1;
    logic [6:0] i;
    logic [7:0] j;
    k_1 = 0;
    i = 0;
    j = 0;
    while ((i < 2) && (j <= 3) || (k_1 == 5))
    begin
        i++;
        j++;
    end
end

//------------------------------------------------------------------------------
// Method process: while_long_type (test_while_other.cpp:91:5) 

always_comb 
begin : while_long_type     // test_while_other.cpp:91:5
    integer k_1;
    logic signed [63:0] i;
    logic signed [63:0] j;
    k_1 = 0;
    i = 0;
    j = 0;
    while ((i < 2) && (j <= 3) || (k_1 == 5))
    begin
        i++;
        j++;
    end
end

//------------------------------------------------------------------------------
// Method process: while_ulong_type (test_while_other.cpp:103:5) 

always_comb 
begin : while_ulong_type     // test_while_other.cpp:103:5
    integer k_1;
    logic [63:0] i;
    logic [63:0] j;
    k_1 = 0;
    i = 0;
    j = 0;
    while ((i < 2) && (j <= 3) || (k_1 == 5))
    begin
        i++;
        j++;
    end
end

//------------------------------------------------------------------------------
// Method process: while_short_type (test_while_other.cpp:114:5) 

always_comb 
begin : while_short_type     // test_while_other.cpp:114:5
    integer k_1;
    logic signed [15:0] i;
    logic signed [15:0] j;
    k_1 = a;
    i = 0;
    j = 0;
    while ((i < 2) && (j <= 3) || (k_1 == 5))
    begin
        i++;
        j++;
    end
end

//------------------------------------------------------------------------------
// Method process: while_ushort_type (test_while_other.cpp:126:5) 

always_comb 
begin : while_ushort_type     // test_while_other.cpp:126:5
    integer k_1;
    logic [15:0] i;
    logic [15:0] j;
    k_1 = a;
    i = 0;
    j = 0;
    while ((signed'({1'b0, i}) < 2) && (signed'({1'b0, j}) <= 3) || (k_1 == 5))
    begin
        i++;
        j++;
    end
end

//------------------------------------------------------------------------------
// Method process: while_mixed_type (test_while_other.cpp:137:5) 

always_comb 
begin : while_mixed_type     // test_while_other.cpp:137:5
    integer k_1;
    logic [15:0] i;
    logic [15:0] j;
    logic signed [15:0] l;
    logic signed [63:0] m_1;
    logic [63:0] n_1;
    logic signed [9:0] o;
    logic [19:0] p;
    logic signed [31:0] q;
    logic [62:0] r;
    k_1 = a;
    i = 0;
    j = 0;
    l = 1;
    m_1 = 3;
    n_1 = 2;
    o = 4;
    p = 5;
    q = 6;
    r = 18;
    while ((signed'({1'b0, i}) < 2) && (signed'({1'b0, j}) <= 3) || (k_1 == 5) && (l == 0) && |o || |p && (|q) || (|r))
    begin
        i++;
        j++;
        l = l - 1;
        m_1 = m_1 - 2;
        n_1 = n_1 - 1;
        o--;
        p = p + 2;
        q = q - 1;
        r = r - 2;
    end
end

endmodule


