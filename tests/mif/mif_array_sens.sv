//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
    input logic clk
);

// Variables generated for SystemC signals
logic [31:0] t;
logic [31:0] minst_s1[3];
logic [31:0] minst_s2[3];
logic [31:0] minst_s3[3];
logic [31:0] minst_r[3];

// Local parameters generated for C++ constants
localparam logic signed [31:0] L[3] = '{ 1, 2, 3 };
localparam logic BA[3] = '{ 1, 1, 0 };
localparam logic signed [3:0] mmd[3] = '{ 5, -4'sd5, 0 };
localparam logic [31:0] minst_B[3] = '{ 10, 11, 12 };
localparam logic [31:0] minst_BR[3][2] = '{ '{ 32, 33 }, '{ 32, 33 }, '{ 32, 33 } };
localparam logic [31:0] minst_C[3] = '{ 10, 11, 12 };
localparam logic [31:0] minst_A = 12;
localparam logic [31:0] minst_AR[3][2] = '{ '{ 22, 23 }, '{ 22, 23 }, '{ 22, 23 } };
localparam logic [31:0] SA[3] = '{ 22, 23, 24 };
localparam logic SB[3] = '{ 1, 1, 0 };
localparam logic COUPLED_BLOCK_DOMAIN[1] = '{ 1 };

//------------------------------------------------------------------------------
// Method process: minst_mifMeth (test_mif_array_sens.cpp:45:5) 

// Process-local variables
logic [31:0] minst_br[3][2];

always_comb 
begin : minst_mifMeth     // test_mif_array_sens.cpp:45:5
    integer unsigned l;
    minst_s1[0] = 0;
    l = minst_A;
    l = minst_B[0];
    l = minst_C[0];
    l = minst_AR[1] + minst_BR[0][1];
    l = minst_AR[minst_r[0]] + minst_BR[0][minst_r[0]];
    l = minst_B[0];
    l = minst_BR[0][0] + minst_br[0][0];
end

//------------------------------------------------------------------------------
// Method process: minst_mifMeth0 (test_mif_array_sens.cpp:45:5) 

always_comb 
begin : minst_mifMeth0     // test_mif_array_sens.cpp:45:5
    integer unsigned l;
    minst_s1[1] = 0;
    minst_s1[1] = minst_r[1];
    l = minst_A;
    l = minst_B[1];
    l = minst_C[1];
    l = minst_AR[1] + minst_BR[1][1];
    l = minst_AR[minst_r[1]] + minst_BR[1][minst_r[1]];
    l = minst_B[1];
    l = minst_BR[1][0] + minst_br[1][0];
end

//------------------------------------------------------------------------------
// Method process: minst_mifMeth1 (test_mif_array_sens.cpp:45:5) 

always_comb 
begin : minst_mifMeth1     // test_mif_array_sens.cpp:45:5
    integer unsigned l;
    minst_s1[2] = 0;
    l = minst_A;
    l = minst_B[2];
    l = minst_C[2];
    l = minst_AR[1] + minst_BR[2][1];
    l = minst_AR[minst_r[2]] + minst_BR[2][minst_r[2]];
    l = minst_B[2];
    l = minst_BR[2][0] + minst_br[2][0];
end

//------------------------------------------------------------------------------
// Method process: top_method1 (test_mif_array_sens.cpp:113:5) 

always_comb 
begin : top_method1     // test_mif_array_sens.cpp:113:5
    integer unsigned i;
    i = t;
    // Call f1() begin
    minst_s1[i] = 1;
    // Call f1() end
end

//------------------------------------------------------------------------------
// Method process: top_method2 (test_mif_array_sens.cpp:118:5) 

always_comb 
begin : top_method2     // test_mif_array_sens.cpp:118:5
    integer j;
    integer unsigned i;
    integer unsigned res;
    i = t;
    res = minst_B[0];
    res = minst_B[1];
    res = minst_B[i];
    // Call f2() begin
    minst_s2[2] = 1;
    // Call f2() end
    // Call f2() begin
    if (|minst_B[i])
    begin
        minst_s2[i] = 1;
    end else begin
        minst_s2[i] = minst_r[i];
    end
    // Call f2() end
end

//------------------------------------------------------------------------------
// Method process: top_method3 (test_mif_array_sens.cpp:131:5) 

always_comb 
begin : top_method3     // test_mif_array_sens.cpp:131:5
    integer unsigned i;
    integer unsigned res;
    i = t;
    res = 1;
    res = minst_C[0];
    res = minst_C[1];
    res = minst_C[i];
    // Call f3() begin
    if (minst_C[i] == 12)
    begin
        minst_s3[i] = 1;
    end else begin
        minst_s3[i] = minst_r[i];
    end
    // Call f3() end
end

//------------------------------------------------------------------------------
// Method process: top_method4 (test_mif_array_sens.cpp:143:5) 

// Process-local variables
logic [31:0] minst_br[3][2];

always_comb 
begin : top_method4     // test_mif_array_sens.cpp:143:5
    integer unsigned i;
    integer unsigned lu;
    logic signed [7:0] bi;
    i = t;
    bi = 0;
    lu = minst_BR[i][0] + minst_br[i][0];
    lu = L[1] + BA[2];
    lu = SA[1] + SB[2] + COUPLED_BLOCK_DOMAIN[0];
    bi = mmd[0] + mmd[1] + 1;
end

endmodule


