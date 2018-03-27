set C_TypeInfoList {{ 
"md" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [],["0","1","2","3"],""],
 "0": [ "world_rank", [[], {"scalar": "int"}],""],
 "1": [ "stream_out", [[],"4"],""],
 "2": [ "stream_in", [[],"4"],""],
 "3": [ "processorCount", [[], {"scalar": "int"}],""], 
"4": [ "stream<stream_packet>", {"hls_type": {"stream": [[[[],"5"]],"6"]}}], 
"5": [ "stream_packet", {"struct": [[{"pack": 0}],[],[{ "data": [[], "7"]},{ "dest": [[], "8"]},{ "last": [[], "9"]},{ "id": [[], "8"]},{ "user": [[], "10"]}],""]}], 
"7": [ "ap_uint<64>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 64}}]],""]}}], 
"8": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"9": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"10": [ "ap_uint<40>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 40}}]],""]}}],
"6": ["hls", ""]
}}
set moduleName md
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {md}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_out_V int 121 regular {fifo 1 volatile } {global 1}  }
	{ stream_in_V int 121 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_out_V", "interface" : "fifo", "bitwidth" : 121, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "stream_out.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":71,"cElement": [{"cName": "stream_out.V.dest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":72,"up":72,"cElement": [{"cName": "stream_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":73,"up":80,"cElement": [{"cName": "stream_out.V.id.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":81,"up":120,"cElement": [{"cName": "stream_out.V.user.V","cData": "uint40","bit_use": { "low": 0,"up": 39},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "stream_in_V", "interface" : "fifo", "bitwidth" : 121, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "stream_in.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":71,"cElement": [{"cName": "stream_in.V.dest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":72,"up":72,"cElement": [{"cName": "stream_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":73,"up":80,"cElement": [{"cName": "stream_in.V.id.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":81,"up":120,"cElement": [{"cName": "stream_in.V.user.V","cData": "uint40","bit_use": { "low": 0,"up": 39},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_out_V_din sc_out sc_lv 121 signal 0 } 
	{ stream_out_V_full_n sc_in sc_logic 1 signal 0 } 
	{ stream_out_V_write sc_out sc_logic 1 signal 0 } 
	{ stream_in_V_dout sc_in sc_lv 121 signal 1 } 
	{ stream_in_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ stream_in_V_read sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":121, "type": "signal", "bundle":{"name": "stream_out_V", "role": "din" }} , 
 	{ "name": "stream_out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V", "role": "full_n" }} , 
 	{ "name": "stream_out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V", "role": "write" }} , 
 	{ "name": "stream_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":121, "type": "signal", "bundle":{"name": "stream_in_V", "role": "dout" }} , 
 	{ "name": "stream_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V", "role": "empty_n" }} , 
 	{ "name": "stream_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "md",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_doMD_fu_140"}],
		"Port" : [
			{"Name" : "world_rank", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "world_rank"}]},
			{"Name" : "rnd_seed", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "rnd_seed"}]},
			{"Name" : "processorCount", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "processorCount"}]},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "state"}]},
			{"Name" : "time_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "time_V_1"}]},
			{"Name" : "float_clr_num", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_clr_num"}]},
			{"Name" : "envlp_DATA_TYPE_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "envlp_DATA_TYPE_V"}]},
			{"Name" : "envlp_DATA_OR_ENVLP_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "envlp_DATA_OR_ENVLP_s"}]},
			{"Name" : "stream_out_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "stream_out_V"}]},
			{"Name" : "float_clr2snd_array_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_clr2snd_array_4"}]},
			{"Name" : "float_clr2snd_array_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_clr2snd_array_1"}]},
			{"Name" : "float_clr2snd_array_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_clr2snd_array_5"}]},
			{"Name" : "float_clr2snd_array_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_clr2snd_array_7"}]},
			{"Name" : "float_clr2snd_array_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_clr2snd_array_6"}]},
			{"Name" : "float_clr2snd_array_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_clr2snd_array_3"}]},
			{"Name" : "float_clr2snd_array_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_clr2snd_array_s"}]},
			{"Name" : "stream_in_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "stream_in_V"}]},
			{"Name" : "int_req_num", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "int_req_num"}]},
			{"Name" : "int_request_array_SR", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "int_request_array_SR"}]},
			{"Name" : "int_request_array_DE", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "int_request_array_DE"}]},
			{"Name" : "int_request_array_PK", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "int_request_array_PK"}]},
			{"Name" : "int_request_array_MS", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "int_request_array_MS"}]},
			{"Name" : "int_request_array_TA", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "int_request_array_TA"}]},
			{"Name" : "int_request_array_DA", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "int_request_array_DA"}]},
			{"Name" : "int_clr_num", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "int_clr_num"}]},
			{"Name" : "int_clr2snd_array_SR", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "int_clr2snd_array_SR"}]},
			{"Name" : "int_clr2snd_array_DE", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "int_clr2snd_array_DE"}]},
			{"Name" : "int_clr2snd_array_PK", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "int_clr2snd_array_PK"}]},
			{"Name" : "int_clr2snd_array_MS", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "int_clr2snd_array_MS"}]},
			{"Name" : "int_clr2snd_array_TA", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "int_clr2snd_array_TA"}]},
			{"Name" : "int_clr2snd_array_DA", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "int_clr2snd_array_DA"}]},
			{"Name" : "float_req_num", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_req_num"}]},
			{"Name" : "float_request_array_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_request_array_5"}]},
			{"Name" : "float_request_array_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_request_array_1"}]},
			{"Name" : "float_request_array_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_request_array_4"}]},
			{"Name" : "float_request_array_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_request_array_3"}]},
			{"Name" : "float_request_array_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_request_array_s"}]},
			{"Name" : "float_request_array_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_request_array_7"}]},
			{"Name" : "state_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "state_1"}]},
			{"Name" : "envlp_SRC_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "envlp_SRC_V"}]},
			{"Name" : "envlp_DEST_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "envlp_DEST_V"}]},
			{"Name" : "envlp_MSG_SIZE_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "envlp_MSG_SIZE_V"}]},
			{"Name" : "float_request_array_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "float_request_array_6"}]},
			{"Name" : "time_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "time_V"}]},
			{"Name" : "mask_table3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "mask_table3"}]},
			{"Name" : "mask_table1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doMD_fu_140", "Port" : "mask_table1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "36", "47", "58", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90"],
		"CDFG" : "doMD",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_MPI_Send_fu_624"},
			{"State" : "ap_ST_fsm_state201", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_MPI_Send_fu_624"},
			{"State" : "ap_ST_fsm_state112", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_roundInt_fu_702"},
			{"State" : "ap_ST_fsm_state119", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_roundInt_fu_702"},
			{"State" : "ap_ST_fsm_state112", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_roundInt_fu_711"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_MPI_Recv_fu_720"},
			{"State" : "ap_ST_fsm_state205", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_MPI_Recv_fu_720"}],
		"Port" : [
			{"Name" : "world_rank", "Type" : "None", "Direction" : "I"},
			{"Name" : "rnd_seed", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "processorCount", "Type" : "None", "Direction" : "I"},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "state"}]},
			{"Name" : "time_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "time_V_1"}]},
			{"Name" : "float_clr_num", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_clr_num"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_clr_num"}]},
			{"Name" : "envlp_DATA_TYPE_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "envlp_DATA_TYPE_V"}]},
			{"Name" : "envlp_DATA_OR_ENVLP_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "envlp_DATA_OR_ENVLP_s"}]},
			{"Name" : "stream_out_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "stream_out_V"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "stream_out_V"}]},
			{"Name" : "float_clr2snd_array_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_clr2snd_array_4"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_clr2snd_array_4"}]},
			{"Name" : "float_clr2snd_array_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_clr2snd_array_1"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_clr2snd_array_1"}]},
			{"Name" : "float_clr2snd_array_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_clr2snd_array_5"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_clr2snd_array_5"}]},
			{"Name" : "float_clr2snd_array_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_clr2snd_array_7"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_clr2snd_array_7"}]},
			{"Name" : "float_clr2snd_array_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_clr2snd_array_6"}]},
			{"Name" : "float_clr2snd_array_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_clr2snd_array_3"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_clr2snd_array_3"}]},
			{"Name" : "float_clr2snd_array_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_clr2snd_array_s"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_clr2snd_array_s"}]},
			{"Name" : "stream_in_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "stream_in_V"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "stream_in_V"}]},
			{"Name" : "int_req_num", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "int_req_num"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "int_req_num"}]},
			{"Name" : "int_request_array_SR", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "int_request_array_SR"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "int_request_array_SR"}]},
			{"Name" : "int_request_array_DE", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "int_request_array_DE"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "int_request_array_DE"}]},
			{"Name" : "int_request_array_PK", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "int_request_array_PK"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "int_request_array_PK"}]},
			{"Name" : "int_request_array_MS", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "int_request_array_MS"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "int_request_array_MS"}]},
			{"Name" : "int_request_array_TA", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "int_request_array_TA"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "int_request_array_TA"}]},
			{"Name" : "int_request_array_DA", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "int_request_array_DA"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "int_request_array_DA"}]},
			{"Name" : "int_clr_num", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "int_clr_num"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "int_clr_num"}]},
			{"Name" : "int_clr2snd_array_SR", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "int_clr2snd_array_SR"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "int_clr2snd_array_SR"}]},
			{"Name" : "int_clr2snd_array_DE", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "int_clr2snd_array_DE"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "int_clr2snd_array_DE"}]},
			{"Name" : "int_clr2snd_array_PK", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "int_clr2snd_array_PK"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "int_clr2snd_array_PK"}]},
			{"Name" : "int_clr2snd_array_MS", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "int_clr2snd_array_MS"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "int_clr2snd_array_MS"}]},
			{"Name" : "int_clr2snd_array_TA", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "int_clr2snd_array_TA"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "int_clr2snd_array_TA"}]},
			{"Name" : "int_clr2snd_array_DA", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "int_clr2snd_array_DA"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "int_clr2snd_array_DA"}]},
			{"Name" : "float_req_num", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_req_num"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_req_num"}]},
			{"Name" : "float_request_array_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_request_array_5"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_request_array_5"}]},
			{"Name" : "float_request_array_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_request_array_1"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_request_array_1"}]},
			{"Name" : "float_request_array_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_request_array_4"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_request_array_4"}]},
			{"Name" : "float_request_array_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_request_array_3"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_request_array_3"}]},
			{"Name" : "float_request_array_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_request_array_s"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_request_array_s"}]},
			{"Name" : "float_request_array_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_MPI_Send_fu_624", "Port" : "float_request_array_7"},
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_request_array_7"}]},
			{"Name" : "state_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "state_1"}]},
			{"Name" : "envlp_SRC_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "envlp_SRC_V"}]},
			{"Name" : "envlp_DEST_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "envlp_DEST_V"}]},
			{"Name" : "envlp_MSG_SIZE_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "envlp_MSG_SIZE_V"}]},
			{"Name" : "float_request_array_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "float_request_array_6"}]},
			{"Name" : "time_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_MPI_Recv_fu_720", "Port" : "time_V"}]},
			{"Name" : "mask_table3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_roundInt_fu_702", "Port" : "mask_table3"},
					{"ID" : "47", "SubInstance" : "grp_roundInt_fu_711", "Port" : "mask_table3"}]},
			{"Name" : "mask_table1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_roundInt_fu_702", "Port" : "mask_table1"},
					{"ID" : "47", "SubInstance" : "grp_roundInt_fu_711", "Port" : "mask_table1"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.float_clr2snd_array_4_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.float_clr2snd_array_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.float_clr2snd_array_5_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.float_clr2snd_array_7_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.float_clr2snd_array_3_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.float_clr2snd_array_s_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.int_request_array_SR_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.int_request_array_DE_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.int_request_array_PK_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.int_request_array_MS_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.int_request_array_TA_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.int_request_array_DA_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.int_clr2snd_array_SR_U", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.int_clr2snd_array_DE_U", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.int_clr2snd_array_PK_U", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.int_clr2snd_array_MS_U", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.int_clr2snd_array_TA_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.int_clr2snd_array_DA_U", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.float_request_array_5_U", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.float_request_array_1_U", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.float_request_array_4_U", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.float_request_array_3_U", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.float_request_array_s_U", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.float_request_array_7_U", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.mask_table3_U", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.pos1_U", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.force2_U", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.forceSum3_U", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.vel4_U", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_MPI_Send_fu_624", "Parent" : "1", "Child" : ["32", "33", "34", "35"],
		"CDFG" : "MPI_Send",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dest", "Type" : "None", "Direction" : "I"},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "time_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "float_clr_num", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "envlp_DATA_TYPE_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "envlp_DATA_OR_ENVLP_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "stream_out_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "float_clr2snd_array_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "stream_in_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "int_req_num", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "int_request_array_SR", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_request_array_DE", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_request_array_PK", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_request_array_MS", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_request_array_TA", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_request_array_DA", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr_num", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_SR", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_DE", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_PK", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_MS", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_TA", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_DA", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_req_num", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "float_request_array_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_7", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_MPI_Send_fu_624.float_clr2snd_array_6_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_MPI_Send_fu_624.md_mul_32ns_10ns_eOg_U35", "Parent" : "31"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_MPI_Send_fu_624.md_srem_32ns_10nscud_x_U36", "Parent" : "31"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_MPI_Send_fu_624.md_mul_32ns_10ns_eOg_U37", "Parent" : "31"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_702", "Parent" : "1", "Child" : ["37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "roundInt",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "mask_table3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mask_table1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_702.mask_table3_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_702.mask_table1_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_702.md_fadd_32ns_32nshbi_U70", "Parent" : "36"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_702.md_fptrunc_64ns_3ibs_U71", "Parent" : "36"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_702.md_fpext_32ns_64_1_U72", "Parent" : "36"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_702.md_fcmp_32ns_32nsjbC_U73", "Parent" : "36"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_702.md_fcmp_32ns_32nsjbC_U74", "Parent" : "36"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_702.md_dadd_64ns_64nskbM_U75", "Parent" : "36"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_702.md_dmul_64ns_64nslbW_U76", "Parent" : "36"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_702.md_dcmp_64ns_64nsmb6_U77", "Parent" : "36"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_711", "Parent" : "1", "Child" : ["48", "49", "50", "51", "52", "53", "54", "55", "56", "57"],
		"CDFG" : "roundInt",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "mask_table3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mask_table1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_711.mask_table3_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_711.mask_table1_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_711.md_fadd_32ns_32nshbi_U70", "Parent" : "47"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_711.md_fptrunc_64ns_3ibs_U71", "Parent" : "47"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_711.md_fpext_32ns_64_1_U72", "Parent" : "47"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_711.md_fcmp_32ns_32nsjbC_U73", "Parent" : "47"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_711.md_fcmp_32ns_32nsjbC_U74", "Parent" : "47"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_711.md_dadd_64ns_64nskbM_U75", "Parent" : "47"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_711.md_dmul_64ns_64nslbW_U76", "Parent" : "47"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_roundInt_fu_711.md_dcmp_64ns_64nsmb6_U77", "Parent" : "47"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_MPI_Recv_fu_720", "Parent" : "1", "Child" : ["59", "60"],
		"CDFG" : "MPI_Recv",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "source", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "envlp_SRC_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "envlp_DEST_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "float_req_num", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "float_request_array_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "envlp_MSG_SIZE_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "float_request_array_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "stream_in_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "time_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "int_req_num", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "int_request_array_SR", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_request_array_DE", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_request_array_PK", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_request_array_MS", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_request_array_TA", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_request_array_DA", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr_num", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_SR", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_DE", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_PK", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_MS", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_TA", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_DA", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr_num", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_7", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_MPI_Recv_fu_720.float_request_array_6_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.grp_MPI_Recv_fu_720.md_srem_32ns_10nscud_U1", "Parent" : "58"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_faddfsub_32ns_Lf8_U80", "Parent" : "1"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_faddfsub_32ns_Lf8_U81", "Parent" : "1"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_fmul_32ns_32nsMgi_U82", "Parent" : "1"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_fmul_32ns_32nsMgi_U83", "Parent" : "1"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_fmul_32ns_32nsMgi_U84", "Parent" : "1"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_fdiv_32ns_32nsNgs_U85", "Parent" : "1"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_fdiv_32ns_32nsNgs_U86", "Parent" : "1"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_sitofp_32ns_32_6_U87", "Parent" : "1"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_fptrunc_64ns_3ibs_x_U88", "Parent" : "1"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_fptrunc_64ns_3ibs_x_U89", "Parent" : "1"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_fpext_32ns_64_1_x_U90", "Parent" : "1"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_fpext_32ns_64_1_x_U91", "Parent" : "1"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_dadddsub_64ns_OgC_U92", "Parent" : "1"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_dadddsub_64ns_OgC_U93", "Parent" : "1"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_dmul_64ns_64nslbW_x_U94", "Parent" : "1"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_dmul_64ns_64nslbW_x_U95", "Parent" : "1"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_mul_34ns_32s_6PgM_U96", "Parent" : "1"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_sdiv_8ns_32ns_QgW_U97", "Parent" : "1"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_mul_16ns_32s_3Rg6_U98", "Parent" : "1"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_mul_34ns_32s_6PgM_U99", "Parent" : "1"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_mul_16ns_32s_3Rg6_U100", "Parent" : "1"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_mul_34ns_32s_6PgM_U101", "Parent" : "1"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_mul_16ns_32s_3Rg6_U102", "Parent" : "1"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_mul_34ns_32s_6PgM_U103", "Parent" : "1"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_mul_16ns_32s_3Rg6_U104", "Parent" : "1"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_mul_34ns_32s_6PgM_U105", "Parent" : "1"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_mul_16ns_32s_3Rg6_U106", "Parent" : "1"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_mul_34ns_32s_6PgM_U107", "Parent" : "1"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_mul_16ns_32s_3Rg6_U108", "Parent" : "1"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doMD_fu_140.md_mul_32s_32s_32_2_U109", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	md {
		world_rank {Type I LastRead -1 FirstWrite -1}
		rnd_seed {Type IO LastRead -1 FirstWrite -1}
		processorCount {Type I LastRead -1 FirstWrite -1}
		state {Type IO LastRead -1 FirstWrite -1}
		time_V_1 {Type IO LastRead -1 FirstWrite -1}
		float_clr_num {Type IO LastRead -1 FirstWrite -1}
		envlp_DATA_TYPE_V {Type IO LastRead -1 FirstWrite -1}
		envlp_DATA_OR_ENVLP_s {Type IO LastRead -1 FirstWrite -1}
		stream_out_V {Type O LastRead -1 FirstWrite 0}
		float_clr2snd_array_4 {Type IO LastRead -1 FirstWrite -1}
		float_clr2snd_array_1 {Type IO LastRead -1 FirstWrite -1}
		float_clr2snd_array_5 {Type IO LastRead -1 FirstWrite -1}
		float_clr2snd_array_7 {Type IO LastRead -1 FirstWrite -1}
		float_clr2snd_array_6 {Type IO LastRead -1 FirstWrite -1}
		float_clr2snd_array_3 {Type IO LastRead -1 FirstWrite -1}
		float_clr2snd_array_s {Type IO LastRead -1 FirstWrite -1}
		stream_in_V {Type I LastRead 38 FirstWrite -1}
		int_req_num {Type IO LastRead -1 FirstWrite -1}
		int_request_array_SR {Type IO LastRead -1 FirstWrite -1}
		int_request_array_DE {Type IO LastRead -1 FirstWrite -1}
		int_request_array_PK {Type IO LastRead -1 FirstWrite -1}
		int_request_array_MS {Type IO LastRead -1 FirstWrite -1}
		int_request_array_TA {Type IO LastRead -1 FirstWrite -1}
		int_request_array_DA {Type IO LastRead -1 FirstWrite -1}
		int_clr_num {Type IO LastRead -1 FirstWrite -1}
		int_clr2snd_array_SR {Type IO LastRead -1 FirstWrite -1}
		int_clr2snd_array_DE {Type IO LastRead -1 FirstWrite -1}
		int_clr2snd_array_PK {Type IO LastRead -1 FirstWrite -1}
		int_clr2snd_array_MS {Type IO LastRead -1 FirstWrite -1}
		int_clr2snd_array_TA {Type IO LastRead -1 FirstWrite -1}
		int_clr2snd_array_DA {Type IO LastRead -1 FirstWrite -1}
		float_req_num {Type IO LastRead -1 FirstWrite -1}
		float_request_array_5 {Type IO LastRead -1 FirstWrite -1}
		float_request_array_1 {Type IO LastRead -1 FirstWrite -1}
		float_request_array_4 {Type IO LastRead -1 FirstWrite -1}
		float_request_array_3 {Type IO LastRead -1 FirstWrite -1}
		float_request_array_s {Type IO LastRead -1 FirstWrite -1}
		float_request_array_7 {Type IO LastRead -1 FirstWrite -1}
		state_1 {Type IO LastRead -1 FirstWrite -1}
		envlp_SRC_V {Type IO LastRead -1 FirstWrite -1}
		envlp_DEST_V {Type IO LastRead -1 FirstWrite -1}
		envlp_MSG_SIZE_V {Type IO LastRead -1 FirstWrite -1}
		float_request_array_6 {Type IO LastRead -1 FirstWrite -1}
		time_V {Type IO LastRead -1 FirstWrite -1}
		mask_table3 {Type I LastRead -1 FirstWrite -1}
		mask_table1 {Type I LastRead -1 FirstWrite -1}}
	doMD {
		world_rank {Type I LastRead -1 FirstWrite -1}
		rnd_seed {Type IO LastRead -1 FirstWrite -1}
		processorCount {Type I LastRead -1 FirstWrite -1}
		state {Type IO LastRead -1 FirstWrite -1}
		time_V_1 {Type IO LastRead -1 FirstWrite -1}
		float_clr_num {Type IO LastRead -1 FirstWrite -1}
		envlp_DATA_TYPE_V {Type IO LastRead -1 FirstWrite -1}
		envlp_DATA_OR_ENVLP_s {Type IO LastRead -1 FirstWrite -1}
		stream_out_V {Type O LastRead -1 FirstWrite 0}
		float_clr2snd_array_4 {Type IO LastRead -1 FirstWrite -1}
		float_clr2snd_array_1 {Type IO LastRead -1 FirstWrite -1}
		float_clr2snd_array_5 {Type IO LastRead -1 FirstWrite -1}
		float_clr2snd_array_7 {Type IO LastRead -1 FirstWrite -1}
		float_clr2snd_array_6 {Type IO LastRead -1 FirstWrite -1}
		float_clr2snd_array_3 {Type IO LastRead -1 FirstWrite -1}
		float_clr2snd_array_s {Type IO LastRead -1 FirstWrite -1}
		stream_in_V {Type I LastRead 38 FirstWrite -1}
		int_req_num {Type IO LastRead -1 FirstWrite -1}
		int_request_array_SR {Type IO LastRead -1 FirstWrite -1}
		int_request_array_DE {Type IO LastRead -1 FirstWrite -1}
		int_request_array_PK {Type IO LastRead -1 FirstWrite -1}
		int_request_array_MS {Type IO LastRead -1 FirstWrite -1}
		int_request_array_TA {Type IO LastRead -1 FirstWrite -1}
		int_request_array_DA {Type IO LastRead -1 FirstWrite -1}
		int_clr_num {Type IO LastRead -1 FirstWrite -1}
		int_clr2snd_array_SR {Type IO LastRead -1 FirstWrite -1}
		int_clr2snd_array_DE {Type IO LastRead -1 FirstWrite -1}
		int_clr2snd_array_PK {Type IO LastRead -1 FirstWrite -1}
		int_clr2snd_array_MS {Type IO LastRead -1 FirstWrite -1}
		int_clr2snd_array_TA {Type IO LastRead -1 FirstWrite -1}
		int_clr2snd_array_DA {Type IO LastRead -1 FirstWrite -1}
		float_req_num {Type IO LastRead -1 FirstWrite -1}
		float_request_array_5 {Type IO LastRead -1 FirstWrite -1}
		float_request_array_1 {Type IO LastRead -1 FirstWrite -1}
		float_request_array_4 {Type IO LastRead -1 FirstWrite -1}
		float_request_array_3 {Type IO LastRead -1 FirstWrite -1}
		float_request_array_s {Type IO LastRead -1 FirstWrite -1}
		float_request_array_7 {Type IO LastRead -1 FirstWrite -1}
		state_1 {Type IO LastRead -1 FirstWrite -1}
		envlp_SRC_V {Type IO LastRead -1 FirstWrite -1}
		envlp_DEST_V {Type IO LastRead -1 FirstWrite -1}
		envlp_MSG_SIZE_V {Type IO LastRead -1 FirstWrite -1}
		float_request_array_6 {Type IO LastRead -1 FirstWrite -1}
		time_V {Type IO LastRead -1 FirstWrite -1}
		mask_table3 {Type I LastRead -1 FirstWrite -1}
		mask_table1 {Type I LastRead -1 FirstWrite -1}}
	MPI_Send {
		buf_r {Type I LastRead 10 FirstWrite -1}
		dest {Type I LastRead 0 FirstWrite -1}
		state {Type IO LastRead -1 FirstWrite -1}
		time_V_1 {Type IO LastRead -1 FirstWrite -1}
		float_clr_num {Type IO LastRead 13 FirstWrite 3}
		envlp_DATA_TYPE_V {Type IO LastRead -1 FirstWrite -1}
		envlp_DATA_OR_ENVLP_s {Type IO LastRead -1 FirstWrite -1}
		stream_out_V {Type O LastRead -1 FirstWrite 0}
		float_clr2snd_array_4 {Type IO LastRead 16 FirstWrite 3}
		float_clr2snd_array_1 {Type IO LastRead 15 FirstWrite 3}
		float_clr2snd_array_5 {Type IO LastRead 14 FirstWrite 3}
		float_clr2snd_array_7 {Type IO LastRead 19 FirstWrite 3}
		float_clr2snd_array_6 {Type IO LastRead -1 FirstWrite -1}
		float_clr2snd_array_3 {Type IO LastRead 17 FirstWrite 3}
		float_clr2snd_array_s {Type IO LastRead 18 FirstWrite 3}
		stream_in_V {Type I LastRead 13 FirstWrite -1}
		int_req_num {Type IO LastRead 13 FirstWrite 3}
		int_request_array_SR {Type IO LastRead 14 FirstWrite 3}
		int_request_array_DE {Type IO LastRead 15 FirstWrite 3}
		int_request_array_PK {Type IO LastRead 16 FirstWrite 3}
		int_request_array_MS {Type IO LastRead 17 FirstWrite 3}
		int_request_array_TA {Type IO LastRead 18 FirstWrite 3}
		int_request_array_DA {Type IO LastRead 20 FirstWrite 3}
		int_clr_num {Type IO LastRead 13 FirstWrite 3}
		int_clr2snd_array_SR {Type IO LastRead 14 FirstWrite 3}
		int_clr2snd_array_DE {Type IO LastRead 15 FirstWrite 3}
		int_clr2snd_array_PK {Type IO LastRead 16 FirstWrite 3}
		int_clr2snd_array_MS {Type IO LastRead 17 FirstWrite 3}
		int_clr2snd_array_TA {Type IO LastRead 18 FirstWrite 3}
		int_clr2snd_array_DA {Type IO LastRead 20 FirstWrite 3}
		float_req_num {Type IO LastRead 13 FirstWrite 3}
		float_request_array_5 {Type IO LastRead 14 FirstWrite 3}
		float_request_array_1 {Type IO LastRead 15 FirstWrite 3}
		float_request_array_4 {Type IO LastRead 16 FirstWrite 3}
		float_request_array_3 {Type IO LastRead 17 FirstWrite 3}
		float_request_array_s {Type IO LastRead 18 FirstWrite 3}
		float_request_array_7 {Type IO LastRead 20 FirstWrite 3}}
	roundInt {
		x {Type I LastRead 0 FirstWrite -1}
		mask_table3 {Type I LastRead -1 FirstWrite -1}
		mask_table1 {Type I LastRead -1 FirstWrite -1}}
	roundInt {
		x {Type I LastRead 0 FirstWrite -1}
		mask_table3 {Type I LastRead -1 FirstWrite -1}
		mask_table1 {Type I LastRead -1 FirstWrite -1}}
	MPI_Recv {
		buf_r {Type O LastRead -1 FirstWrite 39}
		source {Type I LastRead 0 FirstWrite -1}
		state_1 {Type IO LastRead -1 FirstWrite -1}
		envlp_SRC_V {Type IO LastRead -1 FirstWrite -1}
		envlp_DEST_V {Type IO LastRead -1 FirstWrite -1}
		float_req_num {Type IO LastRead 38 FirstWrite 5}
		float_request_array_4 {Type IO LastRead 41 FirstWrite 7}
		float_request_array_1 {Type IO LastRead 40 FirstWrite 7}
		float_request_array_5 {Type IO LastRead 39 FirstWrite 7}
		float_request_array_3 {Type IO LastRead 42 FirstWrite 7}
		envlp_MSG_SIZE_V {Type IO LastRead -1 FirstWrite -1}
		float_request_array_s {Type IO LastRead 43 FirstWrite 7}
		float_request_array_7 {Type IO LastRead 45 FirstWrite 7}
		float_request_array_6 {Type IO LastRead -1 FirstWrite -1}
		stream_in_V {Type I LastRead 38 FirstWrite -1}
		stream_out_V {Type O LastRead -1 FirstWrite 0}
		time_V {Type IO LastRead -1 FirstWrite -1}
		int_req_num {Type IO LastRead 38 FirstWrite 39}
		int_request_array_SR {Type IO LastRead 39 FirstWrite 39}
		int_request_array_DE {Type IO LastRead 40 FirstWrite 39}
		int_request_array_PK {Type IO LastRead 41 FirstWrite 39}
		int_request_array_MS {Type IO LastRead 42 FirstWrite 39}
		int_request_array_TA {Type IO LastRead 43 FirstWrite 39}
		int_request_array_DA {Type IO LastRead 45 FirstWrite 39}
		int_clr_num {Type IO LastRead 38 FirstWrite 39}
		int_clr2snd_array_SR {Type IO LastRead 39 FirstWrite 39}
		int_clr2snd_array_DE {Type IO LastRead 40 FirstWrite 39}
		int_clr2snd_array_PK {Type IO LastRead 41 FirstWrite 39}
		int_clr2snd_array_MS {Type IO LastRead 42 FirstWrite 39}
		int_clr2snd_array_TA {Type IO LastRead 43 FirstWrite 39}
		int_clr2snd_array_DA {Type IO LastRead 45 FirstWrite 39}
		float_clr_num {Type IO LastRead 38 FirstWrite 39}
		float_clr2snd_array_5 {Type IO LastRead 39 FirstWrite 39}
		float_clr2snd_array_1 {Type IO LastRead 40 FirstWrite 39}
		float_clr2snd_array_4 {Type IO LastRead 41 FirstWrite 39}
		float_clr2snd_array_3 {Type IO LastRead 42 FirstWrite 39}
		float_clr2snd_array_s {Type IO LastRead 43 FirstWrite 39}
		float_clr2snd_array_7 {Type IO LastRead 44 FirstWrite 39}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_out_V { ap_fifo {  { stream_out_V_din fifo_data 1 121 }  { stream_out_V_full_n fifo_status 0 1 }  { stream_out_V_write fifo_update 1 1 } } }
	stream_in_V { ap_fifo {  { stream_in_V_dout fifo_data 0 121 }  { stream_in_V_empty_n fifo_status 0 1 }  { stream_in_V_read fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	stream_out_V { fifo_write 0 no_conditional }
	stream_in_V { fifo_read 0 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
