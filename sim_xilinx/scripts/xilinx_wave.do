onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fft_tb/ifft_source/reset
add wave -noupdate -radix unsigned /fft_tb/ifft_source/source_cnt
add wave -noupdate /fft_tb/ifft_source/slot_cnt
add wave -noupdate -radix unsigned /fft_tb/ifft_source/clk_div
add wave -noupdate -radix unsigned /fft_tb/ifft_source/data_cnt
add wave -noupdate -radix unsigned /fft_tb/ifft_source/fft_len
add wave -noupdate -radix unsigned /fft_tb/ifft_source/fft_num
add wave -noupdate /fft_tb/ifft_source/cp_type
add wave -noupdate -radix unsigned /fft_tb/ifft_source/data_cnt
add wave -noupdate -radix unsigned /fft_tb/ifft_source/clk_div
add wave -noupdate -radix unsigned /fft_tb/ifft_source/source_cnt
add wave -noupdate -radix unsigned /fft_tb/ifft_source/slot_cnt
add wave -noupdate -radix decimal /fft_tb/ifft_source/source_i
add wave -noupdate -radix decimal /fft_tb/ifft_source/source_q
add wave -noupdate /fft_tb/ifft_source/source_h
add wave -noupdate /fft_tb/ifft_source/source_s
add wave -noupdate /fft_tb/ifft_source/source_v
add wave -noupdate -divider preproc
add wave -noupdate /fft_tb/IFFT/preproc_u/dout_fst_cp
add wave -noupdate /fft_tb/IFFT/preproc_u/buf_wr_en
add wave -noupdate /fft_tb/IFFT/preproc_u/din_rfd
add wave -noupdate /fft_tb/IFFT/preproc_u/dout_start
add wave -noupdate /fft_tb/IFFT/preproc_u/dout_nfft_we
add wave -noupdate /fft_tb/IFFT/preproc_u/dout_nfft
add wave -noupdate /fft_tb/IFFT/preproc_u/dout_inv_we
add wave -noupdate /fft_tb/IFFT/preproc_u/dout_inv
add wave -noupdate /fft_tb/IFFT/preproc_u/dout_scale_we
add wave -noupdate /fft_tb/IFFT/preproc_u/dout_scale
add wave -noupdate -radix decimal /fft_tb/IFFT/preproc_u/dout_xn_re
add wave -noupdate -radix decimal /fft_tb/IFFT/preproc_u/dout_xn_im
add wave -noupdate /fft_tb/IFFT/preproc_u/dout_fst_cp
add wave -noupdate -divider IFFT
add wave -noupdate /fft_tb/ifft_source/clk
add wave -noupdate /fft_tb/IFFT/xilinx_fft/fwd_inv
add wave -noupdate /fft_tb/IFFT/xilinx_fft/fwd_inv_we
add wave -noupdate /fft_tb/IFFT/xilinx_fft/scale_sch_we
add wave -noupdate /fft_tb/IFFT/xilinx_fft/start
add wave -noupdate /fft_tb/IFFT/xilinx_fft/rfd
add wave -noupdate /fft_tb/IFFT/xilinx_fft/nfft_we
add wave -noupdate /fft_tb/IFFT/xilinx_fft/nfft
add wave -noupdate -radix unsigned /fft_tb/IFFT/xilinx_fft/xn_index
add wave -noupdate -radix decimal /fft_tb/IFFT/xilinx_fft/xn_re
add wave -noupdate -radix decimal /fft_tb/IFFT/xilinx_fft/xn_im
add wave -noupdate -radix hexadecimal /fft_tb/IFFT/xilinx_fft/scale_sch
add wave -noupdate /fft_tb/IFFT/xilinx_fft/busy
add wave -noupdate /fft_tb/IFFT/xilinx_fft/edone
add wave -noupdate /fft_tb/IFFT/xilinx_fft/done
add wave -noupdate /fft_tb/IFFT/xilinx_fft/unload
add wave -noupdate /fft_tb/IFFT/xilinx_fft/dv
add wave -noupdate -radix unsigned -childformat {{{/fft_tb/IFFT/xilinx_fft/xk_index[10]} -radix unsigned} {{/fft_tb/IFFT/xilinx_fft/xk_index[9]} -radix unsigned} {{/fft_tb/IFFT/xilinx_fft/xk_index[8]} -radix unsigned} {{/fft_tb/IFFT/xilinx_fft/xk_index[7]} -radix unsigned} {{/fft_tb/IFFT/xilinx_fft/xk_index[6]} -radix unsigned} {{/fft_tb/IFFT/xilinx_fft/xk_index[5]} -radix unsigned} {{/fft_tb/IFFT/xilinx_fft/xk_index[4]} -radix unsigned} {{/fft_tb/IFFT/xilinx_fft/xk_index[3]} -radix unsigned} {{/fft_tb/IFFT/xilinx_fft/xk_index[2]} -radix unsigned} {{/fft_tb/IFFT/xilinx_fft/xk_index[1]} -radix unsigned} {{/fft_tb/IFFT/xilinx_fft/xk_index[0]} -radix unsigned}} -subitemconfig {{/fft_tb/IFFT/xilinx_fft/xk_index[10]} {-height 15 -radix unsigned} {/fft_tb/IFFT/xilinx_fft/xk_index[9]} {-height 15 -radix unsigned} {/fft_tb/IFFT/xilinx_fft/xk_index[8]} {-height 15 -radix unsigned} {/fft_tb/IFFT/xilinx_fft/xk_index[7]} {-height 15 -radix unsigned} {/fft_tb/IFFT/xilinx_fft/xk_index[6]} {-height 15 -radix unsigned} {/fft_tb/IFFT/xilinx_fft/xk_index[5]} {-height 15 -radix unsigned} {/fft_tb/IFFT/xilinx_fft/xk_index[4]} {-height 15 -radix unsigned} {/fft_tb/IFFT/xilinx_fft/xk_index[3]} {-height 15 -radix unsigned} {/fft_tb/IFFT/xilinx_fft/xk_index[2]} {-height 15 -radix unsigned} {/fft_tb/IFFT/xilinx_fft/xk_index[1]} {-height 15 -radix unsigned} {/fft_tb/IFFT/xilinx_fft/xk_index[0]} {-height 15 -radix unsigned}} /fft_tb/IFFT/xilinx_fft/xk_index
add wave -noupdate -radix decimal -childformat {{{/fft_tb/IFFT/xilinx_fft/xk_re[15]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[14]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[13]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[12]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[11]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[10]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[9]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[8]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[7]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[6]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[5]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[4]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[3]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[2]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[1]} -radix decimal} {{/fft_tb/IFFT/xilinx_fft/xk_re[0]} -radix decimal}} -subitemconfig {{/fft_tb/IFFT/xilinx_fft/xk_re[15]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[14]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[13]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[12]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[11]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[10]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[9]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[8]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[7]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[6]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[5]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[4]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[3]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[2]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[1]} {-height 15 -radix decimal} {/fft_tb/IFFT/xilinx_fft/xk_re[0]} {-height 15 -radix decimal}} /fft_tb/IFFT/xilinx_fft/xk_re
add wave -noupdate -radix decimal /fft_tb/IFFT/xilinx_fft/xk_im
add wave -noupdate -divider Postproc
add wave -noupdate /fft_tb/IFFT/postproc_u/clk
add wave -noupdate /fft_tb/IFFT/postproc_u/buf_wr_en
add wave -noupdate /fft_tb/IFFT/postproc_u/buf_wr
add wave -noupdate -radix unsigned -childformat {{{/fft_tb/IFFT/postproc_u/buf_waddr[11]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/buf_waddr[10]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/buf_waddr[9]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/buf_waddr[8]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/buf_waddr[7]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/buf_waddr[6]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/buf_waddr[5]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/buf_waddr[4]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/buf_waddr[3]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/buf_waddr[2]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/buf_waddr[1]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/buf_waddr[0]} -radix unsigned}} -subitemconfig {{/fft_tb/IFFT/postproc_u/buf_waddr[11]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/buf_waddr[10]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/buf_waddr[9]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/buf_waddr[8]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/buf_waddr[7]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/buf_waddr[6]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/buf_waddr[5]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/buf_waddr[4]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/buf_waddr[3]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/buf_waddr[2]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/buf_waddr[1]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/buf_waddr[0]} {-height 15 -radix unsigned}} /fft_tb/IFFT/postproc_u/buf_waddr
add wave -noupdate -radix hexadecimal -childformat {{{/fft_tb/IFFT/postproc_u/buf_wdata[31]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[30]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[29]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[28]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[27]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[26]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[25]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[24]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[23]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[22]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[21]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[20]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[19]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[18]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[17]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[16]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[15]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[14]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[13]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[12]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[11]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[10]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[9]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[8]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[7]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[6]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[5]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[4]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[3]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[2]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[1]} -radix hexadecimal} {{/fft_tb/IFFT/postproc_u/buf_wdata[0]} -radix hexadecimal}} -subitemconfig {{/fft_tb/IFFT/postproc_u/buf_wdata[31]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[30]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[29]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[28]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[27]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[26]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[25]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[24]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[23]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[22]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[21]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[20]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[19]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[18]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[17]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[16]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[15]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[14]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[13]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[12]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[11]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[10]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[9]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[8]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[7]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[6]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[5]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[4]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[3]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[2]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[1]} {-height 15 -radix hexadecimal} {/fft_tb/IFFT/postproc_u/buf_wdata[0]} {-height 15 -radix hexadecimal}} /fft_tb/IFFT/postproc_u/buf_wdata
add wave -noupdate -radix unsigned /fft_tb/IFFT/postproc_u/cache_cp_num
add wave -noupdate -radix unsigned /fft_tb/IFFT/postproc_u/cache_fft_num
add wave -noupdate -radix unsigned -childformat {{{/fft_tb/IFFT/postproc_u/cache_waddr[11]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_waddr[10]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_waddr[9]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_waddr[8]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_waddr[7]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_waddr[6]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_waddr[5]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_waddr[4]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_waddr[3]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_waddr[2]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_waddr[1]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_waddr[0]} -radix unsigned}} -subitemconfig {{/fft_tb/IFFT/postproc_u/cache_waddr[11]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_waddr[10]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_waddr[9]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_waddr[8]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_waddr[7]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_waddr[6]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_waddr[5]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_waddr[4]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_waddr[3]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_waddr[2]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_waddr[1]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_waddr[0]} {-height 15 -radix unsigned}} /fft_tb/IFFT/postproc_u/cache_waddr
add wave -noupdate /fft_tb/IFFT/postproc_u/cache_switch
add wave -noupdate -radix unsigned -childformat {{{/fft_tb/IFFT/postproc_u/cache_raddr[11]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_raddr[10]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_raddr[9]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_raddr[8]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_raddr[7]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_raddr[6]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_raddr[5]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_raddr[4]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_raddr[3]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_raddr[2]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_raddr[1]} -radix unsigned} {{/fft_tb/IFFT/postproc_u/cache_raddr[0]} -radix unsigned}} -subitemconfig {{/fft_tb/IFFT/postproc_u/cache_raddr[11]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_raddr[10]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_raddr[9]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_raddr[8]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_raddr[7]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_raddr[6]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_raddr[5]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_raddr[4]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_raddr[3]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_raddr[2]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_raddr[1]} {-height 15 -radix unsigned} {/fft_tb/IFFT/postproc_u/cache_raddr[0]} {-height 15 -radix unsigned}} /fft_tb/IFFT/postproc_u/cache_raddr
add wave -noupdate /fft_tb/IFFT/postproc_u/cache_fst_cp
add wave -noupdate /fft_tb/IFFT/postproc_u/BUFFER
add wave -noupdate /fft_tb/IFFT/postproc_u/buf_rd_cp_en
add wave -noupdate /fft_tb/IFFT/postproc_u/buf_rd_sb_en
add wave -noupdate -radix unsigned /fft_tb/IFFT/postproc_u/buf_rd_cnt
add wave -noupdate /fft_tb/IFFT/postproc_u/prev_cache_switch
add wave -noupdate -radix unsigned /fft_tb/IFFT/postproc_u/buf_raddr
add wave -noupdate -radix hexadecimal /fft_tb/IFFT/postproc_u/buf_rdata
add wave -noupdate -format Analog-Step -height 74 -max 128.0 -min -128.0 -radix decimal -childformat {{{/fft_tb/IFFT/postproc_u/dout_i[15]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[14]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[13]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[12]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[11]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[10]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[9]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[8]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[7]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[6]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[5]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[4]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[3]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[2]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[1]} -radix decimal} {{/fft_tb/IFFT/postproc_u/dout_i[0]} -radix decimal}} -subitemconfig {{/fft_tb/IFFT/postproc_u/dout_i[15]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[14]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[13]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[12]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[11]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[10]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[9]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[8]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[7]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[6]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[5]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[4]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[3]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[2]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[1]} {-height 15 -radix decimal} {/fft_tb/IFFT/postproc_u/dout_i[0]} {-height 15 -radix decimal}} /fft_tb/IFFT/postproc_u/dout_i
add wave -noupdate -format Analog-Step -height 74 -max 128.0 -min -128.0 -radix decimal /fft_tb/IFFT/postproc_u/dout_q
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
add wave -noupdate -radix hexadecimal -childformat {{{/fft_tb/FFT/preproc_u/buf_rdata[31]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[30]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[29]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[28]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[27]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[26]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[25]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[24]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[23]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[22]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[21]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[20]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[19]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[18]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[17]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[16]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[15]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[14]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[13]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[12]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[11]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[10]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[9]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[8]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[7]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[6]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[5]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[4]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[3]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[2]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[1]} -radix hexadecimal} {{/fft_tb/FFT/preproc_u/buf_rdata[0]} -radix hexadecimal}} -subitemconfig {{/fft_tb/FFT/preproc_u/buf_rdata[31]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[30]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[29]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[28]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[27]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[26]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[25]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[24]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[23]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[22]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[21]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[20]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[19]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[18]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[17]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[16]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[15]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[14]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[13]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[12]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[11]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[10]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[9]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[8]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[7]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[6]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[5]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[4]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[3]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[2]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[1]} {-height 15 -radix hexadecimal} {/fft_tb/FFT/preproc_u/buf_rdata[0]} {-height 15 -radix hexadecimal}} /fft_tb/FFT/preproc_u/buf_rdata
add wave -noupdate -radix unsigned /fft_tb/FFT/preproc_u/cache_raddr
add wave -noupdate /fft_tb/FFT/preproc_u/dout_fst_cp
add wave -noupdate /fft_tb/FFT/preproc_u/dout_nfft_we
add wave -noupdate /fft_tb/FFT/preproc_u/dout_nfft
add wave -noupdate /fft_tb/FFT/preproc_u/dout_inv_we
add wave -noupdate /fft_tb/FFT/preproc_u/dout_inv
add wave -noupdate /fft_tb/FFT/preproc_u/dout_scale_we
add wave -noupdate /fft_tb/FFT/preproc_u/dout_scale
add wave -noupdate /fft_tb/FFT/preproc_u/dout_start
add wave -noupdate /fft_tb/FFT/preproc_u/din_rfd
add wave -noupdate -radix hexadecimal /fft_tb/FFT/preproc_u/dout_xn_re
add wave -noupdate -radix decimal /fft_tb/FFT/preproc_u/dout_xn_im
add wave -noupdate /fft_tb/FFT/preproc_u/dout_fst_cp
add wave -noupdate -divider FFT
add wave -noupdate /fft_tb/FFT/xilinx_fft/clk
add wave -noupdate /fft_tb/FFT/xilinx_fft/sclr
add wave -noupdate /fft_tb/FFT/xilinx_fft/nfft_we
add wave -noupdate /fft_tb/FFT/xilinx_fft/fwd_inv
add wave -noupdate /fft_tb/FFT/xilinx_fft/fwd_inv_we
add wave -noupdate /fft_tb/FFT/xilinx_fft/start
add wave -noupdate /fft_tb/FFT/xilinx_fft/nfft
add wave -noupdate /fft_tb/FFT/xilinx_fft/rfd
add wave -noupdate -radix unsigned /fft_tb/FFT/xilinx_fft/xn_index
add wave -noupdate -radix decimal /fft_tb/FFT/xilinx_fft/xn_re
add wave -noupdate -radix decimal /fft_tb/FFT/xilinx_fft/xn_im
add wave -noupdate /fft_tb/FFT/xilinx_fft/scale_sch
add wave -noupdate /fft_tb/FFT/xilinx_fft/busy
add wave -noupdate /fft_tb/FFT/xilinx_fft/edone
add wave -noupdate /fft_tb/FFT/xilinx_fft/done
add wave -noupdate /fft_tb/FFT/xilinx_fft/dv
add wave -noupdate -radix unsigned /fft_tb/FFT/xilinx_fft/xk_index
add wave -noupdate -radix hexadecimal /fft_tb/FFT/xilinx_fft/xk_re
add wave -noupdate -radix hexadecimal /fft_tb/FFT/xilinx_fft/xk_im
add wave -noupdate -divider PostProc
add wave -noupdate /fft_tb/FFT/postproc_u/dout_h
add wave -noupdate /fft_tb/FFT/postproc_u/dout_s
add wave -noupdate /fft_tb/FFT/postproc_u/dout_v
add wave -noupdate -radix decimal /fft_tb/FFT/postproc_u/dout_i
add wave -noupdate -radix decimal /fft_tb/FFT/postproc_u/dout_q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3887765000 ps} 0} {{Cursor 2} {3885845000 ps} 0} {{Cursor 3} {2244645000 ps} 0}
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
WaveRestoreZoom {0 ps} {4725 us}
