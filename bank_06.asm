.segment "BANK_06"
.include "copy_bank_ram.inc"
; тут только данные
; поинтеры в 0x000485
; перемещать код можно только после начальной таблицы поинтеров

    .word off_A43B_22_финальная_катсцена
    .word off_B16D_23_тренер_00
    .word off_B1E3_24_тренер_01
    .word off_B236_25_тренер_02
    .word off_B2A8_26_тренер_03
    .word off_B2E4_27_тренер_04
    .word off_B34F_28_тренер_05
    .word off_B3D1_29_тренер_06
    .word off_B41F_2A_тренер_07
    .word off_B46B_2B_тренер_08
    .word off_B4B4_2C_тренер_09
    .word off_B512_2D_тренер_0A
    .word off_B556_2E_тренер_0B
    .word off_B5E1_2F_тренер_0C
    .word off_B61E_30_тренер_0D
    .word off_B661_31_тренер_0E
    .word off_B6DF_32_тренер_0F
    .word off_B720_33_тренер_10
    .word off_B785_34_тренер_11
    .word off_B7C3_35_тренер_12
    .word off_B806_36_тренер_13
    .word off_B853_37_тренер_14
    .word off_B89C_38_тренер_15
    .word off_B913_39_тренер_16
    .word off_BA16_3A_тренер_17
    .word off_BAD3_3B_тренер_18
    .word off_BB12_3C_тренер_19
    .word off_BB5A_3D_тренер_1A
    .word off_BBA7_3E_тренер_1B
    .word off_BBE5_3F_тренер_1C
    .word off_BC2A_40_тренер_1D
    .word off_BCA7_41_тренер_1E
    .word off_BCF9_42_тренер_1F
    .word off_BDAD_43_тренер_20
    .word off_BE84_44_тренер_роберто
    .word off_BE9E_45_тренер_катагири
    .word off_BEBC_46_тренер_миками
    .word off_BEDB_47_первый_перерыв_йоко
    .word off_BEE1_48_перерыв_йоко
    .word off_BEEB_49_первый_перерыв_санае
    .word off_BEF1_4A_перерыв_санае
    .word off_BEFB_4B_первый_перерыв_ишизаки
    .word off_BF2A_4C_перерыв_ишизаки
    .word off_BF54_4D_пароль_йоко
    .word off_BF7D_4E_удачи_после_пароля
    .word off_BF5A_4F_пароль_санае
    .word off_BF7D_4E_удачи_после_пароля
    .word off_BF60_51_пароль_ишизаки
    .word off_BF7D_4E_удачи_после_пароля
    .word off_BF90_53_новый_уровень_йоко
    .word off_BF96_54_новый_уровень_санае
    .word off_BF9C_55_новый_уровень_ишизаки
    .word off_BFBA_56_сан_паулу_перед_матчем
    .word off_BFC4_57_нанкацу_перед_матчем
    .word off_BFCE_58_япония_перед_матчем



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



off_B16D_23_тренер_00:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $68    ; <リ>
    .byte $45    ; <オ>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $1A    ; <は>
    .byte $00
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $A4    ; <ご>
    .byte $03    ; <う>
    .byte $A9    ; <ぞ>
    .byte $2B    ; <ろ>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $17    ; <ぬ>
    .byte $08    ; <く>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $19    ; <の>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $26    ; <よ>
    .byte $08    ; <く>
    .byte $0C    ; <し>
    .byte $29    ; <る>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $A0    ; <が>
    .byte $00
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $0E    ; <せ>
    .byte $12    ; <つ>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $4B    ; <サ>
    .byte $6F    ; <ッ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $19    ; <の>
    .byte $07    ; <き>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $AD    ; <で>
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $CD    ; <パ>
    .byte $4D    ; <ス>
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte $A0    ; <が>
    .byte $00
    .byte $A6    ; <じ>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $C1    ; <デ>
    .byte $7D    ; <ー>
    .byte $50    ; <タ>
    .byte $AD    ; <で>
    .byte $00
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $A3    ; <げ>
    .byte $07    ; <き>
    .byte $1E    ; <ほ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $26    ; <よ>
    .byte $08    ; <く>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $A0    ; <が>
    .byte $04    ; <え>
    .byte $2B    ; <ろ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BE89



off_B1E3_24_тренер_01:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $8C    ; <M>
    .byte $86    ; <F>
    .byte $3F    ; <•>
    .byte $68    ; <リ>
    .byte $C6    ; <ベ>
    .byte $68    ; <リ>
    .byte $45    ; <オ>
    .byte $19    ; <の>
    .byte $00
    .byte $4E    ; <セ>
    .byte $6F    ; <ッ>
    .byte $54    ; <ト>
    .byte $CF    ; <プ>
    .byte $6A    ; <レ>
    .byte $42    ; <イ>
    .byte $14    ; <と>
    .byte con_катсцена_новая_строка
    .byte $41    ; <ア>
    .byte $69    ; <ル>
    .byte $BC    ; <ゼ>
    .byte $6E    ; <ン>
    .byte $51    ; <チ>
    .byte $6E    ; <ン>
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $1B    ; <ひ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $00
    .byte $4B    ; <サ>
    .byte $54    ; <ト>
    .byte $69    ; <ル>
    .byte $4D    ; <ス>
    .byte $53    ; <テ>
    .byte $B5    ; <ギ>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $5D    ; <ヘ>
    .byte $C1    ; <デ>
    .byte $74    ; <ィ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $1A    ; <は>
    .byte $00
    .byte $14    ; <と>
    .byte $08    ; <く>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $08    ; <く>
    .byte $A0    ; <が>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $1C    ; <ふ>
    .byte $10    ; <た>
    .byte $28    ; <り>
    .byte $2D    ; <を>
    .byte $00
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $16    ; <に>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $AC    ; <づ>
    .byte $09    ; <け>
    .byte $29    ; <る>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BE89



off_B236_25_тренер_02:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $43    ; <ウ>
    .byte $69    ; <ル>
    .byte $B6    ; <グ>
    .byte $41    ; <ア>
    .byte $42    ; <イ>
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $1B    ; <ひ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $00
    .byte $BE    ; <ダ>
    .byte $3F    ; <•>
    .byte $4C    ; <シ>
    .byte $69    ; <ル>
    .byte $C3    ; <バ>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $B2    ; <べ>
    .byte $02    ; <い>
    .byte $14    ; <と>
    .byte $08    ; <く>
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $00
    .byte $4D    ; <ス>
    .byte $CE    ; <ピ>
    .byte $7D    ; <ー>
    .byte $C2    ; <ド>
    .byte $19    ; <の>
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $CF    ; <プ>
    .byte $6A    ; <レ>
    .byte $42    ; <イ>
    .byte $2D    ; <を>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $87    ; <G>
    .byte $8B    ; <K>
    .byte $3F    ; <•>
    .byte $62    ; <メ>
    .byte $45    ; <オ>
    .byte $6E    ; <ン>
    .byte $16    ; <に>
    .byte $00
    .byte $C2    ; <ド>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $C5    ; <ブ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $07    ; <き>
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $A0    ; <が>
    .byte $7A    ; <、>
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte $08    ; <く>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $1A    ; <は>
    .byte $00
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte $1A    ; <は>
    .byte $A7    ; <ず>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $2D    ; <を>
    .byte $18    ; <ね>
    .byte $27    ; <ら>
    .byte $02    ; <い>
    .byte $00
    .byte $14    ; <と>
    .byte $2F    ; <っ>
    .byte $C8    ; <ぱ>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte $20    ; <み>
    .byte $12    ; <つ>
    .byte $09    ; <け>
    .byte $2B    ; <ろ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BE89



