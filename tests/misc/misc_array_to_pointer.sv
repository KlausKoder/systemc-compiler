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
module A // "b_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic nrst;
logic signed [31:0] s;

//------------------------------------------------------------------------------
// Method process: read_pointer (test_array_to_pointer.cpp:71:5) 

// Process-local variables
logic signed [31:0] pp1;
logic signed [31:0] paa[3];

always_comb 
begin : read_pointer     // test_array_to_pointer.cpp:71:5
    integer larr[3];
    integer i;
    i = pp1;
    i = paa[1];
    i = larr[1];
end

//------------------------------------------------------------------------------
// Method process: read_array (test_array_to_pointer.cpp:83:5) 

// Process-local variables
logic signed [31:0] arr[3][4];
logic signed [31:0] parr[3][4];
logic signed [31:0] pi[3];
logic signed [31:0] pa[3];
logic signed [31:0] pb[3];

always_comb 
begin : read_array     // test_array_to_pointer.cpp:83:5
    integer i;
    i = pi[0];
    i = pa[1];
    i = pb[s];
    arr[0][1] = 42;
    i = arr[s][s + 1] + arr[0][2];
    parr[2][1] = 43;
    parr[s][1] = 44;
end

//------------------------------------------------------------------------------
// Clocked THREAD: write_array (test_array_to_pointer.cpp:104:5) 

// Thread-local variables
logic signed [31:0] pj[3];
logic signed [31:0] pj_next[3];
logic signed [31:0] pc[3];
logic signed [31:0] pc_next[3];
logic signed [31:0] pd[3];
logic write_array_PROC_STATE;
logic write_array_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : write_array_comb     // test_array_to_pointer.cpp:104:5
    write_array_func;
end
function void write_array_func;
    pc_next = pc;
    pj_next = pj;
    write_array_PROC_STATE_next = write_array_PROC_STATE;
    
    case (write_array_PROC_STATE)
        0: begin
            pc_next[s] = pj_next[1];
            write_array_PROC_STATE_next = 1; return;    // test_array_to_pointer.cpp:113:13;
        end
        1: begin
            pd[s + 1] = pc_next[1];
            pc_next[s] = pj_next[1];
            write_array_PROC_STATE_next = 1; return;    // test_array_to_pointer.cpp:113:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(negedge clk or negedge nrst) 
begin : write_array_ff
    if ( ~nrst ) begin
        for (integer i = 0; i < 3; i++)
        begin
            pj[i] <= i;
        end
        write_array_PROC_STATE <= 0;    // test_array_to_pointer.cpp:109:9;
    end
    else begin
        pj <= pj_next;
        pc <= pc_next;
        write_array_PROC_STATE <= write_array_PROC_STATE_next;
    end
end

endmodule


