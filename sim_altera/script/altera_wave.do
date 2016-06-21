onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fft_tb/ifft_source/reset
add wave -noupdate -radix unsigned /fft_tb/ifft_source/source_cnt
add wave -noupdate /fft_tb/ifft_source/slot_cnt
add wave -noupdate -radix unsigned /fft_tb/ifft_source/clk_div
add wave -noupdate -radix unsigned /fft_tb/ifft_source/data_cnt
add wave -noupdate -radix unsigned /fft_tb/ifft_source/fft_len
add wave -noupdate /fft_tb/ifft_source/fft_num
add wave -noupdate /fft_tb/ifft_source/cp_type
add wave -noupdate /fft_tb/ifft_source/fft_type
add wave -noupdate -radix unsigned /fft_tb/ifft_source/data_cnt
add wave -noupdate -radix unsigned /fft_tb/ifft_source/clk_div
add wave -noupdate -radix unsigned /fft_tb/ifft_source/source_cnt
add wave -noupdate -radix unsigned /fft_tb/ifft_source/slot_cnt
add wave -noupdate -radix hexadecimal /fft_tb/ifft_source/source_i
add wave -noupdate -radix hexadecimal /fft_tb/ifft_source/source_q
add wave -noupdate /fft_tb/ifft_source/source_h
add wave -noupdate /fft_tb/ifft_source/source_s
add wave -noupdate /fft_tb/ifft_source/source_v
add wave -noupdate -divider preproc
add wave -noupdate -radix unsigned /fft_tb/IFFT/preproc_u/dout_fft_num
add wave -noupdate /fft_tb/IFFT/preproc_u/dout_sop
add wave -noupdate /fft_tb/IFFT/preproc_u/dout_valid
add wave -noupdate /fft_tb/IFFT/preproc_u/dout_eop
add wave -noupdate -radix hexadecimal /fft_tb/IFFT/preproc_u/dout_real
add wave -noupdate -radix hexadecimal /fft_tb/IFFT/preproc_u/dout_imag
add wave -noupdate /fft_tb/IFFT/preproc_u/dout_fst_cp
add wave -noupdate /fft_tb/IFFT/preproc_u/buf_wr_en
add wave -noupdate -divider IFFT
add wave -noupdate /fft_tb/ifft_source/clk
add wave -noupdate /fft_tb/IFFT/altera_fft/sink_sop
add wave -noupdate /fft_tb/IFFT/altera_fft/sink_valid
add wave -noupdate /fft_tb/IFFT/altera_fft/sink_ready
add wave -noupdate /fft_tb/IFFT/altera_fft/sink_error
add wave -noupdate /fft_tb/IFFT/altera_fft/sink_eop
add wave -noupdate -format Analog-Step -height 74 -max 32766.0 -min -32768.0 -radix decimal /fft_tb/IFFT/altera_fft/sink_real
add wave -noupdate -radix decimal -childformat {{{/fft_tb/IFFT/altera_fft/sink_imag[15]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[14]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[13]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[12]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[11]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[10]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[9]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[8]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[7]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[6]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[5]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[4]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[3]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[2]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[1]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/sink_imag[0]} -radix hexadecimal}} -subitemconfig {{/fft_tb/IFFT/altera_fft/sink_imag[15]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[14]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[13]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[12]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[11]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[10]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[9]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[8]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[7]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[6]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[5]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[4]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[3]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[2]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[1]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/sink_imag[0]} {-height 15 -radix hexadecimal}} /fft_tb/IFFT/altera_fft/sink_imag
add wave -noupdate -radix unsigned /fft_tb/IFFT/altera_fft/fftpts_in
add wave -noupdate /fft_tb/IFFT/altera_fft/inverse
add wave -noupdate /fft_tb/IFFT/altera_fft/source_valid
add wave -noupdate /fft_tb/IFFT/altera_fft/source_ready
add wave -noupdate /fft_tb/IFFT/altera_fft/source_error
add wave -noupdate /fft_tb/IFFT/altera_fft/source_sop
add wave -noupdate -format Analog-Step -height 74 -max 16383.0 -min -16383.0 -radix decimal -childformat {{{/fft_tb/IFFT/altera_fft/source_real[27]} -radix decimal} {{/fft_tb/IFFT/altera_fft/source_real[26]} -radix decimal} {{/fft_tb/IFFT/altera_fft/source_real[25]} -radix decimal} {{/fft_tb/IFFT/altera_fft/source_real[24]} -radix decimal} {{/fft_tb/IFFT/altera_fft/source_real[23]} -radix decimal} {{/fft_tb/IFFT/altera_fft/source_real[22]} -radix decimal} {{/fft_tb/IFFT/altera_fft/source_real[21]} -radix decimal} {{/fft_tb/IFFT/altera_fft/source_real[20]} -radix decimal} {{/fft_tb/IFFT/altera_fft/source_real[19]} -radix decimal} {{/fft_tb/IFFT/altera_fft/source_real[18]} -radix decimal} {{/fft_tb/IFFT/altera_fft/source_real[17]} -radix decimal} {{/fft_tb/IFFT/altera_fft/source_real[16]} -radix decimal} {{/fft_tb/IFFT/altera_fft/source_real[15]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[14]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[13]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[12]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[11]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[10]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[9]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[8]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[7]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[6]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[5]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[4]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[3]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[2]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[1]} -radix hexadecimal} {{/fft_tb/IFFT/altera_fft/source_real[0]} -radix hexadecimal}} -subitemconfig {{/fft_tb/IFFT/altera_fft/source_real[27]} {-height 15 -radix decimal} {/fft_tb/IFFT/altera_fft/source_real[26]} {-height 15 -radix decimal} {/fft_tb/IFFT/altera_fft/source_real[25]} {-height 15 -radix decimal} {/fft_tb/IFFT/altera_fft/source_real[24]} {-height 15 -radix decimal} {/fft_tb/IFFT/altera_fft/source_real[23]} {-height 15 -radix decimal} {/fft_tb/IFFT/altera_fft/source_real[22]} {-height 15 -radix decimal} {/fft_tb/IFFT/altera_fft/source_real[21]} {-height 15 -radix decimal} {/fft_tb/IFFT/altera_fft/source_real[20]} {-height 15 -radix decimal} {/fft_tb/IFFT/altera_fft/source_real[19]} {-height 15 -radix decimal} {/fft_tb/IFFT/altera_fft/source_real[18]} {-height 15 -radix decimal} {/fft_tb/IFFT/altera_fft/source_real[17]} {-height 15 -radix decimal} {/fft_tb/IFFT/altera_fft/source_real[16]} {-height 15 -radix decimal} {/fft_tb/IFFT/altera_fft/source_real[15]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[14]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[13]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[12]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[11]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[10]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[9]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[8]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[7]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[6]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[5]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[4]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[3]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[2]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[1]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/altera_fft/source_real[0]} {-height 15 -radix hexadecimal}} /fft_tb/IFFT/altera_fft/source_real
add wave -noupdate -format Analog-Step -height 74 -max 16383.0 -min -16383.0 -radix decimal /fft_tb/IFFT/altera_fft/source_imag
add wave -noupdate /fft_tb/IFFT/altera_fft/source_eop
add wave -noupdate -radix unsigned /fft_tb/IFFT/altera_fft/fftpts_out
add wave -noupdate -divider Postproc
add wave -noupdate /fft_tb/IFFT/postproc_u/clk
add wave -noupdate /fft_tb/IFFT/postproc_u/buf_wr_en
add wave -noupdate /fft_tb/IFFT/postproc_u/buf_wr
add wave -noupdate -radix unsigned /fft_tb/IFFT/postproc_u/buf_waddr
add wave -noupdate -radix hexadecimal -childformat {{{/fft_tb/IFFT/postproc_u/buf_wdata[31]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[30]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[29]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[28]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[27]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[26]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[25]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[24]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[23]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[22]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[21]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[20]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[19]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[18]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[17]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[16]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[15]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[14]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[13]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[12]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[11]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[10]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[9]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[8]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[7]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[6]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[5]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[4]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[3]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[2]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[1]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[0]} -radix hexadecimal}} -subitemconfig {{/fft_tb/IFFT/postproc_u/buf_wdata[31]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[30]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[29]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[28]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[27]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[26]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[25]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[24]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[23]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[22]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[21]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[20]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[19]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[18]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[17]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[16]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[15]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[14]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[13]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[12]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[11]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[10]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[9]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[8]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[7]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[6]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[5]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[4]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[3]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[2]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[1]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[0]} {-height 15 -radix hexadecimal}} /fft_tb/IFFT/postproc_u/buf_wdata
add wave -noupdate -radix unsigned /fft_tb/IFFT/postproc_u/cache_cp_num
add wave -noupdate -radix unsigned /fft_tb/IFFT/postproc_u/cache_fft_num
add wave -noupdate -radix unsigned /fft_tb/IFFT/postproc_u/cache_waddr
add wave -noupdate /fft_tb/IFFT/postproc_u/cache_switch
add wave -noupdate -radix unsigned /fft_tb/IFFT/postproc_u/cache_raddr
add wave -noupdate /fft_tb/IFFT/postproc_u/cache_fst_cp
add wave -noupdate /fft_tb/IFFT/postproc_u/BUFFER
add wave -noupdate /fft_tb/IFFT/postproc_u/buf_rd_cp_en
add wave -noupdate /fft_tb/IFFT/postproc_u/buf_rd_sb_en
add wave -noupdate /fft_tb/IFFT/postproc_u/buf_rd
add wave -noupdate -radix unsigned /fft_tb/IFFT/postproc_u/buf_rd_cnt
add wave -noupdate /fft_tb/IFFT/postproc_u/prev_cache_switch
add wave -noupdate -radix unsigned /fft_tb/IFFT/postproc_u/buf_raddr
add wave -noupdate -radix hexadecimal /fft_tb/IFFT/postproc_u/buf_rdata
add wave -noupdate -radix decimal -childformat {{{/fft_tb/IFFT/postproc_u/dout_i[15]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[14]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[13]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[12]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[11]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[10]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[9]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[8]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[7]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[6]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[5]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[4]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[3]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[2]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[1]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[0]} -radix decimal}} -subitemconfig {{/fft_tb/IFFT/postproc_u/dout_i[15]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[14]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[13]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[12]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[11]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[10]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[9]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[8]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[7]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[6]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[5]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[4]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[3]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[2]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[1]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[0]} {-height 15 -radix decimal}} /fft_tb/IFFT/postproc_u/dout_i
add wave -noupdate -radix decimal /fft_tb/IFFT/postproc_u/dout_q
add wave -noupdate /fft_tb/IFFT/postproc_u/dout_h
add wave -noupdate /fft_tb/IFFT/postproc_u/dout_s
add wave -noupdate /fft_tb/IFFT/postproc_u/dout_v
add wave -noupdate -divider PreProc
add wave -noupdate /fft_tb/FFT/preproc_u/clk
add wave -noupdate -radix unsigned /fft_tb/FFT/preproc_u/cache_fft_num
add wave -noupdate -radix unsigned /fft_tb/FFT/preproc_u/cache_cp_num
add wave -noupdate /fft_tb/FFT/preproc_u/cache_switch
add wave -noupdate /fft_tb/FFT/preproc_u/prev_cache_switch
add wave -noupdate -radix unsigned /fft_tb/FFT/preproc_u/cache_waddr
add wave -noupdate /fft_tb/FFT/preproc_u/cache_fst_cp
add wave -noupdate /fft_tb/FFT/preproc_u/buf_wr_en
add wave -noupdate /fft_tb/FFT/preproc_u/buf_wr
add wave -noupdate -radix unsigned /fft_tb/FFT/preproc_u/buf_waddr
add wave -noupdate -radix hexadecimal /fft_tb/FFT/preproc_u/buf_wdata
add wave -noupdate /fft_tb/FFT/preproc_u/BUFFER
add wave -noupdate -radix unsigned /fft_tb/FFT/preproc_u/buf_raddr
add wave -noupdate -radix hexadecimal /fft_tb/FFT/preproc_u/buf_rdata
add wave -noupdate -radix unsigned /fft_tb/FFT/preproc_u/cache_raddr
add wave -noupdate /fft_tb/FFT/preproc_u/buf_rd
add wave -noupdate /fft_tb/FFT/preproc_u/dout_sop
add wave -noupdate -radix unsigned /fft_tb/FFT/preproc_u/dout_fft_num
add wave -noupdate /fft_tb/FFT/preproc_u/dout_valid
add wave -noupdate -format Analog-Step -height 74 -max 32766.0 -min -32766.0 -radix decimal /fft_tb/FFT/preproc_u/dout_real
add wave -noupdate -radix decimal /fft_tb/FFT/preproc_u/dout_imag
add wave -noupdate /fft_tb/FFT/preproc_u/dout_eop
add wave -noupdate /fft_tb/FFT/preproc_u/dout_fst_cp
add wave -noupdate -divider FFT
add wave -noupdate /fft_tb/FFT/altera_fft/clk
add wave -noupdate /fft_tb/FFT/altera_fft/sink_valid
add wave -noupdate /fft_tb/FFT/altera_fft/sink_ready
add wave -noupdate /fft_tb/FFT/altera_fft/sink_error
add wave -noupdate /fft_tb/FFT/altera_fft/sink_sop
add wave -noupdate /fft_tb/FFT/altera_fft/sink_eop
add wave -noupdate -radix decimal /fft_tb/FFT/altera_fft/sink_real
add wave -noupdate -radix decimal /fft_tb/FFT/altera_fft/sink_imag
add wave -noupdate -radix unsigned /fft_tb/FFT/altera_fft/fftpts_in
add wave -noupdate /fft_tb/FFT/altera_fft/inverse
add wave -noupdate /fft_tb/FFT/altera_fft/source_ready
add wave -noupdate /fft_tb/FFT/altera_fft/source_error
add wave -noupdate /fft_tb/FFT/altera_fft/source_sop
add wave -noupdate /fft_tb/FFT/altera_fft/source_valid
add wave -noupdate -radix decimal -childformat {{{/fft_tb/FFT/altera_fft/source_real[27]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[26]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[25]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[24]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[23]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[22]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[21]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[20]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[19]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[18]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[17]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[16]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[15]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[14]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[13]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[12]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[11]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[10]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[9]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[8]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[7]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[6]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[5]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[4]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[3]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[2]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[1]} -radix decimal} {{/fft_tb/FFT/altera_fft/source_real[0]} -radix decimal}} -subitemconfig {{/fft_tb/FFT/altera_fft/source_real[27]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[26]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[25]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[24]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[23]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[22]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[21]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[20]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[19]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[18]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[17]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[16]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[15]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[14]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[13]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[12]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[11]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[10]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[9]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[8]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[7]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[6]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[5]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[4]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[3]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[2]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[1]} {-height 15 -radix decimal} {/fft_tb/FFT/altera_fft/source_real[0]} {-height 15 -radix decimal}} /fft_tb/FFT/altera_fft/source_real
add wave -noupdate -radix decimal /fft_tb/FFT/altera_fft/source_imag
add wave -noupdate /fft_tb/FFT/altera_fft/source_eop
add wave -noupdate -radix unsigned /fft_tb/FFT/altera_fft/fftpts_out
add wave -noupdate -divider PostProc
add wave -noupdate -radix decimal /fft_tb/FFT/postproc_u/dout_i
add wave -noupdate -radix decimal /fft_tb/FFT/postproc_u/dout_q
add wave -noupdate /fft_tb/FFT/postproc_u/dout_h
add wave -noupdate /fft_tb/FFT/postproc_u/dout_s
add wave -noupdate /fft_tb/FFT/postproc_u/dout_v
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {24885 ns} 0} {{Cursor 2} {378255 ns} 0} {{Cursor 3} {52195 ns} 0}
quietly wave cursor active 3
configure wave -namecolwidth 150
configure wave -valuecolwidth 80
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {760208 ns}
