extern _snow_tab
PUBLIC _snow_plot
_snow_plot:
	;PUSH HL
	ld DE, (_COORDS)
	LD H, _snow_tab /256

    LD L,D ;coord Y

	LD B,(HL)
	INC H
	LD A,(HL)
	LD L,E
	INC H
	OR (HL)
	INC H
	LD C,A
	LD A,(BC)
	OR (HL)
	LD (BC),A
	;POP HL
RET
