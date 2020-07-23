.segment "BANK_26"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

    .word off_A020_00_самая_первая_заставка
    .word off_A2A1_01_история_цубасы
    .word off_A626_02_карлос_перед_первым_матчем
    .word off_A6B4_03_карлос_после_первого_матча
    .word off_A6DC_04_цубаса_и_меон
    .word off_A968_05_карлос_и_коимбра






off_A020_00_самая_первая_заставка:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $00
    .byte $FB, $01, $8D
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $58
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_вид_окна_текста, $01
    .byte $EC, $00
    .byte con_катсцена_задний_фон, $01
    .byte $FB, $01, $6E
    .byte $F8, $0A
    .byte $F3, $00
    .byte $F5, $00
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
    .byte $E8, $01
    .byte $EC, $FF
    .byte $EE
    .byte $FA, $03
    .byte $FB, $01, $75
    .byte $F3, $00
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
    .byte con_катсцена_задний_фон, $08
    .byte $FB, $02, $C1, $82
    .byte $F3, $00
    .byte $F5, $10
    .byte con_катсцена_номер_звука, $28
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_номер_звука, $28
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_номер_звука, $28
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_номер_звука, $0E
    .byte con_катсцена_вид_окна_текста, $01
    .byte $EC, $05
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
    .byte $EC, $FF
    .byte $EE
    .byte $FA, $07
    .byte $FB, $01, $76
    .byte $F3, $00
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
    .byte con_катсцена_вид_окна_текста, $01
    .byte $EC, $02
    .byte con_катсцена_задний_фон, $09
    .byte $FB, $01, $84
    .byte $F3, $00
    .byte $F5, $01
    .byte con_катсцена_номер_звука, $0E
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Wow,"
    .byte con_катсцена_задержка, $0F
    .text " look"
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
    .byte $EC, $FF
    .byte $EE
    .byte $FA, $03
    .byte $FB, $01, $77
    .byte $F3, $00
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
    .byte con_катсцена_вид_окна_текста, $01
    .byte $EC, $04
    .byte con_катсцена_задний_фон, $0A
    .byte $FB, $03, $C0, $A2, $7D
    .byte $F3, $00
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
    .text "Wakabyashi,"
    .byte con_катсцена_задержка, $0F
    .text " Japan's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "own Guardian Deity!"
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $EC, $FF
    .byte $EE
    .byte $FA, $0B
    .byte $FB, $01, $7C
    .byte $F3, $00
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
    .byte $EC, $FF
    .byte $EE
    .byte $FB, $01, $0D
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
    .byte con_катсцена_задержка, $B4
    .byte $F4, $05
    .byte con_катсцена_затереть_текст
    .byte $F8, $00
    .byte con_катсцена_прыжок
    .word off_A020_00_самая_первая_заставка







off_A2A1_01_история_цубасы:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $5C
    .byte $FB, $01, $6D
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $55
    .byte con_катсцена_задержка, $3C
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
    .byte con_катсцена_задний_фон, $5D
    .byte $FB, $01, $17
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $14
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
    .byte con_катсцена_задержка, $3C
    .text "At last,"
    .byte con_катсцена_задержка, $1E
    .text " they"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "were world champions!"
    .byte con_катсцена_мячик
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $04
    .byte $FB, $01, $50
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $03
    .text "After this victory oversea,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Tsubasa was reunited with"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "his former coach,"
    .byte con_катсцена_задержка, $0F
    .text " Roberto."
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
    .byte con_катсцена_задний_фон, $5E
    .byte $FB, $01, $51
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $08
    .text "3 years late"
    .byte con_катсцена_скорость_текста, $08
    .text "r..."
    .byte con_катсцена_задержка, $3C
    .byte $F3, $FF, $23, $41
    .byte con_катсцена_задержка, $01
    .byte $F3, $FF, $24, $42
    .byte con_катсцена_задержка, $06
    .byte $F3, $FF, $00, $17
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $03
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "A new journey begins"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "for Tsubasa in Sao Paulo!"
; скрытая катсцена
    .byte $F4, $06, $02
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_задний_фон, $2D
    .byte $FB, $01, $0B
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $51
    .byte con_катсцена_задержка, $3C
    .byte $F4, $05
    .byte con_катсцена_скорость_текста, $00
    .byte con_катсцена_смещение_текста, $06
    .text "Brazil, Sao Paulo FC"
    .byte $F4, $04
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $50
    .byte $F4, $05
    .byte con_катсцена_затереть_текст
    .byte $F4, $04
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $3C
    .byte $FA, $12
    
    
    
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "@Alright,"
    .byte con_катсцена_задержка, $0A
    .text " everyone."
    .byte con_катсцена_задержка, $1E
    .text " The"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "Rio Cup Youth Division"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "begins tomorrow.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "@Flamengo's ranked #1"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "in the nation,"
    .byte con_катсцена_задержка, $1E
    .text " so"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "we'll definitely be"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "seeing them there.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $3C
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_смещение_текста, $04
    .text "@Their captain,"
    .byte con_катсцена_задержка, $1E
    .text " Carlos,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "has bagged a hat trick"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "in every match in"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "the Qualifiers.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte con_катсцена_смещение_текста, $08
    .text "@We need to keep"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "tabs on him.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $08
    .text "@I also want you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "to examine the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "other teams.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "@Here."
    .byte con_катсцена_задержка, $1E
    .text " Take a look at"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "their rosters,"
    .byte con_катсцена_задержка, $0F
    .text " skills,"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "and positions.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte con_катсцена_задержка, $30
    .byte $FB, $01, $3B
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $02
    .text "@By the way,"
    .byte con_катсцена_задержка, $14
    .text " we're taking on"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "a new trainee manager,"
    .byte con_катсцена_задержка, $14
    .text " sent"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "to us from the Japanese"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "Football Organization.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    .byte con_катсцена_затемнение_экрана
    
    
    
    .byte con_катсцена_задний_фон, $13
    .byte $FA, $12
    .byte $FB, $01, $2A
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $07
    .text "@My name is Yoko"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "Katagiri."
    .byte con_катсцена_задержка, $3C
    .byte $FB, $01, $2B
    .text " Good"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "to meet you all!@"
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte $FB, $01, $2A
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $05
    .text "@Starting today,"
    .byte con_катсцена_задержка, $14
    .text " I'll"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "be your manager for"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "a while,"
    .byte con_катсцена_задержка, $1E
    .byte $FB, $01, $2B
    .text " so thank you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "for your patience.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte $FB, $01, $2A
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $06
    .text "@Tsubasa,"
    .byte con_катсцена_задержка, $14
    .text " right?"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "My brother's told"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "me a lot about you.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $12
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $01
    .byte con_катсцена_смещение_текста, $08
    .text "@Oh?@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $2B
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "@Yep -"
    .byte con_катсцена_задержка, $1E
    .text " my brother,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "Munemasa,"
    .byte con_катсцена_задержка, $14
    .text " from the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .byte con_катсцена_скорость_текста, $0E
    .text "JFO."
    .byte con_катсцена_скорость_текста, $00
    .text " "
    .byte con_катсцена_задержка, $1E
    .byte $FB, $01, $2A
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $10
    .text "No pressure~"
    .byte $FB, $01, $2C
    .byte con_катсцена_скорость_текста, $00
    .text "@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $60
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $2B
    .byte $F4, $05
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_смещение_текста, $03
    .text "The next step in Tsubasa's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "journey starts in Brazil,"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "beginning with the Rio Cup."
    .byte $F4, $04
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_задний_фон, $14
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $B4
    .byte con_катсцена_затемнение_экрана
    .byte $E8, $00
    .byte con_катсцена_задний_фон, $15
    .byte $FB, $02, $C7, $C6
    .byte con_катсцена_номер_звука, $45
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $B4
    .byte $FB, $01, $CB
    .byte $F3, $00
    .byte $F5, $06
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_выход





