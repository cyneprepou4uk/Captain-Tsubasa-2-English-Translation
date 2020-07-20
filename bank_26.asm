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
	.byte $05
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
	.byte con_катсцена_задержка, $14
	.text "I also"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $07
	.text "want you to examine"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $07
	.text "the other teams.@"
	.byte con_катсцена_мячик
	
	
	
	.byte con_катсцена_смещение_текста, $03
	.text "@Here, "
	.byte con_катсцена_задержка, $0A
	.text "take look at their"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $04
	.text "rosters - "
	.byte con_катсцена_задержка, $0A
	.text "what are their"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $04
	.text "skills, "
	.byte con_катсцена_задержка, $0A
	.text "and what are"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_смещение_текста, $04
	.text "their positions?@"
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


