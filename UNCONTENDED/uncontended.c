//  zcc +zx -vn -SO3 -m -lm -clib=new main.c -o main -create-app

// using sccz80 1.99c

//https://github.com/z88dk/z88dk/wiki/Classic-GenericConsole

#define ABS(N) ((N<0)?(-N):(N))
#define abs(N) ((N<0)?(-N):(N))
#define min(a,b) (((a)<(b))?(a):(b))
#define max(a,b) (((a)>(b))?(a):(b))

#define z80_bpoke(a,b)  (*(unsigned char *)(a) = b)

#define BYTE_TO_BINARY_PATTERN "%c%c%c%c%c%c%c%c"
#define BYTE_TO_BINARY(byte)  \
  (byte & 0x80 ? '1' : '0'), \
  (byte & 0x40 ? '1' : '0'), \
  (byte & 0x20 ? '1' : '0'), \
  (byte & 0x10 ? '1' : '0'), \
  (byte & 0x08 ? '1' : '0'), \
  (byte & 0x04 ? '1' : '0'), \
  (byte & 0x02 ? '1' : '0'), \
  (byte & 0x01 ? '1' : '0')
//this is lifted from
//https://stackoverflow.com/questions/111928/is-there-a-printf-converter-to-print-in-binary-format

#pragma printf "%f %ld %d %c"
#pragma scanf  "%f %ld %d %c"

#define CHARACTER_WIDTH 31

#define SHR3 (jz=jsr, jsr^=(jsr<<7), jsr^=(jsr>>5), jsr^=(jsr<<3),jz+jsr)

#include <arch/zx.h>
#include <math.h>
#include <float.h>
#include <stdio.h>
#include <input.h>
#include <intrinsic.h>//temp to place labels
//powerful troubleshooting tool
        //intrinsic_label(border_start);
        //intrinsic_label(border_end);

#include "externs.h"

#include "variables.h"
#include "plot.h"
//  "path/to/header.h"

#include "timer.h"
#include "functions.h"


void printOptions (void);

void options1 (void)
{
    //key presses
    while (1)
    {

        if (in_key_pressed( IN_KEY_SCANCODE_q ))
		{   //SPECCY ROM
		    zx_cls(PAPER_WHITE | INK_BLUE);
		    printf("\x16\x01\x02");
		    timerStart();

		    //asmPlot1Fill();
		    zxSpectrumROM();

            timerEnd();
            waitForKey ();
            break;
		}//end q

        if (in_key_pressed( IN_KEY_SCANCODE_a))
		{   //R-Tune LUT
		    zx_cls(PAPER_WHITE | INK_BLUE);
		    printf("\x16\x01\x02");
		    timerStart();

		    R_Tune_table();

            timerEnd();
            printf ("RTune LUT @ 107 T-states per pixel\n");

            waitForKey ();
            break;
		}//end a

        if (in_key_pressed( IN_KEY_SCANCODE_s))
		{   //Snow Demo
		    zx_cls(PAPER_WHITE | INK_BLUE);
		    printf("\x16\x01\x02");
		    timerStart();

		    Snow_table_routine();

            timerEnd();
            printf ("Snow LUT @ 103 T-states\n");

            waitForKey ();
            break;
		}//end s

		if (in_key_pressed( IN_KEY_SCANCODE_d))
		{   //Slavo Routine
		    zx_cls(PAPER_WHITE | INK_BLUE);
		    printf("\x16\x01\x02");
		    timerStart();

		    slavo_table_routine();

            timerEnd();
            printf ("Slavo LUT @ 103 T-states\n");

            waitForKey ();
            break;
		}//end d

		if (in_key_pressed( IN_KEY_SCANCODE_f))
		{   //Rtunes optimized Routine
		    zx_cls(PAPER_WHITE | INK_BLUE);
		    printf("\x16\x01\x02");
		    timerStart();

		    rtunes_optimized_table_routine();

            timerEnd();
            printf ("Rtunes optimized LUT @ 102 T-states\n");

            waitForKey ();
            break;
		}//end f

        if (in_key_pressed( IN_KEY_SCANCODE_g))
		{   //Rtunes optimized Routine
		    zx_cls(PAPER_WHITE | INK_BLUE);
		    printf("\x16\x01\x02");
		    timerStart();

		    allan_table_routine();

            timerEnd();
            printf ("Allan Turvey LUT @111  T-states\n");

            waitForKey ();
            break;
		}//end

    }//end while
}//end function

void printOptions (void)
{
    {
        zx_cls(PAPER_WHITE | INK_BLUE);
        zx_border (2);
        printf("\x16\x01\x02");

        printf ("Welcome to the LUT Plot tester V0.1\n");
        printf ("press a key for test\n");
        printf ("\n");

        printf ("q - ZX ROM      470-589 T-states per pixel\n");
        printf ("a - RTunes LUT\n");
        printf ("s - Snow Demo LUT\n");
        printf ("d - Slavo Labsky LUT\n");
        printf ("f - RTunes Optimized\n");
        printf ("g - Allan Turvey LUT 1\n");
    }
    options1();
}



void main()
{
	__asm
	ei
	__endasm

	zx_cls(PAPER_WHITE | INK_BLUE);


    while (1)
    {
        printOptions();
    }

}

//must have blank line at end
