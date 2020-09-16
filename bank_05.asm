.segment "BANK_05"
.include "copy_bank_ram.inc"
; тут только данные
; поинтеры в 0x000485
; перемещать код можно только после начальной таблицы поинтеров

    .word off_BE49_1F_перед_матчем_с_бразилией

off_BE49_1F_перед_матчем_с_бразилией:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $02
    .byte $FB, $01, $0A
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $49
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_закрыть_рот
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte con_катсцена_задержка, $28
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte $FA, $11
    .byte $FB, $01, $16
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $40    ; <「>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $F5, $08
    .byte con_катсцена_задержка, $14
    .byte $F5, $04
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $2A
    .byte $FB, $01, $B5
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $40    ; <「>
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
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
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_затереть_все
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
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $4C
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $2B
    .byte $FA, $11
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte con_катсцена_комментатор, $05
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
    .byte con_катсцена_задержка, $28
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
    .byte con_катсцена_задержка, $28
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
    .byte $F4, $06, $05
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






.export off_0x040005_скрытая_катсцена_из_1F
off_0x040005_скрытая_катсцена_из_1F:
    .byte $E8, $01
    .byte con_катсцена_комментатор, $00
    .byte $0F    ; <そ>
    .byte $19    ; <の>
    .byte $0A    ; <こ>
    .byte $2B    ; <ろ>
    .byte $00
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $C6    ; <ベ>
    .byte $6E    ; <ン>
    .byte $51    ; <チ>
    .byte $AD    ; <で>
    .byte $1A    ; <は>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_затереть_все
    .byte con_катсцена_комментатор, $FF
    .byte con_катсцена_задний_фон, $10
    .byte $FA, $11
    .byte $FB, $01, $67
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte $FB, $01, $12
    .byte $F3, $FF, $00, $0C
    .byte con_катсцена_задержка, $14
    .byte $40    ; <「>
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $1A    ; <は>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $21
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $3C
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte $03    ; <う>
    .byte $00
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $16    ; <に>
    .byte $00
    .byte $F8, $17
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $00
    .byte $14    ; <と>
    .byte $27    ; <ら>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $0F    ; <そ>
    .byte $19    ; <の>
    .byte $00
    .byte $06    ; <か>
    .byte $28    ; <り>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $0D    ; <す>
    .byte $06    ; <か>
    .byte $2C    ; <わ>
    .byte $28    ; <り>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $02    ; <い>
    .byte $02    ; <い>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $2D    ; <を>
    .byte $05    ; <お>
    .byte $0C    ; <し>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $40    ; <「>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $55    ; <ナ>
    .byte $42    ; <イ>
    .byte $BE    ; <ダ>
    .byte $7D    ; <ー>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $21
    .byte $F7
    .byte $F3, $00
    .byte $40    ; <「>
    .byte $53    ; <テ>
    .byte $6A    ; <レ>
    .byte $5E    ; <ホ>
    .byte $6E    ; <ン>
    .byte $00
    .byte $42    ; <イ>
    .byte $6E    ; <ン>
    .byte $5C    ; <フ>
    .byte $76    ; <ォ>
    .byte $62    ; <メ>
    .byte $7D    ; <ー>
    .byte $4C    ; <シ>
    .byte $72    ; <ョ>
    .byte $6E    ; <ン>
    .byte con_катсцена_новая_строка
    .byte $53    ; <テ>
    .byte $48    ; <ク>
    .byte $63    ; <モ>
    .byte $00
    .byte $5E    ; <ホ>
    .byte $6F    ; <ッ>
    .byte $54    ; <ト>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $6E    ; <ン>
    .byte $1A    ; <は>
    .byte con_катсцена_задержка, $28
    .byte $00
    .byte $33    ; <0>
    .byte $36    ; <3>
    .byte $7D    ; <ー>
    .byte $35    ; <2>
    .byte $35    ; <2>
    .byte $35    ; <2>
    .byte $7D    ; <ー>
    .byte con_катсцена_новая_строка
    .byte $3A    ; <7>
    .byte $38    ; <5>
    .byte $38    ; <5>
    .byte $33    ; <0>
    .byte $AD    ; <で>
    .byte $00
    .byte $03    ; <う>
    .byte $09    ; <け>
    .byte $12    ; <つ>
    .byte $09    ; <け>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $28    ; <り>
    .byte $A0    ; <が>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $00
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $55    ; <ナ>
    .byte $42    ; <イ>
    .byte $BE    ; <ダ>
    .byte $7D    ; <ー>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $A0    ; <が>
    .byte $05    ; <お>
    .byte $2C    ; <わ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte $00
    .byte $0B    ; <さ>
    .byte $2F    ; <っ>
    .byte $0F    ; <そ>
    .byte $08    ; <く>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $09    ; <け>
    .byte $13    ; <て>
    .byte $20    ; <み>
    .byte $29    ; <る>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $F7
    .byte con_катсцена_номер_звука, $1E
    .byte $F8, $0E
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $0A    ; <こ>
    .byte $2F    ; <っ>
    .byte $11    ; <ち>
    .byte $30    ; <ゃ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $42
    .byte $F7
    .byte $F3, $00
    .byte $40    ; <「>
    .byte $1F    ; <ま>
    .byte $01    ; <あ>
    .byte $00
    .byte $14    ; <と>
    .byte $16    ; <に>
    .byte $06    ; <か>
    .byte $08    ; <く>
    .byte $00
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $A4    ; <ご>
    .byte $19    ; <の>
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $08    ; <く>
    .byte $02    ; <い>
    .byte $19    ; <の>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $00
    .byte $0C    ; <し>
    .byte $2F    ; <っ>
    .byte $06    ; <か>
    .byte $28    ; <り>
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $3C
    .byte $F5, $FF
    .byte $F4, $07
