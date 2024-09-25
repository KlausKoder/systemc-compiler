//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.4
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: simple_test ()
//
module simple_test // "test_top.dut"
(
    input logic clk,
    input logic nrst
);

// Variables generated for SystemC signals
logic run_put_req;
logic run_put_req_d;
logic run_core_req_d;
logic run_core_ready_d;
logic resp_get_req;
logic resp_get_req_d;
logic resp_reg_full;
logic resp_reg_full_d;
logic resp_core_req_d;
logic [15:0] resp_core_data_d;
logic run_clk;
logic run_nrst;
logic run_core_ready;
logic run_core_req;
logic [15:0] run_core_data;
logic resp_clk;
logic resp_nrst;
logic resp_core_ready;
logic resp_core_req;
logic [15:0] resp_core_data;

// Local parameters generated for C++ constants
localparam logic run_chan_sync = 0;
localparam logic run_cthread = 1;
localparam logic run_always_ready = 0;
localparam logic resp_cthread = 1;
localparam logic resp_always_ready = 0;
localparam logic [31:0] N = 1;

// Assignments generated for C++ channel arrays
assign run_clk = clk;
assign run_nrst = nrst;
assign resp_clk = clk;
assign resp_nrst = nrst;

//------------------------------------------------------------------------------
// Clocked THREAD: run_sync_thread (sct_initiator.h:223:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread (sct_initiator.h:269:5) 

// Thread-local variables
logic run_put_req_d_next;
logic run_core_req_d_next;
logic run_core_ready_d_next;

// Next-state combinational logic
always_comb begin : run_core_thread_comb     // sct_initiator.h:269:5
    run_core_thread_func;
end
function void run_core_thread_func;
    run_core_ready_d_next = run_core_ready_d;
    run_core_req_d_next = run_core_req_d;
    run_put_req_d_next = run_put_req_d;
    run_put_req_d_next = run_put_req;
    run_core_req_d_next = run_core_req;
    run_core_ready_d_next = run_core_ready;
endfunction

// Synchronous register update
always_ff @(posedge run_clk or negedge run_nrst) 
begin : run_core_thread_ff
    if ( ~run_nrst ) begin
        run_put_req_d <= 0;
        run_core_req_d <= 0;
        run_core_ready_d <= 0;
    end
    else begin
        run_put_req_d <= run_put_req_d_next;
        run_core_req_d <= run_core_req_d_next;
        run_core_ready_d <= run_core_ready_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: run_req_control (sct_initiator.h:253:5) 

always_comb 
begin : run_req_control     // sct_initiator.h:253:5
    logic A;
    A = run_put_req != run_put_req_d;
    if (A)
    begin
        run_core_req = 1;
    end else begin
        if (run_core_ready_d)
        begin
            run_core_req = 0;
        end else begin
            run_core_req = run_core_req_d;
        end
    end
end

//------------------------------------------------------------------------------
// Method process: resp_ready_control (sct_target.h:256:5) 

always_comb 
begin : resp_ready_control     // sct_target.h:256:5
    logic A;
    A = resp_get_req != resp_get_req_d;
    resp_core_ready = A || !resp_reg_full;
end

//------------------------------------------------------------------------------
// Method process: resp_full_control (sct_target.h:261:5) 

always_comb 
begin : resp_full_control     // sct_target.h:261:5
    logic A;
    A = resp_get_req != resp_get_req_d;
    if (A)
    begin
        resp_reg_full = 0;
    end else begin
        if (resp_core_req_d)
        begin
            resp_reg_full = 1;
        end else begin
            resp_reg_full = resp_reg_full_d;
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: resp_core_thread (sct_target.h:273:5) 

// Thread-local variables
logic resp_get_req_d_next;
logic resp_core_req_d_next;
logic resp_reg_full_d_next;
logic [15:0] resp_core_data_d_next;

// Next-state combinational logic
always_comb begin : resp_core_thread_comb     // sct_target.h:273:5
    resp_core_thread_func;
end
function void resp_core_thread_func;
    resp_core_data_d_next = resp_core_data_d;
    resp_core_req_d_next = resp_core_req_d;
    resp_get_req_d_next = resp_get_req_d;
    resp_reg_full_d_next = resp_reg_full_d;
    resp_get_req_d_next = resp_get_req;
    resp_core_req_d_next = resp_core_req;
    resp_reg_full_d_next = resp_reg_full;
    if (resp_core_req && !resp_reg_full)
    begin
        resp_core_data_d_next = resp_core_data;
    end
