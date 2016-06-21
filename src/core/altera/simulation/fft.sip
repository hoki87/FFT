set_global_assignment -entity "fft" -library "lib_fft" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "fft" -library "lib_fft" -name IP_TOOL_VERSION "15.1"
set_global_assignment -entity "fft" -library "lib_fft" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_fft" -name SPD_FILE [file join $::quartus(sip_path) "../fft.spd"]
set_global_assignment -library "lib_fft" -name MISC_FILE [file join $::quartus(sip_path) "../../../../sim_altera/prj/core/fft.qsys"]

set_global_assignment -library "lib_fft" -name MISC_FILE [file join $::quartus(sip_path) "fft.v"]
set_global_assignment -library "lib_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/fft_fft_ii_0_opt_twi5.hex"]
set_global_assignment -library "lib_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/fft_fft_ii_0_opt_twi1.hex"]
set_global_assignment -library "lib_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/fft_fft_ii_0_opt_twr4.hex"]
set_global_assignment -library "lib_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/fft_fft_ii_0_opt_twr5.hex"]
set_global_assignment -library "lib_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/fft_fft_ii_0_opt_twr1.hex"]
set_global_assignment -library "lib_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/fft_fft_ii_0_opt_twi2.hex"]
set_global_assignment -library "lib_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/fft_fft_ii_0_opt_twi3.hex"]
set_global_assignment -library "lib_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/fft_fft_ii_0_opt_twr2.hex"]
set_global_assignment -library "lib_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/fft_fft_ii_0_opt_twi4.hex"]
set_global_assignment -library "lib_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/fft_fft_ii_0_opt_twr3.hex"]
set_global_assignment -library "lib_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/fft_fft_ii_0.vo"]
