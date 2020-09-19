.segment "BANK_32"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

    .word off_A43B_22_финальная_катсцена

off_A43B_22_финальная_катсцена:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $0D
    .byte $FB, $01, $43
    .byte $DE
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $4F
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $73    ; <ヮ>
    .byte $00
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $A9    ; <ぞ>
    .byte $7D    ; <ー>
    .byte $2F    ; <っ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $E1
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $1A    ; <は>
    .byte $00
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $E1
    .byte $40    ; <「>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $7D    ; <ー>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FA, $10
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $FA, $2B
    .byte $F5, $04
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $3F    ; <•>
    .byte $F8, $02
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка
    .byte $46    ; <カ>
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $43
    .byte $F7
    .byte $F3, $00
    .byte $FA, $11
    .byte con_катсцена_номер_звука, $62
    .byte $DD
    .byte con_катсцена_вид_окна_текста
    .byte $01    ; <あ>
    .byte $EC, $02
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $23    ; <も>
    .byte $14    ; <と>
    .byte $16    ; <に>
    .byte $00
    .byte $06    ; <か>
    .byte $09    ; <け>
    .byte $26    ; <よ>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $42    ; <イ>
    .byte $6A    ; <レ>
    .byte $C5    ; <ブ>
    .byte $6E    ; <ン>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $12    ; <つ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $00
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $A0    ; <が>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $04    ; <え>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $2D    ; <を>
    .byte $00
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $14    ; <と>
    .byte $28    ; <り>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte con_катсцена_мячик
    .byte con_катсцена_номер_звука, $62
    .byte $EE
    .byte $EC, $FF
    .byte $F7
    .byte $F8, $0E
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $79    ; <!>
    .byte $DB
    .byte $00
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $C8    ; <ぱ>
    .byte $28    ; <り>
    .byte $00
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $07    ; <き>
    .byte $22    ; <め>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $A8    ; <ぜ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte $F8, $02
    .byte $FA, $10
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $24    ; <や>
    .byte $DB
    .byte $00
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $19    ; <の>
    .byte $05    ; <お>
    .byte $06    ; <か>
    .byte $A3    ; <げ>
    .byte $AA    ; <だ>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $00
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $19    ; <の>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $AD    ; <で>
    .byte $00
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $14    ; <と>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $06
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $39
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $19    ; <の>
    .byte $00
    .byte $02    ; <い>
    .byte $03    ; <う>
    .byte $14    ; <と>
    .byte $05    ; <お>
    .byte $28    ; <り>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $2D    ; <を>
    .byte $00
    .byte $10    ; <た>
    .byte $05    ; <お>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $19    ; <の>
    .byte $00
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $14    ; <と>
    .byte $00
    .byte $07    ; <き>
    .byte $1A    ; <は>
    .byte $08    ; <く>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $20
    .byte $F7
    .byte $F3, $C7
    .byte $E1
    .byte $40    ; <「>
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $15    ; <な>
    .byte $A0    ; <が>
    .byte $02    ; <い>
    .byte $00
    .byte $20    ; <み>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte $28    ; <り>
    .byte $AA    ; <だ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $1C
    .byte $F7
    .byte $F3, $C8
    .byte $E1
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $01    ; <あ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $00
    .byte $0A    ; <こ>
    .byte $0A    ; <こ>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $26    ; <よ>
    .byte $08    ; <く>
    .byte $00
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $3F
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $03    ; <う>
    .byte $2E    ; <ん>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $FA, $2B
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $43
    .byte $F7
    .byte con_катсцена_номер_звука, $62
    .byte $FA, $10
    .byte con_катсцена_вид_окна_текста
    .byte $01    ; <あ>
    .byte $EC, $02
    .byte $1F    ; <ま>
    .byte $0B    ; <さ>
    .byte $16    ; <に>
    .byte $00
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $A0    ; <が>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $14    ; <と>
    .byte $12    ; <つ>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $04    ; <え>
    .byte $10    ; <た>
    .byte $00
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $28    ; <り>
    .byte $14    ; <と>
    .byte $02    ; <い>
    .byte $04    ; <え>
    .byte $1F    ; <ま>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte $DB
    .byte $05    ; <お>
    .byte $22    ; <め>
    .byte $AD    ; <で>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $00
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte $DB
    .byte $EC, $04
    .byte $23    ; <も>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte $7C    ; <~>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_мячик
    .byte $EE
    .byte $EC, $FF
    .byte $FA, $11
    .byte $FB, $01, $0A
    .byte $F7
    .byte $F3, $00
    .byte $FA, $10
    .byte $E1
    .byte $40    ; <「>
    .byte $A5    ; <ざ>
    .byte $2E    ; <ん>
    .byte $18    ; <ね>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $00
    .byte $4A    ; <コ>
    .byte $42    ; <イ>
    .byte $6E    ; <ン>
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $5F
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $78    ; <?>
    .byte $DB
    .byte $00
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $0A
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $1F    ; <ま>
    .byte $09    ; <け>
    .byte $10    ; <た>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $1A    ; <は>
    .byte $00
    .byte $26    ; <よ>
    .byte $08    ; <く>
    .byte $00
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $00
    .byte $4A    ; <コ>
    .byte $42    ; <イ>
    .byte $6E    ; <ン>
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte $4B    ; <サ>
    .byte $6F    ; <ッ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $A0    ; <が>
    .byte $00
    .byte $05    ; <お>
    .byte $2C    ; <わ>
    .byte $28    ; <り>
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $00
    .byte $1A    ; <は>
    .byte $A6    ; <じ>
    .byte $1F    ; <ま>
    .byte $29    ; <る>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $63
    .byte $E1
    .byte $40    ; <「>
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $2D    ; <を>
    .byte $10    ; <た>
    .byte $05    ; <お>
    .byte $0D    ; <す>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $19    ; <の>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $A0    ; <が>
    .byte $00
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $29    ; <る>
    .byte $15    ; <な>
    .byte $00
    .byte $4A    ; <コ>
    .byte $42    ; <イ>
    .byte $6E    ; <ン>
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $5F
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $00
    .byte $24    ; <や>
    .byte $12    ; <つ>
    .byte $1A    ; <は>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $63
    .byte $F7
    .byte $F3, $FF, $00, $0F
    .byte con_катсцена_закрыть_рот
    .byte $E1
    .byte $40    ; <「>
    .byte $5C    ; <フ>
    .byte $6F    ; <ッ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $FA, $06
    .byte $FB, $01, $A3
    .byte $F7
    .byte $F3, $C2
    .byte con_катсцена_номер_звука, $25
    .byte $F5, $08
    .byte $DA
    .byte con_катсцена_номер_звука, $62
    .byte $F7
    .byte $F5, $04
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte $DC
    .byte con_катсцена_задний_фон, $1A
    .byte $FB, $01, $59
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $51
    .byte $F5, $04
    .byte $DE
    .byte $DF
    .byte $DF
    .byte $FA, $10
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $00
    .byte $05    ; <お>
    .byte $22    ; <め>
    .byte $AD    ; <で>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $20    ; <み>
    .byte $A4    ; <ご>
    .byte $14    ; <と>
    .byte $AA    ; <だ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $A9    ; <ぞ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DD
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $A0    ; <が>
    .byte $00
    .byte $06    ; <か>
    .byte $13    ; <て>
    .byte $10    ; <た>
    .byte $19    ; <の>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $A0    ; <が>
    .byte $00
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
    .byte con_катсцена_новая_строка
    .byte $22    ; <め>
    .byte $A5    ; <ざ>
    .byte $0E    ; <せ>
    .byte $14    ; <と>
    .byte $00
    .byte $05    ; <お>
    .byte $0C    ; <し>
    .byte $04    ; <え>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $AA    ; <だ>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $3B
    .byte $F7
    .byte $F3, $00
    .byte $DC
    .byte $FB, $01, $3C
    .byte $E1
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $DB
    .byte $00
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $19    ; <の>
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $CB    ; <ぺ>
    .byte $07    ; <き>
    .byte $AD    ; <で>
    .byte $1A    ; <は>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $12
    .byte $F7
    .byte $F3, $FF, $00, $0C
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $04    ; <え>
    .byte $2F    ; <っ>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $3C
    .byte $F7
    .byte $F3, $00
    .byte $DC
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $FB, $01, $3B
    .byte $E1
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $24    ; <や>
    .byte $7A    ; <、>
    .byte $DB
    .byte $21    ; <む>
    .byte $0C    ; <し>
    .byte $2B    ; <ろ>
    .byte $00
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $AA    ; <だ>
    .byte $2A    ; <れ>
    .byte $23    ; <も>
    .byte $03    ; <う>
    .byte $13    ; <て>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $14    ; <と>
    .byte $00
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $1E    ; <ほ>
    .byte $03    ; <う>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $02    ; <い>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $1A    ; <は>
    .byte $DB
    .byte $00
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $A0    ; <が>
    .byte $00
    .byte $A6    ; <じ>
    .byte $B1    ; <ぶ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $0E    ; <せ>
    .byte $02    ; <い>
    .byte $22    ; <め>
    .byte $02    ; <い>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $09    ; <け>
    .byte $13    ; <て>
    .byte $00
    .byte $01    ; <あ>
    .byte $20    ; <み>
    .byte $AA    ; <だ>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $07    ; <き>
    .byte $0E    ; <せ>
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $19    ; <の>
    .byte $00
    .byte $02    ; <い>
    .byte $19    ; <の>
    .byte $11    ; <ち>
    .byte $14    ; <と>
    .byte $23    ; <も>
    .byte $02    ; <い>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $2D    ; <を>
    .byte $DB
    .byte $00
    .byte $AA    ; <だ>
    .byte $2A    ; <れ>
    .byte $A0    ; <が>
    .byte $00
    .byte $5F    ; <マ>
    .byte $58    ; <ネ>
    .byte $15    ; <な>
    .byte $AE    ; <ど>
    .byte con_катсцена_новая_строка
    .byte $AD    ; <で>
    .byte $07    ; <き>
    .byte $29    ; <る>
    .byte $AA    ; <だ>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $78    ; <?>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte $00
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $2D    ; <を>
    .byte $20    ; <み>
    .byte $16    ; <に>
    .byte $12    ; <つ>
    .byte $09    ; <け>
    .byte $2B    ; <ろ>
    .byte $14    ; <と>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $0C    ; <し>
    .byte $04    ; <え>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte $00
    .byte $0F    ; <そ>
    .byte $19    ; <の>
    .byte $10    ; <た>
    .byte $22    ; <め>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $1A    ; <は>
    .byte $00
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $19    ; <の>
    .byte $23    ; <も>
    .byte $19    ; <の>
    .byte $AA    ; <だ>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $3B
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $00
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $1A    ; <は>
    .byte $7A    ; <、>
    .byte $DB
    .byte $A6    ; <じ>
    .byte $B1    ; <ぶ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $42    ; <イ>
    .byte $62    ; <メ>
    .byte $7D    ; <ー>
    .byte $BA    ; <ジ>
    .byte $19    ; <の>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $16    ; <に>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $AC    ; <づ>
    .byte $07    ; <き>
    .byte $7A    ; <、>
    .byte $DB
    .byte $12    ; <つ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $4D    ; <ス>
    .byte $7D    ; <ー>
    .byte $CD    ; <パ>
    .byte $7D    ; <ー>
    .byte $4C    ; <シ>
    .byte $72    ; <ョ>
    .byte $6F    ; <ッ>
    .byte $54    ; <ト>
    .byte $2D    ; <を>
    .byte $20    ; <み>
    .byte $16    ; <に>
    .byte $12    ; <つ>
    .byte $09    ; <け>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $3C
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $DB
    .byte $00
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $A0    ; <が>
    .byte $00
    .byte $01    ; <あ>
    .byte $20    ; <み>
    .byte $AA    ; <だ>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $01    ; <あ>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $00
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $57
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $DB
    .byte $00
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $3C
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $00
    .byte $DC
    .byte $FB, $01, $3B
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $1A    ; <は>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $A0    ; <が>
    .byte $00
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $16    ; <に>
    .byte $06    ; <か>
    .byte $2C    ; <わ>
    .byte $28    ; <り>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $01    ; <あ>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $00
    .byte $AD    ; <で>
    .byte $2E    ; <ん>
    .byte $0E    ; <せ>
    .byte $12    ; <つ>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $08    ; <く>
    .byte $29    ; <る>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $57
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $AD    ; <で>
    .byte $2E    ; <ん>
    .byte $0E    ; <せ>
    .byte $12    ; <つ>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DE
    .byte $FB, $01, $66
    .byte $DA
    .byte $24    ; <や>
    .byte $29    ; <る>
    .byte $26    ; <よ>
    .byte $00
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte $13    ; <て>
    .byte $AD    ; <で>
    .byte $00
    .byte $01    ; <あ>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $AD    ; <で>
    .byte $2E    ; <ん>
    .byte $0E    ; <せ>
    .byte $12    ; <つ>
    .byte $2D    ; <を>
    .byte $00
    .byte $12    ; <つ>
    .byte $08    ; <く>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $20    ; <み>
    .byte $0E    ; <せ>
    .byte $29    ; <る>
    .byte $26    ; <よ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $3B
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $F8, $02
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $0D
    .byte $FB, $01, $0E
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $79    ; <!>
    .byte $00
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $23    ; <も>
    .byte $24    ; <や>
    .byte $29    ; <る>
    .byte $A9    ; <ぞ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $E1
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $00
    .byte $23    ; <も>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte $A8    ; <ぜ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte con_катсцена_скорость_текста
    .byte $04    ; <え>
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte $EC, $04
    .byte con_катсцена_задний_фон, $45
    .byte $FB, $01, $53
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $02    ; <い>
    .byte $1F    ; <ま>
    .byte $DB
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $13    ; <て>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $A0    ; <が>
    .byte $00
    .byte $2C    ; <わ>
    .byte $10    ; <た>
    .byte $0B    ; <さ>
    .byte $2A    ; <れ>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte $DB
    .byte $05    ; <お>
    .byte $22    ; <め>
    .byte $AD    ; <で>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $00
    .byte $0E    ; <せ>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $55    ; <ナ>
    .byte $6E    ; <ン>
    .byte $C3    ; <バ>
    .byte $7D    ; <ー>
    .byte $6C    ; <ワ>
    .byte $6E    ; <ン>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte $EE
    .byte $EC, $FF
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte $FB, $01, $42
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $47
    .byte $F5, $04
    .byte con_катсцена_закрыть_рот
    .byte $E1
    .byte $40    ; <「>
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $14    ; <と>
    .byte $00
    .byte $05    ; <お>
    .byte $2C    ; <わ>
    .byte $28    ; <り>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $18    ; <ね>
    .byte $7A    ; <、>
    .byte $DB
    .byte $20    ; <み>
    .byte $06    ; <か>
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte con_катсцена_закрыть_рот
    .byte $2E    ; <ん>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $24    ; <や>
    .byte $01    ; <あ>
    .byte $00
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $A1    ; <ぎ>
    .byte $28    ; <り>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $40
    .byte $F7
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $AD    ; <で>
    .byte $00
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1A    ; <は>
    .byte $00
    .byte $1F    ; <ま>
    .byte $10    ; <た>
    .byte $1B    ; <ひ>
    .byte $14    ; <と>
    .byte $12    ; <つ>
    .byte con_катсцена_новая_строка
    .byte $0E    ; <せ>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $1D    ; <へ>
    .byte $00
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $AC    ; <づ>
    .byte $07    ; <き>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $42
    .byte $F7
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $1A    ; <は>
    .byte $00
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $27    ; <ら>
    .byte $19    ; <の>
    .byte $A6    ; <じ>
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $23    ; <も>
    .byte $00
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $02    ; <い>
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $08    ; <く>
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $AA    ; <だ>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $40
    .byte $F7
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $A0    ; <が>
    .byte $00
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $C2    ; <ド>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $7A    ; <、>
    .byte $DB
    .byte $2C    ; <わ>
    .byte $2A    ; <れ>
    .byte $2C    ; <わ>
    .byte $2A    ; <れ>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $27    ; <ら>
    .byte $2D    ; <を>
    .byte $00
    .byte $20    ; <み>
    .byte $1F    ; <ま>
    .byte $23    ; <も>
    .byte $28    ; <り>
    .byte $12    ; <つ>
    .byte $AC    ; <づ>
    .byte $09    ; <け>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $42
    .byte $F7
    .byte $E1
    .byte $40    ; <「>
    .byte $03    ; <う>
    .byte $21    ; <む>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte $FB, $01, $42
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte $EC, $04
    .byte con_катсцена_закрыть_рот
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $00
    .byte $C4    ; <ビ>
    .byte $48    ; <ク>
    .byte $54    ; <ト>
    .byte $68    ; <リ>
    .byte $7D    ; <ー>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $2D    ; <を>
    .byte $05    ; <お>
    .byte $04    ; <え>
    .byte con_катсцена_новая_строка
    .byte $C6    ; <ベ>
    .byte $6E    ; <ン>
    .byte $51    ; <チ>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte $00
    .byte $23    ; <も>
    .byte $AE    ; <ど>
    .byte $28    ; <り>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte con_катсцена_закрыть_рот
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $EE
    .byte $EC, $FF
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $7A    ; <、>
    .byte $DB
    .byte $A4    ; <ご>
    .byte $08    ; <く>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $0B    ; <さ>
    .byte $73    ; <ヮ>
    .byte $00
    .byte $5E    ; <ホ>
    .byte $53    ; <テ>
    .byte $69    ; <ル>
    .byte $AD    ; <で>
    .byte $00
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $08    ; <く>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_закрыть_рот
    .byte $DC
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte $E1
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $24
    .byte $F7
    .byte $F3, $00
    .byte $FA, $2E
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $41    ; <ア>
    .byte $6A    ; <レ>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $07
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $AE    ; <ど>
    .byte $0A    ; <こ>
    .byte $1D    ; <へ>
    .byte $02    ; <い>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $0D    ; <す>
    .byte $A2    ; <ぐ>
    .byte $00
    .byte $23    ; <も>
    .byte $AE    ; <ど>
    .byte $29    ; <る>
    .byte $26    ; <よ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $16    ; <に>
    .byte $00
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $FB, $01, $65
    .byte $E1
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $7A    ; <、>
    .byte $05    ; <お>
    .byte $02    ; <い>
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $48
    .byte $DC
    .byte $F3, $00
    .byte $FA, $4A
    .byte $E1
    .byte $40    ; <「>
    .byte $07    ; <き>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $28
    .byte $F7
    .byte $F3, $00
    .byte $F5, $04
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $04    ; <え>
    .byte $2F    ; <っ>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte $FA, $57
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $DB
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста
    .byte $04    ; <え>
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte con_катсцена_закрыть_рот
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $A0    ; <が>
    .byte $02    ; <い>
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
    .byte $FB, $01, $26
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $A0    ; <が>
    .byte $00
    .byte $12    ; <つ>
    .byte $2A    ; <れ>
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $19    ; <の>
    .byte $26    ; <よ>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $2D    ; <を>
    .byte $00
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $04    ; <え>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $FB, $01, $27
    .byte $1E    ; <ほ>
    .byte $14    ; <と>
    .byte $2E    ; <ん>
    .byte $AE    ; <ど>
    .byte $00
    .byte $A4    ; <ご>
    .byte $03    ; <う>
    .byte $02    ; <い>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $2C    ; <わ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $7A    ; <、>
    .byte $DB
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $A0    ; <が>
    .byte $00
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $C4    ; <ビ>
    .byte $6F    ; <ッ>
    .byte $48    ; <ク>
    .byte $68    ; <リ>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $00
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $AA    ; <だ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $23    ; <も>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $14    ; <と>
    .byte $A0    ; <が>
    .byte $2C    ; <わ>
    .byte $29    ; <る>
    .byte $02    ; <い>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $27
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $5C    ; <フ>
    .byte $5C    ; <フ>
    .byte $00
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $FB, $01, $26
    .byte $DD
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DC
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $00
    .byte $05    ; <お>
    .byte $22    ; <め>
    .byte $AD    ; <で>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $46
    .byte $FB, $02, $90, $9D
    .byte $F7
    .byte $F3, $00
    .byte $FA, $4C
    .byte $DF
    .byte $FB, $01, $68
    .byte $F7
    .byte $F3, $00
    .byte $FA, $47
    .byte $E1
    .byte $40    ; <「>
    .byte $55    ; <ナ>
    .byte $5A    ; <ハ>
    .byte $5A    ; <ハ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DC
    .byte $03    ; <う>
    .byte $1F    ; <ま>
    .byte $08    ; <く>
    .byte $00
    .byte $02    ; <い>
    .byte $07    ; <き>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $18    ; <ね>
    .byte con_катсцена_новая_строка
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $2B
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $AD    ; <で>
    .byte $00
    .byte $08    ; <く>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $00
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $01    ; <あ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $2C    ; <わ>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $33
    .byte $FB, $01, $56
    .byte $F3, $FF, $20, $3F
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $04    ; <え>
    .byte $79    ; <!>
    .byte $DC
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $1D    ; <へ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $FA, $32
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $2A
    .byte $F7
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $2C    ; <わ>
    .byte $28    ; <り>
    .byte $7A    ; <、>
    .byte $DB
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $16    ; <に>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $20    ; <み>
    .byte $12    ; <つ>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $24    ; <や>
    .byte $08    ; <く>
    .byte $0F    ; <そ>
    .byte $08    ; <く>
    .byte $AD    ; <で>
    .byte $07    ; <き>
    .byte $29    ; <る>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $4F
    .byte $F7
    .byte $E1
    .byte $40    ; <「>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DE
    .byte $1A    ; <は>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $2A
    .byte $F7
    .byte $DB
    .byte $FB, $01, $2B
    .byte $E1
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $2B    ; <ろ>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $F4, $02
    .byte con_катсцена_задний_фон, $47
    .byte $FA, $4C
    .byte $F4, $03
    .byte $FB, $01, $2B
    .byte con_катсцена_осветление_экрана
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $AD    ; <で>
    .byte $23    ; <も>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DC
    .byte $11    ; <ち>
    .byte $32    ; <ょ>
    .byte $2F    ; <っ>
    .byte $14    ; <と>
    .byte $00
    .byte $64    ; <ヤ>
    .byte $49    ; <ケ>
    .byte $11    ; <ち>
    .byte $30    ; <ゃ>
    .byte $03    ; <う>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $68
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte con_катсцена_новая_строка
    .byte $B3    ; <ぼ>
    .byte $08    ; <く>
    .byte $A0    ; <が>
    .byte $00
    .byte $06    ; <か>
    .byte $2C    ; <わ>
    .byte $28    ; <り>
    .byte $16    ; <に>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $2B
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $DB
    .byte $FA, $62
    .byte $FB, $01, $6B
    .byte $F7
    .byte $F3, $00
    .byte $F5, $0C
    .byte $F8, $15
    .byte con_катсцена_номер_звука, $0E
    .byte $DA
    .byte con_катсцена_номер_звука, $0E
    .byte $DA
    .byte con_катсцена_номер_звука, $0E
    .byte $DA
    .byte con_катсцена_номер_звука, $0E
    .byte $DA
    .byte $F8, $15
    .byte $E1
    .byte $40    ; <「>
    .byte $23    ; <も>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte $7C    ; <~>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $F5, $FF
    .byte $F3, $FF, $25, $43
    .byte con_катсцена_номер_звука, $30
    .byte $DF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $47
    .byte $FB, $01, $2B
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $DB
    .byte $E1
    .byte $40    ; <「>
    .byte $23    ; <も>
    .byte $03    ; <う>
    .byte $00
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $A5    ; <ざ>
    .byte $07    ; <き>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $FB, $01, $2A
    .byte $DB
    .byte $0B    ; <さ>
    .byte $73    ; <ヮ>
    .byte $00
    .byte $1C    ; <ふ>
    .byte $10    ; <た>
    .byte $28    ; <り>
    .byte $19    ; <の>
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte $1F    ; <ま>
    .byte $26    ; <よ>
    .byte $DB
    .byte $00
    .byte $02    ; <い>
    .byte $07    ; <き>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $FB, $01, $2C
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FA, $69
    .byte $FB, $01, $25
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $DB
    .byte $40    ; <「>
    .byte $54    ; <ト>
    .byte $5E    ; <ホ>
    .byte $5E    ; <ホ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка
    .byte $B4    ; <ガ>
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $4F
    .byte $FA, $52
    .byte $FB, $01, $66
    .byte con_катсцена_номер_звука, $55
    .byte $DE
    .byte con_катсцена_осветление_экрана
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte $01    ; <あ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $A0    ; <が>
    .byte $00
    .byte $1F    ; <ま>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte con_катсцена_новая_строка
    .byte $0F    ; <そ>
    .byte $2B    ; <ろ>
    .byte $0F    ; <そ>
    .byte $2B    ; <ろ>
    .byte $02    ; <い>
    .byte $08    ; <く>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $29
    .byte $F7
    .byte $F3, $00
    .byte $DE
    .byte $FB, $01, $26
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DE
    .byte $A3    ; <げ>
    .byte $2E    ; <ん>
    .byte $07    ; <き>
    .byte $AD    ; <で>
    .byte $18    ; <ね>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FA, $02
    .byte $FB, $01, $47
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $23    ; <も>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DE
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte $01    ; <あ>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $69
    .byte $D9
    .byte con_катсцена_затереть_текст
    .byte $FA, $52
    .byte $FB, $01, $29
    .byte $F7
    .byte $F3, $00
    .byte $F8, $02
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte $DE
    .byte $FA, $02
    .byte $FB, $01, $55
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_номер_звука, $50
    .byte $DD
    .byte $F4, $05
    .byte con_катсцена_затереть_текст
    .byte $FA, $4B
    .byte $FB, $01, $B7
    .byte $F7
    .byte $F3, $00
    .byte $F4, $04
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DE
    .byte $1F    ; <ま>
    .byte $10    ; <た>
    .byte $DE
    .byte $00
    .byte $01    ; <あ>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte $26    ; <よ>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FA, $02
    .byte $FB, $01, $55
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $DE
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DE
    .byte $CF    ; <プ>
    .byte $6B    ; <ロ>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $10    ; <た>
    .byte $22    ; <め>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $1D    ; <へ>
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $DB
    .byte $00
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1D    ; <へ>
    .byte $00
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte $12    ; <つ>
    .byte $23    ; <も>
    .byte $28    ; <り>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0F    ; <そ>
    .byte $19    ; <の>
    .byte $00
    .byte $09    ; <け>
    .byte $12    ; <つ>
    .byte $02    ; <い>
    .byte $1A    ; <は>
    .byte $00
    .byte $02    ; <い>
    .byte $1F    ; <ま>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $2C    ; <わ>
    .byte $27    ; <ら>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FA, $4B
    .byte $FB, $01, $B7
    .byte $F7
    .byte $F3, $00
    .byte $F8, $02
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FA, $02
    .byte $FB, $01, $02
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $AE    ; <ど>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DC
    .byte con_катсцена_номер_звука, $19
    .byte $23    ; <も>
    .byte $0C    ; <し>
    .byte $23    ; <も>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $23    ; <も>
    .byte $0C    ; <し>
    .byte $23    ; <も>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $AD    ; <で>
    .byte $00
    .byte $02    ; <い>
    .byte $11    ; <ち>
    .byte $28    ; <り>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $CF    ; <プ>
    .byte $6B    ; <ロ>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $1A    ; <は>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $19    ; <の>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $1A    ; <は>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $A7    ; <ず>
    .byte $00
    .byte $21    ; <む>
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte $02    ; <い>
    .byte $08    ; <く>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte $FA, $4B
    .byte $FB, $01, $B7
    .byte $F7
    .byte $F3, $00
    .byte $D9
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $FB, $01, $B8
    .byte $E1
    .byte $40    ; <「>
    .byte $04    ; <え>
    .byte $2F    ; <っ>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FA, $23
    .byte $FB, $01, $AD
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $7A    ; <、>
    .byte $DC
    .byte $1F    ; <ま>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $29    ; <る>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FA, $4B
    .byte $FB, $01, $B7
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_закрыть_рот
    .byte $E1
    .byte $40    ; <「>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DE
    .byte $1A    ; <は>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DE
    .byte $25    ; <ゆ>
    .byte $22    ; <め>
    .byte $2D    ; <を>
    .byte $DE
    .byte con_катсцена_скорость_текста
    .byte $04    ; <え>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $22    ; <め>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $04    ; <え>
    .byte $13    ; <て>
    .byte $18    ; <ね>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte $FA, $4D
    .byte $FB, $03, $B9, $BD, $B0
    .byte $F7
    .byte $F3, $00
    .byte $F8, $14
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $4E
    .byte $FB, $02, $BD, $04
    .byte $F3, $00
    .byte $F8, $05
    .byte $DB
    .byte $DF
    .byte $F8, $06
    .byte $F8, $16
    .byte con_катсцена_номер_звука, $6A
    .byte $F8, $01
    .byte $04    ; <え>
    .byte $DB
    .byte $F8, $01
    .byte $05    ; <お>
    .byte $DC
    .byte $F8, $01
    .byte $08    ; <く>
    .byte $DC
    .byte $F8, $01
    .byte $0A    ; <こ>
    .byte $DC
    .byte $F8, $01
    .byte $0C    ; <し>
    .byte $DB
    .byte $F8, $01
    .byte $0E    ; <せ>
    .byte $DB
    .byte $F8, $01
    .byte $10    ; <た>
    .byte $DB
    .byte $F8, $01
    .byte $12    ; <つ>
    .byte $DB
    .byte $F8, $01
    .byte $14    ; <と>
    .byte $DB
    .byte $F8, $01
    .byte $16    ; <に>
    .byte $DB
    .byte $F8, $01
    .byte $18    ; <ね>
    .byte $DB
    .byte $F8, $01
    .byte $1A    ; <は>
    .byte $DB
    .byte $F8, $01
    .byte $1C    ; <ふ>
    .byte $DB
    .byte $F8, $01
    .byte $1E    ; <ほ>
    .byte $DE
    .byte $F8, $01
    .byte $1C    ; <ふ>
    .byte $DB
    .byte $F8, $01
    .byte $1A    ; <は>
    .byte $DB
    .byte $F8, $01
    .byte $18    ; <ね>
    .byte $DB
    .byte $F8, $01
    .byte $16    ; <に>
    .byte $DB
    .byte $F8, $01
    .byte $14    ; <と>
    .byte $DB
    .byte $F8, $01
    .byte $12    ; <つ>
    .byte $DB
    .byte $F8, $01
    .byte $10    ; <た>
    .byte $DB
    .byte $F8, $01
    .byte $0E    ; <せ>
    .byte $DB
    .byte $FB, $01, $B4
    .byte $F3, $00
    .byte $F8, $01
    .byte $0C    ; <し>
    .byte $DB
    .byte $F8, $01
    .byte $0A    ; <こ>
    .byte $DB
    .byte $F8, $01
    .byte $08    ; <く>
    .byte $DB
    .byte $F8, $01
    .byte $06    ; <か>
    .byte $DB
    .byte $F8, $01
    .byte $04    ; <え>
    .byte $DB
    .byte $F8, $01
    .byte $02    ; <い>
    .byte $DB
    .byte $F8, $02
    .byte $F8, $05
    .byte $DD
    .byte con_катсцена_номер_звука, $59
    .byte $F8, $0F
    .byte $DE
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $F0
    .byte $8E    ; <L>
    .byte $22    ; <め>
    .byte $47    ; <キ>
    .byte $70    ; <ャ>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход
