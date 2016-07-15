////////////////////////////////////////////////////////////////
//
//  Module  : lte_fft_inc.v
//  Designer: Hoki
//  Company : HWorks
//  Date    : 2016/6/7 15:26:08
//
////////////////////////////////////////////////////////////////
// 
//  Description: include file of CP
//
////////////////////////////////////////////////////////////////
// 
//  Revision: 1.0

`define   ALTERA

//`define   SCALE

`define   HIGH           1'b1
`define   LOW            1'b0

`define   CP_NOR_NUM     144
`define   CP_NOR_FST_NUM 160
`define   CP_EXT_NUM     512

`define   FFT_NUM_NBIT   12
`define   FFT_MAX_NUM    2048

`define   BUF_ADDR_NBIT  `FFT_NUM_NBIT-1

// XILINX
`define   FFT_SCH_NBIT   12
`define   FFT_NFFT_NBIT  5
`define   FFT_NFFT_2048  `FFT_NFFT_NBIT'b01011