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
#include <stddef.h>
#include <stdint.h>

// Tiny C Lz4-block depacker. Returns depacked block size.
// Warning: the LZ4 block should only contain valid data!
int	ymLz4Unpack(uint8_t* dst, const uint8_t* src, size_t srcSize);
