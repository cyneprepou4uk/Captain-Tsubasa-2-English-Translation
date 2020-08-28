.segment "BANK_30"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

    .word off_AF35_17_цубаса_читает_письмо
    .word off_B159_18_мисаки_и_пьер_перед_матчем
    .word off_B1CE_19_цубаса_после_победы_над_францией






off_AF35_17_цубаса_читает_письмо:
    .byte $E8, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_задний_фон, $12
    .byte $FA, $13
    .byte $FB, $01, $16
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $48
    .byte con_катсцена_смещение_текста, $08
    .byte con_катсцена_задержка, $14
    .text "@Hi Tsubasa!@"
    .byte con_катсцена_задержка, $3C
    .byte $FB, $01, $12
    .byte $F3, $FF, $00, $0C
    .byte con_катсцена_задержка, $14
    .byte $F5, $08
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "@Ah,"
    .byte con_катсцена_задержка, $1E
    .byte $FB, $01, $66
    .byte con_катсцена_задержка, $0A
    .text " Yoko!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $2B
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $3C
    .byte $FB, $01, $2A
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $07
    .text "@It seems you've"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "been doing well.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $05
    .text "@Mikami said you flew"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "home."
    .byte con_катсцена_задержка, $1E
    .text " What on earth"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "have you been up"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "to until now?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $2A
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $05
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $01
    .byte con_катсцена_закрыть_рот
    .text " @O"
    .byte con_катсцена_закрыть_рот
    .text "h, "
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $14
    .text "I can't say"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $0A
    .byte $FB, $01, $2B
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $08
    .byte con_катсцена_смещение_текста, $07
    .text "yet."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text " But you'll"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "sure be surprised"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "when you find out~@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte $FB, $01, $12
    .byte $F7
    .byte $F3, $8C
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $07
    .text "@Uh... "
    .byte con_катсцена_задержка, $3C
    .byte $FB, $01, $66
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_скорость_текста, $08
    .text "OK,"
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_скорость_текста, $04
    .text " then.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $14
    
    
    
    .byte $FB, $01, $2B
    .byte $F7
    .byte $F3, $00
    .byte $FA, $2C
    .byte con_катсцена_задержка, $3C
    .byte $FB, $01, $2A
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $02
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $01
    .byte con_катсцена_закрыть_рот
    .text " @A"
    .byte con_катсцена_закрыть_рот
    .text "h, "
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $0F
    .text "and one other thing."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "You see,"
    .byte con_катсцена_задержка, $28
    .text " I met Roberto"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "a while back."
    .byte con_катсцена_задержка, $3C
    .text " And so"
    .byte con_катсцена_скорость_текста, $08
    .byte con_катсцена_закрыть_рот
    .text "...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $02, $B6, $8A
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $03
    .text "@Here,"
    .byte con_катсцена_задержка, $1E
    .text " this is for you"
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $65
    .byte $FB, $01, $3E
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $55
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $02
    .text "@Tsubasa,"
    .byte con_катсцена_задержка, $1E
    .text " by now you may"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "know I'm coaching Brazil's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "U-20 squad."
    .byte con_катсцена_задержка, $28
    .text " That puts"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "us on opposing sides.@"
    .byte con_катсцена_мячик
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_смещение_текста, $06
    .text "@But you're still"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "my student,"
    .byte con_катсцена_задержка, $1E
    .text " so I'm"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "going to tell you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "just one thing.@"
    .byte con_катсцена_мячик
    .byte con_катсцена_затереть_текст
    
    
    ;;;;;;;;;;;;
    ;;;;;;;
    .byte con_катсцена_смещение_текста, $05
    .text "@Tsubasa,"
    .byte con_катсцена_задержка, $14
    .text " you say you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "want to become a pro."
    .byte con_катсцена_задержка, $3C
    .byte $FB, $01, $3D
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Prove it to me"
    .byte con_катсцена_скорость_текста, $02
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    
    
    
    .byte $FA, $50
    .byte $FB, $01, $6C
    .byte $F7
    .byte $F3, $00
    .byte $F5, $0C
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $08
    .text "...by becoming a"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "Super Striker!!@"
    .byte con_катсцена_задержка, $B3
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    .byte $F3, $00
    .byte con_катсцена_новая_строка
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $0C
    .byte $3A, $3B
    .byte con_катсцена_задержка, $14
    .text " Roberto Hongo"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задний_фон, $12
    .byte $FB, $01, $6A
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $49
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $07
    .text "(@Super Striker?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $05
    .byte con_катсцена_смещение_текста, $08
    .text "Roberto,"
    .byte con_катсцена_задержка, $3C
    .text " what's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "gotten into you?)"
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






