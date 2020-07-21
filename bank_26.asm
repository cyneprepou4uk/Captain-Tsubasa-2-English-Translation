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
	.byte con_катсцена_осветление_экрана
	.byte con_катсцена_задержка, $F0
	.byte con_катсцена_затемнение_экрана
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
	.byte con_катсцена_смещение_текста, $09
	.byte con_катсцена_скорость_текста, $02
	.text "So fast! "
	.byte con_катсцена_задержка, $28
	.byte con_катсцена_скорость_текста, $04
	.text "Closing"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $09
	.text "down on Brazil's goal"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $09
	.text "is Japan's captain,"
	.byte con_катсцена_задержка, $0A
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $09
	.text "Ozora Tsubasa!"
	.byte con_катсцена_задержка, $3C
	
	
	
	.byte con_катсцена_затемнение_экрана
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
	.byte con_катсцена_смещение_текста, $0A
	.byte con_катсцена_скорость_текста, $01
	.text "Ozora Tsubasa"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $06
	.text "Sao Paulo FC, Brazil"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $0B
	.text "Midfielder"
	.byte con_катсцена_задержка, $78
	
	
	
	.byte con_катсцена_затемнение_экрана
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
	.byte con_катсцена_смещение_текста, $09
	.text "Hyuga"
	.byte con_катсцена_номер_звука, $6B
	.text " throws down"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $09
	.text "with his powerful"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $09
	.text "Tiger Tackle!!"
	.byte con_катсцена_задержка, $14
	.text " He's"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $09
	.text "like a wild beast!"
	.byte con_катсцена_задержка, $3C
	.byte con_катсцена_номер_звука, $02
	
	
	
	.byte con_катсцена_затемнение_экрана
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
	.byte con_катсцена_смещение_текста, $0A
	.text "Hyuga Kojiro"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $07
	.text "Toho Academy, Japan"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $0A
	.text "Center foward"
	.byte con_катсцена_задержка, $78
	
	
	
	.byte con_катсцена_затемнение_экрана
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
	.byte con_катсцена_смещение_текста, $09
	.text "Wow, "
	.byte con_катсцена_задержка, $0A
	.text "look"
	.byte con_катсцена_номер_звука, $09
	.text " at that"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $09
	.text "Golden Combo!"
	.byte con_катсцена_задержка, $14
	.byte con_катсцена_номер_звука, $30
	.text " Their"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $09
	.text "super Twin Shot!"
	.byte con_катсцена_задержка, $14
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $09
	.text "Perfect coordination!"
	.byte con_катсцена_задержка, $3C
	
	
	
	.byte con_катсцена_затемнение_экрана
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
	.byte con_катсцена_смещение_текста, $0A
	.text "Misaki Tarou"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $06
	.text "Nankatsu High, Japan"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $0B
	.text "Midfielder"
	.byte con_катсцена_задержка, $78
	
	
	
	.byte con_катсцена_затемнение_экрана
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
	.byte con_катсцена_смещение_текста, $09
	.text "A one-hand"
	.byte con_катсцена_номер_звука, $12
	.text "ed save!"
	.byte con_катсцена_задержка, $14
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $09
	.text "As expected from"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $09
	.text "Wakabyashi, "
	.byte con_катсцена_задержка, $0A
	.text "Japan's"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $09
	.text "own Guardian Deity!"
	.byte con_катсцена_задержка, $3C
	
	
	
	.byte con_катсцена_затемнение_экрана
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
	.byte con_катсцена_смещение_текста, $08
	.text "Wakabayashi Genzo"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $06
	.text "Hamburger SV, Germany"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $0B
	.text "Goalkeeper"
	.byte con_катсцена_задержка, $78
	.byte con_катсцена_затемнение_экрана
	.byte con_катсцена_затереть_текст
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FB
	.byte $01
	.byte $0D
	.byte con_катсцена_скорость_текста, $00
	.byte con_катсцена_смещение_текста, $03
	.text "Facing down our strongest"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $03
	.text "foe, Brazil, our dream and"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $02
	.text "goal: to be #1 in the world."
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $05
	.text "We stand as one team,"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $03
	.text "awaiting the final battle."
	.byte con_катсцена_осветление_экрана
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
	.byte con_катсцена_осветление_экрана
	.byte con_катсцена_номер_звука, $55
	.byte con_катсцена_скорость_текста, $03
	.byte con_катсцена_смещение_текста, $09
	.text "Nothing beats"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $08
	.text "Ozora Tsubasa's"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $08
	.text "love of football."
	.byte con_катсцена_мячик
	
	
	
	.byte con_катсцена_смещение_текста, $07
	.text "His ultimate dream"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $07
	.text "is to win the U-20"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $06
	.text "World Cup with Japan."
	.byte con_катсцена_мячик
	
	
	
	.byte con_катсцена_затемнение_экрана
	.byte $F9
	.byte $5D
	.byte $FB
	.byte $01
	.byte $17
	.byte con_катсцена_осветление_экрана
	.byte con_катсцена_смещение_текста, $04
	.text "They conquered the world!"
	.byte con_катсцена_задержка, $3C
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $08
	.text "Japan made it to"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $08
	.text "the finals of the"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $09
	.text "U-16 World Cup,"
	.byte con_катсцена_мячик
	
	
	
	.byte con_катсцена_смещение_текста, $04
	.text "where they hammered West"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $05
	.text "Germany. "
	.byte con_катсцена_задержка, $14
	.text "At last, "
	.byte con_катсцена_задержка, $0A
	.text "they"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $06
	.text "were world champions!"
	.byte con_катсцена_мячик
	
	
	
	.byte con_катсцена_затемнение_экрана
	.byte $F9
	.byte $04
	.byte $FB
	.byte $01
	.byte $50
	.byte con_катсцена_осветление_экрана
	.byte con_катсцена_смещение_текста, $03
	.text "After this victory oversea,"
	.byte con_катсцена_задержка, $0A
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $04
	.text "Tsubasa was reunited with"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $04
	.text "his former coach Roberto."
	.byte con_катсцена_мячик
	
	.byte con_катсцена_смещение_текста, $09
	.text "Finally he had"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $07
	.text "realized his dream"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $06
	.text "of playing in Brazil!"
	.byte con_катсцена_мячик
	
	.byte con_катсцена_затемнение_экрана
	.byte $F9
	.byte $5E
	.byte $FB
	.byte $01
	.byte $51
	.byte con_катсцена_осветление_экрана
	.byte con_катсцена_смещение_текста, $06
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
	.byte con_катсцена_смещение_текста, $06
	.text "a new journey begins"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $04
	.text "for Tsubasa in Sao Paulo!"
; скрытая катсцена
	.byte $F4
	.byte $06
	.byte $02
	
	
	
	.byte con_катсцена_затемнение_экрана
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
	.byte con_катсцена_осветление_экрана
	.byte $F4, $05
	.byte con_катсцена_смещение_текста, $06
	.text "Brazil, Sao Paulo FC"
	.byte $F4, $04
	.byte con_катсцена_задержка, $F0
	.byte con_катсцена_задержка, $78
	.byte $F4, $05
	.byte con_катсцена_затереть_текст
	.byte $F4, $04
	
	
	
	.byte con_катсцена_скорость_текста, $04
	.byte con_катсцена_задержка, $28
	.byte con_катсцена_смещение_текста, $04
	.byte con_катсцена_задержка, $F0
	.text "@Alright, "
	.byte con_катсцена_задержка, $0A
	.text "everyone, "
	.byte con_катсцена_задержка, $0A
	.text "the"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $05
	.text "Rio Cup Youth Division"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $05
	.text "begins tomorrow.@"
	.byte con_катсцена_мячик
	
	
	
	.byte con_катсцена_смещение_текста, $04
	.text "@Flamengo's ranked #1"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $05
	.text "in the nation, "
	.byte con_катсцена_задержка, $0A
	.text "so we'll"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $05
	.text "be seeing them there.@"
	.byte con_катсцена_мячик
	
	
	.byte $FB
	.byte $01
	.byte $3C
	.byte con_катсцена_смещение_текста, $04
	.text "@Their captain, "
	.byte con_катсцена_задержка, $0A
	.text "Carlos,"
	.byte con_катсцена_задержка, $0A
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $05
	.text "has bagged a hat trick"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $05
	.text "in every match in"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $05
	.text "the Qualifiers.@"
	.byte con_катсцена_мячик
	
	
	
	.byte con_катсцена_смещение_текста, $06
	.text "@We need to keep"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $07
	.text "tabs on him. "
	.byte con_катсцена_задержка, $28
	.text "I also"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $07
	.text "want you to examine"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $07
	.text "the other teams.@"
	.byte con_катсцена_мячик
	
	
	
	.byte con_катсцена_смещение_текста, $04
	.text "@Here, "
	.byte con_катсцена_задержка, $0A
	.text "take look at"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $05
	.text "their rosters, "
	.byte con_катсцена_задержка, $0A
	.text "skills,"
	.byte con_катсцена_задержка, $0A
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $05
	.text "and positions.@"
	.byte con_катсцена_мячик
	
	
	
	.byte $FB
	.byte $01
	.byte $3B
	
	.byte con_катсцена_смещение_текста, $02
	.text "@By the way, "
	.byte con_катсцена_задержка, $0A
	.text "we're taking on"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $03
	.text "a new trainee manager, "
	.byte con_катсцена_задержка, $0A
	.text "sent"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $03
	.text "to us from the Japanese"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $03
	.text "Football Organization.@"
	.byte con_катсцена_мячик
	
	
	
	.byte con_катсцена_затемнение_экрана
	.byte $F9
	.byte $13
	.byte $FA
	.byte $12
	.byte $FB
	.byte $01
	.byte $2A
	.byte con_катсцена_осветление_экрана
	.byte con_катсцена_задержка, $28
	.byte con_катсцена_смещение_текста, $07
	.text "@My name is Yoko"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $08
	.text "Katagiri - "
	.byte con_катсцена_задержка, $14
	.byte $FB
	.byte $01
	.byte $2B
	.text "good"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $08
	.text "to meet you all.@"
	.byte con_катсцена_номер_звука, $62
	.byte con_катсцена_мячик
	
	
	.byte $FB
	.byte $01
	.byte $2A
	.byte con_катсцена_смещение_текста, $06
	.text "@Starting today, "
	.byte con_катсцена_задержка, $0A
	.text "I'll"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $07
	.text "be your manager for"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $07
	.text "a while, "
	.byte con_катсцена_задержка, $0A
	.byte $FB
	.byte $01
	.byte $2B
	.text "so thank you"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $07
	.text "for your patience.@"
	.byte con_катсцена_мячик
	
	
	
	.byte $FB
	.byte $01
	.byte $2A
	.byte con_катсцена_смещение_текста, $06
	.text "@Tsubasa, "
	.byte con_катсцена_задержка, $0A
	.text "right?"
	.byte con_катсцена_задержка, $14
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $07
	.text "My brother's told"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $07
	.text "me a lot about you.@"
	.byte con_катсцена_мячик
	
	
	
	.byte $FB
	.byte $01
	.byte $12
	.byte $F7
	.byte $F3
	.byte $00
	.byte con_катсцена_задержка, $14
	.byte con_катсцена_скорость_текста, $01
	.byte con_катсцена_смещение_текста, $08
	.text "@Oh?@"
	.byte con_катсцена_мячик
	
	
	.byte $FB
	.byte $01
	.byte $2B
	.byte $F7
	.byte $F3
	.byte $00
	.byte con_катсцена_задержка, $28
	.byte con_катсцена_скорость_текста, $04
	.byte con_катсцена_смещение_текста, $07
	.text "@Yep - "
	.byte con_катсцена_задержка, $14
	.text "my brother,"
	.byte con_катсцена_задержка, $0A
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $08
	.text "Munemasa, "
	.byte con_катсцена_задержка, $0A
	.text "from the"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $08
	.byte con_катсцена_скорость_текста, $0A
	.text "JFO."
	.byte con_катсцена_скорость_текста, $00
	.text " "
	.byte con_катсцена_задержка, $14
	.byte $FB
	.byte $01
	.byte $2A
	.byte con_катсцена_задержка, $14
	.byte con_катсцена_скорость_текста, $14
	.text "No pressure~"
	.byte $FB
	.byte $01
	.byte $2C
	.byte con_катсцена_скорость_текста, $00
	.text "@"
	.byte con_катсцена_задержка, $14
	.byte con_катсцена_мячик
	
	
	
	.byte con_катсцена_номер_звука, $31
	.byte $F4
	.byte $05
	.byte $FB
	.byte $01
	.byte $2B
	.byte con_катсцена_задержка, $3C
	.byte con_катсцена_номер_звука, $01
	.byte con_катсцена_затереть_текст
	.byte con_катсцена_смещение_текста, $03
	.text "The next step in Tsubasa's"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $03
	.text "journey starts in Brazil,"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $03
	.text "beginning with the Rio Cup."
	.byte $F4
	.byte $04
	.byte con_катсцена_задержка, $F0
	
	
	
	.byte con_катсцена_затемнение_экрана
	.byte con_катсцена_затереть_текст
	.byte $F9
	.byte $14
	.byte con_катсцена_осветление_экрана
	.byte $F6
	.byte $B4
	.byte con_катсцена_затемнение_экрана
	.byte $E8
	.byte $00
	.byte $F9
	.byte $15
	.byte $FB
	.byte $02
	.byte $C7
	.byte $C6
	.byte con_катсцена_номер_звука, $45
	.byte con_катсцена_осветление_экрана
	.byte $F6
	.byte $B4
	.byte $FB
	.byte $01
	.byte $CB
	.byte $F3
	.byte $00
	.byte $F5
	.byte $06
	.byte con_катсцена_номер_звука, $30
	.byte con_катсцена_задержка, $3C
	.byte con_катсцена_задержка, $F0
	.byte con_катсцена_выход





