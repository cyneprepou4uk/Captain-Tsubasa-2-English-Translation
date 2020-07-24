.segment "BANK_04"
.include "copy_bank_ram.inc"
; тут только данные
; поинтеры в 0x000485
; перемещать код можно только после начальной таблицы поинтеров


    .word off_AB61_06_роберто_говорит_о_джаиро
    .word off_AE6D_07_цубаса_и_карлос_перед_матчем
    .word off_AEEA_08_цубаса_победил_карлоса_часть_1
    .word off_B1F1_09_цубаса_победил_карлоса_часть_2
    .word off_B327_0A_мисуги_во_втором_тайме
    .word off_B3EE_0B_мисуги_после_матча
    .word off_B506_0C_мацуяма_перед_матчем
    .word off_B590_0D_мацуяма_после_матча
    .word off_B6C8_0E_мисаки_и_хюга_перед_матчем
    .word off_B731_0F_мисаки_победил_хюгу









off_AB61_06_роберто_говорит_о_джаиро:
    .byte $E8
    .byte $01    ; <あ>
    .byte $F9
    .byte $26    ; <よ>
    .byte $FA
    .byte $27    ; <ら>
    .byte $FB
    .byte $01    ; <あ>
    .byte $3B    ; <8>
    .byte $DE
    .byte $E9
    .byte $F5
    .byte $0E    ; <せ>
    .byte con_катсцена_номер_звука, $47
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $26    ; <よ>
    .byte $02    ; <い>
    .byte $26    ; <よ>
    .byte $00
    .byte $01    ; <あ>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $AA    ; <だ>
    .byte $15    ; <な>
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7B    ; <。>
    .byte $FC
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
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $62    ; <メ>
    .byte $6E    ; <ン>
    .byte $B8    ; <ゴ>
    .byte $14    ; <と>
    .byte $19    ; <の>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $FC
    .byte $DB
    .byte $12    ; <つ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $00
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $14    ; <と>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $09    ; <け>
    .byte $12    ; <つ>
    .byte $AA    ; <だ>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $3B    ; <8>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $FB
    .byte $01    ; <あ>
    .byte $3C    ; <9>
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $1A    ; <は>
    .byte $FC
    .byte $26    ; <よ>
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $02    ; <い>
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $16    ; <に>
    .byte $00
    .byte $13    ; <て>
    .byte $A4    ; <ご>
    .byte $2C    ; <わ>
    .byte $02    ; <い>
    .byte $A9    ; <ぞ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $0C    ; <し>
    .byte $2B    ; <ろ>
    .byte $00
    .byte $01    ; <あ>
    .byte $19    ; <の>
    .byte $00
    .byte $AD    ; <で>
    .byte $2E    ; <ん>
    .byte $0E    ; <せ>
    .byte $12    ; <つ>
    .byte $19    ; <の>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $FC
    .byte $DB
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $19    ; <の>
    .byte $00
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $27    ; <ら>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte $7A    ; <、>
    .byte $14    ; <と>
    .byte $02    ; <い>
    .byte $03    ; <う>
    .byte $1B    ; <ひ>
    .byte $14    ; <と>
    .byte $23    ; <も>
    .byte $FC
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $08    ; <く>
    .byte $27    ; <ら>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $11    ; <ち>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $EF
    .byte $3F    ; <•>
    .byte $78    ; <?>
    .byte $FC
    .byte $DC
    .byte $FB
    .byte $01    ; <あ>
    .byte $4E    ; <セ>
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $7A    ; <、>
    .byte $DB
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $00
    .byte $AA    ; <だ>
    .byte $2A    ; <れ>
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $78    ; <?>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $3B    ; <8>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $7A    ; <、>
    .byte $DB
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $1A    ; <は>
    .byte $00
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $2D    ; <を>
    .byte $FC
    .byte $0C    ; <し>
    .byte $27    ; <ら>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $EF
    .byte $3F    ; <•>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DC
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $1A    ; <は>
    .byte $00
    .byte $D0    ; <ペ>
    .byte $6A    ; <レ>
    .byte $A0    ; <が>
    .byte $00
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $24    ; <や>
    .byte $08    ; <く>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $19    ; <の>
    .byte $FC
    .byte $0E    ; <せ>
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $19    ; <の>
    .byte $00
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $EB
    .byte $EA
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $69
    .byte $DC
    .byte con_катсцена_номер_звука, $3E
    .byte $F9
    .byte $01    ; <あ>
    .byte $FB
    .byte $01    ; <あ>
    .byte $A1    ; <ぎ>
    .byte $F8
    .byte $0A    ; <こ>
    .byte $E9
    .byte $F5
    .byte $00
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $4B    ; <サ>
    .byte $6F    ; <ッ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $00
    .byte $AD    ; <で>
    .byte $2E    ; <ん>
    .byte $0E    ; <せ>
    .byte $12    ; <つ>
    .byte $19    ; <の>
    .byte $05    ; <お>
    .byte $14    ; <と>
    .byte $0A    ; <こ>
    .byte $FC
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $1A    ; <は>
    .byte $00
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
    .byte $FC
    .byte $CF    ; <プ>
    .byte $6B    ; <ロ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $AA    ; <だ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte $EB
    .byte $E1
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $00
    .byte $20    ; <み>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $16    ; <に>
    .byte $2E    ; <ん>
    .byte $07    ; <き>
    .byte $2B    ; <ろ>
    .byte $08    ; <く>
    .byte $23    ; <も>
    .byte $00
    .byte $1C    ; <ふ>
    .byte $08    ; <く>
    .byte $21    ; <む>
    .byte $14    ; <と>
    .byte $FC
    .byte $34    ; <1>
    .byte $33    ; <0>
    .byte $33    ; <0>
    .byte $33    ; <0>
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $00
    .byte $14    ; <と>
    .byte $08    ; <く>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $2D    ; <を>
    .byte $01    ; <あ>
    .byte $A3    ; <げ>
    .byte $10    ; <た>
    .byte $FC
    .byte $44    ; <エ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $EB
    .byte $EA
    .byte $E8
    .byte $01    ; <あ>
    .byte $F9
    .byte $68    ; <リ>
    .byte $FB
    .byte $03    ; <う>
    .byte $9E
    .byte $93    ; <Y>
    .byte $A5    ; <ざ>
    .byte con_катсцена_номер_звука, $6B
    .byte $E9
    .byte $F3
    .byte $94
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $00
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $A0    ; <が>
    .byte $00
    .byte $20    ; <み>
    .byte $A7    ; <ず>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $FC
    .byte $01    ; <あ>
    .byte $20    ; <み>
    .byte $AA    ; <だ>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $7A    ; <、>
    .byte $DA
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $16    ; <に>
    .byte $26    ; <よ>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $FC
    .byte $07    ; <き>
    .byte $A7    ; <ず>
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $23    ; <も>
    .byte $19    ; <の>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DC
    .byte con_катсцена_номер_звука, $02
    .byte con_катсцена_затереть_текст
    .byte $FA
    .byte $21    ; <む>
    .byte $FB
    .byte $02    ; <い>
    .byte $73    ; <ヮ>
    .byte $74    ; <ィ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F5
    .byte $03    ; <う>
    .byte con_катсцена_номер_звука, $0E
    .byte $DB
    .byte con_катсцена_номер_звука, $10
    .byte $F5
    .byte $FF
    .byte $FA
    .byte $09    ; <け>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F5
    .byte $07    ; <き>
    .byte con_катсцена_номер_звука, $04
    .byte $DA
    .byte con_катсцена_номер_звука, $06
    .byte $DA
    .byte con_катсцена_номер_звука, $24
    .byte $DB
    .byte $F5
    .byte $FF
    .byte $F3
    .byte $FF
    .byte $25    ; <ゆ>
    .byte $43    ; <ウ>
    .byte $FA
    .byte $56    ; <ニ>
    .byte $FB
    .byte $03    ; <う>
    .byte $C0    ; <ヅ>
    .byte $A0    ; <が>
    .byte $80
    .byte $F7
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $24
    .byte $FA
    .byte $39    ; <6>
    .byte $FB
    .byte $01    ; <あ>
    .byte $86    ; <F>
    .byte $F7
    .byte $F3
    .byte $FF
    .byte $21    ; <む>
    .byte $35    ; <2>
    .byte con_катсцена_номер_звука, $61
    .byte $DF
    .byte $EA
    .byte $DE
    .byte $F9
    .byte $26    ; <よ>
    .byte $FA
    .byte $27    ; <ら>
    .byte $FB
    .byte $01    ; <あ>
    .byte $3B    ; <8>
    .byte $E9
    .byte $F5
    .byte $0E    ; <せ>
    .byte con_катсцена_номер_звука, $47
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $2D    ; <を>
    .byte $14    ; <と>
    .byte $2A    ; <れ>
    .byte $29    ; <る>
    .byte $47    ; <キ>
    .byte $7D    ; <ー>
    .byte $CD    ; <パ>
    .byte $7D    ; <ー>
    .byte $1A    ; <は>
    .byte $FC
    .byte $AA    ; <だ>
    .byte $2A    ; <れ>
    .byte $23    ; <も>
    .byte $02    ; <い>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DC
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $1A    ; <は>
    .byte $00
    .byte $A6    ; <じ>
    .byte $B1    ; <ぶ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $5A    ; <ハ>
    .byte $6E    ; <ン>
    .byte $C1    ; <デ>
    .byte $2D    ; <を>
    .byte $05    ; <お>
    .byte $A1    ; <ぎ>
    .byte $15    ; <な>
    .byte $03    ; <う>
    .byte $FC
    .byte $21    ; <む>
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $2D    ; <を>
    .byte $00
    .byte $01    ; <あ>
    .byte $20    ; <み>
    .byte $AA    ; <だ>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $00
    .byte $02    ; <い>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $1A    ; <は>
    .byte $00
    .byte $AA    ; <だ>
    .byte $2A    ; <れ>
    .byte $23    ; <も>
    .byte $03    ; <う>
    .byte $13    ; <て>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $FC
    .byte $1F    ; <ま>
    .byte $B3    ; <ぼ>
    .byte $2B    ; <ろ>
    .byte $0C    ; <し>
    .byte $19    ; <の>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $14    ; <と>
    .byte $02    ; <い>
    .byte $2C    ; <わ>
    .byte $2A    ; <れ>
    .byte $7A    ; <、>
    .byte $FC
    .byte $DB
    .byte $02    ; <い>
    .byte $12    ; <つ>
    .byte $0C    ; <し>
    .byte $06    ; <か>
    .byte $00
    .byte $0C    ; <し>
    .byte $27    ; <ら>
    .byte $2A    ; <れ>
    .byte $A5    ; <ざ>
    .byte $29    ; <る>
    .byte $AD    ; <で>
    .byte $2E    ; <ん>
    .byte $0E    ; <せ>
    .byte $12    ; <つ>
    .byte $16    ; <に>
    .byte $FC
    .byte $15    ; <な>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $DC
    .byte $FB
    .byte $01    ; <あ>
    .byte $3C    ; <9>
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $CF    ; <プ>
    .byte $6B    ; <ロ>
    .byte $2D    ; <を>
    .byte $22    ; <め>
    .byte $A5    ; <ざ>
    .byte $0D    ; <す>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $1F    ; <ま>
    .byte $A7    ; <ず>
    .byte $FC
    .byte $01    ; <あ>
    .byte $0D    ; <す>
    .byte $19    ; <の>
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $00
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DC
    .byte $0C    ; <し>
    .byte $2F    ; <っ>
    .byte $06    ; <か>
    .byte $28    ; <り>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte $FC
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
    .byte $03    ; <う>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $01    ; <あ>
    .byte $0D    ; <す>
    .byte $19    ; <の>
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $FC
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $A7    ; <ず>
    .byte $00
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $20    ; <み>
    .byte $0E    ; <せ>
    .byte $29    ; <る>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte $EA
    .byte con_катсцена_выход



