/************************************************************
module name     : LTE_FFT
project         : 
version         : V1.00
author	        : ShangHai HanRu 
called by       : 
calling         : 
description     : This program is the top module of LTE FFT

revision history:
---------------------------------------------------------------
1. 2016-5-22, initial version
---------------------------------------------------------------
*************************************************************/
`timescale 1ns/1ns
`include "../../src/lte_fft_inc.v"
module LTE_FFT
    #
    (
    parameter BIT_WIDTH             = 16
    )
    (
    input                   Reset,
    input                   Clk,
    input   [2:0]           FFT_num ,       //0 - 2048,1 - 1024,3 - 512,4 - 256, 5 - 128 
    input   [6:0]           FS_ratio,       //153.6MHz/Fs or 184.32MHz/Fs  
    input                   CP_type ,       //0 - normal CP, 1 - extended CP
    input                   FFT_type,       //0 - FFT,1 - IFFT
    input   [BIT_WIDTH-1:0] Din_i,
    input   [BIT_WIDTH-1:0] Din_q,
    input                   Din_h,          //indicate first sample data @per OFDM symbol
    input                   Din_s,          //head of time slot 0.5ms
    input                   Din_v,          //indicate Din data

    output  [BIT_WIDTH-1:0] Dout_i,
    output  [BIT_WIDTH-1:0] Dout_q,
    output                  Dout_h,         //indicate first sample data @per OFDM symbol
    output                  Dout_s,         //head of time slot 0.5ms
    output                  Dout_v          //indicate Dout data
    );
/*****************************************************/
/*------- parameter declaration              --------*/
/*****************************************************/


/*****************************************************
			 Variable declaration              
*****************************************************/

/*****************************************************/
/*-------             Intf timing            --------*/
/*****************************************************/
//                       FFT mode
//Din_i   |    I0    |    I1    |    I2    |    I3    |
//Din_q   |    Q0    |    Q1    |    Q2    |    Q3    |
//
//         __<-first sample data @per OFDM symbol
//Din_h   |  |_________________________________________
//         __<-head of time slot 0.5ms
//Din_s   |  |_________________________________________ 
//         __         __         __         __
//Din_v   |  |_______|  |_______|  |_______|  |________


//                      IFFT mode
//Din_i   |  |  |I0|I1|I2|I3|...|DC|Dx|..|  |
//Din_q   |  |  |I0|I1|I2|I3|...|DC|Dx|..|  |
//
//            __<-first sample data @per OFDM symbol
//Din_h   ___|  |____________________________
//            __<-head of time slot 0.5ms
//Din_s   ___|  |____________________________
//               ________________________
//Din_v   ______|                        |___

//                      FFT mode
//Dout_i   |  |  |I0|I1|I2|I3|...|DC|Dx|..|  |
//Dout_q   |  |  |I0|I1|I2|I3|...|DC|Dx|..|  |
//             __
//Dout_h   ___|  |____________________________
//             __
//Dout_s   ___|  |____________________________
//                ________________________
//Dout_v   ______|                        |___

//                      IFFT mode
//Dout_i   |    I0    |    I1    |    I2    |    I3    |
//Dout_q   |    Q0    |    Q1    |    Q2    |    Q3    |
//          __
//Dout_h   |  |____________________________
//          __
//Dout_s   |  |____________________________
//          __         __         __         __
//Dout_v   |  |_______|  |_______|  |_______|  |________


/*****************************************************/
/*-------               Main Code            --------*/
/*****************************************************/

   ////////////////// Precondition
   
`ifdef ALTERA
   wire                      preproc_sop;    
   wire                      preproc_valid;  
   wire [BIT_WIDTH-1:0]      preproc_real;        
   wire [BIT_WIDTH-1:0]      preproc_imag;       
   wire                      preproc_eop;
`else
   wire                      proc_rfd;
   wire                      preproc_start;
   wire                      preproc_nfft_we;
   wire [`FFT_NFFT_NBIT-1:0] preproc_nfft;
   wire                      preproc_inv_we;
   wire                      preproc_inv;
   wire                      preproc_scale_we;
   wire [`FFT_SCH_NBIT-1:0]  preproc_scale;
   wire [BIT_WIDTH-1:0]      preproc_xn_re;
   wire [BIT_WIDTH-1:0]      preproc_xn_im;
`endif
   wire                      preproc_fst_cp;    
   
   preproc #(BIT_WIDTH)
   preproc_u(
      .clk          (Clk            ),
      .reset        (Reset          ),
      .fft_type     (FFT_type       ),
      .cp_type      (CP_type        ),
      .fft_num      (FFT_num        ),
      .din_i        (Din_i          ),
      .din_q        (Din_q          ),
      .din_h        (Din_h          ),
      .din_s        (Din_s          ),
      .din_v        (Din_v          ),
`ifdef ALTERA
      .dout_sop     (preproc_sop    ),
      .dout_valid   (preproc_valid  ),
      .dout_real    (preproc_real   ),
      .dout_imag    (preproc_imag   ),
      .dout_eop     (preproc_eop    ),
`else
      .din_rfd      (proc_rfd        ),
      .dout_start   (preproc_start   ),
      .dout_nfft_we (preproc_nfft_we ),
      .dout_nfft    (preproc_nfft    ),
      .dout_inv_we  (preproc_inv_we  ),
      .dout_inv     (preproc_inv     ),
      .dout_scale_we(preproc_scale_we),
      .dout_scale   (preproc_scale   ),
      .dout_xn_re   (preproc_xn_re   ),
      .dout_xn_im   (preproc_xn_im   ),
`endif
      .dout_fst_cp  (preproc_fst_cp  )
   );
   
   ////////////////// FFT/IFFT   
   
`ifdef ALTERA  // ALTERA FFT/IFFT IP Core
   wire                     proc_valid;
   wire                     proc_sop  ;
   wire [BIT_WIDTH-1:0]     proc_real ;
   wire [BIT_WIDTH-1:0]     proc_imag ;
   wire [`FFT_NUM_NBIT-1:0] proc_fft_num;
   
   assign proc_fft_num = `FFT_NUM_NBIT'd`FFT_MAX_NUM>>FFT_num;

	fft altera_fft (
		.clk          (Clk            ),   
		.reset_n      (~Reset         ),
		.sink_valid   (preproc_valid  ),
		.sink_ready   (),
		.sink_error   (2'b00          ),
		.sink_sop     (preproc_sop    ),
		.sink_eop     (preproc_eop    ),
		.sink_real    (preproc_real   ),
		.sink_imag    (preproc_imag   ),
		.fftpts_in    (proc_fft_num   ),
		.inverse      (FFT_type       ),
		.source_valid (proc_valid     ),
		.source_ready (`HIGH          ),
		.source_error (),
		.source_sop   (proc_sop       ),
		.source_eop   (),
		.source_real  (proc_real      ),
		.source_imag  (proc_imag      ),
		.fftpts_out   ()
	);
`else          // XILINX FFT/IFFT IP Core
   wire                   proc_done ;
   wire                   proc_dv   ;
   wire [BIT_WIDTH-1:0]   proc_xk_re;
   wire [BIT_WIDTH-1:0]   proc_xk_im;
   wire                   proc_unload;
   
   assign proc_unload = proc_done;
   
   fft xilinx_fft (
     .clk         (Clk             ), // input clk
     .sclr        (Reset           ), // input sclr
     .nfft        (preproc_nfft    ), // input [4 : 0] nfft
     .nfft_we     (preproc_nfft_we ), // input nfft_we
     .start       (preproc_start   ), // input start
     .unload      (proc_unload     ), // input unload
     .xn_re       (preproc_xn_re   ), // input [15 : 0] xn_re
     .xn_im       (preproc_xn_im   ), // input [15 : 0] xn_im
     .fwd_inv     (preproc_inv     ), // input fwd_inv
     .fwd_inv_we  (preproc_inv_we  ), // input fwd_inv_we
     .scale_sch   (preproc_scale   ), // input [11 : 0] scale_sch
     .scale_sch_we(preproc_scale_we), // input scale_sch_we
     .rfd         (proc_rfd        ), // output rfd
     .xn_index    (),                 // output [10 : 0] xn_index
     .busy        (),                 // output busy
     .edone       (),                 // output edone
     .done        (proc_done       ), // output done
     .dv          (proc_dv         ), // output dv
     .xk_index    (),                 // output [10 : 0] xk_index
     .xk_re       (proc_xk_re      ), // output [15 : 0] xk_re
     .xk_im       (proc_xk_im      )  // output [15 : 0] xk_im
   );
`endif

   ////////////////// Post processing
   postproc #(BIT_WIDTH)
   postproc_u (
      .clk      (Clk           ),
      .reset    (Reset         ),
      .fft_type (FFT_type      ),
      .cp_type  (CP_type       ),
      .fft_num  (FFT_num       ),
      .fs_ratio (FS_ratio      ),
      .fst_cp   (preproc_fst_cp),
`ifdef ALTERA
      .din_sop  (proc_sop      ),
      .din_valid(proc_valid    ),
      .din_real (proc_real     ),
      .din_imag (proc_imag     ),
`else                          
      .din_done (proc_done     ),
      .din_dv   (proc_dv       ),
      .din_xk_re(proc_xk_re    ),
      .din_xk_im(proc_xk_im    ),
`endif                         
      .dout_i   (Dout_i        ),
      .dout_q   (Dout_q        ),
      .dout_h   (Dout_h        ),
      .dout_s   (Dout_s        ),
      .dout_v   (Dout_v        )
   );   

endmodule