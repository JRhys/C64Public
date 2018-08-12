@echo off

mkdir Data
del Data\*.del /q

start /B ..\Animation\DeltaCompression\Release\DeltaCompression.exe -maxframesize 6000 -emptyframebuffer -bitmap -fragment 0 Data\frm*05d.col -fragment $400 Data\frm*05d.scr -fragment $800 Data\frm*05d.spr -fragment $c00 Data\frm*05d.sno -fragment $1c00 Data\frm*05d.chr 0 1 1 2 $4000 $7c00 Data\frm*05d.del

start /B ..\Animation\DeltaCompression\Release\DeltaCompression.exe %EXCLUDEPANEL% -optimisefile $d00 Data\Dictionary1_1.bin -optimisefile $4d00 Data\Dictionary1_2.bin -maxframesize 6000 -emptyframebuffer -bitmap -fragment f$d00 Data\Dictionary1_1.bin -fragment f$4d00 Data\Dictionary1_2.bin -fragment 0 Data\frm*05d.col -fragment $400 Data\frm*05d.scr -fragment $800 Data\frm*05d.spr -fragment $c00 Data\frm*05d.sno -fragment $1c00 Data\frm*05d.chr   2 1 151 2 $4000 $7c00 Data\frm*05d.del %BLOCKLEN%
start /B ..\Animation\DeltaCompression\Release\DeltaCompression.exe %EXCLUDEPANEL% -optimisefile $d00 Data\Dictionary2_1.bin -optimisefile $4d00 Data\Dictionary2_2.bin -maxframesize 6000 -emptyframebuffer -bitmap -fragment f$d00 Data\Dictionary2_1.bin -fragment f$4d00 Data\Dictionary2_2.bin -fragment 0 Data\frm*05d.col -fragment $400 Data\frm*05d.scr -fragment $800 Data\frm*05d.spr -fragment $c00 Data\frm*05d.sno -fragment $1c00 Data\frm*05d.chr 152 1 301 2 $4000 $7c00 Data\frm*05d.del %BLOCKLEN%
start /B ..\Animation\DeltaCompression\Release\DeltaCompression.exe %EXCLUDEPANEL% -optimisefile $d00 Data\Dictionary3_1.bin -optimisefile $4d00 Data\Dictionary3_2.bin -maxframesize 6000 -emptyframebuffer -bitmap -fragment f$d00 Data\Dictionary3_1.bin -fragment f$4d00 Data\Dictionary3_2.bin -fragment 0 Data\frm*05d.col -fragment $400 Data\frm*05d.scr -fragment $800 Data\frm*05d.spr -fragment $c00 Data\frm*05d.sno -fragment $1c00 Data\frm*05d.chr 302 1 451 2 $4000 $7c00 Data\frm*05d.del %BLOCKLEN%
start /B ..\Animation\DeltaCompression\Release\DeltaCompression.exe %EXCLUDEPANEL% -optimisefile $d00 Data\Dictionary4_1.bin -optimisefile $4d00 Data\Dictionary4_2.bin -maxframesize 6000 -emptyframebuffer -bitmap -fragment f$d00 Data\Dictionary4_1.bin -fragment f$4d00 Data\Dictionary4_2.bin -fragment 0 Data\frm*05d.col -fragment $400 Data\frm*05d.scr -fragment $800 Data\frm*05d.spr -fragment $c00 Data\frm*05d.sno -fragment $1c00 Data\frm*05d.chr 452 1 601 2 $4000 $7c00 Data\frm*05d.del %BLOCKLEN%
start /B ..\Animation\DeltaCompression\Release\DeltaCompression.exe %EXCLUDEPANEL% -optimisefile $d00 Data\Dictionary5_1.bin -optimisefile $4d00 Data\Dictionary5_2.bin -maxframesize 6000 -emptyframebuffer -bitmap -fragment f$d00 Data\Dictionary5_1.bin -fragment f$4d00 Data\Dictionary5_2.bin -fragment 0 Data\frm*05d.col -fragment $400 Data\frm*05d.scr -fragment $800 Data\frm*05d.spr -fragment $c00 Data\frm*05d.sno -fragment $1c00 Data\frm*05d.chr 602 1 751 2 $4000 $7c00 Data\frm*05d.del %BLOCKLEN%
start /B ..\Animation\DeltaCompression\Release\DeltaCompression.exe %EXCLUDEPANEL% -optimisefile $d00 Data\Dictionary6_1.bin -optimisefile $4d00 Data\Dictionary6_2.bin -maxframesize 6000 -emptyframebuffer -bitmap -fragment f$d00 Data\Dictionary6_1.bin -fragment f$4d00 Data\Dictionary6_2.bin -fragment 0 Data\frm*05d.col -fragment $400 Data\frm*05d.scr -fragment $800 Data\frm*05d.spr -fragment $c00 Data\frm*05d.sno -fragment $1c00 Data\frm*05d.chr 752 1 901 2 $4000 $7c00 Data\frm*05d.del %BLOCKLEN%

start /B ..\Animation\DeltaCompression\Release\DeltaCompression.exe -maxframesize 6000 -emptyframebuffer -bitmap -fragment 0 Data\frm*05d.col -fragment $400 Data\frm*05d.scr -fragment $800 Data\frm*05d.spr -fragment $c00 Data\frm*05d.sno -fragment $1c00 Data\frm*05d.chr 902 1 903 2 $4000 $7c00 Data\frm*05d.del

rem Outro
start /B ..\Animation\DeltaCompression\Release\DeltaCompression.exe %EXCLUDEPANEL% -optimisefile $d00 Data\Dictionary7_1.bin -optimisefile $4d00 Data\Dictionary7_2.bin -maxframesize 6000 -emptyframebuffer -bitmap -fragment f$d00 Data\Dictionary7_1.bin -fragment f$4d00 Data\Dictionary7_2.bin -fragment 0 Data\frm*05d.col -fragment $400 Data\frm*05d.scr -fragment $800 Data\frm*05d.spr -fragment $c00 Data\frm*05d.sno -fragment $1c00 Data\frm*05d.chr 904 1 1383 2 $4000 $7c00 Data\frm*05d.del %BLOCKLEN%

call ConvDeltaWait.bat