off_B2A8_26_тренер_03:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $8C    ; <M>
    .byte $86    ; <F>
    .byte $3F    ; <•>
    .byte $54    ; <ト>
    .byte $56    ; <ニ>
    .byte $7D    ; <ー>
    .byte $56    ; <ニ>
    .byte $72    ; <ョ>
    .byte $14    ; <と>
    .byte $00
    .byte $43    ; <ウ>
    .byte $42    ; <イ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $19    ; <の>
    .byte $58    ; <ネ>
    .byte $42    ; <イ>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $4A    ; <コ>
    .byte $6E    ; <ン>
    .byte $C4    ; <ビ>
    .byte $CF    ; <プ>
    .byte $6A    ; <レ>
    .byte $42    ; <イ>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $06    ; <か>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $86    ; <F>
    .byte $92    ; <W>
    .byte $3F    ; <•>
    .byte $8C    ; <M>
    .byte $86    ; <F>
    .byte $1A    ; <は>
    .byte $00
    .byte $1C    ; <ふ>
    .byte $10    ; <た>
    .byte $28    ; <り>
    .byte $2D    ; <を>
    .byte $5C    ; <フ>
    .byte $68    ; <リ>
    .byte $7D    ; <ー>
    .byte $16    ; <に>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BE89



off_B2E4_27_тренер_04:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $83    ; <C>
    .byte $86    ; <F>
    .byte $3F    ; <•>
    .byte $B9    ; <ザ>
    .byte $B4    ; <ガ>
    .byte $6B    ; <ロ>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $BE    ; <ダ>
    .byte $C5    ; <ブ>
    .byte $69    ; <ル>
    .byte $42    ; <イ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $14    ; <と>
    .byte $02    ; <い>
    .byte $03    ; <う>
    .byte con_катсцена_новая_строка
    .byte $47    ; <キ>
    .byte $7D    ; <ー>
    .byte $CD    ; <パ>
    .byte $7D    ; <ー>
    .byte $A4    ; <ご>
    .byte $2B    ; <ろ>
    .byte $0C    ; <し>
    .byte $19    ; <の>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $A0    ; <が>
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $83    ; <C>
    .byte $82    ; <B>
    .byte $3F    ; <•>
    .byte $C1    ; <デ>
    .byte $74    ; <ィ>
    .byte $43    ; <ウ>
    .byte $4E    ; <セ>
    .byte $43    ; <ウ>
    .byte $19    ; <の>
    .byte $00
    .byte $47    ; <キ>
    .byte $70    ; <ャ>
    .byte $59    ; <ノ>
    .byte $6E    ; <ン>
    .byte $5D    ; <ヘ>
    .byte $6F    ; <ッ>
    .byte $C2    ; <ド>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $13    ; <て>
    .byte $A4    ; <ご>
    .byte $2C    ; <わ>
    .byte $02    ; <い>
    .byte $A9    ; <ぞ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $11    ; <ち>
    .byte $15    ; <な>
    .byte $20    ; <み>
    .byte $16    ; <に>
    .byte $00
    .byte $42    ; <イ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $14    ; <と>
    .byte $1A    ; <は>
    .byte $00
    .byte $43    ; <ウ>
    .byte $55    ; <ナ>
    .byte $B5    ; <ギ>
    .byte $19    ; <の>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $AA    ; <だ>
    .byte con_катсцена_новая_строка
    .byte $46    ; <カ>
    .byte $C3    ; <バ>
    .byte $64    ; <ヤ>
    .byte $47    ; <キ>
    .byte $16    ; <に>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $14    ; <と>
    .byte $00
    .byte $03    ; <う>
    .byte $1F    ; <ま>
    .byte $02    ; <い>
    .byte $A9    ; <ぞ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BE89



off_B34F_28_тренер_05:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $62    ; <メ>
    .byte $6E    ; <ン>
    .byte $B8    ; <ゴ>
    .byte $1A    ; <は>
    .byte $00
    .byte $26    ; <よ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $1E    ; <ほ>
    .byte $14    ; <と>
    .byte $2E    ; <ん>
    .byte $AE    ; <ど>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $83    ; <C>
    .byte $86    ; <F>
    .byte $3F    ; <•>
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $19    ; <の>
    .byte $00
    .byte $60    ; <ミ>
    .byte $67    ; <ラ>
    .byte $7D    ; <ー>
    .byte $BA    ; <ジ>
    .byte $71    ; <ュ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $14    ; <と>
    .byte con_катсцена_новая_строка
    .byte $8C    ; <M>
    .byte $86    ; <F>
    .byte $3F    ; <•>
    .byte $4B    ; <サ>
    .byte $6E    ; <ン>
    .byte $50    ; <タ>
    .byte $5F    ; <マ>
    .byte $68    ; <リ>
    .byte $41    ; <ア>
    .byte $19    ; <の>
    .byte $00
    .byte $C3    ; <バ>
    .byte $55    ; <ナ>
    .byte $55    ; <ナ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $7A    ; <、>
    .byte $4B    ; <サ>
    .byte $6E    ; <ン>
    .byte $50    ; <タ>
    .byte $5F    ; <マ>
    .byte $68    ; <リ>
    .byte $41    ; <ア>
    .byte $2D    ; <を>
    .byte $5F    ; <マ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte $0C    ; <し>
    .byte con_катсцена_новая_строка
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $A3    ; <げ>
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $1A    ; <は>
    .byte $00
    .byte $84    ; <D>
    .byte $86    ; <F>
    .byte $3F    ; <•>
    .byte $BA    ; <ジ>
    .byte $75    ; <ェ>
    .byte $54    ; <ト>
    .byte $7D    ; <ー>
    .byte $68    ; <リ>
    .byte $45    ; <オ>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $45    ; <オ>
    .byte $7D    ; <ー>
    .byte $C3    ; <バ>
    .byte $7D    ; <ー>
    .byte $67    ; <ラ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $16    ; <に>
    .byte $00
    .byte $07    ; <き>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $09    ; <け>
    .byte $2B    ; <ろ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BE89



off_B3D1_29_тренер_06:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $84    ; <D>
    .byte $86    ; <F>
    .byte $3F    ; <•>
    .byte $A6    ; <じ>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $1A    ; <は>
    .byte $00
    .byte $23    ; <も>
    .byte $11    ; <ち>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $19    ; <の>
    .byte $CD    ; <パ>
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $00
    .byte $C1    ; <デ>
    .byte $74    ; <ィ>
    .byte $5C    ; <フ>
    .byte $75    ; <ェ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $08    ; <く>
    .byte $2D    ; <を>
    .byte $23    ; <も>
    .byte $11    ; <ち>
    .byte con_катсцена_новая_строка
    .byte $86    ; <F>
    .byte $92    ; <W>
    .byte $3F    ; <•>
    .byte $0B    ; <さ>
    .byte $19    ; <の>
    .byte $14    ; <と>
    .byte $00
    .byte $4A    ; <コ>
    .byte $6E    ; <ン>
    .byte $C4    ; <ビ>
    .byte $CF    ; <プ>
    .byte $6A    ; <レ>
    .byte $42    ; <イ>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $06    ; <か>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte $CD    ; <パ>
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $16    ; <に>
    .byte $00
    .byte $1F    ; <ま>
    .byte $09    ; <け>
    .byte $29    ; <る>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEA3



