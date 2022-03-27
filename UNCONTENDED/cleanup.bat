
copy "compiled_BANK_00.bin" "..\magic\"
copy "compiled_CODE.bin" "..\magic\"
copy "compiled_UNASSIGNED.bin" "..\magic\"
copy "compiled_rTune_table_1.bin" "..\magic\"
copy "compiled_rTune_table_2.bin" "..\magic\"
copy "compiled_rTune_table_3.bin" "..\magic\"
copy "compiled_rTune_table_4.bin" "..\magic\"
copy "compiled_DSmith_table_1.bin" "..\magic\"
copy "compiled_busy_table.bin" "..\magic\"
copy "compiled_snow_table.bin" "..\magic\"
copy "compiled_low_high_table_1.bin" "..\magic\"
copy "compiled_allan_table_1.bin" "..\magic\"

@rem copy "compiled_UNCONTENDED.bin" "..\magic\"

move "compiled_BANK_00.bin" "binaries\"
move "compiled_CODE.bin" "binaries\"
move "compiled_UNASSIGNED.bin" "binaries\"
move "compiled_rTune_table_1.bin" "binaries"
move "compiled_rTune_table_2.bin" "binaries"
move "compiled_rTune_table_3.bin" "binaries"
move "compiled_rTune_table_4.bin" "binaries"
move "compiled_DSmith_table_1.bin" "binaries"
move "compiled_busy_table.bin" "binaries"
move "compiled_snow_table.bin" "binaries"
move "compiled_low_high_table_1.bin" "binaries"
move "compiled_allan_table_1.bin" "binaries"

@rem move "compiled_UNCONTENDED.bin" "binaries\"






move "ramALL.o" "binaries\"

copy "compiled.map" "..\"
move "compiled.map" "codemaps\"
del "zcc_opt.def"
