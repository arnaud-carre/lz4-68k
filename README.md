# lz4-68k
Three versions of LZ4 decoders for 68k processors. 

Written by Arnaud Carré ( @leonard_coder )

LZ4 technology by Yann Collet ( https://lz4.github.io/lz4/ )

The fastest version use 3722 bytes and is suited for CPU without instruction cache ( 68000 )
Prefer lz4_normal.asm for cache instruction CPU ( >= 68020 )

If you're using LZ77 decoder in your demo, you can switch to this for sure. LZ4 has better packing ratio than LZ77 and it depacks faster

| source code | decoder size | speed factor |
|-|--------------|--------------|
| lz4_smallest.asm | 76 bytes | x 1.0 |
| lz4_normal.asm | 180 bytes | x 1.53 |
| lz4_fastest.asm | 3722 bytes | x 2.36 |

Speed factor is measured on ATARI ST by depacking a 167KiB unpacked demo file (packed in 105KiB). 

Measured on the same machine, lz4_fastest.asm is 6.81 times faster than ARJ and 4.45 times faster than UPX ( please note packing ratio is not as good as ARJ or UPX )