off_B41F_2A_тренер_07:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $AF    ; <ば>
    .byte $15    ; <な>
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $19    ; <の>
    .byte $00
    .byte $4D    ; <ス>
    .byte $46    ; <カ>
    .byte $42    ; <イ>
    .byte $67    ; <ラ>
    .byte $C5    ; <ブ>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $C1    ; <デ>
    .byte $74    ; <ィ>
    .byte $5C    ; <フ>
    .byte $75    ; <ェ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $16    ; <に>
    .byte $23    ; <も>
    .byte $00
    .byte $1F    ; <ま>
    .byte $2C    ; <わ>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $86    ; <F>
    .byte $92    ; <W>
    .byte $3F    ; <•>
    .byte $8C    ; <M>
    .byte $86    ; <F>
    .byte $A0    ; <が>
    .byte $00
    .byte $1C    ; <ふ>
    .byte $10    ; <た>
    .byte $28    ; <り>
    .byte $2D    ; <を>
    .byte $5F    ; <マ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte $0C    ; <し>
    .byte con_катсцена_новая_строка
    .byte $84    ; <D>
    .byte $86    ; <F>
    .byte $1A    ; <は>
    .byte $00
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $22    ; <め>
    .byte $2B    ; <ろ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEA3



off_B46B_2B_тренер_08:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $44    ; <エ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $A4    ; <ご>
    .byte $2B    ; <ろ>
    .byte $0C    ; <し>
    .byte $19    ; <の>
    .byte $00
    .byte $84    ; <D>
    .byte $86    ; <F>
    .byte $3F    ; <•>
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $87    ; <G>
    .byte $8B    ; <K>
    .byte $3F    ; <•>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $16    ; <に>
    .byte $0C    ; <し>
    .byte $1A    ; <は>
    .byte $00
    .byte $1F    ; <ま>
    .byte $23    ; <も>
    .byte $28    ; <り>
    .byte $A0    ; <が>
    .byte $01    ; <あ>
    .byte $12    ; <つ>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $A3    ; <げ>
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte $4D    ; <ス>
    .byte $47    ; <キ>
    .byte $2D    ; <を>
    .byte $18    ; <ね>
    .byte $27    ; <ら>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte con_катсцена_новая_строка
    .byte $46    ; <カ>
    .byte $43    ; <ウ>
    .byte $6E    ; <ン>
    .byte $50    ; <タ>
    .byte $7D    ; <ー>
    .byte $41    ; <ア>
    .byte $50    ; <タ>
    .byte $6F    ; <ッ>
    .byte $48    ; <ク>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $09    ; <け>
    .byte $29    ; <る>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEA3



off_B4B4_2C_тренер_09:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $21    ; <む>
    .byte $0B    ; <さ>
    .byte $0C    ; <し>
    .byte $1A    ; <は>
    .byte $00
    .byte $02    ; <い>
    .byte $12    ; <つ>
    .byte $23    ; <も>
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $28    ; <り>
    .byte $00
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $1A    ; <は>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $20    ; <み>
    .byte $0D    ; <す>
    .byte $A1    ; <ぎ>
    .byte $2D    ; <を>
    .byte $02    ; <い>
    .byte $2A    ; <れ>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $29    ; <る>
    .byte $AA    ; <だ>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $0D    ; <す>
    .byte $A1    ; <ぎ>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $00
    .byte $21    ; <む>
    .byte $0B    ; <さ>
    .byte $0C    ; <し>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $08    ; <く>
    .byte $23    ; <も>
    .byte $00
    .byte $AA    ; <だ>
    .byte $2E    ; <ん>
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $01    ; <あ>
    .byte $A0    ; <が>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $20    ; <み>
    .byte $0D    ; <す>
    .byte $A1    ; <ぎ>
    .byte $19    ; <の>
    .byte $02    ; <い>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $1A    ; <は>
    .byte $2E    ; <ん>
    .byte $A0    ; <が>
    .byte $00
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $B1    ; <ぶ>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEA3



off_B512_2D_тренер_0A:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte $19    ; <の>
    .byte $1C    ; <ふ>
    .byte $27    ; <ら>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte $00
    .byte $09    ; <け>
    .byte $2E    ; <ん>
    .byte $A5    ; <ざ>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $1F    ; <ま>
    .byte $12    ; <つ>
    .byte $24    ; <や>
    .byte $1F    ; <ま>
    .byte $A0    ; <が>
    .byte $00
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $2D    ; <を>
    .byte $23    ; <も>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte con_катсцена_новая_строка
    .byte $42    ; <イ>
    .byte $7D    ; <ー>
    .byte $B6    ; <グ>
    .byte $69    ; <ル>
    .byte $4C    ; <シ>
    .byte $72    ; <ョ>
    .byte $6F    ; <ッ>
    .byte $54    ; <ト>
    .byte $7A    ; <、>
    .byte $15    ; <な>
    .byte $AA    ; <だ>
    .byte $2A    ; <れ>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $A3    ; <げ>
    .byte $07    ; <き>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $07    ; <き>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $09    ; <け>
    .byte $2B    ; <ろ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEA3



off_B556_2E_тренер_0B:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $50    ; <タ>
    .byte $42    ; <イ>
    .byte $B4    ; <ガ>
    .byte $7D    ; <ー>
    .byte $4C    ; <シ>
    .byte $72    ; <ョ>
    .byte $6F    ; <ッ>
    .byte $54    ; <ト>
    .byte $1A    ; <は>
    .byte $00
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $26    ; <よ>
    .byte $28    ; <り>
    .byte $0B    ; <さ>
    .byte $27    ; <ら>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $CD    ; <パ>
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $41    ; <ア>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $4A    ; <コ>
    .byte $6E    ; <ン>
    .byte $54    ; <ト>
    .byte $6B    ; <ロ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $50    ; <タ>
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $19    ; <の>
    .byte $00
    .byte $0B    ; <さ>
    .byte $2C    ; <わ>
    .byte $AA    ; <だ>
    .byte $2D    ; <を>
    .byte $5F    ; <マ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte $0C    ; <し>
    .byte con_катсцена_новая_строка
    .byte $1B    ; <ひ>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $A0    ; <が>
    .byte $16    ; <に>
    .byte $00
    .byte $CD    ; <パ>
    .byte $4D    ; <ス>
    .byte $2D    ; <を>
    .byte $14    ; <と>
    .byte $05    ; <お>
    .byte $0D    ; <す>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $87    ; <G>
    .byte $8B    ; <K>
    .byte $1A    ; <は>
    .byte $00
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $0C    ; <し>
    .byte $1F    ; <ま>
    .byte $AC    ; <づ>
    .byte $AA    ; <だ>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte con_катсцена_новая_строка
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $1A    ; <は>
    .byte $00
    .byte $07    ; <き>
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $A9    ; <ぞ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $00
    .byte $0E    ; <せ>
    .byte $2F    ; <っ>
    .byte $07    ; <き>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte con_катсцена_новая_строка
    .byte $16    ; <に>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $7A    ; <、>
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $16    ; <に>
    .byte $00
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $2D    ; <を>
    .byte $01    ; <あ>
    .byte $12    ; <つ>
    .byte $22    ; <め>
    .byte $2B    ; <ろ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEA3



off_B5E1_2F_тренер_0C:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $86    ; <F>
    .byte $92    ; <W>
    .byte $3F    ; <•>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $CE    ; <ピ>
    .byte $45    ; <オ>
    .byte $6E    ; <ン>
    .byte $1A    ; <は>
    .byte $00
    .byte $6B    ; <ロ>
    .byte $7D    ; <ー>
    .byte $5F    ; <マ>
    .byte $19    ; <の>
    .byte $50    ; <タ>
    .byte $46    ; <カ>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $02    ; <い>
    .byte $20    ; <み>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte $23    ; <も>
    .byte $11    ; <ち>
    .byte $00
    .byte $4D    ; <ス>
    .byte $CE    ; <ピ>
    .byte $7D    ; <ー>
    .byte $C2    ; <ド>
    .byte $3F    ; <•>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $08    ; <く>
    .byte con_катсцена_новая_строка
    .byte $14    ; <と>
    .byte $23    ; <も>
    .byte $16    ; <に>
    .byte $00
    .byte $A7    ; <ず>
    .byte $AF    ; <ば>
    .byte $17    ; <ぬ>
    .byte $09    ; <け>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BE89



