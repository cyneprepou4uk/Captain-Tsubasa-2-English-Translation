:: по возможности отключить лишние уведомления в консоли
echo off

:: сделать копию прошлой скомпилированной версии
if exist !ct2.old (copy !ct2.nes !ct2.old)

:: запустить перевод символов и дождаться выполнения скрипта
start /wait lua53 preparations.lua

:: -U = нет необходимости писать .import label
:: -l = создать файл листинга для этого банка
:: -g = создать файл дебага для этого банка
ca65 -U -l copy_bank_00.lst -g copy_bank_00.asm
ca65 -U -l copy_bank_01.lst -g copy_bank_01.asm
ca65 -U -l copy_bank_02.lst -g copy_bank_02.asm
ca65 -U -l copy_bank_03.lst -g copy_bank_03.asm
ca65 -U -l copy_bank_04.lst -g copy_bank_04.asm
ca65 -U -l copy_bank_05.lst -g copy_bank_05.asm
ca65 -U -l copy_bank_06.lst -g copy_bank_06.asm
ca65 -U -l copy_bank_07.lst -g copy_bank_07.asm
ca65 -U -l copy_bank_08.lst -g copy_bank_08.asm
ca65 -U -l copy_bank_09.lst -g copy_bank_09.asm
ca65 -U -l copy_bank_0A.lst -g copy_bank_0A.asm
ca65 -U -l copy_bank_0B.lst -g copy_bank_0B.asm
ca65 -U -l copy_bank_0C.lst -g copy_bank_0C.asm
ca65 -U -l copy_bank_0D.lst -g copy_bank_0D.asm
ca65 -U -l copy_bank_0E.lst -g copy_bank_0E.asm
ca65 -U -l copy_bank_0F.lst -g copy_bank_0F.asm
ca65 -U -l copy_bank_10.lst -g copy_bank_10.asm
ca65 -U -l copy_bank_12.lst -g copy_bank_12.asm
ca65 -U -l copy_bank_13.lst -g copy_bank_13.asm
ca65 -U -l copy_bank_14.lst -g copy_bank_14.asm
ca65 -U -l copy_bank_16.lst -g copy_bank_16.asm
ca65 -U -l copy_bank_18.lst -g copy_bank_18.asm
ca65 -U -l copy_bank_1A.lst -g copy_bank_1A.asm
ca65 -U -l copy_bank_1C.lst -g copy_bank_1C.asm
ca65 -U -l copy_bank_1E.lst -g copy_bank_1E.asm
ca65 -U -l copy_bank_1F.lst -g copy_bank_1F.asm
ca65 -U -l copy_bank_20.lst -g copy_bank_20.asm
ca65 -U -l copy_bank_21.lst -g copy_bank_21.asm
ca65 -U -l copy_bank_22.lst -g copy_bank_22.asm
ca65 -U -l copy_bank_23.lst -g copy_bank_23.asm
ca65 -U -l copy_bank_24.lst -g copy_bank_24.asm
ca65 -U -l copy_bank_25.lst -g copy_bank_25.asm
ca65 -U -l copy_bank_26.lst -g copy_bank_26.asm
ca65 -U -l copy_bank_27.lst -g copy_bank_27.asm
ca65 -U -l copy_bank_28.lst -g copy_bank_28.asm
ca65 -U -l copy_bank_29.lst -g copy_bank_29.asm
ca65 -U -l copy_bank_FF.lst -g copy_bank_FF.asm

:: компиляция кода в бинарники
ld65 -C ld65.cfg --dbgfile _debug.txt ^
    copy_bank_00.o ^
    copy_bank_01.o ^
    copy_bank_02.o ^
    copy_bank_03.o ^
    copy_bank_04.o ^
    copy_bank_05.o ^
    copy_bank_06.o ^
    copy_bank_07.o ^
    copy_bank_08.o ^
    copy_bank_09.o ^
    copy_bank_0A.o ^
    copy_bank_0B.o ^
    copy_bank_0C.o ^
    copy_bank_0D.o ^
    copy_bank_0E.o ^
    copy_bank_0F.o ^
    copy_bank_10.o ^
    copy_bank_12.o ^
    copy_bank_13.o ^
    copy_bank_14.o ^
    copy_bank_16.o ^
    copy_bank_18.o ^
    copy_bank_1A.o ^
    copy_bank_1C.o ^
    copy_bank_1E.o ^
    copy_bank_1F.o ^
    copy_bank_20.o ^
    copy_bank_21.o ^
    copy_bank_22.o ^
    copy_bank_23.o ^
    copy_bank_24.o ^
    copy_bank_25.o ^
    copy_bank_26.o ^
    copy_bank_27.o ^
    copy_bank_28.o ^
    copy_bank_29.o ^
    copy_bank_FF.o

:: сбор бинарников, хедера и chr в общий ром
copy /B header.bin + ^
    copy_bank_00.bin + ^
    copy_bank_01.bin + ^
    copy_bank_02.bin + ^
    copy_bank_03.bin + ^
    copy_bank_04.bin + ^
    copy_bank_05.bin + ^
    copy_bank_06.bin + ^
    copy_bank_07.bin + ^
    copy_bank_08.bin + ^
    copy_bank_09.bin + ^
    copy_bank_0A.bin + ^
    copy_bank_0B.bin + ^
    copy_bank_0C.bin + ^
    copy_bank_0D.bin + ^
    copy_bank_0E.bin + ^
    copy_bank_0F.bin + ^
    copy_bank_10.bin + ^
    copy_bank_12.bin + ^
    copy_bank_13.bin + ^
    copy_bank_14.bin + ^
    copy_bank_16.bin + ^
    copy_bank_18.bin + ^
    copy_bank_1A.bin + ^
    copy_bank_1C.bin + ^
    copy_bank_1E.bin + ^
    copy_bank_1F.bin + ^
    copy_bank_20.bin + ^
    copy_bank_21.bin + ^
    copy_bank_22.bin + ^
    copy_bank_23.bin + ^
    copy_bank_24.bin + ^
    copy_bank_25.bin + ^
    copy_bank_26.bin + ^
    copy_bank_27.bin + ^
    copy_bank_28.bin + ^
    copy_bank_29.bin + ^
    empty.bin + copy_bank_FF.bin + CHR_ROM.chr !ct2.nes

:: удалить остаточный хлам и копии
del *.o + copy_*.bin + copy_*.asm + copy_*.inc + temp_*.asm + temp_*.inc

:: объединить файлы листинга в один файл
copy /A copy_*.lst _listing.txt

:: удалить копии листинга
del copy_*.lst

:: проверить размер файла и вывести нужное сообщение
setlocal enableextensions
FOR %%A IN ("!ct2.nes") DO set "size=%%~zA"
if %size% EQU 786448 (
    echo.
    echo --------------------------------------------
    echo Done! Look for !ct2.nes file in your folder.
    if exist !ct2.bak (
        echo.
        fc /A /B /T !ct2.nes !ct2.bak > nul && echo Perfect match || echo Differences found 
        echo.
        copy !ct2.nes !ct2.bak
        echo Backup created
    )
    echo --------------------------------------------
    echo Script will close automatically in 30 seconds.
    timeout /T 30 > nul
) else (
    echo.
    echo --------------------------------------------------
    echo Something's wrong, check log for more information. 
    if exist !ct2.bak (
        echo.
        copy !ct2.bak !ct2.nes
        echo Backup restored
    )
    echo --------------------------------------------------
    echo.
    pause
)