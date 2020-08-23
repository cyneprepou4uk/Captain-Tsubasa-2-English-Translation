.segment "BANK_04"
.include "copy_bank_ram.inc"
; тут только данные
; поинтеры в 0x000485
; перемещать код можно только после начальной таблицы поинтеров

    .word off_B731_0F_мисаки_победил_хюгу




off_B731_0F_мисаки_победил_хюгу:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $2B
    .byte $FB, $01, $43
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $4E
    .byte con_катсцена_вид_окна_текста, $00
    .byte con_катсцена_комментатор, $02
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "It's been a long"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "tournament, but"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "the High School"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Championship is over!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "After a hard-fought"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "battle, Nankatsu"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "High holds the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "championship pennant"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "for a second year!"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Just listen to the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "crowd, it's going"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "wild!"
; скрытая катсцена
    .byte $F4, $06, $04
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_комментатор, $FF
    .byte $EE
    .byte con_катсцена_задний_фон, $0E
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_смещение_текста, $04
    .text "@We did it!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "@The title is ours!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "@Nankatsu are champions!@"
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $1A
    .byte $FB, $01, $03
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte $FA, $10
    .byte con_катсцена_смещение_текста, $05
    .text "@Huh. You guys pulled"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "it off, even without"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "your golden boy.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $19
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $03
    .text "@Tsubasa's one player."
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "We all worked together,"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "and that's why we won.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $03
    .text "@It might have gone"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "differently if you fought"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "by joining efforts with"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "your teammates, Kojiro...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $31
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $0D
    .byte con_катсцена_закрыть_рот
    .text "@Hm"
    .byte con_катсцена_закрыть_рот
    .text "ph.@"
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $06
    .byte $FB, $01, $A3
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $25
    .byte $F5, $08
    .byte con_катсцена_задержка, $14
    .byte $F7
    .byte $F5, $04
    .byte con_катсцена_вид_окна_текста, $00
    .byte con_катсцена_комментатор, $02
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "A good show of"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "sportsmanship by"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "both team captains,"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "bringing the rivalry"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "between high schools"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "to a fitting close!"
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_комментатор, $FF
    .byte $EE
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte $FB, $01, $31
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $02
    .text "@I know it won't be high"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "school-level from here on."
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "I'll work with everyone"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "on our nation's team.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $19
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $03
    .text "@With the Tiger of Toho"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "on our side, the other"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "teams better watch out!@"
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $47
    .byte con_катсцена_задний_фон, $2F
    .byte $FB, $01, $1F
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_вид_окна_текста, $00
    .byte con_катсцена_комментатор, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Nankatsu's captain"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Misaki Tarou has"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "been handed the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Championship Pennant,"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "and is waving it"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "high and proud!"
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_комментатор, $02
    .byte con_катсцена_смещение_текста, $09
    .text "The reporters are"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "flocking around"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Misaki down on"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "the pitch."
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "Nankatsu has shown an"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "incredible fighting"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "spirit in securing"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "their second title!"
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_комментатор, $FF
    .byte $EE
    .byte con_катсцена_задний_фон, $02
    .byte $FB, $01, $42
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $05
    .text "(That's just about"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "everyone, then -"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "the rest is in your"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "hands, Katagiri.)"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $03
    .text "(In two short weeks the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Japan Cup will put them"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "through their paces.)"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $06
    .text "(I know these young"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "men will rise to"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "the challenge...)"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_задний_фон, $2F
    .byte $FB, $01, $1F
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $53
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_скорость_текста, $03
    .byte con_катсцена_смещение_текста, $07
    .text "As the elation of"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "victory starts to fade,"
    .byte con_катсцена_мячик
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "Japan U-20 will be hard"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "at work training for"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "the upcoming Japan Cup."
    .byte con_катсцена_мячик
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "Who will be the lucky"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "players to earn a"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "place in the squad?"
    .byte con_катсцена_мячик
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_смещение_текста, $07
    .text "And what kinds of"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "challenges are"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "waiting for them?"
    .byte con_катсцена_мячик
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "For now, let's cross the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "ocean again, back to South"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "America and the conclusion"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "of the Rio Cup..."
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задний_фон, $06
    .byte $FB, $01, $A3
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $25
    .byte $F5, $08
    .byte con_катсцена_задержка, $14
    .byte $F7
    .byte $F5, $04
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $10
    .byte $FA, $11
    .byte $FB, $01, $4E
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $4D
    .byte $F5, $04
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $03
    .text "@Thanks,"
    .byte con_катсцена_задержка, $0F
    .text " Carlos."
    .byte con_катсцена_задержка, $14
    .text " He's the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "reason I'm here at all.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $63
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $04
    .text "@Hey."
    .byte con_катсцена_задержка, $1E
    .text " We'll meet again,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "you and I,"
    .byte con_катсцена_задержка, $14
    .text " in the pro"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "leagues."
    .byte con_катсцена_задержка, $1E
    .text " But when that"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "happens,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $08
    .text " I'LL "
    .byte con_катсцена_скорость_текста, $04
    .text "win.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $4E
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $06
    .text "@I'm looking"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "forward to it.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $06
    .text "@Tsubasa!"
    .byte $FB, $01, $12
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $07
    .text "We need to talk!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_номер_звука, $01
    
    
    
    
    .byte con_катсцена_задержка, $3C
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $23
    .byte $FB, $01, $AE
    .byte $F7
    .byte $F3, $00
    .byte $F5, $08
    .byte con_катсцена_номер_звука, $43
    .byte con_катсцена_задержка, $78
    
    
    
    .byte $FA, $10
    .byte $FB, $01, $40
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $52
    .byte con_катсцена_задержка, $28
; требуется чтобы был нормальный задний фон для Йоко
    .byte $FA, $11
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $05
    .text "@Mister Katagiri,"
    .byte con_катсцена_задержка, $14
    .text " what"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "are you doing here?!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_номер_звука, $46
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $06
    .text "@I've come all this"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "way to ask you to"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "join Japan U-20.@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $06
    .text "@Say again?!@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $03
    .text "@You know that three"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "months from now the U-20"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "World Cup is being held"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "in Brazil, right?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $03
    .text "@Japan's bid was confirmed."
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "So was West Germany's -"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "the same team you helped"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "beat in the finals three"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "years back.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $03
    .text "@You would lead Japan"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "again, at position #10.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "@Can we count on", $3A, $3B, "@"
    .byte $F8, $02
    .byte con_катсцена_задержка, $0A
    .byte $F5, $08
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "@Now just a moment,"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "brother! He's a"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "player on MY team!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $2A
    .byte $F7
    .byte $F3, $00
    .byte $FA, $10
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $0A
    .text "@Y-Yoko?!@"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $0A
    .byte con_катсцена_закрыть_рот
    .text "@Hm"
    .byte con_катсцена_закрыть_рот
    .text "ph.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $03
    .text "@Tsubasa, before you even"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "think about leaving us,"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Sao Paulo's playing the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Japan Cup in two weeks.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $11
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_смещение_текста, $05
    .text "@Uh... the Japan Cup?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $2A
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_смещение_текста, $05
    .text "@It's an international"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "youth tournament"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "in Japan.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $06
    .text "@Five other foreign"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "countries have been"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "invited to compete.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@This is a good way for"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "our own U-20 squad to"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "learn to work together.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@You know, Hamburger SV"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "and their goalkeeper,"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "Wakabayashi, are"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "already participating.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $03
    .text "@So... you all could test"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "your skills against both"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Wakabayashi and the rest"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "of Japan U-20!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $4E
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_смещение_текста, $04
    .text "@Against Wakabayashi and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .byte $FB, $01, $11
    .text "Misaki? Hold on! Yoko,"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "Katagiri", $3A, $3B, "I can't"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "go back yet!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "@I promised myself"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "that I won't return"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "to Japan before I've"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "made it as a pro...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FA, $0F
    .byte $FB, $01, $43
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_смещение_текста, $06
    .text "@Hey, didn't we just"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "win the Rio Cup?!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $06
    .text "@You're saying we"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "aren't good enough"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "to win another?!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FA, $10
    .byte $FB, $01, $40
    .byte $F7
    .byte $F3, $00
    .byte $FA, $11
    .byte con_катсцена_смещение_текста, $03
    .text "@Japan U-20 needs you and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "your skills. Tsubasa, you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "must go home to Japan and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "join the team!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $10
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_смещение_текста, $09
    .text "@Hey", $3A, $3B, "guys...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $4D
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_смещение_текста, $02
    .text "@Tsubasa, you'll always"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "have a place in Sao Paulo."
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "But it looks like a lot of"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "other people need you.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $09
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_смещение_текста, $06
    .text "@Roberto... If you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "feel that strongly"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "about it...@"
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $10
    .byte con_катсцена_смещение_текста, $04
    .text "@...then I'll return"
    .byte con_катсцена_номер_звука, $4C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "to my home team... and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "lead it to victory!@"
    .byte con_катсцена_задержка, $1E
    .byte $F5, $04
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $4D
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_смещение_текста, $06
    .text "@Atta boy, Tsubasa.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $10
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_смещение_текста, $04
    .text "@But! Mister Katagiri,"
    .byte $FB, $01, $09
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "until I do, Sao Paulo"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "is my home team.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@That means we WILL be"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "taking the Japan Cup!@"
    .byte $FB, $01, $10
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $40
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_смещение_текста, $06
    .text "@Loyal to the team"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "as ever, huh...?"
    .byte $F8, $02
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $63
    .byte $F7
    .byte $F3, $00
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $3C
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $28    ; <り>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
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
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $13
    .byte $F7
    .byte $F3, $00
    .byte $40    ; <「>
    .byte $46    ; <カ>
    .byte $69    ; <ル>
    .byte $6B    ; <ロ>
    .byte $4D    ; <ス>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка
    .byte $1E    ; <ほ>
    .byte $FB, $01, $11
    .byte con_катсцена_задержка, $50
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $00
    .byte $06    ; <か>
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $A7    ; <ず>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
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
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $63
    .byte $F7
    .byte $F3, $00
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $01    ; <あ>
    .byte con_катсцена_задержка, $28
    .byte $00
    .byte $1F    ; <ま>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $A8    ; <ぜ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $0F
    .byte $FB, $01, $0C
    .byte $F7
    .byte $F3, $00
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
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
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
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_задержка, $3C
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
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_выход






.export off_0x040005_скрытая_катсцена_из_0F
off_0x040005_скрытая_катсцена_из_0F:
    .byte $E8, $01
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $43
    .byte con_катсцена_комментатор, $01
    .byte con_катсцена_смещение_текста, $09
    .text "Hey! The music just"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "stopped..."
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Could it be...?"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $50
    
    
    
    .byte $FB, $01, $C2
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $27
    .byte con_катсцена_комментатор, $05
    .byte con_катсцена_смещение_текста, $09
    .text "Oh, of course!"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_номер_звука, $3C
    .byte con_катсцена_комментатор, $02
    .text " It's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "our favorite Banzai"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "boy once more,"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Mighty Bomb Jack!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "The fans sure love"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "him, and he loves"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "his fans!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "He's a good guy!"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .byte con_катсцена_комментатор, $04
    .text "Yo, Japan's best!"
    .byte con_катсцена_мячик
    .byte con_катсцена_частично_затереть_текст
    
    
; таймер зависания джека в воздухе 0x0147BD
    .byte $FB, $02, $C5, $C4
    .byte con_катсцена_номер_звука, $04
    .byte con_катсцена_комментатор, $01
    .byte con_катсцена_смещение_текста, $09
    .text "Whoo,"
    .byte con_катсцена_задержка, $08
    .text " look at him go!"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Higher and"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_комментатор, $05
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Hey,"
    .byte con_катсцена_задержка, $08
    .text " wait."
    .byte con_катсцена_задержка, $0F
    .text " I saw you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "clinging there!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "Come down and stop"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "messing around!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $20
    
    
    
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $02
    .byte con_катсцена_номер_звука, $64
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_комментатор, $01
    .byte con_катсцена_смещение_текста, $09
; пустой текст чтобы сменить эмоцию комментатора
    .text " "
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "Well,"
    .byte con_катсцена_задержка, $0F
    .text " folks"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "I sure asked for it."
    .byte con_катсцена_номер_звука, $56
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_номер_звука, $4E
    .byte $F4, $07
