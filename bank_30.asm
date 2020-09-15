.segment "BANK_30"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

    .word off_AF35_17_цубаса_читает_письмо
    .word off_B159_18_мисаки_и_пьер_перед_матчем
    .word off_B1CE_19_цубаса_после_победы_над_францией
    .word off_B398_1A_цубаса_планирует_циклон_1
    .word off_B4F1_1B_цубаса_планирует_циклон_2
    .word off_B71E_1C_цубаса_изучил_циклон





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
    .text "@Uh..."
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
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $0F
    .text " Ishi", $3A, $3B, "@ "
    .byte $F8, $02
    .byte con_катсцена_задержка, $50
    .byte $FB, $01, $6A
    .byte con_катсцена_номер_звука, $43
    .byte con_катсцена_задержка, $3C
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
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста, $04
    .text "so"
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
    .byte con_катсцена_смещение_текста, $05
    .text "(That was always your"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "goal,"
    .byte con_катсцена_задержка, $14
    .text " Roberto -"
    .byte con_катсцена_задержка, $1E
    .text " to"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "push me to not only"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "be a striker,"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $08
    .text "but a playmaker"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $06
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
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "(That was why you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "were so insistent"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "in your message.)"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $2E
    .byte $FB, $01, $52
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text "(Knowing you,"
    .byte con_катсцена_задержка, $1E
    .text " the only"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "player like that would"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "be the 1,000-"
    .byte con_катсцена_задержка, $0F
    .text "goal"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "legend,"
    .byte con_катсцена_задержка, $28
    .text " Jairo"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "..."
    .byte con_катсцена_скорость_текста, $04
    .text "and what he had that"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "enabled him to get them"
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






off_B398_1A_цубаса_планирует_циклон_1:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $27
    .byte $FB, $01, $6A
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_осветление_экрана
    .byte $F5, $0E
    .byte con_катсцена_номер_звука, $46
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $06
    .text "(To become a Super"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "Striker,"
    .byte con_катсцена_задержка, $14
    .text " I'll need"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "to master the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "Cyclone technique.)"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    .byte con_катсцена_смещение_текста, $06
    .text "(But only Jairo ever"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "pulled it off"
    .byte con_катсцена_скорость_текста, $08
    .text "...)"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $64
    .byte $FB, $02, $BD, $9B
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_номер_звука, $04
    .byte $F8, $10
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $02
    .text "(OK -"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text " the Drive Shot puts a"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "fast top spin on the ball"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "as it's rising,"
    .byte con_катсцена_задержка, $1E
    .text " followed"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "by a sudden dip"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_мячик
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_номер_звука, $06
    .byte $F8, $10
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "...but Roberto said"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "that the Cyclone's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "dip is even faster"
    .byte con_катсцена_скорость_текста, $08
    .text "...)"
    .byte con_катсцена_мячик
    .byte con_катсцена_затереть_текст
    
    
    
    .byte $F5, $0D
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $02
    .text "(What if the Cyclone is"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "like a Drive Shot,"
    .byte con_катсцена_задержка, $3C
    .text " only"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "it must be struck using a"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "peculiar rotation effect?)"
    .byte con_катсцена_мячик
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $27
    .byte $FB, $01, $6A
    .byte con_катсцена_осветление_экрана
    .byte $F5, $0E
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text "(Well,"
    .byte con_катсцена_задержка, $1E
    .text " it won't come"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "to me in a single"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "night."
    .byte con_катсцена_задержка, $3C
    .text " Still,"
    .byte con_катсцена_задержка, $28
    .text " where"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "do I even start?)"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






