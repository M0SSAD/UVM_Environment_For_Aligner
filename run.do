# create the working library.
vlib work 

# compile the design files, and the verification files.
vlog -sv  ./design/design.sv -f ./verification/compile.f

# elaborate and run the simulation
vsim -voptargs=+acc work.top_tb +UVM_TESTNAME=cfs_algn_register_access_test

add wave -r /*
run -all
exit