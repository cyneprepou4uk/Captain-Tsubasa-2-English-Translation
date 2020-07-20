.segment "BANK_26"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

.word off_A020_00_самая_первая_заставка
.word off_A2A1_01_история_цубасы






off_A020_00_самая_первая_заставка:
	.byte $E8
	.byte $01
	.byte con_катсцена_задний_фон
	.byte $00
	.byte $FB
	.byte $01
	.byte $8D
	.byte $E9
	.byte con_катсцена_задержка + 7
	.byte $EA
	.byte con_катсцена_номер_звука
	.byte $58
	.byte con_катсцена_задержка + 4
	.byte con_катсцена_вид_окна_текста
	.byte $01
	.byte $EC
	.byte $00
	.byte con_катсцена_задний_фон
	.byte $01
	.byte $FB
	.byte $01
	.byte $6E
	.byte $F8
	.byte $0A
	.byte $F3
	.byte $00
	.byte $F5
	.byte $00
	.byte con_катсцена_номер_звука
	.byte $68
	.byte con_катсцена_скорость_текста
	.byte $02
	.text "So fast!"
	.byte con_катсцена_задержка + 3
	.byte con_катсцена_скорость_текста
	.byte $04
	.text " Closing"
	.byte con_катсцена_новая_строка
	.text "down on Brazil's goal"
	.byte con_катсцена_новая_строка
	.text "is Japan's captain,"
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_новая_строка
	.text "Ozora Tsubasa!"
	.byte con_катсцена_задержка + 4
	.byte $EA
	.byte con_катсцена_затереть_текст
	.byte $E8
	.byte $01
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FA
	.byte $03
	.byte $FB
	.byte $01
	.byte $75
	.byte $F3
	.byte $00
	.byte con_катсцена_задержка + 3
	.byte con_катсцена_скорость_текста
	.byte $01
	.text " Ozora Tsubasa"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 1
	.text "Sao Paulo FC,Brazil"
	.byte con_катсцена_новая_строка
	.text "  Midfielder"
	.byte con_катсцена_задержка + 6
	.byte $EA
	.byte con_катсцена_затереть_текст
	.byte con_катсцена_задний_фон
	.byte $08
	.byte $FB
	.byte $02
	.byte $C1
	.byte $82
	.byte $F3
	.byte $00
	.byte $F5
	.byte $10
	.byte con_катсцена_номер_звука
	.byte $28
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_номер_звука
	.byte $28
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_номер_звука
	.byte $28
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_номер_звука
	.byte $0E
	.byte con_катсцена_вид_окна_текста
	.byte $01
	.byte $EC
	.byte $05
	.byte con_катсцена_скорость_текста
	.byte $04
	.text "Hyuga"
	.byte con_катсцена_номер_звука
	.byte $6B
	.text " throws down"
	.byte con_катсцена_новая_строка
	.text "with his powerful"
	.byte con_катсцена_новая_строка
	.text "Tiger Tackle!!"
	.byte con_катсцена_задержка + 2
	.text " He's"
	.byte con_катсцена_новая_строка
	.text "like a wild beast!"
	.byte con_катсцена_задержка + 4
	.byte con_катсцена_номер_звука
	.byte $02
	.byte $EA
	.byte con_катсцена_затереть_текст
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FA
	.byte $07
	.byte $FB
	.byte $01
	.byte $76
	.byte $F3
	.byte $00
	.byte con_катсцена_задержка + 3
	.byte con_катсцена_скорость_текста
	.byte $01
	.text " Hyuga Kojiro"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 1
	.text "Toho Academy,Japan"
	.byte con_катсцена_новая_строка
	.text " Center foward"
	.byte con_катсцена_задержка + 6
	.byte $EA
	.byte con_катсцена_затереть_текст
	.byte con_катсцена_вид_окна_текста
	.byte $01
	.byte $EC
	.byte $02
	.byte con_катсцена_задний_фон
	.byte $09
	.byte $FB
	.byte $01
	.byte $84
	.byte $F3
	.byte $00
	.byte $F5
	.byte $01
	.byte con_катсцена_номер_звука
	.byte $0E
	.byte con_катсцена_скорость_текста
	.byte $04
	.text "Wow,"
	.byte con_катсцена_задержка + 2
	.text "look"
	.byte con_катсцена_номер_звука
	.byte $09
	.text " at that"
	.byte con_катсцена_новая_строка
	.text "Golden Combo!"
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_номер_звука
	.byte $30
	.text " Their"
	.byte con_катсцена_новая_строка
	.text "super Twin Shot!"
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_новая_строка
	.text "Perfect coordination!"
	.byte con_катсцена_задержка + 4
	.byte $EA
	.byte con_катсцена_затереть_текст
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FA
	.byte $03
	.byte $FB
	.byte $01
	.byte $77
	.byte $F3
	.byte $00
	.byte con_катсцена_задержка + 3
	.byte con_катсцена_скорость_текста
	.byte $01
	.text " Misaki Tarou"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 1
	.text "Nankatsu High,Japan"
	.byte con_катсцена_новая_строка
	.text "  Midfielder"
	.byte con_катсцена_задержка + 6
	.byte $EA
	.byte con_катсцена_затереть_текст
	.byte con_катсцена_вид_окна_текста
	.byte $01
	.byte $EC
	.byte $04
	.byte con_катсцена_задний_фон
	.byte $0A
	.byte $FB
	.byte $03
	.byte $C0
	.byte $A2
	.byte $7D
	.byte $F3
	.byte $00
	.byte con_катсцена_номер_звука
	.byte $07
	.byte con_катсцена_скорость_текста
	.byte $04
	.text "A one-hand"
	.byte con_катсцена_номер_звука
	.byte $12
	.text "ed save!"
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_новая_строка
	.text "As expected from"
	.byte con_катсцена_новая_строка
	.text "Wakabyashi,"
	.byte con_катсцена_задержка + 2
	.text "Japan's"
	.byte con_катсцена_новая_строка
	.text "own Guardian Deity!"
	.byte con_катсцена_задержка + 4
	.byte $EA
	.byte con_катсцена_затереть_текст
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FA
	.byte $0B
	.byte $FB
	.byte $01
	.byte $7C
	.byte $F3
	.byte $00
	.byte con_катсцена_задержка + 3
	.byte con_катсцена_скорость_текста
	.byte $01
	.byte con_смещение_текста
	.text "Wakabayashi Genzo"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 2
	.text "Hamburger SV,Germany"
	.byte con_катсцена_новая_строка
	.text "  Goalkeeper"
	.byte con_катсцена_задержка + 6
	.byte $EA
	.byte con_катсцена_затереть_текст
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FB
	.byte $01
	.byte $0D
	.byte con_катсцена_скорость_текста
	.byte $00
	.byte con_смещение_текста + 5
	.text "Facing down our strongest"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 5
	.text "foe,Brazil,our dream and"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 5
	.text "goal:to be #1 in the world."
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 5
	.text "We stand as one team,"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 5
	.text "awaiting the final battle."
	.byte $E9
	.byte con_катсцена_задержка + 7
	.byte con_катсцена_задержка + 7
	.byte $F4
	.byte $05
	.byte con_катсцена_затереть_текст
	.byte $F8
	.byte $00
	.byte con_катсцена_прыжок
	.word off_A020_00_самая_первая_заставка







off_A2A1_01_история_цубасы:
	.byte $E8
	.byte $01
	.byte $F9
	.byte $5C
	.byte $FB
	.byte $01
	.byte $6D
	.byte $DD
	.byte $E9
	.byte con_катсцена_номер_звука
	.byte $55	; <ナ>
	.byte $DD
	.byte $4B	; <サ>
	.byte $6F	; <ッ>
	.byte $46	; <カ>
	.byte $7D	; <ー>
	.byte $C7	; <ボ>
	.byte $7D	; <ー>
	.byte $69	; <ル>
	.byte $2D	; <を>
	.byte $00
	.byte $14	; <と>
	.byte $23	; <も>
	.byte $AA	; <だ>
	.byte $11	; <ち>
	.byte $16	; <に>
	.byte con_катсцена_новая_строка
	.byte $00
	.byte $16	; <に>
	.byte $1E	; <ほ>
	.byte $2E	; <ん>
	.byte $A0	; <が>
	.byte $6C	; <ワ>
	.byte $7D	; <ー>
	.byte $69	; <ル>
	.byte $C2	; <ド>
	.byte $46	; <カ>
	.byte $6F	; <ッ>
	.byte $CF	; <プ>
	.byte $AD	; <で>
	.byte con_катсцена_новая_строка
	.byte $25	; <ゆ>
	.byte $03	; <う>
	.byte $0C	; <し>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $0D	; <す>
	.byte $29	; <る>
	.byte $1B	; <ひ>
	.byte $2D	; <を>
	.byte $00
	.byte $25	; <ゆ>
	.byte $22	; <め>
	.byte $20	; <み>
	.byte $29	; <る>
	.byte con_катсцена_новая_строка
	.byte $0C	; <し>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $18	; <ね>
	.byte $2E	; <ん>
	.byte $DA
	.byte $00
	.byte $05	; <お>
	.byte $05	; <お>
	.byte $A9	; <ぞ>
	.byte $27	; <ら>
	.byte $00
	.byte $12	; <つ>
	.byte $AF	; <ば>
	.byte $0B	; <さ>
	.byte con_катсцена_мячик
	.byte $EA
	.byte $F9
	.byte $5D	; <ヘ>
	.byte $FB
	.byte $01	; <あ>
	.byte $17	; <ぬ>
	.byte $E9
	.byte $00
	.byte $00
	.byte $B1	; <ぶ>
	.byte $10	; <た>
	.byte $02	; <い>
	.byte $1A	; <は>
	.byte $00
	.byte $0E	; <せ>
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $1D	; <へ>
	.byte $79	; <!>
	.byte con_катсцена_новая_строка
	.byte $DC
	.byte con_смещение_текста + 1
	.byte $A8	; <ぜ>
	.byte $2E	; <ん>
	.byte $16	; <に>
	.byte $1E	; <ほ>
	.byte $2E	; <ん>
	.byte $3E	; <Jr>
	.byte $65	; <ユ>
	.byte $7D	; <ー>
	.byte $4D	; <ス>
	.byte $1A	; <は>
	.byte $00
	.byte $5C	; <フ>
	.byte $67	; <ラ>
	.byte $6E	; <ン>
	.byte $4D	; <ス>
	.byte $0A	; <こ>
	.byte $08	; <く>
	.byte $0B	; <さ>
	.byte $02	; <い>
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста
	.byte $3E	; <Jr>
	.byte $65	; <ユ>
	.byte $7D	; <ー>
	.byte $4D	; <ス>
	.byte $10	; <た>
	.byte $02	; <い>
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $00
	.byte $09	; <け>
	.byte $2F	; <っ>
	.byte $0C	; <し>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $0E	; <せ>
	.byte $2E	; <ん>
	.byte $AD	; <で>
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 1
	.byte $56	; <ニ>
	.byte $4C	; <シ>
	.byte $C2	; <ド>
	.byte $42	; <イ>
	.byte $52	; <ツ>
	.byte $2D	; <を>
	.byte $10	; <た>
	.byte $05	; <お>
	.byte $0C	; <し>
	.byte $00
	.byte $0E	; <せ>
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $02	; <い>
	.byte $11	; <ち>
	.byte $14	; <と>
	.byte $15	; <な>
	.byte $2F	; <っ>
	.byte $10	; <た>
	.byte con_катсцена_мячик
	.byte $EA
	.byte $F9
	.byte $04	; <え>
	.byte $FB
	.byte $01	; <あ>
	.byte $50	; <タ>
	.byte $E9
	.byte con_смещение_текста
	.byte $10	; <た>
	.byte $02	; <い>
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $0C	; <し>
	.byte $31	; <ゅ>
	.byte $03	; <う>
	.byte $28	; <り>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $A4	; <ご>
	.byte $00
	.byte $12	; <つ>
	.byte $AF	; <ば>
	.byte $0B	; <さ>
	.byte $1A	; <は>
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 1
	.byte $06	; <か>
	.byte $12	; <つ>
	.byte $13	; <て>
	.byte $19	; <の>
	.byte $4A	; <コ>
	.byte $7D	; <ー>
	.byte $51	; <チ>
	.byte $00
	.byte $6B	; <ロ>
	.byte $C6	; <ベ>
	.byte $69	; <ル>
	.byte $54	; <ト>
	.byte $14	; <と>
	.byte $00
	.byte $0B	; <さ>
	.byte $02	; <い>
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $0C	; <し>
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 1
	.byte $12	; <つ>
	.byte $02	; <い>
	.byte $16	; <に>
	.byte $00
	.byte $C5	; <ブ>
	.byte $67	; <ラ>
	.byte $BA	; <ジ>
	.byte $69	; <ル>
	.byte $1D	; <へ>
	.byte $2C	; <わ>
	.byte $10	; <た>
	.byte $29	; <る>
	.byte $00
	.byte $25	; <ゆ>
	.byte $22	; <め>
	.byte $2D	; <を>
	.byte $14	; <と>
	.byte $A3	; <げ>
	.byte $10	; <た>
	.byte con_катсцена_мячик
	.byte $EA
	.byte $F9
	.byte $5E	; <ホ>
	.byte $FB
	.byte $01	; <あ>
	.byte $51	; <チ>
	.byte $E9
	.byte con_катсцена_скорость_текста
	.byte $08	; <く>
	.byte $00
	.byte $00
	.byte $0F	; <そ>
	.byte $0C	; <し>
	.byte $13	; <て>
	.byte $00
	.byte $36	; <3>
	.byte $18	; <ね>
	.byte $2E	; <ん>
	.byte $A4	; <ご>
	.byte $3F	; <•>
	.byte $3F	; <•>
	.byte $3F	; <•>
	.byte con_катсцена_новая_строка
	.byte $DD
	.byte $F3
	.byte $FF
	.byte $23	; <も>
	.byte $41	; <ア>
	.byte $F6
	.byte $01	; <あ>
	.byte $F3
	.byte $FF
	.byte $24	; <や>
	.byte $42	; <イ>
	.byte $F6
	.byte $06	; <か>
	.byte $F3
	.byte $FF
	.byte $00
	.byte $17	; <ぬ>
	.byte con_смещение_текста + 1
	.byte $DC
	.byte $4B	; <サ>
	.byte $6E	; <ン>
	.byte $CD	; <パ>
	.byte $43	; <ウ>
	.byte $6B	; <ロ>
	.byte $86	; <F>
	.byte $83	; <C>
	.byte $16	; <に>
	.byte $00
	.byte $0B	; <さ>
	.byte $2E	; <ん>
	.byte $06	; <か>
	.byte $0C	; <し>
	.byte $10	; <た>
	.byte $00
	.byte $12	; <つ>
	.byte $AF	; <ば>
	.byte $0B	; <さ>
	.byte $19	; <の>
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста
	.byte $01	; <あ>
	.byte $27	; <ら>
	.byte $10	; <た>
	.byte $15	; <な>
	.byte $10	; <た>
	.byte $10	; <た>
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $A0	; <が>
	.byte $00
	.byte $4D	; <ス>
	.byte $50	; <タ>
	.byte $7D	; <ー>
	.byte $54	; <ト>
	.byte $0C	; <し>
	.byte $10	; <た>
	.byte $79	; <!>
	.byte con_катсцена_новая_строка
; скрытая катсцена
	.byte $F4
	.byte $06	; <か>
	.byte $05	; <お>
	.byte $EA
	.byte con_катсцена_номер_звука
	.byte $31	; <ゅ>
	.byte $DE
	.byte con_катсцена_номер_звука
	.byte $01	; <あ>
	.byte $DE
	.byte con_катсцена_номер_звука
	.byte $51	; <チ>
	.byte con_катсцена_скорость_текста
	.byte $08	; <く>
	.byte $F9
	.byte $2D	; <を>
	.byte $FB
	.byte $01	; <あ>
	.byte $0B	; <さ>
	.byte $E9
	.byte $F4
	.byte $05	; <お>
	.byte $C5	; <ブ>
	.byte $67	; <ラ>
	.byte $BA	; <ジ>
	.byte $69	; <ル>
	.byte $3F	; <•>
	.byte $4B	; <サ>
	.byte $6E	; <ン>
	.byte $CD	; <パ>
	.byte $43	; <ウ>
	.byte $6B	; <ロ>
	.byte $86	; <F>
	.byte $83	; <C>
	.byte con_катсцена_новая_строка
	.byte $F4
	.byte $04	; <え>
	.byte $DE
	.byte $DF
	.byte $F4
	.byte $05	; <お>
	.byte con_катсцена_затереть_текст
	.byte $F4
	.byte $04	; <え>
	.byte con_смещение_текста
	.byte $DF
	.byte $40	; <「>
	.byte $26	; <よ>
	.byte $0C	; <し>
	.byte $00
	.byte $20	; <み>
	.byte $2E	; <ん>
	.byte $15	; <な>
	.byte $07	; <き>
	.byte $09	; <け>
	.byte $7A	; <、>
	.byte $DB
	.byte $65	; <ユ>
	.byte $7D	; <ー>
	.byte $4D	; <ス>
	.byte $48	; <ク>
	.byte $67	; <ラ>
	.byte $4D	; <ス>
	.byte $19	; <の>
	.byte con_катсцена_новая_строка
	.byte $55	; <ナ>
	.byte $6E	; <ン>
	.byte $C3	; <バ>
	.byte $7D	; <ー>
	.byte $6C	; <ワ>
	.byte $6E	; <ン>
	.byte $2D	; <を>
	.byte $07	; <き>
	.byte $22	; <め>
	.byte $29	; <る>
	.byte $00
	.byte $68	; <リ>
	.byte $45	; <オ>
	.byte $46	; <カ>
	.byte $6F	; <ッ>
	.byte $CF	; <プ>
	.byte $A0	; <が>
	.byte con_катсцена_новая_строка
	.byte $02	; <い>
	.byte $26	; <よ>
	.byte $02	; <い>
	.byte $26	; <よ>
	.byte $00
	.byte $01	; <あ>
	.byte $0D	; <す>
	.byte $16	; <に>
	.byte $0E	; <せ>
	.byte $1F	; <ま>
	.byte $2F	; <っ>
	.byte $10	; <た>
	.byte $7B	; <。>
	.byte con_катсцена_мячик
	.byte con_смещение_текста
	.byte $40	; <「>
	.byte $02	; <い>
	.byte $1F	; <ま>
	.byte $00
	.byte $55	; <ナ>
	.byte $6E	; <ン>
	.byte $C3	; <バ>
	.byte $7D	; <ー>
	.byte $6C	; <ワ>
	.byte $6E	; <ン>
	.byte $51	; <チ>
	.byte $7D	; <ー>
	.byte $61	; <ム>
	.byte $14	; <と>
	.byte $02	; <い>
	.byte $2C	; <わ>
	.byte $2A	; <れ>
	.byte $29	; <る>
	.byte con_катсцена_новая_строка
	.byte $5C	; <フ>
	.byte $67	; <ラ>
	.byte $62	; <メ>
	.byte $6E	; <ン>
	.byte $B8	; <ゴ>
	.byte $23	; <も>
	.byte $00
	.byte $54	; <ト>
	.byte $7D	; <ー>
	.byte $55	; <ナ>
	.byte $62	; <メ>
	.byte $6E	; <ン>
	.byte $54	; <ト>
	.byte $19	; <の>
	.byte con_катсцена_новая_строка
	.byte $0B	; <さ>
	.byte $2E	; <ん>
	.byte $06	; <か>
	.byte $A0	; <が>
	.byte $00
	.byte $07	; <き>
	.byte $1F	; <ま>
	.byte $2F	; <っ>
	.byte $13	; <て>
	.byte $02	; <い>
	.byte $29	; <る>
	.byte $7B	; <。>
	.byte con_катсцена_мячик
	.byte $FB
	.byte $01	; <あ>
	.byte $3C	; <9>
	.byte con_смещение_текста
	.byte $40	; <「>
	.byte $47	; <キ>
	.byte $70	; <ャ>
	.byte $CF	; <プ>
	.byte $53	; <テ>
	.byte $6E	; <ン>
	.byte $19	; <の>
	.byte $46	; <カ>
	.byte $69	; <ル>
	.byte $6B	; <ロ>
	.byte $4D	; <ス>
	.byte $1A	; <は>
	.byte $00
	.byte $26	; <よ>
	.byte $0E	; <せ>
	.byte $2E	; <ん>
	.byte $AD	; <で>
	.byte con_катсцена_новая_строка
	.byte $A8	; <ぜ>
	.byte $2E	; <ん>
	.byte $0C	; <し>
	.byte $01	; <あ>
	.byte $02	; <い>
	.byte $00
	.byte $5A	; <ハ>
	.byte $6F	; <ッ>
	.byte $54	; <ト>
	.byte $54	; <ト>
	.byte $68	; <リ>
	.byte $6F	; <ッ>
	.byte $48	; <ク>
	.byte $2D	; <を>
	.byte con_катсцена_новая_строка
	.byte $10	; <た>
	.byte $2F	; <っ>
	.byte $0E	; <せ>
	.byte $02	; <い>
	.byte $0C	; <し>
	.byte $10	; <た>
	.byte $00
	.byte $12	; <つ>
	.byte $2C	; <わ>
	.byte $23	; <も>
	.byte $19	; <の>
	.byte $AA	; <だ>
	.byte $7B	; <。>
	.byte con_катсцена_мячик
	.byte con_смещение_текста
	.byte $40	; <「>
	.byte $1E	; <ほ>
	.byte $06	; <か>
	.byte $16	; <に>
	.byte $23	; <も>
	.byte $00
	.byte $0B	; <さ>
	.byte $1F	; <ま>
	.byte $A5	; <ざ>
	.byte $1F	; <ま>
	.byte $15	; <な>
	.byte $51	; <チ>
	.byte $7D	; <ー>
	.byte $61	; <ム>
	.byte $A0	; <が>
	.byte con_катсцена_новая_строка
	.byte $25	; <ゆ>
	.byte $03	; <う>
	.byte $0C	; <し>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $2D	; <を>
	.byte $18	; <ね>
	.byte $27	; <ら>
	.byte $2F	; <っ>
	.byte $13	; <て>
	.byte $08	; <く>
	.byte $29	; <る>
	.byte $7B	; <。>
	.byte con_катсцена_новая_строка
	.byte $DC
	.byte $13	; <て>
	.byte $07	; <き>
	.byte $19	; <の>
	.byte $C1	; <デ>
	.byte $7D	; <ー>
	.byte $50	; <タ>
	.byte $1A	; <は>
	.byte $00
	.byte $26	; <よ>
	.byte $08	; <く>
	.byte $00
	.byte $20	; <み>
	.byte $13	; <て>
	.byte $05	; <お>
	.byte $09	; <け>
	.byte $7B	; <。>
	.byte con_катсцена_мячик
	.byte $FB
	.byte $01	; <あ>
	.byte $3B	; <8>
	.byte con_смещение_текста
	.byte $40	; <「>
	.byte $14	; <と>
	.byte $0A	; <こ>
	.byte $2B	; <ろ>
	.byte $AD	; <で>
	.byte $7A	; <、>
	.byte $DB
	.byte $07	; <き>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $00
	.byte $0A	; <こ>
	.byte $19	; <の>
	.byte $51	; <チ>
	.byte $7D	; <ー>
	.byte $61	; <ム>
	.byte $16	; <に>
	.byte con_катсцена_новая_строка
	.byte $16	; <に>
	.byte $1E	; <ほ>
	.byte $2E	; <ん>
	.byte $4B	; <サ>
	.byte $6F	; <ッ>
	.byte $46	; <カ>
	.byte $7D	; <ー>
	.byte $07	; <き>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $06	; <か>
	.byte $27	; <ら>
	.byte con_катсцена_новая_строка
	.byte $09	; <け>
	.byte $2E	; <ん>
	.byte $0C	; <し>
	.byte $31	; <ゅ>
	.byte $03	; <う>
	.byte $0E	; <せ>
	.byte $02	; <い>
	.byte $A0	; <が>
	.byte $00
	.byte $1A	; <は>
	.byte $09	; <け>
	.byte $2E	; <ん>
	.byte $0B	; <さ>
	.byte $2A	; <れ>
	.byte $10	; <た>
	.byte $19	; <の>
	.byte $AD	; <で>
	.byte con_катсцена_новая_строка
	.byte $0C	; <し>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $0D	; <す>
	.byte $29	; <る>
	.byte $7B	; <。>
	.byte con_катсцена_мячик
	.byte $EA
	.byte $F9
	.byte $13	; <て>
	.byte $FA
	.byte $12	; <つ>
	.byte $FB
	.byte $01	; <あ>
	.byte $2A	; <れ>
	.byte $E9
	.byte $DC
	.byte con_смещение_текста
	.byte $40	; <「>
	.byte $1A	; <は>
	.byte $A6	; <じ>
	.byte $22	; <め>
	.byte $1F	; <ま>
	.byte $0C	; <し>
	.byte $13	; <て>
	.byte $7A	; <、>
	.byte $DB
	.byte $06	; <か>
	.byte $10	; <た>
	.byte $A1	; <ぎ>
	.byte $28	; <り>
	.byte $00
	.byte $26	; <よ>
	.byte $03	; <う>
	.byte $0A	; <こ>
	.byte $AD	; <で>
	.byte $0D	; <す>
	.byte $7B	; <。>
	.byte con_катсцена_новая_строка
	.byte $DC
	.byte $07	; <き>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $06	; <か>
	.byte $27	; <ら>
	.byte $00
	.byte $0C	; <し>
	.byte $AF	; <ば>
	.byte $27	; <ら>
	.byte $08	; <く>
	.byte $19	; <の>
	.byte $01	; <あ>
	.byte $02	; <い>
	.byte $AA	; <だ>
	.byte con_катсцена_новая_строка
	.byte $5F	; <マ>
	.byte $58	; <ネ>
	.byte $7D	; <ー>
	.byte $BA	; <ジ>
	.byte $70	; <ャ>
	.byte $7D	; <ー>
	.byte $14	; <と>
	.byte $0C	; <し>
	.byte $13	; <て>
	.byte $00
	.byte $B2	; <べ>
	.byte $2E	; <ん>
	.byte $07	; <き>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $0B	; <さ>
	.byte $0E	; <せ>
	.byte $13	; <て>
	.byte con_катсцена_новая_строка
	.byte $23	; <も>
	.byte $27	; <ら>
	.byte $02	; <い>
	.byte $1F	; <ま>
	.byte $0D	; <す>
	.byte $7A	; <、>
	.byte $DB
	.byte $FB
	.byte $01	; <あ>
	.byte $2B	; <ろ>
	.byte $26	; <よ>
	.byte $2B	; <ろ>
	.byte $0C	; <し>
	.byte $08	; <く>
	.byte $7B	; <。>
	.byte con_катсцена_номер_звука
	.byte $62	; <メ>
	.byte con_катсцена_мячик
	.byte $FB
	.byte $01	; <あ>
	.byte $2A	; <れ>
	.byte con_смещение_текста
	.byte $40	; <「>
	.byte $12	; <つ>
	.byte $AF	; <ば>
	.byte $0B	; <さ>
	.byte $08	; <く>
	.byte $2E	; <ん>
	.byte $7A	; <、>
	.byte $DB
	.byte $01	; <あ>
	.byte $15	; <な>
	.byte $10	; <た>
	.byte $19	; <の>
	.byte $0A	; <こ>
	.byte $14	; <と>
	.byte $1A	; <は>
	.byte con_катсцена_новая_строка
	.byte $01	; <あ>
	.byte $16	; <に>
	.byte $06	; <か>
	.byte $27	; <ら>
	.byte $00
	.byte $26	; <よ>
	.byte $08	; <く>
	.byte $00
	.byte $07	; <き>
	.byte $02	; <い>
	.byte $13	; <て>
	.byte $02	; <い>
	.byte $29	; <る>
	.byte $2C	; <わ>
	.byte $7B	; <。>
	.byte con_катсцена_новая_строка
	.byte $DD
	.byte con_катсцена_затереть_текст
	.byte $FB
	.byte $01	; <あ>
	.byte $12	; <つ>
	.byte $F7
	.byte $F3
	.byte $00
	.byte con_катсцена_скорость_текста
	.byte $00
	.byte con_смещение_текста
	.byte $40	; <「>
	.byte $04	; <え>
	.byte $2F	; <っ>
	.byte con_катсцена_новая_строка
	.byte $DE
	.byte con_катсцена_затереть_текст
	.byte $FB
	.byte $01	; <あ>
	.byte $2B	; <ろ>
	.byte $F7
	.byte $F3
	.byte $00
	.byte $DB
	.byte con_катсцена_скорость_текста
	.byte $08	; <く>
	.byte con_смещение_текста
	.byte $40	; <「>
	.byte $2C	; <わ>
	.byte $10	; <た>
	.byte $0C	; <し>
	.byte $19	; <の>
	.byte $00
	.byte $01	; <あ>
	.byte $16	; <に>
	.byte $1A	; <は>
	.byte $7A	; <、>
	.byte $DB
	.byte $16	; <に>
	.byte $1E	; <ほ>
	.byte $2E	; <ん>
	.byte $4B	; <サ>
	.byte $6F	; <ッ>
	.byte $46	; <カ>
	.byte $7D	; <ー>
	.byte con_катсцена_новая_строка
	.byte $07	; <き>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $19	; <の>
	.byte $00
	.byte $06	; <か>
	.byte $10	; <た>
	.byte $A1	; <ぎ>
	.byte $28	; <り>
	.byte $00
	.byte $21	; <む>
	.byte $18	; <ね>
	.byte $1F	; <ま>
	.byte $0B	; <さ>
	.byte $15	; <な>
	.byte $FB
	.byte $01	; <あ>
	.byte $2A	; <れ>
	.byte $19	; <の>
	.byte $7B	; <。>
	.byte con_катсцена_новая_строка
	.byte $DD
	.byte con_катсцена_скорость_текста
	.byte $2C	; <わ>
	.byte $26	; <よ>
	.byte $2B	; <ろ>
	.byte $0C	; <し>
	.byte $08	; <く>
	.byte $FB
	.byte $01	; <あ>
	.byte $2C	; <わ>
	.byte con_катсцена_скорость_текста
	.byte $00
	.byte $18	; <ね>
	.byte $7B	; <。>
	.byte con_катсцена_новая_строка
	.byte $DC
	.byte con_катсцена_номер_звука
	.byte $31	; <ゅ>
	.byte $DE
	.byte $F4
	.byte $05	; <お>
	.byte $FB
	.byte $01	; <あ>
	.byte $2B	; <ろ>
	.byte con_катсцена_номер_звука
	.byte $01	; <あ>
	.byte $DC
	.byte con_катсцена_затереть_текст
	.byte $12	; <つ>
	.byte $AF	; <ば>
	.byte $0B	; <さ>
	.byte $00
	.byte $0B	; <さ>
	.byte $02	; <い>
	.byte $0C	; <し>
	.byte $32	; <ょ>
	.byte $19	; <の>
	.byte $10	; <た>
	.byte $10	; <た>
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $1A	; <は>
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 1
	.byte $0A	; <こ>
	.byte $0A	; <こ>
	.byte $00
	.byte $C5	; <ブ>
	.byte $67	; <ラ>
	.byte $BA	; <ジ>
	.byte $69	; <ル>
	.byte $3F	; <•>
	.byte $68	; <リ>
	.byte $45	; <オ>
	.byte $46	; <カ>
	.byte $6F	; <ッ>
	.byte $CF	; <プ>
	.byte $16	; <に>
	.byte $1A	; <は>
	.byte $A6	; <じ>
	.byte $1F	; <ま>
	.byte $29	; <る>
	.byte con_катсцена_новая_строка
	.byte $F4
	.byte $04	; <え>
	.byte $DF
	.byte $EA
	.byte con_катсцена_затереть_текст
	.byte $F9
	.byte $14	; <と>
	.byte $DC
	.byte $E9
	.byte $F6
	.byte $B4	; <ガ>
	.byte $EA
	.byte $E8
	.byte $00
	.byte $F9
	.byte $15	; <な>
	.byte $FB
	.byte $02	; <い>
	.byte $C7	; <ボ>
	.byte $C6	; <ベ>
	.byte con_катсцена_номер_звука
	.byte $45	; <オ>
	.byte $E9
	.byte $F6
	.byte $B4	; <ガ>
	.byte $FB
	.byte $01	; <あ>
	.byte $CB	; <ぺ>
	.byte $F3
	.byte $00
	.byte $F5
	.byte $06	; <か>
	.byte con_катсцена_номер_звука
	.byte $30	; <ゃ>
	.byte $DC
	.byte $DF
	.byte $FF


