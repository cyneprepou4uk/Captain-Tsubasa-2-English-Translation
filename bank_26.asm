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
	.byte con_катсцена_задержка, $F0
	.byte $EA
	.byte con_катсцена_номер_звука, $58
	.byte con_катсцена_задержка, $3C
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
	.byte con_катсцена_номер_звука, $68
	.byte con_смещение_текста, $09
	.byte con_катсцена_скорость_текста, $02
	.text "So fast! "
	.byte con_катсцена_задержка, $28
	.byte con_катсцена_скорость_текста, $04
	.text "Closing"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $09
	.text "down on Brazil's goal"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $09
	.text "is Japan's captain,"
	.byte con_катсцена_задержка, $0A
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $09
	.text "Ozora Tsubasa!"
	.byte con_катсцена_задержка, $3C
	
	
	
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
	.byte con_катсцена_задержка, $28
	.byte con_смещение_текста, $0A
	.byte con_катсцена_скорость_текста, $01
	.text "Ozora Tsubasa"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $06
	.text "Sao Paulo FC, Brazil"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $0B
	.text "Midfielder"
	.byte con_катсцена_задержка, $78
	
	
	
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
	.byte con_катсцена_номер_звука, $28
	.byte con_катсцена_задержка, $14
	.byte con_катсцена_номер_звука, $28
	.byte con_катсцена_задержка, $14
	.byte con_катсцена_номер_звука, $28
	.byte con_катсцена_задержка, $14
	.byte con_катсцена_номер_звука, $0E
	.byte con_катсцена_вид_окна_текста, $01
	.byte $EC
	.byte $05
	.byte con_катсцена_скорость_текста, $04
	.byte con_смещение_текста, $09
	.text "Hyuga"
	.byte con_катсцена_номер_звука, $6B
	.text " throws down"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $09
	.text "with his powerful"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $09
	.text "Tiger Tackle!!"
	.byte con_катсцена_задержка, $14
	.text " He's"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $09
	.text "like a wild beast!"
	.byte con_катсцена_задержка, $3C
	.byte con_катсцена_номер_звука, $02
	
	
	
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
	.byte con_катсцена_задержка, $28
	.byte con_катсцена_скорость_текста, $01
	.byte con_смещение_текста, $0A
	.text "Hyuga Kojiro"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $07
	.text "Toho Academy, Japan"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $0A
	.text "Center foward"
	.byte con_катсцена_задержка, $78
	
	
	
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
	.byte con_катсцена_номер_звука, $0E
	.byte con_катсцена_скорость_текста, $04
	.byte con_смещение_текста, $09
	.text "Wow, "
	.byte con_катсцена_задержка, $0A
	.text "look"
	.byte con_катсцена_номер_звука, $09
	.text " at that"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $09
	.text "Golden Combo!"
	.byte con_катсцена_задержка, $14
	.byte con_катсцена_номер_звука, $30
	.text " Their"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $09
	.text "super Twin Shot!"
	.byte con_катсцена_задержка, $14
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $09
	.text "Perfect coordination!"
	.byte con_катсцена_задержка, $3C
	
	
	
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
	.byte con_катсцена_задержка, $28
	.byte con_катсцена_скорость_текста, $01
	.byte con_смещение_текста, $0A
	.text "Misaki Tarou"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $06
	.text "Nankatsu High, Japan"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $0B
	.text "Midfielder"
	.byte con_катсцена_задержка, $78
	
	
	
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
	.byte con_катсцена_номер_звука, $07
	.byte con_катсцена_скорость_текста, $04
	.byte con_смещение_текста, $09
	.text "A one-hand"
	.byte con_катсцена_номер_звука, $12
	.text "ed save!"
	.byte con_катсцена_задержка, $14
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $09
	.text "As expected from"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $09
	.text "Wakabyashi, "
	.byte con_катсцена_задержка, $0A
	.text "Japan's"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $09
	.text "own Guardian Deity!"
	.byte con_катсцена_задержка, $3C
	
	
	
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
	.byte con_катсцена_задержка, $28
	.byte con_катсцена_скорость_текста, $01
	.byte con_смещение_текста, $08
	.text "Wakabayashi Genzo"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $06
	.text "Hamburger SV, Germany"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $0B
	.text "Goalkeeper"
	.byte con_катсцена_задержка, $78
	.byte $EA
	.byte con_катсцена_затереть_текст
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FB
	.byte $01
	.byte $0D
	.byte con_катсцена_скорость_текста, $00
	.byte con_смещение_текста, $03
	.text "Facing down our strongest"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $03
	.text "foe, Brazil, our dream and"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $02
	.text "goal: to be #1 in the world."
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $05
	.text "We stand as one team,"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $03
	.text "awaiting the final battle."
	.byte $E9
	.byte con_катсцена_задержка, $F0
	.byte con_катсцена_задержка, $F0
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
	.byte con_катсцена_задержка, $28
	.byte $E9
	.byte con_катсцена_номер_звука, $55
	.byte con_катсцена_скорость_текста, $03
	.byte con_смещение_текста, $09
	.text "Nothing beats"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $08
	.text "Ozora Tsubasa's"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $08
	.text "love of football."
	.byte con_катсцена_мячик
	
	
	
	.byte con_смещение_текста, $07
	.text "His ultimate dream"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $07
	.text "is to win the U-20"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $06
	.text "World Cup with Japan."
	.byte con_катсцена_мячик
	
	
	
	.byte $EA
	.byte $F9
	.byte $5D
	.byte $FB
	.byte $01
	.byte $17
	.byte $E9
	.byte con_смещение_текста, $04
	.text "They conquered the world!"
	.byte con_катсцена_задержка, $3C
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $08
	.text "Japan made it to"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $08
	.text "the finals of the"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $09
	.text "U-16 World Cup,"
	.byte con_катсцена_мячик
	
	
	
	.byte con_смещение_текста, $04
	.text "where they hammered West"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $05
	.text "Germany. "
	.byte con_катсцена_задержка, $14
	.text "At last, "
	.byte con_катсцена_задержка, $0A
	.text "they"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $06
	.text "were world champions!"
	.byte con_катсцена_мячик
	
	
	
	.byte $EA
	.byte $F9
	.byte $04
	.byte $FB
	.byte $01
	.byte $50
	.byte $E9
	.byte con_смещение_текста, $03
	.text "After this victory oversea,"
	.byte con_катсцена_задержка, $0A
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $04
	.text "Tsubasa was reunited with"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $04
	.text "his former coach Roberto."
	.byte con_катсцена_мячик
	
	.byte con_смещение_текста, $09
	.text "Finally he had"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $07
	.text "realized his dream"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $06
	.text "of playing in Brazil!"
	.byte con_катсцена_мячик
	
	.byte $EA
	.byte $F9
	.byte $5E
	.byte $FB
	.byte $01
	.byte $51
	.byte $E9
	.byte con_смещение_текста, $06
	.text "Three years later..."
	.byte con_катсцена_задержка, $3C
	.byte $F3
	.byte $FF
	.byte $23
	.byte $41
	.byte $F6
	.byte $01
	.byte $F3
	.byte $FF
	.byte $24
	.byte $42
	.byte $F6
	.byte $06
	.byte $F3
	.byte $FF
	.byte $00
	.byte $17
	.byte con_катсцена_задержка, $3C
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $06
	.text "a new journey begins"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $04
	.text "for Tsubasa in Sao Paulo!"
; скрытая катсцена
	.byte $F4
	.byte $06
	.byte $05
	.byte $EA
	.byte con_катсцена_номер_звука, $31
	.byte con_катсцена_задержка, $78
	.byte con_катсцена_номер_звука, $01
	.byte con_катсцена_задержка, $78
	.byte con_катсцена_номер_звука, $51
	.byte $F9
	.byte $2D
	.byte $FB
	.byte $01
	.byte $0B
	.byte $E9
	.byte $F4, $05
	.byte con_смещение_текста, $06
	.text "Brazil, Sao Paulo FC"
	.byte $F4, $04
	.byte con_катсцена_задержка, $F0
	.byte con_катсцена_задержка, $78
	.byte $F4, $05
	.byte con_катсцена_затереть_текст
	.byte $F4, $04
	.byte con_катсцена_скорость_текста, $04
	.byte con_катсцена_задержка, $28
	.byte con_смещение_текста, $04
	.byte con_катсцена_задержка, $F0
	.byte con_катсцена_тайл_кавычки
	.text "Alright, "
	.byte con_катсцена_задержка, $0A
	.text "everyone, "
	.byte con_катсцена_задержка, $0A
	.text "the"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $05
	.text "Rio Cup Youth Division"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста, $05
	.text "begins tomorrow!"
	.byte con_катсцена_тайл_кавычки
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
	.byte con_катсцена_задержка, $3C
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
	.byte con_катсцена_задержка, $3C
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
	.byte con_катсцена_задержка, $3C
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
	.byte con_катсцена_номер_звука, $62
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
	.byte con_катсцена_задержка, $50
	.byte con_катсцена_затереть_текст
	.byte $FB
	.byte $01	; <あ>
	.byte $12	; <つ>
	.byte $F7
	.byte $F3
	.byte $00
	.byte con_катсцена_скорость_текста, $00
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
	.byte con_катсцена_скорость_текста, $08
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
	.byte con_катсцена_задержка, $50
	.byte con_катсцена_скорость_текста, $2C
	.byte $26	; <よ>
	.byte $2B	; <ろ>
	.byte $0C	; <し>
	.byte $08	; <く>
	.byte $FB
	.byte $01	; <あ>
	.byte $2C	; <わ>
	.byte con_катсцена_скорость_текста, $00
	.byte $18	; <ね>
	.byte $7B	; <。>
	.byte con_катсцена_новая_строка
	.byte con_катсцена_задержка, $3C
	.byte con_катсцена_номер_звука, $31
	.byte $DE
	.byte $F4
	.byte $05	; <お>
	.byte $FB
	.byte $01	; <あ>
	.byte $2B	; <ろ>
	.byte con_катсцена_номер_звука, $01
	.byte con_катсцена_задержка, $3C
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
	.byte con_катсцена_задержка, $3C
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
	.byte con_катсцена_номер_звука, $45
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
	.byte con_катсцена_номер_звука, $30
	.byte con_катсцена_задержка, $3C
	.byte $DF
	.byte $FF


