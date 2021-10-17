set search_path "/afs/iitd.ac.in/service/tools/public/asiclib/umcoa/L65/libraries/UMC65LLSC/synopsys/ccs"
set_attribute lib_search_path "/afs/iitd.ac.in/service/tools/public/asiclib/umcoa/L65/libraries/UMC65LLSC/synopsys/ccs"
set_attribute hdl_search_path "./AUG_ANIRBAN_SIM/counter"
set_attribute library "uk65lscllmvbbr_100c25_tc_ccs.lib"

read_hdl mod8.v
elaborate
check_design -unresolved
read_sdc ./upcounter_8bit.sdc
synthesize -to_mapped -effort medium
write_hdl > ./typical/counter_netlist.v
write_sdc > ./typical/counter.sdc