off_B61E_30_тренер_0D:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $52    ; <ツ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $19    ; <の>
    .byte $00
    .byte $86    ; <F>
    .byte $92    ; <W>
    .byte $3F    ; <•>
    .byte $C4    ; <ビ>
    .byte $48    ; <ク>
    .byte $54    ; <ト>
    .byte $68    ; <リ>
    .byte $7D    ; <ー>
    .byte $59    ; <ノ>
    .byte $14    ; <と>
    .byte con_катсцена_новая_строка
    .byte $23    ; <も>
    .byte $14    ; <と>
    .byte $B6    ; <グ>
    .byte $6A    ; <レ>
    .byte $60    ; <ミ>
    .byte $45    ; <オ>
    .byte $19    ; <の>
    .byte $00
    .byte $BE    ; <ダ>
    .byte $3F    ; <•>
    .byte $4C    ; <シ>
    .byte $69    ; <ル>
    .byte $C3    ; <バ>
    .byte $19    ; <の>
    .byte $46    ; <カ>
    .byte $43    ; <ウ>
    .byte $6E    ; <ン>
    .byte $50    ; <タ>
    .byte $7D    ; <ー>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $4D    ; <ス>
    .byte $CE    ; <ピ>
    .byte $7D    ; <ー>
    .byte $C2    ; <ド>
    .byte $A0    ; <が>
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte $00
    .byte $1F    ; <ま>
    .byte $23    ; <も>
    .byte $28    ; <り>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $22    ; <め>
    .byte $2B    ; <ろ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BE89



off_B661_31_тренер_0E:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $56    ; <ニ>
    .byte $4C    ; <シ>
    .byte $C2    ; <ド>
    .byte $42    ; <イ>
    .byte $52    ; <ツ>
    .byte $19    ; <の>
    .byte $0C    ; <し>
    .byte $A4    ; <ご>
    .byte $14    ; <と>
    .byte $0C    ; <し>
    .byte $00
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $52    ; <ツ>
    .byte $14    ; <と>
    .byte con_катсцена_новая_строка
    .byte $8C    ; <M>
    .byte $86    ; <F>
    .byte $3F    ; <•>
    .byte $62    ; <メ>
    .byte $6F    ; <ッ>
    .byte $52    ; <ツ>
    .byte $73    ; <ヮ>
    .byte $A0    ; <が>
    .byte $00
    .byte $11    ; <ち>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $AF    ; <ば>
    .byte $2E    ; <ん>
    .byte $2D    ; <を>
    .byte $05    ; <お>
    .byte $0B    ; <さ>
    .byte $04    ; <え>
    .byte con_катсцена_новая_строка
    .byte $86    ; <F>
    .byte $92    ; <W>
    .byte $3F    ; <•>
    .byte $46    ; <カ>
    .byte $D0    ; <ペ>
    .byte $6B    ; <ロ>
    .byte $5F    ; <マ>
    .byte $6E    ; <ン>
    .byte $19    ; <の>
    .byte $00
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $C2    ; <ド>
    .byte $6C    ; <ワ>
    .byte $42    ; <イ>
    .byte $6E    ; <ン>
    .byte $BE    ; <ダ>
    .byte $7D    ; <ー>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $2D    ; <を>
    .byte $03    ; <う>
    .byte $AF    ; <ば>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $87    ; <G>
    .byte $8B    ; <K>
    .byte $3F    ; <•>
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $AF    ; <ば>
    .byte $24    ; <や>
    .byte $0C    ; <し>
    .byte $1A    ; <は>
    .byte $00
    .byte $D0    ; <ペ>
    .byte $55    ; <ナ>
    .byte $69    ; <ル>
    .byte $53    ; <テ>
    .byte $74    ; <ィ>
    .byte $44    ; <エ>
    .byte $68    ; <リ>
    .byte $41    ; <ア>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $0F    ; <そ>
    .byte $14    ; <と>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $00
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $2D    ; <を>
    .byte $25    ; <ゆ>
    .byte $29    ; <る>
    .byte $0B    ; <さ>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $51    ; <チ>
    .byte $70    ; <ャ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $2D    ; <を>
    .byte $16    ; <に>
    .byte $A0    ; <が>
    .byte $0D    ; <す>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BE89



off_B6DF_32_тренер_0F:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1A    ; <は>
    .byte $00
    .byte $0D    ; <す>
    .byte $B2    ; <べ>
    .byte $13    ; <て>
    .byte $16    ; <に>
    .byte $05    ; <お>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte con_катсцена_новая_строка
    .byte $C3    ; <バ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $19    ; <の>
    .byte $14    ; <と>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $16    ; <に>
    .byte $14    ; <と>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $00
    .byte $1C    ; <ふ>
    .byte $0F    ; <そ>
    .byte $08    ; <く>
    .byte $1A    ; <は>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $23    ; <も>
    .byte $02    ; <い>
    .byte $07    ; <き>
    .byte $28    ; <り>
    .byte $00
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BE89



off_B720_33_тренер_10:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $1A    ; <は>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $AD    ; <で>
    .byte $1B    ; <ひ>
    .byte $27    ; <ら>
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $00
    .byte $AD    ; <で>
    .byte $29    ; <る>
    .byte $10    ; <た>
    .byte $22    ; <め>
    .byte $19    ; <の>
    .byte $26    ; <よ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $1F    ; <ま>
    .byte $09    ; <け>
    .byte $29    ; <る>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $1A    ; <は>
    .byte $00
    .byte $AD    ; <で>
    .byte $07    ; <き>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $A9    ; <ぞ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $06    ; <か>
    .byte $08    ; <く>
    .byte $A6    ; <じ>
    .byte $00
    .byte $A6    ; <じ>
    .byte $B1    ; <ぶ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $D1    ; <ポ>
    .byte $BA    ; <ジ>
    .byte $4C    ; <シ>
    .byte $72    ; <ョ>
    .byte $6E    ; <ン>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $0C    ; <し>
    .byte $2F    ; <っ>
    .byte $06    ; <か>
    .byte $28    ; <り>
    .byte $03    ; <う>
    .byte $09    ; <け>
    .byte $23    ; <も>
    .byte $11    ; <ち>
    .byte $00
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $CF    ; <プ>
    .byte $6A    ; <レ>
    .byte $42    ; <イ>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $12    ; <つ>
    .byte $14    ; <と>
    .byte $22    ; <め>
    .byte $2B    ; <ろ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEC1



off_B785_34_тренер_11:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $37    ; <4>
    .byte $33    ; <0>
    .byte $33    ; <0>
    .byte $33    ; <0>
    .byte $18    ; <ね>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $2A    ; <れ>
    .byte $07    ; <き>
    .byte $0C    ; <し>
    .byte $A0    ; <が>
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte $00
    .byte $08    ; <く>
    .byte $16    ; <に>
    .byte $AA    ; <だ>
    .byte con_катсцена_новая_строка
    .byte $AE    ; <ど>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $A0    ; <が>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $23    ; <も>
    .byte $00
    .byte $1C    ; <ふ>
    .byte $0C    ; <し>
    .byte $A1    ; <ぎ>
    .byte $AD    ; <で>
    .byte $1A    ; <は>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte $03    ; <う>
    .byte $A4    ; <ご>
    .byte $07    ; <き>
    .byte $16    ; <に>
    .byte $00
    .byte $07    ; <き>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $09    ; <け>
    .byte $2B    ; <ろ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEC1



