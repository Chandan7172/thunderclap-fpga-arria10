# TCL File Generated by Component Editor 15.0
# Mon Jul 06 21:05:58 BST 2015
# DO NOT MODIFY


# 
# PCIePacketTransmitter "PCIePacketTransmitter" v1.1
#  2015.07.06.21:05:58
# 
# 

# 
# request TCL package from ACDS 15.0
# 
package require -exact qsys 15.0


# 
# module PCIePacketTransmitter
# 
set_module_property DESCRIPTION ""
set_module_property NAME PCIePacketTransmitter
set_module_property VERSION 1.1
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME PCIePacketTransmitter
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL mkPCIePacketTransmitter
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file mkPCIePacketTransmitter.v VERILOG PATH mkPCIePacketTransmitter.v TOP_LEVEL_FILE

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL mkPCIePacketTransmitter
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file mkPCIePacketTransmitter.v VERILOG PATH mkPCIePacketTransmitter.v


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
# connection point mmslave_avs
# 
add_interface mmslave_avs avalon end
set_interface_property mmslave_avs addressUnits WORDS
set_interface_property mmslave_avs associatedClock clock
set_interface_property mmslave_avs associatedReset reset_sink
set_interface_property mmslave_avs bitsPerSymbol 8
set_interface_property mmslave_avs burstOnBurstBoundariesOnly false
set_interface_property mmslave_avs burstcountUnits WORDS
set_interface_property mmslave_avs explicitAddressSpan 0
set_interface_property mmslave_avs holdTime 0
set_interface_property mmslave_avs linewrapBursts false
set_interface_property mmslave_avs maximumPendingReadTransactions 1
set_interface_property mmslave_avs maximumPendingWriteTransactions 0
set_interface_property mmslave_avs readLatency 0
set_interface_property mmslave_avs readWaitTime 1
set_interface_property mmslave_avs setupTime 0
set_interface_property mmslave_avs timingUnits Cycles
set_interface_property mmslave_avs writeWaitTime 0
set_interface_property mmslave_avs ENABLED true
set_interface_property mmslave_avs EXPORT_OF ""
set_interface_property mmslave_avs PORT_NAME_MAP ""
set_interface_property mmslave_avs CMSIS_SVD_VARIABLES ""
set_interface_property mmslave_avs SVD_ADDRESS_GROUP ""

add_interface_port mmslave_avs mmSlave_avs_readdatavalid readdatavalid Output 1
add_interface_port mmslave_avs mmSlave_avs_waitrequest waitrequest Output 1
add_interface_port mmslave_avs mmSlave_avs_writedata writedata Input 32
add_interface_port mmslave_avs mmSlave_avs_address address Input 8
add_interface_port mmslave_avs mmSlave_avs_read read Input 1
add_interface_port mmslave_avs mmSlave_avs_write write Input 1
add_interface_port mmslave_avs mmSlave_avs_byteenable byteenable Input 4
add_interface_port mmslave_avs mmSlave_avs_readdata readdata Output 32
set_interface_assignment mmslave_avs embeddedsw.configuration.isFlash 0
set_interface_assignment mmslave_avs embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment mmslave_avs embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment mmslave_avs embeddedsw.configuration.isPrintableDevice 0


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink RST_N reset_n Input 1


# 
# connection point avalon_streaming_source
# 
add_interface avalon_streaming_source avalon_streaming start
set_interface_property avalon_streaming_source associatedClock clock
set_interface_property avalon_streaming_source associatedReset reset_sink
set_interface_property avalon_streaming_source dataBitsPerSymbol 64
set_interface_property avalon_streaming_source errorDescriptor ""
set_interface_property avalon_streaming_source firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_source maxChannel 0
set_interface_property avalon_streaming_source readyLatency 0
set_interface_property avalon_streaming_source ENABLED true
set_interface_property avalon_streaming_source EXPORT_OF ""
set_interface_property avalon_streaming_source PORT_NAME_MAP ""
set_interface_property avalon_streaming_source CMSIS_SVD_VARIABLES ""
set_interface_property avalon_streaming_source SVD_ADDRESS_GROUP ""

add_interface_port avalon_streaming_source streamSource_aso_data data Output 64
add_interface_port avalon_streaming_source streamSource_aso_valid valid Output 1
add_interface_port avalon_streaming_source streamSource_aso_sop startofpacket Output 1
add_interface_port avalon_streaming_source streamSource_aso_eop endofpacket Output 1
add_interface_port avalon_streaming_source streamSource_aso_ready ready Input 1


# 
# connection point conduit_be
# 
#add_interface conduit_be conduit end
#set_interface_property conduit_be associatedClock clock
#set_interface_property conduit_be associatedReset reset_sink
#set_interface_property conduit_be ENABLED true
#set_interface_property conduit_be EXPORT_OF ""
#set_interface_property conduit_be PORT_NAME_MAP ""
#set_interface_property conduit_be CMSIS_SVD_VARIABLES ""
#set_interface_property conduit_be SVD_ADDRESS_GROUP ""

#add_interface_port conduit_be streamSource_aso_be be Output 8


# 
# connection point conduit_parity
# 
#add_interface conduit_parity conduit end
#set_interface_property conduit_parity associatedClock clock
#set_interface_property conduit_parity associatedReset reset_sink
#set_interface_property conduit_parity ENABLED true
#set_interface_property conduit_parity EXPORT_OF ""
#set_interface_property conduit_parity PORT_NAME_MAP ""
#set_interface_property conduit_parity CMSIS_SVD_VARIABLES ""
#set_interface_property conduit_parity SVD_ADDRESS_GROUP ""

#add_interface_port conduit_parity streamSource_aso_parity parity Output 8


# 
# connection point conduit_bar
# 
#add_interface conduit_bar conduit end
#set_interface_property conduit_bar associatedClock clock
#set_interface_property conduit_bar associatedReset reset_sink
#set_interface_property conduit_bar ENABLED true
#set_interface_property conduit_bar EXPORT_OF ""
#set_interface_property conduit_bar PORT_NAME_MAP ""
#set_interface_property conduit_bar CMSIS_SVD_VARIABLES ""
#set_interface_property conduit_bar SVD_ADDRESS_GROUP ""

#add_interface_port conduit_bar streamSource_aso_bar bar Output 8


# 
# connection point conduit_error
# 
#add_interface conduit_error conduit end
#set_interface_property conduit_error associatedClock clock
#set_interface_property conduit_error associatedReset reset_sink
#set_interface_property conduit_error ENABLED true
#set_interface_property conduit_error EXPORT_OF ""
#set_interface_property conduit_error PORT_NAME_MAP ""
#set_interface_property conduit_error CMSIS_SVD_VARIABLES ""
#set_interface_property conduit_error SVD_ADDRESS_GROUP ""

#add_interface_port conduit_error streamSource_aso_err error Output 1

