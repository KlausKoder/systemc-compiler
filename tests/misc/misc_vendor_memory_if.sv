//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.32
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: module_with_memory ()
//
module module_with_memory // "mod"
(
    input logic clk,
    input logic rst
);

// Variables generated for SystemC signals
logic mem_req;

//------------------------------------------------------------------------------
// Clocked THREAD: test (test_vendor_memory_if.cpp:60:5) 

// Thread-local variables
logic [1:0] test_PROC_STATE;
logic [1:0] test_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_comb     // test_vendor_memory_if.cpp:60:5
    test_func;
end
function void test_func;
    mem_req = '0;
    test_PROC_STATE_next = test_PROC_STATE;
    
    case (test_PROC_STATE)
        0: begin
            // Call read_req() begin
            mem_req = 1;
            // Call read_req() end
            test_PROC_STATE_next = 1; return;    // test_vendor_memory_if.cpp:66:13;
        end
        1: begin
            // Call clear_req() begin
            mem_req = 0;
            // Call clear_req() end
            test_PROC_STATE_next = 2; return;    // test_vendor_memory_if.cpp:68:13;
        end
        2: begin
            // Call read_req() begin
            mem_req = 1;
            // Call read_req() end
            test_PROC_STATE_next = 1; return;    // test_vendor_memory_if.cpp:66:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : test_ff
    if ( ~rst ) begin
        test_PROC_STATE <= 0;    // test_vendor_memory_if.cpp:62:9;
    end
    else begin
        test_PROC_STATE <= test_PROC_STATE_next;
    end
end

endmodule