off_B7C3_35_тренер_12:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $42    ; <イ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $1A    ; <は>
    .byte $00
    .byte $1A    ; <は>
    .byte $A3    ; <げ>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $B0    ; <び>
    .byte $AD    ; <で>
    .byte $00
    .byte $1F    ; <ま>
    .byte $23    ; <も>
    .byte $28    ; <り>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $22    ; <め>
    .byte $29    ; <る>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $00
    .byte $1A    ; <は>
    .byte $2E    ; <ん>
    .byte $0F    ; <そ>
    .byte $08    ; <く>
    .byte $06    ; <か>
    .byte $08    ; <く>
    .byte $A4    ; <ご>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $14    ; <と>
    .byte $22    ; <め>
    .byte $16    ; <に>
    .byte $08    ; <く>
    .byte $29    ; <る>
    .byte $00
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $CF    ; <プ>
    .byte $6A    ; <レ>
    .byte $42    ; <イ>
    .byte $16    ; <に>
    .byte $07    ; <き>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $09    ; <け>
    .byte $2B    ; <ろ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEC1



off_B806_36_тренер_13:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $19    ; <の>
    .byte $4D    ; <ス>
    .byte $CE    ; <ピ>
    .byte $7D    ; <ー>
    .byte $C2    ; <ド>
    .byte $A0    ; <が>
    .byte $00
    .byte $0D    ; <す>
    .byte $AF    ; <ば>
    .byte $24    ; <や>
    .byte $02    ; <い>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $19    ; <の>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $08    ; <く>
    .byte $02    ; <い>
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $2D    ; <を>
    .byte $18    ; <ね>
    .byte $27    ; <ら>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $C7    ; <ボ>
    .byte $6A    ; <レ>
    .byte $7D    ; <ー>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $2D    ; <を>
    .byte $00
    .byte $26    ; <よ>
    .byte $08    ; <く>
    .byte $03    ; <う>
    .byte $11    ; <ち>
    .byte $0A    ; <こ>
    .byte $21    ; <む>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $22    ; <め>
    .byte $2B    ; <ろ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEC1



off_B853_37_тренер_14:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $A0    ; <が>
    .byte $10    ; <た>
    .byte $4B    ; <サ>
    .byte $6F    ; <ッ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $19    ; <の>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $19    ; <の>
    .byte $5D    ; <ヘ>
    .byte $C1    ; <デ>
    .byte $74    ; <ィ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $28    ; <り>
    .byte con_катсцена_новая_строка
    .byte $02    ; <い>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $08    ; <く>
    .byte $A0    ; <が>
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte $00
    .byte $1F    ; <ま>
    .byte $10    ; <た>
    .byte $00
    .byte $87    ; <G>
    .byte $8B    ; <K>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $00
    .byte $08    ; <く>
    .byte $0E    ; <せ>
    .byte $23    ; <も>
    .byte $19    ; <の>
    .byte $27    ; <ら>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEC1



off_B89C_38_тренер_15:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $68    ; <リ>
    .byte $3F    ; <•>
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $19    ; <の>
    .byte $00
    .byte $1A    ; <は>
    .byte $15    ; <な>
    .byte $0C    ; <し>
    .byte $AD    ; <で>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $86    ; <F>
    .byte $92    ; <W>
    .byte $3F    ; <•>
    .byte $4C    ; <シ>
    .byte $70    ; <ャ>
    .byte $14    ; <と>
    .byte $00
    .byte $8C    ; <M>
    .byte $86    ; <F>
    .byte $3F    ; <•>
    .byte $47    ; <キ>
    .byte $61    ; <ム>
    .byte $19    ; <の>
    .byte $4A    ; <コ>
    .byte $6E    ; <ン>
    .byte $C4    ; <ビ>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $52    ; <ツ>
    .byte $42    ; <イ>
    .byte $6E    ; <ン>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $06    ; <か>
    .byte $03    ; <う>
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $07    ; <き>
    .byte $11    ; <ち>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $15    ; <な>
    .byte $00
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $1E    ; <ほ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $1C    ; <ふ>
    .byte $10    ; <た>
    .byte $28    ; <り>
    .byte $19    ; <の>
    .byte $10    ; <た>
    .byte $22    ; <め>
    .byte $16    ; <に>
    .byte $23    ; <も>
    .byte $00
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte con_катсцена_новая_строка
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $1B    ; <ひ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $09    ; <け>
    .byte $2E    ; <ん>
    .byte $2D    ; <を>
    .byte $00
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $14    ; <と>
    .byte $29    ; <る>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $10    ; <た>
    .byte $19    ; <の>
    .byte $21    ; <む>
    .byte $A9    ; <ぞ>
    .byte $00
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $79    ; <!>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEC1



off_B913_39_тренер_16:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $68    ; <リ>
    .byte $7D    ; <ー>
    .byte $B6    ; <グ>
    .byte $23    ; <も>
    .byte $00
    .byte $1F    ; <ま>
    .byte $A6    ; <じ>
    .byte $06    ; <か>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $A0    ; <が>
    .byte $00
    .byte $0C    ; <し>
    .byte $AF    ; <ば>
    .byte $27    ; <ら>
    .byte $08    ; <く>
    .byte $19    ; <の>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte con_катсцена_новая_строка
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1D    ; <へ>
    .byte $00
    .byte $23    ; <も>
    .byte $AE    ; <ど>
    .byte $29    ; <る>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $4D    ; <ス>
    .byte $4A    ; <コ>
    .byte $41    ; <ア>
    .byte $62    ; <メ>
    .byte $63    ; <モ>
    .byte $19    ; <の>
    .byte $07    ; <き>
    .byte $2B    ; <ろ>
    .byte $08    ; <く>
    .byte $1A    ; <は>
    .byte $00
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $A5    ; <ざ>
    .byte $07    ; <き>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $0D    ; <す>
    .byte $0D    ; <す>
    .byte $2E    ; <ん>
    .byte $AD    ; <で>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $07    ; <き>
    .byte $03    ; <う>
    .byte $09    ; <け>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $19    ; <の>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $16    ; <に>
    .byte $1F    ; <ま>
    .byte $06    ; <か>
    .byte $0E    ; <せ>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte $00
    .byte $02    ; <い>
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $60
    .byte $FB, $01, $1B
    .byte $E1
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $19    ; <の>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $02    ; <い>
    .byte $02    ; <い>
    .byte $19    ; <の>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $F3, $FF, $00, $0C
    .byte con_катсцена_мячик
    .byte $FB, $01, $4B
    .byte $F7
    .byte $E1
    .byte $40    ; <「>
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $A0    ; <が>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $08    ; <く>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte $00
    .byte $05    ; <お>
    .byte $AE    ; <ど>
    .byte $2B    ; <ろ>
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $AE    ; <ど>
    .byte $00
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $A0    ; <が>
    .byte $AA    ; <だ>
    .byte $2A    ; <れ>
    .byte $AA    ; <だ>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $14    ; <と>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $1A    ; <は>
    .byte $00
    .byte $1F    ; <ま>
    .byte $09    ; <け>
    .byte $27    ; <ら>
    .byte $2A    ; <れ>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $FB, $01, $47
    .byte $E1
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $1F    ; <ま>
    .byte $1A    ; <は>
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
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $00
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $05    ; <お>
    .byte $15    ; <な>
    .byte $A6    ; <じ>
    .byte $00
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $A0    ; <が>
    .byte $04    ; <え>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte $A7    ; <ず>
    .byte $AA    ; <だ>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_прыжок
    .word off_BEBC



off_BA16_3A_тренер_17:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte $FB, $01, $57
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $D1    ; <ポ>
    .byte $7D    ; <ー>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $C2    ; <ド>
    .byte $7A    ; <、>
    .byte $42    ; <イ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $C2    ; <ド>
    .byte $7A    ; <、>
    .byte $4F    ; <ソ>
    .byte $C4    ; <ビ>
    .byte $44    ; <エ>
    .byte $54    ; <ト>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $06    ; <か>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $FB, $01, $32
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
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
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $24    ; <や>
    .byte $27    ; <ら>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $54    ; <ト>
    .byte $7D    ; <ー>
    .byte $55    ; <ナ>
    .byte $62    ; <メ>
    .byte $6E    ; <ン>
    .byte $54    ; <ト>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $0E    ; <せ>
    .byte $13    ; <て>
    .byte $23    ; <も>
    .byte $27    ; <ら>
    .byte $04    ; <え>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $FB, $01, $42
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $23    ; <も>
    .byte $00
    .byte $0C    ; <し>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $AA    ; <だ>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $B6    ; <グ>
    .byte $69    ; <ル>
    .byte $7D    ; <ー>
    .byte $CF    ; <プ>
    .byte $1A    ; <は>
    .byte $00
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $AF    ; <ば>
    .byte $06    ; <か>
    .byte $28    ; <り>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $1B    ; <ひ>
    .byte $07    ; <き>
    .byte $2C    ; <わ>
    .byte $09    ; <け>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $1A    ; <は>
    .byte $00
    .byte $54    ; <ト>
    .byte $7D    ; <ー>
    .byte $55    ; <ナ>
    .byte $62    ; <メ>
    .byte $6E    ; <ン>
    .byte $54    ; <ト>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $02    ; <い>
    .byte $09    ; <け>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $A9    ; <ぞ>
    .byte $7A    ; <、>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $23    ; <も>
    .byte $00
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_прыжок
    .word off_BEBC



