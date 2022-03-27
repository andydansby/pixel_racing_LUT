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

;;;;;;;;;;;;;;;;
;LUT Routines
;;;;;;;;;;;;;;;;












;B = x, L = y, C = line_table msb
;uses 1KB table, aligned to 256B page
;66 ticks per pixel
cmal_LUT:

    ld h, c		     ;4  table of pixel lines, most significant byte
    ld d, (hl)           ;7  read MSB of line
    inc h                ;4  move to second half of table
    ld a, (hl)           ;7  read LSB of line
    inc h                ;4  move to x offset table
    ld l, b              ;4  x pos as index to table
    or (hl)              ;7  combine pixel line address with byte offset in line
    ld e, a              ;4  complete pointer to pixel in DE
    inc h                ;4  move to bit mask table
    ld a, (de)	     ;7  read display byte
    xor (hl) 	     ;7  xor with bitmask
    ld (de), a	     ;7  put pixel
ret

highrise_LUT:
    ;L=x C =y ; H = lookup

    ld b,(hl) ; pixel value ; 7
    inc h ; 4
    ld a,(hl) ; X offset ; 7
    inc h ; 4
    ld l,c ; Y value ; 4
    or (hl) ; low byte + x offset ; 7
    inc h ; 4
    ld h,(hl) ; high byte ; 7
    ld l,a ; low byte ;4
    ld a,b ; pixel value ;4
    xor (hl) ; mix with screen ; 7
    ld (hl),a ; print ; 7
ret










