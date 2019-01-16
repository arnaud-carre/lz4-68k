;---------------------------------------------------------
;
;	LZ4 block 68k depacker
;	Written by Arnaud Carré (leonard/oxygene)
;	LZ4 by Yann Collet ( https://lz4.github.io/lz4/ )
;
;---------------------------------------------------------

; Normal version: depacker is 180 bytes
;
; input: a0.l : packed buffer
;		 a1.l : output buffer
;		 d0.l : LZ4 packed block size (in bytes)
;
; output: none
;

lz4_depack:
			lea		0(a0,d0.l),a4	; packed buffer end

			moveq	#0,d0
			moveq	#0,d2
			moveq	#0,d3
			moveq	#15,d4
			bra.s	.tokenLoop
			
.lenOffset:	movep.w	1(a0),d3	; read 16bits offset, little endian, unaligned
			move.b	(a0),d3
			addq.w	#2,a0
			movea.l	a1,a3
			sub.l	d3,a3
			moveq	#$f,d1
			and.w	d0,d1
			cmp.b	d4,d1
			bne.s	.small

.readLen0:	move.b	(a0)+,d2
			add.l	d2,d1
			not.b	d2
			beq.s	.readLen0

			addq.l	#4,d1
.copy:		move.b	(a3)+,(a1)+
			subq.l	#1,d1
			bne.s	.copy
			bra		.tokenLoop
			
.small:		add.w	d1,d1
			neg.w	d1
			jmp		.copys(pc,d1.w)
			repeat	15
			{
				move.b	(a3)+,(a1)+
			}
.copys:
			move.b	(a3)+,(a1)+
			move.b	(a3)+,(a1)+
			move.b	(a3)+,(a1)+
			move.b	(a3)+,(a1)+
			
.tokenLoop:	move.b	(a0)+,d0
			move.l	d0,d1
			lsr.b	#4,d1
			beq.s	.lenOffset
			cmp.b	d4,d1
			beq.s	.readLen1

.litcopys:	add.w	d1,d1
			neg.w	d1
			jmp		.copys2(pc,d1.w)
			repeat	15
			{
				move.b	(a0)+,(a1)+
			}
.copys2:
			cmpa.l	a0,a4
			bne		.lenOffset
			rts
						
.readLen1:	move.b	(a0)+,d2
			add.l	d2,d1
			not.b	d2
			beq.s	.readLen1

.litcopy:	move.b	(a0)+,(a1)+
			subq.l	#1,d1
			bne.s	.litcopy

			; end test is always done just after literals
			cmpa.l	a0,a4
			bne		.lenOffset
			
.over:		rts						; end

