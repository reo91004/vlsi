puts "RM-Info: Running script [info script]\n"

##########################################################################################
# Variables common to all reference methodology scripts
# Script: common_setup.tcl
# Version: S-2021.06
# Copyright (C) 2007-2021 Synopsys, Inc. All rights reserved.
##########################################################################################

set DESIGN_NAME                   "top"  ;#  The name of the top-level design

set DESIGN_REF_DATA_PATH          "/home/sdalab/lab_3/rtl"  ;#  Absolute path prefix variable for library/design data.
                                       #  Use this variable to prefix the common absolute path
                                       #  to the common variables defined below.
                                       #  Absolute paths are mandatory for hierarchical
                                       #  reference methodology flow.

##########################################################################################
# Hierarchical Flow Design Variables
##########################################################################################

set HIERARCHICAL_DESIGNS           "control_unit_debug datapath_debug top_debug" ;# List of hierarchical block design names "DesignA DesignB" ...
set HIERARCHICAL_CELLS             "control_unit_debug datapath_debug top_debug" ;# List of hierarchical block cell instance names "u_DesignA u_DesignB" ...

##########################################################################################
# Library Setup Variables
##########################################################################################

# For the following variables, use a blank space to separate multiple entries.
# Example: set TARGET_LIBRARY_FILES "lib1.db lib2.db lib3.db"

set ADDITIONAL_SEARCH_PATH        "/home/DB/SAED32_EDK/lib/stdcell_rvt/db_nldm\ 
                                   /home/sdalab/lab_3"  ;#  Additional search path to be added to the default search path (used by all tools)

set TARGET_LIBRARY_FILES          "/home/DB/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ss0p7vn40c.db"  ;#  Target technology logical libraries (used by DC, DCCNT)
set MIN_LIBRARY_FILES             "/home/DB/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ss0p7vn40c.db\
                                   /home/DB/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ff0p95v125c.db"  ;#  List of max min library pairs "max1 min1 max2 min2 max3 min3"...


set RTL_SOURCE_FILES  "control_unit_debug.v datapath_debug.v top_debug.v" ;# Enter the list of source RTL files if reading from RTL

# The following variables are used by scripts in the rm_dc_scripts folder to direct
# the location of the output files.

set REPORTS_DIR "reports"
set RESULTS_DIR "results"

file mkdir ${REPORTS_DIR}
file mkdir ${RESULTS_DIR}

################################################################################
# Search Path Setup
#
# Set up the search path to find the libraries and design files.
#################################################################################

set_app_var search_path ". ${ADDITIONAL_SEARCH_PATH} $search_path  ./rtl"

#################################################################################
# Library Setup
#
# This section is designed to work with the settings from common_setup.tcl
# without any additional modification.
#################################################################################

# The remainder of the setup below should only be performed in Design Compiler
if {$synopsys_program_name == "dc_shell" || $synopsys_program_name == "dcnxt_shell"}  {

  set_app_var target_library ${TARGET_LIBRARY_FILES}
#  set_app_var synthetic_library dw_foundation.sldb

  set_app_var link_library "* $target_library  $synthetic_library"

  # Set min libraries if they exist
  foreach {max_library min_library} $MIN_LIBRARY_FILES {
    set_min_library $max_library -min_version $min_library
  }
}
define_design_lib WORK -path ./WORK

#Clock period setup for sequential circuit design
#create_clock -period 20 [get_ports clk]
#set_input_delay -max 0.6 -clock clk [all_inputs]
#set_output_delay -max 0.8 -clock clk [all_outputs]
#set_input_transition -max 0.12 [all_inputs]


#################################################################################
# Additional Setup
#################################################################################
set_dont_use [get_lib_cells saed32rvt_ss0p7vn40c/*]
#set allowed_cells [list saed32rvt_ss0p7vn40c/INVX1_RVT saed32rvt_ss0p7vn40c/NANDX1_RVT saed32rvt_ss0p7vn40c/DFFX1_RVT] 
#remove_attribute $allowed_cells

remove_attribute { \
saed32rvt_ss0p7vn40c/INVX1_RVT \
saed32rvt_ss0p7vn40c/NAND2X1_RVT \
saed32rvt_ss0p7vn40c/NOR2X1_RVT \
saed32rvt_ss0p7vn40c/DFFX1_RVT } dont_use 




#Read and check the design
analyze -format verilog ${RTL_SOURCE_FILES}
elaborate ${DESIGN_NAME}
current_design ${DESIGN_NAME}


source -echo -verbose top.constraints.tcl

# Check the current design for consistency
#check_design -summary
#check_design > ${REPORTS_DIR}/${DESIGN_NAME}.check_design.rpt

#Output mapped file
write -format verilog -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}.unmapped.v

# Compile (Logic synthesis)
compile_ultra -no_autoungroup
#compile
#Change BUS name style (from [7] to _7_)
define_name_rules BUS -remove_internal_net_bus -flatten_multi_dimension_busses -remove_port_bus -allowed "A-Za-z1234567890_"
change_names -rule BUS -hierarchy

#Output mapped file
write -format verilog -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}.mapped.v

#Output report files
write_sdc -nosplit ${RESULTS_DIR}/${DESIGN_NAME}.mapped.sdc
report_timing -transition_time -nets -attributes -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.timing.rpt
report_area -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.area.rpt
write -f verilog -output ./netlist.v

exit
