.segment "BANK_05"
.include "copy_bank_ram.inc"
; тут только данные
; поинтеры в 0x000485
; перемещать код можно только после начальной таблицы поинтеров

    .word off_A020_10_цубаса_и_вакабаяши_перед_матчем
    .word off_A099_11_цубаса_и_вакабаяши_после_матча
    .word off_A134_12_цубаса_и_мисаки_перед_матчем
    .word off_A195_13_после_победы_над_японией
    .word off_A5D6_14_после_победы_над_китаем
    .word off_A703_15_после_победы_над_кореей
    .word off_AC95_16_разговор_репортеров
    .word off_AF35_17_цубаса_читает_письмо
    .word off_B159_18_мисаки_и_пьер_перед_матчем
    .word off_B1CE_19_цубаса_после_победы_над_францией
    .word off_B398_1A_цубаса_планирует_циклон_1
    .word off_B4F1_1B_цубаса_планирует_циклон_2
    .word off_B71E_1C_цубаса_изучил_циклон
    .word off_BA74_1D_после_победы_над_аргентиной
    .word off_BDD6_1E_цубаса_и_шнайдер_перед_матчем
    .word off_BE49_1F_перед_матчем_с_бразилией



off_A020_10_цубаса_и_вакабаяши_перед_матчем:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $24
    .byte $FB
    .byte $01    ; <あ>
    .byte $34    ; <1>
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $53
    .byte $DD
    .byte $EF
    .byte $E1
    .byte $40    ; <「>
    .byte $3E    ; <Jr>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $00
    .byte $36    ; <3>
    .byte $18    ; <ね>
    .byte $2E    ; <ん>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $12    ; <つ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $00
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $A0    ; <が>
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $19    ; <の>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $2D    ; <を>
    .byte $00
    .byte $20    ; <み>
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
    .byte $FA, $10
    .byte $FB
    .byte $01    ; <あ>
    .byte $58    ; <ネ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $AF    ; <ば>
    .byte $24    ; <や>
    .byte $0C    ; <し>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $00
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $A7    ; <ず>
    .byte con_катсцена_новая_строка
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $2D    ; <を>
    .byte $07    ; <き>
    .byte $22    ; <め>
    .byte $13    ; <て>
    .byte $20    ; <み>
    .byte $0E    ; <せ>
    .byte $29    ; <る>
    .byte $A9    ; <ぞ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход



off_A099_11_цубаса_и_вакабаяши_после_матча:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte $FB
    .byte $01    ; <あ>
    .byte $34    ; <1>
    .byte $DE
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $47
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $1F    ; <ま>
    .byte $10    ; <た>
    .byte $00
    .byte $03    ; <う>
    .byte $AD    ; <で>
    .byte $2D    ; <を>
    .byte $01    ; <あ>
    .byte $A3    ; <げ>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $4E    ; <セ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $AF    ; <ば>
    .byte $24    ; <や>
    .byte $0C    ; <し>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $23    ; <も>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $A0    ; <が>
    .byte $00
    .byte $05    ; <お>
    .byte $2C    ; <わ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte con_катсцена_новая_строка
    .byte $02    ; <い>
    .byte $26    ; <よ>
    .byte $02    ; <い>
    .byte $26    ; <よ>
    .byte $00
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $C2    ; <ド>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $AA    ; <だ>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $34    ; <1>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $01    ; <あ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0A    ; <こ>
    .byte $2E    ; <ん>
    .byte $AE    ; <ど>
    .byte $1A    ; <は>
    .byte $00
    .byte $05    ; <お>
    .byte $10    ; <た>
    .byte $A0    ; <が>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $AD    ; <で>
    .byte $00
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $4E    ; <セ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte $22    ; <め>
    .byte $A5    ; <ざ>
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход



off_A134_12_цубаса_и_мисаки_перед_матчем:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte $FB
    .byte $01    ; <あ>
    .byte $3F    ; <•>
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_номер_звука, $53
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0A    ; <こ>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $01    ; <あ>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte $14    ; <と>
    .byte $1A    ; <は>
    .byte $00
    .byte $05    ; <お>
    .byte $23    ; <も>
    .byte $2C    ; <わ>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $4E    ; <セ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $05    ; <お>
    .byte $10    ; <た>
    .byte $A0    ; <が>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $C6    ; <ベ>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $08    ; <く>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte $F5, $FF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход



off_A195_13_после_победы_над_японией:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $0F
    .byte $FB
    .byte $01    ; <あ>
    .byte $43    ; <ウ>
    .byte con_катсцена_номер_звука, $01
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte $DC
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $4D
    .byte $E1
    .byte $40    ; <「>
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $A8    ; <ぜ>
    .byte $00
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $A0    ; <が>
    .byte $00
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $A9    ; <ぞ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $E1
    .byte $40    ; <「>
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $CD    ; <パ>
    .byte $6E    ; <ン>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $23    ; <も>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FA, $2E
    .byte $FB
    .byte $01    ; <あ>
    .byte $3B    ; <8>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F5, $04
    .byte $FA, $10
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $14    ; <と>
    .byte $1A    ; <は>
    .byte $00
    .byte $0A    ; <こ>
    .byte $0A    ; <こ>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1D    ; <へ>
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $23    ; <も>
    .byte $00
    .byte $0C    ; <し>
    .byte $2F    ; <っ>
    .byte $06    ; <か>
    .byte $28    ; <り>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $4E    ; <セ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $FA, $11
    .byte $E1
    .byte $40    ; <「>
    .byte $C3    ; <バ>
    .byte $C4    ; <ビ>
    .byte $6E    ; <ン>
    .byte $54    ; <ト>
    .byte $6E    ; <ン>
    .byte $1A    ; <は>
    .byte $00
    .byte $41    ; <ア>
    .byte $69    ; <ル>
    .byte $BC    ; <ゼ>
    .byte $6E    ; <ン>
    .byte $51    ; <チ>
    .byte $6E    ; <ン>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $41    ; <ア>
    .byte $5F    ; <マ>
    .byte $67    ; <ラ>
    .byte $43    ; <ウ>
    .byte $14    ; <と>
    .byte $C2    ; <ド>
    .byte $54    ; <ト>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $1A    ; <は>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $14    ; <と>
    .byte $1A    ; <は>
    .byte $00
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $AD    ; <で>
    .byte $23    ; <も>
    .byte $00
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $1A    ; <は>
    .byte $00
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $A7    ; <ず>
    .byte con_катсцена_новая_строка
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $20    ; <み>
    .byte $0E    ; <せ>
    .byte $29    ; <る>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $23    ; <も>
    .byte $00
    .byte $A3    ; <げ>
    .byte $2E    ; <ん>
    .byte $07    ; <き>
    .byte $AD    ; <で>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $3F    ; <•>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $4E    ; <セ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $FA, $30
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $C8    ; <ぱ>
    .byte $28    ; <り>
    .byte $00
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $14    ; <と>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $15    ; <な>
    .byte $A6    ; <じ>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $19    ; <の>
    .byte $1E    ; <ほ>
    .byte $03    ; <う>
    .byte $A0    ; <が>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $FB
    .byte $01    ; <あ>
    .byte $12    ; <つ>
    .byte con_катсцена_номер_звука, $01
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $19    ; <の>
    .byte $78    ; <?>
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $E1
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte con_катсцена_номер_звука, $48
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $26    ; <よ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $F8, $02
    .byte $0B    ; <さ>
    .byte $15    ; <な>
    .byte $04    ; <え>
    .byte $11    ; <ち>
    .byte $30    ; <ゃ>
    .byte $2E    ; <ん>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $31
    .byte $FB
    .byte $02    ; <い>
    .byte $9C
    .byte $8E    ; <L>
    .byte con_катсцена_осветление_экрана
    .byte $F5, $05
    .byte $F4
    .byte $05    ; <お>
    .byte con_катсцена_скорость_текста
    .byte $01    ; <あ>
    .byte $0D    ; <す>
    .byte $03    ; <う>
    .byte $A6    ; <じ>
    .byte $12    ; <つ>
    .byte $A4    ; <ご>
    .byte $00
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte con_катсцена_новая_строка
    .byte $E1
    .byte $A0    ; <が>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $08    ; <く>
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $08    ; <く>
    .byte $19    ; <の>
    .byte $00
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $04    ; <え>
    .byte $2E    ; <ん>
    .byte con_катсцена_новая_строка
    .byte $F4
    .byte $04    ; <え>
    .byte $F8, $0B
    .byte $DF
    .byte $F4
    .byte $05    ; <お>
    .byte $DE
    .byte $F8, $02
    .byte $F8, $0B
    .byte con_катсцена_затереть_текст
    .byte $F4
    .byte $04    ; <え>
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $23    ; <も>
    .byte $03    ; <う>
    .byte $0D    ; <す>
    .byte $A2    ; <ぐ>
    .byte con_катсцена_новая_строка
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $C2    ; <ド>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $19    ; <の>
    .byte $00
    .byte $26    ; <よ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $CF    ; <プ>
    .byte $6B    ; <ロ>
    .byte $AD    ; <で>
    .byte $00
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $24    ; <や>
    .byte $08    ; <く>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $34    ; <1>
    .byte $3B    ; <8>
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $19    ; <の>
    .byte $00
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $23    ; <も>
    .byte $AD    ; <で>
    .byte $29    ; <る>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte con_катсцена_новая_строка
    .byte $5A    ; <ハ>
    .byte $42    ; <イ>
    .byte $6A    ; <レ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $19    ; <の>
    .byte $00
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $06    ; <か>
    .byte $2C    ; <わ>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $2C    ; <わ>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $04    ; <え>
    .byte $2F    ; <っ>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $32
    .byte $FA, $33
    .byte $FB
    .byte $01    ; <あ>
    .byte $26    ; <よ>
    .byte con_катсцена_осветление_экрана
    .byte $F5, $05
    .byte $DD
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $1A    ; <は>
    .byte $00
    .byte $21    ; <む>
    .byte $06    ; <か>
    .byte $0C    ; <し>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte con_катсцена_новая_строка
    .byte $4B    ; <サ>
    .byte $6F    ; <ッ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $1B    ; <ひ>
    .byte $14    ; <と>
    .byte $0D    ; <す>
    .byte $A6    ; <じ>
    .byte $AA    ; <だ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $23    ; <も>
    .byte $19    ; <の>
    .byte $18    ; <ね>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $67    ; <ラ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $0B    ; <さ>
    .byte $15    ; <な>
    .byte $04    ; <え>
    .byte $11    ; <ち>
    .byte $30    ; <ゃ>
    .byte $2E    ; <ん>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка
    .byte $B4    ; <ガ>
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $26    ; <よ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $AD    ; <で>
    .byte $23    ; <も>
    .byte $00
    .byte $DB
    .byte $FB
    .byte $01    ; <あ>
    .byte $27    ; <ら>
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $02    ; <い>
    .byte $03    ; <う>
    .byte $14    ; <と>
    .byte $0A    ; <こ>
    .byte $2B    ; <ろ>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $27    ; <ら>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $19    ; <の>
    .byte $26    ; <よ>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $66    ; <ヨ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $DE
    .byte $FB
    .byte $01    ; <あ>
    .byte $57    ; <ヌ>
    .byte $E1
    .byte $40    ; <「>
    .byte $0B    ; <さ>
    .byte $15    ; <な>
    .byte $04    ; <え>
    .byte $11    ; <ち>
    .byte $30    ; <ゃ>
    .byte $2E    ; <ん>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $27    ; <ら>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $DA
    .byte $FB
    .byte $01    ; <あ>
    .byte $26    ; <よ>
    .byte $E1
    .byte $DE
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $01    ; <あ>
    .byte $16    ; <に>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $57    ; <ヌ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DE
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $00
    .byte $DE
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $1D    ; <へ>
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $2D    ; <を>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $F5, $FF
    .byte $FA, $34
    .byte con_катсцена_затереть_текст
    .byte $F7
    .byte con_катсцена_номер_звука, $1E
    .byte $F8, $0E
    .byte con_катсцена_номер_звука, $52
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7D    ; <ー>
    .byte $DB
    .byte $00
    .byte $0F    ; <そ>
    .byte $2B    ; <ろ>
    .byte $0F    ; <そ>
    .byte $2B    ; <ろ>
    .byte con_катсцена_новая_строка
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $A4    ; <ご>
    .byte $03    ; <う>
    .byte $A6    ; <じ>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $26    ; <よ>
    .byte $7C    ; <~>
    .byte $2E    ; <ん>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte $F8, $02
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $48
    .byte $FB
    .byte $01    ; <あ>
    .byte $08    ; <く>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $FA, $32
    .byte con_катсцена_скорость_текста
    .byte $04    ; <え>
    .byte $E1
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $A5    ; <ざ>
    .byte $07    ; <き>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $28    ; <り>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $FA, $33
    .byte $F5, $05
    .byte $DC
    .byte $FB
    .byte $01    ; <あ>
    .byte $27    ; <ら>
    .byte $DC
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte $01    ; <あ>
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $2C    ; <わ>
    .byte $10    ; <た>
    .byte $0C    ; <し>
    .byte $1A    ; <は>
    .byte $00
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $AD    ; <で>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $FB
    .byte $01    ; <あ>
    .byte $26    ; <よ>
    .byte $DD
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $1A    ; <は>
    .byte $00
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $02    ; <い>
    .byte $09    ; <け>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $09    ; <け>
    .byte $AE    ; <ど>
    .byte $DB
    .byte $00
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $66    ; <ヨ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $28    ; <り>
    .byte $A0    ; <が>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $EF
    .byte $3F    ; <•>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DE
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte $01    ; <あ>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $24    ; <や>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $41    ; <ア>
    .byte $67    ; <ラ>
    .byte $DC
    .byte $00
    .byte $05    ; <お>
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte $1F    ; <ま>
    .byte $AA    ; <だ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $66    ; <ヨ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $00
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $A5    ; <ざ>
    .byte $07    ; <き>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $0B    ; <さ>
    .byte $73    ; <ヮ>
    .byte $00
    .byte $23    ; <も>
    .byte $AE    ; <ど>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $35
    .byte $FB
    .byte $01    ; <あ>
    .byte $1A    ; <は>
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $47
    .byte $F5, $05
    .byte $F8, $0C
    .byte $DF
    .byte $DF
    .byte $F8, $02
    .byte $F8, $0C
    .byte $DC
    .byte $FB
    .byte $01    ; <あ>
    .byte $2A    ; <れ>
    .byte $E1
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $1E    ; <ほ>
    .byte $AE    ; <ど>
    .byte $18    ; <ね>
    .byte $75    ; <ェ>
    .byte $EF
    .byte $3F    ; <•>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte $FB
    .byte $01    ; <あ>
    .byte $2B    ; <ろ>
    .byte $0A    ; <こ>
    .byte $28    ; <り>
    .byte $30    ; <ゃ>
    .byte $00
    .byte $05    ; <お>
    .byte $23    ; <も>
    .byte $0C    ; <し>
    .byte $2B    ; <ろ>
    .byte $08    ; <く>
    .byte $15    ; <な>
    .byte $28    ; <り>
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $37
    .byte $FB
    .byte $01    ; <あ>
    .byte $A9    ; <ぞ>
    .byte $F8, $0D
    .byte con_катсцена_осветление_экрана
    .byte $DC
    .byte $0D    ; <す>
    .byte $03    ; <う>
    .byte $A6    ; <じ>
    .byte $12    ; <つ>
    .byte $A4    ; <ご>
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $2D    ; <を>
    .byte $19    ; <の>
    .byte $0E    ; <せ>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $E1
    .byte $1B    ; <ひ>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $07    ; <き>
    .byte $1A    ; <は>
    .byte $00
    .byte $41    ; <ア>
    .byte $BA    ; <ジ>
    .byte $41    ; <ア>
    .byte $26    ; <よ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $11    ; <ち>
    .byte con_катсцена_новая_строка
    .byte $00
    .byte $00
    .byte $4F    ; <ソ>
    .byte $43    ; <ウ>
    .byte $69    ; <ル>
    .byte $1D    ; <へ>
    .byte $14    ; <と>
    .byte $00
    .byte $14    ; <と>
    .byte $B0    ; <び>
    .byte $10    ; <た>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $DF
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_затемнение_экрана
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_выход



off_A5D6_14_после_победы_над_китаем:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte $FB
    .byte $01    ; <あ>
    .byte $22    ; <め>
    .byte $DE
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $47
    .byte $DC
    .byte $EF
    .byte $E6
    .byte $68    ; <リ>
    .byte $3F    ; <•>
    .byte $5A    ; <ハ>
    .byte $6E    ; <ン>
    .byte $58    ; <ネ>
    .byte $EF
    .byte $40    ; <「>
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $1F    ; <ま>
    .byte $09    ; <け>
    .byte $10    ; <た>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $B3    ; <ぼ>
    .byte $08    ; <く>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte $6C    ; <ワ>
    .byte $B9    ; <ザ>
    .byte $A0    ; <が>
    .byte $00
    .byte $24    ; <や>
    .byte $B1    ; <ぶ>
    .byte $27    ; <ら>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $A0    ; <が>
    .byte $00
    .byte $1A    ; <は>
    .byte $A6    ; <じ>
    .byte $22    ; <め>
    .byte $13    ; <て>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $33    ; <0>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DB
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $7A    ; <、>
    .byte $DB
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $A4    ; <ご>
    .byte $A0    ; <が>
    .byte $00
    .byte $1A    ; <は>
    .byte $15    ; <な>
    .byte $0E    ; <せ>
    .byte $29    ; <る>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $44    ; <エ>
    .byte $F7
    .byte $F3
    .byte $FF
    .byte $00
    .byte $20    ; <み>
    .byte $EF
    .byte $E7
    .byte $68    ; <リ>
    .byte $3F    ; <•>
    .byte $C3    ; <バ>
    .byte $6E    ; <ン>
    .byte $48    ; <ク>
    .byte $6E    ; <ン>
    .byte $EF
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte $00
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $11    ; <ち>
    .byte $30    ; <ゃ>
    .byte $2E    ; <ん>
    .byte $1A    ; <は>
    .byte $00
    .byte $4A    ; <コ>
    .byte $6F    ; <ッ>
    .byte $48    ; <ク>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $11    ; <ち>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $A0    ; <が>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $00
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte con_катсцена_новая_строка
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1D    ; <へ>
    .byte $1A    ; <は>
    .byte $00
    .byte $26    ; <よ>
    .byte $08    ; <く>
    .byte $00
    .byte $02    ; <い>
    .byte $08    ; <く>
    .byte $19    ; <の>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $68    ; <リ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $0C    ; <し>
    .byte $06    ; <か>
    .byte $0C    ; <し>
    .byte $DB
    .byte $00
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $00
    .byte $0F    ; <そ>
    .byte $2F    ; <っ>
    .byte $08    ; <く>
    .byte $28    ; <り>
    .byte $AA    ; <だ>
    .byte $14    ; <と>
    .byte con_катсцена_новая_строка
    .byte $AE    ; <ど>
    .byte $2F    ; <っ>
    .byte $11    ; <ち>
    .byte $A0    ; <が>
    .byte $AE    ; <ど>
    .byte $2F    ; <っ>
    .byte $11    ; <ち>
    .byte $AA    ; <だ>
    .byte $06    ; <か>
    .byte $00
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $18    ; <ね>
    .byte $75    ; <ェ>
    .byte $24    ; <や>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $22    ; <め>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $EF
    .byte $E6
    .byte $68    ; <リ>
    .byte $3F    ; <•>
    .byte $5A    ; <ハ>
    .byte $6E    ; <ン>
    .byte $58    ; <ネ>
    .byte $EF
    .byte $40    ; <「>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $0A    ; <こ>
    .byte $08    ; <く>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $16    ; <に>
    .byte $23    ; <も>
    .byte $00
    .byte $4A    ; <コ>
    .byte $6E    ; <ン>
    .byte $C4    ; <ビ>
    .byte $CF    ; <プ>
    .byte $6A    ; <レ>
    .byte $42    ; <イ>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $12    ; <つ>
    .byte $06    ; <か>
    .byte $03    ; <う>
    .byte $24    ; <や>
    .byte $12    ; <つ>
    .byte $A0    ; <が>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $03    ; <う>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $1A    ; <は>
    .byte $00
    .byte $07    ; <き>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $09    ; <け>
    .byte $2B    ; <ろ>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $66    ; <ヨ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $08    ; <く>
    .byte $00
    .byte $05    ; <お>
    .byte $B3    ; <ぼ>
    .byte $04    ; <え>
    .byte $13    ; <て>
    .byte $05    ; <お>
    .byte $08    ; <く>
    .byte $26    ; <よ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $01    ; <あ>
    .byte $28    ; <り>
    .byte $A0    ; <が>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход



off_A703_15_после_победы_над_кореей:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $0D
    .byte $FB
    .byte $01    ; <あ>
    .byte $0E    ; <せ>
    .byte con_катсцена_номер_звука, $01
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $DC
    .byte con_катсцена_номер_звука, $47
    .byte $E1
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $7D    ; <ー>
    .byte $0C    ; <し>
    .byte $00
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $11    ; <ち>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $23    ; <も>
    .byte $00
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $17    ; <ぬ>
    .byte $08    ; <く>
    .byte $A9    ; <ぞ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte $E1
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FA, $2E
    .byte $FB
    .byte $01    ; <あ>
    .byte $2D    ; <を>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $FA, $65
    .byte $F5, $04
    .byte con_катсцена_скорость_текста
    .byte $06    ; <か>
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DA
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $1D    ; <へ>
    .byte $2E    ; <ん>
    .byte $26    ; <よ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $12    ; <つ>
    .byte $F7
    .byte $F3
    .byte $FF
    .byte $13    ; <て>
    .byte $0C    ; <し>
    .byte $FA, $38
    .byte con_катсцена_номер_звука, $43
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $04    ; <え>
    .byte $2F    ; <っ>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $3D
    .byte $DC
    .byte con_катсцена_скорость_текста
    .byte $06    ; <か>
    .byte $05    ; <お>
    .byte $15    ; <な>
    .byte $A6    ; <じ>
    .byte $0A    ; <こ>
    .byte $2B    ; <ろ>
    .byte $00
    .byte $0E    ; <せ>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $08    ; <く>
    .byte $11    ; <ち>
    .byte $AD    ; <で>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $1B    ; <ひ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $A0    ; <が>
    .byte $00
    .byte $12    ; <つ>
    .byte $A1    ; <ぎ>
    .byte $12    ; <つ>
    .byte $A1    ; <ぎ>
    .byte $14    ; <と>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $15    ; <な>
    .byte $19    ; <の>
    .byte $28    ; <り>
    .byte $2D    ; <を>
    .byte $01    ; <あ>
    .byte $A3    ; <げ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $3C
    .byte $FB
    .byte $01    ; <あ>
    .byte $95
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $00
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $B2    ; <べ>
    .byte $02    ; <い>
    .byte $26    ; <よ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte con_катсцена_новая_строка
    .byte $41    ; <ア>
    .byte $69    ; <ル>
    .byte $BC    ; <ゼ>
    .byte $6E    ; <ン>
    .byte $51    ; <チ>
    .byte $6E    ; <ン>
    .byte $00
    .byte $91    ; <V>
    .byte $8F    ; <S>
    .byte $00
    .byte $43    ; <ウ>
    .byte $69    ; <ル>
    .byte $B6    ; <グ>
    .byte $41    ; <ア>
    .byte $42    ; <イ>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_осветление_экрана
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $FA, $03
    .byte $FB
    .byte $01    ; <あ>
    .byte $78    ; <?>
    .byte $F3
    .byte $FF
    .byte $14    ; <と>
    .byte $22    ; <め>
    .byte con_катсцена_номер_звука, $0B
    .byte $DA
    .byte $F5, $0C
    .byte con_катсцена_скорость_текста
    .byte $04    ; <え>
    .byte $E1
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $A0    ; <が>
    .byte $00
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DA
    .byte $5C    ; <フ>
    .byte $73    ; <ヮ>
    .byte $6E    ; <ン>
    .byte $3F    ; <•>
    .byte $C1    ; <デ>
    .byte $74    ; <ィ>
    .byte $41    ; <ア>
    .byte $4D    ; <ス>
    .byte $AA    ; <だ>
    .byte $7D    ; <ー>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $21
    .byte $FB
    .byte $02    ; <い>
    .byte $73    ; <ヮ>
    .byte $74    ; <ィ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F5, $03
    .byte con_катсцена_номер_звука, $0E
    .byte $DB
    .byte $F5, $FF
    .byte $FA, $5A
    .byte $FB
    .byte $01    ; <あ>
    .byte $01    ; <あ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $03
    .byte $FA, $20
    .byte $F7
    .byte con_катсцена_номер_звука, $04
    .byte con_катсцена_задержка
    .byte $35    ; <2>
    .byte $F7
    .byte con_катсцена_номер_звука, $05
    .byte $FA, $56
    .byte $FB
    .byte $03    ; <う>
    .byte $C0    ; <ヅ>
    .byte $A0    ; <が>
    .byte $80
    .byte $F7
    .byte con_катсцена_номер_звука, $07
    .byte $FA, $39
    .byte $FB
    .byte $01    ; <あ>
    .byte $85    ; <E>
    .byte $F7
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $5D
    .byte $F5, $04
    .byte con_катсцена_вид_окна_текста
    .byte $01    ; <あ>
    .byte $EC
    .byte $00
    .byte $07    ; <き>
    .byte $1F    ; <ま>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte $00
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $EE
    .byte con_катсцена_затереть_текст
    .byte $FA, $3A
    .byte $FB
    .byte $01    ; <あ>
    .byte $8B    ; <K>
    .byte $F7
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $66
    .byte con_катсцена_вид_окна_текста
    .byte $00
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
    .byte $DB
    .byte $41    ; <ア>
    .byte $69    ; <ル>
    .byte $BC    ; <ゼ>
    .byte $6E    ; <ン>
    .byte $51    ; <チ>
    .byte $6E    ; <ン>
    .byte $A0    ; <が>
    .byte $00
    .byte $43    ; <ウ>
    .byte $69    ; <ル>
    .byte $B6    ; <グ>
    .byte $41    ; <ア>
    .byte $42    ; <イ>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $08    ; <く>
    .byte $AA    ; <だ>
    .byte $0C    ; <し>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $EE
    .byte $EC
    .byte $FF
    .byte con_катсцена_задний_фон, $3C
    .byte $FB
    .byte $01    ; <あ>
    .byte $96
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $00
    .byte $00
    .byte $00
    .byte $66    ; <ヨ>
    .byte $7D    ; <ー>
    .byte $6B    ; <ロ>
    .byte $6F    ; <ッ>
    .byte $CD    ; <パ>
    .byte $26    ; <よ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte con_катсцена_новая_строка
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $36    ; <3>
    .byte $B6    ; <グ>
    .byte $69    ; <ル>
    .byte $7D    ; <ー>
    .byte $CF    ; <プ>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte con_катсцена_новая_строка
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $00
    .byte $91    ; <V>
    .byte $8F    ; <S>
    .byte $00
    .byte $C1    ; <デ>
    .byte $6E    ; <ン>
    .byte $5F    ; <マ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $36
    .byte con_катсцена_осветление_экрана
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte $EC
    .byte $00
    .byte con_катсцена_задний_фон, $01
    .byte $FB
    .byte $01    ; <あ>
    .byte $6F    ; <ッ>
    .byte $F3
    .byte $00
    .byte $F8, $0A
    .byte $F5, $00
    .byte con_катсцена_номер_звука, $68
    .byte con_катсцена_скорость_текста
    .byte $06    ; <か>
    .byte $CE    ; <ピ>
    .byte $44    ; <エ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $00
    .byte $5F    ; <マ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $2C    ; <わ>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DA
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $2B    ; <ろ>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $00
    .byte $55    ; <ナ>
    .byte $D1    ; <ポ>
    .byte $6A    ; <レ>
    .byte $45    ; <オ>
    .byte $6E    ; <ン>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $5C    ; <フ>
    .byte $76    ; <ォ>
    .byte $6B    ; <ロ>
    .byte $7D    ; <ー>
    .byte $16    ; <に>
    .byte $00
    .byte $01    ; <あ>
    .byte $A0    ; <が>
    .byte $29    ; <る>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $E8, $01
    .byte $EE
    .byte $EC
    .byte $FF
    .byte con_катсцена_задний_фон, $3B
    .byte $FB
    .byte $01    ; <あ>
    .byte $7A    ; <、>
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $26
    .byte $F5, $08
    .byte con_катсцена_скорость_текста
    .byte $04    ; <え>
    .byte $E1
    .byte $40    ; <「>
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
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $67    ; <ラ>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $1A    ; <は>
    .byte $00
    .byte $01    ; <あ>
    .byte $19    ; <の>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $7B    ; <。>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FA, $09
    .byte $FB
    .byte $01    ; <あ>
    .byte $43    ; <ウ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F5, $0C
    .byte con_катсцена_вид_окна_текста
    .byte $01    ; <あ>
    .byte $EC
    .byte $01    ; <あ>
    .byte $15    ; <な>
    .byte $7A    ; <、>
    .byte con_катсцена_номер_звука, $09
    .byte $DB
    .byte con_катсцена_номер_звука, $09
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte $00
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte con_катсцена_номер_звука, $0A
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $39
    .byte $FB
    .byte $01    ; <あ>
    .byte $85    ; <E>
    .byte $F7
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $5D
    .byte $F5, $04
    .byte $01    ; <あ>
    .byte $01    ; <あ>
    .byte $2F    ; <っ>
    .byte $79    ; <!>
    .byte $DA
    .byte $00
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $C1    ; <デ>
    .byte $6E    ; <ン>
    .byte $5F    ; <マ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $16    ; <に>
    .byte $00
    .byte $1A    ; <は>
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $EE
    .byte con_катсцена_затереть_текст
    .byte $FA, $3A
    .byte $FB
    .byte $01    ; <あ>
    .byte $8B    ; <K>
    .byte $F7
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $66
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte $EC
    .byte $00
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
    .byte $DB
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $A0    ; <が>
    .byte $00
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $1D    ; <へ>
    .byte con_катсцена_новая_строка
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $12    ; <つ>
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $EE
    .byte $EC
    .byte $FF
    .byte con_катсцена_задний_фон, $3C
    .byte $FB
    .byte $03    ; <う>
    .byte $BD    ; <ゾ>
    .byte $C8    ; <ぱ>
    .byte $97
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $66    ; <ヨ>
    .byte $7D    ; <ー>
    .byte $6B    ; <ロ>
    .byte $6F    ; <ッ>
    .byte $CD    ; <パ>
    .byte $26    ; <よ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte con_катсцена_новая_строка
    .byte $56    ; <ニ>
    .byte $4C    ; <シ>
    .byte $C2    ; <ド>
    .byte $42    ; <イ>
    .byte $52    ; <ツ>
    .byte $00
    .byte $91    ; <V>
    .byte $8F    ; <S>
    .byte $00
    .byte $D1    ; <ポ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $B4    ; <ガ>
    .byte $69    ; <ル>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $38
    .byte con_катсцена_осветление_экрана
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_вид_окна_текста
    .byte $01    ; <あ>
    .byte $EC
    .byte $00
    .byte con_катсцена_задний_фон, $66
    .byte $FB
    .byte $03    ; <う>
    .byte $9E
    .byte $9F
    .byte $A5    ; <ざ>
    .byte con_катсцена_номер_звука, $6B
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_скорость_текста
    .byte $04    ; <え>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $55    ; <ナ>
    .byte $42    ; <イ>
    .byte $BE    ; <ダ>
    .byte $7D    ; <ー>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $00
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $16    ; <に>
    .byte $02    ; <い>
    .byte $08    ; <く>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $D1    ; <ポ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $B4    ; <ガ>
    .byte $69    ; <ル>
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $2D    ; <を>
    .byte $18    ; <ね>
    .byte $27    ; <ら>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte con_катсцена_номер_звука, $02
    .byte con_катсцена_затереть_текст
    .byte $EE
    .byte $EC
    .byte $FF
    .byte $FA, $05
    .byte $FB
    .byte $01    ; <あ>
    .byte $79    ; <!>
    .byte $F7
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $30
    .byte $F5, $11
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte $E1
    .byte $40    ; <「>
    .byte $5C    ; <フ>
    .byte $73    ; <ヮ>
    .byte $42    ; <イ>
    .byte $64    ; <ヤ>
    .byte $7D    ; <ー>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $21
    .byte $FB
    .byte $02    ; <い>
    .byte $73    ; <ヮ>
    .byte $74    ; <ィ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F5, $0F
    .byte con_катсцена_номер_звука, $0E
    .byte $DB
    .byte con_катсцена_номер_звука, $10
    .byte $F5, $FF
    .byte $FA, $5A
    .byte $FB
    .byte $01    ; <あ>
    .byte $00
    .byte $F7
    .byte $F3
    .byte $FF
    .byte $2D    ; <を>
    .byte $04    ; <え>
    .byte con_катсцена_номер_звука, $06
    .byte $FA, $20
    .byte $F7
    .byte con_катсцена_номер_звука, $07
    .byte con_катсцена_задержка
    .byte $1A    ; <は>
    .byte con_катсцена_номер_звука, $07
    .byte con_катсцена_задержка
    .byte $19    ; <の>
    .byte $F7
    .byte con_катсцена_номер_звука, $08
    .byte $FA, $56
    .byte $FB
    .byte $03    ; <う>
    .byte $C0    ; <ヅ>
    .byte $A0    ; <が>
    .byte $80
    .byte $F7
    .byte con_катсцена_номер_звука, $07
    .byte $FA, $39
    .byte $FB
    .byte $01    ; <あ>
    .byte $86    ; <F>
    .byte $F7
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $61
    .byte $F5, $04
    .byte con_катсцена_вид_окна_текста
    .byte $01    ; <あ>
    .byte $EC
    .byte $00
    .byte con_катсцена_скорость_текста
    .byte $04    ; <え>
    .byte $07    ; <き>
    .byte $1F    ; <ま>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte $00
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $EE
    .byte con_катсцена_затереть_текст
    .byte $FA, $3A
    .byte $FB
    .byte $01    ; <あ>
    .byte $8B    ; <K>
    .byte $F7
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $66
    .byte con_катсцена_вид_окна_текста
    .byte $00
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
    .byte $DB
    .byte $66    ; <ヨ>
    .byte $7D    ; <ー>
    .byte $6B    ; <ロ>
    .byte $6F    ; <ッ>
    .byte $CD    ; <パ>
    .byte $11    ; <ち>
    .byte $08    ; <く>
    .byte $19    ; <の>
    .byte $00
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $1B    ; <ひ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $56    ; <ニ>
    .byte $4C    ; <シ>
    .byte $C2    ; <ド>
    .byte $42    ; <イ>
    .byte $52    ; <ツ>
    .byte $16    ; <に>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка
    .byte $B4    ; <ガ>
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $EE
    .byte $EC
    .byte $FF
    .byte con_катсцена_задний_фон, $1D
    .byte $FB
    .byte $03    ; <う>
    .byte $C9    ; <ぴ>
    .byte $91    ; <V>
    .byte $99
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E2
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $C2    ; <ド>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $00
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $00
    .byte $00
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $11    ; <ち>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $46
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $13
    .byte $FA, $12
    .byte $FB
    .byte $01    ; <あ>
    .byte $46    ; <カ>
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $2C    ; <わ>
    .byte $A0    ; <が>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $10    ; <た>
    .byte $19    ; <の>
    .byte $23    ; <も>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $20    ; <み>
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $A0    ; <が>
    .byte $00
    .byte $07    ; <き>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $19    ; <の>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte con_катсцена_новая_строка
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte $00
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $08    ; <く>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $14    ; <と>
    .byte $22    ; <め>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $2D    ; <を>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $1F    ; <ま>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $48    ; <ク>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F5, $08
    .byte con_катсцена_скорость_текста
    .byte $04    ; <え>
    .byte $E1
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $79    ; <!>
    .byte $DB
    .byte $00
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $74    ; <ィ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $01
    .byte $DB
    .byte con_катсцена_затереть_текст
    .byte $FA, $50
    .byte $FB
    .byte $01    ; <あ>
    .byte $6C    ; <ワ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $52
    .byte $DE
    .byte $FA, $13
    .byte $FB
    .byte $01    ; <あ>
    .byte $3D    ; <+>
    .byte $F7
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte $EF
    .byte $E1
    .byte $40    ; <「>
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $A4    ; <ご>
    .byte $03    ; <う>
    .byte $EF
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $FA, $12
    .byte $F4
    .byte $05    ; <お>
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $49
    .byte $DC
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $F4
    .byte $04    ; <え>
    .byte $E1
    .byte $40    ; <「>
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $00
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $08    ; <く>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $A4    ; <ご>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $2C    ; <わ>
    .byte $2A    ; <れ>
    .byte $2C    ; <わ>
    .byte $2A    ; <れ>
    .byte $A0    ; <が>
    .byte $00
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $22    ; <め>
    .byte $A5    ; <ざ>
    .byte $0D    ; <す>
    .byte $23    ; <も>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte $00
    .byte $10    ; <た>
    .byte $AA    ; <だ>
    .byte $1B    ; <ひ>
    .byte $14    ; <と>
    .byte $12    ; <つ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $19    ; <の>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $24    ; <や>
    .byte $08    ; <く>
    .byte $16    ; <に>
    .byte $00
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $14    ; <と>
    .byte $23    ; <も>
    .byte $16    ; <に>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte $22    ; <め>
    .byte $A5    ; <ざ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte con_катсцена_новая_строка
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $5A    ; <ハ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DD
    .byte $40    ; <「>
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte con_катсцена_номер_звука, $31
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $A4    ; <ご>
    .byte $03    ; <う>
    .byte $A0    ; <が>
    .byte $7A    ; <、>
    .byte $DB
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $57
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $08    ; <く>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка
    .byte $B4    ; <ガ>
    .byte con_катсцена_затереть_текст
    .byte $FA, $50
    .byte $FB
    .byte $01    ; <あ>
    .byte $6C    ; <ワ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F8, $02
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход



off_AC95_16_разговор_репортеров:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $1B
    .byte $FB
    .byte $01    ; <あ>
    .byte $43    ; <ウ>
    .byte $DE
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $47
    .byte $DC
    .byte $E5
    .byte $07    ; <き>
    .byte $0C    ; <し>
    .byte $30    ; <ゃ>
    .byte $81    ; <A>
    .byte $40    ; <「>
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $14    ; <と>
    .byte $00
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $19    ; <の>
    .byte $00
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $A5    ; <ざ>
    .byte $02    ; <い>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $2C    ; <わ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $E5
    .byte $07    ; <き>
    .byte $0C    ; <し>
    .byte $30    ; <ゃ>
    .byte $82    ; <B>
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $0B    ; <さ>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $00
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $AE    ; <ど>
    .byte $0A    ; <こ>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E5
    .byte $07    ; <き>
    .byte $0C    ; <し>
    .byte $30    ; <ゃ>
    .byte $83    ; <C>
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $73    ; <ヮ>
    .byte $DB
    .byte $00
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1A    ; <は>
    .byte $00
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $E2
    .byte $81    ; <A>
    .byte $40    ; <「>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $15    ; <な>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E2
    .byte $82    ; <B>
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $1F    ; <ま>
    .byte $19    ; <の>
    .byte $00
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $2D    ; <を>
    .byte $20    ; <み>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $A1    ; <ぎ>
    .byte $28    ; <り>
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte con_катсцена_новая_строка
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $23    ; <も>
    .byte $00
    .byte $05    ; <お>
    .byte $06    ; <か>
    .byte $0C    ; <し>
    .byte $08    ; <く>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $E2
    .byte $83    ; <C>
    .byte $40    ; <「>
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte $01    ; <あ>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $1A    ; <は>
    .byte $00
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $E2
    .byte $81    ; <A>
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $24    ; <や>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $E2
    .byte $81    ; <A>
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $06    ; <か>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte $00
    .byte $0B    ; <さ>
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $1E    ; <ほ>
    .byte $AE    ; <ど>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $06    ; <か>
    .byte $A0    ; <が>
    .byte $00
    .byte $10    ; <た>
    .byte $28    ; <り>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $07    ; <き>
    .byte $A0    ; <が>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E2
    .byte $82    ; <B>
    .byte $40    ; <「>
    .byte $1F    ; <ま>
    .byte $01    ; <あ>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $1A    ; <は>
    .byte $00
    .byte $56    ; <ニ>
    .byte $4C    ; <シ>
    .byte $C2    ; <ド>
    .byte $42    ; <イ>
    .byte $52    ; <ツ>
    .byte $06    ; <か>
    .byte con_катсцена_новая_строка
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $AA    ; <だ>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $E2
    .byte $83    ; <C>
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $03    ; <う>
    .byte $AD    ; <で>
    .byte $19    ; <の>
    .byte $10    ; <た>
    .byte $12    ; <つ>
    .byte con_катсцена_новая_строка
    .byte $47    ; <キ>
    .byte $7D    ; <ー>
    .byte $CD    ; <パ>
    .byte $7D    ; <ー>
    .byte $A0    ; <が>
    .byte $00
    .byte $02    ; <い>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $A9    ; <ぞ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E2
    .byte $81    ; <A>
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $64
    .byte $FB
    .byte $01    ; <あ>
    .byte $3A    ; <7>
    .byte $F3
    .byte $FF
    .byte $10    ; <た>
    .byte $29    ; <る>
    .byte con_катсцена_номер_звука, $46
    .byte $DD
    .byte $EF
    .byte $E2
    .byte $81    ; <A>
    .byte $40    ; <「>
    .byte $03    ; <う>
    .byte $2C    ; <わ>
    .byte $0B    ; <さ>
    .byte $AD    ; <で>
    .byte $1A    ; <は>
    .byte $00
    .byte $42    ; <イ>
    .byte $50    ; <タ>
    .byte $68    ; <リ>
    .byte $41    ; <ア>
    .byte $19    ; <の>
    .byte $CF    ; <プ>
    .byte $6B    ; <ロ>
    .byte $16    ; <に>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $01    ; <あ>
    .byte $19    ; <の>
    .byte $00
    .byte $47    ; <キ>
    .byte $7D    ; <ー>
    .byte $CD    ; <パ>
    .byte $7D    ; <ー>
    .byte $A0    ; <が>
    .byte $7A    ; <、>
    .byte $DB
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $1A    ; <は>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $10    ; <た>
    .byte $22    ; <め>
    .byte $16    ; <に>
    .byte $00
    .byte $07    ; <き>
    .byte $0A    ; <こ>
    .byte $08    ; <く>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E2
    .byte $82    ; <B>
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $19    ; <の>
    .byte $00
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
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $47    ; <キ>
    .byte $7D    ; <ー>
    .byte $CD    ; <パ>
    .byte $7D    ; <ー>
    .byte $5F    ; <マ>
    .byte $4C    ; <シ>
    .byte $6E    ; <ン>
    .byte $14    ; <と>
    .byte $00
    .byte $02    ; <い>
    .byte $2C    ; <わ>
    .byte $2A    ; <れ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $12    ; <つ>
    .byte $A0    ; <が>
    .byte $78    ; <?>
    .byte con_катсцена_мячик
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $12
    .byte $FB
    .byte $01    ; <あ>
    .byte $62    ; <メ>
    .byte con_катсцена_осветление_экрана
    .byte $E2
    .byte $81    ; <A>
    .byte $40    ; <「>
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $A4    ; <ご>
    .byte $03    ; <う>
    .byte $A0    ; <が>
    .byte $00
    .byte $A6    ; <じ>
    .byte $07    ; <き>
    .byte $A6    ; <じ>
    .byte $07    ; <き>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $26    ; <よ>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $27    ; <ら>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte $DC
    .byte $00
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $0A    ; <こ>
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $00
    .byte $5F    ; <マ>
    .byte $BA    ; <ジ>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte $00
    .byte $18    ; <ね>
    .byte $27    ; <ら>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $2E
    .byte $FB
    .byte $01    ; <あ>
    .byte $47    ; <キ>
    .byte con_катсцена_осветление_экрана
    .byte $F8, $02
    .byte $E2
    .byte $82    ; <B>
    .byte $40    ; <「>
    .byte $10    ; <た>
    .byte $0C    ; <し>
    .byte $06    ; <か>
    .byte $00
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $0C    ; <し>
    .byte $04    ; <え>
    .byte $A4    ; <ご>
    .byte $A0    ; <が>
    .byte $00
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte $26    ; <よ>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $E2
    .byte $83    ; <C>
    .byte $40    ; <「>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $A0    ; <が>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $00
    .byte $19    ; <の>
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $AF    ; <ば>
    .byte con_катсцена_новая_строка
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $09    ; <け>
    .byte $12    ; <つ>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $1B
    .byte con_катсцена_осветление_экрана
    .byte $E2
    .byte $81    ; <A>
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $16    ; <に>
    .byte $00
    .byte $23    ; <も>
    .byte $03    ; <う>
    .byte $1B    ; <ひ>
    .byte $14    ; <と>
    .byte $12    ; <つ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte $E2
    .byte $82    ; <B>
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $2F    ; <っ>
    .byte $00
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $06    ; <か>
    .byte $00
    .byte $0C    ; <し>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $15    ; <な>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E2
    .byte $81    ; <A>
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $09    ; <け>
    .byte $18    ; <ね>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0C    ; <し>
    .byte $22    ; <め>
    .byte $07    ; <き>
    .byte $28    ; <り>
    .byte $16    ; <に>
    .byte $00
    .byte $05    ; <お>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $29    ; <る>
    .byte $A8    ; <ぜ>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte $01    ; <あ>
    .byte $00
    .byte $1F    ; <ま>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $E2
    .byte $82    ; <B>
    .byte $40    ; <「>
    .byte $41    ; <ア>
    .byte $6F    ; <ッ>
    .byte $00
    .byte $16    ; <に>
    .byte $A3    ; <げ>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $E2
    .byte $83    ; <C>
    .byte $40    ; <「>
    .byte $51    ; <チ>
    .byte $75    ; <ェ>
    .byte $6F    ; <ッ>
    .byte $DB
    .byte $00
    .byte $23    ; <も>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $B1    ; <ぶ>
    .byte $28    ; <り>
    .byte $24    ; <や>
    .byte $A0    ; <が>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход



off_AF35_17_цубаса_читает_письмо:
    .byte $E8, $01
    .byte $DE
    .byte con_катсцена_задний_фон, $12
    .byte $FA, $13
    .byte $FB
    .byte $01    ; <あ>
    .byte $16    ; <に>
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $48
    .byte $DC
    .byte $FB
    .byte $01    ; <あ>
    .byte $12    ; <つ>
    .byte $F3
    .byte $FF
    .byte $00
    .byte $0C    ; <し>
    .byte $DA
    .byte $F5, $08
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $00
    .byte $DC
    .byte $FB
    .byte $01    ; <あ>
    .byte $66    ; <ヨ>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $2B    ; <ろ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $2A    ; <れ>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $66    ; <ヨ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $2A    ; <れ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $2B    ; <ろ>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $12    ; <つ>
    .byte $F7
    .byte $F3
    .byte $8C    ; <M>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $2B    ; <ろ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $FA, $2C
    .byte $FB
    .byte $01    ; <あ>
    .byte $2A    ; <れ>
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
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $02    ; <い>
    .byte $B6    ; <グ>
    .byte $8A    ; <N>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $3E    ; <Jr>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $3D    ; <+>
    .byte $EF
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $FA, $50
    .byte $FB
    .byte $01    ; <あ>
    .byte $6C    ; <ワ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $3E    ; <Jr>
    .byte con_катсцена_осветление_экрана
    .byte $DC
    .byte $EF
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $6A    ; <レ>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $5C    ; <フ>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $1E    ; <ほ>
    .byte $F7
    .byte $F3
    .byte $FF
    .byte $00
    .byte $0C    ; <し>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $66    ; <ヨ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $6A    ; <レ>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $08    ; <く>
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $23
    .byte $FB
    .byte $01    ; <あ>
    .byte $AE    ; <ど>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $66    ; <ヨ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $24    ; <や>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $14    ; <と>
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte $F3
    .byte $FF
    .byte $00
    .byte $0C    ; <し>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $6A    ; <レ>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $52    ; <ツ>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $AD    ; <で>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $6A    ; <レ>
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
    .byte $FB
    .byte $02    ; <い>
    .byte $BD    ; <ゾ>
    .byte $9B
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $6A    ; <レ>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $52    ; <ツ>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $6A    ; <レ>
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
    .byte $FB
    .byte $02    ; <い>
    .byte $6A    ; <レ>
    .byte $92    ; <W>
    .byte $DF
    .byte $FB
    .byte $01    ; <あ>
    .byte $08    ; <く>
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $23
    .byte $FB
    .byte $01    ; <あ>
    .byte $AE    ; <ど>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $AD    ; <で>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $AC    ; <づ>
    .byte con_катсцена_номер_звука, $70
    .byte $DE
    .byte $F8, $11
    .byte con_катсцена_осветление_экрана
    .byte $DF
    .byte $F3
    .byte $27    ; <ら>
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3
    .byte $0C    ; <し>
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3
    .byte $27    ; <ら>
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3
    .byte $0C    ; <し>
    .byte $D9
    .byte $F3
    .byte $11    ; <ち>
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3
    .byte $0C    ; <し>
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3
    .byte $11    ; <ち>
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3
    .byte $0C    ; <し>
    .byte con_катсцена_номер_звука, $30
    .byte $DF
    .byte $F3
    .byte $11    ; <ち>
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3
    .byte $0C    ; <し>
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3
    .byte $11    ; <ち>
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3
    .byte $0C    ; <し>
    .byte $D9
    .byte $F3
    .byte $11    ; <ち>
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3
    .byte $0C    ; <し>
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3
    .byte $11    ; <ち>
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3
    .byte $0C    ; <し>
    .byte $DE
    .byte $F3
    .byte $27    ; <ら>
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3
    .byte $0C    ; <し>
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3
    .byte $27    ; <ら>
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3
    .byte $0C    ; <し>
    .byte con_катсцена_номер_звука, $30
    .byte $F3
    .byte $11    ; <ち>
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3
    .byte $0C    ; <し>
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3
    .byte $11    ; <ち>
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3
    .byte $0C    ; <し>
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
    .byte $F3
    .byte $27    ; <ら>
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3
    .byte $0C    ; <し>
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3
    .byte $27    ; <ら>
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3
    .byte $0C    ; <し>
    .byte con_катсцена_номер_звука, $30
    .byte $D9
    .byte $F3
    .byte $11    ; <ち>
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3
    .byte $0C    ; <し>
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3
    .byte $11    ; <ち>
    .byte con_катсцена_номер_звука, $30
    .byte $DD
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $36
    .byte $FB
    .byte $02    ; <い>
    .byte $73    ; <ヮ>
    .byte $74    ; <ィ>
    .byte $F3
    .byte $00
    .byte $F5, $03
    .byte con_катсцена_номер_звука, $0E
    .byte $DB
    .byte con_катсцена_номер_звука, $10
    .byte $F5, $FF
    .byte $FB
    .byte $02    ; <い>
    .byte $88    ; <H>
    .byte $87    ; <G>
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $02    ; <い>
    .byte $BE    ; <ダ>
    .byte $72    ; <ョ>
    .byte con_катсцена_номер_звука, $10
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $68
    .byte $FB
    .byte $03    ; <う>
    .byte $89    ; <I>
    .byte $AA    ; <だ>
    .byte $BF    ; <ヂ>
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
    .byte $F3
    .byte $FF
    .byte $25    ; <ゆ>
    .byte $43    ; <ウ>
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_затемнение_экрана
    .byte $FA, $48
    .byte $FB
    .byte $01    ; <あ>
    .byte $35    ; <2>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $AB    ; <ぢ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $F3
    .byte $27    ; <ら>
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3
    .byte $0C    ; <し>
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3
    .byte $27    ; <ら>
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3
    .byte $0C    ; <し>
    .byte con_катсцена_номер_звука, $30
    .byte $D9
    .byte $F3
    .byte $11    ; <ち>
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3
    .byte $0C    ; <し>
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3
    .byte $11    ; <ち>
    .byte con_катсцена_номер_звука, $30
    .byte $DB
    .byte con_катсцена_затереть_текст
    .byte $FA, $05
    .byte $FB
    .byte $01    ; <あ>
    .byte $A4    ; <ご>
    .byte $F7
    .byte $F3
    .byte $FF
    .byte $13    ; <て>
    .byte $01    ; <あ>
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
    .byte $FB
    .byte $02    ; <い>
    .byte $73    ; <ヮ>
    .byte $74    ; <ィ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F5, $03
    .byte con_катсцена_номер_звука, $0E
    .byte $DB
    .byte con_катсцена_номер_звука, $10
    .byte $F5, $FF
    .byte $FA, $02
    .byte $FB
    .byte $01    ; <あ>
    .byte $5B    ; <ヒ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $43    ; <ウ>
    .byte $F7
    .byte $F3
    .byte $FF
    .byte $03    ; <う>
    .byte $11    ; <ち>
    .byte $F5, $07
    .byte con_катсцена_номер_звука, $0E
    .byte $D9
    .byte con_катсцена_номер_звука, $0B
    .byte $DA
    .byte con_катсцена_номер_звука, $09
    .byte $DC
    .byte $F5, $FF
    .byte $F3
    .byte $FF
    .byte $25    ; <ゆ>
    .byte $43    ; <ウ>
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
    .byte $FB
    .byte $02    ; <い>
    .byte $A7    ; <ず>
    .byte $A8    ; <ぜ>
    .byte $F8, $12
    .byte $F7
    .byte $FA, $41
    .byte $F8, $11
    .byte $F3
    .byte $FF
    .byte $28    ; <り>
    .byte $44    ; <エ>
    .byte $DD
    .byte $F3
    .byte $FF
    .byte $29    ; <る>
    .byte $45    ; <オ>
    .byte $DD
    .byte con_катсцена_номер_звука, $70
    .byte $F3
    .byte $FF
    .byte $2A    ; <れ>
    .byte $1E    ; <ほ>
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
    .byte $F3
    .byte $2B    ; <ろ>
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3
    .byte $2A    ; <れ>
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3
    .byte $2B    ; <ろ>
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3
    .byte $2A    ; <れ>
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $FA, $23
    .byte $FB
    .byte $01    ; <あ>
    .byte $AD    ; <で>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $A3    ; <げ>
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $06    ; <か>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $66    ; <ヨ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $EF
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
    .byte $E2
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $5C    ; <フ>
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $5A    ; <ハ>
    .byte $F3
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $2E
    .byte $FB
    .byte $01    ; <あ>
    .byte $21    ; <む>
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $02    ; <い>
    .byte $98
    .byte $8F    ; <S>
    .byte $F3
    .byte $00
    .byte $DA
    .byte con_катсцена_номер_звука, $30
    .byte $E5
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
    .byte $E5
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
    .byte $E3
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
    .byte $EC
    .byte $00
    .byte con_катсцена_задний_фон, $01
    .byte $FB
    .byte $01    ; <あ>
    .byte $6F    ; <ッ>
    .byte con_катсцена_номер_звука, $62
    .byte $F8, $0A
    .byte $F3
    .byte $00
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
    .byte $EC
    .byte $FF
    .byte con_катсцена_задний_фон, $3B
    .byte $FB
    .byte $01    ; <あ>
    .byte $7A    ; <、>
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $7B    ; <。>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $83    ; <C>
    .byte $F7
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $09
    .byte $F5, $01
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte con_катсцена_вид_окна_текста
    .byte $01    ; <あ>
    .byte $EC
    .byte $00
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
    .byte $FB
    .byte $03    ; <う>
    .byte $C0    ; <ヅ>
    .byte $7E    ; <.>
    .byte $94
    .byte $F3
    .byte $00
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
    .byte $F3
    .byte $1E    ; <ほ>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $8B    ; <K>
    .byte $F3
    .byte $00
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
    .byte $EC
    .byte $FF
    .byte con_катсцена_задний_фон, $02
    .byte $FB
    .byte $01    ; <あ>
    .byte $4B    ; <サ>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $5D    ; <ヘ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $32    ; <ょ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $5B
    .byte $FB
    .byte $01    ; <あ>
    .byte $4A    ; <コ>
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte $EC
    .byte $00
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
    .byte $F4
    .byte $03    ; <う>
    .byte $FB
    .byte $01    ; <あ>
    .byte $3A    ; <7>
    .byte con_катсцена_номер_звука, $15
    .byte $EF
    .byte $F4
    .byte $01    ; <あ>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $21    ; <む>
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_номер_звука, $53
    .byte $DD
    .byte $EF
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $6A    ; <レ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $0A    ; <こ>
    .byte con_катсцена_номер_звука, $01
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $49
    .byte $DE
    .byte $EF
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $16    ; <に>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $B5    ; <ギ>
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
    .byte $E2
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
    .byte $EC
    .byte $05    ; <お>
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $63    ; <モ>
    .byte $F7
    .byte $F3
    .byte $FF
    .byte $00
    .byte $0F    ; <そ>
    .byte $FA, $10
    .byte $EF
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $67    ; <ラ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FB
    .byte $01    ; <あ>
    .byte $B1    ; <ぶ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $F4
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход
