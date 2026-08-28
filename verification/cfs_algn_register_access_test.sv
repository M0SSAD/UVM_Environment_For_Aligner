`ifndef CFS_ALGN_REGISTER_ACCESS_TEST_SV
`define CFS_ALGN_REGISTER_ACCESS_TEST_SV
    class cfs_algn_register_access_test extends cfs_algn_base_test;
        `uvm_component_utils(cfs_algn_register_access_test)

        function new(string name="", uvm_component parent);
            super.new(name, parent);
        endfunction

        // run phase task
        virtual task run_phase(uvm_phase phase);
            phase.raise_objection(this); // I am doing smth, don't end the run_phase

            // test body
            // TODO
            #100;
            

            `uvm_info("REG_ACCESS_TEST", "DEBUG: TEST FINISHED.", UVM_LOW)

            phase.drop_objection(this); // you may end the run phase
        endtask

    endclass
`endif
