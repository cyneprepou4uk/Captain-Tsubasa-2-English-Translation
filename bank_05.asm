.segment "BANK_05"
.include "copy_bank_ram.inc"
; тут только данные
; поинтеры в 0x000485
; перемещать код можно только после начальной таблицы поинтеров

    .word off_AF35_17_цубаса_читает_письмо
    .word off_B159_18_мисаки_и_пьер_перед_матчем
    .word off_B1CE_19_цубаса_после_победы_над_францией
    .word off_B398_1A_цубаса_планирует_циклон_1
    .word off_B4F1_1B_цубаса_планирует_циклон_2
    .word off_B71E_1C_цубаса_изучил_циклон
    .word off_BA74_1D_после_победы_над_аргентиной
    .word off_BDD6_1E_цубаса_и_шнайдер_перед_матчем
    .word off_BE49_1F_перед_матчем_с_бразилией









off_AF35_17_цубаса_читает_письмо:
    .byte $E8, $01
    .byte $DE
    .byte con_катсцена_задний_фон, $12
    .byte $FA, $13
    .byte $FB, $01, $16
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $48
    .byte $DC
    .byte $FB, $01, $12
    .byte $F3, $FF, $00, $0C
    .byte $DA
    .byte $F5, $08
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $00
    .byte $DC
    .byte $FB, $01, $66
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $2B
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $DD
    .byte $40    ; <「>
    .byte $24    ; <や>
    .byte $01    ; <あ>
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $24    ; <や>
    .byte $27    ; <ら>
    .byte con_катсцена_новая_строка
    .byte $FB, $01, $2A
    .byte $B1    ; <ぶ>
    .byte $A6    ; <じ>
    .byte $16    ; <に>
    .byte $00
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $0D    ; <す>
    .byte $0D    ; <す>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $7A    ; <、>
    .byte $DB
    .byte $02    ; <い>
    .byte $1F    ; <ま>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $00
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $AD    ; <で>
    .byte $0D    ; <す>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $2A
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $1F    ; <ま>
    .byte $1A    ; <は>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $20    ; <み>
    .byte $12    ; <つ>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $AE    ; <ど>
    .byte $7A    ; <、>
    .byte $DB
    .byte $01    ; <あ>
    .byte $14    ; <と>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $FB, $01, $2B
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $A0    ; <が>
    .byte $00
    .byte $C4    ; <ビ>
    .byte $6F    ; <ッ>
    .byte $48    ; <ク>
    .byte $68    ; <リ>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $12
    .byte $F7
    .byte $F3, $8C
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $04    ; <え>
    .byte $2F    ; <っ>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $2B
    .byte $F7
    .byte $F3, $00
    .byte $FA, $2C
    .byte $FB, $01, $2A
    .byte $E1
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0B    ; <さ>
    .byte $2F    ; <っ>
    .byte $07    ; <き>
    .byte $00
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $16    ; <に>
    .byte $00
    .byte $01    ; <あ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $2C    ; <わ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $AD    ; <で>
    .byte $18    ; <ね>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $02, $B6, $8A
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $2D    ; <を>
    .byte $00
    .byte $01    ; <あ>
    .byte $15    ; <な>
    .byte $10    ; <た>
    .byte $16    ; <に>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $65
    .byte $FB, $01, $3E
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $55
    .byte $DE
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0C    ; <し>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $19    ; <の>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $28    ; <り>
    .byte con_катсцена_новая_строка
    .byte $02    ; <い>
    .byte $1F    ; <ま>
    .byte $19    ; <の>
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $08    ; <く>
    .byte $AA    ; <だ>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte $00
    .byte $01    ; <あ>
    .byte $03    ; <う>
    .byte $2C    ; <わ>
    .byte $09    ; <け>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $14    ; <と>
    .byte $12    ; <つ>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $00
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte $00
    .byte $62    ; <メ>
    .byte $6F    ; <ッ>
    .byte $4E    ; <セ>
    .byte $7D    ; <ー>
    .byte $BA    ; <ジ>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $10    ; <た>
    .byte $04    ; <え>
    .byte $13    ; <て>
    .byte $05    ; <お>
    .byte $08    ; <く>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $0A    ; <こ>
    .byte $AD    ; <で>
    .byte $00
    .byte $05    ; <お>
    .byte $0C    ; <し>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $1A    ; <は>
    .byte $00
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte $14    ; <と>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $00
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $19    ; <の>
    .byte $0C    ; <し>
    .byte $2A    ; <れ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $AA    ; <だ>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $FB, $01, $3D
    .byte con_катсцена_закрыть_рот
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $FA, $50
    .byte $FB, $01, $6C
    .byte $F7
    .byte $F3, $00
    .byte $F5, $0C
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_скорость_текста
    .byte $04    ; <え>
    .byte $4D    ; <ス>
    .byte $7D    ; <ー>
    .byte $CD    ; <パ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $2D    ; <を>
    .byte $22    ; <め>
    .byte $A5    ; <ざ>
    .byte $0E    ; <せ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $65
    .byte $FB, $01, $3E
    .byte con_катсцена_осветление_экрана
    .byte $DC
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $00
    .byte $02    ; <い>
    .byte $20    ; <み>
    .byte $A0    ; <が>
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $AF    ; <ば>
    .byte $7A    ; <、>
    .byte $DB
    .byte $12    ; <つ>
    .byte $A1    ; <ぎ>
    .byte $16    ; <に>
    .byte $00
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $2D    ; <を>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $B2    ; <べ>
    .byte $07    ; <き>
    .byte $06    ; <か>
    .byte $A0    ; <が>
    .byte $00
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $29    ; <る>
    .byte $1A    ; <は>
    .byte $A7    ; <ず>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задний_фон, $12
    .byte $FB, $01, $6A
    .byte $DC
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $49
    .byte $DE
    .byte $E1
    .byte $40    ; <「>
    .byte $4D    ; <ス>
    .byte $7D    ; <ー>
    .byte $CD    ; <パ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DF
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $DB
    .byte $00
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $02    ; <い>
    .byte $03    ; <う>
    .byte $02    ; <い>
    .byte $20    ; <み>
    .byte $AA    ; <だ>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DF
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход



