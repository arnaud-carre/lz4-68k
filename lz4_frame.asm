;---------------------------------------------------------
;
;	LZ4 Frame 68k depacker
;	Written by Arnaud Carré ( @leonard_coder )
;	https://github.com/arnaud-carre/lz4-68k
;
;	LZ4 technology by Yann Collet ( https://lz4.github.io/lz4/ )
;	LZ4 frame description: https://github.com/lz4/lz4/blob/master/doc/lz4_Frame_format.md
;
;---------------------------------------------------------

; input: a0.l : LZ4 frame addr ( 16bits aligned )
;		 a1.l : output buffer
; output: none
;
; Depack data produced by LZ4.exe command line:
; 	lz4.exe -9 --no-frame-crc <input_file> <output_file>
;

lz4_frame_depack:
		cmpi.l	#$04224d18,(a0)+	; LZ4 frame MagicNb
		bne.s	lz4_frame_error

		move.b	(a0),d0
		andi.b	#%11001001,d0		; check version, no depacked size, and no DictID
		cmpi.b	#%01000000,d0
		bne.s	lz4_frame_error

		; read 32bits block size without movep (little endian)
		move.b	4(a0),d0
		swap	d0
		move.b	6(a0),d0
		lsl.l	#8,d0
		move.b	5(a0),d0
		swap	d0
		move.b	3(a0),d0
		lea		7(a0),a0			; skip LZ4 block header + packed data size

		bra.s	lz4_depack

lz4_frame_error:
		illegal
		
		include "lz4_smallest.asm"
;		include "lz4_normal.asm"
;		include "lz4_fastest.asm"
