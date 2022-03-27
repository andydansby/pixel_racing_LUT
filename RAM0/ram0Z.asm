;; RAM0
SECTION BANK_00

;;RAM0 memory from 49152 to 65535
;;16383 bytes total

;;The ULA bug which causes snow when I is set to point to contended memory still occurs, and also appears to crash the machine shortly after I is set to point to contended memory.
;;This means ISR CANNOT BE IN CONTENDED MEMORY!!!

;;__fastcall__ fastcall
;; Fastcall linkage allows one parameter
;; to be passed by register in a subset of DEHL.
;; So if the parameter is 8-bit, the value will
;; be in L.  If the parameter is 16-bit,
;; the value is in HL and if it is
;; 32-bit the value is in DEHL.

;; On the Spectrum 128, interrupt vectors may only
;; be placed between $80ff and $beff inclusive.
;; An interrupt routing itself must exist wholly
;; between 4000 and $BFFF.
;; This is because address $c000 to $ffff are pageabe
;; and should an interrupt occur while the
;; wrong 16k RAM is paged in, you will get a crash.



; ******************************************************************
; Plot pixel at (x,y) coordinate.
; The (0,0) origin is placed at the top left corner.
; in: BC = (y,x) coordinate of pixel

extern _address_table
extern _busy_tab
extern _low_high_tab
extern _pixvals


PUBLIC _COORDS
_COORDS:
defw 0

include "rtunes_plot.asm"
include "snow_demo_plot.asm"
include "slavo_plot.asm"
include "allan_plot.asm"



;;calculated pixel
PUBLIC _rtunes_pixel
_rtunes_pixel:

    ld DE, (_COORDS)	;20 T

    LD A,D				;4 T
    AND A				;4 T
    RRA					;4 T
    SCF					;4 T
    RRA					;4 T
    AND A				;4 T
    RRA					;4 T
    XOR D				;4 T
    AND %11111000		;7 T


    XOR D				;4 T
    LD H,A				;4 T
    LD A,E				;4 T
    RLCA				;4 T
    RLCA				;4 T
    RLCA				;4 T
    XOR D				;4 T
    AND %11000111		;7 T
    XOR D				;4 T
    RLCA				;4 T
    RLCA				;4 T
    LD L,A				;4 T

    LD A,E				;4 T
    AND 7				;7 T

    LD D, A				;4 T

    LD DE, X_PositionBits	;10T
    ADD A,E				;4 T
    LD E,A				;4 T
    LD A,(DE)			;7 T

    ;output to screen
    OR (hl)				;7 T
    LD (hl),A			;7 T
RET						;10 T

X_PositionBits:
defb 128,64,32,16,8,4,2,1



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;not working yet
;;; Why, oh why?
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PUBLIC _Richard_plot
_Richard_plot:

    ld bc, (_COORDS)
    ;ld h, $FF ; Hi Byte Table
    ld h, _pixvals / 256

    ;   _busy_tab       no
    ;   _low_high_tab   no
    ;   _snow_tab       no

    ld l, b
    ld d, (hl) ; Screen Address Hi
    dec h ; Lo Byte Table
    ld a, (hl)
    dec h ; Column Add Table
    ld l, c
    add a, (hl)
    ld e, a ; Screen Address Lo
    dec h ; Dot Picture Table
    ld a, (hl) ; Dot Picture
    ld (de), a ; Plot Dot
ret
; End.