off_B4F1_1B_цубаса_планирует_циклон_2:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte $FB, $01, $52
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $5A
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $06
    .text "(I haven't figured"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "out the Cyclone's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "secret"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_скорость_текста, $04
    .text "yet.)"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $14
    
    
    
    .byte con_катсцена_смещение_текста, $03
    .text "(It's not about changing"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "the Drive Shot by itself."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "It just can't be -"
    .byte con_катсцена_задержка, $1E
    .text " the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "angle's still too broad.)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    
    
    
    .byte con_катсцена_задний_фон, $26
    .byte $FB, $01, $6A
    .byte con_катсцена_осветление_экрана
    .byte $F5, $0E
    .byte con_катсцена_номер_звука, $55
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $05
    .text "(Jairo"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .text "you scored"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "1,000 goals without"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "using headers."
    .byte con_катсцена_задержка, $3C
    .text " Were"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "you just that good?)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_смещение_текста, $06
    .text "(No,"
    .byte con_катсцена_задержка, $14
    .text " that's not it"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $07
    .text "Your headers were"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "weak,"
    .byte con_катсцена_задержка, $1E
    .text " so you had"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "to compensate.)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "(That's why you had"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "to create the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Cyclone technique"
    .byte con_катсцена_скорость_текста, $08
    .text "...)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $50
    
    
    
    .byte $FB, $01, $67
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $07
    .text "(..."
    .byte con_катсцена_скорость_текста, $02
    .text "Hmm,"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $06
    .text " HAD"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_скорость_текста, $04
    .text " to."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "Just like when"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "Meon stopped my"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "Drive Shot,"
    .byte con_катсцена_задержка, $1E
    .text " I"
    .byte con_катсцена_скорость_текста, $08
    .text "...)"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
; уменьшен тайминг падающей звезды
    .byte $FB, $02, $6A, $92
    .byte con_катсцена_задержка, $B4
    .byte $FB, $01, $08
    .byte $F5, $FF
    
    
    
    .byte $FA, $23
    .byte $FB, $01, $AE
    .byte $F7
    .byte $F3, $00
    .byte $F5, $09
    .byte con_катсцена_номер_звука, $43
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $49
    .byte con_катсцена_скорость_текста, $03
    .byte con_катсцена_смещение_текста, $03
    .text "(Wait a moment!"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .text " The cross"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "pass is one of the most"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "basic strategies on"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "the field.)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "(What were you doing"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "when one came at you?"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "If floating the ball"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "with your head is out,"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "then getting to 1,000"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "goals with only long"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "shots should be"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "nearly impossible"
    .byte con_катсцена_скорость_текста, $08
    .text "...)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "(It's something you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "could also do at close"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "range,"
    .byte con_катсцена_задержка, $1E
    .text " even inside the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "penalty area"
    .byte con_катсцена_скорость_текста, $08
    .text "...)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $03
    .text "(So"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .text "if whatever the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Cyclone was"
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_скорость_текста, $06
    .text " ACTED "
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_скорость_текста, $04
    .text "like"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "a header in some way,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "your handicap disappears!)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $06
    .text "(Yes,"
    .byte con_катсцена_задержка, $14
    .text " I can almost"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "see it!"
    .byte con_катсцена_задержка, $1E
    .text " I'm going"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "to make this work!)"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte $FB, $01, $AD
    .byte $F5, $09
    .byte con_катсцена_номер_звука, $57
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_смещение_текста, $03
    .text "(I"
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_скорость_текста, $06
    .text " WILL "
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_скорость_текста, $04
    .text "figure this out!"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "For Roberto,"
    .byte con_катсцена_задержка, $1E
    .text " for Jairo"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "and for me!)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






off_B71E_1C_цубаса_изучил_циклон:
    .byte $E8, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_задний_фон, $3F
    .byte $FB, $01, $AC
    .byte con_катсцена_номер_звука, $70
    .byte con_катсцена_задержка, $78
    .byte $F8, $11
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $F0
    .byte $F3, $27
    .byte con_катсцена_задержка, $03
    .byte $F3, $0C
    .byte con_катсцена_задержка, $02
    .byte $F3, $27
    .byte con_катсцена_задержка, $03
    .byte $F3, $0C
    .byte con_катсцена_задержка, $0A
    .byte $F3, $11
    .byte con_катсцена_задержка, $06
    .byte $F3, $0C
    .byte con_катсцена_задержка, $03
    .byte $F3, $11
    .byte con_катсцена_задержка, $06
    .byte $F3, $0C
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_задержка, $F0
    .byte $F3, $11
    .byte con_катсцена_задержка, $03
    .byte $F3, $0C
    .byte con_катсцена_задержка, $02
    .byte $F3, $11
    .byte con_катсцена_задержка, $03
    .byte $F3, $0C
    .byte con_катсцена_задержка, $0A
    .byte $F3, $11
    .byte con_катсцена_задержка, $06
    .byte $F3, $0C
    .byte con_катсцена_задержка, $02
    .byte $F3, $11
    .byte con_катсцена_задержка, $06
    .byte $F3, $0C
    .byte con_катсцена_задержка, $78
    .byte $F3, $27
    .byte con_катсцена_задержка, $03
    .byte $F3, $0C
    .byte con_катсцена_задержка, $02
    .byte $F3, $27
    .byte con_катсцена_задержка, $03
    .byte $F3, $0C
    .byte con_катсцена_номер_звука, $30
    .byte $F3, $11
    .byte con_катсцена_задержка, $06
    .byte $F3, $0C
    .byte con_катсцена_задержка, $02
    .byte $F3, $11
    .byte con_катсцена_задержка, $06
    .byte $F3, $0C
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $4B
    .byte con_катсцена_задержка, $F0
    .byte $40    ; <「>
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $1A    ; <は>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $09    ; <け>
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $11    ; <ち>
    .byte $A0    ; <が>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $AA    ; <だ>
    .byte $14    ; <と>
    .byte $00
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $00
    .byte $05    ; <お>
    .byte $23    ; <も>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $AE    ; <ど>
    .byte $00
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $40    ; <「>
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $19    ; <の>
    .byte $1B    ; <ひ>
    .byte $20    ; <み>
    .byte $12    ; <つ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $00
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $19    ; <の>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $0B    ; <さ>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $40    ; <「>
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
    .byte $00
    .byte $BA    ; <ジ>
    .byte $70    ; <ャ>
    .byte $42    ; <イ>
    .byte $6B    ; <ロ>
    .byte $A0    ; <が>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $2D    ; <を>
    .byte $03    ; <う>
    .byte $12    ; <つ>
    .byte $10    ; <た>
    .byte $22    ; <め>
    .byte $19    ; <の>
    .byte $00
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $08    ; <く>
    .byte $03    ; <う>
    .byte $11    ; <ち>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $AD    ; <で>
    .byte $00
    .byte $AA    ; <だ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte con_катсцена_мячик
    .byte $F3, $27
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $0C
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $27
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $0C
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_задержка, $0A
    .byte $F3, $11
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3, $0C
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $11
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $36
    .byte $FB, $02, $73, $74
    .byte $F3, $00
    .byte $F5, $03
    .byte con_катсцена_номер_звука, $0E
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_номер_звука, $10
    .byte $F5, $FF
    .byte $FB, $02, $88, $87
    .byte $F3, $00
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_номер_звука, $5F
    .byte con_катсцена_задержка, $50
    .byte $40    ; <「>
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $16    ; <に>
    .byte $00
    .byte $C3    ; <バ>
    .byte $6F    ; <ッ>
    .byte $48    ; <ク>
    .byte $4D    ; <ス>
    .byte $CE    ; <ピ>
    .byte $6E    ; <ン>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $09    ; <け>
    .byte $13    ; <て>
    .byte con_катсцена_новая_строка
    .byte $A6    ; <じ>
    .byte $B1    ; <ぶ>
    .byte $2E    ; <ん>
    .byte $19    ; <の>
    .byte $1F    ; <ま>
    .byte $03    ; <う>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte $00
    .byte $09    ; <け>
    .byte $28    ; <り>
    .byte $01    ; <あ>
    .byte $A3    ; <げ>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_мячик
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $27    ; <ら>
    .byte $2F    ; <っ>
    .byte $06    ; <か>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $C2    ; <ド>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $C5    ; <ブ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $09    ; <け>
    .byte $29    ; <る>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_мячик
    .byte $FB, $02, $BE, $72
    .byte con_катсцена_номер_звука, $10
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $68
    .byte $FB, $03, $89, $AA, $BF
    .byte con_катсцена_номер_звука, $09
    .byte con_катсцена_осветление_экрана
    .byte $40    ; <「>
    .byte $09    ; <け>
    .byte $28    ; <り>
    .byte $01    ; <あ>
    .byte $A3    ; <げ>
    .byte $10    ; <た>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte con_катсцена_номер_звука, $6B
    .byte $00
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $08    ; <く>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $19    ; <の>
    .byte $4D    ; <ス>
    .byte $CE    ; <ピ>
    .byte $7D    ; <ー>
    .byte $C2    ; <ド>
    .byte $14    ; <と>
    .byte $00
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $C2    ; <ド>
    .byte $67    ; <ラ>
    .byte $42    ; <イ>
    .byte $C5    ; <ブ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte con_катсцена_номер_звука, $11
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $19    ; <の>
    .byte $CD    ; <パ>
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $6B
    .byte con_катсцена_мячик
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $2F    ; <っ>
    .byte $12    ; <つ>
    .byte $19    ; <の>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $A0    ; <が>
    .byte $00
    .byte $1B    ; <ひ>
    .byte $14    ; <と>
    .byte $12    ; <つ>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $1A    ; <は>
    .byte $00
    .byte $21    ; <む>
    .byte $13    ; <て>
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte $11    ; <ち>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $2D    ; <を>
    .byte $1B    ; <ひ>
    .byte $22    ; <め>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $29    ; <る>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_мячик
    .byte $F3, $FF, $25, $43
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_затемнение_экрана
    .byte $FA, $48
    .byte $FB, $01, $35
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $0A    ; <こ>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $26    ; <よ>
    .byte $15    ; <な>
    .byte $06    ; <か>
    .byte $16    ; <に>
    .byte $00
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $2D    ; <を>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FA, $53
    .byte $FB, $01, $AB
    .byte $F7
    .byte $F3, $00
    .byte $F8, $11
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $09    ; <け>
    .byte $AE    ; <ど>
    .byte con_катсцена_задержка, $28
    .byte $00
    .byte $15    ; <な>
    .byte $20    ; <み>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $A6    ; <じ>
    .byte $30    ; <ゃ>
    .byte con_катсцена_новая_строка
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $A0    ; <が>
    .byte $00
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $2D    ; <を>
    .byte $03    ; <う>
    .byte $12    ; <つ>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte $F3, $27
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $0C
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $27
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $0C
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_задержка, $0A
    .byte $F3, $11
    .byte con_катсцена_задержка
    .byte $06    ; <か>
    .byte $F3, $0C
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $11
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_затереть_текст
    .byte $FA, $05
    .byte $FB, $01, $A4
    .byte $F7
    .byte $F3, $FF, $13, $01
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte con_катсцена_номер_звука, $01
    .byte $F5, $09
    .byte $0C    ; <し>
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_затереть_текст
    .byte $FA, $21
    .byte $FB, $02, $73, $74
    .byte $F7
    .byte $F3, $00
    .byte $F5, $03
    .byte con_катсцена_номер_звука, $0E
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_номер_звука, $10
    .byte $F5, $FF
    .byte $FA, $02
    .byte $FB, $01, $5B
    .byte $F7
    .byte $F3, $00
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $74    ; <ィ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_затереть_текст
    .byte $FA, $09
    .byte $FB, $01, $43
    .byte $F7
    .byte $F3, $FF, $03, $11
    .byte $F5, $07
    .byte con_катсцена_номер_звука, $0E
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_номер_звука, $0B
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_номер_звука, $09
    .byte con_катсцена_задержка, $3C
    .byte $F5, $FF
    .byte $F3, $FF, $25, $43
    .byte con_катсцена_номер_звука, $60
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_номер_звука, $61
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_номер_звука, $24
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_номер_звука, $24
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_задержка, $F0
    .byte $FA, $3E
    .byte $FB, $02, $A7, $A8
    .byte $F8, $12
    .byte $F7
    .byte $FA, $41
    .byte $F8, $11
    .byte $F3, $FF, $28, $44
    .byte con_катсцена_задержка, $50
    .byte $F3, $FF, $29, $45
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $70
    .byte $F3, $FF, $2A, $1E
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_скорость_текста
    .byte $0C    ; <し>
    .byte $40    ; <「>
    .byte $AD    ; <で>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста
    .byte $06    ; <か>
    .byte $AD    ; <で>
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $45
    .byte con_катсцена_задержка, $3C
    .byte $F3, $2B
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $2A
    .byte con_катсцена_задержка
    .byte $02    ; <い>
    .byte $F3, $2B
    .byte con_катсцена_задержка
    .byte $03    ; <う>
    .byte $F3, $2A
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $FA, $23
    .byte $FB, $01, $AD
    .byte $F7
    .byte $F3, $00
    .byte $F5, $09
    .byte con_катсцена_номер_звука, $30
    .byte $40    ; <「>
    .byte $4B    ; <サ>
    .byte $42    ; <イ>
    .byte $48    ; <ク>
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $A0    ; <が>
    .byte con_катсцена_задержка, $14
    .byte $00
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $0E    ; <せ>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $A9    ; <ぞ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $F5, $09
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход

