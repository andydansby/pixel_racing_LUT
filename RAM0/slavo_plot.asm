
extern _COORDS

;Input: BC = coordinates
;Output: BC = address in videoram
;Slavo Labsky
;https://busy.speccy.cz/
PUBLIC _slavo_plot
; Input: BC=coordinates
_slavo_plot:
    ld bc, (_COORDS)        ;20
    ld h, _snow_tab /256    ;7
    ld l,b                  ;4
    ld d,(hl)               ;7
    inc h                   ;4
    ld a,(hl)               ;7
    inc h                   ;4
    ld l,c                  ;4
    or (hl)                 ;7
    ld e,a                  ;4
    inc h                   ;4
    ld a,(de)               ;7
    or (hl)                 ;7
    ; OR=Over0, XOR=Over1
    ld (de),a               ;7
ret                         ;10
                            ;------
                            ;103
