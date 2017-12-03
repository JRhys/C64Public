@echo off
del RacingGame.prg RacingGame.crt

rem No extra Ultimax boot, so use a simple empty address switch as placeholder for the command line
set CART_BOOT_TYPE=-tg
set CART_BOOT_TYPE_HI=-a $8000
rem Using Ultimax boot, so create the high bank with the reset vector
set CART_BOOT_TYPE=-te
set CART_BOOT_TYPE_HI=-a $a000 -b 0 -c $1ffc 2 4 -w

echo CART_BOOT_TYPE = %CART_BOOT_TYPE%

echo Making simple cart

rem If the files are missing then they are simply not included in the cart
set RacingGame_FILES_NUM=1
set RacingGame_FILES=Original\BLOCKTABLE.D.PRG+2
..\bin\MakeCart.exe -tg -n -a $8000 -b 7 -f $2000 %RacingGame_FILES_NUM% %RacingGame_FILES% -o RacingGame.crt >t.txt

rem Use the offsets from the data build to make the code
..\acme.exe -v3 --msvc RacingGameEntry.a
if not exist RacingGame.prg goto error
copy /y RacingGame.prg RacingGameOrig.prg
rem ..\bin\LZMPi.exe -c64b RacingGameOrig.prg RacingGame.prg 1024 >t.txt
..\bin\LZMPi.exe -c64mr RacingGameOrig.prg RacingGame.prg 1024 >tf.txt
if not exist RacingGame.prg goto error


rem Make the final cart
..\bin\MakeCart.exe %CART_BOOT_TYPE% -n -a $8000 -b 0 -r ..\Citadel2\Citadel2Cart_8K.prg -c 0 2 $ffff -w %CART_BOOT_TYPE_HI% -r RacingGame.prg -a $8000 -b 1 -c 0 $0001 $ffff -w -a $8000 -b 2 -c 0 $2001 $ffff -w -a $8000 -b 3 -c 0 $4001 $ffff -w -a $8000 -b 4 -c 0 $6001 $ffff -w -a $8000 -b 5 -c 0 $8001 $ffff -w -a $8000 -b 6 -c 0 $a001 $ffff -w -a $8000 -b 7 -f $2000 %RacingGame_SPEED_CODE_FILES_NUM% %RacingGame_SPEED_CODE_FILES% -o RacingGame.crt >>tf.txt


goto end
:error
echo RacingGame.crt not created!
exit -1
:end
