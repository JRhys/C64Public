@echo off
del FLDParalax.prg

echo ;This file is automatically generated by BuildIt.bat >FingerPrint.a
echo !scr "%TIME% %DATE% %COMPUTERNAME% %USERNAME%" >>FingerPrint.a

..\..\acme.exe -v3 --msvc --lib ../ --lib ../../ FLDParalax.a
if not exist FLDParalax.prg goto error
rem ..\bin\LZMPi.exe -t $ff00 -c64b FLDParalax.prg FLDParalax.prg $400 >t.txt
..\..\bin\LZMPi.exe -t $ff00 -c64mrb FLDParalax.prg FLDParalax.prg $400 >t.txt
if not exist FLDParalax.prg goto error
goto end
:error
echo FLDParalax.prg not created!
exit /B -1
:end