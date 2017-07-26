# TCL File Generated by Component Editor 17.0
# Thu Jun 15 17:17:56 JST 2017
# DO NOT MODIFY


# 
# plic "plic" v1.0
#  2017.06.15.17:17:56
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module plic
# 
set_module_property DESCRIPTION ""
set_module_property NAME plic
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME plic
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL fmrv32im_plic
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file fmrv32im_plic.v VERILOG PATH src/fmrv32im_plic.v TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock CLK clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset RST_N reset_n Input 1


# 
# connection point int_out
# 
add_interface int_out conduit end
set_interface_property int_out associatedClock clock
set_interface_property int_out associatedReset ""
set_interface_property int_out ENABLED true
set_interface_property int_out EXPORT_OF ""
set_interface_property int_out PORT_NAME_MAP ""
set_interface_property int_out CMSIS_SVD_VARIABLES ""
set_interface_property int_out SVD_ADDRESS_GROUP ""

add_interface_port int_out INT_OUT interrupt Output 1


# 
# connection point int_in
# 
add_interface int_in conduit end
set_interface_property int_in associatedClock clock
set_interface_property int_in associatedReset ""
set_interface_property int_in ENABLED true
set_interface_property int_in EXPORT_OF ""
set_interface_property int_in PORT_NAME_MAP ""
set_interface_property int_in CMSIS_SVD_VARIABLES ""
set_interface_property int_in SVD_ADDRESS_GROUP ""

add_interface_port int_in INT_IN interrupt Input 1


# 
# connection point SYS_BUS
# 
add_interface SYS_BUS conduit end
set_interface_property SYS_BUS associatedClock clock
set_interface_property SYS_BUS associatedReset ""
set_interface_property SYS_BUS ENABLED true
set_interface_property SYS_BUS EXPORT_OF ""
set_interface_property SYS_BUS PORT_NAME_MAP ""
set_interface_property SYS_BUS CMSIS_SVD_VARIABLES ""
set_interface_property SYS_BUS SVD_ADDRESS_GROUP ""

add_interface_port SYS_BUS BUS_WE we Input 1
add_interface_port SYS_BUS BUS_ADDR addr Input 4
add_interface_port SYS_BUS BUS_WDATA wdata Input 32
add_interface_port SYS_BUS BUS_RDATA rdata Output 32

