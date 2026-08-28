`ifndef CFS_ALGN_ENV_SV
`define CFS_ALGN_ENV_SV

    class cfs_algn_env extends uvm_env; // Extend uvm_env, not uvm_component directly, to preserve UVM hierarchy semantics.
        
        // Register this class with the factory so I can override it later if needed.
        `uvm_component_utils(cfs_algn_env)

        // Standard UVM component constructor requires a name and a parent.
        function new(string name = "", uvm_component parent);
            super.new(name, parent);
        endfunction

    endclass

`endif