off_AE6D_07_цубаса_и_карлос_перед_матчем:
    .byte $E8
    .byte $01    ; <あ>
    .byte $F9
    .byte $11    ; <ち>
    .byte $FA
    .byte $10    ; <た>
    .byte $FB
    .byte $01    ; <あ>
    .byte $15    ; <な>
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte $E9
    .byte $F5
    .byte $04    ; <え>
    .byte con_катсцена_номер_звука, $53
    .byte $F1
    .byte $00
    .byte $EC
    .byte $00
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
    .byte $FC
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
    .byte $FC
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
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $58    ; <ネ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FC
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
    .byte $FC
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
    .byte $FC
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte $F5
    .byte $FF
    .byte $EA
    .byte con_катсцена_выход



off_AEEA_08_цубаса_победил_карлоса_часть_1:
    .byte $E8
    .byte $01    ; <あ>
    .byte $F9
    .byte $2B    ; <ろ>
    .byte $FA
    .byte $10    ; <た>
    .byte $FB
    .byte $01    ; <あ>
    .byte $43    ; <ウ>
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte $E9
    .byte $F5
    .byte $04    ; <え>
    .byte $DD
    .byte con_катсцена_номер_звука, $4D
    .byte $F1
    .byte $00
    .byte $EC
    .byte $02    ; <い>
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
    .byte $FC
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
    .byte $FC
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
    .byte $FC
; скрытая катсцена
    .byte $F4
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte con_катсцена_номер_звука, $62
    .byte $EC
    .byte $FF
    .byte $EE
    .byte $FB
    .byte $01    ; <あ>
    .byte $2A    ; <れ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $DA
    .byte $FB
    .byte $01    ; <あ>
    .byte $2B    ; <ろ>
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
    .byte $FC
    .byte $DC
    .byte $FA
    .byte $11    ; <ち>
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $3B    ; <8>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FC
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
    .byte $FC
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
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $3C    ; <9>
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
    .byte $FC
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
    .byte $FC
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
    .byte $FC
    .byte $DE
    .byte $EA
    .byte con_катсцена_затереть_текст
    .byte $F9
    .byte $0F    ; <そ>
    .byte $FB
    .byte $01    ; <あ>
    .byte $0C    ; <し>
    .byte $E9
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
    .byte $FC
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
    .byte $FC
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
    .byte $FC
    .byte $DB
    .byte $01    ; <あ>
    .byte $28    ; <り>
    .byte $A0    ; <が>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $F2
    .byte $02    ; <い>
    .byte $DC
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte $FC
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte $FA
    .byte $10    ; <た>
    .byte $FB
    .byte $01    ; <あ>
    .byte $13    ; <て>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F5
    .byte $04    ; <え>
    .byte $E1
    .byte $40    ; <「>
    .byte $04    ; <え>
    .byte $2F    ; <っ>
    .byte $FC
    .byte $DC
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $12    ; <つ>
    .byte $FA
    .byte $11    ; <ち>
    .byte $DC
    .byte $FB
    .byte $01    ; <あ>
    .byte $15    ; <な>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F2
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
    .byte $FC
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $63    ; <モ>
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
    .byte $FC
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
    .byte $FC
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
    .byte $FC
    .byte $DE
    .byte $EA
    .byte con_катсцена_затереть_текст
    .byte $F9
    .byte $06    ; <か>
    .byte $FB
    .byte $01    ; <あ>
    .byte $A3    ; <げ>
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $25
    .byte $F5
    .byte $08    ; <く>
    .byte $DA
    .byte $F7
    .byte $F5
    .byte $04    ; <え>
    .byte con_катсцена_номер_звука, $62
    .byte $DE
    .byte $EA
    .byte $F9
    .byte $10    ; <た>
    .byte $FA
    .byte $11    ; <ち>
    .byte $FB
    .byte $01    ; <あ>
    .byte $4E    ; <セ>
    .byte $E9
    .byte $F5
    .byte $04    ; <え>
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
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $63    ; <モ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FC
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
    .byte $FC
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
    .byte $19    ; <の>
    .byte $A9    ; <ぞ>
    .byte $21    ; <む>
    .byte $14    ; <と>
    .byte $0A    ; <こ>
    .byte $2B    ; <ろ>
    .byte $0B    ; <さ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $EF
    .byte $DE
    .byte $F2
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
    .byte $FC
    .byte $FB
    .byte $01    ; <あ>
    .byte $12    ; <つ>
    .byte $DE
    .byte $F5
    .byte $FF
    .byte con_катсцена_затереть_текст
    .byte $FA
    .byte $23    ; <も>
    .byte $FB
    .byte $01    ; <あ>
    .byte $AE    ; <ど>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F5
    .byte $08    ; <く>
    .byte con_катсцена_номер_звука, $43
    .byte $DE
    .byte $FA
    .byte $10    ; <た>
    .byte $FB
    .byte $01    ; <あ>
    .byte $40    ; <「>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FC
    .byte $DE
    .byte $F3
    .byte $FF
    .byte $24    ; <や>
    .byte $42    ; <イ>
    .byte $F6
    .byte $06    ; <か>
    .byte $F3
    .byte $FF
    .byte $23    ; <も>
    .byte $41    ; <ア>
    .byte $F4
    .byte $05    ; <お>
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $53
    .byte $DD
    .byte $F2
    .byte $06    ; <か>
    .byte $F4
    .byte $04    ; <え>
    .byte $E2
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
    .byte $FC
    .byte $E2
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
    .byte $FC
    .byte $E2
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
    .byte $EB
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
    .byte $FC
    .byte $E2
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
    .byte $FC
    .byte $E2
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
    .byte $EB
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
    .byte $FC
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
    .byte $FC
    .byte $DE
    .byte $EA
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_затереть_текст



