.segment "BANK_04"
.include "copy_bank_ram.inc"
; тут только данные
; поинтеры в 0x000485
; перемещать код можно только после начальной таблицы поинтеров

    .word off_B731_0F_мисаки_победил_хюгу




off_B731_0F_мисаки_победил_хюгу:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $2B
    .byte $FB, $01, $43
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $4E
    .byte con_катсцена_вид_окна_текста, $00
    .byte $EC, $02
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "It's been a long"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "tournament, but"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "the High School"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Championship is over!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "After a hard-fought"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "battle, Nankatsu"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "High holds the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "championship pennant"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "for a second year!"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Just listen to the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "crowd, it's going"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "wild!"
; скрытая катсцена
    .byte $F4, $06, $04
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte $EC, $FF
    .byte $EE
    .byte con_катсцена_задний_фон, $0E
    .byte con_катсцена_осветление_экрана
    .byte $E1
    .byte $40    ; <「>
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $00
    .byte $24    ; <や>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $A8    ; <ぜ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $E1
    .byte $40    ; <「>
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
    .byte con_катсцена_задержка, $28
    .byte $E1
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $A0    ; <が>
    .byte $00
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $A9    ; <ぞ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $1A
    .byte $FB, $01, $03
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte $FA, $10
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $19    ; <の>
    .byte $02    ; <い>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $00
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $26    ; <よ>
    .byte $08    ; <く>
    .byte $00
    .byte $0A    ; <こ>
    .byte $0A    ; <こ>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $00
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $19
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $A6    ; <じ>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $00
    .byte $06    ; <か>
    .byte $13    ; <て>
    .byte $10    ; <た>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $00
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $02    ; <い>
    .byte $2E    ; <ん>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $2D    ; <を>
    .byte $01    ; <あ>
    .byte $2C    ; <わ>
    .byte $0E    ; <せ>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $A6    ; <じ>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $00
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $19    ; <の>
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $14    ; <と>
    .byte con_катсцена_новая_строка
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $2D    ; <を>
    .byte $01    ; <あ>
    .byte $2C    ; <わ>
    .byte $0E    ; <せ>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $00
    .byte $0A    ; <こ>
    .byte $0A    ; <こ>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $10    ; <た>
    .byte $1A    ; <は>
    .byte $A7    ; <ず>
    .byte $AA    ; <だ>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $31
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte con_катсцена_задержка, $3C
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $06
    .byte $FB, $01, $A3
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $25
    .byte $F5, $08
    .byte con_катсцена_задержка, $14
    .byte $F7
    .byte $F5, $04
    .byte con_катсцена_вид_окна_текста, $00
    .byte $EC, $02
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $47    ; <キ>
    .byte $70    ; <ャ>
    .byte $CF    ; <プ>
    .byte $53    ; <テ>
    .byte $6E    ; <ン>
    .byte $19    ; <の>
    .byte $00
    .byte $01    ; <あ>
    .byte $08    ; <く>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $1F    ; <ま>
    .byte $0B    ; <さ>
    .byte $16    ; <に>
    .byte $00
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $08    ; <く>
    .byte $22    ; <め>
    .byte $02    ; <い>
    .byte $19    ; <の>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $09    ; <け>
    .byte $12    ; <つ>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $A4    ; <ご>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $A5    ; <ざ>
    .byte $29    ; <る>
    .byte $16    ; <に>
    .byte $00
    .byte $1C    ; <ふ>
    .byte $0B    ; <さ>
    .byte $2C    ; <わ>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $09    ; <け>
    .byte $12    ; <つ>
    .byte $1F    ; <ま>
    .byte $12    ; <つ>
    .byte $AD    ; <で>
    .byte $0D    ; <す>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $EC, $FF
    .byte $EE
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte $FB, $01, $31
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $3C
    .byte $E1
    .byte $40    ; <「>
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $CD    ; <パ>
    .byte $6E    ; <ン>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
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
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $19    ; <の>
    .byte $62    ; <メ>
    .byte $6E    ; <ン>
    .byte $C3    ; <バ>
    .byte $7D    ; <ー>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $19
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $03    ; <う>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $C2    ; <ド>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $1D    ; <へ>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $A6    ; <じ>
    .byte $15    ; <な>
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte con_катсцена_задержка, $28
    .byte $00
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $47
    .byte con_катсцена_задний_фон, $2F
    .byte $FB, $01, $1F
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_вид_окна_текста, $00
    .byte $EC, $04
    .byte $0B    ; <さ>
    .byte $73    ; <ヮ>
    .byte $00
    .byte $02    ; <い>
    .byte $1F    ; <ま>
    .byte $00
    .byte $0C    ; <し>
    .byte $2E    ; <ん>
    .byte $08    ; <く>
    .byte $19    ; <の>
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $07    ; <き>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $00
    .byte $10    ; <た>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $00
    .byte $2C    ; <わ>
    .byte $10    ; <た>
    .byte $28    ; <り>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $47    ; <キ>
    .byte $70    ; <ャ>
    .byte $CF    ; <プ>
    .byte $53    ; <テ>
    .byte $6E    ; <ン>
    .byte $14    ; <と>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $91    ; <V>
    .byte $35    ; <2>
    .byte $2D    ; <を>
    .byte $1A    ; <は>
    .byte $10    ; <た>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $24    ; <や>
    .byte $08    ; <く>
    .byte $16    ; <に>
    .byte $00
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $00
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $4A    ; <コ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $01    ; <あ>
    .byte $27    ; <ら>
    .byte $0C    ; <し>
    .byte $AD    ; <で>
    .byte $0D    ; <す>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $EC, $FF
    .byte $EE
    .byte con_катсцена_задний_фон, $02
    .byte $FB, $01, $42
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $50
    .byte $EF
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $AD    ; <で>
    .byte $00
    .byte $62    ; <メ>
    .byte $6E    ; <ン>
    .byte $C3    ; <バ>
    .byte $7D    ; <ー>
    .byte $A0    ; <が>
    .byte $0F    ; <そ>
    .byte $2B    ; <ろ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $3E    ; <Jr>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $17    ; <ぬ>
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte $00
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $27    ; <ら>
    .byte $A0    ; <が>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $14    ; <と>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $1C    ; <ふ>
    .byte $2F    ; <っ>
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $35    ; <2>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $A4    ; <ご>
    .byte $19    ; <の>
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $CD    ; <パ>
    .byte $6E    ; <ン>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $27    ; <ら>
    .byte $16    ; <に>
    .byte $14    ; <と>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $00
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $19    ; <の>
    .byte $0C    ; <し>
    .byte $2A    ; <れ>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $0C    ; <し>
    .byte $2B    ; <ろ>
    .byte con_катсцена_задержка, $28
    .byte $00
    .byte $01    ; <あ>
    .byte $19    ; <の>
    .byte $00
    .byte $05    ; <お>
    .byte $14    ; <と>
    .byte $0A    ; <こ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $08    ; <く>
    .byte $29    ; <る>
    .byte $19    ; <の>
    .byte $AA    ; <だ>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $15    ; <な>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $2F
    .byte $FB, $01, $1F
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $53
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_скорость_текста
    .byte $06    ; <か>
    .byte $00
    .byte $00
    .byte $00
    .byte $26    ; <よ>
    .byte $2B    ; <ろ>
    .byte $0A    ; <こ>
    .byte $B0    ; <び>
    .byte $23    ; <も>
    .byte $12    ; <つ>
    .byte $06    ; <か>
    .byte $19    ; <の>
    .byte $1F    ; <ま>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $35    ; <2>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $A4    ; <ご>
    .byte $19    ; <の>
    .byte $00
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $CD    ; <パ>
    .byte $6E    ; <ン>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $16    ; <に>
    .byte $21    ; <む>
    .byte $09    ; <け>
    .byte con_катсцена_новая_строка
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $12    ; <つ>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $1A    ; <は>
    .byte $00
    .byte $A0    ; <が>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $08    ; <く>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte con_катсцена_мячик
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $CD    ; <パ>
    .byte $6E    ; <ン>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $AD    ; <で>
    .byte $00
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $27    ; <ら>
    .byte $2D    ; <を>
    .byte $1F    ; <ま>
    .byte $12    ; <つ>
    .byte con_катсцена_новая_строка
    .byte $0C    ; <し>
    .byte $2A    ; <れ>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $1A    ; <は>
    .byte $00
    .byte $1A    ; <は>
    .byte $10    ; <た>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $06    ; <か>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte con_катсцена_задержка, $28
    .byte $00
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1D    ; <へ>
    .byte $08    ; <く>
    .byte $29    ; <る>
    .byte $00
    .byte $05    ; <お>
    .byte $14    ; <と>
    .byte $0A    ; <こ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $14    ; <と>
    .byte $1A    ; <は>
    .byte $78    ; <?>
    .byte con_катсцена_мячик
    .byte $B1    ; <ぶ>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $1A    ; <は>
    .byte $00
    .byte $68    ; <リ>
    .byte $45    ; <オ>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $A4    ; <ご>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $00
    .byte $00
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $5D    ; <ヘ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $06
    .byte $FB, $01, $A3
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $25
    .byte $F5, $08
    .byte con_катсцена_задержка, $14
    .byte $F7
    .byte $F5, $04
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $10
    .byte $FA, $11
    .byte $FB, $01, $4E
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $4D
    .byte $F5, $04
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $01    ; <あ>
    .byte $28    ; <り>
    .byte $A0    ; <が>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
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
    .byte con_катсцена_задержка, $28
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
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $4E
    .byte $F7
    .byte $F3, $00
    .byte $F5, $04
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
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста
    .byte $04    ; <え>
    .byte $E1
    .byte $40    ; <「>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
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
    .byte con_катсцена_задержка, $78
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $23
    .byte $FB, $01, $AE
    .byte $F7
    .byte $F3, $00
    .byte $F5, $08
    .byte con_катсцена_номер_звука, $43
    .byte con_катсцена_задержка, $78
    .byte $FA, $10
    .byte $FB, $01, $40
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $52
    .byte $EF
    .byte $FA, $11
    .byte $E1
    .byte $40    ; <「>
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $A1    ; <ぎ>
    .byte $28    ; <り>
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $0A    ; <こ>
    .byte $0A    ; <こ>
    .byte $16    ; <に>
    .byte $EF
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte $F4, $05
    .byte con_катсцена_затереть_текст
    .byte $F4, $04
    .byte con_катсцена_номер_звука, $46
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $16    ; <に>
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
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $1D    ; <へ>
    .byte $19    ; <の>
    .byte $00
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $2D    ; <を>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $0E    ; <せ>
    .byte $02    ; <い>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $04    ; <え>
    .byte $2F    ; <っ>
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_мячик
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $36    ; <3>
    .byte $06    ; <か>
    .byte $A3    ; <げ>
    .byte $12    ; <つ>
    .byte $A4    ; <ご>
    .byte $16    ; <に>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $AD    ; <で>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $27    ; <ら>
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $C2    ; <ド>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $00
    .byte $4B    ; <サ>
    .byte $6F    ; <ッ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $00
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $A0    ; <が>
    .byte $07    ; <き>
    .byte $1F    ; <ま>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $02    ; <い>
    .byte $A0    ; <が>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $23    ; <も>
    .byte $00
    .byte $A6    ; <じ>
    .byte $23    ; <も>
    .byte $14    ; <と>
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $36    ; <3>
    .byte $18    ; <ね>
    .byte $2E    ; <ん>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $00
    .byte $3E    ; <Jr>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $00
    .byte $56    ; <ニ>
    .byte $4C    ; <シ>
    .byte $C2    ; <ド>
    .byte $42    ; <イ>
    .byte $52    ; <ツ>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $23    ; <も>
    .byte $00
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $34    ; <1>
    .byte $33    ; <0>
    .byte $AF    ; <ば>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $65    ; <ユ>
    .byte $56    ; <ニ>
    .byte $5C    ; <フ>
    .byte $76    ; <ォ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $2D    ; <を>
    .byte $07    ; <き>
    .byte $13    ; <て>
    .byte $00
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $12    ; <つ>
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $EF
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста
    .byte $04    ; <え>
    .byte $E1
    .byte $40    ; <「>
    .byte $1F    ; <ま>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $00
    .byte $16    ; <に>
    .byte $02    ; <い>
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $F5, $08
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $2A
    .byte $F7
    .byte $F3, $00
    .byte $FA, $10
    .byte $EF
    .byte con_катсцена_скорость_текста
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $78    ; <?>
    .byte con_катсцена_задержка, $3C
    .byte $00
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $EF
    .byte $06    ; <か>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $0F    ; <そ>
    .byte $19    ; <の>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte $00
    .byte $01    ; <あ>
    .byte $15    ; <な>
    .byte $10    ; <た>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $35    ; <2>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $A4    ; <ご>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $AD    ; <で>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $27    ; <ら>
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $CD    ; <パ>
    .byte $6E    ; <ン>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $16    ; <に>
    .byte $00
    .byte $AD    ; <で>
    .byte $29    ; <る>
    .byte $19    ; <の>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $FB, $01, $11
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $CD    ; <パ>
    .byte $6E    ; <ン>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $2A
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $19    ; <の>
    .byte $00
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $14    ; <と>
    .byte con_катсцена_новая_строка
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte $29    ; <る>
    .byte $00
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $21    ; <む>
    .byte $09    ; <け>
    .byte $13    ; <て>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $38    ; <5>
    .byte $06    ; <か>
    .byte $0A    ; <こ>
    .byte $08    ; <く>
    .byte $19    ; <の>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $A0    ; <が>
    .byte $00
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $0C    ; <し>
    .byte $2E    ; <ん>
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $A6    ; <じ>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $2D    ; <を>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $19    ; <の>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $AF    ; <ば>
    .byte $24    ; <や>
    .byte $0C    ; <し>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $00
    .byte $5A    ; <ハ>
    .byte $6E    ; <ン>
    .byte $C5    ; <ブ>
    .byte $69    ; <ル>
    .byte $B6    ; <グ>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $A0    ; <が>
    .byte $00
    .byte $07    ; <き>
    .byte $1F    ; <ま>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $2C    ; <わ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $1F    ; <ま>
    .byte $28    ; <り>
    .byte $01    ; <あ>
    .byte $15    ; <な>
    .byte $10    ; <た>
    .byte $1A    ; <は>
    .byte $00
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $AF    ; <ば>
    .byte $24    ; <や>
    .byte $0C    ; <し>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $11
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $AF    ; <ば>
    .byte $24    ; <や>
    .byte $0C    ; <し>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $24    ; <や>
    .byte $00
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $AD    ; <で>
    .byte $23    ; <も>
    .byte $00
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $CF    ; <プ>
    .byte $6B    ; <ロ>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1D    ; <へ>
    .byte $1A    ; <は>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FA, $0F
    .byte $FB, $01, $43
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $4B    ; <サ>
    .byte $6E    ; <ン>
    .byte $CD    ; <パ>
    .byte $43    ; <ウ>
    .byte $6B    ; <ロ>
    .byte $19    ; <の>
    .byte $47    ; <キ>
    .byte $70    ; <ャ>
    .byte $CF    ; <プ>
    .byte $53    ; <テ>
    .byte $6E    ; <ン>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $A8    ; <ぜ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $26    ; <よ>
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1D    ; <へ>
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $00
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FA, $10
    .byte $FB, $01, $40
    .byte $F7
    .byte $F3, $00
    .byte $FA, $11
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $19    ; <の>
    .byte $00
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $06    ; <か>
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
    .byte $1B    ; <ひ>
    .byte $12    ; <つ>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1D    ; <へ>
    .byte $07    ; <き>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $09
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $A1    ; <ぎ>
    .byte $28    ; <り>
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $4D
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte con_катсцена_задержка, $3C
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $EF
    .byte $3F    ; <•>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $2D    ; <を>
    .byte $00
    .byte $1F    ; <ま>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $09
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $10
    .byte $E1
    .byte con_катсцена_задержка, $78
    .byte $40    ; <「>
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_задержка, $78
    .byte $00
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte con_катсцена_номер_звука, $4C
    .byte $EF
    .byte $3F    ; <•>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $50
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1D    ; <へ>
    .byte $02    ; <い>
    .byte $08    ; <く>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $F5, $04
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $4D
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $62
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $3F    ; <•>
    .byte $F8, $02
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $10
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $3C
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $2C    ; <わ>
    .byte $28    ; <り>
    .byte $00
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $A1    ; <ぎ>
    .byte $28    ; <り>
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $FB, $01, $09
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $CD    ; <パ>
    .byte $6E    ; <ン>
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
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $1F    ; <ま>
    .byte $0D    ; <す>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $FB, $01, $10
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $40
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $5C    ; <フ>
    .byte $F8, $02
    .byte $6F    ; <ッ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $63
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $3C
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $28    ; <り>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $C2    ; <ド>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $AD    ; <で>
    .byte $00
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $0D    ; <す>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $13
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка
    .byte $1E    ; <ほ>
    .byte $FB, $01, $11
    .byte con_катсцена_задержка, $50
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $00
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $A7    ; <ず>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $1D    ; <へ>
    .byte $23    ; <も>
    .byte $AE    ; <ど>
    .byte $29    ; <る>
    .byte $A9    ; <ぞ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $63
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $01    ; <あ>
    .byte con_катсцена_задержка, $28
    .byte $00
    .byte $1F    ; <ま>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $0F
    .byte $FB, $01, $0C
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $7D    ; <ー>
    .byte $0C    ; <し>
    .byte $00
    .byte $07    ; <き>
    .byte $1F    ; <ま>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $E1
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $A8    ; <ぜ>
    .byte $00
    .byte $47    ; <キ>
    .byte $70    ; <ャ>
    .byte $CF    ; <プ>
    .byte $53    ; <テ>
    .byte $6E    ; <ン>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_задержка, $3C
    .byte $26    ; <よ>
    .byte $0C    ; <し>
    .byte $00
    .byte $02    ; <い>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $00
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1D    ; <へ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
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
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_выход






.export off_0x040005_скрытая_катсцена_из_0F
off_0x040005_скрытая_катсцена_из_0F:
    .byte $E8, $01
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $43
    .byte con_катсцена_комментатор, $01
    .byte con_катсцена_смещение_текста, $09
    .text "Hey! The music just"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "stopped..."
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Could it be...?"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $50
    
    
    
    .byte $FB, $01, $C2
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $27
    .byte con_катсцена_комментатор, $05
    .byte con_катсцена_смещение_текста, $09
    .text "Oh, of course!"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_номер_звука, $3C
    .byte con_катсцена_комментатор, $02
    .text " It's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "our favorite Banzai"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "boy once more,"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Mighty Bomb Jack!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "The fans sure love"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "him, and he loves"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "his fans!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "He's a good guy!"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .byte con_катсцена_комментатор, $04
    .text "Yo, Japan's best!"
    .byte con_катсцена_мячик
    .byte con_катсцена_частично_затереть_текст
    
    
; таймер зависания джека в воздухе 0x0147BD
    .byte $FB, $02, $C5, $C4
    .byte con_катсцена_номер_звука, $04
    .byte con_катсцена_комментатор, $01
    .byte con_катсцена_смещение_текста, $09
    .text "Whoo,"
    .byte con_катсцена_задержка, $08
    .text " look at him go!"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Higher and"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_комментатор, $05
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Hey,"
    .byte con_катсцена_задержка, $08
    .text " wait."
    .byte con_катсцена_задержка, $0F
    .text " I saw you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "clinging there!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "Come down and stop"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "messing around!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $24
    
    
    
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $02
    .byte con_катсцена_номер_звука, $64
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_комментатор, $01
    .byte con_катсцена_смещение_текста, $09
; пустой текст чтобы сменить эмоцию комментатора
    .text " "
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "Well,"
    .byte con_катсцена_задержка, $0F
    .text " folks"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "I sure asked for it."
    .byte con_катсцена_номер_звука, $56
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_номер_звука, $4E
    .byte $F4, $07
