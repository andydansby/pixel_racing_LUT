SET PATH=c:\z88dk199c;c:\z88dk199c\bin;c:\z88dk199c\lib\;c:\z88dk199c\lib\clibs;c:\z88dk199c\lib\config;C:\Program Files\SDCC\bin

cls

cd utils
    copy "bas2tap.exe" "..\magic"
    copy "loader.bas" "..\magic"
cd ..

cd RAM0
	call ram0.bat
	move "ram0.txt" "..\"
cd ..

cd UNCONTENDED
	call uncontended.bat
	move "uncontended.txt" "..\"
cd ..

echo on

move "ram0.o" "OBJECTS\"
move "uncontended.o" "OBJECTS\"

cd OBJECTS
	call magic.bat
cd ..


cd UNCONTENDED
    call rammain.bat
cd ..


cd magic
    call voodoo.bat

    copy "1output.tap" "..\"
cd ..


REM FINISHED COMPILE
call beep.bat
