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


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .a(a),
  .b(b)
);

endmodule



//==============================================================================
//
// Module: A (test_binary_expr_signed.cpp:212:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: binary (test_binary_expr_signed.cpp:33:5) 

always_comb 
begin : binary     // test_binary_expr_signed.cpp:33:5
    logic signed [15:0] z;
    logic signed [15:0] bz;
    logic [15:0] uz;
    logic signed [3:0] x;
    logic [3:0] ux;
    integer i;
    integer unsigned uu;
    z = 0;
    bz = 0;
    uz = 7;
    x = -4'sd4;
    ux = 2;
    i = -4'sd5;
    uu = 7;
    z = (ux + x) * (-2'sd1);
    z = (ux - x) * x;
    z = (ux * (x + 1)) - ux;
    bz = (-4'sd6) + ux * (-3'sd3);
    `ifndef INTEL_SVA_OFF
        assert (bz == -5'sd12) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    bz = -x + ux * 2;
    bz = x + ux * i;
    bz = x * (ux - i);
    bz = 14 - (ux - i + 3);
    `ifndef INTEL_SVA_OFF
        assert (bz == 4) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    z = 1;
    bz = -4'sd5;
    bz = signed'({1'b0, uz}) * bz - x;
    `ifndef INTEL_SVA_OFF
        assert (bz == -6'sd31) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    bz = -4'sd5;
    bz = z * bz - x;
    `ifndef INTEL_SVA_OFF
        assert (bz == -2'sd1) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    bz = -4'sd5;
    bz = z * (bz + 1) - bz;
    `ifndef INTEL_SVA_OFF
        assert (bz == 1) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    z = (uu * 4) - i;
    `ifndef INTEL_SVA_OFF
        assert (z == 33) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    z = (uu * 4) - i + x * ux;
    bz = x / (i - 1) * (uu - ux);
    `ifndef INTEL_SVA_OFF
        assert (bz == 0) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    bz = x / (i - 1) * (uu - ux + 1);
    `ifndef INTEL_SVA_OFF
        assert (bz == 0) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: binary_liter (test_binary_expr_signed.cpp:95:5) 

always_comb 
begin : binary_liter     // test_binary_expr_signed.cpp:95:5
    logic signed [15:0] z;
    logic signed [15:0] bz;
    logic signed [3:0] x;
    logic [3:0] ux;
    integer i;
    integer unsigned uu;
    z = 0;
    bz = 0;
    x = -4'sd4;
    ux = 2;
    z = (ux - x) * x + 1;
    z = (ux * (x + 1)) - 7;
    bz = (-4'sd6) + ux * (-3'sd3) * 2;
    `ifndef INTEL_SVA_OFF
        assert (bz == -6'sd18) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    bz = -x + ux * 2 + 1;
    i = -4'sd5;
    uu = 7;
    z = 36'((uu * 4) - i) / 1;
    `ifndef INTEL_SVA_OFF
        assert (z == 33) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    z = 33'(4 * x + i) / (-3'sd2);
    `ifndef INTEL_SVA_OFF
        assert (z == 10) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    z = (uu * 4) - i + x * ux + 1;
    bz = x / (i - 1) * (uu - ux + 1);
    `ifndef INTEL_SVA_OFF
        assert (bz == 0) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: compound (test_binary_expr_signed.cpp:131:5) 

always_comb 
begin : compound     // test_binary_expr_signed.cpp:131:5
    integer z;
    logic signed [32:0] bz;
    logic signed [6:0] x;
    logic [6:0] ux;
    integer i;
    integer unsigned uu;
    bz = 0;
    x = -4'sd4;
    ux = 2;
    z = 1;
    z = z + (signed'({1'b0, (ux + x) * (-2'sd1)}));
    `ifndef INTEL_SVA_OFF
        assert (z == 3) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    ux = ux * (ux - x + 1);
    `ifndef INTEL_SVA_OFF
        assert (ux == 14) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    x = (ux * (x + 1)) - ux;
    `ifndef INTEL_SVA_OFF
        assert (x == -7'sd56) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    bz = -8'sd100;
    bz = bz / ((-4'sd6) + x * (-3'sd3));
    `ifndef INTEL_SVA_OFF
        assert (bz == 0) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    bz = -3'sd2;
    bz = bz * (signed'({1'b0, -x + ux * 2}));
    i = -4'sd5;
    x = -4'sd4;
    uu = 7;
    ux = 2;
    bz = 1;
    bz = bz - (x / (i + 1) * (uu - ux + 1));
end

//------------------------------------------------------------------------------
// Method process: unary (test_binary_expr_signed.cpp:166:5) 

always_comb 
begin : unary     // test_binary_expr_signed.cpp:166:5
    integer z;
    logic signed [32:0] bz;
    integer i;
    integer unsigned uu;
    logic signed [6:0] x;
    logic [6:0] ux;
    bz = 0;
    i = -4'sd5;
    uu = 7;
    x = -4'sd4;
    ux = 2;
    z = -x + i - 1;
    `ifndef INTEL_SVA_OFF
        assert (z == -3'sd2) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    bz = (-x) * 3 + (-z) * i;
    `ifndef INTEL_SVA_OFF
        assert (bz == 2) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: ternary (test_binary_expr_signed.cpp:183:5) 

always_comb 
begin : ternary     // test_binary_expr_signed.cpp:183:5
    integer z;
    logic signed [32:0] bz;
    integer i;
    integer unsigned uu;
    logic signed [6:0] x;
    logic [6:0] ux;
    bz = 0;
    i = -4'sd5;
    uu = 7;
    x = -4'sd4;
    ux = 2;
    z = 1;
    `ifndef INTEL_SVA_OFF
        assert (z == 1) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    z = i - 1;
    `ifndef INTEL_SVA_OFF
        assert (z == -4'sd6) else $error("Assertion failed at test_binary_expr_signed.cpp:31:24>");
    `endif // INTEL_SVA_OFF
    z = (ux + i) * x;
    z = (-x) * 3 + (-z) * i;
end

endmodule


