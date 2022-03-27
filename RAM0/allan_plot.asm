
extern _COORDS
extern _pixvals

PUBLIC _Allan_Turvey_plot
_Allan_Turvey_plot:

    ; store co-ords in DE
    ;l=x ; c =y ; h = lookup
    ld de, (_COORDS)
    ld l,d
    ld c,e
    ld h, _pixvals / 256          ;high pixvals
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

    ;;plot to screen
    xor (hl) ; mix with screen ; 7
    ld (hl),a ; print ; 7
ret


PUBLIC _experimental_LUT
_experimental_LUT:

    ld hl, (_COORDS)

    ;otherwise we use these co-ordinates to
    ld c,h
    ld h,_pixvals / 256

    ld b,(hl) ; pixel value ; 7
    inc h ; 4
    ld a,(hl) ; X offset ; 7
    inc h ; 4
    ld l,c ; Y value ; 4
    or (hl) ; low byte + x offset ; 7
    inc h ; 4
    ld h,(hl) ; high byte ; 7
    ld l,a ; low byte ;4
;;;;;;;;;;;;;;;;;;;
    ld a,b ; pixel value ;4
    xor (hl) ; mix with screen ; 7
    ld (hl),a ; print ; 7
ret



