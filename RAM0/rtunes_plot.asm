;rtunes
;https://worldofspectrum.org/forums/discussion/466/line-routine-and-other-nice-pieces-of-code#latest

extern _taby1
extern _tabx1
extern _taby2
extern _tabx2

PUBLIC _plotpixel2
_plotpixel2:
    ;push de

    ld bc, (_COORDS)

    ld e,c ;cord x
    ld l,b ;cord y
    ld h, _taby1/256
    ld d, _tabx1/256
    ld a,(de)
    inc d
    add a,(hl)
    inc h
    ld h,(hl)
    ld l,a
    ld a,(de)
    or (hl)
    ld (hl),a
    ;pop de
ret


PUBLIC _rtunes2
_rtunes2:
    ld bc,(_COORDS)     ;20
    ld l,b ;cord y      ;4
    ld h, _taby1/256    ;7
    ld b, _tabx1/256    ;7
    ld a,(bc)           ;7
    inc b               ;4
    add a,(hl)          ;7
    inc h               ;4
    ld h,(hl)           ;7
    ld l,a              ;4
    ld a,(bc)           ;7
    or (hl)             ;7
    ld (hl),a           ;7
ret                     ;10





