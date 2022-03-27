SECTION code_user


PUBLIC _gfx_x
_gfx_x:
defb 0       ; coordinates


PUBLIC _gfx_y
_gfx_y:
defb 0

PUBLIC _gfx_xy
_gfx_xy:
defw 0

PUBLIC _gfx_yx
_gfx_yx:
defw 0


; in snow demo table runs from #6800 to #68BF  191 bytes

PUBLIC _loop_tester
_loop_tester:
ret

PUBLIC _ZX_ROM
_ZX_ROM:

    push bc
    ld bc, (_gfx_xy)    ;20 ticks

	call $22B0  ;call $22AA;call Plot ROM routine
	LD B, A
	INC B
	LD A, 1

	loop:
    RRCA        ; We rotate A to the right B times
    DJNZ loop
    or (hl) ; OR with screen contents
    ld (hl),a   ; write to screen

    pop bc
ret

