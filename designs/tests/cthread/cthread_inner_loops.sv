//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: top ()
//
module top // "top_inst"
(
    input logic clk
);

// Variables generated for SystemC signals
logic arstn;
logic signed [31:0] in;
logic in_bool;
logic signed [31:0] out0;
logic signed [31:0] out;
logic signed [31:0] out2;

//------------------------------------------------------------------------------
// Clocked THREAD: test_thread1 (test_cthread_inner_loops.cpp:33:5) 

// Thread-local variables
logic [63:0] i;
logic [63:0] i_next;
logic signed [31:0] out0_next;
logic [1:0] test_thread1_PROC_STATE;
logic [1:0] test_thread1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_thread1_comb     // test_cthread_inner_loops.cpp:33:5
    test_thread1_func;
end
function void test_thread1_func;
    i_next = i;
    out0_next = out0;
    test_thread1_PROC_STATE_next = test_thread1_PROC_STATE;
    
    case (test_thread1_PROC_STATE)
        0: begin
            i_next = 0;
            if (in > 10)
            begin
                test_thread1_PROC_STATE_next = 1; return;    // test_cthread_inner_loops.cpp:40:21;
            end
            test_thread1_PROC_STATE_next = 2; return;    // test_cthread_inner_loops.cpp:43:17;
        end
        1: begin
            out0_next = i_next;
            if (in > 10)
            begin
                test_thread1_PROC_STATE_next = 1; return;    // test_cthread_inner_loops.cpp:40:21;
            end
            test_thread1_PROC_STATE_next = 2; return;    // test_cthread_inner_loops.cpp:43:17;
        end
        2: begin
            ++i_next;
            if (i_next < 3)
            begin
                if (in > 10)
                begin
                    test_thread1_PROC_STATE_next = 1; return;    // test_cthread_inner_loops.cpp:40:21;
                end
                test_thread1_PROC_STATE_next = 2; return;    // test_cthread_inner_loops.cpp:43:17;
            end
            i_next = 0;
            if (in > 10)
            begin
                test_thread1_PROC_STATE_next = 1; return;    // test_cthread_inner_loops.cpp:40:21;
            end
            test_thread1_PROC_STATE_next = 2; return;    // test_cthread_inner_loops.cpp:43:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_thread1_ff
    if ( ~arstn ) begin
        test_thread1_PROC_STATE <= 0;    // test_cthread_inner_loops.cpp:35:9;
    end
    else begin
        i <= i_next;
        out0 <= out0_next;
        test_thread1_PROC_STATE <= test_thread1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_thread2 (test_cthread_inner_loops.cpp:49:5) 

// Thread-local variables
logic signed [31:0] out_next;
logic [63:0] i0;
logic [63:0] i_next0;
logic [1:0] test_thread2_PROC_STATE;
logic [1:0] test_thread2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_thread2_comb     // test_cthread_inner_loops.cpp:49:5
    test_thread2_func;
end
function void test_thread2_func;
    i_next0 = i0;
    out_next = out;
    test_thread2_PROC_STATE_next = test_thread2_PROC_STATE;
    
    case (test_thread2_PROC_STATE)
        0: begin
            i_next0 = 0;
            if (in > 10)
            begin
                out_next = 1;
                if (in_bool)
                begin
                    test_thread2_PROC_STATE_next = 1; return;    // test_cthread_inner_loops.cpp:59:25;
                end
                test_thread2_PROC_STATE_next = 2; return;    // test_cthread_inner_loops.cpp:62:21;
            end
            test_thread2_PROC_STATE_next = 3; return;    // test_cthread_inner_loops.cpp:65:17;
        end
        1: begin
            out_next = 2;
            test_thread2_PROC_STATE_next = 2; return;    // test_cthread_inner_loops.cpp:62:21;
        end
        2: begin
            out_next = 3;
            if (in > 10)
            begin
                out_next = 1;
                if (in_bool)
                begin
                    test_thread2_PROC_STATE_next = 1; return;    // test_cthread_inner_loops.cpp:59:25;
                end
                test_thread2_PROC_STATE_next = 2; return;    // test_cthread_inner_loops.cpp:62:21;
            end
            test_thread2_PROC_STATE_next = 3; return;    // test_cthread_inner_loops.cpp:65:17;
        end
        3: begin
            out_next = 4;
            ++i_next0;
            if (i_next0 < 3)
            begin
                if (in > 10)
                begin
                    out_next = 1;
                    if (in_bool)
                    begin
                        test_thread2_PROC_STATE_next = 1; return;    // test_cthread_inner_loops.cpp:59:25;
                    end
                    test_thread2_PROC_STATE_next = 2; return;    // test_cthread_inner_loops.cpp:62:21;
                end
                test_thread2_PROC_STATE_next = 3; return;    // test_cthread_inner_loops.cpp:65:17;
            end
            i_next0 = 0;
            if (in > 10)
            begin
                out_next = 1;
                if (in_bool)
                begin
                    test_thread2_PROC_STATE_next = 1; return;    // test_cthread_inner_loops.cpp:59:25;
                end
                test_thread2_PROC_STATE_next = 2; return;    // test_cthread_inner_loops.cpp:62:21;
            end
            test_thread2_PROC_STATE_next = 3; return;    // test_cthread_inner_loops.cpp:65:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_thread2_ff
    if ( ~arstn ) begin
        out <= 0;
        test_thread2_PROC_STATE <= 0;    // test_cthread_inner_loops.cpp:52:9;
    end
    else begin
        out <= out_next;
        i0 <= i_next0;
        test_thread2_PROC_STATE <= test_thread2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_thread3 (test_cthread_inner_loops.cpp:72:5) 

// Thread-local variables
logic signed [31:0] out2_next;
logic [63:0] j;
logic [63:0] j_next;
logic [63:0] i1;
logic [63:0] i_next1;
logic [2:0] test_thread3_PROC_STATE;
logic [2:0] test_thread3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_thread3_comb     // test_cthread_inner_loops.cpp:72:5
    test_thread3_func;
end
function void test_thread3_func;
    i_next1 = i1;
    j_next = j;
    out2_next = out2;
    test_thread3_PROC_STATE_next = test_thread3_PROC_STATE;
    
    case (test_thread3_PROC_STATE)
        0: begin
            i_next1 = 0;
            j_next = 0;
            if (in > 10)
            begin
                out2_next = i_next1 + j_next;
                test_thread3_PROC_STATE_next = 1; return;    // test_cthread_inner_loops.cpp:82:25;
            end
            test_thread3_PROC_STATE_next = 2; return;    // test_cthread_inner_loops.cpp:84:21;
        end
        1: begin
            if (in > 10)
            begin
                out2_next = i_next1 + j_next;
                test_thread3_PROC_STATE_next = 1; return;    // test_cthread_inner_loops.cpp:82:25;
            end
            test_thread3_PROC_STATE_next = 2; return;    // test_cthread_inner_loops.cpp:84:21;
        end
        2: begin
            ++j_next;
            if (j_next < 4)
            begin
                if (in > 10)
                begin
                    out2_next = i_next1 + j_next;
                    test_thread3_PROC_STATE_next = 1; return;    // test_cthread_inner_loops.cpp:82:25;
                end
                test_thread3_PROC_STATE_next = 2; return;    // test_cthread_inner_loops.cpp:84:21;
            end
            if (in_bool)
            begin
                test_thread3_PROC_STATE_next = 3; return;    // test_cthread_inner_loops.cpp:87:21;
            end
            test_thread3_PROC_STATE_next = 4; return;    // test_cthread_inner_loops.cpp:90:17;
        end
        3: begin
            out2_next = 2;
            test_thread3_PROC_STATE_next = 4; return;    // test_cthread_inner_loops.cpp:90:17;
        end
        4: begin
            ++i_next1;
            if (i_next1 < 3)
            begin
                j_next = 0;
                if (in > 10)
                begin
                    out2_next = i_next1 + j_next;
                    test_thread3_PROC_STATE_next = 1; return;    // test_cthread_inner_loops.cpp:82:25;
                end
                test_thread3_PROC_STATE_next = 2; return;    // test_cthread_inner_loops.cpp:84:21;
            end
            i_next1 = 0;
            j_next = 0;
            if (in > 10)
            begin
                out2_next = i_next1 + j_next;
                test_thread3_PROC_STATE_next = 1; return;    // test_cthread_inner_loops.cpp:82:25;
            end
            test_thread3_PROC_STATE_next = 2; return;    // test_cthread_inner_loops.cpp:84:21;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_thread3_ff
    if ( ~arstn ) begin
        out2 <= 0;
        test_thread3_PROC_STATE <= 0;    // test_cthread_inner_loops.cpp:75:9;
    end
    else begin
        out2 <= out2_next;
        j <= j_next;
        i1 <= i_next1;
        test_thread3_PROC_STATE <= test_thread3_PROC_STATE_next;
    end
end

endmodule


