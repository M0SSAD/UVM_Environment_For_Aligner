module top_tb();
    import uvm_pkg::*;     
    `include "uvm_macros.svh"
    import cfs_algn_test_pkg::*; // Import Test package, it includes the UVM Package and the hierarchy.

    bit clk;
    bit reset_n;

    // clock generation
    initial begin
        forever begin
            #(CLK_PERIOD/2) clk = ~clk; // clock cycle. 
        end
    end

    // initial reset block.
    initial begin
        reset_n = 0;
        repeat(5) @(posedge clk);
        reset_n = 1;
    end

    // Starting UVM Test.
    initial begin
        run_test(); // global UVM task, builds the UVM hierarchy and starts the simulation time.
    end

    // DUT Instantiation
    cfs_aligner algn_dut(.clk(clk), .reset_n(reset_n));

endmodule