.export off_0x040005_скрытая_катсцена_из_01
off_0x040005_скрытая_катсцена_из_01:
	.byte $E8
	.byte $01	; <あ>
	.byte $F3
	.byte $FF
	.byte $24	; <や>
	.byte $42	; <イ>
	.byte $F6
	.byte $06	; <か>
	.byte $F3
	.byte $FF
	.byte $23	; <も>
	.byte $41	; <ア>
	.byte $F6
	.byte $01	; <あ>
	.byte $F3
	.byte $FF
	.byte $20	; <み>
	.byte $3F	; <•>
	.byte $0F	; <そ>
	.byte $0C	; <し>
	.byte $13	; <て>
	.byte $00
	.byte $0A	; <こ>
	.byte $0A	; <こ>
	.byte $16	; <に>
	.byte $00
	.byte $23	; <も>
	.byte $03	; <う>
	.byte $1B	; <ひ>
	.byte $14	; <と>
	.byte $12	; <つ>
	.byte $19	; <の>
	.byte $FC
	.byte $E1
	.byte $47	; <キ>
	.byte $70	; <ャ>
	.byte $CF	; <プ>
	.byte $53	; <テ>
	.byte $6E	; <ン>
	.byte $12	; <つ>
	.byte $AF	; <ば>
	.byte $0B	; <さ>
	.byte $A0	; <が>
	.byte $00
	.byte $01	; <あ>
	.byte $2F	; <っ>
	.byte $10	; <た>
	.byte $3F	; <•>
	.byte $3F	; <•>
	.byte $3F	; <•>
	.byte $FC
	.byte $DE
	.byte $EA
	.byte $ED
	.byte $31	; <ゅ>
	.byte $DE
	.byte $ED
	.byte $01	; <あ>
	.byte $FD
	.byte $DE
	.byte $ED
	.byte $51	; <チ>
	.byte $F2
	.byte $04	; <え>
	.byte $F9
	.byte $2D	; <を>
	.byte $FB
	.byte $01	; <あ>
	.byte $0B	; <さ>
	.byte $E9
	.byte $F4
	.byte $05	; <お>
	.byte $E1
	.byte $02	; <い>
	.byte $1F	; <ま>
	.byte $06	; <か>
	.byte $27	; <ら>
	.byte $00
	.byte $36	; <3>
	.byte $18	; <ね>
	.byte $2E	; <ん>
	.byte $1F	; <ま>
	.byte $04	; <え>
	.byte $19	; <の>
	.byte $00
	.byte $C5	; <ブ>
	.byte $67	; <ラ>
	.byte $BA	; <ジ>
	.byte $69	; <ル>
	.byte $FC
	.byte $F4
	.byte $04	; <え>
	.byte $DE
	.byte $DF
	.byte $F4
	.byte $05	; <お>
	.byte $FD
	.byte $F4
	.byte $04	; <え>
	.byte $F2
	.byte $08	; <く>
	.byte $DF
	.byte $FA
	.byte $12	; <つ>
	.byte $E1
	.byte $40	; <「>
	.byte $26	; <よ>
	.byte $08	; <く>
	.byte $07	; <き>
	.byte $10	; <た>
	.byte $15	; <な>
	.byte $DB
	.byte $00
	.byte $12	; <つ>
	.byte $AF	; <ば>
	.byte $0B	; <さ>
	.byte $7B	; <。>
	.byte $FC
	.byte $DE
	.byte $FD
	.byte $FB
	.byte $01	; <あ>
	.byte $4E	; <セ>
	.byte $F7
	.byte $F3
	.byte $00
	.byte $E1
	.byte $DC
	.byte $40	; <「>
	.byte $6B	; <ロ>
	.byte $C6	; <ベ>
	.byte $69	; <ル>
	.byte $54	; <ト>
	.byte $EF
	.byte $3F	; <•>
	.byte $EF
	.byte $3F	; <•>
	.byte $3F	; <•>
	.byte $FC
	.byte $DD
	.byte $12	; <つ>
	.byte $02	; <い>
	.byte $16	; <に>
	.byte $07	; <き>
	.byte $10	; <た>
	.byte $26	; <よ>
	.byte $DB
	.byte $00
	.byte $C5	; <ブ>
	.byte $67	; <ラ>
	.byte $BA	; <ジ>
	.byte $69	; <ル>
	.byte $1D	; <へ>
	.byte $7B	; <。>
	.byte $FC
	.byte $DE
	.byte $FD
	.byte $FB
	.byte $01	; <あ>
	.byte $3B	; <8>
	.byte $F7
	.byte $F3
	.byte $00
	.byte $E1
	.byte $40	; <「>
	.byte $07	; <き>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $06	; <か>
	.byte $27	; <ら>
	.byte $00
	.byte $0A	; <こ>
	.byte $19	; <の>
	.byte $4B	; <サ>
	.byte $6E	; <ン>
	.byte $CD	; <パ>
	.byte $43	; <ウ>
	.byte $6B	; <ロ>
	.byte $86	; <F>
	.byte $83	; <C>
	.byte $A0	; <が>
	.byte $FC
	.byte $05	; <お>
	.byte $1F	; <ま>
	.byte $04	; <え>
	.byte $19	; <の>
	.byte $00
	.byte $5E	; <ホ>
	.byte $7D	; <ー>
	.byte $61	; <ム>
	.byte $B6	; <グ>
	.byte $67	; <ラ>
	.byte $43	; <ウ>
	.byte $6E	; <ン>
	.byte $C2	; <ド>
	.byte $AA	; <だ>
	.byte $7B	; <。>
	.byte $FC
	.byte $DC
	.byte $FB
	.byte $01	; <あ>
	.byte $3C	; <9>
	.byte $0C	; <し>
	.byte $2F	; <っ>
	.byte $06	; <か>
	.byte $28	; <り>
	.byte $15	; <な>
	.byte $7B	; <。>
	.byte $FC
	.byte $DE
	.byte $FD
	.byte $FB
	.byte $01	; <あ>
	.byte $11	; <ち>
	.byte $F7
	.byte $F3
	.byte $00
	.byte $E1
	.byte $40	; <「>
	.byte $03	; <う>
	.byte $2E	; <ん>
	.byte $7B	; <。>
	.byte $FC
	.byte $DD
	.byte $FD
	.byte $FB
	.byte $01	; <あ>
	.byte $3B	; <8>
	.byte $F7
	.byte $F3
	.byte $00
	.byte $E1
	.byte $40	; <「>
	.byte $05	; <お>
	.byte $1F	; <ま>
	.byte $04	; <え>
	.byte $A0	; <が>
	.byte $00
	.byte $0A	; <こ>
	.byte $2A	; <れ>
	.byte $06	; <か>
	.byte $27	; <ら>
	.byte $0C	; <し>
	.byte $32	; <ょ>
	.byte $A9	; <ぞ>
	.byte $08	; <く>
	.byte $0D	; <す>
	.byte $29	; <る>
	.byte $FC
	.byte $65	; <ユ>
	.byte $7D	; <ー>
	.byte $4D	; <ス>
	.byte $48	; <ク>
	.byte $67	; <ラ>
	.byte $4D	; <ス>
	.byte $1A	; <は>
	.byte $00
	.byte $6A	; <レ>
	.byte $C6	; <ベ>
	.byte $69	; <ル>
	.byte $19	; <の>
	.byte $10	; <た>
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $FC
	.byte $51	; <チ>
	.byte $7D	; <ー>
	.byte $61	; <ム>
	.byte $A0	; <が>
	.byte $00
	.byte $14	; <と>
	.byte $08	; <く>
	.byte $16	; <に>
	.byte $05	; <お>
	.byte $05	; <お>
	.byte $02	; <い>
	.byte $7B	; <。>
	.byte $FC
	.byte $DE
	.byte $FD
	.byte $FB
	.byte $01	; <あ>
	.byte $3C	; <9>
	.byte $E1
	.byte $40	; <「>
	.byte $AA	; <だ>
	.byte $A0	; <が>
	.byte $00
	.byte $68	; <リ>
	.byte $45	; <オ>
	.byte $46	; <カ>
	.byte $6F	; <ッ>
	.byte $CF	; <プ>
	.byte $16	; <に>
	.byte $00
	.byte $AD	; <で>
	.byte $10	; <た>
	.byte $14	; <と>
	.byte $0C	; <し>
	.byte $10	; <た>
	.byte $27	; <ら>
	.byte $FC
	.byte $DB
	.byte $02	; <い>
	.byte $11	; <ち>
	.byte $AF	; <ば>
	.byte $2E	; <ん>
	.byte $00
	.byte $07	; <き>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $13	; <て>
	.byte $07	; <き>
	.byte $16	; <に>
	.byte $15	; <な>
	.byte $29	; <る>
	.byte $19	; <の>
	.byte $1A	; <は>
	.byte $FC
	.byte $5C	; <フ>
	.byte $67	; <ラ>
	.byte $62	; <メ>
	.byte $6E	; <ン>
	.byte $B8	; <ゴ>
	.byte $86	; <F>
	.byte $83	; <C>
	.byte $AA	; <だ>
	.byte $2B	; <ろ>
	.byte $03	; <う>
	.byte $7B	; <。>
	.byte $FC
	.byte $DE
	.byte $FD
	.byte $FB
	.byte $01	; <あ>
	.byte $11	; <ち>
	.byte $F7
	.byte $F3
	.byte $00
	.byte $E1
	.byte $40	; <「>
	.byte $5C	; <フ>
	.byte $67	; <ラ>
	.byte $62	; <メ>
	.byte $6E	; <ン>
	.byte $B8	; <ゴ>
	.byte $86	; <F>
	.byte $83	; <C>
	.byte $78	; <?>
	.byte $FC
	.byte $DE
	.byte $FD
	.byte $FB
	.byte $01	; <あ>
	.byte $3C	; <9>
	.byte $F7
	.byte $F3
	.byte $00
	.byte $FA
	.byte $10	; <た>
	.byte $E1
	.byte $40	; <「>
	.byte $15	; <な>
	.byte $06	; <か>
	.byte $AD	; <で>
	.byte $23	; <も>
	.byte $00
	.byte $26	; <よ>
	.byte $03	; <う>
	.byte $11	; <ち>
	.byte $31	; <ゅ>
	.byte $03	; <う>
	.byte $02	; <い>
	.byte $15	; <な>
	.byte $19	; <の>
	.byte $A0	; <が>
	.byte $FC
	.byte $DB
	.byte $FB
	.byte $01	; <あ>
	.byte $5A	; <ハ>
	.byte $F7
	.byte $F3
	.byte $8E	; <L>
	.byte $46	; <カ>
	.byte $69	; <ル>
	.byte $6B	; <ロ>
	.byte $4D	; <ス>
	.byte $3F	; <•>
	.byte $4B	; <サ>
	.byte $6E	; <ン>
	.byte $50	; <タ>
	.byte $7D	; <ー>
	.byte $55	; <ナ>
	.byte $14	; <と>
	.byte $02	; <い>
	.byte $03	; <う>
	.byte $00
	.byte $05	; <お>
	.byte $14	; <と>
	.byte $0A	; <こ>
	.byte $AA	; <だ>
	.byte $7B	; <。>
	.byte $FC
	.byte $DE
	.byte $FD
	.byte $E1
	.byte $40	; <「>
	.byte $0C	; <し>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $27	; <ら>
	.byte $02	; <い>
	.byte $0E	; <せ>
	.byte $02	; <い>
	.byte $00
	.byte $55	; <ナ>
	.byte $6E	; <ン>
	.byte $C3	; <バ>
	.byte $7D	; <ー>
	.byte $6C	; <ワ>
	.byte $6E	; <ン>
	.byte $14	; <と>
	.byte $02	; <い>
	.byte $2C	; <わ>
	.byte $2A	; <れ>
	.byte $29	; <る>
	.byte $FC
	.byte $06	; <か>
	.byte $2A	; <れ>
	.byte $19	; <の>
	.byte $11	; <ち>
	.byte $06	; <か>
	.byte $27	; <ら>
	.byte $1A	; <は>
	.byte $DB
	.byte $00
	.byte $02	; <い>
	.byte $1F	; <ま>
	.byte $19	; <の>
	.byte $A6	; <じ>
	.byte $13	; <て>
	.byte $2E	; <ん>
	.byte $AD	; <で>
	.byte $FC
	.byte $05	; <お>
	.byte $1F	; <ま>
	.byte $04	; <え>
	.byte $26	; <よ>
	.byte $28	; <り>
	.byte $00
	.byte $03	; <う>
	.byte $04	; <え>
	.byte $06	; <か>
	.byte $23	; <も>
	.byte $0C	; <し>
	.byte $2A	; <れ>
	.byte $15	; <な>
	.byte $02	; <い>
	.byte $7B	; <。>
	.byte $FC
	.byte $DE
	.byte $FD
	.byte $E1
	.byte $40	; <「>
	.byte $06	; <か>
	.byte $2A	; <れ>
	.byte $A0	; <が>
	.byte $7A	; <、>
	.byte $DB
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $1A	; <は>
	.byte $12	; <つ>
	.byte $11	; <ち>
	.byte $31	; <ゅ>
	.byte $03	; <う>
	.byte $19	; <の>
	.byte $FC
	.byte $60	; <ミ>
	.byte $67	; <ラ>
	.byte $7D	; <ー>
	.byte $BA	; <ジ>
	.byte $71	; <ュ>
	.byte $4C	; <シ>
	.byte $71	; <ュ>
	.byte $7D	; <ー>
	.byte $54	; <ト>
	.byte $2D	; <を>
	.byte $00
	.byte $06	; <か>
	.byte $2E	; <ん>
	.byte $0E	; <せ>
	.byte $02	; <い>
	.byte $0B	; <さ>
	.byte $0E	; <せ>
	.byte $10	; <た>
	.byte $27	; <ら>
	.byte $FC
	.byte $DB
	.byte $1F	; <ま>
	.byte $0B	; <さ>
	.byte $16	; <に>
	.byte $00
	.byte $21	; <む>
	.byte $06	; <か>
	.byte $03	; <う>
	.byte $14	; <と>
	.byte $0A	; <こ>
	.byte $2B	; <ろ>
	.byte $00
	.byte $13	; <て>
	.byte $07	; <き>
	.byte $15	; <な>
	.byte $0C	; <し>
	.byte $AA	; <だ>
	.byte $7B	; <。>
	.byte $FC
	.byte $DE
	.byte $EA
	.byte $FD
	.byte $F9
	.byte $13	; <て>
	.byte $FA
	.byte $12	; <つ>
	.byte $FB
	.byte $01	; <あ>
	.byte $3B	; <8>
	.byte $E9
	.byte $E1
	.byte $40	; <「>
	.byte $02	; <い>
	.byte $A7	; <ず>
	.byte $2A	; <れ>
	.byte $00
	.byte $46	; <カ>
	.byte $69	; <ル>
	.byte $6B	; <ロ>
	.byte $4D	; <ス>
	.byte $14	; <と>
	.byte $00
	.byte $10	; <た>
	.byte $10	; <た>
	.byte $06	; <か>
	.byte $03	; <う>
	.byte $14	; <と>
	.byte $07	; <き>
	.byte $A0	; <が>
	.byte $FC
	.byte $08	; <く>
	.byte $29	; <る>
	.byte $AA	; <だ>
	.byte $2B	; <ろ>
	.byte $03	; <う>
	.byte $7A	; <、>
	.byte $DB
	.byte $0F	; <そ>
	.byte $2A	; <れ>
	.byte $1F	; <ま>
	.byte $AD	; <で>
	.byte $00
	.byte $20	; <み>
	.byte $2F	; <っ>
	.byte $11	; <ち>
	.byte $28	; <り>
	.byte $FC
	.byte $07	; <き>
	.byte $10	; <た>
	.byte $04	; <え>
	.byte $29	; <る>
	.byte $A9	; <ぞ>
	.byte $7B	; <。>
	.byte $FC
	.byte $DE
	.byte $FD
	.byte $FB
	.byte $01	; <あ>
	.byte $11	; <ち>
	.byte $F7
	.byte $F3
	.byte $00
	.byte $E1
	.byte $40	; <「>
	.byte $46	; <カ>
	.byte $69	; <ル>
	.byte $6B	; <ロ>
	.byte $4D	; <ス>
	.byte $3F	; <•>
	.byte $4B	; <サ>
	.byte $6E	; <ン>
	.byte $50	; <タ>
	.byte $7D	; <ー>
	.byte $55	; <ナ>
	.byte $06	; <か>
	.byte $EF
	.byte $3F	; <•>
	.byte $3F	; <•>
	.byte $3F	; <•>
	.byte $FC
	.byte $F6
	.byte $B4	; <ガ>
	.byte $FD
	.byte $FB
	.byte $01	; <あ>
	.byte $3B	; <8>
	.byte $F7
	.byte $F3
	.byte $00
	.byte $E1
	.byte $40	; <「>
	.byte $0B	; <さ>
	.byte $13	; <て>
	.byte $DB
	.byte $00
	.byte $20	; <み>
	.byte $2E	; <ん>
	.byte $15	; <な>
	.byte $16	; <に>
	.byte $00
	.byte $05	; <お>
	.byte $1F	; <ま>
	.byte $04	; <え>
	.byte $2D	; <を>
	.byte $0C	; <し>
	.byte $32	; <ょ>
	.byte $03	; <う>
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $FC
	.byte $0C	; <し>
	.byte $15	; <な>
	.byte $02	; <い>
	.byte $14	; <と>
	.byte $15	; <な>
	.byte $7A	; <、>
	.byte $DB
	.byte $0F	; <そ>
	.byte $2B	; <ろ>
	.byte $0F	; <そ>
	.byte $2B	; <ろ>
	.byte $02	; <い>
	.byte $0A	; <こ>
	.byte $03	; <う>
	.byte $06	; <か>
	.byte $7B	; <。>
	.byte $FC
	.byte $DE
	.byte $FD
	.byte $FB
	.byte $01	; <あ>
	.byte $4E	; <セ>
	.byte $F7
	.byte $F3
	.byte $00
	.byte $E1
	.byte $40	; <「>
	.byte $03	; <う>
	.byte $2E	; <ん>
	.byte $7A	; <、>
	.byte $DB
	.byte $26	; <よ>
	.byte $7D	; <ー>
	.byte $0C	; <し>
	.byte $00
	.byte $24	; <や>
	.byte $29	; <る>
	.byte $A9	; <ぞ>
	.byte $79	; <!>
	.byte $FC
	.byte $ED
	.byte $31	; <ゅ>
	.byte $DE
	.byte $ED
	.byte $01	; <あ>
	.byte $FD
	.byte $F3
	.byte $FF
	.byte $24	; <や>
	.byte $42	; <イ>
	.byte $F6
	.byte $06	; <か>
	.byte $F3
	.byte $FF
	.byte $23	; <も>
	.byte $41	; <ア>
	.byte $F6
	.byte $01	; <あ>
	.byte $F3
	.byte $FF
	.byte $20	; <み>
	.byte $3F	; <•>
	.byte $F4
	.byte $05	; <お>
	.byte $FD
	.byte $DC
	.byte $F2
	.byte $00
	.byte $05	; <お>
	.byte $05	; <お>
	.byte $A9	; <ぞ>
	.byte $27	; <ら>
	.byte $00
	.byte $12	; <つ>
	.byte $AF	; <ば>
	.byte $0B	; <さ>
	.byte $00
	.byte $34	; <1>
	.byte $38	; <5>
	.byte $0B	; <さ>
	.byte $02	; <い>
	.byte $FC
	.byte $E2
	.byte $4D	; <ス>
	.byte $7D	; <ー>
	.byte $CD	; <パ>
	.byte $7D	; <ー>
	.byte $4D	; <ス>
	.byte $54	; <ト>
	.byte $67	; <ラ>
	.byte $42	; <イ>
	.byte $46	; <カ>
	.byte $7D	; <ー>
	.byte $1D	; <へ>
	.byte $19	; <の>
	.byte $00
	.byte $10	; <た>
	.byte $10	; <た>
	.byte $06	; <か>
	.byte $02	; <い>
	.byte $1A	; <は>
	.byte $FC
	.byte $E2
	.byte $0A	; <こ>
	.byte $0A	; <こ>
	.byte $26	; <よ>
	.byte $28	; <り>
	.byte $00
	.byte $36	; <3>
	.byte $18	; <ね>
	.byte $2E	; <ん>
	.byte $A4	; <ご>
	.byte $16	; <に>
	.byte $00
	.byte $1A	; <は>
	.byte $A6	; <じ>
	.byte $1F	; <ま>
	.byte $29	; <る>
	.byte $3F	; <•>
	.byte $3F	; <•>
	.byte $3F	; <•>
	.byte $FC
	.byte $F4
	.byte $04	; <え>
	.byte $ED
	.byte $45	; <オ>
	.byte $DF
	.byte $DF
	.byte $F4
	.byte $07	; <き>

