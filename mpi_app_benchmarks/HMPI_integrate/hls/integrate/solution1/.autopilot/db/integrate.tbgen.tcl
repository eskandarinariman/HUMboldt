set C_TypeInfoList {{ 
"integrate" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [],["0","1"],""],
 "0": [ "stream_out", [[],"2"],""],
 "1": [ "stream_in", [[],"2"],""], 
"2": [ "stream<stream_packet>", {"hls_type": {"stream": [[[[],"3"]],"4"]}}], 
"3": [ "stream_packet", {"struct": [[{"pack": 0}],[],[{ "data": [[], "5"]},{ "dest": [[], "6"]},{ "last": [[], "7"]},{ "id": [[], "6"]},{ "user": [[], "8"]}],""]}], 
"8": [ "ap_uint<40>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 40}}]],""]}}], 
"5": [ "ap_uint<64>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 64}}]],""]}}], 
"6": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"7": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}],
"4": ["hls", ""]
}}
set moduleName integrate
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {integrate}
set C_modelType { int 32 }
set C_modelArgList {
	{ stream_out_V int 121 regular {fifo 1 volatile } {global 1}  }
	{ stream_in_V int 121 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_out_V", "interface" : "fifo", "bitwidth" : 121, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "stream_out.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":71,"cElement": [{"cName": "stream_out.V.dest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":72,"up":72,"cElement": [{"cName": "stream_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":73,"up":80,"cElement": [{"cName": "stream_out.V.id.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":81,"up":120,"cElement": [{"cName": "stream_out.V.user.V","cData": "uint40","bit_use": { "low": 0,"up": 39},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "stream_in_V", "interface" : "fifo", "bitwidth" : 121, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "stream_in.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":71,"cElement": [{"cName": "stream_in.V.dest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":72,"up":72,"cElement": [{"cName": "stream_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":73,"up":80,"cElement": [{"cName": "stream_in.V.id.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":81,"up":120,"cElement": [{"cName": "stream_in.V.user.V","cData": "uint40","bit_use": { "low": 0,"up": 39},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
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
	{ ap_return sc_out sc_lv 32 signal -1 } 
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
 	{ "name": "stream_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V", "role": "read" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "32", "37", "40", "41", "42", "43", "44", "45"],
		"CDFG" : "integrate",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_MPI_Send_fu_317"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_MPI_Send_1_fu_392"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_MPI_Send_1_fu_392"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_MPI_Recv_fu_469"}],
		"Port" : [
			{"Name" : "state_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "state_1"}]},
			{"Name" : "time_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "time_V_3"}]},
			{"Name" : "float_clr_num", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_clr_num"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_clr_num"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "float_clr_num"}]},
			{"Name" : "envlp_DATA_TYPE_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "envlp_DATA_TYPE_V_1"}]},
			{"Name" : "envlp_DATA_OR_ENVLP_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "envlp_DATA_OR_ENVLP_s"}]},
			{"Name" : "stream_out_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "stream_out_V"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "stream_out_V"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "stream_out_V"}]},
			{"Name" : "float_clr2snd_array_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_clr2snd_array_4"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_clr2snd_array_4"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "float_clr2snd_array_4"}]},
			{"Name" : "float_clr2snd_array_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_clr2snd_array_1"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_clr2snd_array_1"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "float_clr2snd_array_1"}]},
			{"Name" : "float_clr2snd_array_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_clr2snd_array_5"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_clr2snd_array_5"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "float_clr2snd_array_5"}]},
			{"Name" : "float_clr2snd_array_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_clr2snd_array_7"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_clr2snd_array_7"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "float_clr2snd_array_7"}]},
			{"Name" : "float_clr2snd_array_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_clr2snd_array_6"}]},
			{"Name" : "float_clr2snd_array_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_clr2snd_array_3"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_clr2snd_array_3"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "float_clr2snd_array_3"}]},
			{"Name" : "float_clr2snd_array_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_clr2snd_array_s"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_clr2snd_array_s"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "float_clr2snd_array_s"}]},
			{"Name" : "stream_in_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "stream_in_V"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "stream_in_V"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "stream_in_V"}]},
			{"Name" : "int_req_num", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "int_req_num"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "int_req_num"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_req_num"}]},
			{"Name" : "int_request_array_SR", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "int_request_array_SR"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "int_request_array_SR"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_request_array_SR"}]},
			{"Name" : "int_request_array_DE", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "int_request_array_DE"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "int_request_array_DE"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_request_array_DE"}]},
			{"Name" : "int_request_array_PK", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "int_request_array_PK"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "int_request_array_PK"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_request_array_PK"}]},
			{"Name" : "int_request_array_MS", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "int_request_array_MS"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "int_request_array_MS"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_request_array_MS"}]},
			{"Name" : "int_request_array_TA", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "int_request_array_TA"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "int_request_array_TA"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_request_array_TA"}]},
			{"Name" : "int_request_array_DA", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "int_request_array_DA"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "int_request_array_DA"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_request_array_DA"}]},
			{"Name" : "int_clr_num", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "int_clr_num"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "int_clr_num"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_clr_num"}]},
			{"Name" : "int_clr2snd_array_SR", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "int_clr2snd_array_SR"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "int_clr2snd_array_SR"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_clr2snd_array_SR"}]},
			{"Name" : "int_clr2snd_array_DE", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "int_clr2snd_array_DE"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "int_clr2snd_array_DE"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_clr2snd_array_DE"}]},
			{"Name" : "int_clr2snd_array_PK", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "int_clr2snd_array_PK"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "int_clr2snd_array_PK"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_clr2snd_array_PK"}]},
			{"Name" : "int_clr2snd_array_MS", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "int_clr2snd_array_MS"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "int_clr2snd_array_MS"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_clr2snd_array_MS"}]},
			{"Name" : "int_clr2snd_array_TA", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "int_clr2snd_array_TA"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "int_clr2snd_array_TA"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_clr2snd_array_TA"}]},
			{"Name" : "int_clr2snd_array_DA", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "int_clr2snd_array_DA"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "int_clr2snd_array_DA"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_clr2snd_array_DA"}]},
			{"Name" : "float_req_num", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_req_num"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_req_num"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "float_req_num"}]},
			{"Name" : "float_request_array_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_request_array_5"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_request_array_5"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "float_request_array_5"}]},
			{"Name" : "float_request_array_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_request_array_1"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_request_array_1"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "float_request_array_1"}]},
			{"Name" : "float_request_array_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_request_array_4"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_request_array_4"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "float_request_array_4"}]},
			{"Name" : "float_request_array_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_request_array_3"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_request_array_3"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "float_request_array_3"}]},
			{"Name" : "float_request_array_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_request_array_s"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_request_array_s"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "float_request_array_s"}]},
			{"Name" : "float_request_array_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_request_array_7"},
					{"ID" : "32", "SubInstance" : "grp_MPI_Send_1_fu_392", "Port" : "float_request_array_7"},
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "float_request_array_7"}]},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "state"}]},
			{"Name" : "time_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "time_V_2"}]},
			{"Name" : "envlp_DATA_TYPE_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "envlp_DATA_TYPE_V"}]},
			{"Name" : "envlp_DATA_OR_ENVLP_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "envlp_DATA_OR_ENVLP_1"}]},
			{"Name" : "int_clr2snd_array_DA_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_MPI_Send_fu_317", "Port" : "int_clr2snd_array_DA_1"}]},
			{"Name" : "state_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "state_2"}]},
			{"Name" : "envlp_SRC_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "envlp_SRC_V"}]},
			{"Name" : "envlp_DEST_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "envlp_DEST_V"}]},
			{"Name" : "envlp_MSG_SIZE_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "envlp_MSG_SIZE_V"}]},
			{"Name" : "float_request_array_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "float_request_array_6"}]},
			{"Name" : "clr2snd_error", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "clr2snd_error"}]},
			{"Name" : "time_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_MPI_Recv_fu_469", "Port" : "time_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.float_clr2snd_array_4_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.float_clr2snd_array_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.float_clr2snd_array_5_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.float_clr2snd_array_7_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.float_clr2snd_array_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.float_clr2snd_array_s_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.int_request_array_SR_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.int_request_array_DE_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.int_request_array_PK_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.int_request_array_MS_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.int_request_array_TA_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.int_request_array_DA_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.int_clr2snd_array_SR_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.int_clr2snd_array_DE_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.int_clr2snd_array_PK_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.int_clr2snd_array_MS_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.int_clr2snd_array_TA_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.int_clr2snd_array_DA_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.float_request_array_5_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.float_request_array_1_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.float_request_array_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.float_request_array_3_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.float_request_array_s_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.float_request_array_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.integral_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.total_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_array_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MPI_Send_fu_317", "Parent" : "0", "Child" : ["29", "30", "31"],
		"CDFG" : "MPI_Send",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "time_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "int_clr_num", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "envlp_DATA_TYPE_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "envlp_DATA_OR_ENVLP_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "stream_out_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "int_clr2snd_array_PK", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_DE", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_SR", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_DA", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_DA_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_MS", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "int_clr2snd_array_TA", "Type" : "Memory", "Direction" : "IO"},
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
			{"Name" : "float_req_num", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "float_request_array_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_request_array_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr_num", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "float_clr2snd_array_7", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MPI_Send_fu_317.int_clr2snd_array_DA_1_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MPI_Send_fu_317.integrate_mul_32sfYi_U36", "Parent" : "28"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MPI_Send_fu_317.integrate_srem_32g8j_U37", "Parent" : "28"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MPI_Send_1_fu_392", "Parent" : "0", "Child" : ["33", "34", "35", "36"],
		"CDFG" : "MPI_Send_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "time_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "float_clr_num", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "envlp_DATA_TYPE_V_1", "Type" : "OVld", "Direction" : "IO"},
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
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MPI_Send_1_fu_392.float_clr2snd_array_6_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MPI_Send_1_fu_392.integrate_mul_32ncud_U1", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MPI_Send_1_fu_392.integrate_srem_32dEe_U2", "Parent" : "32"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MPI_Send_1_fu_392.integrate_mul_32ncud_U3", "Parent" : "32"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MPI_Recv_fu_469", "Parent" : "0", "Child" : ["38", "39"],
		"CDFG" : "MPI_Recv",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "state_2", "Type" : "OVld", "Direction" : "IO"},
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
			{"Name" : "clr2snd_error", "Type" : "OVld", "Direction" : "IO"},
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
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MPI_Recv_fu_469.float_request_array_6_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MPI_Recv_fu_469.integrate_srem_32dEe_x_U69", "Parent" : "37"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.integrate_fadd_32Gfk_U101", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.integrate_fmul_32Hfu_U102", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.integrate_fptruncIfE_U103", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.integrate_fpext_3JfO_U104", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.integrate_dadddsuKfY_U105", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.integrate_dmul_64Lf8_U106", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	integrate {
		state_1 {Type IO LastRead -1 FirstWrite -1}
		time_V_3 {Type IO LastRead -1 FirstWrite -1}
		float_clr_num {Type IO LastRead -1 FirstWrite -1}
		envlp_DATA_TYPE_V_1 {Type IO LastRead -1 FirstWrite -1}
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
		state {Type IO LastRead -1 FirstWrite -1}
		time_V_2 {Type IO LastRead -1 FirstWrite -1}
		envlp_DATA_TYPE_V {Type IO LastRead -1 FirstWrite -1}
		envlp_DATA_OR_ENVLP_1 {Type IO LastRead -1 FirstWrite -1}
		int_clr2snd_array_DA_1 {Type IO LastRead -1 FirstWrite -1}
		state_2 {Type IO LastRead -1 FirstWrite -1}
		envlp_SRC_V {Type IO LastRead -1 FirstWrite -1}
		envlp_DEST_V {Type IO LastRead -1 FirstWrite -1}
		envlp_MSG_SIZE_V {Type IO LastRead -1 FirstWrite -1}
		float_request_array_6 {Type IO LastRead -1 FirstWrite -1}
		clr2snd_error {Type IO LastRead -1 FirstWrite -1}
		time_V {Type IO LastRead -1 FirstWrite -1}}
	MPI_Send {
		buf_r {Type I LastRead 11 FirstWrite -1}
		state {Type IO LastRead -1 FirstWrite -1}
		time_V_2 {Type IO LastRead -1 FirstWrite -1}
		int_clr_num {Type IO LastRead 3 FirstWrite 3}
		envlp_DATA_TYPE_V {Type IO LastRead -1 FirstWrite -1}
		envlp_DATA_OR_ENVLP_1 {Type IO LastRead -1 FirstWrite -1}
		stream_out_V {Type O LastRead -1 FirstWrite 0}
		int_clr2snd_array_PK {Type IO LastRead 7 FirstWrite 3}
		int_clr2snd_array_DE {Type IO LastRead 6 FirstWrite 3}
		int_clr2snd_array_SR {Type IO LastRead 6 FirstWrite 3}
		int_clr2snd_array_DA {Type IO LastRead 10 FirstWrite 3}
		int_clr2snd_array_DA_1 {Type IO LastRead -1 FirstWrite -1}
		int_clr2snd_array_MS {Type IO LastRead 8 FirstWrite 3}
		int_clr2snd_array_TA {Type IO LastRead 9 FirstWrite 3}
		stream_in_V {Type I LastRead 3 FirstWrite -1}
		int_req_num {Type IO LastRead 3 FirstWrite 3}
		int_request_array_SR {Type IO LastRead 5 FirstWrite 3}
		int_request_array_DE {Type IO LastRead 6 FirstWrite 3}
		int_request_array_PK {Type IO LastRead 7 FirstWrite 3}
		int_request_array_MS {Type IO LastRead 8 FirstWrite 3}
		int_request_array_TA {Type IO LastRead 9 FirstWrite 3}
		int_request_array_DA {Type IO LastRead 10 FirstWrite 3}
		float_req_num {Type IO LastRead 3 FirstWrite 3}
		float_request_array_5 {Type IO LastRead 5 FirstWrite 3}
		float_request_array_1 {Type IO LastRead 6 FirstWrite 3}
		float_request_array_4 {Type IO LastRead 7 FirstWrite 3}
		float_request_array_3 {Type IO LastRead 8 FirstWrite 3}
		float_request_array_s {Type IO LastRead 9 FirstWrite 3}
		float_request_array_7 {Type IO LastRead 10 FirstWrite 3}
		float_clr_num {Type IO LastRead 3 FirstWrite 3}
		float_clr2snd_array_5 {Type IO LastRead 5 FirstWrite 3}
		float_clr2snd_array_1 {Type IO LastRead 6 FirstWrite 3}
		float_clr2snd_array_4 {Type IO LastRead 7 FirstWrite 3}
		float_clr2snd_array_3 {Type IO LastRead 8 FirstWrite 3}
		float_clr2snd_array_s {Type IO LastRead 9 FirstWrite 3}
		float_clr2snd_array_7 {Type IO LastRead 10 FirstWrite 3}}
	MPI_Send_1 {
		p_read {Type I LastRead 0 FirstWrite -1}
		state_1 {Type IO LastRead -1 FirstWrite -1}
		time_V_3 {Type IO LastRead -1 FirstWrite -1}
		float_clr_num {Type IO LastRead 14 FirstWrite 3}
		envlp_DATA_TYPE_V_1 {Type IO LastRead -1 FirstWrite -1}
		envlp_DATA_OR_ENVLP_s {Type IO LastRead -1 FirstWrite -1}
		stream_out_V {Type O LastRead -1 FirstWrite 0}
		float_clr2snd_array_4 {Type IO LastRead 17 FirstWrite 3}
		float_clr2snd_array_1 {Type IO LastRead 16 FirstWrite 3}
		float_clr2snd_array_5 {Type IO LastRead 15 FirstWrite 3}
		float_clr2snd_array_7 {Type IO LastRead 20 FirstWrite 3}
		float_clr2snd_array_6 {Type IO LastRead -1 FirstWrite -1}
		float_clr2snd_array_3 {Type IO LastRead 18 FirstWrite 3}
		float_clr2snd_array_s {Type IO LastRead 19 FirstWrite 3}
		stream_in_V {Type I LastRead 14 FirstWrite -1}
		int_req_num {Type IO LastRead 14 FirstWrite 3}
		int_request_array_SR {Type IO LastRead 15 FirstWrite 3}
		int_request_array_DE {Type IO LastRead 16 FirstWrite 3}
		int_request_array_PK {Type IO LastRead 17 FirstWrite 3}
		int_request_array_MS {Type IO LastRead 18 FirstWrite 3}
		int_request_array_TA {Type IO LastRead 19 FirstWrite 3}
		int_request_array_DA {Type IO LastRead 21 FirstWrite 3}
		int_clr_num {Type IO LastRead 14 FirstWrite 3}
		int_clr2snd_array_SR {Type IO LastRead 15 FirstWrite 3}
		int_clr2snd_array_DE {Type IO LastRead 16 FirstWrite 3}
		int_clr2snd_array_PK {Type IO LastRead 17 FirstWrite 3}
		int_clr2snd_array_MS {Type IO LastRead 18 FirstWrite 3}
		int_clr2snd_array_TA {Type IO LastRead 19 FirstWrite 3}
		int_clr2snd_array_DA {Type IO LastRead 21 FirstWrite 3}
		float_req_num {Type IO LastRead 14 FirstWrite 3}
		float_request_array_5 {Type IO LastRead 15 FirstWrite 3}
		float_request_array_1 {Type IO LastRead 16 FirstWrite 3}
		float_request_array_4 {Type IO LastRead 17 FirstWrite 3}
		float_request_array_3 {Type IO LastRead 18 FirstWrite 3}
		float_request_array_s {Type IO LastRead 19 FirstWrite 3}
		float_request_array_7 {Type IO LastRead 21 FirstWrite 3}}
	MPI_Recv {
		buf_r {Type O LastRead -1 FirstWrite 39}
		state_2 {Type IO LastRead -1 FirstWrite -1}
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
		clr2snd_error {Type IO LastRead -1 FirstWrite -1}
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
