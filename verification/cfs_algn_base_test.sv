`ifndef CFS_ALGN_BASE_TEST_SV
`define CFS_ALGN_BASE_TEST_SV
    class cfs_algn_base_test extends uvm_test;
        `uvm_component_utils(cfs_algn_base_test)
        cfs_algn_env env;
        function new(string name ="", uvm_component parent);
            super.new(name, parent);
        endfunction

        // The phase must return void. 
        // It executes top-down (test -> env -> agent).
        virtual function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            env = cfs_algn_env::type_id::create("env", this);
        endfunction
    endclass


`endif