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
   cp_type , 
   fft_type,
   source_i,   
   source_q,   
   source_h,   
   source_s,   
   source_v
);

   ///////////////// PARAMETER ////////////////
   parameter DATA_NBIT = 16;
   parameter CLK_FS_RATIO = 5;

   ////////////////// PORT ////////////////////
   input                   clk     ;
   input                   reset   ;
   output [1:0]            fft_num ;
   output                  cp_type ; 
   output                  fft_type;
   output [DATA_NBIT-1:0]  source_i;   
   output [DATA_NBIT-1:0]  source_q;   
   output                  source_h;   
   output                  source_s;   
   output                  source_v;
   
   ////////////////// ARCH ////////////////////
      
   reg  [1:0]            fft_num ;
   reg                   cp_type ; 
   reg                   fft_type;
   reg  [DATA_NBIT-1:0]  source_i;   
   reg  [DATA_NBIT-1:0]  source_q;   
   reg                   source_h;   
   reg                   source_s;   
   reg                   source_v;
        
   reg  [15:0] source_cnt; // total 15360 samples
   reg  [2:0]  slot_cnt;
   reg  [2:0]  clk_div;   // 0 ~ CLK_FS_RATIO-1
   reg  [15:0] data_cnt;
   
   wire [`FFT_NUM_NBIT-1:0] fft_len;
   assign fft_len = {(3'b100 - fft_num),9'd0};
      
   always@(posedge clk) begin
      if(reset) begin
         clk_div <= 0;
         source_cnt <= 0;
         slot_cnt <= 0;
         data_cnt<=`FFT_MAX_NUM;
         fft_num <= 2'b00; // 2'b00 - 2048, 2'b01 - 1536, 2'b10 - 1024, 2'b11 - 512
         cp_type <= 1'b0;  // normal cp
         fft_type<= 1'b1;  
         source_h <= `LOW;
         source_s <= `LOW;
         source_v <= `LOW;
         source_v <= `LOW;
         source_i <= 0;
         source_q <= 0;
      end
      else begin
         clk_div <= clk_div + 1'b1;
         if(clk_div==CLK_FS_RATIO-1) begin
            clk_div <= 0;
            source_cnt <= source_cnt + 1'b1;
            if(~cp_type) begin // normal CP
               if(((slot_cnt==0)&&(source_cnt==fft_len+`CP_NOR_FST_NUM-1)) || // first CP number: 160
                  ((slot_cnt!=0)&&(source_cnt==fft_len+`CP_NOR_NUM-1))) begin  // others CP number: 144
                  source_cnt <= 0;
                  slot_cnt <= slot_cnt + 1'b1;
                  if(slot_cnt==6)
                     slot_cnt <= 0;
               end
            end
            else begin // extended CP
               if(source_cnt==fft_len+`CP_EXT_NUM-1) begin
                  source_cnt <= 0;
                  slot_cnt <= slot_cnt + 1'b1;
                  if(slot_cnt==5)
                     slot_cnt <= 0;
               end
            end
         end
         
         source_h <= `LOW;
         source_s <= `LOW;
         source_v <= `LOW;
         if(clk_div==CLK_FS_RATIO-1) begin
            if(source_cnt==0) begin
               source_h <= `HIGH;
               if(slot_cnt==0)
                  source_s <= `HIGH;
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
         if(data_cnt==8)// || data_cnt==fft_len-1-9)
            source_i <= 32767;
      end
   end
   
endmodule