off_B1F1_09_цубаса_победил_карлоса_часть_2:
    .byte $E8
    .byte $01    ; <あ>
    .byte $DF
    .byte con_катсцена_номер_звука, $69
    .byte $DE
    .byte $F9
    .byte $0C    ; <し>
    .byte $FB
    .byte $01    ; <あ>
    .byte $43    ; <ウ>
    .byte $E9
    .byte $F5
    .byte $04    ; <え>
    .byte con_катсцена_номер_звука, $51
    .byte $F1
    .byte $00
    .byte $EC
    .byte $00
    .byte $F2
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
    .byte $FC
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
    .byte $FC
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
    .byte $FC
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $A0    ; <が>
    .byte $00
    .byte $07    ; <き>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte $EB
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
    .byte $FC
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
    .byte $FC
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
    .byte $FC
    .byte $FA
    .byte $11    ; <ち>
    .byte $EB
    .byte con_катсцена_номер_звука, $62
    .byte $FB
    .byte $01    ; <あ>
    .byte $49    ; <ケ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $FA
    .byte $10    ; <た>
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
    .byte $FC
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
    .byte $FC
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
    .byte $EB
    .byte con_катсцена_номер_звука, $62
    .byte $FB
    .byte $01    ; <あ>
    .byte $1E    ; <ほ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $FA
    .byte $2B    ; <ろ>
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
    .byte $FC
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
    .byte $FC
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7B    ; <。>
    .byte $EB
    .byte $FB
    .byte $01    ; <あ>
    .byte $43    ; <ウ>
    .byte $F7
    .byte $EC
    .byte $05    ; <お>
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
    .byte $FC
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
    .byte $FC
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
    .byte $FC
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
    .byte $FC
    .byte $DE
    .byte $F5
    .byte $FF
    .byte $EA
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_выход



off_B327_0A_мисуги_во_втором_тайме:
    .byte $E8
    .byte $01    ; <あ>
    .byte con_катсцена_номер_звука, $01
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte $DC
    .byte $F9
    .byte $19    ; <の>
    .byte $FB
    .byte $01    ; <あ>
    .byte $18    ; <ね>
    .byte $E9
    .byte con_катсцена_номер_звука, $53
    .byte $F5
    .byte $04    ; <え>
    .byte $F1
    .byte $00
    .byte $EC
    .byte $05    ; <お>
    .byte $0B    ; <さ>
    .byte $73    ; <ヮ>
    .byte $00
    .byte $21    ; <む>
    .byte $0B    ; <さ>
    .byte $0C    ; <し>
    .byte $1A    ; <は>
    .byte $00
    .byte $12    ; <つ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $FC
    .byte $20    ; <み>
    .byte $0D    ; <す>
    .byte $A1    ; <ぎ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $2D    ; <を>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $16    ; <に>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $FC
    .byte $DB
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $1A    ; <は>
    .byte $2E    ; <ん>
    .byte $00
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $B1    ; <ぶ>
    .byte $16    ; <に>
    .byte $AD    ; <で>
    .byte $1F    ; <ま>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DD
    .byte $FA
    .byte $30    ; <ゃ>
    .byte $F5
    .byte $FF
    .byte con_катсцена_затереть_текст
    .byte $EC
    .byte $FF
    .byte $EE
    .byte $FB
    .byte $01    ; <あ>
    .byte $2E    ; <ん>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $FA
    .byte $11    ; <ち>
    .byte $E4
    .byte $24    ; <や>
    .byte $26    ; <よ>
    .byte $02    ; <い>
    .byte $40    ; <「>
    .byte $A6    ; <じ>
    .byte $31    ; <ゅ>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $20    ; <み>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F5
    .byte $04    ; <え>
    .byte $DD
    .byte $EF
    .byte $E1
    .byte $40    ; <「>
    .byte $B3    ; <ぼ>
    .byte $08    ; <く>
    .byte $1A    ; <は>
    .byte $00
    .byte $1F    ; <ま>
    .byte $10    ; <た>
    .byte $00
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7A    ; <、>
    .byte $FC
    .byte $DB
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $B6    ; <グ>
    .byte $67    ; <ラ>
    .byte $43    ; <ウ>
    .byte $6E    ; <ン>
    .byte $C2    ; <ド>
    .byte $16    ; <に>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte $CF    ; <プ>
    .byte $6A    ; <レ>
    .byte $42    ; <イ>
    .byte $1A    ; <は>
    .byte $FC
    .byte $A6    ; <じ>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $B1    ; <ぶ>
    .byte $2E    ; <ん>
    .byte $00
    .byte $20    ; <み>
    .byte $0E    ; <せ>
    .byte $13    ; <て>
    .byte $23    ; <も>
    .byte $27    ; <ら>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DC
    .byte $0A    ; <こ>
    .byte $2E    ; <ん>
    .byte $AE    ; <ど>
    .byte $1A    ; <は>
    .byte $00
    .byte $B3    ; <ぼ>
    .byte $08    ; <く>
    .byte $19    ; <の>
    .byte $AF    ; <ば>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte $FC
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte $EA
    .byte con_катсцена_выход



off_B3EE_0B_мисуги_после_матча:
    .byte $E8
    .byte $01    ; <あ>
    .byte $F9
    .byte $10    ; <た>
    .byte $FA
    .byte $11    ; <ち>
    .byte $FB
    .byte $01    ; <あ>
    .byte $1B    ; <ひ>
    .byte $DE
    .byte $E9
    .byte con_катсцена_номер_звука, $47
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $0D    ; <す>
    .byte $A1    ; <ぎ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $FC
    .byte $DB
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $1A    ; <は>
    .byte $00
    .byte $1F    ; <ま>
    .byte $0B    ; <さ>
    .byte $06    ; <か>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $20    ; <み>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $06    ; <か>
    .byte $08    ; <く>
    .byte $0E    ; <せ>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DC
    .byte $10    ; <た>
    .byte $0C    ; <し>
    .byte $06    ; <か>
    .byte $16    ; <に>
    .byte $00
    .byte $B3    ; <ぼ>
    .byte $08    ; <く>
    .byte $19    ; <の>
    .byte $0C    ; <し>
    .byte $2E    ; <ん>
    .byte $A9    ; <ぞ>
    .byte $03    ; <う>
    .byte $1A    ; <は>
    .byte $00
    .byte $1F    ; <ま>
    .byte $AA    ; <だ>
    .byte $FC
    .byte $1C    ; <ふ>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $EB
    .byte $E1
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $AE    ; <ど>
    .byte $00
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $2D    ; <を>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $10    ; <た>
    .byte $B0    ; <び>
    .byte $16    ; <に>
    .byte $FC
    .byte $DB
    .byte $B3    ; <ぼ>
    .byte $08    ; <く>
    .byte $19    ; <の>
    .byte $0C    ; <し>
    .byte $2E    ; <ん>
    .byte $A9    ; <ぞ>
    .byte $03    ; <う>
    .byte $1A    ; <は>
    .byte $00
    .byte $0D    ; <す>
    .byte $0A    ; <こ>
    .byte $0C    ; <し>
    .byte $A7    ; <ず>
    .byte $12    ; <つ>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $AE    ; <ど>
    .byte $FC
    .byte $12    ; <つ>
    .byte $26    ; <よ>
    .byte $08    ; <く>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $EB
    .byte $E1
    .byte $40    ; <「>
    .byte $10    ; <た>
    .byte $14    ; <と>
    .byte $04    ; <え>
    .byte $00
    .byte $34    ; <1>
    .byte $CA    ; <ぷ>
    .byte $2E    ; <ん>
    .byte $24    ; <や>
    .byte $35    ; <2>
    .byte $1C    ; <ふ>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $06    ; <か>
    .byte $FC
    .byte $CF    ; <プ>
    .byte $6A    ; <レ>
    .byte $42    ; <イ>
    .byte $AD    ; <で>
    .byte $07    ; <き>
    .byte $15    ; <な>
    .byte $08    ; <く>
    .byte $13    ; <て>
    .byte $23    ; <も>
    .byte $00
    .byte $B3    ; <ぼ>
    .byte $08    ; <く>
    .byte $1A    ; <は>
    .byte $00
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $A7    ; <ず>
    .byte $FC
    .byte $B6    ; <グ>
    .byte $67    ; <ラ>
    .byte $43    ; <ウ>
    .byte $6E    ; <ン>
    .byte $C2    ; <ド>
    .byte $16    ; <に>
    .byte $10    ; <た>
    .byte $12    ; <つ>
    .byte $7B    ; <。>
    .byte $EB
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $12    ; <つ>
    .byte $06    ; <か>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $00
    .byte $0C    ; <し>
    .byte $2E    ; <ん>
    .byte $A9    ; <ぞ>
    .byte $03    ; <う>
    .byte $B0    ; <び>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $16    ; <に>
    .byte $23    ; <も>
    .byte $FC
    .byte $03    ; <う>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $20    ; <み>
    .byte $0E    ; <せ>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte $DC
    .byte $00
    .byte $B3    ; <ぼ>
    .byte $08    ; <く>
    .byte $1A    ; <は>
    .byte $00
    .byte $4B    ; <サ>
    .byte $6F    ; <ッ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $2D    ; <を>
    .byte $FC
    .byte $01    ; <あ>
    .byte $07    ; <き>
    .byte $27    ; <ら>
    .byte $22    ; <め>
    .byte $10    ; <た>
    .byte $28    ; <り>
    .byte $0C    ; <し>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte $EB
    .byte $FB
    .byte $01    ; <あ>
    .byte $19    ; <の>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $FA
    .byte $30    ; <ゃ>
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $0D    ; <す>
    .byte $A1    ; <ぎ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $2E    ; <ん>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $A6    ; <じ>
    .byte $31    ; <ゅ>
    .byte $2E    ; <ん>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte $EA
    .byte con_катсцена_выход



off_B506_0C_мацуяма_перед_матчем:
    .byte $E8
    .byte $01    ; <あ>
    .byte $F9
    .byte $11    ; <ち>
    .byte $FA
    .byte $10    ; <た>
    .byte $FB
    .byte $01    ; <あ>
    .byte $1D    ; <へ>
    .byte $DE
    .byte $E9
    .byte con_катсцена_номер_звука, $53
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $7A    ; <、>
    .byte $DB
    .byte $AA    ; <だ>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $00
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $1A    ; <は>
    .byte $FC
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $00
    .byte $1A    ; <は>
    .byte $10    ; <た>
    .byte $0B    ; <さ>
    .byte $0E    ; <せ>
    .byte $13    ; <て>
    .byte $23    ; <も>
    .byte $27    ; <ら>
    .byte $03    ; <う>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $1B    ; <ひ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $1F    ; <ま>
    .byte $12    ; <つ>
    .byte $24    ; <や>
    .byte $1F    ; <ま>
    .byte $7A    ; <、>
    .byte $DB
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $00
    .byte $1F    ; <ま>
    .byte $09    ; <け>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $79    ; <!>
    .byte $FC
    .byte $DD
    .byte $FA
    .byte $30    ; <ゃ>
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $2F    ; <っ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $FA
    .byte $10    ; <た>
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $1F    ; <ま>
    .byte $12    ; <つ>
    .byte $24    ; <や>
    .byte $1F    ; <ま>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $1C    ; <ふ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $DC
    .byte $EF
    .byte $E1
    .byte $40    ; <「>
    .byte $1C    ; <ふ>
    .byte $A6    ; <じ>
    .byte $0B    ; <さ>
    .byte $2C    ; <わ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $20    ; <み>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte $EA
    .byte con_катсцена_выход



