:: по возможности отключить лишние уведомления в консоли
echo off

:: сделать копию прошлой скомпилированной версии
if exist !ct2.old (copy !ct2.nes !ct2.old)

:: запустить перевод символов и дождаться выполнения скрипта
start /wait lua53 preparations.lua

:: -U = нет необходимости писать .import label
:: -l = создать файл листинга для этого банка
:: -g = создать файл дебага для этого банка
ca65 -U -l copy_bank_80.lst -g copy_bank_80.asm
ca65 -U -l copy_bank_81.lst -g copy_bank_81.asm
ca65 -U -l copy_bank_82.lst -g copy_bank_82.asm
ca65 -U -l copy_bank_83.lst -g copy_bank_83.asm
ca65 -U -l copy_bank_84.lst -g copy_bank_84.asm
ca65 -U -l copy_bank_85.lst -g copy_bank_85.asm
ca65 -U -l copy_bank_86.lst -g copy_bank_86.asm
ca65 -U -l copy_bank_87.lst -g copy_bank_87.asm
ca65 -U -l copy_bank_88.lst -g copy_bank_88.asm
ca65 -U -l copy_bank_89.lst -g copy_bank_89.asm
ca65 -U -l copy_bank_8A.lst -g copy_bank_8A.asm
ca65 -U -l copy_bank_8B.lst -g copy_bank_8B.asm
ca65 -U -l copy_bank_8C.lst -g copy_bank_8C.asm
ca65 -U -l copy_bank_8D.lst -g copy_bank_8D.asm
ca65 -U -l copy_bank_8E.lst -g copy_bank_8E.asm
ca65 -U -l copy_bank_8F.lst -g copy_bank_8F.asm
ca65 -U -l copy_bank_90.lst -g copy_bank_90.asm
ca65 -U -l copy_bank_92.lst -g copy_bank_92.asm
ca65 -U -l copy_bank_93.lst -g copy_bank_93.asm
ca65 -U -l copy_bank_94.lst -g copy_bank_94.asm
ca65 -U -l copy_bank_96.lst -g copy_bank_96.asm
ca65 -U -l copy_bank_98.lst -g copy_bank_98.asm
ca65 -U -l copy_bank_9A.lst -g copy_bank_9A.asm
ca65 -U -l copy_bank_9C.lst -g copy_bank_9C.asm
ca65 -U -l copy_bank_9E.lst -g copy_bank_9E.asm
ca65 -U -l copy_bank_9F.lst -g copy_bank_9F.asm
ca65 -U -l copy_bank_A0.lst -g copy_bank_A0.asm
ca65 -U -l copy_bank_A1.lst -g copy_bank_A1.asm
ca65 -U -l copy_bank_A2.lst -g copy_bank_A2.asm
ca65 -U -l copy_bank_A3.lst -g copy_bank_A3.asm
ca65 -U -l copy_bank_A4.lst -g copy_bank_A4.asm
ca65 -U -l copy_bank_A5.lst -g copy_bank_A5.asm
ca65 -U -l copy_bank_A6.lst -g copy_bank_A6.asm
ca65 -U -l copy_bank_A7.lst -g copy_bank_A7.asm
ca65 -U -l copy_bank_A8.lst -g copy_bank_A8.asm
ca65 -U -l copy_bank_A9.lst -g copy_bank_A9.asm
ca65 -U -l copy_bank_FF.lst -g copy_bank_FF.asm

:: компиляция кода в бинарники
ld65 -C ld65.cfg --dbgfile _debug.txt ^
    copy_bank_80.o ^
    copy_bank_81.o ^
    copy_bank_82.o ^
    copy_bank_83.o ^
    copy_bank_84.o ^
    copy_bank_85.o ^
    copy_bank_86.o ^
    copy_bank_87.o ^
    copy_bank_88.o ^
    copy_bank_89.o ^
    copy_bank_8A.o ^
    copy_bank_8B.o ^
    copy_bank_8C.o ^
    copy_bank_8D.o ^
    copy_bank_8E.o ^
    copy_bank_8F.o ^
    copy_bank_90.o ^
    copy_bank_92.o ^
    copy_bank_93.o ^
    copy_bank_94.o ^
    copy_bank_96.o ^
    copy_bank_98.o ^
    copy_bank_9A.o ^
    copy_bank_9C.o ^
    copy_bank_9E.o ^
    copy_bank_9F.o ^
    copy_bank_A0.o ^
    copy_bank_A1.o ^
    copy_bank_A2.o ^
    copy_bank_A3.o ^
    copy_bank_A4.o ^
    copy_bank_A5.o ^
    copy_bank_A6.o ^
    copy_bank_A7.o ^
    copy_bank_A8.o ^
    copy_bank_A9.o ^
    copy_bank_FF.o

:: сбор бинарников, хедера и chr в общий ром
copy /B header.bin + ^
    copy_bank_80.bin + ^
    copy_bank_81.bin + ^
    copy_bank_82.bin + ^
    copy_bank_83.bin + ^
    copy_bank_84.bin + ^
    copy_bank_85.bin + ^
    copy_bank_86.bin + ^
    copy_bank_87.bin + ^
    copy_bank_88.bin + ^
    copy_bank_89.bin + ^
    copy_bank_8A.bin + ^
    copy_bank_8B.bin + ^
    copy_bank_8C.bin + ^
    copy_bank_8D.bin + ^
    copy_bank_8E.bin + ^
    copy_bank_8F.bin + ^
    copy_bank_90.bin + ^
    copy_bank_92.bin + ^
    copy_bank_93.bin + ^
    copy_bank_94.bin + ^
    copy_bank_96.bin + ^
    copy_bank_98.bin + ^
    copy_bank_9A.bin + ^
    copy_bank_9C.bin + ^
    copy_bank_9E.bin + ^
    copy_bank_9F.bin + ^
    copy_bank_A0.bin + ^
    copy_bank_A1.bin + ^
    copy_bank_A2.bin + ^
    copy_bank_A3.bin + ^
    copy_bank_A4.bin + ^
    copy_bank_A5.bin + ^
    copy_bank_A6.bin + ^
    copy_bank_A7.bin + ^
    copy_bank_A8.bin + ^
    copy_bank_A9.bin + ^
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