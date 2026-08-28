`ifndef CFS_ALGN_TEST_PKG_SV
`define CFS_ALGN_TEST_PKG_SV

    package cfs_algn_test_pkg;
        // import UVM base classes (uvm_env, uvm_test)
        import uvm_pkg::*;

        import cfs_algn_env_pkg::*;
        localparam CLK_PERIOD = 10;

        // Bring in UVM macros (`uvm_component_utils).
        `include "uvm_macros.svh"

        `include "cfs_algn_base_test.sv"
        `include "cfs_algn_register_access_test.sv"
    endpackage

`endif