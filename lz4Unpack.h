/*---------------------------------------------------------
;
;	LZ4 block tiny C depacker
;	Written by Arnaud Carré ( @leonard_coder )
;	https://github.com/arnaud-carre/lz4-68k
;
;	LZ4 technology by Yann Collet ( https://lz4.github.io/lz4/ )
;
;---------------------------------------------------------*/
#pragma once
#include <stdint.h>

// Tiny C Lz4-block depacker. Returns depacked block size.
// Warning 1: This depacks a row LZ4 data block, without header. Use lz4FrameUnpack to depack a frame with header
// Warning 2: the LZ4 block should only contain valid data!
int	lz4BlockUnpack(uint8_t* dst, const uint8_t* src, uint32_t srcSize);

// Tiny C Lz4-frame depacker (lz4 frame header + lz4 block)
// Can directly binary file produced by "lz4.exe -9 --no-frame-crc <input_file> <output_file>"
// Returns depacked block size, or -1 if non supported frame header
// Warning: the LZ4 block should only contain valid data!
int	lz4FrameUnpack(uint8_t* dst, const uint8_t* src);
