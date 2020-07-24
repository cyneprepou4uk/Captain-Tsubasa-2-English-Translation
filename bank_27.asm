.segment "BANK_27"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

    .word off_AE6D_07_цубаса_и_карлос_перед_матчем






off_AE6D_07_цубаса_и_карлос_перед_матчем:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte $FB, $01, $15
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_номер_звука, $53
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte $EC, $00
    .byte $0B    ; <さ>
    .byte $73    ; <ヮ>
    .byte $00
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $1A    ; <は>
    .byte $00
    .byte $0D    ; <す>
    .byte $AD    ; <で>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $D1    ; <ポ>
    .byte $BA    ; <ジ>
    .byte $4C    ; <シ>
    .byte $72    ; <ョ>
    .byte $6E    ; <ン>
    .byte $16    ; <に>
    .byte $12    ; <つ>
    .byte $07    ; <き>
    .byte $00
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $5E    ; <ホ>
    .byte $42    ; <イ>
    .byte $6F    ; <ッ>
    .byte $4D    ; <ス>
    .byte $69    ; <ル>
    .byte $2D    ; <を>
    .byte $1F    ; <ま>
    .byte $11    ; <ち>
    .byte $1F    ; <ま>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $58
    .byte $F7
    .byte $F3, $00
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $00
    .byte $20    ; <み>
    .byte $1F    ; <ま>
    .byte $23    ; <も>
    .byte $29    ; <る>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte con_катсцена_новая_строка
    .byte $68    ; <リ>
    .byte $45    ; <オ>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte con_катсцена_новая_строка
    .byte $02    ; <い>
    .byte $26    ; <よ>
    .byte $02    ; <い>
    .byte $26    ; <よ>
    .byte $00
    .byte $47    ; <キ>
    .byte $6F    ; <ッ>
    .byte $48    ; <ク>
    .byte $45    ; <オ>
    .byte $5C    ; <フ>
    .byte $AD    ; <で>
    .byte $0D    ; <す>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte $F5, $FF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход
