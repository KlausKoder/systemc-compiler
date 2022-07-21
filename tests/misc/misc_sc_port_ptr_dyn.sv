//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.32
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Dut ()
//
module Dut // "dut"
(
    input logic clk
);

// Variables generated for SystemC signals
logic nrst;
logic [3:0] s;
logic [3:0] slave_slave_port_s2;
logic slave_clk;
logic slave_nrst;

// Local parameters generated for C++ constants
localparam logic [3:0] slave_slave_port_l2 = 0;

// Assignments generated for C++ channel arrays
assign slave_clk = clk;
assign slave_nrst = nrst;

//------------------------------------------------------------------------------
// Method process: slave_methProc (test_sc_port_ptr_dyn.cpp:40:5) 

// Process-local variables
logic [3:0] slave_slave_port_l1;

always_comb 
begin : slave_methProc     // test_sc_port_ptr_dyn.cpp:40:5
    logic [3:0] val;
    val = 0;
    // Call g() begin
    slave_slave_port_l1 = val;
    slave_slave_port_s2 = slave_slave_port_l1 + 1;
    // Call g() end
end

//------------------------------------------------------------------------------
// Clocked THREAD: slave_threadProc (test_sc_port_ptr_dyn.cpp:45:5) 

// Thread-local variables
logic [3:0] s_next;
logic [3:0] a;
logic [3:0] a_next;

// Next-state combinational logic
always_comb begin : slave_threadProc_comb     // test_sc_port_ptr_dyn.cpp:45:5
    slave_threadProc_func;
end
function void slave_threadProc_func;
    logic [3:0] TMP_0;
    logic [3:0] val;
    logic [3:0] TMP_1;
    a_next = a;
    s_next = s;
    val = a_next;
    // Call f() begin
    s_next = val;
    TMP_1 = val + 1;
    // Call f() end
    a_next = TMP_1;
endfunction

// Synchronous register update
always_ff @(posedge slave_clk or negedge slave_nrst) 
begin : slave_threadProc_ff
    if ( ~slave_nrst ) begin
        logic [3:0] TMP_0;
        logic [3:0] val;
        a <= 0;
        val = 0;
        // Call f() begin
        s <= val;
        TMP_0 = val + 1;
        // Call f() end
    end
    else begin
        s <= s_next;
        a <= a_next;
    end
end

//------------------------------------------------------------------------------
// Method process: methProc (test_sc_port_ptr_dyn.cpp:116:5) 

always_comb 
begin : methProc     // test_sc_port_ptr_dyn.cpp:116:5
    logic [3:0] TMP_0;
    logic [3:0] a_1;
    // Call h() begin
    TMP_0 = slave_slave_port_l2 + slave_slave_port_s2;
    // Call h() end
    a_1 = TMP_0;
end

endmodule