.export off_0x040005_скрытая_катсцена_из_01
off_0x040005_скрытая_катсцена_из_01:
    .byte $E8, $01
    .byte $F3, $FF, $24, $42
    .byte con_катсцена_задержка, $06
    .byte $F3, $FF, $23, $41
    .byte con_катсцена_задержка, $01
    .byte $F3, $FF, $20, $3F
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $03
    .byte con_катсцена_скорость_текста, $03
    .text "But before that,"
    .byte con_катсцена_задержка, $0F
    .text " let's take"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "a look at Tsubasa's first"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "day on the tea"
    .byte con_катсцена_скорость_текста, $08
    .text "m..."
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    
    
    
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_задний_фон, $2D
    .byte $FB, $01, $0B
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $51
    .byte con_катсцена_задержка, $3C
    .byte $F4, $05
    .byte con_катсцена_скорость_текста, $00
    .byte con_катсцена_смещение_текста, $04
    .text "Brazil, 3 years earlier"
    .byte con_катсцена_новая_строка
    .byte $F4, $04
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $50
    .byte $F4, $05
    .byte con_катсцена_затереть_текст
    .byte $F4, $04
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $3C
    .byte $FA, $12
    
    
    
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "@Welcome to Brazil,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "Tsubasa.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $4E
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_смещение_текста, $07
    .byte con_катсцена_задержка, $1E
    .text "@Wow"
    .byte con_катсцена_скорость_текста, $08
    .byte con_катсцена_закрыть_рот
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .text " I'm really"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "here at last.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $3B
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $06
    .text "@That's right."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "Sao Paulo FC's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "your home team now.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $3C
    .byte con_катсцена_смещение_текста, $05
    .text "@I'm expecting you to"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "give it your all.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $11
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $06
    .text "@Right,"
    .byte con_катсцена_задержка, $1E
    .text " of course.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $3B
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $07
    .text "@Given your age,"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "you'll be in the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "Youth Division.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $3C
    .byte con_катсцена_смещение_текста, $05
    .text "@Still,"
    .byte con_катсцена_задержка, $14
    .text " it has a lot"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "of high-level teams.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte con_катсцена_смещение_текста, $06
    .text "@Flamengo FC seems"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "to be our strongest"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "opponents.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $11
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $06
    .text "@Flamengo FC?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $3C
    .byte $F7
    .byte $F3, $00
    .byte $FA, $10
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $06
    .text "@Yes."
    .byte con_катсцена_задержка, $3C
    .byte $FB, $01, $5A
    .byte $F7
    .byte $F3, $8E
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "Carlos Santana's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "their top striker.@"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@His skills might make"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "him the biggest talent"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "in the entire Youth"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "Division.@"
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    .byte con_катсцена_смещение_текста, $03
    .text "@Besides you,"
    .byte con_катсцена_задержка, $0A
    .text " of course.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "@He's been practicing"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "his new move,"
    .byte con_катсцена_задержка, $1E
    .text " the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Mirage Shot,@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@which might just make"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "him unstoppable.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $13
    .byte $FA, $12
    .byte $FB, $01, $3B
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $05
    .text "@You'll face Carlos"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "eventually."
    .byte con_катсцена_задержка, $3C
    .text " In the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "meantime,"
    .byte con_катсцена_задержка, $0F
    .text " I will work"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "you hard in training.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $11
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $06
    .text "@So,"
    .byte con_катсцена_задержка, $14
    .text " Carlos Santan"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "a...@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $3B
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "@Ah,"
    .byte con_катсцена_задержка, $0A
    .text " right,"
    .byte con_катсцена_задержка, $0A
    .text " I need"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "to introduce you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "to the team.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $4E
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $06
    .text "@Yeah."
    .byte con_катсцена_задержка, $0F
    .text " Let's go!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte con_катсцена_задержка, $3C
    .byte $F3, $FF, $24, $42
    .byte con_катсцена_задержка, $06
    .byte $F3, $FF, $23, $41
    .byte con_катсцена_задержка, $01
    .byte $F3, $FF, $20, $3F
    .byte $F4, $05
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $00
    .byte con_катсцена_смещение_текста, $05
    .text "Ozora Tsubasa, age 15"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "The showdown between the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "@Super Strikers@ will take"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "place 3 years from now..."
    .byte con_катсцена_номер_звука, $45
    .byte $F4, $04
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte $F4, $07






off_A626_02_карлос_перед_первым_матчем:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $02
    .byte $FB, $01, $15
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $53
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $00
    .byte $F4, $05
    .byte con_катсцена_смещение_текста, $09
    .text "Carlos Santana,"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "Captain of Flamengo FC"
    .byte $F4, $04
    .byte con_катсцена_задержка, $B4
    .byte $F4, $05
    .byte con_катсцена_затереть_текст
    .byte $F4, $04
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "@The rumors say someone"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "remarkable has joined"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "Sao Paulo.@"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@I guess we'll see how"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "good you really ar"
    .byte con_катсцена_скорость_текста, $08
    .text "e...@"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_задний_фон, $19
    .byte $FB, $01, $14
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_скорость_текста, $01
    .byte con_катсцена_смещение_текста, $04
    .text "@...O-"
    .byte con_катсцена_задержка, $14
    .text "zo-"
    .byte con_катсцена_задержка, $14
    .text "ra! "
    .byte con_катсцена_задержка, $28
    .text "Tsu-"
    .byte con_катсцена_задержка, $14
    .text "ba-"
    .byte con_катсцена_задержка, $14
    .text "sa!!@"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "@...O-"
    .byte con_катсцена_задержка, $14
    .text "zo-"
    .byte con_катсцена_задержка, $14
    .text "ra! "
    .byte con_катсцена_задержка, $28
    .text "Tsu-"
    .byte con_катсцена_задержка, $14
    .text "ba-"
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $14
    .text "sa!!@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход





off_A6B4_03_карлос_после_первого_матча:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $02
    .byte $FB, $01, $15
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $5A
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "@So,"
    .byte con_катсцена_задержка, $3C
    .text " the rumor"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "really was tru"
    .byte con_катсцена_скорость_текста, $08
    .text "e...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






off_A6DC_04_цубаса_и_меон:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $02
    .byte $FB, $01, $38
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $57
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $07
    .text "@Let's just see"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "how good you are,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $05
    .byte con_катсцена_смещение_текста, $08
    .text "Ozora Tsubas"
    .byte con_катсцена_скорость_текста, $08
    .text "a...@"
    .byte con_катсцена_задержка, $D0
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $1B
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $46
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $03
    .byte con_катсцена_смещение_текста, $06
    .text "Tsubasa and the rest"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "of the team are training"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "to face Gremio the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "following da"
    .byte con_катсцена_скорость_текста, $08
    .text "y..."
    .byte con_катсцена_задержка, $F0
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_затереть_текст
    .byte $FA, $12
    .byte $FB, $01, $07
    .byte $F7
    .byte $F3, $FF, $00, $17
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $05
    .byte con_катсцена_задержка, $0A
    .text "@You!"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "You're Tsubasa,"
    .byte con_катсцена_задержка, $04
    .text " huh?@"
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_затереть_текст
    .byte $FA, $58
    .byte $FB, $01, $43
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задний_фон, $1C
    .byte $F8, $05
    .byte con_катсцена_задержка, $0A
    .byte $F8, $06
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_скорость_текста, $03
    .byte con_катсцена_смещение_текста, $06
    .text "@Who's asking?@"
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    .byte $FA, $3D
    .byte $FB, $01, $38
    .byte $F7
    .byte $F3, $00
    .byte $FA, $12
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text "@Name's Claudio Meon,"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Gremio's goalkeeper."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "I watched you play"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "yesterday.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@How about a test before"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "tomorrow's match?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $11
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $06
    .text "@What for?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $38
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $02
    .text "@Well"
    .byte con_катсцена_скорость_текста, $08
    .byte con_катсцена_закрыть_рот
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .text " you just might end"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "up suprised"
    .byte con_катсцена_скорость_текста, $08
    .byte con_катсцена_закрыть_рот
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $06
    .text " captain.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $11
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text "@Ok,"
    .byte con_катсцена_задержка, $0A
    .text " Meon."
    .byte con_катсцена_задержка, $0A
    .text " I'll take"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "your challenge on!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $06
    
    
    
    .byte $FB, $01, $38
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $04
    .text "@That's why you're the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "captain,"
    .byte con_катсцена_задержка, $0F
    .text " right?"
    .byte con_катсцена_задержка, $1E
    .text " C'mon!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_задний_фон, $1E
    .byte $FB, $01, $8C
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $03
    .byte con_катсцена_смещение_текста, $05
    .text "@Take your best shot!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_задний_фон, $67
    .byte $FB, $03, $70, $71, $9A
    .byte con_катсцена_номер_звука, $6B
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $07
    .text "@Eat this,"
    .byte con_катсцена_задержка, $06
    .text " Meon!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_затереть_текст
    
    
    
    .byte $FA, $21
    .byte $FB, $02, $73, $74
    .byte $F7
    .byte $F3, $00
    .byte $F5, $03
    .byte con_катсцена_номер_звука, $0E
    .byte con_катсцена_задержка, $28
    .byte $F5, $FF
    .byte $FA, $1F
    .byte $FB, $01, $01
    .byte $F7
    .byte $F3, $FF, $00, $12
    .byte con_катсцена_номер_звука, $03
    .byte $FA, $20
    .byte $F7
    .byte con_катсцена_номер_звука, $04
    .byte con_катсцена_задержка, $35
    .byte $F7
    .byte con_катсцена_номер_звука, $05
    .byte $FA, $56
    .byte $FB, $03, $C0, $A6, $7F
    .byte $F7
    .byte con_катсцена_номер_звука, $03
    .byte con_катсцена_задержка, $1C
    .byte con_катсцена_номер_звука, $03
    .byte con_катсцена_задержка, $1C
    .byte con_катсцена_номер_звука, $03
    .byte con_катсцена_задержка, $1C
    .byte con_катсцена_номер_звука, $2A
    .byte con_катсцена_задержка, $28
    .byte $FA, $23
    .byte $FB, $01, $AE
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $52
    .byte $F5, $08
    .byte con_катсцена_скорость_текста, $01
    .byte con_катсцена_смещение_текста, $06
    ; дополнительные пробелы, иначе сбивается тайминг мерцания цвета и серого экрана
    .text "@What the~~?!@  "
    .byte $F3, $2E
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_затереть_текст
    .byte $FA, $24
    .byte $FB, $01, $37
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $49
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text "@Your Drive Shot won't"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "get past me,"
    .byte con_катсцена_задержка, $1E
    .text " Tsubasa."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "I'm looking forward"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "to tomorrow's match.@"
    .byte con_катсцена_задержка, $78
    
    

    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $22
    .byte $FB, $01, $AF
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $06
    .text "@The Drive Sho"
    .byte con_катсцена_скорость_текста, $08
    .text "t..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $07
    .text "won't work?!@"
    .byte con_катсцена_номер_звука, $57
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






