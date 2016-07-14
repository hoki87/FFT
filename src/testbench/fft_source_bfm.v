/////////////////////////// INCLUDE /////////////////////////////
`include "../../src/lte_fft_inc.v"

////////////////////////////////////////////////////////////////
//
//  Module  : fft_source_bfm
//  Designer: Hoki
//  Company : HWorks
//  Date    : 2016/6/16 13:59:11
//
////////////////////////////////////////////////////////////////
// 
//  Description: source data genertaion
//
////////////////////////////////////////////////////////////////
// 
//  Revision: 1.0

/////////////////////////// MODULE //////////////////////////////

module fft_source_bfm(
   clk     ,
   reset   ,
   fft_num ,
   fs_ratio,
   cp_type , 
   source_i,   
   source_q,   
   source_h,   
   source_s,   
   source_v
);

   ///////////////// PARAMETER ////////////////
   parameter DATA_NBIT = 16;

   ////////////////// PORT ////////////////////
   input                   clk     ;
   input                   reset   ;
   output [2:0]            fft_num ; //0 - 2048,1 - 1024,3 - 512,4 - 256, 5 - 128 
   output [6:0]            fs_ratio; //153.6MHz/Fs or 184.32MHz/Fs  
   output                  cp_type ; 
   output [DATA_NBIT-1:0]  source_i;   
   output [DATA_NBIT-1:0]  source_q;   
   output                  source_h;   
   output                  source_s;   
   output                  source_v;
   
   ////////////////// ARCH ////////////////////
      
   reg  [2:0]            fft_num ;
   wire [6:0]            fs_ratio;
   reg                   cp_type ; 
   reg  [DATA_NBIT-1:0]  source_i;   
   reg  [DATA_NBIT-1:0]  source_q;   
   reg                   source_h;   
   reg                   source_s;   
   reg                   source_v;
        
   reg  [15:0] source_cnt; // total 15360 samples
   reg  [2:0]  slot_cnt;
   reg  [6:0]  clk_div;   // 0 ~ CLK_FS_RATIO-1
   reg  [15:0] data_cnt;
   
   wire [`FFT_NUM_NBIT-1:0] fft_len;
   assign fft_len = `FFT_NUM_NBIT'd`FFT_MAX_NUM>>fft_num;

   assign fs_ratio = 7'd5<<fft_num;
      
   always@(posedge clk) begin
      if(reset) begin
         clk_div <= 0;
         source_cnt <= 0;
         slot_cnt <= 0;
         data_cnt<=`FFT_MAX_NUM;
         fft_num <= 3'd4;
         cp_type <= 1'b1;  // normal cp
         source_h <= `LOW;
         source_s <= `LOW;
         source_v <= `LOW;
         source_v <= `LOW;
         source_i <= 0;
         source_q <= 0;
      end
      else begin
         clk_div <= clk_div + 1'b1;
         if(clk_div==fs_ratio-1) begin
            clk_div <= 0;
            source_cnt <= source_cnt + 1'b1;
            if(~cp_type) begin // normal CP
               if(((slot_cnt==0)&&(source_cnt==fft_len+(`CP_NOR_FST_NUM>>fft_num)-1)) || // first CP number: 160
                  ((slot_cnt!=0)&&(source_cnt==fft_len+(`CP_NOR_NUM>>fft_num)-1))) begin  // others CP number: 144
                  source_cnt <= 0;
                  slot_cnt <= slot_cnt + 1'b1;
                  if(slot_cnt==6+1)
                     slot_cnt <= 0;
               end
            end
            else begin // extended CP
               if(source_cnt==fft_len+(`CP_EXT_NUM>>fft_num)-1) begin
                  source_cnt <= 0;
                  slot_cnt <= slot_cnt + 1'b1;
                  if(slot_cnt==5+1)
                     slot_cnt <= 0;
               end
            end
         end
         
         source_h <= `LOW;
         source_s <= `LOW;
         source_v <= `LOW;
         if(clk_div==fs_ratio-1) begin
            if((~cp_type&&(slot_cnt<7))||(cp_type&&(slot_cnt<6))) begin
               if(source_cnt==0) begin
                  source_h <= `HIGH;
                  if(slot_cnt==0) begin
                     source_s <= `HIGH;
                     cp_type  <= ~cp_type;
                     fft_num <= fft_num + 1'b1;
                     if(fft_num==3'd4)
                        fft_num <= 0;
                  end
               end
            end               
         end
         
         source_v <= `LOW;
         if(source_h) begin
            data_cnt <= 0;
            source_v <=`HIGH;
         end
         else if(data_cnt<fft_len-1) begin
            data_cnt <= data_cnt + 1'b1;
            source_v <=`HIGH;
         end

         source_i <= 0;
         source_q <= 0;
         if(data_cnt==8)
            source_i <= 32767;
      end
   end
   
endmodule