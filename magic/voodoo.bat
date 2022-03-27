rem copy /b compiled_UNCONTENDED.bin + compiled_CODE.bin  UNCONTENDED.bin
rem appmake +zx -b UNCONTENDED.bin -o uncontended.tap --org 32768 --noloader --blockname uncontended

appmake +zx -b compiled_CODE.bin -o uncontended.tap --org 32768 --noloader --blockname uncontended

rem ok
appmake +zx -b compiled_BANK_00.bin -o bank00.tap --org 49152 --noloader --blockname bank00

appmake +zx -b compiled_rTune_table_1.bin -o rTab1.tap --org 53504 --noloader --blockname rTab1
appmake +zx -b compiled_rTune_table_2.bin -o rTab2.tap --org 53760 --noloader --blockname rTab2
appmake +zx -b compiled_rTune_table_3.bin -o rTab3.tap --org 54016 --noloader --blockname rTab3
appmake +zx -b compiled_rTune_table_4.bin -o rTab4.tap --org 54272 --noloader --blockname rTab4
appmake +zx -b compiled_address_table_1.bin  -o DTabe.tap --org 54528 --noloader --blockname DTabe
appmake +zx -b compiled_busy_table.bin  -o Busy.tap --org 0xD700 --noloader --blockname busy
appmake +zx -b compiled_snow_table.bin  -o Snow.tap --org 0xD900 --noloader --blockname snow
appmake +zx -b compiled_low_high_table_1.bin  -o loHI.tap --org 0xDD00 --noloader --blockname lowHigh

appmake +zx -b compiled_allan_table_1.bin  -o allan.tap --org 0xDD00 --noloader --blockname turvey

bas2tap -a10 -s128K loader.bas basloader.tap

copy /b basloader.tap + bank00.tap + rTab1.tap + rTab2.tap + rTab3.tap + rTab4.tap + DTabe.tap + Busy.tap + snow.tap + loHI.tap + allan.tap + uncontended.tap  1output.tap

del "loader.bas"
del "bank00.tap"
del "uncontended.tap"
del "allan.tap"
del "Busy.tap"
del "DTabe.tap"
del "loHI.tap"
del "rTab1.tap"
del "rTab2.tap"
del "rTab3.tap"
del "rTab4.tap"
del "Snow.tap"

echo on
move "compiled_BANK_00.bin" "bin\"
move "compiled_CODE.bin" "bin\"
move "compiled_UNASSIGNED.bin" "bin\"
move "compiled_busy_table.bin" "bin\"

move "compiled_address_table_1.bin" "bin\"
move "compiled_low_high_table_1.bin" "bin\"
move "compiled_snow_table.bin" "bin\"

move "compiled_rTune_table_1.bin" "bin\"
move "compiled_rTune_table_2.bin" "bin\"
move "compiled_rTune_table_3.bin" "bin\"
move "compiled_rTune_table_4.bin" "bin\"
move "compiled_allan_table_1.bin" "bin\"

