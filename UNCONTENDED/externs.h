#ifndef EXTERNS_H
#define EXTERNS_H
//UNCONTENDED RAM


//VARIABLES
extern unsigned char gfx_x;
extern unsigned char gfx_y;
extern unsigned int gfx_xy;
extern unsigned int gfx_yx;


extern void __CALLEE__ plotpixel2 (void);
extern unsigned int COORDS;
//extern void __FASTCALL__ border_Change_RAM0(unsigned char color);


extern void __CALLEE__ point (void);

extern void __CALLEE__ snow_plot (void);

extern void __CALLEE__ catmeows (void);

extern void __CALLEE__ Slavo_Labsky (void);
extern void __CALLEE__ slavo_plot (void);
extern void __CALLEE__ rtunes2 (void);


extern void __CALLEE__ Richard_plot (void);

extern void __CALLEE__ Allan_Turvey_plot (void);

//FUNCTIONS
extern void __FASTCALL__ loop_tester (void);
extern void __CALLEE__ ZX_ROM (void);

/*
__fastcall__
 Fastcall linkage allows one parameter
 to be passed by register in a subset of DEHL.
 So if the parameter is 8-bit, the value will
 be in L.  If the parameter is 16-bit,
 the value is in HL and if it is
 32-bit the value is in DEHL.
*/


#endif
