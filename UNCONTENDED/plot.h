#ifndef PLOT_H
#define PLOT_H

void ZX_plot (unsigned char x, unsigned char y)
{
	//just in case you are testing a new algorithm
	/*if (x < 0)		return;
	if (x > 255)	return;
	if (y < 0)		return;
	if (y > 191)	return;*/

	*zx_pxy2saddr (x,y) |= zx_px2bitmask(x);
}

void unplot(int x, int y, unsigned char colour)
{
	unsigned char *address;

	//just in case you are testing a new algorithm
	/*if (x < 0)		return;
	if (x > 255)	return;
	if (y < 0)		return;*/
	if (y > 191)	return;

	address = zx_pxy2saddr(x,y);

	*address &= ~zx_px2bitmask(x);

	*zx_saddr2aaddr(address) = colour;
}


//works
void zxSpectrumROM (void)
{
    zx_cls(PAPER_WHITE | INK_BLACK);
    for (yy = 0; yy < 192; yy++)//176   191
    {
        for (xx = 0; xx < 255 ; xx++)
        {
            gfx_xy = (yy << 8) | xx;
            ZX_ROM();
        }
    }
}

//https://worldofspectrum.org/forums/discussion/472/line-routine/p1
void rtunes_pixelRoutine (void)
{
    zx_cls(PAPER_WHITE | INK_BLACK);
    for (yy = 0; yy < 192; yy++)
    {
        for (xx = 0; xx < 255 ; xx++)
        {
            COORDS = (yy << 8) | xx;
            rtunes_pixel();
        }
    }
}


void loop_tester_routine (void)
{
    zx_cls(PAPER_WHITE | INK_BLACK);

    for (yy = 0; yy < 192; yy++)
    {
        for (xx = 0; xx < 255 ; xx++)
        {
            gfx_xy = (yy << 8) | xx;
            //loop_tester();
        }
    }
}

//works
void z88dkPlotFill (void)
{
    zx_cls(PAPER_WHITE | INK_BLACK);
    for (yy = 0; yy < 192; yy++)
    {
        for (xx = 0; xx < 255 ; xx++)
        {
            ZX_plot(xx,yy);
        }
    }
}

//works
void R_Tune_table (void)
{
    zx_cls(PAPER_WHITE | INK_BLACK);

    for (yy = 0; yy < 192; yy++)
    {
        for (xx = 0; xx < 255 ; xx++)
        {
            COORDS = (yy << 8) | xx;
            plotpixel2(); //good
        }
    }
}

//works
void Snow_table_routine (void)
{
    zx_cls(PAPER_WHITE | INK_BLACK);

    for (yy = 0; yy < 192; yy++)
    {
        for (xx = 0; xx < 255 ; xx++)
        {
            COORDS = (yy << 8) | xx;
            snow_plot(); //
        }
    }
}

//works
void slavo_table_routine (void)
{
    zx_cls(PAPER_WHITE | INK_BLACK);

    for (yy = 0; yy < 192; yy++)
    {
        for (xx = 0; xx < 255 ; xx++)
        {
            COORDS = (yy << 8) | xx;
            slavo_plot();
        }
    }
}


void rtunes_optimized_table_routine (void)
{
    zx_cls(PAPER_WHITE | INK_BLACK);

    for (yy = 0; yy < 192; yy++)
    {
        for (xx = 0; xx < 255 ; xx++)
        {
            COORDS = (yy << 8) | xx;
            rtunes2();
        }
    }
}



void allan_table_routine (void)
{
    zx_cls(PAPER_WHITE | INK_BLACK);

    for (yy = 0; yy < 192; yy++)
    {
        for (xx = 0; xx < 255 ; xx++)
        {
            COORDS = (xx << 8) | yy;
            Allan_Turvey_plot();
            //junker();
        }
    }
}


void allan_Experimental_table_routine (void)
{
    zx_cls(PAPER_WHITE | INK_BLACK);

    for (yy = 0; yy < 192; yy++)
    {
        for (xx = 0; xx < 255 ; xx++)
        {
            COORDS = (yy << 8) | xx;
            experimental_LUT();
            //junker();
        }
    }
}


void cat_meows_table_routine (void)
{
    zx_cls(PAPER_WHITE | INK_BLACK);

    for (yy = 0; yy < 192; yy++)
    {
        for (xx = 0; xx < 255 ; xx++)
        {
            COORDS = (yy << 8) | xx;
            Richard_plot();
        }
    }
}




#endif
//leave blank line after


