.segment "BANK_27"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

    .word off_AE6D_07_цубаса_и_карлос_перед_матчем
    .word off_AEEA_08_цубаса_победил_карлоса
    .word $0000





off_AE6D_07_цубаса_и_карлос_перед_матчем:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte $FB, $01, $15
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_номер_звука, $53
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_вид_окна_текста, $00
    .byte $EC, $00
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Just seconds before"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "the whistle blows,"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "all players are"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "in position -"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "eagerly awaiting"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "the start of the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "match."
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $58
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_смещение_текста, $09
    .text "The stadium is"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "packed with"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "cheering fans,"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "as the final match"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "of the Rio Cup is"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "about to kick off!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte $F5, $FF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






off_AEEA_08_цубаса_победил_карлоса:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $2B
    .byte $FA, $10
    .byte $FB, $01, $43
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte $DD
    .byte con_катсцена_номер_звука, $4D
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte $EC, $02
    .byte $68    ; <リ>
    .byte $45    ; <オ>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $1A    ; <は>
    .byte $00
    .byte $4B    ; <サ>
    .byte $6E    ; <ン>
    .byte $CD    ; <パ>
    .byte $43    ; <ウ>
    .byte $6B    ; <ロ>
    .byte $19    ; <の>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $28    ; <り>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $62    ; <メ>
    .byte $6E    ; <ン>
    .byte $B8    ; <ゴ>
    .byte $2D    ; <を>
    .byte $10    ; <た>
    .byte $05    ; <お>
    .byte $0C    ; <し>
    .byte $00
    .byte $20    ; <み>
    .byte $A4    ; <ご>
    .byte $14    ; <と>
    .byte con_катсцена_новая_строка
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte $07    ; <き>
    .byte $22    ; <め>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
; скрытая катсцена
    .byte $F4, $06, $03
    .byte con_катсцена_номер_звука, $62
    .byte $EC, $FF
    .byte $EE
    .byte $FB, $01, $2A
    .byte $F7
    .byte $F3, $00
    .byte $DA
    .byte $FB, $01, $2B
    .byte $E1
    .byte $40    ; <「>
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $18    ; <ね>
    .byte $00
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $FA, $11
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $3B
    .byte $F7
    .byte $F3, $00
    .byte $DC
    .byte $EF
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DC
    .byte $26    ; <よ>
    .byte $08    ; <く>
    .byte $00
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $01    ; <あ>
    .byte $27    ; <ら>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $C3    ; <バ>
    .byte $69    ; <ル>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $14    ; <と>
    .byte $00
    .byte $AD    ; <で>
    .byte $01    ; <あ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $68    ; <リ>
    .byte $45    ; <オ>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $23    ; <も>
    .byte $00
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $AD    ; <で>
    .byte $05    ; <お>
    .byte $2C    ; <わ>
    .byte $28    ; <り>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $3C
    .byte $EF
    .byte $E1
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $00
    .byte $0E    ; <せ>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $1F    ; <ま>
    .byte $AA    ; <だ>
    .byte $1F    ; <ま>
    .byte $AA    ; <だ>
    .byte con_катсцена_новая_строка
    .byte $0D    ; <す>
    .byte $A4    ; <ご>
    .byte $02    ; <い>
    .byte $24    ; <や>
    .byte $12    ; <つ>
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
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $1A    ; <は>
    .byte $00
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $0F
    .byte $FB, $01, $0C
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $62
    .byte $E1
    .byte $40    ; <「>
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $A8    ; <ぜ>
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $23    ; <も>
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
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $01    ; <あ>
    .byte $28    ; <り>
    .byte $A0    ; <が>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte $FA, $10
    .byte $FB, $01, $13
    .byte $F7
    .byte $F3, $00
    .byte $F5, $04
    .byte $E1
    .byte $40    ; <「>
    .byte $04    ; <え>
    .byte $2F    ; <っ>
    .byte con_катсцена_новая_строка
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $12
    .byte $FA, $11
    .byte $DC
    .byte $FB, $01, $15
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $63
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $00
    .byte $1A    ; <は>
    .byte $A6    ; <じ>
    .byte $22    ; <め>
    .byte $13    ; <て>
    .byte $1F    ; <ま>
    .byte $09    ; <け>
    .byte $10    ; <た>
    .byte $26    ; <よ>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $0B    ; <さ>
    .byte $0D    ; <す>
    .byte $A0    ; <が>
    .byte $00
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $A0    ; <が>
    .byte $00
    .byte $20    ; <み>
    .byte $0A    ; <こ>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $05    ; <お>
    .byte $14    ; <と>
    .byte $0A    ; <こ>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DC
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
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $06
    .byte $FB, $01, $A3
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $25
    .byte $F5, $08
    .byte $DA
    .byte $F7
    .byte $F5, $04
    .byte con_катсцена_номер_звука, $62
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $10
    .byte $FA, $11
    .byte $FB, $01, $4E
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte $E1
    .byte $40    ; <「>
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $7A    ; <、>
    .byte $DB
    .byte $01    ; <あ>
    .byte $28    ; <り>
    .byte $A0    ; <が>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $63
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $A1    ; <ぎ>
    .byte $16    ; <に>
    .byte $00
    .byte $01    ; <あ>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte $00
    .byte $CF    ; <プ>
    .byte $6B    ; <ロ>
    .byte $19    ; <の>
    .byte $B6    ; <グ>
    .byte $67    ; <ラ>
    .byte $43    ; <ウ>
    .byte $6E    ; <ン>
    .byte $C2    ; <ド>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $03    ; <う>
    .byte $04    ; <え>
    .byte $06    ; <か>
    .byte $23    ; <も>
    .byte $15    ; <な>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0F    ; <そ>
    .byte $19    ; <の>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $1A    ; <は>
    .byte $00
    .byte $1F    ; <ま>
    .byte $09    ; <け>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $4E
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $19    ; <の>
    .byte $A9    ; <ぞ>
    .byte $21    ; <む>
    .byte $14    ; <と>
    .byte $0A    ; <こ>
    .byte $2B    ; <ろ>
    .byte $0B    ; <さ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $EF
    .byte $DE
    .byte con_катсцена_скорость_текста
    .byte $04    ; <え>
    .byte $E1
    .byte $40    ; <「>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte con_катсцена_номер_звука, $01
    .byte $1F    ; <ま>
    .byte $AA    ; <だ>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $14    ; <と>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $B1    ; <ぶ>
    .byte $00
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte $A9    ; <ぞ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $FB, $01, $12
    .byte $DE
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $23
    .byte $FB, $01, $AE
    .byte $F7
    .byte $F3, $00
    .byte $F5, $08
    .byte con_катсцена_номер_звука, $43
    .byte $DE
    .byte $FA, $10
    .byte $FB, $01, $40
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $52
    .byte $DB
    .byte $EF
    .byte $E1
    .byte $40    ; <「>
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $A1    ; <ぎ>
    .byte $28    ; <り>
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $0A    ; <こ>
    .byte $0A    ; <こ>
    .byte $16    ; <に>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $F3, $FF, $24, $42
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3, $FF, $23, $41
    .byte $F4, $05
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $53
    .byte $DD
    .byte con_катсцена_скорость_текста
    .byte $06    ; <か>
    .byte $F4, $04
    .byte $A3    ; <げ>
    .byte $07    ; <き>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $0D    ; <す>
    .byte $04    ; <え>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte $13    ; <て>
    .byte $16    ; <に>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $4B    ; <サ>
    .byte $6E    ; <ン>
    .byte $CD    ; <パ>
    .byte $43    ; <ウ>
    .byte $6B    ; <ロ>
    .byte $86    ; <F>
    .byte $83    ; <C>
    .byte $DB
    .byte $00
    .byte $0F    ; <そ>
    .byte $0A    ; <こ>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $01    ; <あ>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $0E    ; <せ>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $AD    ; <で>
    .byte $00
    .byte $CF    ; <プ>
    .byte $6B    ; <ロ>
    .byte $2D    ; <を>
    .byte $22    ; <め>
    .byte $A5    ; <ざ>
    .byte $0D    ; <す>
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $A0    ; <が>
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte con_катсцена_мячик
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $00
    .byte $14    ; <と>
    .byte $12    ; <つ>
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $19    ; <の>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $01    ; <あ>
    .byte $27    ; <ら>
    .byte $2C    ; <わ>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $00
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $A1    ; <ぎ>
    .byte $28    ; <り>
    .byte $16    ; <に>
    .byte $26    ; <よ>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $DB
    .byte $00
    .byte $A6    ; <じ>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $01    ; <あ>
    .byte $27    ; <ら>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $2D    ; <を>
    .byte $00
    .byte $21    ; <む>
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte con_катсцена_мячик
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $CC    ; <ぽ>
    .byte $03    ; <う>
    .byte $00
    .byte $34    ; <1>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $00
    .byte $00
    .byte $00
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $AD    ; <で>
    .byte $1A    ; <は>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_затереть_текст
    
    
    
    .byte $E8, $01
    .byte $DF
    .byte con_катсцена_номер_звука, $69
    .byte $DE
    .byte con_катсцена_задний_фон, $0C
    .byte $FB, $01, $43
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_номер_звука, $51
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte $EC, $00
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $06    ; <か>
    .byte $0A    ; <こ>
    .byte $00
    .byte $35    ; <2>
    .byte $18    ; <ね>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $7A    ; <、>
    .byte $DA
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $1E    ; <ほ>
    .byte $03    ; <う>
    .byte $A0    ; <が>
    .byte $00
    .byte $2C    ; <わ>
    .byte $09    ; <け>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $91    ; <V>
    .byte $35    ; <2>
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $00
    .byte $0C    ; <し>
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $A0    ; <が>
    .byte $00
    .byte $07    ; <き>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $1C    ; <ふ>
    .byte $25    ; <ゆ>
    .byte $19    ; <の>
    .byte $00
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $0A    ; <こ>
    .byte $08    ; <く>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $4B    ; <サ>
    .byte $6F    ; <ッ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte con_катсцена_новая_строка
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $09    ; <け>
    .byte $2E    ; <ん>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $12    ; <つ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $00
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $1F    ; <ま>
    .byte $08    ; <く>
    .byte $AD    ; <で>
    .byte $0D    ; <す>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $FA, $11
    .byte con_катсцена_мячик
    .byte con_катсцена_номер_звука, $62
    .byte $FB, $01, $49
    .byte $F7
    .byte $F3, $00
    .byte $FA, $10
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $1E    ; <ほ>
    .byte $19    ; <の>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $14    ; <と>
    .byte $12    ; <つ>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $14    ; <と>
    .byte $14    ; <と>
    .byte $0C    ; <し>
    .byte $91    ; <V>
    .byte $34    ; <1>
    .byte $19    ; <の>
    .byte $00
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $1E    ; <ほ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte $1B    ; <ひ>
    .byte $07    ; <き>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $47    ; <キ>
    .byte $70    ; <ャ>
    .byte $CF    ; <プ>
    .byte $53    ; <テ>
    .byte $6E    ; <ン>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $A0    ; <が>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_номер_звука, $62
    .byte $FB, $01, $1E
    .byte $F7
    .byte $F3, $00
    .byte $FA, $2B
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $18    ; <ね>
    .byte $2E    ; <ん>
    .byte $91    ; <V>
    .byte $34    ; <1>
    .byte $00
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $91    ; <V>
    .byte $35    ; <2>
    .byte $10    ; <た>
    .byte $2F    ; <っ>
    .byte $0E    ; <せ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $23    ; <も>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte $00
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $47    ; <キ>
    .byte $70    ; <ャ>
    .byte $CF    ; <プ>
    .byte $53    ; <テ>
    .byte $6E    ; <ン>
    .byte con_катсцена_новая_строка
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $FB, $01, $43
    .byte $F7
    .byte $EC, $05
    .byte con_катсцена_номер_звука, $62
    .byte $0A    ; <こ>
    .byte $0A    ; <こ>
    .byte $00
    .byte $0A    ; <こ>
    .byte $08    ; <く>
    .byte $28    ; <り>
    .byte $12    ; <つ>
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $A1    ; <ぎ>
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $1F    ; <ま>
    .byte $07    ; <き>
    .byte $05    ; <お>
    .byte $0A    ; <こ>
    .byte $29    ; <る>
    .byte $00
    .byte $5E    ; <ホ>
    .byte $6F    ; <ッ>
    .byte $54    ; <ト>
    .byte $5C    ; <フ>
    .byte $73    ; <ヮ>
    .byte $42    ; <イ>
    .byte $54    ; <ト>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DB
    .byte $0C    ; <し>
    .byte $2E    ; <ん>
    .byte $08    ; <く>
    .byte $19    ; <の>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $07    ; <き>
    .byte $2D    ; <を>
    .byte $22    ; <め>
    .byte $A5    ; <ざ>
    .byte $0D    ; <す>
    .byte con_катсцена_новая_строка
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $A0    ; <が>
    .byte $00
    .byte $1A    ; <は>
    .byte $A6    ; <じ>
    .byte $1F    ; <ま>
    .byte $28    ; <り>
    .byte $1F    ; <ま>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte $F5, $FF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_выход




.export off_0x040005_скрытая_катсцена_из_08
off_0x040005_скрытая_катсцена_из_08:
- D - I - 0x00C038 07:A028: E8        .byte $E8
- D - I - 0x00C039 07:A029: 01        .byte $01    ; <あ>
- D - I - 0x00C03A 07:A02A: ED        .byte $ED
- D - I - 0x00C03B 07:A02B: 43        .byte $43    ; <ウ>
- D - I - 0x00C03C 07:A02C: EC        .byte $EC
- D - I - 0x00C03D 07:A02D: 01        .byte $01    ; <あ>
- D - I - 0x00C03E 07:A02E: 2E        .byte $2E    ; <ん>
- D - I - 0x00C03F 07:A02F: 78        .byte $78    ; <?>
- D - I - 0x00C040 07:A030: DE        .byte $DE
- D - I - 0x00C041 07:A031: 00        .byte $00
- D - I - 0x00C042 07:A032: 15        .byte $15    ; <な>
- D - I - 0x00C043 07:A033: 2E        .byte $2E    ; <ん>
- D - I - 0x00C044 07:A034: AA        .byte $AA    ; <だ>
- D - I - 0x00C045 07:A035: 78        .byte $78    ; <?>
- D - I - 0x00C046 07:A036: FC        .byte $FC
- D - I - 0x00C047 07:A037: DF        .byte $DF
- D - I - 0x00C048 07:A038: FD        .byte $FD
- D - I - 0x00C049 07:A039: FB        .byte $FB
- D - I - 0x00C04A 07:A03A: 01        .byte $01    ; <あ>
- D - I - 0x00C04B 07:A03B: C2        .byte $C2    ; <ド>
- D - I - 0x00C04C 07:A03C: F3        .byte $F3
- D - I - 0x00C04D 07:A03D: 00        .byte $00
- D - I - 0x00C04E 07:A03E: ED        .byte $ED
- D - I - 0x00C04F 07:A03F: 27        .byte $27    ; <ら>
- D - I - 0x00C050 07:A040: EC        .byte $EC
- D - I - 0x00C051 07:A041: 05        .byte $05    ; <お>
- D - I - 0x00C052 07:A042: 05        .byte $05    ; <お>
- D - I - 0x00C053 07:A043: 05        .byte $05    ; <お>
- D - I - 0x00C054 07:A044: 2F        .byte $2F    ; <っ>
- D - I - 0x00C055 07:A045: DA        .byte $DA
- D - I - 0x00C056 07:A046: 00        .byte $00
- D - I - 0x00C057 07:A047: 06        .byte $06    ; <か>
- D - I - 0x00C058 07:A048: 2A        .byte $2A    ; <れ>
- D - I - 0x00C059 07:A049: 1A        .byte $1A    ; <は>
- D - I - 0x00C05A 07:A04A: 79        .byte $79    ; <!>
- D - I - 0x00C05B 07:A04B: FC        .byte $FC
- D - I - 0x00C05C 07:A04C: DE        .byte $DE
- D - I - 0x00C05D 07:A04D: ED        .byte $ED
- D - I - 0x00C05E 07:A04E: 62        .byte $62    ; <メ>
- D - I - 0x00C05F 07:A04F: ED        .byte $ED
- D - I - 0x00C060 07:A050: 3C        .byte $3C    ; <9>
- D - I - 0x00C061 07:A051: EC        .byte $EC
- D - I - 0x00C062 07:A052: 04        .byte $04    ; <え>
- D - I - 0x00C063 07:A053: 5F        .byte $5F    ; <マ>
- D - I - 0x00C064 07:A054: 42        .byte $42    ; <イ>
- D - I - 0x00C065 07:A055: 53        .byte $53    ; <テ>
- D - I - 0x00C066 07:A056: 74        .byte $74    ; <ィ>
- D - I - 0x00C067 07:A057: 00        .byte $00
- D - I - 0x00C068 07:A058: C7        .byte $C7    ; <ボ>
- D - I - 0x00C069 07:A059: 6E        .byte $6E    ; <ン>
- D - I - 0x00C06A 07:A05A: BA        .byte $BA    ; <ジ>
- D - I - 0x00C06B 07:A05B: 70        .byte $70    ; <ャ>
- D - I - 0x00C06C 07:A05C: 6F        .byte $6F    ; <ッ>
- D - I - 0x00C06D 07:A05D: 48        .byte $48    ; <ク>
- D - I - 0x00C06E 07:A05E: AA        .byte $AA    ; <だ>
- D - I - 0x00C06F 07:A05F: 79        .byte $79    ; <!>
- D - I - 0x00C070 07:A060: 79        .byte $79    ; <!>
- D - I - 0x00C071 07:A061: EB        .byte $EB
- D - I - 0x00C072 07:A062: EC        .byte $EC
- D - I - 0x00C073 07:A063: 02        .byte $02    ; <い>
- D - I - 0x00C074 07:A064: 4B        .byte $4B    ; <サ>
- D - I - 0x00C075 07:A065: 6E        .byte $6E    ; <ン>
- D - I - 0x00C076 07:A066: CD        .byte $CD    ; <パ>
- D - I - 0x00C077 07:A067: 43        .byte $43    ; <ウ>
- D - I - 0x00C078 07:A068: 6B        .byte $6B    ; <ロ>
- D - I - 0x00C079 07:A069: 19        .byte $19    ; <の>
- D - I - 0x00C07A 07:A06A: 00        .byte $00
- D - I - 0x00C07B 07:A06B: 0C        .byte $0C    ; <し>
- D - I - 0x00C07C 07:A06C: 32        .byte $32    ; <ょ>
- D - I - 0x00C07D 07:A06D: 03        .byte $03    ; <う>
- D - I - 0x00C07E 07:A06E: 28        .byte $28    ; <り>
- D - I - 0x00C07F 07:A06F: 16        .byte $16    ; <に>
- D - I - 0x00C080 07:A070: FC        .byte $FC
- D - I - 0x00C081 07:A071: BA        .byte $BA    ; <ジ>
- D - I - 0x00C082 07:A072: 70        .byte $70    ; <ャ>
- D - I - 0x00C083 07:A073: 6F        .byte $6F    ; <ッ>
- D - I - 0x00C084 07:A074: 48        .byte $48    ; <ク>
- D - I - 0x00C085 07:A075: 08        .byte $08    ; <く>
- D - I - 0x00C086 07:A076: 2E        .byte $2E    ; <ん>
- D - I - 0x00C087 07:A077: A0        .byte $A0    ; <が>
- D - I - 0x00C088 07:A078: 00        .byte $00
- D - I - 0x00C089 07:A079: 14        .byte $14    ; <と>
- D - I - 0x00C08A 07:A07A: 03        .byte $03    ; <う>
- D - I - 0x00C08B 07:A07B: A6        .byte $A6    ; <じ>
- D - I - 0x00C08C 07:A07C: 32        .byte $32    ; <ょ>
- D - I - 0x00C08D 07:A07D: 03        .byte $03    ; <う>
- D - I - 0x00C08E 07:A07E: 79        .byte $79    ; <!>
- D - I - 0x00C08F 07:A07F: FC        .byte $FC
- D - I - 0x00C090 07:A080: DB        .byte $DB
- D - I - 0x00C091 07:A081: C3        .byte $C3    ; <バ>
- D - I - 0x00C092 07:A082: 6E        .byte $6E    ; <ン>
- D - I - 0x00C093 07:A083: B9        .byte $B9    ; <ザ>
- D - I - 0x00C094 07:A084: 42        .byte $42    ; <イ>
- D - I - 0x00C095 07:A085: 19        .byte $19    ; <の>
- D - I - 0x00C096 07:A086: 00        .byte $00
- D - I - 0x00C097 07:A087: 2A        .byte $2A    ; <れ>
- D - I - 0x00C098 07:A088: 2E        .byte $2E    ; <ん>
- D - I - 0x00C099 07:A089: C8        .byte $C8    ; <ぱ>
- D - I - 0x00C09A 07:A08A: 12        .byte $12    ; <つ>
- D - I - 0x00C09B 07:A08B: AD        .byte $AD    ; <で>
- D - I - 0x00C09C 07:A08C: 0D        .byte $0D    ; <す>
- D - I - 0x00C09D 07:A08D: 79        .byte $79    ; <!>
- D - I - 0x00C09E 07:A08E: EB        .byte $EB
- D - I - 0x00C09F 07:A08F: FB        .byte $FB
- D - I - 0x00C0A0 07:A090: 01        .byte $01    ; <あ>
- D - I - 0x00C0A1 07:A091: C3        .byte $C3    ; <バ>
- D - I - 0x00C0A2 07:A092: ED        .byte $ED
- D - I - 0x00C0A3 07:A093: 62        .byte $62    ; <メ>
- D - I - 0x00C0A4 07:A094: EC        .byte $EC
- D - I - 0x00C0A5 07:A095: 04        .byte $04    ; <え>
- D - I - 0x00C0A6 07:A096: 4B        .byte $4B    ; <サ>
- D - I - 0x00C0A7 07:A097: 6E        .byte $6E    ; <ン>
- D - I - 0x00C0A8 07:A098: 47        .byte $47    ; <キ>
- D - I - 0x00C0A9 07:A099: 71        .byte $71    ; <ュ>
- D - I - 0x00C0AA 07:A09A: 7D        .byte $7D    ; <ー>
- D - I - 0x00C0AB 07:A09B: 00        .byte $00
- D - I - 0x00C0AC 07:A09C: 60        .byte $60    ; <ミ>
- D - I - 0x00C0AD 07:A09D: 4D        .byte $4D    ; <ス>
- D - I - 0x00C0AE 07:A09E: 50        .byte $50    ; <タ>
- D - I - 0x00C0AF 07:A09F: 7D        .byte $7D    ; <ー>
- D - I - 0x00C0B0 07:A0A0: BA        .byte $BA    ; <ジ>
- D - I - 0x00C0B1 07:A0A1: 70        .byte $70    ; <ャ>
- D - I - 0x00C0B2 07:A0A2: 6F        .byte $6F    ; <ッ>
- D - I - 0x00C0B3 07:A0A3: 48        .byte $48    ; <ク>
- D - I - 0x00C0B4 07:A0A4: 79        .byte $79    ; <!>
- D - I - 0x00C0B5 07:A0A5: FC        .byte $FC
- D - I - 0x00C0B6 07:A0A6: DB        .byte $DB
- D - I - 0x00C0B7 07:A0A7: EC        .byte $EC
- D - I - 0x00C0B8 07:A0A8: 02        .byte $02    ; <い>
- D - I - 0x00C0B9 07:A0A9: 14        .byte $14    ; <と>
- D - I - 0x00C0BA 07:A0AA: 08        .byte $08    ; <く>
- D - I - 0x00C0BB 07:A0AB: B2        .byte $B2    ; <べ>
- D - I - 0x00C0BC 07:A0AC: 12        .byte $12    ; <つ>
- D - I - 0x00C0BD 07:A0AD: B7        .byte $B7    ; <ゲ>
- D - I - 0x00C0BE 07:A0AE: 4D        .byte $4D    ; <ス>
- D - I - 0x00C0BF 07:A0AF: 54        .byte $54    ; <ト>
- D - I - 0x00C0C0 07:A0B0: 19        .byte $19    ; <の>
- D - I - 0x00C0C1 07:A0B1: FC        .byte $FC
- D - I - 0x00C0C2 07:A0B2: 5F        .byte $5F    ; <マ>
- D - I - 0x00C0C3 07:A0B3: 42        .byte $42    ; <イ>
- D - I - 0x00C0C4 07:A0B4: 53        .byte $53    ; <テ>
- D - I - 0x00C0C5 07:A0B5: 74        .byte $74    ; <ィ>
- D - I - 0x00C0C6 07:A0B6: 00        .byte $00
- D - I - 0x00C0C7 07:A0B7: C7        .byte $C7    ; <ボ>
- D - I - 0x00C0C8 07:A0B8: 6E        .byte $6E    ; <ン>
- D - I - 0x00C0C9 07:A0B9: BA        .byte $BA    ; <ジ>
- D - I - 0x00C0CA 07:A0BA: 70        .byte $70    ; <ャ>
- D - I - 0x00C0CB 07:A0BB: 6F        .byte $6F    ; <ッ>
- D - I - 0x00C0CC 07:A0BC: 48        .byte $48    ; <ク>
- D - I - 0x00C0CD 07:A0BD: AD        .byte $AD    ; <で>
- D - I - 0x00C0CE 07:A0BE: 0C        .byte $0C    ; <し>
- D - I - 0x00C0CF 07:A0BF: 10        .byte $10    ; <た>
- D - I - 0x00C0D0 07:A0C0: 7B        .byte $7B    ; <。>
- D - I - 0x00C0D1 07:A0C1: FC        .byte $FC
- D - I - 0x00C0D2 07:A0C2: DB        .byte $DB
- D - I - 0x00C0D3 07:A0C3: 1F        .byte $1F    ; <ま>
- D - I - 0x00C0D4 07:A0C4: 10        .byte $10    ; <た>
- D - I - 0x00C0D5 07:A0C5: 00        .byte $00
- D - I - 0x00C0D6 07:A0C6: AE        .byte $AE    ; <ど>
- D - I - 0x00C0D7 07:A0C7: 0A        .byte $0A    ; <こ>
- D - I - 0x00C0D8 07:A0C8: 06        .byte $06    ; <か>
- D - I - 0x00C0D9 07:A0C9: AD        .byte $AD    ; <で>
- D - I - 0x00C0DA 07:A0CA: 00        .byte $00
- D - I - 0x00C0DB 07:A0CB: 01        .byte $01    ; <あ>
- D - I - 0x00C0DC 07:A0CC: 02        .byte $02    ; <い>
- D - I - 0x00C0DD 07:A0CD: 1F        .byte $1F    ; <ま>
- D - I - 0x00C0DE 07:A0CE: 0C        .byte $0C    ; <し>
- D - I - 0x00C0DF 07:A0CF: 32        .byte $32    ; <ょ>
- D - I - 0x00C0E0 07:A0D0: 03        .byte $03    ; <う>
- D - I - 0x00C0E1 07:A0D1: 79        .byte $79    ; <!>
- D - I - 0x00C0E2 07:A0D2: FC        .byte $FC
- D - I - 0x00C0E3 07:A0D3: DE        .byte $DE
- D - I - 0x00C0E4 07:A0D4: EA        .byte $EA
- D - I - 0x00C0E5 07:A0D5: ED        .byte $ED
- D - I - 0x00C0E6 07:A0D6: 31        .byte $31    ; <ゅ>
- D - I - 0x00C0E7 07:A0D7: DE        .byte $DE
- D - I - 0x00C0E8 07:A0D8: FA        .byte $FA
- D - I - 0x00C0E9 07:A0D9: 10        .byte $10    ; <た>
- D - I - 0x00C0EA 07:A0DA: F5        .byte $F5
- D - I - 0x00C0EB 07:A0DB: 04        .byte $04    ; <え>
- D - I - 0x00C0EC 07:A0DC: ED        .byte $ED
- D - I - 0x00C0ED 07:A0DD: 4D        .byte $4D    ; <ス>
- D - I - 0x00C0EE 07:A0DE: F4        .byte $F4
- D - I - 0x00C0EF 07:A0DF: 07        .byte $07    ; <き>