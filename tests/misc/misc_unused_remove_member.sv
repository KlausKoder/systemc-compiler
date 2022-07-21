//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.32
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic nrst;
logic [3:0] s;
logic signed [31:0] t1;
logic signed [31:0] t2;
logic signed [31:0] t3;
logic signed [31:0] sarr[3][3];
logic signed [31:0] sparr[3][4];
logic signed [31:0] vec1[3];
logic signed [31:0] vec2[3][4];
logic a0;
logic a1;
logic signed [31:0] a2;
logic signed [31:0] a3;
logic [32:0] a4;

// Local parameters generated for C++ constants
localparam logic signed [31:0] m = 42;

//------------------------------------------------------------------------------
// Method process: local_pointer_bug (test_unused_remove_member.cpp:73:5) 

always_comb 
begin : local_pointer_bug     // test_unused_remove_member.cpp:73:5
    integer k;
    k = m;
    k++;
end

//------------------------------------------------------------------------------
// Method process: remove_member1 (test_unused_remove_member.cpp:82:5) 

// Process-local variables
logic signed [31:0] m1;

always_comb 
begin : remove_member1     // test_unused_remove_member.cpp:82:5
    integer k;
    k = 1;
    m1 = 1;
    k = m1 + 1;
    t1 = m1;
end

//------------------------------------------------------------------------------
// Method process: remove_member1a (test_unused_remove_member.cpp:90:5) 

// Process-local variables
logic signed [31:0] m2;

always_comb 
begin : remove_member1a     // test_unused_remove_member.cpp:90:5
    integer k;
    k = 1;
    m2 = 1;
    k = m2 + 1;
end

//------------------------------------------------------------------------------
// Method process: remove_member2 (test_unused_remove_member.cpp:97:5) 

// Process-local variables
logic signed [31:0] mm;
logic signed [31:0] q;

always_comb 
begin : remove_member2     // test_unused_remove_member.cpp:97:5
    integer l;
    mm = 1;
    mm++;
    l = q--;
end

//------------------------------------------------------------------------------
// Method process: remove_member2a (test_unused_remove_member.cpp:107:5) 

// Process-local variables
logic [11:0] x;

always_comb 
begin : remove_member2a     // test_unused_remove_member.cpp:107:5
    integer k;
    x = 1;
    k = 2 + x;
    k = x;
end

//------------------------------------------------------------------------------
// Method process: remove_member3 (test_unused_remove_member.cpp:114:5) 

// Process-local variables
logic signed [31:0] arr[3][3];

always_comb 
begin : remove_member3     // test_unused_remove_member.cpp:114:5
    t2 = arr[s][s];
end

//------------------------------------------------------------------------------
// Method process: remove_member3a (test_unused_remove_member.cpp:119:5) 

// Process-local variables
logic signed [31:0] parr[3];

always_comb 
begin : remove_member3a     // test_unused_remove_member.cpp:119:5
    integer l;
    l = parr[s];
end

//------------------------------------------------------------------------------
// Method process: remove_member4 (test_unused_remove_member.cpp:124:5) 

always_comb 
begin : remove_member4     // test_unused_remove_member.cpp:124:5
    integer ll;
    integer k;
    ll = sarr[s][s + 1];
    ll = ll + sparr[s][s + 1];
    k = vec2[s][s + 1];
    t3 = k;
end

//------------------------------------------------------------------------------
// Method process: remove_member4a (test_unused_remove_member.cpp:132:5) 

always_comb 
begin : remove_member4a     // test_unused_remove_member.cpp:132:5
    integer l;
    l = vec1[s];
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove5 (test_unused_remove_member.cpp:143:5) 

// Thread-local variables
logic signed [31:0] l0;
logic signed [31:0] l_next;
logic signed [31:0] k0;
logic signed [31:0] k_next;
logic remove5_PROC_STATE;
logic remove5_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : remove5_comb     // test_unused_remove_member.cpp:143:5
    remove5_func;
end
function void remove5_func;
    k_next = k0;
    l_next = l0;
    remove5_PROC_STATE_next = remove5_PROC_STATE;
    
    case (remove5_PROC_STATE)
        0: begin
            l_next = a4;
            remove5_PROC_STATE_next = 1; return;    // test_unused_remove_member.cpp:158:13;
        end
        1: begin
            `ifndef INTEL_SVA_OFF
                assert (l_next == s) else $error("Assertion failed at test_unused_remove_member.cpp:160:13");
            `endif // INTEL_SVA_OFF
            l_next = a4;
            remove5_PROC_STATE_next = 1; return;    // test_unused_remove_member.cpp:158:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove5_ff
    if ( ~nrst ) begin
        integer i;
        integer j;
        i = a0;
        j = a3;
        k0 <= j + 1;
        remove5_PROC_STATE <= 0;    // test_unused_remove_member.cpp:150:9;
    end
    else begin
        l0 <= l_next;
        k0 <= k_next;
        remove5_PROC_STATE <= remove5_PROC_STATE_next;

    `ifndef INTEL_SVA_OFF
        sctAssertLine152 : assert property ( k_next == 42 |-> ##[1:2] a2 == 42 );
    `endif // INTEL_SVA_OFF
    end

`ifndef INTEL_SVA_OFF
    sctAssertLine149 : assert property ( a1 |=> |a2 );
`endif // INTEL_SVA_OFF
end

endmodule


