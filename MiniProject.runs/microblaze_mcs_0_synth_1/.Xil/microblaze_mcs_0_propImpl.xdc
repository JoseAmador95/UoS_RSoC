set_property SRC_FILE_INFO {cfile:c:/Users/jose_/OneDrive/Ingenieria/Embedded/FPGA/Vivado/MiniProject/MiniProject.srcs/sources_1/ip/microblaze_mcs_0/bd_0/ip/ip_0/bd_fc5c_0_microblaze_I_0.xdc rfile:../../../MiniProject.srcs/sources_1/ip/microblaze_mcs_0/bd_0/ip/ip_0/bd_fc5c_0_microblaze_I_0.xdc id:1 order:EARLY scoped_inst:U0/microblaze_I/U0} [current_design]
current_instance U0/microblaze_I/U0
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user microblaze -tags 12436 -type CDC -id CDC-26 -description "Invalid LUTRAM collision warning" -to [get_pins -quiet "LOCKSTEP_Out_reg\[*\]/R"]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user microblaze -tags 12436 -type CDC -id CDC-26 -description "Invalid LUTRAM collision warning" -to [get_pins -quiet "MicroBlaze_Core_I/*Interrupt_DFF/Single_Synchronize.use_sync_reset.sync_reg/D"]
set_property src_info {type:SCOPED_XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user microblaze -tags 12436 -scope -type DRC -id PDCN-1569 -description "Valid LUT-6 instantiation" -objects [get_cells -quiet -hierarchical -filter {HLUTNM=~LUT6_2} *LUT*]