off_A968_05_карлос_и_коимбра:
    .byte $E8
    .byte $01    ; <あ>
    .byte $F9
    .byte $55    ; <ナ>
    .byte $FB
    .byte $01    ; <あ>
    .byte $63    ; <モ>
    .byte $DE
    .byte $E9
    .byte $ED
    .byte $54    ; <ト>
    .byte $DD
    .byte $EF
    .byte $E1
    .byte $40    ; <「>
    .byte $24    ; <や>
    .byte $29    ; <る>
    .byte $15    ; <な>
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $DB
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $14    ; <と>
    .byte $1A    ; <は>
    .byte $FC
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $AD    ; <で>
    .byte $00
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte $F2
    .byte $06    ; <か>
    .byte $E1
    .byte $40    ; <「>
    .byte $5C    ; <フ>
    .byte $6F    ; <ッ>
    .byte $DB
    .byte $00
    .byte $01    ; <あ>
    .byte $1F    ; <ま>
    .byte $02    ; <い>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DC
    .byte $FB
    .byte $01    ; <あ>
    .byte $64    ; <ヤ>
    .byte $F2
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $04    ; <え>
    .byte $2F    ; <っ>
    .byte $FC
    .byte $DC
    .byte $FA
    .byte $25    ; <ゆ>
    .byte $FD
    .byte $DD
    .byte $F8
    .byte $0F    ; <そ>
    .byte $DC
    .byte $ED
    .byte $15    ; <な>
    .byte $F4
    .byte $03    ; <う>
    .byte $FB
    .byte $01    ; <あ>
    .byte $45    ; <オ>
    .byte $DA
    .byte $F4
    .byte $01    ; <あ>
    .byte $F2
    .byte $08    ; <く>
    .byte $DD
    .byte $E1
    .byte $40    ; <「>
    .byte $62    ; <メ>
    .byte $45    ; <オ>
    .byte $6E    ; <ン>
    .byte $A4    ; <ご>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $16    ; <に>
    .byte $00
    .byte $13    ; <て>
    .byte $0A    ; <こ>
    .byte $A7    ; <ず>
    .byte $29    ; <る>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $AD    ; <で>
    .byte $1A    ; <は>
    .byte $FC
    .byte $0B    ; <さ>
    .byte $07    ; <き>
    .byte $A0    ; <が>
    .byte $00
    .byte $05    ; <お>
    .byte $23    ; <も>
    .byte $02    ; <い>
    .byte $24    ; <や>
    .byte $27    ; <ら>
    .byte $2A    ; <れ>
    .byte $29    ; <る>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte $FD
    .byte $FA
    .byte $4A    ; <コ>
    .byte $FB
    .byte $01    ; <あ>
    .byte $61    ; <ム>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $FA
    .byte $49    ; <ケ>
    .byte $E1
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $00
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $1A    ; <は>
    .byte $78    ; <?>
    .byte $FC
    .byte $DE
    .byte $FD
    .byte $FB
    .byte $01    ; <あ>
    .byte $60    ; <ミ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $00
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $7A    ; <、>
    .byte $DB
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $68    ; <リ>
    .byte $45    ; <オ>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $FC
    .byte $DB
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $62    ; <メ>
    .byte $6E    ; <ン>
    .byte $B8    ; <ゴ>
    .byte $19    ; <の>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $1A    ; <は>
    .byte $FC
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $23    ; <も>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte $FD
    .byte $FB
    .byte $01    ; <あ>
    .byte $61    ; <ム>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $02    ; <い>
    .byte $03    ; <う>
    .byte $02    ; <い>
    .byte $20    ; <み>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte $FD
    .byte $FB
    .byte $01    ; <あ>
    .byte $60    ; <ミ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $52    ; <ツ>
    .byte $C3    ; <バ>
    .byte $4B    ; <サ>
    .byte $3F    ; <•>
    .byte $45    ; <オ>
    .byte $45    ; <オ>
    .byte $BD    ; <ゾ>
    .byte $67    ; <ラ>
    .byte $EF
    .byte $3F    ; <•>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DC
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $12    ; <つ>
    .byte $1A    ; <は>
    .byte $00
    .byte $1F    ; <ま>
    .byte $AA    ; <だ>
    .byte $00
    .byte $A6    ; <じ>
    .byte $B1    ; <ぶ>
    .byte $2E    ; <ん>
    .byte $A0    ; <が>
    .byte $23    ; <も>
    .byte $12    ; <つ>
    .byte $FC
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $00
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $2D    ; <を>
    .byte $0C    ; <し>
    .byte $27    ; <ら>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte $FD
    .byte $E1
    .byte $40    ; <「>
    .byte $23    ; <も>
    .byte $0C    ; <し>
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
    .byte $14    ; <と>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $FC
    .byte $22    ; <め>
    .byte $A5    ; <ざ>
    .byte $22    ; <め>
    .byte $10    ; <た>
    .byte $14    ; <と>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte $EF
    .byte $3F    ; <•>
    .byte $EF
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DC
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $16    ; <に>
    .byte $00
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $22    ; <め>
    .byte $1A    ; <は>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte $FD
    .byte $FB
    .byte $01    ; <あ>
    .byte $61    ; <ム>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $40    ; <「>
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
    .byte $78    ; <?>
    .byte $FC
    .byte $DE
    .byte $FD
    .byte $FB
    .byte $01    ; <あ>
    .byte $60    ; <ミ>
    .byte $F7
    .byte $F3
    .byte $00
    .byte $E1
    .byte $DC
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte $23    ; <も>
    .byte $00
    .byte $02    ; <い>
    .byte $A7    ; <ず>
    .byte $2A    ; <れ>
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $29    ; <る>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte $FC
    .byte $DB
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $1F    ; <ま>
    .byte $AD    ; <で>
    .byte $00
    .byte $0E    ; <せ>
    .byte $02    ; <い>
    .byte $A8    ; <ぜ>
    .byte $02    ; <い>
    .byte $00
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $29    ; <る>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $15    ; <な>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte $ED
    .byte $16    ; <に>
    .byte $F4
    .byte $03    ; <う>
    .byte $F4
    .byte $05    ; <お>
    .byte $DE
    .byte $FD
    .byte $FA
    .byte $54    ; <ト>
    .byte $FB
    .byte $01    ; <あ>
    .byte $05    ; <お>
    .byte $F4
    .byte $01    ; <あ>
    .byte $ED
    .byte $46    ; <カ>
    .byte $F4
    .byte $04    ; <え>
    .byte $DF
    .byte $DF
    .byte $E1
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $12    ; <つ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $DE
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $23    ; <も>
    .byte $19    ; <の>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $78    ; <?>
    .byte $FC
    .byte $DE
    .byte $1F    ; <ま>
    .byte $29    ; <る>
    .byte $AD    ; <で>
    .byte $00
    .byte $0D    ; <す>
    .byte $B2    ; <べ>
    .byte $13    ; <て>
    .byte $2D    ; <を>
    .byte $0C    ; <し>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $15    ; <な>
    .byte $FC
    .byte $08    ; <く>
    .byte $11    ; <ち>
    .byte $B1    ; <ぶ>
    .byte $28    ; <り>
    .byte $AA    ; <だ>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte $FC
    .byte $DE
    .byte $FD
    .byte $E1
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $16    ; <に>
    .byte $00
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $12    ; <つ>
    .byte $A0    ; <が>
    .byte $00
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $FC
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
    .byte $14    ; <と>
    .byte $1A    ; <は>
    .byte $FC
    .byte $DB
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $FC
    .byte $DE
    .byte $ED
    .byte $31    ; <ゅ>
    .byte $DE
    .byte $EA
    .byte $FF
