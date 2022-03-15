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
logic c;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .a(a),
  .b(b),
  .c(c)
);

endmodule



//==============================================================================
//
// Module: A (test_switch_after.cpp:268:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// Variables generated for SystemC signals
logic [2:0] s;
logic [2:0] t;

// Local parameters generated for C++ constants
localparam logic ONE = 1;
localparam logic ZERO = 0;

//------------------------------------------------------------------------------
// Method process: switch_compound1 (test_switch_after.cpp:48:5) 

always_comb 
begin : switch_compound1     // test_switch_after.cpp:48:5
    integer i;
    i = 0;
    case (t)
    1 : begin
        i = 1;
    end
    default : begin
        i = 2;
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: switch_compound2 (test_switch_after.cpp:64:5) 

always_comb 
begin : switch_compound2     // test_switch_after.cpp:64:5
    integer i;
    i = 0;
    case (t)
    1 : begin
        i = 1;
    end
    2 : begin
        i = 2;
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: switch_compound3 (test_switch_after.cpp:83:5) 

always_comb 
begin : switch_compound3     // test_switch_after.cpp:83:5
    integer i;
    i = 0;
    case (t)
    1 : begin  // Empty case without break
        i = 2;
    end
    2 : begin
        i = 2;
    end
    default : begin
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: switch_if1 (test_switch_after.cpp:99:5) 

always_comb 
begin : switch_if1     // test_switch_after.cpp:99:5
    integer i;
    case (t)
    1 : begin
        i = 1;
    end
    2 : begin
        i = 2;
    end
    default : begin
        i = 3;
    end
    endcase
    if (|s)
    begin
        i = 4;
    end else begin
        i = 5;
        if (|t)
        begin
            case (t)
            1 : begin
                i = 1;
            end
            default : begin
            end
            endcase
        end
    end
    if (i == s)
    begin
        i++;
    end
end

//------------------------------------------------------------------------------
// Method process: switch_if2 (test_switch_after.cpp:124:5) 

// Process-local variables
logic signed [31:0] k;

always_comb 
begin : switch_if2     // test_switch_after.cpp:124:5
    integer i;
    k = s;
    if (|t)
    begin
        case (t)
        1 : begin
            i = 1;
        end
        2 : begin  // Empty case without break
            i = 3;
        end
        default : begin
            i = 3;
        end
        endcase
    end
    if (k == s)
    begin
    end else begin
        case (t)
        1 : begin
            if (k == 1)
            begin
                k = 4;
            end
        end
        default : begin
            k = 5;
        end
        endcase
    end
end

//------------------------------------------------------------------------------
// Method process: switch_if3 (test_switch_after.cpp:145:5) 

// Process-local variables
logic signed [31:0] m;

always_comb 
begin : switch_if3     // test_switch_after.cpp:145:5
    integer i;
    m = s + 1;
    case (t)
    1 : begin
        i = 1;
    end
    2 : begin
        if (s < 3)
        begin
            i = 2;
        end
    end
    endcase
    if (s == 1)
    begin
        case (t)
        1 : begin  // Empty case without break
            i = 4;
        end
        default : begin
            i = 4;
        end
        endcase
    end
end

//------------------------------------------------------------------------------
// Method process: switch_if_for1 (test_switch_after.cpp:170:5) 

always_comb 
begin : switch_if_for1     // test_switch_after.cpp:170:5
    integer i;
    i = t;
    case (s)
    1 : begin
        i = 1;
    end
    2 : begin
        i = 2;
    end
    default : begin
        for (integer j = 0; j < 7; j++)
        begin
            i++;
        end
    end
    endcase
    if (s == 1)
    begin
        for (integer j_1 = 0; j_1 < 7; j_1++)
        begin
            if (|t)
            begin
                break;
            end
        end
    end
end

//------------------------------------------------------------------------------
// Method process: switch_if_for2 (test_switch_after.cpp:185:5) 

always_comb 
begin : switch_if_for2     // test_switch_after.cpp:185:5
    integer i;
    i = s;
    for (integer j = 0; j < 70; j++)
    begin
        if (|t)
        begin
            break;
        end
    end
    case (s)
    1 : begin
        i = 1;
    end
    2 : begin
        if (a)
        begin
            i++;
        end else begin
            i--;
            if (i == t)
            begin
            end else begin
                i--;
            end
        end
    end
    endcase
    for (integer j_1 = 0; j_1 < 40; j_1++)
    begin
        if (|t)
        begin
            i++;
        end
    end
end

//------------------------------------------------------------------------------
// Method process: switch_if_for3 (test_switch_after.cpp:206:5) 

always_comb 
begin : switch_if_for3     // test_switch_after.cpp:206:5
    integer i;
    logic [23:0] sum;
    i = (ONE && |s) ? 0 : 1;
    case (i)
    1 : begin
        i = 1;
    end
    default : begin
        case (s)
        1 : begin
            i = 2;
        end
        2 : begin
            i = 3;
        end
        endcase
    end
    endcase
    sum = 0;
    for (integer j = 0; j < 10; j++)
    begin
        for (integer l = 0; l < 10; l++)
        begin
            sum = sum + (l + j);
        end
        case (t)
        1 : begin  // Empty case without break
            i = 4;
        end
        2 : begin
            i = 4;
        end
        endcase
    end
end

//------------------------------------------------------------------------------
// Method process: switch_if_for4 (test_switch_after.cpp:232:5) 

always_comb 
begin : switch_if_for4     // test_switch_after.cpp:232:5
    integer i;
    integer unsigned sum;
    i = 0;
    if ((|s || ZERO) && (ONE && |t))
    begin
        case (s)
        1 : begin
            i = 1;
        end
        2 : begin
            i = 2;
        end
        default : begin
        end
        endcase
    end else begin
        case (s)
        1 : begin
            i = 3;
        end
        endcase
    end
    sum = s;
    for (integer l = 0; l < 10; l++)
    begin
        sum = sum + l;
    end
end

endmodule