endfunction

// Synchronous register update
always_ff @(posedge resp_clk or negedge resp_nrst) 
begin : resp_core_thread_ff
    if ( ~resp_nrst ) begin
        resp_get_req_d <= 0;
        resp_core_req_d <= 0;
        resp_reg_full_d <= 0;
        resp_core_data_d <= 0;
    end
    else begin
        resp_get_req_d <= resp_get_req_d_next;
        resp_core_req_d <= resp_core_req_d_next;
        resp_reg_full_d <= resp_reg_full_d_next;
        resp_core_data_d <= resp_core_data_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: resp_put_to_fifo (sct_target.h:242:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: init_thread (method_test.h:102:5) 

// Thread-local variables
logic run_put_req_next;
logic [15:0] run_core_data_next;
logic resp_get_req_next;
logic [31:0] i;
logic [31:0] i_next;
logic [31:0] i0;
logic [31:0] i_next0;
logic [2:0] init_thread_PROC_STATE;
logic [2:0] init_thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : init_thread_comb     // method_test.h:102:5
    init_thread_func;
end
function void init_thread_func;
    logic TMP_0;
    logic [15:0] data;
    logic TMP_1;
    logic TMP_2;
    logic TMP_3;
    logic enable;
    logic A;
    logic TMP_4;
    logic TMP_5;
    i_next = i;
    i_next0 = i0;
    resp_get_req_next = resp_get_req;
    run_core_data_next = run_core_data;
    run_put_req_next = run_put_req;
    init_thread_PROC_STATE_next = init_thread_PROC_STATE;
    
    case (init_thread_PROC_STATE)
        0: begin
            i_next = 0;
            data = 42 + i_next;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_0 = 1;
            end else begin
                TMP_0 = 0;
            end
            // Call put() end
            if (!TMP_0)
            begin
                init_thread_PROC_STATE_next = 1; return;    // method_test.h:109:36;
            end
            init_thread_PROC_STATE_next = 2; return;    // method_test.h:110:13;
        end
        1: begin
            data = 42 + i_next;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_1 = 1;
            end else begin
                TMP_1 = 0;
            end
            // Call put() end
            if (!TMP_1)
            begin
                init_thread_PROC_STATE_next = 1; return;    // method_test.h:109:36;
            end
            init_thread_PROC_STATE_next = 2; return;    // method_test.h:110:13;
        end
        2: begin
            ++i_next;
            if (i_next < N)
            begin
                data = 42 + i_next;
                // Call put() begin
                if (run_always_ready || run_core_ready)
                begin
                    run_put_req_next = !run_put_req;
                    run_core_data_next = data;
                    TMP_2 = 1;
                end else begin
                    TMP_2 = 0;
                end
                // Call put() end
                if (!TMP_2)
                begin
                    init_thread_PROC_STATE_next = 1; return;    // method_test.h:109:36;
                end
                init_thread_PROC_STATE_next = 2; return;    // method_test.h:110:13;
            end
            i_next0 = 0;
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_3 = enable;
            end else begin
                TMP_3 = 0;
            end
            // Call get() end
            if (!TMP_3)
            begin
                init_thread_PROC_STATE_next = 3; return;    // method_test.h:116:43;
            end
            init_thread_PROC_STATE_next = 4; return;    // method_test.h:118:13;
        end
        3: begin
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_4 = enable;
            end else begin
                TMP_4 = 0;
            end
            // Call get() end
            if (!TMP_4)
            begin
                init_thread_PROC_STATE_next = 3; return;    // method_test.h:116:43;
            end
            init_thread_PROC_STATE_next = 4; return;    // method_test.h:118:13;
        end
        4: begin
            ++i_next0;
            if (i_next0 < N)
            begin
                enable = 1;
                // Call get() begin
                A = (resp_core_req || resp_reg_full);
                if (A)
                begin
                    resp_get_req_next = !resp_get_req;
                    TMP_5 = enable;
                end else begin
                    TMP_5 = 0;
                end
                // Call get() end
                if (!TMP_5)
                begin
                    init_thread_PROC_STATE_next = 3; return;    // method_test.h:116:43;
                end
                init_thread_PROC_STATE_next = 4; return;    // method_test.h:118:13;
            end
            init_thread_PROC_STATE_next = 5; return;    // method_test.h:121:9;
        end
        5: begin
            init_thread_PROC_STATE_next = 5; return;    // method_test.h:124:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge run_clk or negedge nrst) 
begin : init_thread_ff
    if ( ~nrst ) begin
        // Call reset_put() begin
        run_put_req <= 0;
        run_core_data <= 0;
        // Call reset_put() end
        // Call reset_get() begin
        resp_get_req <= 0;
        // Call reset_get() end
        init_thread_PROC_STATE <= 0;    // method_test.h:106:9;
    end
    else begin
        run_put_req <= run_put_req_next;
        run_core_data <= run_core_data_next;
        resp_get_req <= resp_get_req_next;
        i <= i_next;
        i0 <= i_next0;
        init_thread_PROC_STATE <= init_thread_PROC_STATE_next;
    end
end


//------------------------------------------------------------------------------
// Child module instances

A a
(
  .run_core_ready_s(run_core_ready),
  .run_core_req_s(run_core_req),
  .run_core_data_s(run_core_data),
  .resp_core_ready_s(resp_core_ready),
  .resp_core_req_s(resp_core_req),
  .resp_core_data_s(resp_core_data),
  .clk(clk),
  .nrst(nrst),
  .run_clk(clk),
  .run_nrst(nrst),
  .resp_clk(clk),
  .resp_nrst(nrst),
  .fifo_clk(clk),
  .fifo_nrst(nrst)
);

endmodule



//==============================================================================
//
// Module: A (method_test.h:79:5)
//
module A // "test_top.dut.a"
(
    output logic run_core_ready_s,
    input logic run_core_req_s,
    input logic [15:0] run_core_data_s,
    input logic resp_core_ready_s,
    output logic resp_core_req_s,
    output logic [15:0] resp_core_data_s,
    input logic clk,
    input logic nrst,
    input logic run_clk,
    input logic run_nrst,
    input logic resp_clk,
    input logic resp_nrst,
    input logic fifo_clk,
    input logic fifo_nrst
);

// Variables generated for SystemC signals
logic run_get_req;
logic run_get_req_d;
logic run_reg_full;
logic run_reg_full_d;
logic run_core_req_d;
logic [15:0] run_core_data_d;
logic resp_put_req;
logic resp_core_req_d;
logic resp_core_ready_d;
logic [15:0] fifo_buffer[2];
logic fifo_put_req;
logic fifo_get_req;
logic [15:0] fifo_data_in;
logic [15:0] fifo_data_out;
logic fifo_ready_push;
logic fifo_out_valid;
logic fifo_pop_indx;
logic fifo_push_indx;
logic [1:0] fifo_element_num;
logic [1:0] fifo_element_num_d;
logic fifo_not_empty_d;
logic run_core_ready;
logic run_core_req;
logic [15:0] run_core_data;
logic resp_core_ready;
logic resp_core_req;
logic [15:0] resp_core_data;

// Local parameters generated for C++ constants
localparam logic run_cthread = 0;
localparam logic run_always_ready = 0;
localparam logic resp_chan_sync = 0;
localparam logic resp_cthread = 0;
localparam logic resp_always_ready = 0;
localparam logic fifo_SYNC_VALID = 0;
localparam logic fifo_SYNC_READY = 1;
localparam logic fifo_INIT_BUFFER = 0;
localparam logic fifo_cthread_put = 0;
localparam logic fifo_cthread_get = 0;

// Assignments generated for C++ channel arrays
assign run_core_ready_s = run_core_ready;
assign run_core_req = run_core_req_s;
assign run_core_data = run_core_data_s;
assign resp_core_ready = resp_core_ready_s;
assign resp_core_req_s = resp_core_req;
assign resp_core_data_s = resp_core_data;

//------------------------------------------------------------------------------
// Method process: run_ready_control (sct_target.h:256:5) 

always_comb 
begin : run_ready_control     // sct_target.h:256:5
    logic A;
    A = run_get_req_d;
    run_core_ready = A || !run_reg_full;
end

//------------------------------------------------------------------------------
// Method process: run_full_control (sct_target.h:261:5) 

always_comb 
begin : run_full_control     // sct_target.h:261:5
    logic A;
    A = run_get_req_d;
    if (A)
    begin
        run_reg_full = 0;
    end else begin
        if (run_core_req_d)
        begin
            run_reg_full = 1;
        end else begin
            run_reg_full = run_reg_full_d;
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread (sct_target.h:273:5) 

// Thread-local variables
logic run_get_req_d_next;
logic run_core_req_d_next;
logic run_reg_full_d_next;
logic [15:0] run_core_data_d_next;

// Next-state combinational logic
always_comb begin : run_core_thread_comb     // sct_target.h:273:5
    run_core_thread_func;
end
function void run_core_thread_func;
    run_core_data_d_next = run_core_data_d;
    run_core_req_d_next = run_core_req_d;
    run_get_req_d_next = run_get_req_d;
    run_reg_full_d_next = run_reg_full_d;
    run_get_req_d_next = run_get_req;
    run_core_req_d_next = run_core_req;
    run_reg_full_d_next = run_reg_full;
    if (run_core_req && !run_reg_full)
    begin
        run_core_data_d_next = run_core_data;
    end
endfunction

// Synchronous register update
always_ff @(posedge run_clk or negedge run_nrst) 
begin : run_core_thread_ff
    if ( ~run_nrst ) begin
        run_get_req_d <= 0;
        run_core_req_d <= 0;
        run_reg_full_d <= 0;
        run_core_data_d <= 0;
    end
    else begin
        run_get_req_d <= run_get_req_d_next;
        run_core_req_d <= run_core_req_d_next;
        run_reg_full_d <= run_reg_full_d_next;
        run_core_data_d <= run_core_data_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: run_put_to_fifo (sct_target.h:242:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: resp_sync_thread (sct_initiator.h:223:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: resp_core_thread (sct_initiator.h:269:5) 

// Thread-local variables
logic resp_core_req_d_next;
logic resp_core_ready_d_next;

// Next-state combinational logic
always_comb begin : resp_core_thread_comb     // sct_initiator.h:269:5
    resp_core_thread_func;
end
function void resp_core_thread_func;
    resp_core_ready_d_next = resp_core_ready_d;
    resp_core_req_d_next = resp_core_req_d;
    resp_core_req_d_next = resp_core_req;
    resp_core_ready_d_next = resp_core_ready;
endfunction

// Synchronous register update
always_ff @(posedge resp_clk or negedge resp_nrst) 
begin : resp_core_thread_ff
    if ( ~resp_nrst ) begin
        resp_core_req_d <= 0;
        resp_core_ready_d <= 0;
    end
    else begin
        resp_core_req_d <= resp_core_req_d_next;
        resp_core_ready_d <= resp_core_ready_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: resp_req_control (sct_initiator.h:253:5) 

always_comb 
begin : resp_req_control     // sct_initiator.h:253:5
    logic A;
    A = resp_put_req;
    if (A)
    begin
        resp_core_req = 1;
    end else begin
        if (resp_core_ready_d)
        begin
            resp_core_req = 0;
        end else begin
            resp_core_req = resp_core_req_d;
        end
    end
end

//------------------------------------------------------------------------------
// Method process: fifo_asyncProc (sct_fifo.h:287:5) 

always_comb 
begin : fifo_asyncProc     // sct_fifo.h:287:5
    logic outValid;
    logic readyPush;
    logic popIndx;
    logic notEmpty;
    logic notFull;
    logic push;
    logic pop;
    popIndx = 0;
    notEmpty = fifo_element_num_d != 0;
    notFull = fifo_element_num_d != 2;
    push = fifo_put_req;
    pop = fifo_get_req;
    outValid = notEmpty;
    popIndx = fifo_pop_indx;
    fifo_not_empty_d = notEmpty;
    readyPush = notFull;
    fifo_out_valid = push || outValid;
    if (outValid)
    begin
        fifo_data_out = fifo_buffer[popIndx];
    end else begin
        fifo_data_out = fifo_data_in;
    end
    fifo_ready_push = readyPush;
    fifo_element_num = fifo_element_num_d;
    if (pop && !push)
    begin
        fifo_element_num = fifo_element_num_d - 1;
    end else begin
        if (!pop && push)
        begin
            fifo_element_num = fifo_element_num_d + 1;
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fifo_syncProc (sct_fifo.h:349:5) 

// Thread-local variables
logic fifo_pop_indx_next;
logic fifo_push_indx_next;
logic [1:0] fifo_element_num_d_next;
logic [15:0] fifo_buffer_next[2];

// Next-state combinational logic
always_comb begin : fifo_syncProc_comb     // sct_fifo.h:349:5
    fifo_syncProc_func;
end
function void fifo_syncProc_func;
    logic push;
    logic pop;
    logic A;
    fifo_buffer_next = fifo_buffer;
    fifo_element_num_d_next = fifo_element_num_d;
    fifo_pop_indx_next = fifo_pop_indx;
    fifo_push_indx_next = fifo_push_indx;
    push = fifo_put_req;
    pop = fifo_get_req;
    if (pop && fifo_not_empty_d)
    begin
        fifo_pop_indx_next = (fifo_pop_indx == 2 - 1) ? 0 : fifo_pop_indx + 1;
    end
    A = !fifo_SYNC_VALID && !fifo_not_empty_d && pop;
    if (push && !A)
    begin
        fifo_buffer_next[fifo_push_indx] = fifo_data_in;
        fifo_push_indx_next = (fifo_push_indx == 2 - 1) ? 0 : fifo_push_indx + 1;
    end
    fifo_element_num_d_next = fifo_element_num;
endfunction

// Synchronous register update
always_ff @(posedge fifo_clk or negedge fifo_nrst) 
begin : fifo_syncProc_ff
    if ( ~fifo_nrst ) begin
        fifo_pop_indx <= 0;
        fifo_push_indx <= 0;
        fifo_element_num_d <= 0;
        fifo_buffer[0] <= 0;
    end
    else begin
        fifo_pop_indx <= fifo_pop_indx_next;
        fifo_push_indx <= fifo_push_indx_next;
        fifo_element_num_d <= fifo_element_num_d_next;
        fifo_buffer <= fifo_buffer_next;
    end
end

//------------------------------------------------------------------------------
// Method process: putMeth (method_test.h:40:5) 

always_comb 
begin : putMeth     // method_test.h:40:5
    logic TMP_0;
    logic TMP_1;
    logic [15:0] TMP_2;
    logic A;
    logic [15:0] data;
    logic TMP_4;
    // Call reset_get() begin
    run_get_req = 0;
    // Call reset_get() end
    // Call reset_put() begin
    fifo_put_req = 0;
    fifo_data_in = 0;
    // Call reset_put() end
    // Call request() begin
    TMP_0 = run_core_req || run_reg_full;
    // Call request() end
    // Call ready() begin
    TMP_1 = fifo_ready_push;
    // Call ready() end
    if (TMP_0 && TMP_1)
    begin
        // Call get() begin
        A = (run_core_req || run_reg_full);
        if (A)
        begin
            run_get_req = 1;
        end else begin
            run_get_req = 0;
        end
        if (run_reg_full)
        begin
            TMP_2 = run_core_data_d;
        end else begin
            TMP_2 = run_core_data;
        end
        // Call get() end
        data = TMP_2;
        // Call put() begin
        fifo_data_in = data;
        if (fifo_ready_push)
        begin
            fifo_put_req = 1;
            TMP_4 = 1;
        end else begin
            fifo_put_req = 0;
            TMP_4 = 0;
        end
        // Call put() end
    end
end

//------------------------------------------------------------------------------
// Method process: getMeth (method_test.h:53:5) 

always_comb 
begin : getMeth     // method_test.h:53:5
    logic TMP_0;
    logic TMP_1;
    logic [15:0] TMP_2;
    logic [15:0] data;
    logic TMP_4;
    // Call reset_put() begin
    resp_put_req = 0;
    resp_core_data = 0;
    // Call reset_put() end
    // Call reset_get() begin
    fifo_get_req = 0;
    // Call reset_get() end
    // Call request() begin
    TMP_0 = fifo_out_valid;
    // Call request() end
    // Call ready() begin
    TMP_1 = resp_core_ready;
    // Call ready() end
    if (TMP_0 && TMP_1)
    begin
        // Call get() begin
        if (fifo_out_valid)
        begin
            fifo_get_req = 1;
        end else begin
            fifo_get_req = 0;
        end
        TMP_2 = fifo_data_out;
        // Call get() end
        data = TMP_2;
        // Call put() begin
        if (resp_always_ready || resp_core_ready)
        begin
            resp_put_req = 1;
            resp_core_data = data;
            TMP_4 = 1;
        end else begin
            resp_put_req = 0;
            resp_core_data = 0;
            TMP_4 = 0;
        end
        // Call put() end
    end
end

endmodule


