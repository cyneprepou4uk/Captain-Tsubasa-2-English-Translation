:: по возможности отключить лишние уведомления в консоли
echo off

:: сделать копию прошлой скомпилированной версии
if exist !ct2.nes (copy !ct2.nes !ct2.old)

:: запустить перевод символов и дождаться выполнения скрипта
start /wait lua53 preparations.lua

:: -U = нет необходимости писать .import L_xx_xxxx в тех банках, которые ссылаются на .export L_xx_xxxx
:: -l = создать файл листинга для этого банка
ca65 -U -l copy_bank_01.asm
ca65 -U -l copy_bank_02.asm
ca65 -U -l copy_bank_03.asm
ca65 -U -l copy_bank_04.asm
ca65 -U -l copy_bank_05.asm
ca65 -U -l copy_bank_06.asm
ca65 -U -l copy_bank_07.asm
ca65 -U -l copy_bank_08.asm
ca65 -U -l copy_bank_09.asm
ca65 -U -l copy_bank_10.asm
ca65 -U -l copy_bank_11.asm
ca65 -U -l copy_bank_12.asm
ca65 -U -l copy_bank_13.asm
ca65 -U -l copy_bank_14.asm
ca65 -U -l copy_bank_15.asm
ca65 -U -l copy_bank_16.asm
ca65 -U -l copy_bank_17.asm
ca65 -U -l copy_bank_18.asm
ca65 -U -l copy_bank_19.asm
ca65 -U -l copy_bank_20.asm
ca65 -U -l copy_bank_21.asm
ca65 -U -l copy_bank_22.asm
ca65 -U -l copy_bank_23.asm
ca65 -U -l copy_bank_24.asm
ca65 -U -l copy_bank_25.asm
ca65 -U -l copy_bank_FF.asm

:: компиляция кода в бинарники
ld65 -C ld65.cfg copy_bank_01.o copy_bank_02.o copy_bank_03.o copy_bank_04.o copy_bank_05.o copy_bank_06.o copy_bank_07.o copy_bank_08.o copy_bank_09.o copy_bank_10.o copy_bank_11.o copy_bank_12.o copy_bank_13.o copy_bank_14.o copy_bank_15.o copy_bank_16.o copy_bank_17.o copy_bank_18.o copy_bank_19.o copy_bank_20.o copy_bank_21.o copy_bank_22.o copy_bank_23.o copy_bank_24.o copy_bank_25.o copy_bank_FF.o

:: сбор бинарников, хедера и chr в общий ром
copy /B header.bin + copy_bank_01.bin + copy_bank_02.bin + copy_bank_03.bin + copy_bank_04.bin + copy_bank_05.bin + copy_bank_06.bin + copy_bank_07.bin + copy_bank_08.bin + copy_bank_09.bin + copy_bank_10.bin + copy_bank_11.bin + copy_bank_12.bin + copy_bank_13.bin + copy_bank_14.bin + copy_bank_15.bin + copy_bank_16.bin + copy_bank_17.bin + copy_bank_18.bin + copy_bank_19.bin + copy_bank_20.bin + copy_bank_21.bin + copy_bank_22.bin + copy_bank_23.bin + copy_bank_24.bin + copy_bank_25.bin + empty.bin + copy_bank_FF.bin + CHR_ROM.chr !ct2.nes

:: удалить остаточный хлам и копии
del *.o + copy_*.bin + copy_*.asm + copy_*.inc

:: объединить файлы листинга в один файл
copy /A copy_*.lst !debug.txt

:: удалить копии листинга
del copy_*.lst

:: писать pause если требуется ждать ввода пользователя перед закрытием консоли
:: иначе таймаут автозакрытия консоли в секундах
timeout 10
:: pause
