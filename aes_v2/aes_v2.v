module aes_v2(
  input           clk,
  input           rst,
  input  [127:0]  plaintext,
  input  [127:0]  key,
  input  [7:0]    rom_data,
  output [7:0]    rom_addr,
  output [127:0]  ciphertext,
  output          done
);

  // define
  wire [7:0]   w1; 
  wire [7:0]   w2; 
  wire [7:0]   w3; 
  wire [7:0]   w4; 
  wire [7:0]   w5; 
  wire [7:0]   w6; 
  wire [7:0]   w7; 
  wire [7:0]   w8; 
  wire [7:0]   w9; 
  wire [7:0]   w10; 
  wire [7:0]   w11; 
  wire [7:0]   w12; 
  wire [7:0]   w13; 
  wire [7:0]   w14; 
  wire [7:0]   w15;
  wire [7:0]   w16; 
  wire [7:0]   w17; 
  wire [7:0]   w18; 
  wire [7:0]   w19; 
  wire [7:0]   w20; 
  wire [7:0]   w21; 
  wire [7:0]   w22; 
  wire [7:0]   w23; 
  wire [7:0]   w24; 
  wire [7:0]   w25; 
  wire [7:0]   w26; 
  wire [7:0]   w27; 
  wire [7:0]   w28; 
  wire [7:0]   w29; 
  wire [7:0]   w30; 
  wire [7:0]   w31;
  wire [7:0]   w32; 
  wire [7:0]   w33; 
  wire [7:0]   w34; 
  wire [7:0]   w35; 
  wire [7:0]   w36; 
  wire [7:0]   w37; 
  wire [7:0]   w38; 
  wire [7:0]   w39; 
  wire [7:0]   w40; 
  wire [7:0]   w41; 
  wire [7:0]   w42; 
  wire [7:0]   w43; 
  wire [7:0]   w44; 
  wire [7:0]   w45; 
  wire [7:0]   w46; 
  wire [7:0]   w47;
  wire [7:0]   w48; 
  wire [7:0]   w49; 
  wire [7:0]   w50; 
  wire [7:0]   w51; 
  wire [7:0]   w52; 
  wire [7:0]   w53; 
  wire [7:0]   w54; 
  wire [7:0]   w55; 
  wire [7:0]   w56; 
  wire [7:0]   w57; 
  wire [7:0]   w58; 
  wire [7:0]   w59; 
  wire [7:0]   w60; 
  wire [7:0]   w61; 
  wire [7:0]   w62; 
  wire [7:0]   w63;
  wire [7:0]   w64;
  reg  [7:0]   pixel1; 
  reg  [7:0]   pixel2; 
  reg  [7:0]   pixel3; 
  reg  [7:0]   pixel4; 
  reg  [7:0]   pixel5; 
  reg  [7:0]   pixel6; 
  reg  [7:0]   pixel7; 
  reg  [7:0]   pixel8; 
  reg  [7:0]   pixel9; 
  reg  [7:0]   pixel10; 
  reg  [7:0]   pixel11; 
  reg  [7:0]   pixel12; 
  reg  [7:0]   pixel13; 
  reg  [7:0]   pixel14; 
  reg  [7:0]   pixel15; 
  reg  [7:0]   pixel16;
  reg  [7:0]   pixel1_reg; 
  reg  [7:0]   pixel2_reg; 
  reg  [7:0]   pixel3_reg; 
  reg  [7:0]   pixel4_reg; 
  reg  [7:0]   pixel5_reg; 
  reg  [7:0]   pixel6_reg; 
  reg  [7:0]   pixel7_reg; 
  reg  [7:0]   pixel8_reg; 
  reg  [7:0]   pixel9_reg; 
  reg  [7:0]   pixel10_reg; 
  reg  [7:0]   pixel11_reg; 
  reg  [7:0]   pixel12_reg; 
  reg  [7:0]   pixel13_reg; 
  reg  [7:0]   pixel14_reg; 
  reg  [7:0]   pixel15_reg; 
  reg  [7:0]   pixel16_reg;
  reg  [7:0]   key_pixel1; 
  reg  [7:0]   key_pixel2; 
  reg  [7:0]   key_pixel3; 
  reg  [7:0]   key_pixel4; 
  reg  [7:0]   key_pixel5; 
  reg  [7:0]   key_pixel6; 
  reg  [7:0]   key_pixel7; 
  reg  [7:0]   key_pixel8; 
  reg  [7:0]   key_pixel9; 
  reg  [7:0]   key_pixel10; 
  reg  [7:0]   key_pixel11; 
  reg  [7:0]   key_pixel12; 
  reg  [7:0]   key_pixel13; 
  reg  [7:0]   key_pixel14; 
  reg  [7:0]   key_pixel15; 
  reg  [7:0]   key_pixel16;
  reg  [7:0]   key_pixel13_xor_constant;
  reg  [7:0]   next_key_pixel1;
  reg  [7:0]   next_key_pixel2;
  reg  [7:0]   next_key_pixel3;
  reg  [7:0]   next_key_pixel4;
  reg  [7:0]   next_key_pixel5;
  reg  [7:0]   next_key_pixel6;
  reg  [7:0]   next_key_pixel7;
  reg  [7:0]   next_key_pixel8;
  reg  [7:0]   next_key_pixel9;
  reg  [7:0]   next_key_pixel10;
  reg  [7:0]   next_key_pixel11;
  reg  [7:0]   next_key_pixel12;
  reg  [7:0]   next_key_pixel13;
  reg  [7:0]   next_key_pixel14;
  reg  [7:0]   next_key_pixel15;
  reg  [7:0]   next_key_pixel16;
  reg  [7:0]   mix_pixel1; 
  reg  [7:0]   mix_pixel2; 
  reg  [7:0]   mix_pixel3; 
  reg  [7:0]   mix_pixel4; 
  reg  [7:0]   mix_pixel5; 
  reg  [7:0]   mix_pixel6; 
  reg  [7:0]   mix_pixel7; 
  reg  [7:0]   mix_pixel8; 
  reg  [7:0]   mix_pixel9; 
  reg  [7:0]   mix_pixel10; 
  reg  [7:0]   mix_pixel11; 
  reg  [7:0]   mix_pixel12; 
  reg  [7:0]   mix_pixel13; 
  reg  [7:0]   mix_pixel14; 
  reg  [7:0]   mix_pixel15; 
  reg  [7:0]   mix_pixel16;  
  reg  [3:0]   round_count;
  wire [3:0]   round_count_up;
  reg  [4:0]   rom_count;
  wire [4:0]   rom_count_up;
  reg  [127:0] addroundkey_o;
  wire [127:0] addroundkey_round0;
  wire [127:0] addroundkey_round0_o;
  wire [127:0] addroundkey_round0_reg_w;
  wire [127:0] subbytes_o;
  wire [127:0] shiftrows_o;
  reg  [127:0] mixcolumns_o;
  reg  [127:0] plaintext_reg;
  reg  [127:0] key_reg;
  reg  [2:0]   aes_cs;
  reg  [2:0]   aes_ns;
  wire [127:0] state;
  reg  [7:0]   constant;
  reg          done_reg;
  reg  [7:0]   rom_addr_reg;
  reg  [7:0]   key_pixel13_reg;
  reg  [7:0]   key_pixel14_reg;
  reg  [7:0]   key_pixel15_reg;
  reg  [7:0]   key_pixel16_reg;
  reg  [7:0]   key_pixel13_before_rot;
  reg  [7:0]   key_pixel14_before_rot;
  reg  [7:0]   key_pixel15_before_rot;
  reg  [7:0]   key_pixel16_before_rot;
  wire         subbytes_done;
  wire         subword_done;
  wire         round_lt_ten;
  wire         round_gt_or_et_ten;
  wire         final_round;
  //

  // aes state
  parameter INITIAL     = 3'd0;
  parameter ADDROUNDKEY = 3'd1; // ROTWORD
  parameter SUBBYTES    = 3'd2; // SUBWORD
  parameter SHIFTROWS   = 3'd3; // RCON
  parameter MIXCOLUMNS  = 3'd4;
  //

  // logic
  assign addroundkey_round0 = plaintext_reg^key_reg;
  assign done = done_reg;
  assign rom_addr = rom_addr_reg;
  assign ciphertext = state;
  assign round_count_up = round_count+4'd1;
  assign round_lt_ten = (round_count<4'd10);
  assign round_gt_or_et_ten = (round_count>=4'd10);
  assign final_round = (round_count==4'd10&&aes_cs==ADDROUNDKEY);
  assign rom_count_up = rom_count+5'd1;
  assign subbytes_done = (rom_count==5'd18);
  assign subword_done = (aes_cs==SHIFTROWS)?((rom_count==5'd6)?1'b1:1'b0):1'b0;
  assign subbytes_o = {pixel1_reg,pixel2_reg,pixel3_reg,pixel4_reg,pixel5_reg,pixel6_reg,pixel7_reg,pixel8_reg,pixel9_reg,pixel10_reg,pixel11_reg,pixel12_reg,pixel13_reg,pixel14_reg,pixel15_reg,pixel16_reg};
  assign shiftrows_o = {pixel1_reg,pixel6_reg,pixel11_reg,pixel16_reg,pixel5_reg,pixel10_reg,pixel15_reg,pixel4_reg,pixel9_reg,pixel14_reg,pixel3_reg,pixel8_reg,pixel13_reg,pixel2_reg,pixel7_reg,pixel12_reg};
  //


  // aes state transition
  always @(posedge clk) begin
    if (rst) begin
      aes_cs <= INITIAL;
    end else if (done) begin
      aes_cs <= INITIAL;
    end else aes_cs <= aes_ns;
  end

  always @(*) begin
    aes_ns = aes_cs;
      case (aes_cs)
        INITIAL:
          begin
            aes_ns = ADDROUNDKEY;
          end
        ADDROUNDKEY: 
          begin
            if (final_round) begin
              aes_ns = ADDROUNDKEY;
            end else aes_ns = SUBBYTES;
          end
        SUBBYTES: // ROTWORD
          begin
            if (subbytes_done) begin
              aes_ns = SHIFTROWS;
            end else aes_ns = SUBBYTES;
          end
        SHIFTROWS: // SUBWORD
          begin
            if (round_lt_ten) begin
              if (subword_done) begin
                aes_ns = MIXCOLUMNS;
              end else aes_ns = SHIFTROWS;
            end else if (round_gt_or_et_ten) begin
              if (subword_done) begin
                aes_ns = ADDROUNDKEY;
              end else aes_ns = SHIFTROWS;
            end
          end
        MIXCOLUMNS: // RCON
          begin
            aes_ns = ADDROUNDKEY;
          end
      endcase
  end
  //

  // initial value
  always @(negedge clk) begin
    if (rst) begin
      plaintext_reg <= 0;
      key_reg <= 0;
    end else if (aes_cs==INITIAL) begin
      plaintext_reg <= plaintext;
      key_reg <= key;
    end
  end
  //

  // buffer
  genvar i;
  generate for (i=0 ; i<128 ; i=i+1) begin :buffer
    buf buf0(addroundkey_round0_o[i], addroundkey_round0[i]);
  end
  endgenerate
  //

  // keyexpansion
  always @(posedge clk) begin
    if (rst) begin
      key_pixel1  <= 0;
      key_pixel2  <= 0;
      key_pixel3  <= 0;
      key_pixel4  <= 0;
      key_pixel5  <= 0;
      key_pixel6  <= 0;
      key_pixel7  <= 0;
      key_pixel8  <= 0;
      key_pixel9  <= 0;
      key_pixel10 <= 0;
      key_pixel11 <= 0;
      key_pixel12 <= 0;
      key_pixel13 <= 0;
      key_pixel14 <= 0;
      key_pixel15 <= 0;
      key_pixel16 <= 0;
    end else begin  
        case (aes_cs)
          INITIAL:
            begin
              key_pixel1  <= key[127:120];
              key_pixel2  <= key[119:112];
              key_pixel3  <= key[111:104];
              key_pixel4  <= key[103:96];
              key_pixel5  <= key[95:88];
              key_pixel6  <= key[87:80];
              key_pixel7  <= key[79:72];
              key_pixel8  <= key[71:64];
              key_pixel9  <= key[63:56];
              key_pixel10 <= key[55:48];
              key_pixel11 <= key[47:40];
              key_pixel12 <= key[39:32];
              key_pixel13 <= key[31:24];
              key_pixel14 <= key[23:16];
              key_pixel15 <= key[15:8];
              key_pixel16 <= key[7:0];
            end
          ADDROUNDKEY: 
            begin
              if (round_gt_or_et_ten) begin
                key_pixel1  <= next_key_pixel1;
                key_pixel2  <= next_key_pixel2;
                key_pixel3  <= next_key_pixel3;
                key_pixel4  <= next_key_pixel4;
                key_pixel5  <= next_key_pixel5;
                key_pixel6  <= next_key_pixel6;
                key_pixel7  <= next_key_pixel7;
                key_pixel8  <= next_key_pixel8;
                key_pixel9  <= next_key_pixel9;
                key_pixel10 <= next_key_pixel10;
                key_pixel11 <= next_key_pixel11;
                key_pixel12 <= next_key_pixel12;
                key_pixel13 <= next_key_pixel13;
                key_pixel14 <= next_key_pixel14;
                key_pixel15 <= next_key_pixel15;
                key_pixel16 <= next_key_pixel16;
              end
            end
          SUBBYTES: // ROTWORD
            begin
              if (subbytes_done) begin
                key_pixel13            <= key_pixel14;
                key_pixel14            <= key_pixel15;
                key_pixel15            <= key_pixel16;
                key_pixel16            <= key_pixel13;
                key_pixel13_before_rot <= key_pixel13;
                key_pixel14_before_rot <= key_pixel14;
                key_pixel15_before_rot <= key_pixel15;
                key_pixel16_before_rot <= key_pixel16;
              end
            end
          SHIFTROWS: // SUBWORD
            begin
              if (subword_done) begin
                key_pixel13 <= key_pixel13_reg;
                key_pixel14 <= key_pixel14_reg;
                key_pixel15 <= key_pixel15_reg;
                key_pixel16 <= key_pixel16_reg;
              end
            end
          MIXCOLUMNS: // RCON
            begin
              key_pixel1  <= next_key_pixel1;
              key_pixel2  <= next_key_pixel2;
              key_pixel3  <= next_key_pixel3;
              key_pixel4  <= next_key_pixel4;
              key_pixel5  <= next_key_pixel5;
              key_pixel6  <= next_key_pixel6;
              key_pixel7  <= next_key_pixel7;
              key_pixel8  <= next_key_pixel8;
              key_pixel9  <= next_key_pixel9;
              key_pixel10 <= next_key_pixel10;
              key_pixel11 <= next_key_pixel11;
              key_pixel12 <= next_key_pixel12;
              key_pixel13 <= next_key_pixel13;
              key_pixel14 <= next_key_pixel14;
              key_pixel15 <= next_key_pixel15;
              key_pixel16 <= next_key_pixel16;
            end
        endcase
    end
  end
  

  // rcon
  always @(*) begin
    key_pixel13_xor_constant = 0;
    next_key_pixel1  = 0;
    next_key_pixel2  = 0;
    next_key_pixel3  = 0;
    next_key_pixel4  = 0;
    next_key_pixel5  = 0;
    next_key_pixel6  = 0;
    next_key_pixel7  = 0;
    next_key_pixel8  = 0;
    next_key_pixel9  = 0;
    next_key_pixel10 = 0;
    next_key_pixel11 = 0;
    next_key_pixel12 = 0;
    next_key_pixel13 = 0;
    next_key_pixel14 = 0;
    next_key_pixel15 = 0;
    next_key_pixel16 = 0;
      if (aes_cs==MIXCOLUMNS||(round_gt_or_et_ten&&aes_cs==ADDROUNDKEY)) begin
        key_pixel13_xor_constant = key_pixel13 ^ constant;
        next_key_pixel1          = key_pixel1 ^ key_pixel13_xor_constant;
        next_key_pixel2          = key_pixel2 ^ key_pixel14;
        next_key_pixel3          = key_pixel3 ^ key_pixel15;
        next_key_pixel4          = key_pixel4 ^ key_pixel16;
        next_key_pixel5          = key_pixel5 ^ next_key_pixel1;
        next_key_pixel6          = key_pixel6 ^ next_key_pixel2;
        next_key_pixel7          = key_pixel7 ^ next_key_pixel3;
        next_key_pixel8          = key_pixel8 ^ next_key_pixel4;
        next_key_pixel9          = key_pixel9 ^ next_key_pixel5;
        next_key_pixel10         = key_pixel10 ^ next_key_pixel6;
        next_key_pixel11         = key_pixel11 ^ next_key_pixel7;
        next_key_pixel12         = key_pixel12 ^ next_key_pixel8;
        next_key_pixel13         = key_pixel13_before_rot ^ next_key_pixel9;
        next_key_pixel14         = key_pixel14_before_rot ^ next_key_pixel10;
        next_key_pixel15         = key_pixel15_before_rot ^ next_key_pixel11;
        next_key_pixel16         = key_pixel16_before_rot ^ next_key_pixel12;
      end
  end
  //
  

  // round counter
  always @(posedge clk) begin
    if (rst) begin
      round_count <= 4'd0;
    end else if (done) begin
      round_count <= 4'd0;
    end else if (aes_cs==ADDROUNDKEY) begin
      round_count <= round_count_up;
    end
  end
  //

  // rom counter
  always @(posedge clk) begin
    if (rst) begin
      rom_count <= 5'd0;
    end else if (done||subbytes_done||subword_done) begin
      rom_count <= 5'd0;
    end else if (aes_cs==SUBBYTES||aes_cs==SHIFTROWS) begin
      rom_count <= rom_count_up;
    end else rom_count <= 5'd0;
  end
  

  // addroundkey
  always @(*) begin
    addroundkey_o = 128'd0;
    if (aes_cs==ADDROUNDKEY&&(!final_round)) begin
      addroundkey_o = state^{key_pixel1,key_pixel2,key_pixel3,key_pixel4,key_pixel5,key_pixel6,key_pixel7,key_pixel8,key_pixel9,key_pixel10,key_pixel11,key_pixel12,key_pixel13,key_pixel14,key_pixel15,key_pixel16};
    end else if (final_round) begin
      addroundkey_o = state^128'd0;
    end else if (aes_cs==ADDROUNDKEY&&round_count==4'd11) begin
      addroundkey_o = state^{key_pixel1,key_pixel2,key_pixel3,key_pixel4,key_pixel5,key_pixel6,key_pixel7,key_pixel8,key_pixel9,key_pixel10,key_pixel11,key_pixel12,key_pixel13,key_pixel14,key_pixel15,key_pixel16};
    end
  end
  //

  // sbox
  always @(posedge clk) begin
    if (rst) begin
      rom_addr_reg <= 8'd0;
      pixel1_reg   <= 8'd0;
      pixel2_reg   <= 8'd0;
      pixel3_reg   <= 8'd0;
      pixel4_reg   <= 8'd0;
      pixel5_reg   <= 8'd0;
      pixel6_reg   <= 8'd0;
      pixel7_reg   <= 8'd0;
      pixel8_reg   <= 8'd0;
      pixel9_reg   <= 8'd0;
      pixel10_reg  <= 8'd0;
      pixel11_reg  <= 8'd0;
      pixel12_reg  <= 8'd0;
      pixel13_reg  <= 8'd0;
      pixel14_reg  <= 8'd0;
      pixel15_reg  <= 8'd0;
      pixel16_reg  <= 8'd0;
      key_pixel13_reg <= 8'd0;
      key_pixel14_reg <= 8'd0;
      key_pixel15_reg <= 8'd0;
      key_pixel16_reg <= 8'd0;
    end else if (aes_cs==SUBBYTES) begin
      case (rom_count)
        5'd0: 
          begin
            rom_addr_reg <= pixel1;
          end
        5'd1: 
          begin
            rom_addr_reg <= pixel2;
          end
        5'd2: 
          begin
            pixel1_reg <= rom_data;
            rom_addr_reg <= pixel3;
          end
        5'd3: 
          begin
            pixel2_reg <= rom_data;
            rom_addr_reg <= pixel4;
          end
        5'd4: 
          begin
            pixel3_reg <= rom_data;
            rom_addr_reg <= pixel5;
          end
        5'd5: 
          begin
            pixel4_reg <= rom_data;
            rom_addr_reg <= pixel6;
          end
        5'd6: 
          begin
            pixel5_reg <= rom_data;
            rom_addr_reg <= pixel7;
          end
        5'd7: 
          begin
            pixel6_reg <= rom_data;
            rom_addr_reg <= pixel8;
          end
        5'd8: 
          begin
            pixel7_reg <= rom_data;
            rom_addr_reg <= pixel9;
          end
        5'd9: 
          begin
            pixel8_reg <= rom_data;
            rom_addr_reg <= pixel10;
          end
        5'd10: 
          begin
            pixel9_reg <= rom_data;
            rom_addr_reg <= pixel11;
          end
        5'd11: 
          begin
            pixel10_reg <= rom_data;
            rom_addr_reg <= pixel12;
          end
        5'd12: 
          begin
            pixel11_reg <= rom_data;
            rom_addr_reg <= pixel13;
          end
        5'd13: 
          begin
            pixel12_reg <= rom_data;
            rom_addr_reg <= pixel14;
          end
        5'd14: 
          begin
            pixel13_reg <= rom_data;
            rom_addr_reg <= pixel15;
          end
        5'd15: 
          begin
            pixel14_reg <= rom_data;
            rom_addr_reg <= pixel16;
          end
        5'd16: 
          begin
            pixel15_reg <= rom_data;
          end
        5'd17: 
          begin
            pixel16_reg <= rom_data;
          end
      endcase
    end else if (aes_cs==SHIFTROWS) begin
      case (rom_count)
        5'd0: 
          begin
            rom_addr_reg <= key_pixel13;
          end
        5'd1: 
          begin
            rom_addr_reg <= key_pixel14;
          end
        5'd2: 
          begin
            key_pixel13_reg <= rom_data;
            rom_addr_reg <= key_pixel15;
          end
        5'd3: 
          begin
            key_pixel14_reg <= rom_data;
            rom_addr_reg <= key_pixel16;
          end
        5'd4: 
          begin
            key_pixel15_reg <= rom_data;
          end
        5'd5: 
          begin
            key_pixel16_reg <= rom_data;
          end
      endcase
    end
  end

  // state pixel
  always @(*) begin
    pixel1  = 0;
    pixel2  = 0;
    pixel3  = 0;
    pixel4  = 0;
    pixel5  = 0;
    pixel6  = 0;
    pixel7  = 0;
    pixel8  = 0;
    pixel9  = 0;
    pixel10 = 0;
    pixel11 = 0;
    pixel12 = 0;
    pixel13 = 0;
    pixel14 = 0;
    pixel15 = 0;
    pixel16 = 0;
      case (aes_cs)
        INITIAL: // 0
          begin

          end
        ADDROUNDKEY: // 1
          begin
            
          end
        SUBBYTES: // 2
          begin
            pixel1  = state[127:120];
            pixel2  = state[119:112];
            pixel3  = state[111:104];
            pixel4  = state[103:96];
            pixel5  = state[95:88];
            pixel6  = state[87:80];
            pixel7  = state[79:72];
            pixel8  = state[71:64];
            pixel9  = state[63:56];
            pixel10 = state[55:48];
            pixel11 = state[47:40];
            pixel12 = state[39:32];
            pixel13 = state[31:24];
            pixel14 = state[23:16];
            pixel15 = state[15:8];
            pixel16 = state[7:0];
          end
        SHIFTROWS: // 3
          begin

          end
        MIXCOLUMNS: // 4
          begin
            pixel1  = state[127:120];
            pixel2  = state[119:112];
            pixel3  = state[111:104];
            pixel4  = state[103:96];
            pixel5  = state[95:88];
            pixel6  = state[87:80];
            pixel7  = state[79:72];
            pixel8  = state[71:64];
            pixel9  = state[63:56];
            pixel10 = state[55:48];
            pixel11 = state[47:40];
            pixel12 = state[39:32];
            pixel13 = state[31:24];
            pixel14 = state[23:16];
            pixel15 = state[15:8];
            pixel16 = state[7:0];
          end
      endcase
  end
  //

  // constant
  always @(*) begin
    constant=8'h0;
      case (round_count)
        4'd1:constant=8'h01;
        4'd2:constant=8'h02;
        4'd3:constant=8'h04;
        4'd4:constant=8'h08;
        4'd5:constant=8'h10;
        4'd6:constant=8'h20;
        4'd7:constant=8'h40;
        4'd8:constant=8'h80;
        4'd9:constant=8'h1b;
        4'd10:constant=8'h36;
      endcase
  end
  //

  // mixcolumns logic
  assign w1 = (aes_cs==MIXCOLUMNS) ? ((pixel1[7]==1)?(pixel1<<1)^8'b0001_1011:pixel1<<1) : 8'd0;
  assign w2 = (aes_cs==MIXCOLUMNS) ? ((pixel2[7]==1)?((pixel2<<1)^pixel2)^8'b0001_1011:(pixel2<<1)^pixel2) : 8'd0;
  assign w3 = (aes_cs==MIXCOLUMNS) ? pixel3 :8'd0;
  assign w4 = (aes_cs==MIXCOLUMNS) ? pixel4 :8'd0;

  assign w5 = (aes_cs==MIXCOLUMNS) ? pixel1 :8'd0;
  assign w6 = (aes_cs==MIXCOLUMNS) ? ((pixel2[7]==1)?(pixel2<<1)^8'b0001_1011:pixel2<<1) : 8'd0;
  assign w7 = (aes_cs==MIXCOLUMNS) ? ((pixel3[7]==1)?((pixel3<<1)^pixel3)^8'b0001_1011:(pixel3<<1)^pixel3) : 8'd0;
  assign w8 = (aes_cs==MIXCOLUMNS) ? pixel4 :8'd0;

  assign w9  = (aes_cs==MIXCOLUMNS) ? pixel1 :8'd0;
  assign w10 = (aes_cs==MIXCOLUMNS) ? pixel2 :8'd0;
  assign w11 = (aes_cs==MIXCOLUMNS) ? ((pixel3[7]==1)?(pixel3<<1)^8'b0001_1011:pixel3<<1) : 8'd0;
  assign w12 = (aes_cs==MIXCOLUMNS) ? ((pixel4[7]==1)?((pixel4<<1)^pixel4)^8'b0001_1011:(pixel4<<1)^pixel4) : 8'd0;

  assign w13 = (aes_cs==MIXCOLUMNS) ? ((pixel1[7]==1)?((pixel1<<1)^pixel1)^8'b0001_1011:(pixel1<<1)^pixel1) : 8'd0;
  assign w14 = (aes_cs==MIXCOLUMNS) ? pixel2 :8'd0;
  assign w15 = (aes_cs==MIXCOLUMNS) ? pixel3 :8'd0;
  assign w16 = (aes_cs==MIXCOLUMNS) ? ((pixel4[7]==1)?(pixel4<<1)^8'b0001_1011:pixel4<<1) : 8'd0;

  assign w17 = (aes_cs==MIXCOLUMNS) ? ((pixel5[7]==1)?(pixel5<<1)^8'b0001_1011:pixel5<<1) : 8'd0;
  assign w18 = (aes_cs==MIXCOLUMNS) ? ((pixel6[7]==1)?((pixel6<<1)^pixel6)^8'b0001_1011:(pixel6<<1)^pixel6) : 8'd0;
  assign w19 = (aes_cs==MIXCOLUMNS) ? pixel7 :8'd0;
  assign w20 = (aes_cs==MIXCOLUMNS) ? pixel8 :8'd0;

  assign w21 = (aes_cs==MIXCOLUMNS) ? pixel5 :8'd0;
  assign w22 = (aes_cs==MIXCOLUMNS) ? ((pixel6[7]==1)?(pixel6<<1)^8'b0001_1011:pixel6<<1) : 8'd0;
  assign w23 = (aes_cs==MIXCOLUMNS) ? ((pixel7[7]==1)?((pixel7<<1)^pixel7)^8'b0001_1011:(pixel7<<1)^pixel7) : 8'd0;
  assign w24 = (aes_cs==MIXCOLUMNS) ? pixel8 :8'd0;

  assign w25 = (aes_cs==MIXCOLUMNS) ? pixel5 :8'd0;
  assign w26 = (aes_cs==MIXCOLUMNS) ? pixel6 :8'd0;
  assign w27 = (aes_cs==MIXCOLUMNS) ? ((pixel7[7]==1)?(pixel7<<1)^8'b0001_1011:pixel7<<1) : 8'd0;
  assign w28 = (aes_cs==MIXCOLUMNS) ? ((pixel8[7]==1)?((pixel8<<1)^pixel8)^8'b0001_1011:(pixel8<<1)^pixel8) : 8'd0;

  assign w29 = (aes_cs==MIXCOLUMNS) ? ((pixel5[7]==1)?((pixel5<<1)^pixel5)^8'b0001_1011:(pixel5<<1)^pixel5) : 8'd0;
  assign w30 = (aes_cs==MIXCOLUMNS) ? pixel6:8'd0;
  assign w31 = (aes_cs==MIXCOLUMNS) ? pixel7:8'd0;
  assign w32 = (aes_cs==MIXCOLUMNS) ? ((pixel8[7]==1)?(pixel8<<1)^8'b0001_1011:pixel8<<1) : 8'd0;

  assign w33 = (aes_cs==MIXCOLUMNS) ? ((pixel9[7]==1)?(pixel9<<1)^8'b0001_1011:pixel9<<1) : 8'd0;
  assign w34 = (aes_cs==MIXCOLUMNS) ? ((pixel10[7]==1)?((pixel10<<1)^pixel10)^8'b0001_1011:(pixel10<<1)^pixel10) : 8'd0;
  assign w35 = (aes_cs==MIXCOLUMNS) ? pixel11:8'd0;
  assign w36 = (aes_cs==MIXCOLUMNS) ? pixel12:8'd0;

  assign w37 = (aes_cs==MIXCOLUMNS) ? pixel9:8'd0;
  assign w38 = (aes_cs==MIXCOLUMNS) ? ((pixel10[7]==1)?(pixel10<<1)^8'b0001_1011:pixel10<<1) : 8'd0;
  assign w39 = (aes_cs==MIXCOLUMNS) ? ((pixel11[7]==1)?((pixel11<<1)^pixel11)^8'b0001_1011:(pixel11<<1)^pixel11) : 8'd0;
  assign w40 = (aes_cs==MIXCOLUMNS) ? pixel12:8'd0;

  assign w41 = (aes_cs==MIXCOLUMNS) ? pixel9:8'd0;
  assign w42 = (aes_cs==MIXCOLUMNS) ? pixel10:8'd0;
  assign w43 = (aes_cs==MIXCOLUMNS) ? ((pixel11[7]==1)?(pixel11<<1)^8'b0001_1011:pixel11<<1) : 8'd0;
  assign w44 = (aes_cs==MIXCOLUMNS) ? ((pixel12[7]==1)?((pixel12<<1)^pixel12)^8'b0001_1011:(pixel12<<1)^pixel12) : 8'd0;

  assign w45 = (aes_cs==MIXCOLUMNS) ? ((pixel9[7]==1)?((pixel9<<1)^pixel9)^8'b0001_1011:(pixel9<<1)^pixel9) : 8'd0;
  assign w46 = (aes_cs==MIXCOLUMNS) ? pixel10:8'd0;
  assign w47 = (aes_cs==MIXCOLUMNS) ? pixel11:8'd0;
  assign w48 = (aes_cs==MIXCOLUMNS) ? ((pixel12[7]==1)?(pixel12<<1)^8'b0001_1011:pixel12<<1) : 8'd0;

  assign w49 = (aes_cs==MIXCOLUMNS) ? ((pixel13[7]==1)?(pixel13<<1)^8'b0001_1011:pixel13<<1) : 8'd0;
  assign w50 = (aes_cs==MIXCOLUMNS) ? ((pixel14[7]==1)?((pixel14<<1)^pixel14)^8'b0001_1011:(pixel14<<1)^pixel14) : 8'd0;
  assign w51 = (aes_cs==MIXCOLUMNS) ? pixel15:8'd0;
  assign w52 = (aes_cs==MIXCOLUMNS) ? pixel16:8'd0;

  assign w53 = (aes_cs==MIXCOLUMNS) ? pixel13:8'd0;
  assign w54 = (aes_cs==MIXCOLUMNS) ? ((pixel14[7]==1)?(pixel14<<1)^8'b0001_1011:pixel14<<1) : 8'd0;
  assign w55 = (aes_cs==MIXCOLUMNS) ? ((pixel15[7]==1)?((pixel15<<1)^pixel15)^8'b0001_1011:(pixel15<<1)^pixel15) : 8'd0;
  assign w56 = (aes_cs==MIXCOLUMNS) ? pixel16:8'd0;

  assign w57 = (aes_cs==MIXCOLUMNS) ? pixel13:8'd0;
  assign w58 = (aes_cs==MIXCOLUMNS) ? pixel14:8'd0;
  assign w59 = (aes_cs==MIXCOLUMNS) ? ((pixel15[7]==1)?(pixel15<<1)^8'b0001_1011:pixel15<<1) : 8'd0;
  assign w60 = (aes_cs==MIXCOLUMNS) ? ((pixel16[7]==1)?((pixel16<<1)^pixel16)^8'b0001_1011:(pixel16<<1)^pixel16) : 8'd0;

  assign w61 = (aes_cs==MIXCOLUMNS) ? ((pixel13[7]==1)?((pixel13<<1)^pixel13)^8'b0001_1011:(pixel13<<1)^pixel13) : 8'd0;
  assign w62 = (aes_cs==MIXCOLUMNS) ? pixel14:8'd0;
  assign w63 = (aes_cs==MIXCOLUMNS) ? pixel15:8'd0;
  assign w64 = (aes_cs==MIXCOLUMNS) ? ((pixel16[7]==1)?(pixel16<<1)^8'b0001_1011:pixel16<<1) : 8'd0;

  always @(*) begin
    mix_pixel1   = 0;
    mix_pixel2   = 0;
    mix_pixel3   = 0;
    mix_pixel4   = 0;
    mix_pixel5   = 0;
    mix_pixel6   = 0;
    mix_pixel7   = 0;
    mix_pixel8   = 0;
    mix_pixel9   = 0;
    mix_pixel10  = 0;
    mix_pixel11  = 0;
    mix_pixel12  = 0;
    mix_pixel13  = 0;
    mix_pixel14  = 0;
    mix_pixel15  = 0;
    mix_pixel16  = 0;
    mixcolumns_o = 0;
      if (aes_cs==MIXCOLUMNS) begin
        mix_pixel1  = (w1^w2)^(w3^w4);
        mix_pixel2  = (w5^w6)^(w7^w8);
        mix_pixel3  = (w9^w10)^(w11^w12);
        mix_pixel4  = (w13^w14)^(w15^w16);
        mix_pixel5  = (w17^w18)^(w19^w20);
        mix_pixel6  = (w21^w22)^(w23^w24);
        mix_pixel7  = (w25^w26)^(w27^w28);
        mix_pixel8  = (w29^w30)^(w31^w32);
        mix_pixel9  = (w33^w34)^(w35^w36);
        mix_pixel10 = (w37^w38)^(w39^w40);
        mix_pixel11 = (w41^w42)^(w43^w44);
        mix_pixel12 = (w45^w46)^(w47^w48);
        mix_pixel13 = (w49^w50)^(w51^w52);
        mix_pixel14 = (w53^w54)^(w55^w56);
        mix_pixel15 = (w57^w58)^(w59^w60);
        mix_pixel16 = (w61^w62)^(w63^w64);
        mixcolumns_o = {mix_pixel1,mix_pixel2,mix_pixel3,mix_pixel4,mix_pixel5,mix_pixel6,mix_pixel7,mix_pixel8,mix_pixel9,mix_pixel10,mix_pixel11,mix_pixel12,mix_pixel13,mix_pixel14,mix_pixel15,mix_pixel16};
      end
  end
  //

  // aes_o
  aes_o aes_output (  
    .clk(clk), 
    .rst(rst), 
    .aes_cs(aes_cs), 
    .addroundkey_round0(addroundkey_round0_o), 
    .addroundkey_o(addroundkey_o),
    .subbytes_o(subbytes_o),
    .shiftrows_o(shiftrows_o),
    .mixcolumns_o(mixcolumns_o),
    .round_count(round_count),
    .subbytes_done(subbytes_done),
    .done(done),
    .addroundkey_round0_reg(addroundkey_round0_reg_w),
    .state(state)
  );
  //
  
  // done
  always @(posedge clk) begin
    if (rst) begin
      done_reg <= 1'd0;
    end else if (done) begin
      done_reg <= 1'd0;
    end else if (round_count==4'd12) begin
      done_reg <= 1'd1;
    end
  end
  //

endmodule

module aes_o (
  input              clk,
  input              rst,
  input      [2:0]   aes_cs,
  input      [127:0] addroundkey_round0,
  input      [127:0] addroundkey_o,
  input      [127:0] subbytes_o,
  input      [127:0] shiftrows_o,
  input      [127:0] mixcolumns_o,
  input      [3:0]   round_count,
  input              subbytes_done,
  input              done,
  output reg [127:0] addroundkey_round0_reg,
  output reg [127:0] state
);

  // aes state
  parameter INITIAL     = 3'd0;
  parameter ADDROUNDKEY = 3'd1; // ROTWORD
  parameter SUBBYTES    = 3'd2; // SUBWORD
  parameter SHIFTROWS   = 3'd3; // RCON
  parameter MIXCOLUMNS  = 3'd4;
  //
  
  // fsm output signal
  always @(posedge clk) begin
    if (rst) begin
      state <= 4'd0;
    end else if (done) begin
      state <= 4'd0;
    end else begin
      case (aes_cs)
        INITIAL:
          begin
            addroundkey_round0_reg <= addroundkey_round0;
          end
        ADDROUNDKEY:
          begin
            if (round_count==4'd0) begin
              state <= addroundkey_round0_reg;
            end else state <= addroundkey_o;
          end
        SUBBYTES:
          begin
            if (subbytes_done) begin
              state <= subbytes_o; 
            end
          end
        SHIFTROWS:
          begin
            state <= shiftrows_o;
          end
        MIXCOLUMNS:
          begin   
            state <= mixcolumns_o;
          end 
      endcase
    end
  end
  //

endmodule