off_B159_18_мисаки_и_пьер_перед_матчем:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte $FB, $01, $5C
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_номер_звука, $53
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $03
    .text "(It's been three years,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Misaki."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $06
    .text " Three years"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "and now you appear before"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "me,"
    .byte con_катсцена_задержка, $1E
    .text " to meet my challenge.)"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte $FB, $01, $1E
    .byte $F7
    .byte $F3, $FF, $00, $0C
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $04
    .text "(Pierre,"
    .byte con_катсцена_задержка, $1E
    .text " this is where"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "we settle things."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "Not just you and me", $3A, $3B
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "but Japan and France!)"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






off_B1CE_19_цубаса_после_победы_над_францией:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $47
    .byte $F5, $04
    .byte $F8, $0E
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $05
    .text "@That was a super"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "game,"
    .byte con_катсцена_задержка, $0F
    .text " eh?"
    .byte con_катсцена_задержка, $28
    .text " France's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "techniques were"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "making my head spin!@ "
    .byte $F8, $02
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $04
    .text "@No kidding,"
    .byte con_катсцена_задержка, $0F
    .text " Ishi", $3A, $3B, "@ "
    .byte $F8, $02
    .byte con_катсцена_задержка, $78
    .byte $FB, $01, $6A
    .byte con_катсцена_номер_звука, $43
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $04
    .text "(Super?"
    .byte con_катсцена_задержка, $50
    .text " Why does that"
    .byte con_катсцена_скорость_текста, $08
    .text "...)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $50
    .byte $FB, $01, $08
    .byte $F5, $FF
    .byte con_катсцена_задержка, $0F
    
    
    
    .byte $FA, $23
    .byte $FB, $01, $AE
    .byte $F7
    .byte $F3, $00
    .byte $F5, $08
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_номер_звука, $52
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $0C
    .text "*gasp*"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    
    
    
    .byte $FA, $10
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $FA, $11
    .byte $F5, $04
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $53
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $08
    .byte con_катсцена_смещение_текста, $05
    .text "@Super"
    .byte con_катсцена_закрыть_рот
    .text "..."
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .text " so"
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_скорость_текста, $08
    .text " THAT'S "
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "what Roberto meant!@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $24
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $0C
    .text "@Huh?!@"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $19
    .byte $FB, $01, $14
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte $F3, $FF, $00, $0C
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $07
    .text "(My old coach and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "I used to talk"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "about what it"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "took to become"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $08
    .text "both a playmaker"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "and a goalscorer -"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "a Super Striker.)"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $10
    .byte $FB, $01, $6A
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $05
    .text "(He sent me a message"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "recently,"
    .byte con_катсцена_задержка, $1E
    .text " to jog my"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "memory about it"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $2E
    .byte $FB, $01, $52
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "...and"
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_задержка, $0F
    .text " @Super Striker@"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "must be referring to that"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "1,000-"
    .byte con_катсцена_задержка, $0F
    .text "goal legend,"
    .byte con_катсцена_задержка, $28
    .text " Jairo.)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $03
    .text "(Or rather,"
    .byte con_катсцена_задержка, $3C
    .text " what he used"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "to get all those goals"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $3C
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    
    
    
    .byte $FA, $23
    .byte $FB, $01, $AD
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_номер_звука, $57
    .byte $F5, $08
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_скорость_текста, $03
    .byte con_катсцена_смещение_текста, $03
    .text "...the Cyclone technique!)"
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход


