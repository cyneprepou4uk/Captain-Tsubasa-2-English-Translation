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






    .word off_0x040005_скрытая_катсцена_из_1F

.export off_0x040005_скрытая_катсцена_из_1F
off_0x040005_скрытая_катсцена_из_1F:
- D - I - 0x00C1B8 07:A1A8: E8        .byte $E8
- D - I - 0x00C1B9 07:A1A9: 01        .byte $01    ; <あ>
- D - I - 0x00C1BA 07:A1AA: EC        .byte $EC
- D - I - 0x00C1BB 07:A1AB: 00        .byte $00
- D - I - 0x00C1BC 07:A1AC: 0F        .byte $0F    ; <そ>
- D - I - 0x00C1BD 07:A1AD: 19        .byte $19    ; <の>
- D - I - 0x00C1BE 07:A1AE: 0A        .byte $0A    ; <こ>
- D - I - 0x00C1BF 07:A1AF: 2B        .byte $2B    ; <ろ>
- D - I - 0x00C1C0 07:A1B0: 00        .byte $00
- D - I - 0x00C1C1 07:A1B1: A8        .byte $A8    ; <ぜ>
- D - I - 0x00C1C2 07:A1B2: 2E        .byte $2E    ; <ん>
- D - I - 0x00C1C3 07:A1B3: 16        .byte $16    ; <に>
- D - I - 0x00C1C4 07:A1B4: 1E        .byte $1E    ; <ほ>
- D - I - 0x00C1C5 07:A1B5: 2E        .byte $2E    ; <ん>
- D - I - 0x00C1C6 07:A1B6: 19        .byte $19    ; <の>
- D - I - 0x00C1C7 07:A1B7: C6        .byte $C6    ; <ベ>
- D - I - 0x00C1C8 07:A1B8: 6E        .byte $6E    ; <ン>
- D - I - 0x00C1C9 07:A1B9: 51        .byte $51    ; <チ>
- D - I - 0x00C1CA 07:A1BA: AD        .byte $AD    ; <で>
- D - I - 0x00C1CB 07:A1BB: 1A        .byte $1A    ; <は>
- D - I - 0x00C1CC 07:A1BC: 3F        .byte $3F    ; <•>
- D - I - 0x00C1CD 07:A1BD: 3F        .byte $3F    ; <•>
- D - I - 0x00C1CE 07:A1BE: 3F        .byte $3F    ; <•>
- D - I - 0x00C1CF 07:A1BF: FC        .byte $FC
- D - I - 0x00C1D0 07:A1C0: DE        .byte $DE
- D - I - 0x00C1D1 07:A1C1: EA        .byte $EA
- D - I - 0x00C1D2 07:A1C2: FD        .byte $FD
- D - I - 0x00C1D3 07:A1C3: EE        .byte $EE
- D - I - 0x00C1D4 07:A1C4: EC        .byte $EC
- D - I - 0x00C1D5 07:A1C5: FF        .byte $FF
- D - I - 0x00C1D6 07:A1C6: F9        .byte $F9
- D - I - 0x00C1D7 07:A1C7: 10        .byte $10    ; <た>
- D - I - 0x00C1D8 07:A1C8: FA        .byte $FA
- D - I - 0x00C1D9 07:A1C9: 11        .byte $11    ; <ち>
- D - I - 0x00C1DA 07:A1CA: FB        .byte $FB
- D - I - 0x00C1DB 07:A1CB: 01        .byte $01    ; <あ>
- D - I - 0x00C1DC 07:A1CC: 67        .byte $67    ; <ラ>
- D - I - 0x00C1DD 07:A1CD: E9        .byte $E9
- D - I - 0x00C1DE 07:A1CE: F5        .byte $F5
- D - I - 0x00C1DF 07:A1CF: 04        .byte $04    ; <え>
- D - I - 0x00C1E0 07:A1D0: FB        .byte $FB
- D - I - 0x00C1E1 07:A1D1: 01        .byte $01    ; <あ>
- D - I - 0x00C1E2 07:A1D2: 12        .byte $12    ; <つ>
- D - I - 0x00C1E3 07:A1D3: F3        .byte $F3
- D - I - 0x00C1E4 07:A1D4: FF        .byte $FF
- D - I - 0x00C1E5 07:A1D5: 00        .byte $00
- D - I - 0x00C1E6 07:A1D6: 0C        .byte $0C    ; <し>
- D - I - 0x00C1E7 07:A1D7: E1        .byte $E1
- D - I - 0x00C1E8 07:A1D8: DA        .byte $DA
- D - I - 0x00C1E9 07:A1D9: 40        .byte $40    ; <「>
- D - I - 0x00C1EA 07:A1DA: 07        .byte $07    ; <き>
- D - I - 0x00C1EB 07:A1DB: 20        .byte $20    ; <み>
- D - I - 0x00C1EC 07:A1DC: 1A        .byte $1A    ; <は>
- D - I - 0x00C1ED 07:A1DD: 3F        .byte $3F    ; <•>
- D - I - 0x00C1EE 07:A1DE: 3F        .byte $3F    ; <•>
- D - I - 0x00C1EF 07:A1DF: 3F        .byte $3F    ; <•>
- D - I - 0x00C1F0 07:A1E0: FC        .byte $FC
- D - I - 0x00C1F1 07:A1E1: DE        .byte $DE
- D - I - 0x00C1F2 07:A1E2: FD        .byte $FD
- D - I - 0x00C1F3 07:A1E3: FB        .byte $FB
- D - I - 0x00C1F4 07:A1E4: 01        .byte $01    ; <あ>
- D - I - 0x00C1F5 07:A1E5: 21        .byte $21    ; <む>
- D - I - 0x00C1F6 07:A1E6: F7        .byte $F7
- D - I - 0x00C1F7 07:A1E7: F3        .byte $F3
- D - I - 0x00C1F8 07:A1E8: 00        .byte $00
- D - I - 0x00C1F9 07:A1E9: E1        .byte $E1
- D - I - 0x00C1FA 07:A1EA: DC        .byte $DC
- D - I - 0x00C1FB 07:A1EB: 40        .byte $40    ; <「>
- D - I - 0x00C1FC 07:A1EC: 12        .byte $12    ; <つ>
- D - I - 0x00C1FD 07:A1ED: AF        .byte $AF    ; <ば>
- D - I - 0x00C1FE 07:A1EE: 0B        .byte $0B    ; <さ>
- D - I - 0x00C1FF 07:A1EF: 7A        .byte $7A    ; <、>
- D - I - 0x00C200 07:A1F0: DB        .byte $DB
- D - I - 0x00C201 07:A1F1: 07        .byte $07    ; <き>
- D - I - 0x00C202 07:A1F2: 19        .byte $19    ; <の>
- D - I - 0x00C203 07:A1F3: 03        .byte $03    ; <う>
- D - I - 0x00C204 07:A1F4: 00        .byte $00
- D - I - 0x00C205 07:A1F5: 05        .byte $05    ; <お>
- D - I - 0x00C206 07:A1F6: 2A        .byte $2A    ; <れ>
- D - I - 0x00C207 07:A1F7: 1A        .byte $1A    ; <は>
- D - I - 0x00C208 07:A1F8: FC        .byte $FC
- D - I - 0x00C209 07:A1F9: 07        .byte $07    ; <き>
- D - I - 0x00C20A 07:A1FA: 20        .byte $20    ; <み>
- D - I - 0x00C20B 07:A1FB: 10        .byte $10    ; <た>
- D - I - 0x00C20C 07:A1FC: 11        .byte $11    ; <ち>
- D - I - 0x00C20D 07:A1FD: 16        .byte $16    ; <に>
- D - I - 0x00C20E 07:A1FE: 00        .byte $00
- D - I - 0x00C20F 07:A1FF: F8        .byte $F8
- D - I - 0x00C210 07:A200: 17        .byte $17    ; <ぬ>
- D - I - 0x00C211 07:A201: 13        .byte $13    ; <て>
- D - I - 0x00C212 07:A202: 2E        .byte $2E    ; <ん>
- D - I - 0x00C213 07:A203: 00        .byte $00
- D - I - 0x00C214 07:A204: 14        .byte $14    ; <と>
- D - I - 0x00C215 07:A205: 27        .byte $27    ; <ら>
- D - I - 0x00C216 07:A206: 2A        .byte $2A    ; <れ>
- D - I - 0x00C217 07:A207: 10        .byte $10    ; <た>
- D - I - 0x00C218 07:A208: 7B        .byte $7B    ; <。>
- D - I - 0x00C219 07:A209: FC        .byte $FC
- D - I - 0x00C21A 07:A20A: DC        .byte $DC
- D - I - 0x00C21B 07:A20B: 0F        .byte $0F    ; <そ>
- D - I - 0x00C21C 07:A20C: 19        .byte $19    ; <の>
- D - I - 0x00C21D 07:A20D: 00        .byte $00
- D - I - 0x00C21E 07:A20E: 06        .byte $06    ; <か>
- D - I - 0x00C21F 07:A20F: 28        .byte $28    ; <り>
- D - I - 0x00C220 07:A210: 2D        .byte $2D    ; <を>
- D - I - 0x00C221 07:A211: 06        .byte $06    ; <か>
- D - I - 0x00C222 07:A212: 04        .byte $04    ; <え>
- D - I - 0x00C223 07:A213: 0D        .byte $0D    ; <す>
- D - I - 0x00C224 07:A214: 06        .byte $06    ; <か>
- D - I - 0x00C225 07:A215: 2C        .byte $2C    ; <わ>
- D - I - 0x00C226 07:A216: 28        .byte $28    ; <り>
- D - I - 0x00C227 07:A217: 16        .byte $16    ; <に>
- D - I - 0x00C228 07:A218: FC        .byte $FC
- D - I - 0x00C229 07:A219: 02        .byte $02    ; <い>
- D - I - 0x00C22A 07:A21A: 02        .byte $02    ; <い>
- D - I - 0x00C22B 07:A21B: 0A        .byte $0A    ; <こ>
- D - I - 0x00C22C 07:A21C: 14        .byte $14    ; <と>
- D - I - 0x00C22D 07:A21D: 2D        .byte $2D    ; <を>
- D - I - 0x00C22E 07:A21E: 05        .byte $05    ; <お>
- D - I - 0x00C22F 07:A21F: 0C        .byte $0C    ; <し>
- D - I - 0x00C230 07:A220: 04        .byte $04    ; <え>
- D - I - 0x00C231 07:A221: 29        .byte $29    ; <る>
- D - I - 0x00C232 07:A222: 26        .byte $26    ; <よ>
- D - I - 0x00C233 07:A223: 7B        .byte $7B    ; <。>
- D - I - 0x00C234 07:A224: FC        .byte $FC
- D - I - 0x00C235 07:A225: DE        .byte $DE
- D - I - 0x00C236 07:A226: FD        .byte $FD
- D - I - 0x00C237 07:A227: FB        .byte $FB
- D - I - 0x00C238 07:A228: 01        .byte $01    ; <あ>
- D - I - 0x00C239 07:A229: 66        .byte $66    ; <ヨ>
- D - I - 0x00C23A 07:A22A: F7        .byte $F7
- D - I - 0x00C23B 07:A22B: F3        .byte $F3
- D - I - 0x00C23C 07:A22C: 00        .byte $00
- D - I - 0x00C23D 07:A22D: E1        .byte $E1
- D - I - 0x00C23E 07:A22E: 40        .byte $40    ; <「>
- D - I - 0x00C23F 07:A22F: 4C        .byte $4C    ; <シ>
- D - I - 0x00C240 07:A230: 71        .byte $71    ; <ュ>
- D - I - 0x00C241 07:A231: 55        .byte $55    ; <ナ>
- D - I - 0x00C242 07:A232: 42        .byte $42    ; <イ>
- D - I - 0x00C243 07:A233: BE        .byte $BE    ; <ダ>
- D - I - 0x00C244 07:A234: 7D        .byte $7D    ; <ー>
- D - I - 0x00C245 07:A235: EF        .byte $EF
- D - I - 0x00C246 07:A236: 3F        .byte $3F    ; <•>
- D - I - 0x00C247 07:A237: 3F        .byte $3F    ; <•>
- D - I - 0x00C248 07:A238: 3F        .byte $3F    ; <•>
- D - I - 0x00C249 07:A239: FC        .byte $FC
- D - I - 0x00C24A 07:A23A: DE        .byte $DE
- D - I - 0x00C24B 07:A23B: FD        .byte $FD
- D - I - 0x00C24C 07:A23C: FB        .byte $FB
- D - I - 0x00C24D 07:A23D: 01        .byte $01    ; <あ>
- D - I - 0x00C24E 07:A23E: 21        .byte $21    ; <む>
- D - I - 0x00C24F 07:A23F: F7        .byte $F7
- D - I - 0x00C250 07:A240: F3        .byte $F3
- D - I - 0x00C251 07:A241: 00        .byte $00
- D - I - 0x00C252 07:A242: E1        .byte $E1
- D - I - 0x00C253 07:A243: 40        .byte $40    ; <「>
- D - I - 0x00C254 07:A244: 53        .byte $53    ; <テ>
- D - I - 0x00C255 07:A245: 6A        .byte $6A    ; <レ>
- D - I - 0x00C256 07:A246: 5E        .byte $5E    ; <ホ>
- D - I - 0x00C257 07:A247: 6E        .byte $6E    ; <ン>
- D - I - 0x00C258 07:A248: 00        .byte $00
- D - I - 0x00C259 07:A249: 42        .byte $42    ; <イ>
- D - I - 0x00C25A 07:A24A: 6E        .byte $6E    ; <ン>
- D - I - 0x00C25B 07:A24B: 5C        .byte $5C    ; <フ>
- D - I - 0x00C25C 07:A24C: 76        .byte $76    ; <ォ>
- D - I - 0x00C25D 07:A24D: 62        .byte $62    ; <メ>
- D - I - 0x00C25E 07:A24E: 7D        .byte $7D    ; <ー>
- D - I - 0x00C25F 07:A24F: 4C        .byte $4C    ; <シ>
- D - I - 0x00C260 07:A250: 72        .byte $72    ; <ョ>
- D - I - 0x00C261 07:A251: 6E        .byte $6E    ; <ン>
- D - I - 0x00C262 07:A252: FC        .byte $FC
- D - I - 0x00C263 07:A253: 53        .byte $53    ; <テ>
- D - I - 0x00C264 07:A254: 48        .byte $48    ; <ク>
- D - I - 0x00C265 07:A255: 63        .byte $63    ; <モ>
- D - I - 0x00C266 07:A256: 00        .byte $00
- D - I - 0x00C267 07:A257: 5E        .byte $5E    ; <ホ>
- D - I - 0x00C268 07:A258: 6F        .byte $6F    ; <ッ>
- D - I - 0x00C269 07:A259: 54        .byte $54    ; <ト>
- D - I - 0x00C26A 07:A25A: 67        .byte $67    ; <ラ>
- D - I - 0x00C26B 07:A25B: 42        .byte $42    ; <イ>
- D - I - 0x00C26C 07:A25C: 6E        .byte $6E    ; <ン>
- D - I - 0x00C26D 07:A25D: 1A        .byte $1A    ; <は>
- D - I - 0x00C26E 07:A25E: DB        .byte $DB
- D - I - 0x00C26F 07:A25F: 00        .byte $00
- D - I - 0x00C270 07:A260: 33        .byte $33    ; <0>
- D - I - 0x00C271 07:A261: 36        .byte $36    ; <3>
- D - I - 0x00C272 07:A262: 7D        .byte $7D    ; <ー>
- D - I - 0x00C273 07:A263: 35        .byte $35    ; <2>
- D - I - 0x00C274 07:A264: 35        .byte $35    ; <2>
- D - I - 0x00C275 07:A265: 35        .byte $35    ; <2>
- D - I - 0x00C276 07:A266: 7D        .byte $7D    ; <ー>
- D - I - 0x00C277 07:A267: FC        .byte $FC
- D - I - 0x00C278 07:A268: 3A        .byte $3A    ; <7>
- D - I - 0x00C279 07:A269: 38        .byte $38    ; <5>
- D - I - 0x00C27A 07:A26A: 38        .byte $38    ; <5>
- D - I - 0x00C27B 07:A26B: 33        .byte $33    ; <0>
- D - I - 0x00C27C 07:A26C: AD        .byte $AD    ; <で>
- D - I - 0x00C27D 07:A26D: 00        .byte $00
- D - I - 0x00C27E 07:A26E: 03        .byte $03    ; <う>
- D - I - 0x00C27F 07:A26F: 09        .byte $09    ; <け>
- D - I - 0x00C280 07:A270: 12        .byte $12    ; <つ>
- D - I - 0x00C281 07:A271: 09        .byte $09    ; <け>
- D - I - 0x00C282 07:A272: 13        .byte $13    ; <て>
- D - I - 0x00C283 07:A273: 02        .byte $02    ; <い>
- D - I - 0x00C284 07:A274: 29        .byte $29    ; <る>
- D - I - 0x00C285 07:A275: 26        .byte $26    ; <よ>
- D - I - 0x00C286 07:A276: 7B        .byte $7B    ; <。>
- D - I - 0x00C287 07:A277: FC        .byte $FC
- D - I - 0x00C288 07:A278: DE        .byte $DE
- D - I - 0x00C289 07:A279: FD        .byte $FD
- D - I - 0x00C28A 07:A27A: FB        .byte $FB
- D - I - 0x00C28B 07:A27B: 01        .byte $01    ; <あ>
- D - I - 0x00C28C 07:A27C: 66        .byte $66    ; <ヨ>
- D - I - 0x00C28D 07:A27D: F7        .byte $F7
- D - I - 0x00C28E 07:A27E: F3        .byte $F3
- D - I - 0x00C28F 07:A27F: 00        .byte $00
- D - I - 0x00C290 07:A280: E1        .byte $E1
- D - I - 0x00C291 07:A281: 40        .byte $40    ; <「>
- D - I - 0x00C292 07:A282: 01        .byte $01    ; <あ>
- D - I - 0x00C293 07:A283: 28        .byte $28    ; <り>
- D - I - 0x00C294 07:A284: A0        .byte $A0    ; <が>
- D - I - 0x00C295 07:A285: 14        .byte $14    ; <と>
- D - I - 0x00C296 07:A286: 03        .byte $03    ; <う>
- D - I - 0x00C297 07:A287: 00        .byte $00
- D - I - 0x00C298 07:A288: 4C        .byte $4C    ; <シ>
- D - I - 0x00C299 07:A289: 71        .byte $71    ; <ュ>
- D - I - 0x00C29A 07:A28A: 55        .byte $55    ; <ナ>
- D - I - 0x00C29B 07:A28B: 42        .byte $42    ; <イ>
- D - I - 0x00C29C 07:A28C: BE        .byte $BE    ; <ダ>
- D - I - 0x00C29D 07:A28D: 7D        .byte $7D    ; <ー>
- D - I - 0x00C29E 07:A28E: 7B        .byte $7B    ; <。>
- D - I - 0x00C29F 07:A28F: FC        .byte $FC
- D - I - 0x00C2A0 07:A290: DC        .byte $DC
- D - I - 0x00C2A1 07:A291: 0C        .byte $0C    ; <し>
- D - I - 0x00C2A2 07:A292: 01        .byte $01    ; <あ>
- D - I - 0x00C2A3 07:A293: 02        .byte $02    ; <い>
- D - I - 0x00C2A4 07:A294: A0        .byte $A0    ; <が>
- D - I - 0x00C2A5 07:A295: 05        .byte $05    ; <お>
- D - I - 0x00C2A6 07:A296: 2C        .byte $2C    ; <わ>
- D - I - 0x00C2A7 07:A297: 2F        .byte $2F    ; <っ>
- D - I - 0x00C2A8 07:A298: 10        .byte $10    ; <た>
- D - I - 0x00C2A9 07:A299: 27        .byte $27    ; <ら>
- D - I - 0x00C2AA 07:A29A: 00        .byte $00
- D - I - 0x00C2AB 07:A29B: 0B        .byte $0B    ; <さ>
- D - I - 0x00C2AC 07:A29C: 2F        .byte $2F    ; <っ>
- D - I - 0x00C2AD 07:A29D: 0F        .byte $0F    ; <そ>
- D - I - 0x00C2AE 07:A29E: 08        .byte $08    ; <く>
- D - I - 0x00C2AF 07:A29F: FC        .byte $FC
- D - I - 0x00C2B0 07:A2A0: 06        .byte $06    ; <か>
- D - I - 0x00C2B1 07:A2A1: 09        .byte $09    ; <け>
- D - I - 0x00C2B2 07:A2A2: 13        .byte $13    ; <て>
- D - I - 0x00C2B3 07:A2A3: 20        .byte $20    ; <み>
- D - I - 0x00C2B4 07:A2A4: 29        .byte $29    ; <る>
- D - I - 0x00C2B5 07:A2A5: 26        .byte $26    ; <よ>
- D - I - 0x00C2B6 07:A2A6: 7B        .byte $7B    ; <。>
- D - I - 0x00C2B7 07:A2A7: FC        .byte $FC
- D - I - 0x00C2B8 07:A2A8: DE        .byte $DE
- D - I - 0x00C2B9 07:A2A9: FD        .byte $FD
- D - I - 0x00C2BA 07:A2AA: F7        .byte $F7
- D - I - 0x00C2BB 07:A2AB: ED        .byte $ED
- D - I - 0x00C2BC 07:A2AC: 1E        .byte $1E    ; <ほ>
- D - I - 0x00C2BD 07:A2AD: F8        .byte $F8
- D - I - 0x00C2BE 07:A2AE: 0E        .byte $0E    ; <せ>
- D - I - 0x00C2BF 07:A2AF: E1        .byte $E1
- D - I - 0x00C2C0 07:A2B0: 40        .byte $40    ; <「>
- D - I - 0x00C2C1 07:A2B1: 15        .byte $15    ; <な>
- D - I - 0x00C2C2 07:A2B2: 2E        .byte $2E    ; <ん>
- D - I - 0x00C2C3 07:A2B3: 19        .byte $19    ; <の>
- D - I - 0x00C2C4 07:A2B4: 0A        .byte $0A    ; <こ>
- D - I - 0x00C2C5 07:A2B5: 2F        .byte $2F    ; <っ>
- D - I - 0x00C2C6 07:A2B6: 11        .byte $11    ; <ち>
- D - I - 0x00C2C7 07:A2B7: 30        .byte $30    ; <ゃ>
- D - I - 0x00C2C8 07:A2B8: 79        .byte $79    ; <!>
- D - I - 0x00C2C9 07:A2B9: FC        .byte $FC
- D - I - 0x00C2CA 07:A2BA: DE        .byte $DE
- D - I - 0x00C2CB 07:A2BB: FD        .byte $FD
- D - I - 0x00C2CC 07:A2BC: FB        .byte $FB
- D - I - 0x00C2CD 07:A2BD: 01        .byte $01    ; <あ>
- D - I - 0x00C2CE 07:A2BE: 42        .byte $42    ; <イ>
- D - I - 0x00C2CF 07:A2BF: F7        .byte $F7
- D - I - 0x00C2D0 07:A2C0: F3        .byte $F3
- D - I - 0x00C2D1 07:A2C1: 00        .byte $00
- D - I - 0x00C2D2 07:A2C2: E1        .byte $E1
- D - I - 0x00C2D3 07:A2C3: 40        .byte $40    ; <「>
- D - I - 0x00C2D4 07:A2C4: 1F        .byte $1F    ; <ま>
- D - I - 0x00C2D5 07:A2C5: 01        .byte $01    ; <あ>
- D - I - 0x00C2D6 07:A2C6: 00        .byte $00
- D - I - 0x00C2D7 07:A2C7: 14        .byte $14    ; <と>
- D - I - 0x00C2D8 07:A2C8: 16        .byte $16    ; <に>
- D - I - 0x00C2D9 07:A2C9: 06        .byte $06    ; <か>
- D - I - 0x00C2DA 07:A2CA: 08        .byte $08    ; <く>
- D - I - 0x00C2DB 07:A2CB: 00        .byte $00
- D - I - 0x00C2DC 07:A2CC: 0B        .byte $0B    ; <さ>
- D - I - 0x00C2DD 07:A2CD: 02        .byte $02    ; <い>
- D - I - 0x00C2DE 07:A2CE: A4        .byte $A4    ; <ご>
- D - I - 0x00C2DF 07:A2CF: 19        .byte $19    ; <の>
- D - I - 0x00C2E0 07:A2D0: 0C        .byte $0C    ; <し>
- D - I - 0x00C2E1 07:A2D1: 01        .byte $01    ; <あ>
- D - I - 0x00C2E2 07:A2D2: 02        .byte $02    ; <い>
- D - I - 0x00C2E3 07:A2D3: AA        .byte $AA    ; <だ>
- D - I - 0x00C2E4 07:A2D4: FC        .byte $FC
- D - I - 0x00C2E5 07:A2D5: DB        .byte $DB
- D - I - 0x00C2E6 07:A2D6: 08        .byte $08    ; <く>
- D - I - 0x00C2E7 07:A2D7: 02        .byte $02    ; <い>
- D - I - 0x00C2E8 07:A2D8: 19        .byte $19    ; <の>
- D - I - 0x00C2E9 07:A2D9: 15        .byte $15    ; <な>
- D - I - 0x00C2EA 07:A2DA: 02        .byte $02    ; <い>
- D - I - 0x00C2EB 07:A2DB: 26        .byte $26    ; <よ>
- D - I - 0x00C2EC 07:A2DC: 03        .byte $03    ; <う>
- D - I - 0x00C2ED 07:A2DD: 00        .byte $00
- D - I - 0x00C2EE 07:A2DE: 0C        .byte $0C    ; <し>
- D - I - 0x00C2EF 07:A2DF: 2F        .byte $2F    ; <っ>
- D - I - 0x00C2F0 07:A2E0: 06        .byte $06    ; <か>
- D - I - 0x00C2F1 07:A2E1: 28        .byte $28    ; <り>
- D - I - 0x00C2F2 07:A2E2: 10        .byte $10    ; <た>
- D - I - 0x00C2F3 07:A2E3: 10        .byte $10    ; <た>
- D - I - 0x00C2F4 07:A2E4: 06        .byte $06    ; <か>
- D - I - 0x00C2F5 07:A2E5: 04        .byte $04    ; <え>
- D - I - 0x00C2F6 07:A2E6: 7B        .byte $7B    ; <。>
- D - I - 0x00C2F7 07:A2E7: FC        .byte $FC
- D - I - 0x00C2F8 07:A2E8: ED        .byte $ED
- D - I - 0x00C2F9 07:A2E9: 62        .byte $62    ; <メ>
- D - I - 0x00C2FA 07:A2EA: DE        .byte $DE
- D - I - 0x00C2FB 07:A2EB: ED        .byte $ED
- D - I - 0x00C2FC 07:A2EC: 31        .byte $31    ; <ゅ>
- D - I - 0x00C2FD 07:A2ED: DC        .byte $DC
- D - I - 0x00C2FE 07:A2EE: F5        .byte $F5
- D - I - 0x00C2FF 07:A2EF: FF        .byte $FF
- D - I - 0x00C300 07:A2F0: F4        .byte $F4
- D - I - 0x00C301 07:A2F1: 07        .byte $07    ; <き>
