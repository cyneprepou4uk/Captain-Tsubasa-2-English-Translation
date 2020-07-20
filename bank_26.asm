.segment "BANK_26"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

.word off_A020_00_самая_первая_заставка

off_A020_00_самая_первая_заставка:
	.byte $E8
	.byte $01	; <あ>
	.byte con_катсцена_задний_фон
	.byte $00
	.byte $FB
	.byte $01	; <あ>
	.byte $8D	; <P>
	.byte $E9
	.byte con_катсцена_задержка + 7
	.byte $EA
	.byte con_катсцена_номер_звука
	.byte $58	; <ネ>
	.byte con_катсцена_задержка + 4
	.byte con_катсцена_вид_окна_текста
	.byte $01	; <あ>
	.byte $EC
	.byte $00
	.byte con_катсцена_задний_фон
	.byte $01	; <あ>
	.byte $FB
	.byte $01	; <あ>
	.byte $6E	; <ン>
	.byte $F8
	.byte $0A	; <こ>
	.byte $F3
	.byte $00
	.byte $F5
	.byte $00
	.byte con_катсцена_номер_звука
	.byte $68	; <リ>
	.byte con_катсцена_скорость_текста
	.byte $05	; <お>
	.byte $1A	; <は>
	.byte $0C	; <し>
	.byte $29	; <る>
	.byte $2F	; <っ>
	.byte $79	; <!>
	.byte con_катсцена_задержка + 4
	.byte $00
	.byte $C5	; <ブ>
	.byte $67	; <ラ>
	.byte $BA	; <ジ>
	.byte $69	; <ル>
	.byte $B8	; <ゴ>
	.byte $7D	; <ー>
	.byte $69	; <ル>
	.byte $2D	; <を>
	.byte $22	; <め>
	.byte $A5	; <ざ>
	.byte $0C	; <し>
	.byte con_катсцена_новая_строка
	.byte $A8	; <ぜ>
	.byte $2E	; <ん>
	.byte $16	; <に>
	.byte $1E	; <ほ>
	.byte $2E	; <ん>
	.byte $65	; <ユ>
	.byte $7D	; <ー>
	.byte $4D	; <ス>
	.byte $00
	.byte $47	; <キ>
	.byte $70	; <ャ>
	.byte $CF	; <プ>
	.byte $53	; <テ>
	.byte $6E	; <ン>
	.byte con_катсцена_новая_строка
	.byte $05	; <お>
	.byte $05	; <お>
	.byte $A9	; <ぞ>
	.byte $27	; <ら>
	.byte $00
	.byte $12	; <つ>
	.byte $AF	; <ば>
	.byte $0B	; <さ>
	.byte $08	; <く>
	.byte $2E	; <ん>
	.byte $A0	; <が>
	.byte con_катсцена_новая_строка
	.byte $C2	; <ド>
	.byte $68	; <リ>
	.byte $C5	; <ブ>
	.byte $69	; <ル>
	.byte $AD	; <で>
	.byte $00
	.byte $11	; <ち>
	.byte $31	; <ゅ>
	.byte $03	; <う>
	.byte $05	; <お>
	.byte $03	; <う>
	.byte $14	; <と>
	.byte $2F	; <っ>
	.byte $C8	; <ぱ>
	.byte $AA	; <だ>
	.byte $79	; <!>
	.byte con_катсцена_новая_строка
	.byte con_катсцена_задержка + 4
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte $E8
	.byte $01	; <あ>
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FA
	.byte $03	; <う>
	.byte $FB
	.byte $01	; <あ>
	.byte $75	; <ェ>
	.byte $F3
	.byte $00
	.byte $F4
	.byte $05	; <お>
	.byte con_катсцена_скорость_текста
	.byte $01	; <あ>
	.byte $00
	.byte $00
	.byte $00
	.byte $05	; <お>
	.byte $05	; <お>
	.byte $A9	; <ぞ>
	.byte $27	; <ら>
	.byte $00
	.byte $12	; <つ>
	.byte $AF	; <ば>
	.byte $0B	; <さ>
	.byte con_катсцена_новая_строка
	.byte $00
	.byte $00
	.byte $00
	.byte $00
	.byte $00
	.byte $C5	; <ブ>
	.byte $67	; <ラ>
	.byte $BA	; <ジ>
	.byte $69	; <ル>
	.byte con_катсцена_новая_строка
	.byte $00
	.byte $00
	.byte $4B	; <サ>
	.byte $6E	; <ン>
	.byte $CD	; <パ>
	.byte $43	; <ウ>
	.byte $6B	; <ロ>
	.byte $86	; <F>
	.byte $83	; <C>
	.byte $00
	.byte $8C	; <M>
	.byte $86	; <F>
	.byte con_катсцена_новая_строка
	.byte $F4
	.byte $04	; <え>
	.byte con_катсцена_задержка + 6
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte con_катсцена_задний_фон
	.byte $08	; <く>
	.byte $FB
	.byte $02	; <い>
	.byte $C1	; <デ>
	.byte $82	; <B>
	.byte $F3
	.byte $00
	.byte $F5
	.byte $10	; <た>
	.byte con_катсцена_номер_звука
	.byte $28	; <り>
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_номер_звука
	.byte $28	; <り>
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_номер_звука
	.byte $28	; <り>
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_номер_звука
	.byte $0E	; <せ>
	.byte con_катсцена_вид_окна_текста
	.byte $01	; <あ>
	.byte $EC
	.byte $05	; <お>
	.byte con_катсцена_скорость_текста
	.byte $05	; <お>
	.byte $1B	; <ひ>
	.byte $31	; <ゅ>
	.byte $03	; <う>
	.byte $A0	; <が>
	.byte $08	; <く>
	.byte con_катсцена_номер_звука
	.byte $6B	; <ロ>
	.byte $2E	; <ん>
	.byte con_катсцена_новая_строка
	.byte $02	; <い>
	.byte $07	; <き>
	.byte $15	; <な>
	.byte $28	; <り>
	.byte $00
	.byte $50	; <タ>
	.byte $42	; <イ>
	.byte $B4	; <ガ>
	.byte $7D	; <ー>
	.byte $50	; <タ>
	.byte $6F	; <ッ>
	.byte $48	; <ク>
	.byte $69	; <ル>
	.byte $79	; <!>
	.byte con_катсцена_новая_строка
	.byte con_катсцена_задержка + 3
	.byte $04	; <え>
	.byte $23	; <も>
	.byte $19	; <の>
	.byte $2D	; <を>
	.byte $18	; <ね>
	.byte $27	; <ら>
	.byte $03	; <う>
	.byte $00
	.byte $54	; <ト>
	.byte $67	; <ラ>
	.byte $19	; <の>
	.byte $A4	; <ご>
	.byte $14	; <と>
	.byte $08	; <く>
	.byte con_катсцена_новая_строка
	.byte $C7	; <ボ>
	.byte $7D	; <ー>
	.byte $69	; <ル>
	.byte $2D	; <を>
	.byte $03	; <う>
	.byte $AF	; <ば>
	.byte $02	; <い>
	.byte $14	; <と>
	.byte $2F	; <っ>
	.byte $10	; <た>
	.byte $79	; <!>
	.byte con_катсцена_новая_строка
	.byte con_катсцена_задержка + 4
	.byte con_катсцена_номер_звука
	.byte $02	; <い>
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FA
	.byte $07	; <き>
	.byte $FB
	.byte $01	; <あ>
	.byte $76	; <ォ>
	.byte $F3
	.byte $00
	.byte $F4
	.byte $05	; <お>
	.byte con_катсцена_скорость_текста
	.byte $02	; <い>
	.byte $00
	.byte $00
	.byte $1B	; <ひ>
	.byte $31	; <ゅ>
	.byte $03	; <う>
	.byte $A0	; <が>
	.byte $00
	.byte $0A	; <こ>
	.byte $A6	; <じ>
	.byte $2B	; <ろ>
	.byte $03	; <う>
	.byte con_катсцена_новая_строка
	.byte $00
	.byte $14	; <と>
	.byte $03	; <う>
	.byte $1E	; <ほ>
	.byte $03	; <う>
	.byte $A0	; <が>
	.byte $08	; <く>
	.byte $04	; <え>
	.byte $2E	; <ん>
	.byte $00
	.byte $83	; <C>
	.byte $86	; <F>
	.byte con_катсцена_новая_строка
	.byte $F4
	.byte $04	; <え>
	.byte con_катсцена_задержка + 6
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte con_катсцена_вид_окна_текста
	.byte $01	; <あ>
	.byte $EC
	.byte $02	; <い>
	.byte con_катсцена_задний_фон
	.byte $09	; <け>
	.byte $FB
	.byte $01	; <あ>
	.byte $84	; <D>
	.byte $F3
	.byte $00
	.byte $F5
	.byte $01	; <あ>
	.byte con_катсцена_номер_звука
	.byte $0E	; <せ>
	.byte con_катсцена_скорость_текста
	.byte $05	; <お>
	.byte $AD	; <で>
	.byte $10	; <た>
	.byte $79	; <!>
	.byte con_катсцена_задержка + 3
	.byte con_катсцена_номер_звука
	.byte $09	; <け>
	.byte $00
	.byte $B8	; <ゴ>
	.byte $7D	; <ー>
	.byte $69	; <ル>
	.byte $C1	; <デ>
	.byte $6E	; <ン>
	.byte $4A	; <コ>
	.byte $6E	; <ン>
	.byte $C4	; <ビ>
	.byte con_катсцена_новая_строка
	.byte $1B	; <ひ>
	.byte $2F	; <っ>
	.byte $0B	; <さ>
	.byte $12	; <つ>
	.byte $19	; <の>
	.byte $00
	.byte $52	; <ツ>
	.byte $42	; <イ>
	.byte $6E	; <ン>
	.byte con_катсцена_номер_звука
	.byte $30	; <ゃ>
	.byte $4C	; <シ>
	.byte $71	; <ュ>
	.byte $7D	; <ー>
	.byte $54	; <ト>
	.byte $79	; <!>
	.byte con_катсцена_новая_строка
	.byte con_катсцена_задержка + 3
	.byte $1C	; <ふ>
	.byte $10	; <た>
	.byte $28	; <り>
	.byte $19	; <の>
	.byte $02	; <い>
	.byte $07	; <き>
	.byte $1A	; <は>
	.byte $00
	.byte $C9	; <ぴ>
	.byte $2F	; <っ>
	.byte $10	; <た>
	.byte $28	; <り>
	.byte $AA	; <だ>
	.byte $79	; <!>
	.byte con_катсцена_новая_строка
	.byte $02	; <い>
	.byte $09	; <け>
	.byte $7D	; <ー>
	.byte $79	; <!>
	.byte con_катсцена_новая_строка
	.byte con_катсцена_задержка + 4
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FA
	.byte $03	; <う>
	.byte $FB
	.byte $01	; <あ>
	.byte $77	; <:>
	.byte $F3
	.byte $00
	.byte $F4
	.byte $05	; <お>
	.byte con_катсцена_скорость_текста
	.byte $02	; <い>
	.byte $00
	.byte $00
	.byte $00
	.byte $20	; <み>
	.byte $0B	; <さ>
	.byte $07	; <き>
	.byte $00
	.byte $10	; <た>
	.byte $2B	; <ろ>
	.byte $03	; <う>
	.byte con_катсцена_новая_строка
	.byte $00
	.byte $15	; <な>
	.byte $2E	; <ん>
	.byte $06	; <か>
	.byte $12	; <つ>
	.byte $0A	; <こ>
	.byte $03	; <う>
	.byte $0A	; <こ>
	.byte $03	; <う>
	.byte $00
	.byte $8C	; <M>
	.byte $86	; <F>
	.byte con_катсцена_новая_строка
	.byte $F4
	.byte $04	; <え>
	.byte con_катсцена_задержка + 6
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte con_катсцена_вид_окна_текста
	.byte $01	; <あ>
	.byte $EC
	.byte $04	; <え>
	.byte con_катсцена_задний_фон
	.byte $0A	; <こ>
	.byte $FB
	.byte $03	; <う>
	.byte $C0	; <ヅ>
	.byte $A2	; <ぐ>
	.byte $7D	; <ー>
	.byte $F3
	.byte $00
	.byte con_катсцена_номер_звука
	.byte $07	; <き>
	.byte con_катсцена_скорость_текста
	.byte $05	; <お>
	.byte $2C	; <わ>
	.byte $06	; <か>
	.byte $AF	; <ば>
	.byte $24	; <や>
	.byte $0C	; <し>
	.byte $08	; <く>
	.byte $2E	; <ん>
	.byte $00
	.byte $6C	; <ワ>
	.byte $6E	; <ン>
	.byte con_катсцена_номер_звука
	.byte $12	; <つ>
	.byte $5A	; <ハ>
	.byte $6E	; <ン>
	.byte $C2	; <ド>
	.byte $47	; <キ>
	.byte $70	; <ャ>
	.byte $6F	; <ッ>
	.byte $51	; <チ>
	.byte $79	; <!>
	.byte con_катсцена_новая_строка
	.byte con_катсцена_задержка + 3
	.byte $0B	; <さ>
	.byte $0D	; <す>
	.byte $A0	; <が>
	.byte $00
	.byte $14	; <と>
	.byte $03	; <う>
	.byte $26	; <よ>
	.byte $03	; <う>
	.byte $19	; <の>
	.byte $0C	; <し>
	.byte $31	; <ゅ>
	.byte $A4	; <ご>
	.byte $0C	; <し>
	.byte $2E	; <ん>
	.byte con_катсцена_новая_строка
	.byte $B6	; <グ>
	.byte $6A	; <レ>
	.byte $7D	; <ー>
	.byte $54	; <ト>
	.byte $4D	; <ス>
	.byte $7D	; <ー>
	.byte $CD	; <パ>
	.byte $7D	; <ー>
	.byte $B8	; <ゴ>
	.byte $7D	; <ー>
	.byte $69	; <ル>
	.byte $47	; <キ>
	.byte $7D	; <ー>
	.byte $CD	; <パ>
	.byte $7D	; <ー>
	.byte con_катсцена_новая_строка
	.byte $2C	; <わ>
	.byte $06	; <か>
	.byte $AF	; <ば>
	.byte $24	; <や>
	.byte $0C	; <し>
	.byte $00
	.byte $A3	; <げ>
	.byte $2E	; <ん>
	.byte $A9	; <ぞ>
	.byte $03	; <う>
	.byte $79	; <!>
	.byte con_катсцена_новая_строка
	.byte con_катсцена_задержка + 4
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FA
	.byte $0B	; <さ>
	.byte $FB
	.byte $01	; <あ>
	.byte $7C	; <~>
	.byte $F3
	.byte $00
	.byte $F4
	.byte $05	; <お>
	.byte con_катсцена_скорость_текста
	.byte $01	; <あ>
	.byte $00
	.byte $00
	.byte $2C	; <わ>
	.byte $06	; <か>
	.byte $AF	; <ば>
	.byte $24	; <や>
	.byte $0C	; <し>
	.byte $00
	.byte $A3	; <げ>
	.byte $2E	; <ん>
	.byte $A9	; <ぞ>
	.byte $03	; <う>
	.byte con_катсцена_новая_строка
	.byte $00
	.byte $00
	.byte $00
	.byte $00
	.byte $00
	.byte $56	; <ニ>
	.byte $4C	; <シ>
	.byte $C2	; <ド>
	.byte $42	; <イ>
	.byte $52	; <ツ>
	.byte con_катсцена_новая_строка
	.byte $00
	.byte $00
	.byte $5A	; <ハ>
	.byte $6E	; <ン>
	.byte $C5	; <ブ>
	.byte $69	; <ル>
	.byte $B4	; <ガ>
	.byte $7D	; <ー>
	.byte $8F	; <S>
	.byte $91	; <V>
	.byte $00
	.byte $87	; <G>
	.byte $8B	; <K>
	.byte con_катсцена_новая_строка
	.byte $F4
	.byte $04	; <え>
	.byte con_катсцена_задержка + 6
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FB
	.byte $01	; <あ>
	.byte $0D	; <す>
	.byte con_катсцена_скорость_текста
	.byte $00
	.byte con_смещение_текста + 2
	.byte $0B	; <さ>
	.byte $02	; <い>
	.byte $AA	; <だ>
	.byte $02	; <い>
	.byte $19	; <の>
	.byte $13	; <て>
	.byte $07	; <き>
	.byte $00
	.byte $C5	; <ブ>
	.byte $67	; <ラ>
	.byte $BA	; <ジ>
	.byte $69	; <ル>
	.byte $65	; <ユ>
	.byte $7D	; <ー>
	.byte $4D	; <ス>
	.byte $2D	; <を>
	.byte $1F	; <ま>
	.byte $04	; <え>
	.byte $16	; <に>
	.byte $0C	; <し>
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 1
	.byte $4B	; <サ>
	.byte $6F	; <ッ>
	.byte $46	; <カ>
	.byte $7D	; <ー>
	.byte $0E	; <せ>
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $02	; <い>
	.byte $11	; <ち>
	.byte $1D	; <へ>
	.byte $19	; <の>
	.byte $00
	.byte $25	; <ゆ>
	.byte $22	; <め>
	.byte $2D	; <を>
	.byte $06	; <か>
	.byte $09	; <け>
	.byte $10	; <た>
	.byte con_катсцена_новая_строка
	.byte $2C	; <わ>
	.byte $2A	; <れ>
	.byte $27	; <ら>
	.byte $A0	; <が>
	.byte $00
	.byte $A8	; <ぜ>
	.byte $2E	; <ん>
	.byte $16	; <に>
	.byte $1E	; <ほ>
	.byte $2E	; <ん>
	.byte $65	; <ユ>
	.byte $7D	; <ー>
	.byte $4D	; <ス>
	.byte $19	; <の>
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 2
	.byte $5C	; <フ>
	.byte $73	; <ヮ>
	.byte $42	; <イ>
	.byte $55	; <ナ>
	.byte $69	; <ル>
	.byte $B7	; <ゲ>
	.byte $7D	; <ー>
	.byte $61	; <ム>
	.byte $A0	; <が>
	.byte $00
	.byte $1A	; <は>
	.byte $A6	; <じ>
	.byte $1F	; <ま>
	.byte $2B	; <ろ>
	.byte $03	; <う>
	.byte $14	; <と>
	.byte $0C	; <し>
	.byte $13	; <て>
	.byte $02	; <い>
	.byte $10	; <た>
	.byte con_катсцена_новая_строка
	.byte $E9
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_задержка + 7
	.byte con_катсцена_задержка + 7
	.byte $F4
	.byte $05	; <お>
	.byte con_катсцена_завершить_текст
	.byte $F8
	.byte $00
	.byte con_катсцена_задержка + 7
	.byte con_катсцена_прыжок
	.word off_A020_00_самая_первая_заставка
	
	