off_BAD3_3B_тренер_18:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $84    ; <D>
    .byte $86    ; <F>
    .byte $3F    ; <•>
    .byte $6B    ; <ロ>
    .byte $C5    ; <ブ>
    .byte $4F    ; <ソ>
    .byte $6E    ; <ン>
    .byte $1A    ; <は>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $2F    ; <っ>
    .byte $0B    ; <さ>
    .byte $12    ; <つ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $54    ; <ト>
    .byte $AD    ; <で>
    .byte $07    ; <き>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte $00
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $19    ; <の>
    .byte $6B    ; <ロ>
    .byte $C4    ; <ビ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte con_катсцена_новая_строка
    .byte $01    ; <あ>
    .byte $27    ; <ら>
    .byte $0F    ; <そ>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $84    ; <D>
    .byte $86    ; <F>
    .byte $A0    ; <が>
    .byte $0F    ; <そ>
    .byte $15    ; <な>
    .byte $04    ; <え>
    .byte $2B    ; <ろ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BB12_3C_тренер_19:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $AF    ; <ば>
    .byte $12    ; <つ>
    .byte $A2    ; <ぐ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $4D    ; <ス>
    .byte $50    ; <タ>
    .byte $60    ; <ミ>
    .byte $55    ; <ナ>
    .byte $14    ; <と>
    .byte $00
    .byte $11    ; <ち>
    .byte $20    ; <み>
    .byte $12    ; <つ>
    .byte $15    ; <な>
    .byte $CF    ; <プ>
    .byte $6A    ; <レ>
    .byte $42    ; <イ>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $6A    ; <レ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $19    ; <の>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $86    ; <F>
    .byte $92    ; <W>
    .byte $1A    ; <は>
    .byte $00
    .byte $4D    ; <ス>
    .byte $CE    ; <ピ>
    .byte $7D    ; <ー>
    .byte $C2    ; <ド>
    .byte $7A    ; <、>
    .byte $84    ; <D>
    .byte $86    ; <F>
    .byte $1A    ; <は>
    .byte $00
    .byte $18    ; <ね>
    .byte $AF    ; <ば>
    .byte $28    ; <り>
    .byte $A0    ; <が>
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $0C    ; <し>
    .byte $2E    ; <ん>
    .byte $11    ; <ち>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $16    ; <に>
    .byte $02    ; <い>
    .byte $09    ; <け>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BB5A_3D_тренер_1A:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $CD    ; <パ>
    .byte $4D    ; <ス>
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte $2D    ; <を>
    .byte $1A    ; <は>
    .byte $0C    ; <し>
    .byte $27    ; <ら>
    .byte $14    ; <と>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $00
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $A3    ; <げ>
    .byte $07    ; <き>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $2C    ; <わ>
    .byte $27    ; <ら>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $A0    ; <が>
    .byte $7A    ; <、>
    .byte $03    ; <う>
    .byte $2C    ; <わ>
    .byte $0B    ; <さ>
    .byte $AD    ; <で>
    .byte $1A    ; <は>
    .byte $00
    .byte $CE    ; <ピ>
    .byte $44    ; <エ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $01    ; <あ>
    .byte $27    ; <ら>
    .byte $10    ; <た>
    .byte $15    ; <な>
    .byte $00
    .byte $6C    ; <ワ>
    .byte $B9    ; <ザ>
    .byte $A0    ; <が>
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte $27    ; <ら>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $8C    ; <M>
    .byte $86    ; <F>
    .byte $1A    ; <は>
    .byte $00
    .byte $CE    ; <ピ>
    .byte $44    ; <エ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $2D    ; <を>
    .byte $5F    ; <マ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BBA7_3E_тренер_1B:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $8C    ; <M>
    .byte $86    ; <F>
    .byte $3F    ; <•>
    .byte $44    ; <エ>
    .byte $4D    ; <ス>
    .byte $CD    ; <パ>
    .byte $7D    ; <ー>
    .byte $56    ; <ニ>
    .byte $70    ; <ャ>
    .byte $2D    ; <を>
    .byte $62    ; <メ>
    .byte $42    ; <イ>
    .byte $6E    ; <ン>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $53    ; <テ>
    .byte $48    ; <ク>
    .byte $56    ; <ニ>
    .byte $6F    ; <ッ>
    .byte $48    ; <ク>
    .byte $19    ; <の>
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $AD    ; <で>
    .byte $1A    ; <は>
    .byte $00
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $A3    ; <げ>
    .byte $07    ; <き>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $09    ; <け>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $29    ; <る>
    .byte $A9    ; <ぞ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BBE5_3F_тренер_1C:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $87    ; <G>
    .byte $8B    ; <K>
    .byte $3F    ; <•>
    .byte $5D    ; <ヘ>
    .byte $69    ; <ル>
    .byte $55    ; <ナ>
    .byte $6E    ; <ン>
    .byte $C1    ; <デ>
    .byte $4D    ; <ス>
    .byte $1A    ; <は>
    .byte $00
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte con_катсцена_новая_строка
    .byte $AA    ; <だ>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $16    ; <に>
    .byte $00
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $2D    ; <を>
    .byte $23    ; <も>
    .byte $24    ; <や>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $2D    ; <を>
    .byte $03    ; <う>
    .byte $AF    ; <ば>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte $00
    .byte $21    ; <む>
    .byte $A7    ; <ず>
    .byte $06    ; <か>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BC2A_40_тренер_1D:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $83    ; <C>
    .byte $86    ; <F>
    .byte $3F    ; <•>
    .byte $42    ; <イ>
    .byte $4D    ; <ス>
    .byte $67    ; <ラ>
    .byte $4D    ; <ス>
    .byte $1A    ; <は>
    .byte $00
    .byte $0A    ; <こ>
    .byte $2E    ; <ん>
    .byte $4C    ; <シ>
    .byte $7D    ; <ー>
    .byte $BB    ; <ズ>
    .byte $6E    ; <ン>
    .byte con_катсцена_новая_строка
    .byte $14    ; <と>
    .byte $12    ; <つ>
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $01    ; <あ>
    .byte $27    ; <ら>
    .byte $2C    ; <わ>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $00
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $4B    ; <サ>
    .byte $6F    ; <ッ>
    .byte $46    ; <カ>
    .byte $7D    ; <ー>
    .byte $4E    ; <セ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $14    ; <と>
    .byte con_катсцена_новая_строка
    .byte $AF    ; <ば>
    .byte $12    ; <つ>
    .byte $A2    ; <ぐ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $53    ; <テ>
    .byte $48    ; <ク>
    .byte $56    ; <ニ>
    .byte $6F    ; <ッ>
    .byte $48    ; <ク>
    .byte $2D    ; <を>
    .byte $23    ; <も>
    .byte $12    ; <つ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $84    ; <D>
    .byte $86    ; <F>
    .byte $3F    ; <•>
    .byte $68    ; <リ>
    .byte $C5    ; <ブ>
    .byte $50    ; <タ>
    .byte $14    ; <と>
    .byte $14    ; <と>
    .byte $23    ; <も>
    .byte $16    ; <に>
    .byte $00
    .byte $66    ; <ヨ>
    .byte $7D    ; <ー>
    .byte $6B    ; <ロ>
    .byte $6F    ; <ッ>
    .byte $CD    ; <パ>
    .byte $AD    ; <で>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $55    ; <ナ>
    .byte $42    ; <イ>
    .byte $BE    ; <ダ>
    .byte $7D    ; <ー>
    .byte $14    ; <と>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $B0    ; <び>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $19    ; <の>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $11    ; <ち>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $02    ; <い>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BCA7_41_тренер_1E:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $1A    ; <は>
    .byte $00
    .byte $C1    ; <デ>
    .byte $74    ; <ィ>
    .byte $41    ; <ア>
    .byte $4D    ; <ス>
    .byte $19    ; <の>
    .byte $6C    ; <ワ>
    .byte $6E    ; <ン>
    .byte $5F    ; <マ>
    .byte $6E    ; <ン>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $0A    ; <こ>
    .byte $2E    ; <ん>
    .byte $AE    ; <ど>
    .byte $1A    ; <は>
    .byte $00
    .byte $CD    ; <パ>
    .byte $4D    ; <ス>
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $19    ; <の>
    .byte $1E    ; <ほ>
    .byte $06    ; <か>
    .byte $16    ; <に>
    .byte $00
    .byte $B4    ; <ガ>
    .byte $69    ; <ル>
    .byte $C3    ; <バ>
    .byte $6E    ; <ン>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $C3    ; <バ>
    .byte $C4    ; <ビ>
    .byte $6E    ; <ン>
    .byte $54    ; <ト>
    .byte $6E    ; <ン>
    .byte $7A    ; <、>
    .byte $4B    ; <サ>
    .byte $54    ; <ト>
    .byte $69    ; <ル>
    .byte $4D    ; <ス>
    .byte $53    ; <テ>
    .byte $B5    ; <ギ>
    .byte $A0    ; <が>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $A3    ; <げ>
    .byte $07    ; <き>
    .byte $16    ; <に>
    .byte $00
    .byte $07    ; <き>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $09    ; <け>
    .byte $2B    ; <ろ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BCF9_42_тренер_1F:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $56    ; <ニ>
    .byte $4C    ; <シ>
    .byte $C2    ; <ド>
    .byte $42    ; <イ>
    .byte $52    ; <ツ>
    .byte $19    ; <の>
    .byte $00
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $1E    ; <ほ>
    .byte $03    ; <う>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $AF    ; <ば>
    .byte $24    ; <や>
    .byte $0C    ; <し>
    .byte $A0    ; <が>
    .byte $00
    .byte $1A    ; <は>
    .byte $15    ; <な>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $FB, $01, $34
    .byte $F7
    .byte $F3, $C6
    .byte $E1
    .byte $40    ; <「>
    .byte $84    ; <D>
    .byte $86    ; <F>
    .byte $1A    ; <は>
    .byte $00
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $55    ; <ナ>
    .byte $42    ; <イ>
    .byte $BE    ; <ダ>
    .byte $7D    ; <ー>
    .byte $2D    ; <を>
    .byte $5F    ; <マ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte con_катсцена_новая_строка
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $AD    ; <で>
    .byte $00
    .byte $CD    ; <パ>
    .byte $4D    ; <ス>
    .byte $2D    ; <を>
    .byte $2C    ; <わ>
    .byte $10    ; <た>
    .byte $0D    ; <す>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $8C    ; <M>
    .byte $86    ; <F>
    .byte $1A    ; <は>
    .byte $00
    .byte $46    ; <カ>
    .byte $D0    ; <ペ>
    .byte $6B    ; <ロ>
    .byte $5F    ; <マ>
    .byte $6E    ; <ン>
    .byte $14    ; <と>
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $52    ; <ツ>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $03    ; <う>
    .byte $A4    ; <ご>
    .byte $07    ; <き>
    .byte $2D    ; <を>
    .byte $51    ; <チ>
    .byte $75    ; <ェ>
    .byte $6F    ; <ッ>
    .byte $48    ; <ク>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $A6    ; <じ>
    .byte $15    ; <な>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte $00
    .byte $0A    ; <こ>
    .byte $11    ; <ち>
    .byte $27    ; <ら>
    .byte $19    ; <の>
    .byte $D0    ; <ペ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $2D    ; <を>
    .byte $0D    ; <す>
    .byte $0D    ; <す>
    .byte $22    ; <め>
    .byte $29    ; <る>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $00
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $3F    ; <•>
    .byte $20    ; <み>
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte $4A    ; <コ>
    .byte $6E    ; <ン>
    .byte $C4    ; <ビ>
    .byte $AD    ; <で>
    .byte $00
    .byte $11    ; <ち>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $AF    ; <ば>
    .byte $2E    ; <ん>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $0E    ; <せ>
    .byte $02    ; <い>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7A    ; <、>
    .byte $02    ; <い>
    .byte $02    ; <い>
    .byte $15    ; <な>
    .byte $00
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $79    ; <!>
    .byte con_катсцена_мячик
    .byte $FB, $01, $42
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BDAD_43_тренер_20:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $19    ; <の>
    .byte $00
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $1E    ; <ほ>
    .byte $03    ; <う>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $A0    ; <が>
    .byte $00
    .byte $1A    ; <は>
    .byte $15    ; <な>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $FB, $01, $47
    .byte $F7
    .byte $F3, $00
    .byte $E1
    .byte $40    ; <「>
    .byte $1F    ; <ま>
    .byte $A7    ; <ず>
    .byte $00
    .byte $11    ; <ち>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $AF    ; <ば>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $00
    .byte $0C    ; <し>
    .byte $07    ; <き>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte con_катсцена_новая_строка
    .byte $4B    ; <サ>
    .byte $6E    ; <ン>
    .byte $50    ; <タ>
    .byte $5F    ; <マ>
    .byte $68    ; <リ>
    .byte $41    ; <ア>
    .byte $2D    ; <を>
    .byte $5F    ; <マ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte con_катсцена_новая_строка
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $7A    ; <、>
    .byte $B9    ; <ザ>
    .byte $B4    ; <ガ>
    .byte $6B    ; <ロ>
    .byte $7A    ; <、>
    .byte $58    ; <ネ>
    .byte $42    ; <イ>
    .byte $7A    ; <、>
    .byte $54    ; <ト>
    .byte $56    ; <ニ>
    .byte $7D    ; <ー>
    .byte $56    ; <ニ>
    .byte $72    ; <ョ>
    .byte $1D    ; <へ>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte $CD    ; <パ>
    .byte $4D    ; <ス>
    .byte $2D    ; <を>
    .byte $1C    ; <ふ>
    .byte $03    ; <う>
    .byte $A6    ; <じ>
    .byte $29    ; <る>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $E1
    .byte $40    ; <「>
    .byte $87    ; <G>
    .byte $8B    ; <K>
    .byte $3F    ; <•>
    .byte $B7    ; <ゲ>
    .byte $69    ; <ル>
    .byte $53    ; <テ>
    .byte $74    ; <ィ>
    .byte $4D    ; <ス>
    .byte $16    ; <に>
    .byte $00
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $07    ; <き>
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $7A    ; <、>
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte $07    ; <き>
    .byte $2A    ; <れ>
    .byte $0A    ; <こ>
    .byte $20    ; <み>
    .byte con_катсцена_новая_строка
    .byte $11    ; <ち>
    .byte $32    ; <ょ>
    .byte $08    ; <く>
    .byte $0E    ; <せ>
    .byte $12    ; <つ>
    .byte $00
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $0C    ; <し>
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $FB, $01, $4B
    .byte $E1
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $19    ; <の>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $2D    ; <を>
    .byte $00
    .byte $01    ; <あ>
    .byte $2C    ; <わ>
    .byte $0E    ; <せ>
    .byte $2A    ; <れ>
    .byte $AF    ; <ば>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $A7    ; <ず>
    .byte $00
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $2D    ; <を>
    .byte $03    ; <う>
    .byte $AF    ; <ば>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte $1A    ; <は>
    .byte $A7    ; <ず>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $A8    ; <ぜ>
    .byte $2E    ; <ん>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $08    ; <く>
    .byte $AD    ; <で>
    .byte $00
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte con_катсцена_мячик
    .byte $FB, $01, $42
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BE84_44_тренер_роберто:
    .byte con_катсцена_задний_фон, $5F
    .byte $FB, $01, $3B
off_BE89:
    .byte con_катсцена_вид_окна_текста
    .byte $03    ; <う>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $F0
    .byte $4C    ; <シ>
    .byte $22    ; <め>
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $0C    ; <し>
    .byte $00
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $07    ; <き>
    .byte $09    ; <け>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_прыжок
    .word off_BED6



off_BE9E_45_тренер_катагири:
    .byte con_катсцена_задний_фон, $5F
    .byte $FB, $01, $41
off_BEA3:
    .byte con_катсцена_вид_окна_текста
    .byte $03    ; <う>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $F0
    .byte $4C    ; <シ>
    .byte $22    ; <め>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $1A    ; <は>
    .byte $0C    ; <し>
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $0C    ; <し>
    .byte $00
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $07    ; <き>
    .byte $09    ; <け>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_прыжок
    .word off_BED6



off_BEBC_46_тренер_миками:
off_BEBC:
    .byte con_катсцена_задний_фон, $5F
    .byte $FB, $01, $42
off_BEC1:
    .byte con_катсцена_вид_окна_текста
    .byte $03    ; <う>
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $F0
    .byte $4C    ; <シ>
    .byte $22    ; <め>
    .byte $20    ; <み>
    .byte $06    ; <か>
    .byte $20    ; <み>
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $0C    ; <し>
    .byte $00
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $07    ; <き>
    .byte $09    ; <け>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
off_BED6:
    .byte $E8, $01
    .byte $F3, $00
    .byte con_катсцена_выход



off_BEDB_47_первый_перерыв_йоко:
    .byte $FB, $01, $2A
    .byte con_катсцена_прыжок
    .word off_BEFE



off_BEE1_48_перерыв_йоко:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_задний_фон, $61
    .byte $FB, $01, $2A
    .byte con_катсцена_прыжок
    .word off_BF31



off_BEEB_49_первый_перерыв_санае:
    .byte $FB, $01, $26
    .byte con_катсцена_прыжок
    .word off_BEFE



off_BEF1_4A_перерыв_санае:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_задний_фон, $61
    .byte $FB, $01, $26
    .byte con_катсцена_прыжок
    .word off_BF31



off_BEFB_4B_первый_перерыв_ишизаки:
    .byte $FB, $01, $44
off_BEFE:
    .byte $E8, $01
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_задний_фон, $61
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte con_катсцена_закрыть_рот
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $00
    .byte $05    ; <お>
    .byte $12    ; <つ>
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $0B    ; <さ>
    .byte $1F    ; <ま>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte $DA
    .byte $00
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $01    ; <あ>
    .byte $14    ; <と>
    .byte $23    ; <も>
    .byte $00
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DA
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_прыжок
    .word off_BF31



off_BF2A_4C_перерыв_ишизаки:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_задний_фон, $61
    .byte $FB, $01, $24
off_BF31:
    .byte $E8, $01
    .byte con_катсцена_скорость_текста
    .byte $00
    .byte $40    ; <「>
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $00
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $C1    ; <デ>
    .byte $7D    ; <ー>
    .byte $50    ; <タ>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $00
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $F3, $00
    .byte $FF



off_BF54_4D_пароль_йоко:
    .byte $FB, $01, $2B
    .byte con_катсцена_прыжок
    .word off_BF63



off_BF5A_4F_пароль_санае:
    .byte $FB, $01, $27
    .byte con_катсцена_прыжок
    .word off_BF63



off_BF60_51_пароль_ишизаки:
    .byte $FB, $01, $44
off_BF63:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_задний_фон, $5F
    .byte $F3, $00
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte con_катсцена_закрыть_рот
    .byte $40    ; <「>
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $00
    .byte $4D    ; <ス>
    .byte $4A    ; <コ>
    .byte $41    ; <ア>
    .byte $62    ; <メ>
    .byte $63    ; <モ>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DA
    .byte con_катсцена_затереть_текст
    .byte $FF



off_BF7D_4E_удачи_после_пароля:
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $01    ; <あ>
    .byte $14    ; <と>
    .byte $23    ; <も>
    .byte $00
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DA
    .byte $FF



off_BF90_53_новый_уровень_йоко:
    .byte $FB, $01, $2B
    .byte con_катсцена_прыжок
    .word off_BF9F



off_BF96_54_новый_уровень_санае:
    .byte $FB, $01, $27
    .byte con_катсцена_прыжок
    .word off_BF9F



off_BF9C_55_новый_уровень_ишизаки:
    .byte $FB, $01, $44
off_BF9F:
    .byte $E8, $01
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte con_катсцена_задний_фон, $5F
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $6F
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte con_катсцена_закрыть_рот
    .byte $40    ; <「>
    .byte $6A    ; <レ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $41    ; <ア>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $AD    ; <で>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte $DA
    .byte con_катсцена_затереть_текст
    .byte $FF



off_BFBA_56_сан_паулу_перед_матчем:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte $FA, $0F
    .byte $FB, $01, $0C
    .byte con_катсцена_прыжок
    .word off_BFD5



off_BFC4_57_нанкацу_перед_матчем:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte $FA, $0E
    .byte $FB, $01, $0F
    .byte con_катсцена_прыжок
    .word off_BFD5



off_BFCE_58_япония_перед_матчем:
    .byte con_катсцена_вид_окна_текста
    .byte $02    ; <い>
    .byte $FA, $0D
    .byte $FB, $01, $0E
off_BFD5:
    .byte con_катсцена_номер_звука, $31
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $0C    ; <し>
    .byte $00
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $08    ; <く>
    .byte $A9    ; <ぞ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DA
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $DA
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход
