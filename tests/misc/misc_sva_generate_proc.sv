//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "test_top.a_mod"
(
    input logic clk,
    input logic rstn
);

// Variables generated for SystemC signals
logic signed [31:0] s;
logic signed [31:0] s_d;
logic signed [31:0] s_d2;
logic signed [31:0] ps;
logic signed [31:0] sarr[3];
logic [2:0] psarr[3];

// Local parameters generated for C++ constants
localparam logic [31:0] N = 2;
localparam logic signed [31:0] M = 3;

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_imm (test_sva_generate_proc.cpp:109:5) 

// Thread-local variables
logic signed [31:0] ii;
logic signed [31:0] ii_next;
logic sct_assert_imm_PROC_STATE;
logic sct_assert_imm_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_imm_comb     // test_sva_generate_proc.cpp:109:5
    sct_assert_imm_func;
end
function void sct_assert_imm_func;
    integer mm;
    ii_next = ii;
    sct_assert_imm_PROC_STATE_next = sct_assert_imm_PROC_STATE;
    
    case (sct_assert_imm_PROC_STATE)
        0: begin
            mm = 3;
            `ifndef INTEL_SVA_OFF
                assert (mm != s) else $error("Assertion failed at test_sva_generate_proc.cpp:116:9");
            `endif // INTEL_SVA_OFF
            ii_next = s;
            sct_assert_imm_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:120:13;
        end
        1: begin
            `ifndef INTEL_SVA_OFF
                assert (ii_next == s_d) else $error("Assertion failed at test_sva_generate_proc.cpp:121:13");
            `endif // INTEL_SVA_OFF
            ii_next = s;
            sct_assert_imm_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:120:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_imm_ff
    if ( ~rstn ) begin
        integer kk;
        integer mm;
        ii <= 0;
        kk = 1;
        mm = 2;
        `ifndef INTEL_SVA_OFF
            assert (kk != s) else $error("Assertion failed at test_sva_generate_proc.cpp:112:9");
        `endif // INTEL_SVA_OFF
        sct_assert_imm_PROC_STATE <= 0;    // test_sva_generate_proc.cpp:113:9;
    end
    else begin
        ii <= ii_next;
        sct_assert_imm_PROC_STATE <= sct_assert_imm_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_imm_reg (test_sva_generate_proc.cpp:125:5) 

// Thread-local variables
logic signed [31:0] kk0;
logic signed [31:0] kk_next;
logic signed [31:0] mm0;
logic signed [31:0] mm_next;
logic sct_assert_imm_reg_PROC_STATE;
logic sct_assert_imm_reg_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_imm_reg_comb     // test_sva_generate_proc.cpp:125:5
    sct_assert_imm_reg_func;
end
function void sct_assert_imm_reg_func;
    kk_next = kk0;
    mm_next = mm0;
    sct_assert_imm_reg_PROC_STATE_next = sct_assert_imm_reg_PROC_STATE;
    
    case (sct_assert_imm_reg_PROC_STATE)
        0: begin
            mm_next = 3;
            `ifndef INTEL_SVA_OFF
                assert (mm_next != s) else $error("Assertion failed at test_sva_generate_proc.cpp:132:9");
            `endif // INTEL_SVA_OFF
            sct_assert_imm_reg_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:135:13;
        end
        1: begin
            `ifndef INTEL_SVA_OFF
                assert (mm_next == kk_next) else $error("Assertion failed at test_sva_generate_proc.cpp:136:13");
            `endif // INTEL_SVA_OFF
            sct_assert_imm_reg_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:135:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_imm_reg_ff
    if ( ~rstn ) begin
        kk0 <= 1;
        mm0 <= 2;
        `ifndef INTEL_SVA_OFF
            assert (kk0 != s) else $error("Assertion failed at test_sva_generate_proc.cpp:128:9");
        `endif // INTEL_SVA_OFF
        sct_assert_imm_reg_PROC_STATE <= 0;    // test_sva_generate_proc.cpp:129:9;
    end
    else begin
        kk0 <= kk_next;
        mm0 <= mm_next;
        sct_assert_imm_reg_PROC_STATE <= sct_assert_imm_reg_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_one (test_sva_generate_proc.cpp:141:5) 

// Next-state combinational logic
always_comb begin : sct_assert_one_comb     // test_sva_generate_proc.cpp:141:5
    sct_assert_one_func;
end
function void sct_assert_one_func;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_one_ff
    if ( ~rstn ) begin
    end
    else begin
    end

`ifndef INTEL_SVA_OFF
    sctAssertLine143 : assert property ( |s |=> |s_d );
`endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_two_same (test_sva_generate_proc.cpp:152:5) 

// Thread-local variables
logic sct_assert_two_same_PROC_STATE;
logic sct_assert_two_same_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_two_same_comb     // test_sva_generate_proc.cpp:152:5
    sct_assert_two_same_func;
end
function void sct_assert_two_same_func;
    sct_assert_two_same_PROC_STATE_next = sct_assert_two_same_PROC_STATE;
    
    case (sct_assert_two_same_PROC_STATE)
        0: begin
            sct_assert_two_same_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:159:13;
        end
        1: begin
            sct_assert_two_same_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:159:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_two_same_ff
    if ( ~rstn ) begin
        sct_assert_two_same_PROC_STATE <= 0;    // test_sva_generate_proc.cpp:155:9;
    end
    else begin
        sct_assert_two_same_PROC_STATE <= sct_assert_two_same_PROC_STATE_next;

    `ifndef INTEL_SVA_OFF
        sctAssertLine156 : assert property ( |s |-> ##3 |s_d );
    `endif // INTEL_SVA_OFF
    end

`ifndef INTEL_SVA_OFF
    sctAssertLine154 : assert property ( |s |=> |s_d );
`endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_several (test_sva_generate_proc.cpp:164:5) 

// Thread-local variables
logic a;
logic a_next;
logic [7:0] b;
logic [7:0] b_next;
logic arr[3];
logic arr_next[3];

// Next-state combinational logic
always_comb begin : sct_assert_several_comb     // test_sva_generate_proc.cpp:164:5
    sct_assert_several_func;
end
function void sct_assert_several_func;
    a_next = a;
    arr_next = arr;
    b_next = b;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_several_ff
    if ( ~rstn ) begin
        a <= 0;
        b <= 1;
        arr[2] <= 1;
    end
    else begin
        a <= a_next;
        b <= b_next;
        arr <= arr_next;
    end

`ifndef INTEL_SVA_OFF
    sctAssertLine167 : assert property ( |s |=> s_d == a_next );
    sctAssertLine168 : assert property ( 1 |-> ##[2:3] |s_d2 && (ps == 1) );
    sctAssertLine169 : assert property ( |psarr[1] |-> ##[3:5] sarr[0] != arr_next[2] );
`endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_several_multi1 (test_sva_generate_proc.cpp:178:5) 

// Thread-local variables
logic [1:0] sct_assert_several_multi1_PROC_STATE;
logic [1:0] sct_assert_several_multi1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_several_multi1_comb     // test_sva_generate_proc.cpp:178:5
    sct_assert_several_multi1_func;
end
function void sct_assert_several_multi1_func;
    sct_assert_several_multi1_PROC_STATE_next = sct_assert_several_multi1_PROC_STATE;
    
    case (sct_assert_several_multi1_PROC_STATE)
        0: begin
            sct_assert_several_multi1_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:184:13;
        end
        1: begin
            sct_assert_several_multi1_PROC_STATE_next = 2; return;    // test_sva_generate_proc.cpp:186:13;
        end
        2: begin
            sct_assert_several_multi1_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:184:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_several_multi1_ff
    if ( ~rstn ) begin
        sct_assert_several_multi1_PROC_STATE <= 0;    // test_sva_generate_proc.cpp:181:9;
    end
    else begin
        sct_assert_several_multi1_PROC_STATE <= sct_assert_several_multi1_PROC_STATE_next;
    end

`ifndef INTEL_SVA_OFF
    sctAssertLine180 : assert property ( |s |=> |s_d );
`endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_several_multi2 (test_sva_generate_proc.cpp:191:5) 

// Thread-local variables
logic [1:0] sct_assert_several_multi2_PROC_STATE;
logic [1:0] sct_assert_several_multi2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_several_multi2_comb     // test_sva_generate_proc.cpp:191:5
    sct_assert_several_multi2_func;
end
function void sct_assert_several_multi2_func;
    sct_assert_several_multi2_PROC_STATE_next = sct_assert_several_multi2_PROC_STATE;
    
    case (sct_assert_several_multi2_PROC_STATE)
        0: begin
            if (|s)
            begin
                sct_assert_several_multi2_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:198:17;
            end
            sct_assert_several_multi2_PROC_STATE_next = 2; return;    // test_sva_generate_proc.cpp:201:13;
        end
        1: begin
            sct_assert_several_multi2_PROC_STATE_next = 2; return;    // test_sva_generate_proc.cpp:201:13;
        end
        2: begin
            if (|s)
            begin
                sct_assert_several_multi2_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:198:17;
            end
            sct_assert_several_multi2_PROC_STATE_next = 2; return;    // test_sva_generate_proc.cpp:201:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(negedge clk or negedge rstn) 