off_B590_0D_мацуяма_после_матча:
    .byte $E8
    .byte $01    ; <あ>
    .byte $F9
    .byte $11    ; <ち>
    .byte $FA
    .byte $10    ; <た>
    .byte $FB
    .byte $01    ; <あ>
    .byte $1D    ; <へ>
    .byte $DE
    .byte $E9
    .byte con_катсцена_номер_звука, $47
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $7A    ; <、>
    .byte $DB
    .byte $08    ; <く>
    .byte $24    ; <や>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $A0    ; <が>
    .byte $00
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte $1F    ; <ま>
    .byte $09    ; <け>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DC
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $00
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $06    ; <か>
    .byte $13    ; <て>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte $EB
    .byte $FB
    .byte $01    ; <あ>
    .byte $19    ; <の>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $1F    ; <ま>
    .byte $12    ; <つ>
    .byte $24    ; <や>
    .byte $1F    ; <ま>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $1D    ; <へ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $00
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $14    ; <と>
    .byte $00
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $13    ; <て>
    .byte $FC
    .byte $26    ; <よ>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DC
    .byte $01    ; <あ>
    .byte $0D    ; <す>
    .byte $19    ; <の>
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $00
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2A    ; <れ>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte $EB
    .byte $FB
    .byte $01    ; <あ>
    .byte $19    ; <の>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $03    ; <う>
    .byte $2E    ; <ん>
    .byte $7B    ; <。>
    .byte $FC
    .byte $EF
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $EA
    .byte con_катсцена_номер_звука, $37
    .byte $DE
    .byte $F9
    .byte $0C    ; <し>
    .byte con_катсцена_номер_звука, $69
    .byte $E9
    .byte $F5
    .byte $04    ; <え>
    .byte $F1
    .byte $00
    .byte $EC
    .byte $00
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $AD    ; <で>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $1A    ; <は>
    .byte $FC
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
    .byte $19    ; <の>
    .byte $FC
    .byte $91    ; <V>
    .byte $35    ; <2>
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $15    ; <な>
    .byte $28    ; <り>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte $EB
    .byte $EC
    .byte $05    ; <お>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $4B    ; <サ>
    .byte $6F    ; <ッ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $00
    .byte $67    ; <ラ>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $C3    ; <バ>
    .byte $54    ; <ト>
    .byte $69    ; <ル>
    .byte $79    ; <!>
    .byte $FC
    .byte $DB
    .byte $04    ; <え>
    .byte $02    ; <い>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte $0C    ; <し>
    .byte $30    ; <ゃ>
    .byte $1A    ; <は>
    .byte $00
    .byte $AE    ; <ど>
    .byte $11    ; <ち>
    .byte $27    ; <ら>
    .byte $A0    ; <が>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $06    ; <か>
    .byte $78    ; <?>
    .byte $FC
    .byte $DB
    .byte $EC
    .byte $03    ; <う>
    .byte con_катсцена_номер_звука, $62
    .byte $5B    ; <ヒ>
    .byte $41    ; <ア>
    .byte $7C    ; <~>
    .byte $00
    .byte $23    ; <も>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte $79    ; <!>
    .byte $EB
    .byte $F5
    .byte $FF
    .byte $EE
    .byte $EC
    .byte $FF
    .byte $FA
    .byte $02    ; <い>
    .byte $FB
    .byte $01    ; <あ>
    .byte $49    ; <ケ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DD
    .byte $40    ; <「>
    .byte $24    ; <や>
    .byte $1A    ; <は>
    .byte $28    ; <り>
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $00
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DC
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $00
    .byte $01    ; <あ>
    .byte $0D    ; <す>
    .byte $19    ; <の>
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $7A    ; <、>
    .byte $DB
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $16    ; <に>
    .byte $FC
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $1A    ; <は>
    .byte $00
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $A8    ; <ぜ>
    .byte $79    ; <!>
    .byte $FC
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte $EA
    .byte con_катсцена_выход



off_B6C8_0E_мисаки_и_хюга_перед_матчем:
    .byte $E8
    .byte $01    ; <あ>
    .byte $F9
    .byte $11    ; <ち>
    .byte $FA
    .byte $10    ; <た>
    .byte $FB
    .byte $01    ; <あ>
    .byte $49    ; <ケ>
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte $E9
    .byte $F5
    .byte $04    ; <え>
    .byte con_катсцена_номер_звука, $53
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $4B    ; <サ>
    .byte $6F    ; <ッ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $00
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $A4    ; <ご>
    .byte $19    ; <の>
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $FC
    .byte $DB
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $7A    ; <、>
    .byte $DB
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $A0    ; <が>
    .byte $00
    .byte $49    ; <ケ>
    .byte $68    ; <リ>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $09    ; <け>
    .byte $13    ; <て>
    .byte $24    ; <や>
    .byte $29    ; <る>
    .byte $A8    ; <ぜ>
    .byte $79    ; <!>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $1E    ; <ほ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte $00
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $A4    ; <ご>
    .byte $19    ; <の>
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $FC
    .byte $DB
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $A7    ; <ず>
    .byte $00
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $20    ; <み>
    .byte $0E    ; <せ>
    .byte $29    ; <る>
    .byte $79    ; <!>
    .byte $FC
    .byte $DD
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte $F5
    .byte $FF
    .byte $EA
    .byte con_катсцена_выход



off_B731_0F_мисаки_победил_хюгу:
    .byte $E8
    .byte $01    ; <あ>
    .byte $F9
    .byte $2B    ; <ろ>
    .byte $FB
    .byte $01    ; <あ>
    .byte $43    ; <ウ>
    .byte $DE
    .byte con_катсцена_номер_звука, $69
    .byte $E9
    .byte $F5
    .byte $04    ; <え>
    .byte $DD
    .byte con_катсцена_номер_звука, $4E
    .byte $F1
    .byte $00
    .byte $EC
    .byte $02    ; <い>
    .byte $18    ; <ね>
    .byte $2F    ; <っ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $12    ; <つ>
    .byte $AC    ; <づ>
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte $00
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $4B    ; <サ>
    .byte $6F    ; <ッ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $FC
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $09    ; <け>
    .byte $2E    ; <ん>
    .byte $23    ; <も>
    .byte $00
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $AD    ; <で>
    .byte $00
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $A0    ; <が>
    .byte $FC
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte $EB
    .byte con_катсцена_номер_звука, $62
    .byte $91    ; <V>
    .byte $35    ; <2>
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $23    ; <も>
    .byte $00
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $19    ; <の>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $28    ; <り>
    .byte $AD    ; <で>
    .byte $FC
    .byte $1F    ; <ま>
    .byte $08    ; <く>
    .byte $2D    ; <を>
    .byte $14    ; <と>
    .byte $A6    ; <じ>
    .byte $00
    .byte $4D    ; <ス>
    .byte $50    ; <タ>
    .byte $6E    ; <ン>
    .byte $C2    ; <ド>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $1A    ; <は>
    .byte $FC
    .byte $05    ; <お>
    .byte $05    ; <お>
    .byte $07    ; <き>
    .byte $15    ; <な>
    .byte $0E    ; <せ>
    .byte $02    ; <い>
    .byte $04    ; <え>
    .byte $2E    ; <ん>
    .byte $A0    ; <が>
    .byte $00
    .byte $05    ; <お>
    .byte $08    ; <く>
    .byte $27    ; <ら>
    .byte $2A    ; <れ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $1F    ; <ま>
    .byte $0D    ; <す>
    .byte $79    ; <!>
    .byte $FC
; скрытая катсцена
    .byte $F4
    .byte $06    ; <か>
    .byte $03    ; <う>
    .byte $EA
    .byte $EC
    .byte $FF
    .byte $EE
    .byte $F9
    .byte $0E    ; <せ>
    .byte $E9
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
    .byte $FC
    .byte $DB
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
    .byte $FC
    .byte $DB
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
    .byte $FC
    .byte $DD
    .byte $EA
    .byte con_катсцена_затереть_текст
    .byte $F9
    .byte $1A    ; <は>
    .byte $FB
    .byte $01    ; <あ>
    .byte $03    ; <う>
    .byte con_катсцена_номер_звука, $69
    .byte $E9
    .byte $F5
    .byte $04    ; <え>
    .byte $DD
    .byte $DF
    .byte $DF
    .byte $FA
    .byte $10    ; <た>
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $7A    ; <、>
    .byte $DB
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
    .byte $FC
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
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $19    ; <の>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $A6    ; <じ>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $7A    ; <、>
    .byte $DB
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $00
    .byte $06    ; <か>
    .byte $13    ; <て>
    .byte $10    ; <た>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte $FC
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
    .byte $FC
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
    .byte $FC
    .byte $DE
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
    .byte $FC
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
    .byte $FC
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
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $31    ; <ゅ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DE
    .byte $EA
    .byte con_катсцена_затереть_текст
    .byte $F9
    .byte $06    ; <か>
    .byte $FB
    .byte $01    ; <あ>
    .byte $A3    ; <げ>
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $25
    .byte $F5
    .byte $08    ; <く>
    .byte $DA
    .byte $F7
    .byte $F5
    .byte $04    ; <え>
    .byte $F1
    .byte $00
    .byte $EC
    .byte $02    ; <い>
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
    .byte $FC
    .byte $DB
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
    .byte $FC
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
    .byte $FC
    .byte $09    ; <け>
    .byte $12    ; <つ>
    .byte $1F    ; <ま>
    .byte $12    ; <つ>
    .byte $AD    ; <で>
    .byte $0D    ; <す>
    .byte $79    ; <!>
    .byte $FC
    .byte $DE
    .byte $EA
    .byte con_катсцена_затереть_текст
    .byte $EC
    .byte $FF
    .byte $EE
    .byte $F9
    .byte $11    ; <ち>
    .byte $FA
    .byte $10    ; <た>
    .byte $FB
    .byte $01    ; <あ>
    .byte $31    ; <ゅ>
    .byte con_катсцена_номер_звука, $69
    .byte $E9
    .byte $F5
    .byte $04    ; <え>
    .byte $DC
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
    .byte $FC
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
    .byte $FC
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $19    ; <の>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $03    ; <う>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $C2    ; <ド>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $1D    ; <へ>
    .byte $19    ; <の>
    .byte $FC
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $A6    ; <じ>
    .byte $15    ; <な>
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte $DB
    .byte $00
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $FC
    .byte $DE
    .byte $EA
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_затереть_текст
    .byte $DC
    .byte con_катсцена_номер_звука, $69
    .byte $DE
    .byte con_катсцена_номер_звука, $47
    .byte $F9
    .byte $2F    ; <っ>
    .byte $FB
    .byte $01    ; <あ>
    .byte $1F    ; <ま>
    .byte $E9
    .byte $F1
    .byte $00
    .byte $EC
    .byte $04    ; <え>
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
    .byte $FC
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
    .byte $FC
    .byte con_катсцена_номер_звука, $62
    .byte $DD
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
    .byte $FC
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
    .byte $FC
    .byte $01    ; <あ>
    .byte $27    ; <ら>
    .byte $0C    ; <し>
    .byte $AD    ; <で>
    .byte $0D    ; <す>
    .byte $79    ; <!>
    .byte $FC
    .byte con_катсцена_номер_звука, $62
    .byte $DE
    .byte $EA
    .byte con_катсцена_затереть_текст
    .byte $EC
    .byte $FF
    .byte $EE
    .byte $F9
    .byte $02    ; <い>
    .byte $FB
    .byte $01    ; <あ>
    .byte $42    ; <イ>
    .byte $E9
    .byte $DD
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
    .byte $FC
    .byte $DC
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
    .byte $FC
    .byte $DB
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
    .byte $FC
    .byte $DE
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
    .byte $FC
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
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $0C    ; <し>
    .byte $2B    ; <ろ>
    .byte $DB
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
    .byte $FC
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
    .byte $FC
    .byte $DF
    .byte $EA
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $F9
    .byte $2F    ; <っ>
    .byte $FB
    .byte $01    ; <あ>
    .byte $1F    ; <ま>
    .byte $E9
    .byte con_катсцена_номер_звука, $53
    .byte $DD
    .byte $F2
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
    .byte $FC
    .byte $DC
    .byte $E2
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
    .byte $FC
    .byte $E2
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
    .byte $EB
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
    .byte $FC
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
    .byte $FC
    .byte $DC
    .byte $E2
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $DB
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
    .byte $EB
    .byte $E2
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
    .byte $FC
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
    .byte $FC
    .byte $DE
    .byte $EA
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte $DF
    .byte con_катсцена_затереть_текст
    .byte $F9
    .byte $06    ; <か>
    .byte $FB
    .byte $01    ; <あ>
    .byte $A3    ; <げ>
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $25
    .byte $F5
    .byte $08    ; <く>
    .byte $DA
    .byte $F7
    .byte $F5
    .byte $04    ; <え>
    .byte $DE
    .byte con_катсцена_номер_звука, $62
    .byte $EA
    .byte $F9
    .byte $10    ; <た>
    .byte $FA
    .byte $11    ; <ち>
    .byte $FB
    .byte $01    ; <あ>
    .byte $4E    ; <セ>
    .byte $E9
    .byte con_катсцена_номер_звука, $4D
    .byte $F5
    .byte $04    ; <え>
    .byte $F2
    .byte $08    ; <く>
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
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $63    ; <モ>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FC
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
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $4E    ; <セ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F5
    .byte $04    ; <え>
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
    .byte $FC
    .byte $EF
    .byte $DE
    .byte $F2
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
    .byte $FC
    .byte $FB
    .byte $01    ; <あ>
    .byte $12    ; <つ>
    .byte $DE
    .byte $F5
    .byte $FF
    .byte con_катсцена_затереть_текст
    .byte $FA
    .byte $23    ; <も>
    .byte $FB
    .byte $01    ; <あ>
    .byte $AE    ; <ど>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $F5
    .byte $08    ; <く>
    .byte con_катсцена_номер_звука, $43
    .byte $DE
    .byte $FA
    .byte $10    ; <た>
    .byte $FB
    .byte $01    ; <あ>
    .byte $40    ; <「>
    .byte $F7
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $52
    .byte $EF
    .byte $FA
    .byte $11    ; <ち>
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
    .byte $EF
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte $FC
    .byte $DE
    .byte $F4
    .byte $05    ; <お>
    .byte con_катсцена_затереть_текст
    .byte $F4
    .byte $04    ; <え>
    .byte con_катсцена_номер_звука, $46
    .byte $F2
    .byte $08    ; <く>
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
    .byte $FC
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
    .byte $FC
    .byte $DC
    .byte $F2
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $04    ; <え>
    .byte $2F    ; <っ>
    .byte $DA
    .byte $EB
    .byte $F2
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
    .byte $FC
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
    .byte $FC
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
    .byte $EB
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
    .byte $FC
    .byte $DB
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
    .byte $FC
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
    .byte $FC
    .byte $0B    ; <さ>
    .byte $2E    ; <ん>
    .byte $06    ; <か>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte $EB
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
    .byte $FC
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
    .byte $FC
    .byte $EF
    .byte $DC
    .byte $F2
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
    .byte $FC
    .byte $F5
    .byte $08    ; <く>
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $2A    ; <れ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $FA
    .byte $10    ; <た>
    .byte $EF
    .byte $F2
    .byte $08    ; <く>
    .byte $E1
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $78    ; <?>
    .byte $DC
    .byte $00
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $EF
    .byte $06    ; <か>
    .byte $79    ; <!>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $DB
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
    .byte $FC
    .byte $35    ; <2>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $A4    ; <ご>
    .byte $7A    ; <、>
    .byte $DB
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
    .byte $FC
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
    .byte $EB
    .byte $FB
    .byte $01    ; <あ>
    .byte $11    ; <ち>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FC
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
    .byte $FC
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
    .byte $FC
    .byte $DB
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
    .byte $FC
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
    .byte $EB
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
    .byte $FC
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
    .byte $FC
    .byte $DD
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
    .byte $FC
    .byte $DB
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
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $11    ; <ち>
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
    .byte $24    ; <や>
    .byte $00
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $78    ; <?>
    .byte $FC
    .byte $DC
    .byte $AD    ; <で>
    .byte $23    ; <も>
    .byte $00
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $7A    ; <、>
    .byte $DB
    .byte $CF    ; <プ>
    .byte $6B    ; <ロ>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $FC
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1D    ; <へ>
    .byte $1A    ; <は>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FA
    .byte $0F    ; <そ>
    .byte $FB
    .byte $01    ; <あ>
    .byte $43    ; <ウ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
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
    .byte $FC
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $A8    ; <ぜ>
    .byte $79    ; <!>
    .byte $FC
    .byte $DC
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
    .byte $DB
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $16    ; <に>
    .byte $FC
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
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FA
    .byte $10    ; <た>
    .byte $FB
    .byte $01    ; <あ>
    .byte $40    ; <「>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $FA
    .byte $11    ; <ち>
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
    .byte $FC
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
    .byte $FC
    .byte $DC
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1D    ; <へ>
    .byte $07    ; <き>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $79    ; <!>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $09    ; <け>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $4D    ; <ス>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $EF
    .byte $3F    ; <•>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DE
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $7A    ; <、>
    .byte $DB
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
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $09    ; <け>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FC
    .byte con_катсцена_номер_звука, $31
    .byte $DF
    .byte con_катсцена_номер_звука, $01
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $10    ; <た>
    .byte $E1
    .byte $DE
    .byte $40    ; <「>
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte $DE
    .byte $00
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte con_катсцена_номер_звука, $4C
    .byte $EF
    .byte $3F    ; <•>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DD
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1D    ; <へ>
    .byte $02    ; <い>
    .byte $08    ; <く>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $F5
    .byte $04    ; <え>
    .byte con_катсцена_номер_звука, $69
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $4D    ; <ス>
    .byte $F7
    .byte $F3
    .byte $00
    .byte con_катсцена_номер_звука, $62
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $3F    ; <•>
    .byte $F8
    .byte $02    ; <い>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $10    ; <た>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $DC
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
    .byte $FC
    .byte $DC
    .byte $FB
    .byte $01    ; <あ>
    .byte $09    ; <け>
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
    .byte $FC
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $1F    ; <ま>
    .byte $0D    ; <す>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DC
    .byte $FB
    .byte $01    ; <あ>
    .byte $10    ; <た>
    .byte $DD
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $40    ; <「>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $5C    ; <フ>
    .byte $F8
    .byte $02    ; <い>
    .byte $6F    ; <ッ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $63    ; <モ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DC
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $28    ; <り>
    .byte $1A    ; <は>
    .byte $FC
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
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $13    ; <て>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $7A    ; <、>
    .byte $F6
    .byte $1E    ; <ほ>
    .byte $FB
    .byte $01    ; <あ>
    .byte $11    ; <ち>
    .byte $DD
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $00
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $A7    ; <ず>
    .byte $FC
    .byte $DB
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
    .byte $FC
    .byte $DE
    .byte con_катсцена_затереть_текст
    .byte $FB
    .byte $01    ; <あ>
    .byte $63    ; <モ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $01    ; <あ>
    .byte $DB
    .byte $00
    .byte $1F    ; <ま>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte $F5
    .byte $FF
    .byte con_катсцена_затереть_текст
    .byte $FA
    .byte $0F    ; <そ>
    .byte $FB
    .byte $01    ; <あ>
    .byte $0C    ; <し>
    .byte $F7
    .byte $F3
    .byte $00
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
    .byte $FC
    .byte $DB
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
    .byte $FC
    .byte $DB
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DC
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
    .byte $FC
    .byte $DB
    .byte $F2
    .byte $02    ; <い>
    .byte $E1
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte $FC
    .byte con_катсцена_номер_звука, $62
    .byte $DF
    .byte $EA
    .byte con_катсцена_номер_звука, $31
    .byte $DE
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_выход
