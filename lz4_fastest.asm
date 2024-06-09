;---------------------------------------------------------
;
;	LZ4 block 68k fast depacker
;	Written by Arnaud Carré ( @leonard_coder )
;	https://github.com/arnaud-carre/lz4-68k
;
;	LZ4 technology by Yann Collet ( https://lz4.github.io/lz4/ )
;
;---------------------------------------------------------

; Fastest version: 3722 bytes ( 2.36 times faster than lz4_smallest.asm )
;
; input: a0.l : packed buffer
;		 a1.l : output buffer
;		 d0.l : LZ4 packed block size (in bytes)
;
; output: none
;

lz4_depack:
			lea		0(a0,d0.l),a4	; packed buffer end
			moveq	#0,d1
			moveq	#0,d2
			moveq	#0,d3
			moveq	#16,d7

;-------------------------------------------------------------------			
;		
; this part is generated
;
;-------------------------------------------------------------------			
		

		lea		lz4jmp(pc),a3
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts0:	rts

sl_sm0:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts1
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts1:	rts

sl_sm1:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts2
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts2:	rts

sl_sm2:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts3
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts3:	rts

sl_sm3:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts4
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts4:	rts

sl_sm4:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts5
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts5:	rts

sl_sm5:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts6
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts6:	rts

sl_sm6:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts7
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts7:	rts

sl_sm7:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts8
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts8:	rts

sl_sm8:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts9
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts9:	rts

sl_sm9:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts10
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts10:	rts

sl_sm10:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts11
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts11:	rts

sl_sm11:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts12
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts12:	rts

sl_sm12:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts13
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts13:	rts

sl_sm13:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts14
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts14:	rts

sl_sm14:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts15
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts15:	rts

sl_lm:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		cmpa.l	a0,a4
		beq.s	lz4Rts16
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		moveq	#15+4,d1
.cl0:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl0
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop1(pc,d5.w)
.tloop1:
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
.eloop1:	sub.l	d7,d1
		bpl.s	.tloop1
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts16:	rts

ll_sm0:
		moveq	#15,d1
.cl2:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl2
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop3(pc,d5.w)
.tloop3:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop3:	sub.l	d7,d1
		bpl.s	.tloop3
		cmpa.l	a0,a4
		beq.s	lz4Rts17
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts17:	rts

ll_sm1:
		moveq	#15,d1
.cl4:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl4
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop5(pc,d5.w)
.tloop5:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop5:	sub.l	d7,d1
		bpl.s	.tloop5
		cmpa.l	a0,a4
		beq.s	lz4Rts18
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts18:	rts

ll_sm2:
		moveq	#15,d1
.cl6:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl6
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop7(pc,d5.w)
.tloop7:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop7:	sub.l	d7,d1
		bpl.s	.tloop7
		cmpa.l	a0,a4
		beq.s	lz4Rts19
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts19:	rts

ll_sm3:
		moveq	#15,d1
.cl8:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl8
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop9(pc,d5.w)
.tloop9:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop9:	sub.l	d7,d1
		bpl.s	.tloop9
		cmpa.l	a0,a4
		beq.s	lz4Rts20
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts20:	rts

ll_sm4:
		moveq	#15,d1
.cl10:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl10
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop11(pc,d5.w)
.tloop11:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop11:	sub.l	d7,d1
		bpl.s	.tloop11
		cmpa.l	a0,a4
		beq.s	lz4Rts21
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts21:	rts

ll_sm5:
		moveq	#15,d1
.cl12:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl12
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop13(pc,d5.w)
.tloop13:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop13:	sub.l	d7,d1
		bpl.s	.tloop13
		cmpa.l	a0,a4
		beq.s	lz4Rts22
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts22:	rts

ll_sm6:
		moveq	#15,d1
.cl14:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl14
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop15(pc,d5.w)
.tloop15:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop15:	sub.l	d7,d1
		bpl.s	.tloop15
		cmpa.l	a0,a4
		beq.s	lz4Rts23
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts23:	rts

ll_sm7:
		moveq	#15,d1
.cl16:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl16
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop17(pc,d5.w)
.tloop17:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop17:	sub.l	d7,d1
		bpl.s	.tloop17
		cmpa.l	a0,a4
		beq.s	lz4Rts24
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts24:	rts

ll_sm8:
		moveq	#15,d1
.cl18:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl18
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop19(pc,d5.w)
.tloop19:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop19:	sub.l	d7,d1
		bpl.s	.tloop19
		cmpa.l	a0,a4
		beq.s	lz4Rts25
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts25:	rts

ll_sm9:
		moveq	#15,d1
.cl20:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl20
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop21(pc,d5.w)
.tloop21:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop21:	sub.l	d7,d1
		bpl.s	.tloop21
		cmpa.l	a0,a4
		beq.s	lz4Rts26
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts26:	rts

ll_sm10:
		moveq	#15,d1
.cl22:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl22
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop23(pc,d5.w)
.tloop23:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop23:	sub.l	d7,d1
		bpl.s	.tloop23
		cmpa.l	a0,a4
		beq.s	lz4Rts27
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts27:	rts

ll_sm11:
		moveq	#15,d1
.cl24:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl24
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop25(pc,d5.w)
.tloop25:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop25:	sub.l	d7,d1
		bpl.s	.tloop25
		cmpa.l	a0,a4
		beq.s	lz4Rts28
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts28:	rts

ll_sm12:
		moveq	#15,d1
.cl26:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl26
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop27(pc,d5.w)
.tloop27:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop27:	sub.l	d7,d1
		bpl.s	.tloop27
		cmpa.l	a0,a4
		beq.s	lz4Rts29
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts29:	rts

ll_sm13:
		moveq	#15,d1
.cl28:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl28
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop29(pc,d5.w)
.tloop29:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop29:	sub.l	d7,d1
		bpl.s	.tloop29
		cmpa.l	a0,a4
		beq.s	lz4Rts30
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts30:	rts

ll_sm14:
		moveq	#15,d1
.cl30:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl30
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop31(pc,d5.w)
.tloop31:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop31:	sub.l	d7,d1
		bpl.s	.tloop31
		cmpa.l	a0,a4
		beq.s	lz4Rts31
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts31:	rts

ll_lm:
		moveq	#15,d1
.cl32:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl32
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop33(pc,d5.w)
.tloop33:
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
		move.b	(a0)+,(a1)+
.eloop33:	sub.l	d7,d1
		bpl.s	.tloop33
		cmpa.l	a0,a4
		beq.s	lz4Rts32
		move.b	(a0)+,d0
		move.b	(a0)+,-(a7)
		move.w	(a7)+,d3
		move.b	d0,d3
		move.l	a1,a2
		sub.l	d3,a2
		moveq	#15+4,d1
.cl34:	move.b	(a0)+,d2
		add.l d2,d1
		not.b	d2
		beq.s	.cl34
		moveq	#15,d5
		and.w	d1,d5
		add.w	d5,d5
		neg.w	d5
		jmp		.eloop35(pc,d5.w)
.tloop35:
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
		move.b	(a2)+,(a1)+
.eloop35:	sub.l	d7,d1
		bpl.s	.tloop35
		moveq	#0,d0
		move.b	(a0)+,d0
		add.w	d0,d0
		move.w	0(a3,d0.w),d0
		jmp		0(a3,d0.w)
lz4Rts32:	rts

lz4jmp:
	dc.w	sl_sm0+32-lz4jmp		; 00
	dc.w	sl_sm1+32-lz4jmp		; 01
	dc.w	sl_sm2+32-lz4jmp		; 02
	dc.w	sl_sm3+32-lz4jmp		; 03
	dc.w	sl_sm4+32-lz4jmp		; 04
	dc.w	sl_sm5+32-lz4jmp		; 05
	dc.w	sl_sm6+32-lz4jmp		; 06
	dc.w	sl_sm7+32-lz4jmp		; 07
	dc.w	sl_sm8+32-lz4jmp		; 08
	dc.w	sl_sm9+32-lz4jmp		; 09
	dc.w	sl_sm10+32-lz4jmp		; 0A
	dc.w	sl_sm11+32-lz4jmp		; 0B
	dc.w	sl_sm12+32-lz4jmp		; 0C
	dc.w	sl_sm13+32-lz4jmp		; 0D
	dc.w	sl_sm14+32-lz4jmp		; 0E
	dc.w	sl_lm+32-lz4jmp			; 0F
	dc.w	sl_sm0+26-lz4jmp		; 10
	dc.w	sl_sm1+26-lz4jmp		; 11
	dc.w	sl_sm2+26-lz4jmp		; 12
	dc.w	sl_sm3+26-lz4jmp		; 13
	dc.w	sl_sm4+26-lz4jmp		; 14
	dc.w	sl_sm5+26-lz4jmp		; 15
	dc.w	sl_sm6+26-lz4jmp		; 16
	dc.w	sl_sm7+26-lz4jmp		; 17
	dc.w	sl_sm8+26-lz4jmp		; 18
	dc.w	sl_sm9+26-lz4jmp		; 19
	dc.w	sl_sm10+26-lz4jmp		; 1A
	dc.w	sl_sm11+26-lz4jmp		; 1B
	dc.w	sl_sm12+26-lz4jmp		; 1C
	dc.w	sl_sm13+26-lz4jmp		; 1D
	dc.w	sl_sm14+26-lz4jmp		; 1E
	dc.w	sl_lm+26-lz4jmp			; 1F
	dc.w	sl_sm0+24-lz4jmp		; 20
	dc.w	sl_sm1+24-lz4jmp		; 21
	dc.w	sl_sm2+24-lz4jmp		; 22
	dc.w	sl_sm3+24-lz4jmp		; 23
	dc.w	sl_sm4+24-lz4jmp		; 24
	dc.w	sl_sm5+24-lz4jmp		; 25
	dc.w	sl_sm6+24-lz4jmp		; 26
	dc.w	sl_sm7+24-lz4jmp		; 27
	dc.w	sl_sm8+24-lz4jmp		; 28
	dc.w	sl_sm9+24-lz4jmp		; 29
	dc.w	sl_sm10+24-lz4jmp		; 2A
	dc.w	sl_sm11+24-lz4jmp		; 2B
	dc.w	sl_sm12+24-lz4jmp		; 2C
	dc.w	sl_sm13+24-lz4jmp		; 2D
	dc.w	sl_sm14+24-lz4jmp		; 2E
	dc.w	sl_lm+24-lz4jmp			; 2F
	dc.w	sl_sm0+22-lz4jmp		; 30
	dc.w	sl_sm1+22-lz4jmp		; 31
	dc.w	sl_sm2+22-lz4jmp		; 32
	dc.w	sl_sm3+22-lz4jmp		; 33
	dc.w	sl_sm4+22-lz4jmp		; 34
	dc.w	sl_sm5+22-lz4jmp		; 35
	dc.w	sl_sm6+22-lz4jmp		; 36
	dc.w	sl_sm7+22-lz4jmp		; 37
	dc.w	sl_sm8+22-lz4jmp		; 38
	dc.w	sl_sm9+22-lz4jmp		; 39
	dc.w	sl_sm10+22-lz4jmp		; 3A
	dc.w	sl_sm11+22-lz4jmp		; 3B
	dc.w	sl_sm12+22-lz4jmp		; 3C
	dc.w	sl_sm13+22-lz4jmp		; 3D
	dc.w	sl_sm14+22-lz4jmp		; 3E
	dc.w	sl_lm+22-lz4jmp			; 3F
	dc.w	sl_sm0+20-lz4jmp		; 40
	dc.w	sl_sm1+20-lz4jmp		; 41
	dc.w	sl_sm2+20-lz4jmp		; 42
	dc.w	sl_sm3+20-lz4jmp		; 43
	dc.w	sl_sm4+20-lz4jmp		; 44
	dc.w	sl_sm5+20-lz4jmp		; 45
	dc.w	sl_sm6+20-lz4jmp		; 46
	dc.w	sl_sm7+20-lz4jmp		; 47
	dc.w	sl_sm8+20-lz4jmp		; 48
	dc.w	sl_sm9+20-lz4jmp		; 49
	dc.w	sl_sm10+20-lz4jmp		; 4A
	dc.w	sl_sm11+20-lz4jmp		; 4B
	dc.w	sl_sm12+20-lz4jmp		; 4C
	dc.w	sl_sm13+20-lz4jmp		; 4D
	dc.w	sl_sm14+20-lz4jmp		; 4E
	dc.w	sl_lm+20-lz4jmp			; 4F
	dc.w	sl_sm0+18-lz4jmp		; 50
	dc.w	sl_sm1+18-lz4jmp		; 51
	dc.w	sl_sm2+18-lz4jmp		; 52
	dc.w	sl_sm3+18-lz4jmp		; 53
	dc.w	sl_sm4+18-lz4jmp		; 54
	dc.w	sl_sm5+18-lz4jmp		; 55
	dc.w	sl_sm6+18-lz4jmp		; 56
	dc.w	sl_sm7+18-lz4jmp		; 57
	dc.w	sl_sm8+18-lz4jmp		; 58
	dc.w	sl_sm9+18-lz4jmp		; 59
	dc.w	sl_sm10+18-lz4jmp		; 5A
	dc.w	sl_sm11+18-lz4jmp		; 5B
	dc.w	sl_sm12+18-lz4jmp		; 5C
	dc.w	sl_sm13+18-lz4jmp		; 5D
	dc.w	sl_sm14+18-lz4jmp		; 5E
	dc.w	sl_lm+18-lz4jmp			; 5F
	dc.w	sl_sm0+16-lz4jmp		; 60
	dc.w	sl_sm1+16-lz4jmp		; 61
	dc.w	sl_sm2+16-lz4jmp		; 62
	dc.w	sl_sm3+16-lz4jmp		; 63
	dc.w	sl_sm4+16-lz4jmp		; 64
	dc.w	sl_sm5+16-lz4jmp		; 65
	dc.w	sl_sm6+16-lz4jmp		; 66
	dc.w	sl_sm7+16-lz4jmp		; 67
	dc.w	sl_sm8+16-lz4jmp		; 68
	dc.w	sl_sm9+16-lz4jmp		; 69
	dc.w	sl_sm10+16-lz4jmp		; 6A
	dc.w	sl_sm11+16-lz4jmp		; 6B
	dc.w	sl_sm12+16-lz4jmp		; 6C
	dc.w	sl_sm13+16-lz4jmp		; 6D
	dc.w	sl_sm14+16-lz4jmp		; 6E
	dc.w	sl_lm+16-lz4jmp			; 6F
	dc.w	sl_sm0+14-lz4jmp		; 70
	dc.w	sl_sm1+14-lz4jmp		; 71
	dc.w	sl_sm2+14-lz4jmp		; 72
	dc.w	sl_sm3+14-lz4jmp		; 73
	dc.w	sl_sm4+14-lz4jmp		; 74
	dc.w	sl_sm5+14-lz4jmp		; 75
	dc.w	sl_sm6+14-lz4jmp		; 76
	dc.w	sl_sm7+14-lz4jmp		; 77
	dc.w	sl_sm8+14-lz4jmp		; 78
	dc.w	sl_sm9+14-lz4jmp		; 79
	dc.w	sl_sm10+14-lz4jmp		; 7A
	dc.w	sl_sm11+14-lz4jmp		; 7B
	dc.w	sl_sm12+14-lz4jmp		; 7C
	dc.w	sl_sm13+14-lz4jmp		; 7D
	dc.w	sl_sm14+14-lz4jmp		; 7E
	dc.w	sl_lm+14-lz4jmp			; 7F
	dc.w	sl_sm0+12-lz4jmp		; 80
	dc.w	sl_sm1+12-lz4jmp		; 81
	dc.w	sl_sm2+12-lz4jmp		; 82
	dc.w	sl_sm3+12-lz4jmp		; 83
	dc.w	sl_sm4+12-lz4jmp		; 84
	dc.w	sl_sm5+12-lz4jmp		; 85
	dc.w	sl_sm6+12-lz4jmp		; 86
	dc.w	sl_sm7+12-lz4jmp		; 87
	dc.w	sl_sm8+12-lz4jmp		; 88
	dc.w	sl_sm9+12-lz4jmp		; 89
	dc.w	sl_sm10+12-lz4jmp		; 8A
	dc.w	sl_sm11+12-lz4jmp		; 8B
	dc.w	sl_sm12+12-lz4jmp		; 8C
	dc.w	sl_sm13+12-lz4jmp		; 8D
	dc.w	sl_sm14+12-lz4jmp		; 8E
	dc.w	sl_lm+12-lz4jmp			; 8F
	dc.w	sl_sm0+10-lz4jmp		; 90
	dc.w	sl_sm1+10-lz4jmp		; 91
	dc.w	sl_sm2+10-lz4jmp		; 92
	dc.w	sl_sm3+10-lz4jmp		; 93
	dc.w	sl_sm4+10-lz4jmp		; 94
	dc.w	sl_sm5+10-lz4jmp		; 95
	dc.w	sl_sm6+10-lz4jmp		; 96
	dc.w	sl_sm7+10-lz4jmp		; 97
	dc.w	sl_sm8+10-lz4jmp		; 98
	dc.w	sl_sm9+10-lz4jmp		; 99
	dc.w	sl_sm10+10-lz4jmp		; 9A
	dc.w	sl_sm11+10-lz4jmp		; 9B
	dc.w	sl_sm12+10-lz4jmp		; 9C
	dc.w	sl_sm13+10-lz4jmp		; 9D
	dc.w	sl_sm14+10-lz4jmp		; 9E
	dc.w	sl_lm+10-lz4jmp			; 9F
	dc.w	sl_sm0+8-lz4jmp			; A0
	dc.w	sl_sm1+8-lz4jmp			; A1
	dc.w	sl_sm2+8-lz4jmp			; A2
	dc.w	sl_sm3+8-lz4jmp			; A3
	dc.w	sl_sm4+8-lz4jmp			; A4
	dc.w	sl_sm5+8-lz4jmp			; A5
	dc.w	sl_sm6+8-lz4jmp			; A6
	dc.w	sl_sm7+8-lz4jmp			; A7
	dc.w	sl_sm8+8-lz4jmp			; A8
	dc.w	sl_sm9+8-lz4jmp			; A9
	dc.w	sl_sm10+8-lz4jmp		; AA
	dc.w	sl_sm11+8-lz4jmp		; AB
	dc.w	sl_sm12+8-lz4jmp		; AC
	dc.w	sl_sm13+8-lz4jmp		; AD
	dc.w	sl_sm14+8-lz4jmp		; AE
	dc.w	sl_lm+8-lz4jmp			; AF
	dc.w	sl_sm0+6-lz4jmp			; B0
	dc.w	sl_sm1+6-lz4jmp			; B1
	dc.w	sl_sm2+6-lz4jmp			; B2
	dc.w	sl_sm3+6-lz4jmp			; B3
	dc.w	sl_sm4+6-lz4jmp			; B4
	dc.w	sl_sm5+6-lz4jmp			; B5
	dc.w	sl_sm6+6-lz4jmp			; B6
	dc.w	sl_sm7+6-lz4jmp			; B7
	dc.w	sl_sm8+6-lz4jmp			; B8
	dc.w	sl_sm9+6-lz4jmp			; B9
	dc.w	sl_sm10+6-lz4jmp		; BA
	dc.w	sl_sm11+6-lz4jmp		; BB
	dc.w	sl_sm12+6-lz4jmp		; BC
	dc.w	sl_sm13+6-lz4jmp		; BD
	dc.w	sl_sm14+6-lz4jmp		; BE
	dc.w	sl_lm+6-lz4jmp			; BF
	dc.w	sl_sm0+4-lz4jmp			; C0
	dc.w	sl_sm1+4-lz4jmp			; C1
	dc.w	sl_sm2+4-lz4jmp			; C2
	dc.w	sl_sm3+4-lz4jmp			; C3
	dc.w	sl_sm4+4-lz4jmp			; C4
	dc.w	sl_sm5+4-lz4jmp			; C5
	dc.w	sl_sm6+4-lz4jmp			; C6
	dc.w	sl_sm7+4-lz4jmp			; C7
	dc.w	sl_sm8+4-lz4jmp			; C8
	dc.w	sl_sm9+4-lz4jmp			; C9
	dc.w	sl_sm10+4-lz4jmp		; CA
	dc.w	sl_sm11+4-lz4jmp		; CB
	dc.w	sl_sm12+4-lz4jmp		; CC
	dc.w	sl_sm13+4-lz4jmp		; CD
	dc.w	sl_sm14+4-lz4jmp		; CE
	dc.w	sl_lm+4-lz4jmp			; CF
	dc.w	sl_sm0+2-lz4jmp			; D0
	dc.w	sl_sm1+2-lz4jmp			; D1
	dc.w	sl_sm2+2-lz4jmp			; D2
	dc.w	sl_sm3+2-lz4jmp			; D3
	dc.w	sl_sm4+2-lz4jmp			; D4
	dc.w	sl_sm5+2-lz4jmp			; D5
	dc.w	sl_sm6+2-lz4jmp			; D6
	dc.w	sl_sm7+2-lz4jmp			; D7
	dc.w	sl_sm8+2-lz4jmp			; D8
	dc.w	sl_sm9+2-lz4jmp			; D9
	dc.w	sl_sm10+2-lz4jmp		; DA
	dc.w	sl_sm11+2-lz4jmp		; DB
	dc.w	sl_sm12+2-lz4jmp		; DC
	dc.w	sl_sm13+2-lz4jmp		; DD
	dc.w	sl_sm14+2-lz4jmp		; DE
	dc.w	sl_lm+2-lz4jmp			; DF
	dc.w	sl_sm0+0-lz4jmp			; E0
	dc.w	sl_sm1+0-lz4jmp			; E1
	dc.w	sl_sm2+0-lz4jmp			; E2
	dc.w	sl_sm3+0-lz4jmp			; E3
	dc.w	sl_sm4+0-lz4jmp			; E4
	dc.w	sl_sm5+0-lz4jmp			; E5
	dc.w	sl_sm6+0-lz4jmp			; E6
	dc.w	sl_sm7+0-lz4jmp			; E7
	dc.w	sl_sm8+0-lz4jmp			; E8
	dc.w	sl_sm9+0-lz4jmp			; E9
	dc.w	sl_sm10+0-lz4jmp		; EA
	dc.w	sl_sm11+0-lz4jmp		; EB
	dc.w	sl_sm12+0-lz4jmp		; EC
	dc.w	sl_sm13+0-lz4jmp		; ED
	dc.w	sl_sm14+0-lz4jmp		; EE
	dc.w	sl_lm+0-lz4jmp			; EF
	dc.w	ll_sm0-lz4jmp			; F0
	dc.w	ll_sm1-lz4jmp			; F1
	dc.w	ll_sm2-lz4jmp			; F2
	dc.w	ll_sm3-lz4jmp			; F3
	dc.w	ll_sm4-lz4jmp			; F4
	dc.w	ll_sm5-lz4jmp			; F5
	dc.w	ll_sm6-lz4jmp			; F6
	dc.w	ll_sm7-lz4jmp			; F7
	dc.w	ll_sm8-lz4jmp			; F8
	dc.w	ll_sm9-lz4jmp			; F9
	dc.w	ll_sm10-lz4jmp			; FA
	dc.w	ll_sm11-lz4jmp			; FB
	dc.w	ll_sm12-lz4jmp			; FC
	dc.w	ll_sm13-lz4jmp			; FD
	dc.w	ll_sm14-lz4jmp			; FE
	dc.w	ll_lm-lz4jmp			; FF