begin : sct_assert_several_multi2_ff
    if ( ~rstn ) begin
        sct_assert_several_multi2_PROC_STATE <= 0;    // test_sva_generate_proc.cpp:194:9;
    end
    else begin
        sct_assert_several_multi2_PROC_STATE <= sct_assert_several_multi2_PROC_STATE_next;
    end

`ifndef INTEL_SVA_OFF
    sctAssertLine193 : assert property ( |s |=> |s_d );
`endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_several_multi3 (test_sva_generate_proc.cpp:206:5) 

// Thread-local variables
logic signed [31:0] k;
logic signed [31:0] k_next;
logic [1:0] sct_assert_several_multi3_PROC_STATE;
logic [1:0] sct_assert_several_multi3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_several_multi3_comb     // test_sva_generate_proc.cpp:206:5
    sct_assert_several_multi3_func;
end
function void sct_assert_several_multi3_func;
    k_next = k;
    sct_assert_several_multi3_PROC_STATE_next = sct_assert_several_multi3_PROC_STATE;
    
    case (sct_assert_several_multi3_PROC_STATE)
        0: begin
            if (|s)
            begin
                k_next = s;
                sct_assert_several_multi3_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:216:17;
            end else begin
                k_next++;
                sct_assert_several_multi3_PROC_STATE_next = 2; return;    // test_sva_generate_proc.cpp:220:17;
            end
        end
        1: begin
            if (|s)
            begin
                k_next = s;
                sct_assert_several_multi3_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:216:17;
            end else begin
                k_next++;
                sct_assert_several_multi3_PROC_STATE_next = 2; return;    // test_sva_generate_proc.cpp:220:17;
            end
        end
        2: begin
            if (|s)
            begin
                k_next = s;
                sct_assert_several_multi3_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:216:17;
            end else begin
                k_next++;
                sct_assert_several_multi3_PROC_STATE_next = 2; return;    // test_sva_generate_proc.cpp:220:17;
            end
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_several_multi3_ff
    if ( ~rstn ) begin
        k <= 0;
        sct_assert_several_multi3_PROC_STATE <= 0;    // test_sva_generate_proc.cpp:210:9;
    end
    else begin
        k <= k_next;
        sct_assert_several_multi3_PROC_STATE <= sct_assert_several_multi3_PROC_STATE_next;

    `ifndef INTEL_SVA_OFF
        sctAssertLine211 : assert property ( |s |-> ##2 |s_d2 );
    `endif // INTEL_SVA_OFF
    end

`ifndef INTEL_SVA_OFF
    sctAssertLine209 : assert property ( |s |=> |s_d );
`endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_thread_var1 (test_sva_generate_proc.cpp:226:5) 

// Thread-local variables
logic [31:0] c;
logic [31:0] c_next;
logic [15:0] d;
logic [15:0] d_next;

// Next-state combinational logic
always_comb begin : sct_assert_thread_var1_comb     // test_sva_generate_proc.cpp:226:5
    sct_assert_thread_var1_func;
end
function void sct_assert_thread_var1_func;
    c_next = c;
    d_next = d;
    d_next = s_d;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_thread_var1_ff
    if ( ~rstn ) begin
        d <= 7;
        c <= s;
    end
    else begin
        c <= c_next;
        d <= d_next;
    end

`ifndef INTEL_SVA_OFF
    sctAssertLine230 : assert property ( |c_next |=> d_next == 1 );
`endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_thread_var2 (test_sva_generate_proc.cpp:240:5) 

// Thread-local variables
logic [3:0] rec_b;
logic [3:0] rec_b_next;
logic rec_a;
logic rec_a_next;
logic sct_assert_thread_var2_PROC_STATE;
logic sct_assert_thread_var2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_thread_var2_comb     // test_sva_generate_proc.cpp:240:5
    sct_assert_thread_var2_func;
end
function void sct_assert_thread_var2_func;
    rec_a_next = rec_a;
    rec_b_next = rec_b;
    sct_assert_thread_var2_PROC_STATE_next = sct_assert_thread_var2_PROC_STATE;
    
    case (sct_assert_thread_var2_PROC_STATE)
        0: begin
            rec_b_next = s_d;
            sct_assert_thread_var2_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:249:13;
        end
        1: begin
            rec_b_next = s_d;
            sct_assert_thread_var2_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:249:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_thread_var2_ff
    if ( ~rstn ) begin
        rec_a <= 0;
        sct_assert_thread_var2_PROC_STATE <= 0;    // test_sva_generate_proc.cpp:243:9;
    end
    else begin
        rec_b <= rec_b_next;
        rec_a <= rec_a_next;
        sct_assert_thread_var2_PROC_STATE <= sct_assert_thread_var2_PROC_STATE_next;

    `ifndef INTEL_SVA_OFF
        sctAssertLine245 : assert property ( rec_a_next |=> rec_b_next != s );
    `endif // INTEL_SVA_OFF
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_thread_loc1 (test_sva_generate_proc.cpp:254:5) 

// Thread-local variables
logic signed [31:0] i;
logic signed [31:0] i_next;

// Next-state combinational logic
always_comb begin : sct_assert_thread_loc1_comb     // test_sva_generate_proc.cpp:254:5
    sct_assert_thread_loc1_func;
end
function void sct_assert_thread_loc1_func;
    i_next = i;
    i_next = s;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_thread_loc1_ff
    if ( ~rstn ) begin
        i <= 0;
    end
    else begin
        i <= i_next;
    end

`ifndef INTEL_SVA_OFF
    sctAssertLine257 : assert property ( |s |=> i_next == s_d );
`endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_thread_loc2 (test_sva_generate_proc.cpp:267:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next0;

// Next-state combinational logic
always_comb begin : sct_assert_thread_loc2_comb     // test_sva_generate_proc.cpp:267:5
    sct_assert_thread_loc2_func;
end
function void sct_assert_thread_loc2_func;
    i_next0 = i0;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_thread_loc2_ff
    if ( ~rstn ) begin
        i0 <= s;
    end
    else begin
        i0 <= i_next0;
    end

`ifndef INTEL_SVA_OFF
    sctAssertLine270 : assert property ( |s |-> |i_next0 );
`endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_thread_loc3 (test_sva_generate_proc.cpp:278:5) 

// Thread-local variables
logic signed [31:0] i1;
logic signed [31:0] i_next1;
logic j;
logic j_next;
logic k0;
logic k_next0;
logic signed [31:0] l;
logic signed [31:0] l_next;
logic [1:0] sct_assert_thread_loc3_PROC_STATE;
logic [1:0] sct_assert_thread_loc3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_thread_loc3_comb     // test_sva_generate_proc.cpp:278:5
    sct_assert_thread_loc3_func;
end
function void sct_assert_thread_loc3_func;
    i_next1 = i1;
    j_next = j;
    k_next0 = k0;
    l_next = l;
    sct_assert_thread_loc3_PROC_STATE_next = sct_assert_thread_loc3_PROC_STATE;
    
    case (sct_assert_thread_loc3_PROC_STATE)
        0: begin
            sct_assert_thread_loc3_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:288:13;
        end
        1: begin
            j_next = i_next1 == s;
            k_next0 = l_next == s;
            sct_assert_thread_loc3_PROC_STATE_next = 2; return;    // test_sva_generate_proc.cpp:292:13;
        end
        2: begin
            sct_assert_thread_loc3_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:288:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_thread_loc3_ff
    if ( ~rstn ) begin
        j <= 0;
        i1 <= 0;
        k0 <= 0;
        l <= 0;
        sct_assert_thread_loc3_PROC_STATE <= 0;    // test_sva_generate_proc.cpp:283:9;
    end
    else begin
        i1 <= i_next1;
        j <= j_next;
        k0 <= k_next0;
        l <= l_next;
        sct_assert_thread_loc3_PROC_STATE <= sct_assert_thread_loc3_PROC_STATE_next;

    `ifndef INTEL_SVA_OFF
        sctAssertLine285 : assert property ( k_next0 || |l_next |-> ##[2:3] |s );
    `endif // INTEL_SVA_OFF
    end

`ifndef INTEL_SVA_OFF
    sctAssertLine282 : assert property ( 0 |=> |s_d );
`endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_cond (test_sva_generate_proc.cpp:297:5) 

// Thread-local variables
logic sct_assert_cond_PROC_STATE;
logic sct_assert_cond_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_cond_comb     // test_sva_generate_proc.cpp:297:5
    sct_assert_cond_func;
end
function void sct_assert_cond_func;
    sct_assert_cond_PROC_STATE_next = sct_assert_cond_PROC_STATE;
    
    case (sct_assert_cond_PROC_STATE)
        0: begin
            sct_assert_cond_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:305:13;
        end
        1: begin
            sct_assert_cond_PROC_STATE_next = 1; return;    // test_sva_generate_proc.cpp:305:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_cond_ff
    if ( ~rstn ) begin
        sct_assert_cond_PROC_STATE <= 0;    // test_sva_generate_proc.cpp:300:9;
    end
    else begin
        sct_assert_cond_PROC_STATE <= sct_assert_cond_PROC_STATE_next;

    `ifndef INTEL_SVA_OFF
        sctAssertLine302 : assert property ( |s |-> ##2 |s_d2 );
    `endif // INTEL_SVA_OFF
    end
end

endmodule


