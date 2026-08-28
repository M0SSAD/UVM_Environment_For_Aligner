`ifndef CFS_ALGN_ENV_PKG_SV
`define CFS_ALGN_ENV_PKG_SV
    
    package cfs_algn_env_pkg;
        // import UVM base classes (uvm_env, uvm_test)
        import uvm_pkg::*;

        // Bring in UVM macros (`uvm_component_utils).
        `include "uvm_macros.svh"

        `include "cfs_algn_env.sv"
    endpackage

`endif