off_B159_18_мисаки_и_пьер_перед_матчем:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte $FB, $01, $5C
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_номер_звука, $53
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $7A    ; <、>
    .byte $DB
    .byte $36    ; <3>
    .byte $18    ; <ね>
    .byte $2E    ; <ん>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $19    ; <の>
    .byte $00
    .byte $24    ; <や>
    .byte $08    ; <く>
    .byte $0F    ; <そ>
    .byte $08    ; <く>
    .byte $AE    ; <ど>
    .byte $05    ; <お>
    .byte $28    ; <り>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $19    ; <の>
    .byte $00
    .byte $11    ; <ち>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $03    ; <う>
    .byte $09    ; <け>
    .byte $13    ; <て>
    .byte $23    ; <も>
    .byte $27    ; <ら>
    .byte $03    ; <う>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $1E
    .byte $F7
    .byte $F3, $FF, $00, $0C
    .byte $E1
    .byte $40    ; <「>
    .byte $CE    ; <ピ>
    .byte $44    ; <エ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $7A    ; <、>
    .byte $DB
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $14    ; <と>
    .byte $DB
    .byte $00
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte con_катсцена_новая_строка
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $14    ; <と>
    .byte $19    ; <の>
    .byte $00
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $B1    ; <ぶ>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход



off_B1CE_19_цубаса_после_победы_над_францией:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte con_катсцена_номер_звука, $01
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $47
    .byte $F5, $04
    .byte $F8, $0E
    .byte $E1
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $24    ; <や>
    .byte $01    ; <あ>
    .byte $DB
    .byte $00
    .byte $0D    ; <す>
    .byte $A4    ; <ご>
    .byte $02    ; <い>
    .byte $00
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $11    ; <ち>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $AA    ; <だ>
    .byte $14    ; <と>
    .byte $00
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $1B    ; <ひ>
    .byte $2F    ; <っ>
    .byte $0B    ; <さ>
    .byte $12    ; <つ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $19    ; <の>
    .byte $00
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $C3    ; <バ>
    .byte $7D    ; <ー>
    .byte $B7    ; <ゲ>
    .byte $6E    ; <ン>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $F8, $02
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $A5    ; <ざ>
    .byte $07    ; <き>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte $3F    ; <•>
    .byte $F8, $02
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $FB, $01, $6A
    .byte con_катсцена_номер_звука, $43
    .byte $1F    ; <ま>
    .byte $13    ; <て>
    .byte $26    ; <よ>
    .byte $79    ; <!>
    .byte $DE
    .byte $00
    .byte $1B    ; <ひ>
    .byte $2F    ; <っ>
    .byte $0B    ; <さ>
    .byte $12    ; <つ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $14    ; <と>
    .byte $02    ; <い>
    .byte $04    ; <え>
    .byte $AF    ; <ば>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $FB, $01, $08
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $23
    .byte $FB, $01, $AE
    .byte $F7
    .byte $F3, $00
    .byte $F5, $08
    .byte con_катсцена_номер_звука, $52
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $5A    ; <ハ>
    .byte $6F    ; <ッ>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FA, $10
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $FA, $11
    .byte $F5, $04
    .byte $DE
    .byte con_катсцена_номер_звука, $53
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $00
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $A9    ; <ぞ>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $4D    ; <ス>
    .byte $7D    ; <ー>
    .byte $CD    ; <パ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $19    ; <の>
    .byte $00
    .byte $02    ; <い>
    .byte $20    ; <み>
    .byte $A0    ; <が>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $24
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $5A    ; <ハ>
    .byte $73    ; <ヮ>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $19
    .byte $FB, $01, $14
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte $F3, $FF, $00, $0C
    .byte $E1
    .byte $DE
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $14    ; <と>
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $A0    ; <が>
    .byte $00
    .byte $22    ; <め>
    .byte $A5    ; <ざ>
    .byte $0D    ; <す>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $B7    ; <ゲ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $2D    ; <を>
    .byte $08    ; <く>
    .byte $20    ; <み>
    .byte $10    ; <た>
    .byte $13    ; <て>
    .byte $15    ; <な>
    .byte $A0    ; <が>
    .byte $27    ; <ら>
    .byte $00
    .byte $15    ; <な>
    .byte $05    ; <お>
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte con_катсцена_новая_строка
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $14    ; <と>
    .byte $2A    ; <れ>
    .byte $29    ; <る>
    .byte $00
    .byte $8C    ; <M>
    .byte $86    ; <F>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $10
    .byte $FB, $01, $6A
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte $E1
    .byte $40    ; <「>
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $19    ; <の>
    .byte $00
    .byte $01    ; <あ>
    .byte $19    ; <の>
    .byte $62    ; <メ>
    .byte $6F    ; <ッ>
    .byte $4E    ; <セ>
    .byte $7D    ; <ー>
    .byte $BA    ; <ジ>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $16    ; <に>
    .byte $00
    .byte $01    ; <あ>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $6C    ; <ワ>
    .byte $B9    ; <ザ>
    .byte $2D    ; <を>
    .byte $05    ; <お>
    .byte $0C    ; <し>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $5B    ; <ヒ>
    .byte $6E    ; <ン>
    .byte $54    ; <ト>
    .byte $A0    ; <が>
    .byte $00
    .byte $06    ; <か>
    .byte $08    ; <く>
    .byte $0B    ; <さ>
    .byte $2A    ; <れ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $2E
    .byte $FB, $01, $52
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte $E1
    .byte $40    ; <「>
    .byte $4D    ; <ス>
    .byte $7D    ; <ー>
    .byte $CD    ; <パ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $14    ; <と>
    .byte $02    ; <い>
    .byte $04    ; <え>
    .byte $AF    ; <ば>
    .byte con_катсцена_новая_строка
    .byte $AD    ; <で>
    .byte $2E    ; <ん>
    .byte $0E    ; <せ>
    .byte $12    ; <つ>
    .byte $19    ; <の>
    .byte $44    ; <エ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte con_катсцена_новая_строка
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $16    ; <に>
    .byte $00
    .byte $11    ; <ち>
    .byte $A0    ; <が>
    .byte $02    ; <い>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $DB
    .byte $00
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $14    ; <と>
    .byte $02    ; <い>
    .byte $04    ; <え>
    .byte $AF    ; <ば>
    .byte $DC
    .byte $00
    .byte $01    ; <あ>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $01
    .byte $DC
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $23
    .byte $FB, $01, $AD
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_номер_звука, $57
    .byte $F5, $08
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte $E1
    .byte $40    ; <「>
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DF
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход



off_B398_1A_цубаса_планирует_циклон_1:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $27
    .byte $FB, $01, $6A
    .byte $DE
    .byte con_катсцена_осветление_экрана
    .byte $F5, $0E
    .byte con_катсцена_номер_звука, $46
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $4D    ; <ス>
    .byte $7D    ; <ー>
    .byte $CD    ; <パ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $2D    ; <を>
    .byte $22    ; <め>
    .byte $A5    ; <ざ>
    .byte $0D    ; <す>
    .byte $7A    ; <、>
    .byte $14    ; <と>
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $23    ; <も>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $1A    ; <は>
    .byte $00
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $19    ; <の>
    .byte $03    ; <う>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $0C    ; <し>
    .byte $2B    ; <ろ>
    .byte $00
    .byte $1F    ; <ま>
    .byte $B3    ; <ぼ>
    .byte $2B    ; <ろ>
    .byte $0C    ; <し>
    .byte $19    ; <の>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $AA    ; <だ>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $A9    ; <ぞ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $64
    .byte $FB, $02, $BD, $9B
    .byte con_катсцена_осветление_экрана
    .byte $DC
    .byte con_катсцена_номер_звука, $04
    .byte $F8, $10
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $C2    ; <ド>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $C5    ; <ブ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $1A    ; <は>
    .byte $00
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $12    ; <つ>
    .byte $26    ; <よ>
    .byte $02    ; <い>
    .byte $00
    .byte $10    ; <た>
    .byte $13    ; <て>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $09    ; <け>
    .byte $13    ; <て>
    .byte con_катсцена_новая_строка
    .byte $1D    ; <へ>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $0B    ; <さ>
    .byte $0E    ; <せ>
    .byte $29    ; <る>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_номер_звука, $06
    .byte $F8, $10
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte $15    ; <な>
    .byte $0C    ; <し>
    .byte $AA    ; <だ>
    .byte $14    ; <と>
    .byte $00
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $C2    ; <ド>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $C5    ; <ブ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $26    ; <よ>
    .byte $28    ; <り>
    .byte $00
    .byte $27    ; <ら>
    .byte $2F    ; <っ>
    .byte $06    ; <か>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $1D    ; <へ>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $16    ; <に>
    .byte $00
    .byte $02    ; <い>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $08    ; <く>
    .byte $A0    ; <が>
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte $27    ; <ら>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $F5, $0D
    .byte $E1
    .byte $40    ; <「>
    .byte $23    ; <も>
    .byte $0C    ; <し>
    .byte $06    ; <か>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $14    ; <と>
    .byte $00
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $C2    ; <ド>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $C5    ; <ブ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $2D    ; <を>
    .byte $03    ; <う>
    .byte $11    ; <ち>
    .byte $AA    ; <だ>
    .byte $0D    ; <す>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $06    ; <か>
    .byte $00
    .byte $14    ; <と>
    .byte $08    ; <く>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $09    ; <け>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $15    ; <な>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $23    ; <も>
    .byte $0C    ; <し>
    .byte $2A    ; <れ>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $27
    .byte $FB, $01, $6A
    .byte con_катсцена_осветление_экрана
    .byte $F5, $0E
    .byte $DE
    .byte $E1
    .byte $40    ; <「>
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $19    ; <の>
    .byte $1B    ; <ひ>
    .byte $20    ; <み>
    .byte $12    ; <つ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $00
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $00
    .byte $1F    ; <ま>
    .byte $B3    ; <ぼ>
    .byte $2B    ; <ろ>
    .byte $0C    ; <し>
    .byte $19    ; <の>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $AE    ; <ど>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $20    ; <み>
    .byte $12    ; <つ>
    .byte $A0    ; <が>
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход



off_B4F1_1B_цубаса_планирует_циклон_2:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte $FB, $01, $52
    .byte $DE
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $5A
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $10    ; <た>
    .byte $AA    ; <だ>
    .byte $00
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $13    ; <て>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $C2    ; <ド>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $C5    ; <ブ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $1A    ; <は>
    .byte $00
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $AE    ; <ど>
    .byte $00
    .byte $02    ; <い>
    .byte $1F    ; <ま>
    .byte $19    ; <の>
    .byte $1F    ; <ま>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $1A    ; <は>
    .byte $00
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $02    ; <い>
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte con_катсцена_новая_строка
    .byte $1D    ; <へ>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $27    ; <ら>
    .byte $2A    ; <れ>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $00
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $0D    ; <す>
    .byte $2A    ; <れ>
    .byte $AF    ; <ば>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_затемнение_экрана
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $26
    .byte $FB, $01, $6A
    .byte con_катсцена_осветление_экрана
    .byte $F5, $0E
    .byte con_катсцена_номер_звука, $55
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $06    ; <か>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $0D    ; <す>
    .byte $A4    ; <ご>
    .byte $02    ; <い>
    .byte $00
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $AA    ; <だ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $15    ; <な>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $5D    ; <ヘ>
    .byte $C1    ; <デ>
    .byte $74    ; <ィ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $15    ; <な>
    .byte $0C    ; <し>
    .byte $AD    ; <で>
    .byte $00
    .byte $34    ; <1>
    .byte $33    ; <0>
    .byte $33    ; <0>
    .byte $33    ; <0>
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $23    ; <も>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $07    ; <き>
    .byte $2B    ; <ろ>
    .byte $08    ; <く>
    .byte $2D    ; <を>
    .byte $00
    .byte $12    ; <つ>
    .byte $08    ; <く>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $A6    ; <じ>
    .byte $B1    ; <ぶ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $00
    .byte $5A    ; <ハ>
    .byte $6E    ; <ン>
    .byte $C1    ; <デ>
    .byte $2D    ; <を>
    .byte $0A    ; <こ>
    .byte $08    ; <く>
    .byte $1C    ; <ふ>
    .byte $08    ; <く>
    .byte $0C    ; <し>
    .byte con_катсцена_новая_строка
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $0E    ; <せ>
    .byte $02    ; <い>
    .byte $0B    ; <さ>
    .byte $0E    ; <せ>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $44    ; <エ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $0E    ; <せ>
    .byte $22    ; <め>
    .byte $13    ; <て>
    .byte $DB
    .byte $00
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $2D    ; <を>
    .byte $03    ; <う>
    .byte $12    ; <つ>
    .byte con_катсцена_новая_строка
    .byte $5B    ; <ヒ>
    .byte $6E    ; <ン>
    .byte $54    ; <ト>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $AD    ; <で>
    .byte $23    ; <も>
    .byte $00
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $AF    ; <ば>
    .byte $15    ; <な>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $FB, $02, $6A, $92
    .byte $DF
    .byte $FB, $01, $08
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $23
    .byte $FB, $01, $AE
    .byte $F7
    .byte $F3, $00
    .byte $F5, $09
    .byte con_катсцена_номер_звука, $43
    .byte $DE
    .byte con_катсцена_номер_звука, $49
    .byte $E1
    .byte $40    ; <「>
    .byte $1F    ; <ま>
    .byte $13    ; <て>
    .byte $26    ; <よ>
    .byte $79    ; <!>
    .byte $DE
    .byte $00
    .byte $23    ; <も>
    .byte $0C    ; <し>
    .byte $00
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $11    ; <ち>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $5D    ; <ヘ>
    .byte $C1    ; <デ>
    .byte $74    ; <ィ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $19    ; <の>
    .byte $16    ; <に>
    .byte $A0    ; <が>
    .byte $13    ; <て>
    .byte $15    ; <な>
    .byte $00
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $4E    ; <セ>
    .byte $6E    ; <ン>
    .byte $50    ; <タ>
    .byte $68    ; <リ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $A0    ; <が>
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte $00
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $78    ; <?>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $16    ; <に>
    .byte $00
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte con_катсцена_новая_строка
    .byte $14    ; <と>
    .byte $13    ; <て>
    .byte $23    ; <も>
    .byte $34    ; <1>
    .byte $33    ; <0>
    .byte $33    ; <0>
    .byte $33    ; <0>
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $1A    ; <は>
    .byte $00
    .byte $61    ; <ム>
    .byte $68    ; <リ>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $06    ; <か>
    .byte $08    ; <く>
    .byte $A6    ; <じ>
    .byte $12    ; <つ>
    .byte $16    ; <に>
    .byte $00
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $2D    ; <を>
    .byte $14    ; <と>
    .byte $29    ; <る>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte con_катсцена_новая_строка
    .byte $D0    ; <ペ>
    .byte $55    ; <ナ>
    .byte $69    ; <ル>
    .byte $53    ; <テ>
    .byte $74    ; <ィ>
    .byte $44    ; <エ>
    .byte $68    ; <リ>
    .byte $41    ; <ア>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $00
    .byte $1A    ; <は>
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte con_катсцена_новая_строка
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $1A    ; <は>
    .byte $A7    ; <ず>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $A0    ; <が>
    .byte $00
    .byte $5D    ; <ヘ>
    .byte $C1    ; <デ>
    .byte $74    ; <ィ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $19    ; <の>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $03    ; <う>
    .byte $07    ; <き>
    .byte $AA    ; <だ>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $00
    .byte $03    ; <う>
    .byte $12    ; <つ>
    .byte $00
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte con_катсцена_новая_строка
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $19    ; <の>
    .byte $5A    ; <ハ>
    .byte $6E    ; <ン>
    .byte $C1    ; <デ>
    .byte $1A    ; <は>
    .byte $00
    .byte $15    ; <な>
    .byte $08    ; <く>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $DB
    .byte $00
    .byte $02    ; <い>
    .byte $1F    ; <ま>
    .byte $19    ; <の>
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $19    ; <の>
    .byte $1D    ; <へ>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $2D    ; <を>
    .byte $00
    .byte $A9    ; <ぞ>
    .byte $03    ; <う>
    .byte $1C    ; <ふ>
    .byte $08    ; <く>
    .byte $AD    ; <で>
    .byte $07    ; <き>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $AF    ; <ば>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $14    ; <と>
    .byte $02    ; <い>
    .byte $04    ; <え>
    .byte $AF    ; <ば>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DF
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $AD
    .byte $F5, $09
    .byte con_катсцена_номер_звука, $57
    .byte $E1
    .byte $40    ; <「>
    .byte $1F    ; <ま>
    .byte $0B    ; <さ>
    .byte $06    ; <か>
    .byte $79    ; <!>
    .byte $DB
    .byte $00
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $19    ; <の>
    .byte $1B    ; <ひ>
    .byte $20    ; <み>
    .byte $12    ; <つ>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $01    ; <あ>
    .byte $0F    ; <そ>
    .byte $0A    ; <こ>
    .byte $16    ; <に>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход



off_B71E_1C_цубаса_изучил_циклон:
    .byte $E8, $01
    .byte $DE
    .byte con_катсцена_задний_фон, $3F
    .byte $FB, $01, $AC
    .byte con_катсцена_номер_звука, $70
    .byte $DE
    .byte $F8, $11
    .byte con_катсцена_осветление_экрана
    .byte $DF
    .byte $F3, $27
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $0C
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $27
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $0C
    .byte $D9
    .byte $F3, $11
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3, $0C
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $11
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3, $0C
    .byte con_катсцена_номер_звука, $30
    .byte $DF
    .byte $F3, $11
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $0C
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $11
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $0C
    .byte $D9
    .byte $F3, $11
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3, $0C
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $11
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3, $0C
    .byte $DE
    .byte $F3, $27
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $0C
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $27
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $0C
    .byte con_катсцена_номер_звука, $30
    .byte $F3, $11
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3, $0C
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $11
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3, $0C
    .byte con_катсцена_номер_звука, $30
    .byte $DE
    .byte con_катсцена_номер_звука, $4B
    .byte $DF
    .byte $E1
    .byte $40    ; <「>
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $1A    ; <は>
    .byte $7A    ; <、>
    .byte $DB
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $09    ; <け>
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $11    ; <ち>
    .byte $A0    ; <が>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $AA    ; <だ>
    .byte $14    ; <と>
    .byte $00
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $00
    .byte $05    ; <お>
    .byte $23    ; <も>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $AE    ; <ど>
    .byte $00
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $19    ; <の>
    .byte $1B    ; <ひ>
    .byte $20    ; <み>
    .byte $12    ; <つ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $00
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $19    ; <の>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $0B    ; <さ>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $5D    ; <ヘ>
    .byte $C1    ; <デ>
    .byte $74    ; <ィ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $19    ; <の>
    .byte $16    ; <に>
    .byte $A0    ; <が>
    .byte $13    ; <て>
    .byte $15    ; <な>
    .byte $00
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $A0    ; <が>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $2D    ; <を>
    .byte $03    ; <う>
    .byte $12    ; <つ>
    .byte $10    ; <た>
    .byte $22    ; <め>
    .byte $19    ; <の>
    .byte $00
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $08    ; <く>
    .byte $03    ; <う>
    .byte $11    ; <ち>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $AD    ; <で>
    .byte $00
    .byte $AA    ; <だ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte con_катсцена_мячик
    .byte $F3, $27
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $0C
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $27
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $0C
    .byte con_катсцена_номер_звука, $30
    .byte $D9
    .byte $F3, $11
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3, $0C
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $11
    .byte con_катсцена_номер_звука, $30
    .byte $DD
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $36
    .byte $FB, $02, $73, $74
    .byte $F3, $00
    .byte $F5, $03
    .byte con_катсцена_номер_звука, $0E
    .byte $DB
    .byte con_катсцена_номер_звука, $10
    .byte $F5, $FF
    .byte $FB, $02, $88, $87
    .byte $F3, $00
    .byte $DB
    .byte con_катсцена_номер_звука, $5F
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $16    ; <に>
    .byte $00
    .byte $C3    ; <バ>
    .byte $6F    ; <ッ>
    .byte $48    ; <ク>
    .byte $4D    ; <ス>
    .byte $CE    ; <ピ>
    .byte $6E    ; <ン>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $09    ; <け>
    .byte $13    ; <て>
    .byte con_катсцена_новая_строка
    .byte $A6    ; <じ>
    .byte $B1    ; <ぶ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $1F    ; <ま>
    .byte $03    ; <う>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte $00
    .byte $09    ; <け>
    .byte $28    ; <り>
    .byte $01    ; <あ>
    .byte $A3    ; <げ>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $27    ; <ら>
    .byte $2F    ; <っ>
    .byte $06    ; <か>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $C2    ; <ド>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $C5    ; <ブ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $09    ; <け>
    .byte $29    ; <る>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_мячик
    .byte $FB, $02, $BE, $72
    .byte con_катсцена_номер_звука, $10
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $68
    .byte $FB, $03, $89, $AA, $BF
    .byte con_катсцена_номер_звука, $09
    .byte con_катсцена_осветление_экрана
    .byte $E1
    .byte $40    ; <「>
    .byte $09    ; <け>
    .byte $28    ; <り>
    .byte $01    ; <あ>
    .byte $A3    ; <げ>
    .byte $10    ; <た>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte con_катсцена_номер_звука, $6B
    .byte $00
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $08    ; <く>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $19    ; <の>
    .byte $4D    ; <ス>
    .byte $CE    ; <ピ>
    .byte $7D    ; <ー>
    .byte $C2    ; <ド>
    .byte $14    ; <と>
    .byte $00
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $C2    ; <ド>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $C5    ; <ブ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte con_катсцена_номер_звука, $11
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $19    ; <の>
    .byte $CD    ; <パ>
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $6B
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $2F    ; <っ>
    .byte $12    ; <つ>
    .byte $19    ; <の>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $A0    ; <が>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $14    ; <と>
    .byte $12    ; <つ>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $1A    ; <は>
    .byte $00
    .byte $21    ; <む>
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $2D    ; <を>
    .byte $1B    ; <ひ>
    .byte $22    ; <め>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_мячик
    .byte $F3, $FF, $25, $43
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_затемнение_экрана
    .byte $FA, $48
    .byte $FB, $01, $35
    .byte con_катсцена_осветление_экрана
    .byte $DF
    .byte $DF
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $0A    ; <こ>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $26    ; <よ>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $16    ; <に>
    .byte $00
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $2D    ; <を>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FA, $53
    .byte $FB, $01, $AB
    .byte $F7
    .byte $F3, $00
    .byte $F8, $11
    .byte $E1
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $AE    ; <ど>
    .byte $DB
    .byte $00
    .byte $15    ; <な>
    .byte $20    ; <み>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte con_катсцена_новая_строка
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $A0    ; <が>
    .byte $00
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $2D    ; <を>
    .byte $03    ; <う>
    .byte $12    ; <つ>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $F3, $27
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $0C
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $27
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $0C
    .byte con_катсцена_номер_звука, $30
    .byte $D9
    .byte $F3, $11
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3, $0C
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $11
    .byte con_катсцена_номер_звука, $30
    .byte $DB
    .byte con_катсцена_затереть_текст
    .byte $FA, $05
    .byte $FB, $01, $A4
    .byte $F7
    .byte $F3, $FF, $13, $01
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte con_катсцена_номер_звука, $01
    .byte $F5, $09
    .byte $0C    ; <し>
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte con_катсцена_затереть_текст
    .byte $FA, $21
    .byte $FB, $02, $73, $74
    .byte $F7
    .byte $F3, $00
    .byte $F5, $03
    .byte con_катсцена_номер_звука, $0E
    .byte $DB
    .byte con_катсцена_номер_звука, $10
    .byte $F5, $FF
    .byte $FA, $02
    .byte $FB, $01, $5B
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $74    ; <ィ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DA
    .byte con_катсцена_затереть_текст
    .byte $FA, $09
    .byte $FB, $01, $43
    .byte $F7
    .byte $F3, $FF, $03, $11
    .byte $F5, $07
    .byte con_катсцена_номер_звука, $0E
    .byte $D9
    .byte con_катсцена_номер_звука, $0B
    .byte $DA
    .byte con_катсцена_номер_звука, $09
    .byte $DC
    .byte $F5, $FF
    .byte $F3, $FF, $25, $43
    .byte con_катсцена_номер_звука, $60
    .byte $D9
    .byte con_катсцена_номер_звука, $61
    .byte $DA
    .byte con_катсцена_номер_звука, $24
    .byte $DA
    .byte con_катсцена_номер_звука, $24
    .byte $DE
    .byte $DF
    .byte $FA, $3E
    .byte $FB, $02, $A7, $A8
    .byte $F8, $12
    .byte $F7
    .byte $FA, $41
    .byte $F8, $11
    .byte $F3, $FF, $28, $44
    .byte $DD
    .byte $F3, $FF, $29, $45
    .byte $DD
    .byte con_катсцена_номер_звука, $70
    .byte $F3, $FF, $2A, $1E
    .byte $DF
    .byte $DF
    .byte $DF
    .byte con_катсцена_скорость_текста
    .byte $0C    ; <し>
    .byte $E1
    .byte $40    ; <「>
    .byte $AD    ; <で>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DE
    .byte con_катсцена_скорость_текста
    .byte $06    ; <か>
    .byte $AD    ; <で>
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $45
    .byte $DC
    .byte $F3, $2B
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $2A
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $2B
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $2A
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $FA, $23
    .byte $FB, $01, $AD
    .byte $F7
    .byte $F3, $00
    .byte $F5, $09
    .byte con_катсцена_номер_звука, $30
    .byte $E1
    .byte $40    ; <「>
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $A0    ; <が>
    .byte $DA
    .byte $00
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $0E    ; <せ>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $A9    ; <ぞ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $F5, $09
    .byte con_катсцена_номер_звука, $30
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход



off_BA74_1D_после_победы_над_аргентиной:
    .byte $E8, $01
    .byte $DE
    .byte con_катсцена_задний_фон, $06
    .byte $FB, $01, $A3
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $25
    .byte $F5, $08
    .byte $DA
    .byte $F7
    .byte $F5, $04
    .byte $DC
    .byte con_катсцена_номер_звука, $47
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $1B    ; <ひ>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $A0    ; <が>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte $FB, $01, $06
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $1F    ; <ま>
    .byte $1F    ; <ま>
    .byte $00
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $07    ; <き>
    .byte $16    ; <に>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $1D    ; <へ>
    .byte con_катсцена_новая_строка
    .byte $12    ; <つ>
    .byte $2F    ; <っ>
    .byte $C8    ; <ぱ>
    .byte $0C    ; <し>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $03    ; <う>
    .byte $2E    ; <ん>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $53
    .byte $DE
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста
    .byte $06    ; <か>
    .byte $00
    .byte $06    ; <か>
    .byte $08    ; <く>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $A6    ; <じ>
    .byte $31    ; <ゅ>
    .byte $2E    ; <ん>
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $1D    ; <へ>
    .byte $00
    .byte $4A    ; <コ>
    .byte $5F    ; <マ>
    .byte $2D    ; <を>
    .byte $0D    ; <す>
    .byte $0D    ; <す>
    .byte $22    ; <め>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $19    ; <の>
    .byte $0A    ; <こ>
    .byte $28    ; <り>
    .byte $00
    .byte $36    ; <3>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $01    ; <あ>
    .byte $14    ; <と>
    .byte $2D    ; <を>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $19    ; <の>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $16    ; <に>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $11
    .byte $FB, $01, $5C
    .byte $F3, $00
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $F0
    .byte $4E    ; <セ>
    .byte $22    ; <め>
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $10
    .byte $FB, $01, $5A
    .byte $F3, $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $2E
    .byte $FB, $01, $21
    .byte $F3, $00
    .byte $56    ; <ニ>
    .byte $4C    ; <シ>
    .byte $C2    ; <ド>
    .byte $42    ; <イ>
    .byte $52    ; <ツ>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $42
    .byte $FB, $02, $98, $8F
    .byte $F3, $00
    .byte $DA
    .byte con_катсцена_номер_звука, $30
    .byte $12    ; <つ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $00
    .byte $C6    ; <ベ>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $37    ; <4>
    .byte $A0    ; <が>
    .byte $0F    ; <そ>
    .byte $2B    ; <ろ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $EE
    .byte con_катсцена_задний_фон, $28
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $3E
    .byte con_катсцена_скорость_текста
    .byte $06    ; <か>
    .byte $F0
    .byte $0D    ; <す>
    .byte $21    ; <む>
    .byte $00
    .byte $26    ; <よ>
    .byte $08    ; <く>
    .byte $A6    ; <じ>
    .byte $12    ; <つ>
    .byte con_катсцена_новая_строка
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $C2    ; <ド>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $00
    .byte $A6    ; <じ>
    .byte $31    ; <ゅ>
    .byte $2E    ; <ん>
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte con_катсцена_новая_строка
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $34    ; <1>
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $00
    .byte $91    ; <V>
    .byte $8F    ; <S>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_вид_окна_текста
    .byte $01    ; <あ>
    .byte $EC, $00
    .byte con_катсцена_задний_фон, $01
    .byte $FB, $01, $6F
    .byte con_катсцена_номер_звука, $62
    .byte $F8, $0A
    .byte $F3, $00
    .byte $F5, $00
    .byte $F0
    .byte $49    ; <ケ>
    .byte $22    ; <め>
    .byte $0B    ; <さ>
    .byte $73    ; <ヮ>
    .byte $00
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $00
    .byte $91    ; <V>
    .byte $8F    ; <S>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte con_катсцена_новая_строка
    .byte $14    ; <と>
    .byte $08    ; <く>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $1A    ; <は>
    .byte $00
    .byte $33    ; <0>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $36    ; <3>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $00
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $CE    ; <ピ>
    .byte $6E    ; <ン>
    .byte $51    ; <チ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $19    ; <の>
    .byte $0A    ; <こ>
    .byte $28    ; <り>
    .byte $A6    ; <じ>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $1A    ; <は>
    .byte $00
    .byte $01    ; <あ>
    .byte $14    ; <と>
    .byte $2C    ; <わ>
    .byte $A7    ; <ず>
    .byte $06    ; <か>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $E8, $01
    .byte $EE
    .byte $EC, $FF
    .byte con_катсцена_задний_фон, $3B
    .byte $FB, $01, $7A
    .byte $F3, $00
    .byte $F5, $08
    .byte con_катсцена_номер_звука, $26
    .byte $E1
    .byte $40    ; <「>
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $19    ; <の>
    .byte $0F    ; <そ>
    .byte $0A    ; <こ>
    .byte $AB    ; <ぢ>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $2D    ; <を>
    .byte $00
    .byte $20    ; <み>
    .byte $0E    ; <せ>
    .byte $13    ; <て>
    .byte $24    ; <や>
    .byte $29    ; <る>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $02    ; <い>
    .byte $08    ; <く>
    .byte $A9    ; <ぞ>
    .byte $00
    .byte $55    ; <ナ>
    .byte $D1    ; <ポ>
    .byte $6A    ; <レ>
    .byte $45    ; <オ>
    .byte $6E    ; <ン>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $7B
    .byte $F7
    .byte $F3, $00
    .byte $F5, $08
    .byte con_катсцена_номер_звука, $26
    .byte $E1
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $00
    .byte $CE    ; <ピ>
    .byte $44    ; <エ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte con_катсцена_затереть_текст
    .byte $FA, $59
    .byte $FB, $01, $83
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $09
    .byte $F5, $01
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte con_катсцена_вид_окна_текста
    .byte $01    ; <あ>
    .byte $EC, $00
    .byte $AD    ; <で>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte $DA
    .byte $00
    .byte $4D    ; <ス>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $BE    ; <ダ>
    .byte $7D    ; <ー>
    .byte $47    ; <キ>
    .byte $70    ; <ャ>
    .byte $59    ; <ノ>
    .byte $6E    ; <ン>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $FA, $40
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FB, $03, $C0, $7E, $94
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $0B
    .byte $47    ; <キ>
    .byte $7D    ; <ー>
    .byte $CD    ; <パ>
    .byte $7D    ; <ー>
    .byte $00
    .byte $B7    ; <ゲ>
    .byte $69    ; <ル>
    .byte $53    ; <テ>
    .byte $74    ; <ィ>
    .byte $4D    ; <ス>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte con_катсцена_новая_строка
    .byte $4D    ; <ス>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $BE    ; <ダ>
    .byte con_катсцена_номер_звука, $2A
    .byte $F3, $1E
    .byte $7D    ; <ー>
    .byte $47    ; <キ>
    .byte $70    ; <ャ>
    .byte $59    ; <ノ>
    .byte $6E    ; <ン>
    .byte $2D    ; <を>
    .byte $14    ; <と>
    .byte $22    ; <め>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $01
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $3A
    .byte $FB, $01, $8B
    .byte $F3, $00
    .byte $F5, $04
    .byte con_катсцена_номер_звука, $66
    .byte con_катсцена_скорость_текста
    .byte $06    ; <か>
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $00
    .byte $0C    ; <し>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $12    ; <つ>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $EE
    .byte $EC, $FF
    .byte con_катсцена_задний_фон, $02
    .byte $FB, $01, $4B
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $46
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $A0    ; <が>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FA, $10
    .byte $FB, $01, $5D
    .byte $F7
    .byte $F3, $00
    .byte $F5, $04
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $1F    ; <ま>
    .byte $7A    ; <、>
    .byte $DC
    .byte $1F    ; <ま>
    .byte $09    ; <け>
    .byte $10    ; <た>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $02
    .byte $FB, $01, $32
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $A0    ; <が>
    .byte $00
    .byte $01    ; <あ>
    .byte $2A    ; <れ>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $00
    .byte $08    ; <く>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $A0    ; <が>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $23    ; <も>
    .byte $00
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $CC    ; <ぽ>
    .byte $03    ; <う>
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $16    ; <に>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $5B
    .byte $FB, $01, $4A
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte $EC, $00
    .byte $42    ; <イ>
    .byte $50    ; <タ>
    .byte $68    ; <リ>
    .byte $41    ; <ア>
    .byte $3F    ; <•>
    .byte $42    ; <イ>
    .byte $6E    ; <ン>
    .byte $50    ; <タ>
    .byte $7D    ; <ー>
    .byte $60    ; <ミ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $19    ; <の>
    .byte $00
    .byte $CF    ; <プ>
    .byte $6B    ; <ロ>
    .byte $87    ; <G>
    .byte $8B    ; <K>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $47    ; <キ>
    .byte $7D    ; <ー>
    .byte $CD    ; <パ>
    .byte $7D    ; <ー>
    .byte $5F    ; <マ>
    .byte $4C    ; <シ>
    .byte $6E    ; <ン>
    .byte $19    ; <の>
    .byte $00
    .byte $02    ; <い>
    .byte $20    ; <み>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte $14    ; <と>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $F4, $03
    .byte $FB, $01, $3A
    .byte con_катсцена_номер_звука, $15
    .byte con_катсцена_закрыть_рот
    .byte $F4, $01
    .byte $B7    ; <ゲ>
    .byte $69    ; <ル>
    .byte $53    ; <テ>
    .byte $74    ; <ィ>
    .byte $4D    ; <ス>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $2D    ; <を>
    .byte $08    ; <く>
    .byte $2C    ; <わ>
    .byte $04    ; <え>
    .byte $DB
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $1D    ; <へ>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $10    ; <た>
    .byte $1A    ; <は>
    .byte $0C    ; <し>
    .byte $28    ; <り>
    .byte $1F    ; <ま>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $01    ; <あ>
    .byte $14    ; <と>
    .byte $00
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $35    ; <2>
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $00
    .byte $91    ; <V>
    .byte $8F    ; <S>
    .byte $00
    .byte $56    ; <ニ>
    .byte $4C    ; <シ>
    .byte $C2    ; <ド>
    .byte $42    ; <イ>
    .byte $52    ; <ツ>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $47    ; <キ>
    .byte $6F    ; <ッ>
    .byte $48    ; <ク>
    .byte $45    ; <オ>
    .byte $5C    ; <フ>
    .byte $AD    ; <で>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход



off_BDD6_1E_цубаса_и_шнайдер_перед_матчем:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte $FB, $01, $21
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_номер_звука, $53
    .byte $DD
    .byte con_катсцена_закрыть_рот
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $3E    ; <Jr>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $19    ; <の>
    .byte $00
    .byte $06    ; <か>
    .byte $28    ; <り>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $0A    ; <こ>
    .byte $0A    ; <こ>
    .byte $AD    ; <で>
    .byte $00
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $0B    ; <さ>
    .byte $0E    ; <せ>
    .byte $13    ; <て>
    .byte $23    ; <も>
    .byte $27    ; <ら>
    .byte $03    ; <う>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $6A
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $DD
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $0D    ; <す>
    .byte $DB
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $14    ; <と>
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $03    ; <う>
    .byte $10    ; <た>
    .byte $22    ; <め>
    .byte $16    ; <に>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $7A    ; <、>
    .byte $DB
    .byte $56    ; <ニ>
    .byte $4C    ; <シ>
    .byte $C2    ; <ド>
    .byte $42    ; <イ>
    .byte $52    ; <ツ>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $A7    ; <ず>
    .byte $10    ; <た>
    .byte $05    ; <お>
    .byte $0D    ; <す>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte $F5, $FF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход



off_BE49_1F_перед_матчем_с_бразилией:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $02
    .byte $FB, $01, $0A
    .byte con_катсцена_номер_звука, $01
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $49
    .byte $DE
    .byte con_катсцена_закрыть_рот
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $DB
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FA, $11
    .byte $FB, $01, $16
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $F5, $08
    .byte $DA
    .byte $F5, $04
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $2A
    .byte $FB, $01, $B5
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte $DC
    .byte $DF
    .byte $DF
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $7A    ; <、>
    .byte $DB
    .byte $24    ; <や>
    .byte $08    ; <く>
    .byte $0F    ; <そ>
    .byte $08    ; <く>
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $28    ; <り>
    .byte con_катсцена_новая_строка
    .byte $23    ; <も>
    .byte $AE    ; <ど>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte $A9    ; <ぞ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte $EE
    .byte con_катсцена_задний_фон, $28
    .byte con_катсцена_осветление_экрана
    .byte $F0
    .byte $89    ; <I>
    .byte $21    ; <む>
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $A0    ; <が>
    .byte $00
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $4C
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $2B
    .byte $FA, $11
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte $DC
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte $EC, $05
    .byte $F0
    .byte $49    ; <ケ>
    .byte $22    ; <め>
    .byte $0B    ; <さ>
    .byte $73    ; <ヮ>
    .byte $00
    .byte $12    ; <つ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $07    ; <き>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $5C    ; <フ>
    .byte $74    ; <ィ>
    .byte $55    ; <ナ>
    .byte $7D    ; <ー>
    .byte $6A    ; <レ>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $A5    ; <ざ>
    .byte $29    ; <る>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $7A    ; <、>
    .byte $C6    ; <ベ>
    .byte $6E    ; <ン>
    .byte $51    ; <チ>
    .byte $AD    ; <で>
    .byte $00
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $A4    ; <ご>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $60    ; <ミ>
    .byte $7D    ; <ー>
    .byte $53    ; <テ>
    .byte $74    ; <ィ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $16    ; <に>
    .byte $00
    .byte $1A    ; <は>
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $1F    ; <ま>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_номер_звука, $62
    .byte $FB, $01, $63
    .byte $F7
    .byte $F3, $FF, $00, $0F
    .byte $FA, $10
    .byte con_катсцена_закрыть_рот
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $C2    ; <ド>
    .byte $1A    ; <は>
    .byte $00
    .byte $0A    ; <こ>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $1E    ; <ほ>
    .byte $00
    .byte $55    ; <ナ>
    .byte $6E    ; <ン>
    .byte $C3    ; <バ>
    .byte $7D    ; <ー>
    .byte $6C    ; <ワ>
    .byte $6E    ; <ン>
    .byte con_катсцена_новая_строка
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $14    ; <と>
    .byte con_катсцена_мячик
    .byte con_катсцена_номер_звука, $62
    .byte $FB, $01, $67
    .byte $F7
    .byte $F3, $00
    .byte $A3    ; <げ>
    .byte $07    ; <き>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $B6    ; <グ>
    .byte $69    ; <ル>
    .byte $7D    ; <ー>
    .byte $CF    ; <プ>
    .byte $16    ; <に>
    .byte $00
    .byte $1A    ; <は>
    .byte $02    ; <い>
    .byte $28    ; <り>
    .byte $15    ; <な>
    .byte $A0    ; <が>
    .byte $27    ; <ら>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte $AD    ; <で>
    .byte $00
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $17    ; <ぬ>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $14    ; <と>
    .byte $19    ; <の>
    .byte $00
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $0A    ; <こ>
    .byte $15    ; <な>
    .byte $2C    ; <わ>
    .byte $2A    ; <れ>
    .byte $1F    ; <ま>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $F5, $FF
    .byte $FA, $43
    .byte $FB, $01, $B1
    .byte $F7
    .byte $F3, $00
    .byte $1A    ; <は>
    .byte $10    ; <た>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $28    ; <り>
    .byte $19    ; <の>
    .byte $22    ; <め>
    .byte $A0    ; <が>
    .byte $20    ; <み>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $AE    ; <ど>
    .byte $11    ; <ち>
    .byte $27    ; <ら>
    .byte $16    ; <に>
    .byte $00
    .byte $1E    ; <ほ>
    .byte $1E    ; <ほ>
    .byte $04    ; <え>
    .byte $21    ; <む>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $03    ; <う>
    .byte $2E    ; <ん>
    .byte $22    ; <め>
    .byte $02    ; <い>
    .byte $19    ; <の>
    .byte $47    ; <キ>
    .byte $6F    ; <ッ>
    .byte $48    ; <ク>
    .byte $45    ; <オ>
    .byte $5C    ; <フ>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $00
    .byte $01    ; <あ>
    .byte $14    ; <と>
    .byte $38    ; <5>
    .byte $1C    ; <ふ>
    .byte $2E    ; <ん>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
; скрытая катсцена
    .byte $F4, $06, $04
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход
