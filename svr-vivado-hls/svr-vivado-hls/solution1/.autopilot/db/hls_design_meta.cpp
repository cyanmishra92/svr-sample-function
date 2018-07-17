#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("width", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("height", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("hp", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("ht", 32, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("fw", 32, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("fh", 32, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("fovX", 32, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("fovY", 32, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("option", 32, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("fov_address0", 21, hls_out, 9, "ap_memory", "mem_address", 1),
	Port_Property("fov_ce0", 1, hls_out, 9, "ap_memory", "mem_ce", 1),
	Port_Property("fov_we0", 1, hls_out, 9, "ap_memory", "mem_we", 1),
	Port_Property("fov_d0", 32, hls_out, 9, "ap_memory", "mem_din", 1),
	Port_Property("fov_address1", 21, hls_out, 9, "ap_memory", "mem_address", 1),
	Port_Property("fov_ce1", 1, hls_out, 9, "ap_memory", "mem_ce", 1),
	Port_Property("fov_we1", 1, hls_out, 9, "ap_memory", "mem_we", 1),
	Port_Property("fov_d1", 32, hls_out, 9, "ap_memory", "mem_din", 1),
};
const char* HLS_Design_Meta::dut_name = "convert";
