# TCL File Generated by Component Editor 17.0
# Thu Jun 15 17:20:37 JST 2017
# DO NOT MODIFY


# 
# cache "cache" v1.0
#  2017.06.15.17:20:37
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module cache
# 
set_module_property DESCRIPTION ""
set_module_property NAME cache
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME cache
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL fmrv32im_cache
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file fmrv32im_cache.v VERILOG PATH src/fmrv32im_cache.v TOP_LEVEL_FILE
add_fileset_file fmrv32im_cache_intelmem.v VERILOG PATH src/fmrv32im_cache_intelmem.v


# 
# parameters
# 
add_parameter INTEL INTEGER 0
set_parameter_property INTEL DEFAULT_VALUE 0
set_parameter_property INTEL DISPLAY_NAME INTEL
set_parameter_property INTEL TYPE INTEGER
set_parameter_property INTEL UNITS None
set_parameter_property INTEL ALLOWED_RANGES -2147483648:2147483647
set_parameter_property INTEL HDL_PARAMETER true
add_parameter OSRAM INTEGER 0
set_parameter_property OSRAM DEFAULT_VALUE 0
set_parameter_property OSRAM DISPLAY_NAME OSRAM
set_parameter_property OSRAM TYPE INTEGER
set_parameter_property OSRAM UNITS None
set_parameter_property OSRAM ALLOWED_RANGES -2147483648:2147483647
set_parameter_property OSRAM HDL_PARAMETER true
add_parameter MEM_FILE STRING ""
set_parameter_property MEM_FILE DEFAULT_VALUE ""
set_parameter_property MEM_FILE DISPLAY_NAME MEM_FILE
set_parameter_property MEM_FILE TYPE STRING
set_parameter_property MEM_FILE UNITS None
set_parameter_property MEM_FILE HDL_PARAMETER true


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
# connection point D_MEM
# 
add_interface D_MEM conduit end
set_interface_property D_MEM associatedClock clock
set_interface_property D_MEM associatedReset ""
set_interface_property D_MEM ENABLED true
set_interface_property D_MEM EXPORT_OF ""
set_interface_property D_MEM PORT_NAME_MAP ""
set_interface_property D_MEM CMSIS_SVD_VARIABLES ""
set_interface_property D_MEM SVD_ADDRESS_GROUP ""

add_interface_port D_MEM D_MEM_ADDR addr Input 32
add_interface_port D_MEM D_MEM_BADMEM_EXCPT excpt Output 1
add_interface_port D_MEM D_MEM_ENA ena Input 1
add_interface_port D_MEM D_MEM_RDATA rdata Output 32
add_interface_port D_MEM D_MEM_WAIT wait Output 1
add_interface_port D_MEM D_MEM_WDATA wdata Input 32
add_interface_port D_MEM D_MEM_WSTB wstb Input 4


# 
# connection point I_MEM
# 
add_interface I_MEM conduit end
set_interface_property I_MEM associatedClock clock
set_interface_property I_MEM associatedReset ""
set_interface_property I_MEM ENABLED true
set_interface_property I_MEM EXPORT_OF ""
set_interface_property I_MEM PORT_NAME_MAP ""
set_interface_property I_MEM CMSIS_SVD_VARIABLES ""
set_interface_property I_MEM SVD_ADDRESS_GROUP ""

add_interface_port I_MEM I_MEM_ADDR addr Input 32
add_interface_port I_MEM I_MEM_BADMEM_EXCPT excpt Output 1
add_interface_port I_MEM I_MEM_ENA ena Input 1
add_interface_port I_MEM I_MEM_RDATA rdata Output 32
add_interface_port I_MEM I_MEM_WAIT wait Output 1


# 
# connection point REQ_BUS
# 
add_interface REQ_BUS conduit end
set_interface_property REQ_BUS associatedClock clock
set_interface_property REQ_BUS associatedReset ""
set_interface_property REQ_BUS ENABLED true
set_interface_property REQ_BUS EXPORT_OF ""
set_interface_property REQ_BUS PORT_NAME_MAP ""
set_interface_property REQ_BUS CMSIS_SVD_VARIABLES ""
set_interface_property REQ_BUS SVD_ADDRESS_GROUP ""

add_interface_port REQ_BUS RD_REQ_ADDR rd_addr Output 32
add_interface_port REQ_BUS RD_REQ_LEN rd_len Output 16
add_interface_port REQ_BUS RD_REQ_MEM_ADDR rd_mem_addr Input 10
add_interface_port REQ_BUS RD_REQ_MEM_RDATA rd_mem_rdata Input 32
add_interface_port REQ_BUS RD_REQ_MEM_WE rd_mem_we Input 1
add_interface_port REQ_BUS RD_REQ_READY rd_ready Input 1
add_interface_port REQ_BUS RD_REQ_START rd_start Output 1
add_interface_port REQ_BUS WR_REQ_ADDR wr_addr Output 32
add_interface_port REQ_BUS WR_REQ_LEN wr_len Output 16
add_interface_port REQ_BUS WR_REQ_MEM_ADDR wr_mem_addr Input 10
add_interface_port REQ_BUS WR_REQ_MEM_WDATA wr_mem_wdata Output 32
add_interface_port REQ_BUS WR_REQ_READY wr_ready Input 1
add_interface_port REQ_BUS WR_REQ_START wr_start Output 1

