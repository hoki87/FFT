/////////////////////////// INCLUDE /////////////////////////////
`include "../../src/lte_fft_inc.v"

////////////////////////////////////////////////////////////////
//
//  Module  : postproc
//  Designer: Hoki
//  Company : HWorks
//  Date    : 2016/6/5 20:40:15
//
////////////////////////////////////////////////////////////////
// 
//  Description: post processing for FFT and IFFT
//               - FFT:  pass through
//               - IFFT: insert CP
//
////////////////////////////////////////////////////////////////
// 
//  Revision: 1.0


/////////////////////////// MODULE //////////////////////////////
module postproc
(
   clk       ,
   reset     ,
   fft_type  ,
   cp_type   ,
   fft_num   ,
   fs_ratio  ,
   fst_cp    ,
`ifdef ALTERA
   din_sop   , 
   din_valid ,
   din_real  ,
   din_imag  ,
`else
   din_done  ,
   din_dv    ,
   din_xk_re ,
   din_xk_im ,
`endif       
   dout_i    ,
   dout_q    ,
   dout_h    ,
   dout_s    ,
   dout_v    
);

   ///////////////// PARAMETER ////////////////
   parameter DATA_NBIT    = 16;
   
   ////////////////// PORT ////////////////////
   input                      clk;       // clock input
   input                      reset;     // reset input
   input                      fft_type;  // 0 - FFT, 1 - IFFT 
   input                      cp_type;   // 0 - normal, 1 - extended
   input  [2:0]               fft_num;   // 0 - 2048,1 - 1024,3 - 512,4 - 256, 5 - 128 
   input  [6:0]               fs_ratio;  // 153.6MHz/Fs or 184.32MHz/Fs
   input                      fst_cp;    // the flag of first cp
`ifdef ALTERA
   input                      din_sop;   // start of packet input
   input                      din_valid; // data valid input
   input  [DATA_NBIT-1:0]     din_real;  // I path data input
   input  [DATA_NBIT-1:0]     din_imag;  // Q path data input
`else
   input                      din_done ; // done of FFT/IFFT process input
   input                      din_dv   ; // data valid input
   input  [DATA_NBIT-1:0]     din_xk_re; // real data input
   input  [DATA_NBIT-1:0]     din_xk_im; // imag data input
`endif
   output [DATA_NBIT-1:0]     dout_i;    // I path data output
   output [DATA_NBIT-1:0]     dout_q;    // Q path data output
   output                     dout_h;    // first sample data valid output
   output                     dout_s;    // first time slot valid output
   output                     dout_v;    // sample data valid output

   ////////////////// ARCH ////////////////////
   
   ////////////////// DATA CACHE IN
   wire                       din_h;
   wire                       din_v;
   wire [DATA_NBIT-1:0]       din_i;
   wire [DATA_NBIT-1:0]       din_q;
   reg                        p_din_v;      
   
`ifdef ALTERA
   assign din_h = din_sop&din_valid;
   assign din_v = din_valid;
   assign din_i = din_real;
   assign din_q = din_imag;
`else
   assign din_h = din_done;
   assign din_v = din_dv;
   assign din_i = din_xk_re;
   assign din_q = din_xk_im;
`endif
   
   reg                        buf_wr_en;
   wire                       buf_wr;
   wire [`BUF_ADDR_NBIT:0]    buf_waddr;
   wire [DATA_NBIT*2-1:0]     buf_wdata;
   reg  [`FFT_NUM_NBIT-1:0]   cache_fft_num;
   reg  [`FFT_NUM_NBIT-1:0]   cache_cp_num;
   reg  [`FFT_NUM_NBIT-1:0]   cache_waddr;
   reg                        cache_switch;
   reg                        cache_fst_cp;
   reg  [6:0]                 cache_fs_ratio;
   
   assign buf_wr    = (din_h|buf_wr_en)&din_v;
   assign buf_wdata = {din_i,din_q};
   assign buf_waddr = {cache_switch,cache_waddr[`BUF_ADDR_NBIT-1:0]};
   
   always@(posedge clk) begin
      if(reset) begin
         buf_wr_en     <= `LOW;
         cache_waddr   <= 0;
         cache_fft_num <= `FFT_NUM_NBIT'd`FFT_MAX_NUM;
         cache_cp_num  <= `FFT_NUM_NBIT'd`CP_NOR_FST_NUM;
         cache_fs_ratio<= 0;
         cache_switch  <= `LOW;
         cache_fst_cp  <= `LOW;
      end
      else begin
         if(din_h) begin // start cacheing after din_h
            buf_wr_en   <= `HIGH;
            cache_waddr <= 0;
            if(din_v)
               cache_waddr <= `FFT_NUM_NBIT'd1;
         end
         else if(buf_wr_en&din_v)
            cache_waddr <= cache_waddr + 1'b1;
         
         if(p_din_v&~din_v&buf_wr_en) begin
            buf_wr_en      <= `LOW;
            cache_waddr    <= 0;
            cache_switch   <= ~cache_switch; // switch ram bank when eop
            cache_fst_cp   <= fst_cp;
            // Latch CP number & FFT number
            cache_fs_ratio <= fs_ratio;
            cache_fft_num  <= `FFT_NUM_NBIT'd`FFT_MAX_NUM>>fft_num;
            if(cp_type)
               cache_cp_num  <= `FFT_NUM_NBIT'd`CP_EXT_NUM>>fft_num; // extended CP
            else begin
               if(fst_cp)
                  cache_cp_num  <= `FFT_NUM_NBIT'd`CP_NOR_FST_NUM>>fft_num; // first time slot
               else
                  cache_cp_num  <= `FFT_NUM_NBIT'd`CP_NOR_NUM>>fft_num;
            end
         end  
      end
   end
   
   ////////////////// BUFFER
`ifdef ALTERA
   (*ramstyle="M10K"*)  reg [DATA_NBIT*2-1:0]  BUFFER[0:2**(`BUF_ADDR_NBIT+1)-1];
`else
   (*RAM_STYLE="BLOCK"*)reg [DATA_NBIT*2-1:0]  BUFFER[0:2**(`BUF_ADDR_NBIT+1)-1];
`endif
   
   // simple dual port RAM
   wire [`BUF_ADDR_NBIT:0]    buf_raddr;
   reg  [DATA_NBIT*2-1:0]     buf_rdata; // {data_i,data_q}
   always@(posedge clk) begin
      if(buf_wr)
         BUFFER[buf_waddr] <= buf_wdata;
      buf_rdata <= BUFFER[buf_raddr]; // read-during-write, old data
   end
   
   ////////////////// CP INSERT & SYMBOL READ
   reg                        buf_rd_cp_en; // read cp enable
   reg                        buf_rd_sb_en; // read symbol enable
   wire                       buf_rd_en;
   reg  [6:0]                 buf_rd_cnt;
   reg  [`FFT_NUM_NBIT-1:0]   cache_raddr;
   reg                        prev_cache_switch;
   
   assign buf_rd_en = buf_rd_cp_en|buf_rd_sb_en;
   assign buf_raddr = {~cache_switch,cache_raddr[`BUF_ADDR_NBIT-1:0]};
   
   always@(posedge clk) begin
      if(reset) begin
         buf_rd_cp_en      <= `LOW;
         buf_rd_sb_en      <= `LOW;
         cache_raddr       <= 0;
         buf_rd_cnt        <= 0;
         prev_cache_switch <= `LOW;
      end
      else begin
         if(buf_rd_cp_en|buf_rd_sb_en) begin
            buf_rd_cnt <= buf_rd_cnt + 1'b1;
            if(buf_rd_cnt==cache_fs_ratio-1) begin
               buf_rd_cnt <= 0;
            end
         end
         
         prev_cache_switch <= cache_switch;
         if(cache_switch^prev_cache_switch) begin // start cacheing
            buf_rd_cp_en  <= `HIGH;
            buf_rd_sb_en  <= `LOW;
            cache_raddr   <= cache_fft_num - cache_cp_num; // CP ADDRESS: (cache_fft_num - cache_cp_num) ~ cache_fft_num-1
            buf_rd_cnt    <= 0;
         end
         else if(buf_rd_en&(buf_rd_cnt==cache_fs_ratio-1)) begin
            cache_raddr <= cache_raddr + 1'b1;
            if(cache_raddr==cache_fft_num-1'b1) begin 
               buf_rd_cp_en <= `LOW;
               buf_rd_sb_en <= buf_rd_cp_en; // enable symbol reading after cp reading
               cache_raddr  <= 0;
            end
         end
      end
   end
      
   ////////////////// DOUT
   reg                  dout_h;  // first sample data valid output
   reg                  dout_s;  // first time slot valid output   
   reg                  dout_v;  // sample data valid output      
   reg [DATA_NBIT-1:0]  dout_i;  // I path data output
   reg [DATA_NBIT-1:0]  dout_q;  // Q path data output
   reg [DATA_NBIT-1:0]  p_din_i;
   reg [DATA_NBIT-1:0]  p_din_q;
   reg                  p_buf_rd;
   reg [1:0]            p_switch;
   
   always@(posedge clk) begin
      if(reset) begin
         p_din_v  <= `LOW;
         p_din_i  <= 0;
         p_din_q  <= 0;
         dout_h   <= `LOW;
         dout_s   <= `LOW;
         dout_v   <= `LOW;
         dout_i   <= 0;
         dout_q   <= 0;
         p_buf_rd <= `LOW;
         p_switch <= 0;
      end
      else begin
         p_din_v  <= din_v;
         p_din_i  <= din_i;
         p_din_q  <= din_q;
         p_buf_rd <= buf_rd_en&(buf_rd_cnt==0);
         p_switch <= {p_switch[0],cache_switch^prev_cache_switch};
         if(~fft_type) begin // FFT: pass through
            dout_h  <= din_v&~p_din_v;
            dout_s  <= din_v&~p_din_v&fst_cp;
            dout_v  <= p_din_v;
            dout_i  <= p_din_v ? p_din_i : {DATA_NBIT{1'b0}};
            dout_q  <= p_din_v ? p_din_q : {DATA_NBIT{1'b0}};
         end
         else begin // IFFT: insert CP
            dout_h <= p_switch[1];
            dout_s <= p_switch[1]&&cache_fst_cp;
            dout_v <= p_buf_rd;
            dout_i <= buf_rdata[DATA_NBIT*2-1:DATA_NBIT];
            dout_q <= buf_rdata[DATA_NBIT-1:0];
         end
      end
   end

endmodule