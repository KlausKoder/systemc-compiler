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
logic rst;
logic signed [31:0] t;


//------------------------------------------------------------------------------
// Child module instances

Child child
(
  .clk(clk),
  .rst(rst),
  .in(t),
  .out(t)
);

endmodule



//==============================================================================
//
// Module: Child (test_cthread_var_multiple_use.cpp:65:5)
//
module Child // "top.child"
(
    input logic clk,
    input logic rst,
    input logic signed [31:0] in,
    output logic signed [31:0] out
);

// Variables generated for SystemC signals
logic signed [31:0] s;

//------------------------------------------------------------------------------
// Clocked THREAD: thrA (test_cthread_var_multiple_use.cpp:36:5) 

// Thread-local variables
logic signed [31:0] s_next;
logic [2:0] v;
logic [2:0] v_next;
logic signed [31:0] i;
logic signed [31:0] i_next;
logic signed [31:0] out_next;
logic [1:0] thrA_PROC_STATE;
logic [1:0] thrA_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thrA_comb     // test_cthread_var_multiple_use.cpp:36:5
    thrA_func;
end
function void thrA_func;
    i_next = i;
    out_next = out;
    s_next = s;
    v_next = v;
    thrA_PROC_STATE_next = thrA_PROC_STATE;
    
    case (thrA_PROC_STATE)
        0: begin
            i_next = v_next + s;
            thrA_PROC_STATE_next = 1; return;    // test_cthread_var_multiple_use.cpp:43:13;
        end
        1: begin
            out_next = i_next + in;
            thrA_PROC_STATE_next = 2; return;    // test_cthread_var_multiple_use.cpp:45:13;
        end
        2: begin
            i_next = v_next + s;
            thrA_PROC_STATE_next = 1; return;    // test_cthread_var_multiple_use.cpp:43:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : thrA_ff
    if ( rst ) begin
        v <= 1;
        s <= 0;
        thrA_PROC_STATE <= 0;    // test_cthread_var_multiple_use.cpp:39:9;
    end
    else begin
        s <= s_next;
        v <= v_next;
        i <= i_next;
        out <= out_next;
        thrA_PROC_STATE <= thrA_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thrB (test_cthread_var_multiple_use.cpp:49:5) 

// Thread-local variables
logic [1:0] thrB_WAIT_N_COUNTER;
logic [1:0] thrB_WAIT_N_COUNTER_next;
logic [2:0] v2;
logic [2:0] v2_next;
logic thrB_PROC_STATE;
logic thrB_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thrB_comb     // test_cthread_var_multiple_use.cpp:49:5
    thrB_func;
end
function void thrB_func;
    integer i_1;
    v2_next = v2;
    thrB_WAIT_N_COUNTER_next = thrB_WAIT_N_COUNTER;
    thrB_PROC_STATE_next = thrB_PROC_STATE;
    
    case (thrB_PROC_STATE)
        0: begin
            i_1 = v2_next + in + s;
            thrB_WAIT_N_COUNTER_next = 2;
            thrB_PROC_STATE_next = 1; return;    // test_cthread_var_multiple_use.cpp:55:13;
        end
        1: begin
            if (thrB_WAIT_N_COUNTER != 1) begin
                thrB_WAIT_N_COUNTER_next = thrB_WAIT_N_COUNTER - 1;
                thrB_PROC_STATE_next = 1; return;    // test_cthread_var_multiple_use.cpp:55:13;
            end;
            i_1 = v2_next + in + s;
            thrB_WAIT_N_COUNTER_next = 2;
            thrB_PROC_STATE_next = 1; return;    // test_cthread_var_multiple_use.cpp:55:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : thrB_ff
    if ( rst ) begin
        out <= 0;
        thrB_PROC_STATE <= 0;    // test_cthread_var_multiple_use.cpp:51:9;
        thrB_WAIT_N_COUNTER <= 0;
    end
    else begin
        thrB_WAIT_N_COUNTER <= thrB_WAIT_N_COUNTER_next;
        v2 <= v2_next;
        thrB_PROC_STATE <= thrB_PROC_STATE_next;
    end
end

endmodule


