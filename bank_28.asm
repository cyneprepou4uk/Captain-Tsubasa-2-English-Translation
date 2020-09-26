.segment "BANK_28"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

    .word off_B731_0F_мисаки_победил_хюгу
    .word off_A020_10_цубаса_и_вакабаяши_перед_матчем
    .word off_A099_11_цубаса_и_вакабаяши_после_матча
    .word off_A134_12_цубаса_и_мисаки_перед_матчем



off_B731_0F_мисаки_победил_хюгу:
    .byte con_катсцена_E8, $01
    .byte con_катсцена_задний_фон, $2B
    .byte con_катсцена_FB, $01, $43
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_F5, $04
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $4E
    .byte con_катсцена_вид_окна_текста, $00
    .byte con_катсцена_комментатор, $02
    .byte con_катсцена_смещение_текста, $09
    .text "It's been a long"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "tournament,"
    .byte con_катсцена_задержка, $14
    .text " but"
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
    .text "battle,"
    .byte con_катсцена_задержка, $14
    .text " Nankatsu"
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
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Just listen to the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "crowd,"
    .byte con_катсцена_задержка, $14
    .text " it's going"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "wild!"
; скрытая катсцена
    .byte con_катсцена_F4, $06, $04
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_все
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_комментатор, $FF
    .byte con_катсцена_задний_фон, $0E
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $04
    .text "@We did it!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "@The title is ours!@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "@Nankatsu are champions!@"
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $1A
    .byte con_катсцена_FB, $01, $03
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_F5, $04
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_FA, $10
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $04
    .text " "
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $02
    .text "@Hu"
    .byte con_катсцена_закрыть_рот
    .text "h."
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .text " You guys pulled"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "it off,"
    .byte con_катсцена_задержка, $14
    .text " even without"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "your golden boy.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $19
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $03
    .text "@Tsubasa's one player."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "We all worked together,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "and that's why we won.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
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
    .text "your teammates,"
    .byte con_катсцена_задержка, $1E
    .text " Kojiro"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $31
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
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
    .byte con_катсцена_FB, $01, $A3
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $25
    .byte con_катсцена_F5, $08
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_F7
    .byte con_катсцена_F5, $04
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
    .byte con_катсцена_затереть_все
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_комментатор, $FF
    .byte con_катсцена_задний_фон, $11
    .byte con_катсцена_FA, $10
    .byte con_катсцена_FB, $01, $31
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_F5, $04
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $02
    .text "@I know it won't be high"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "school-level from here on."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "I'll work with everyone"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "on our nation's team.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $19
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $03
    .text "@With the Tiger of Toho"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "on our side,"
    .byte con_катсцена_задержка, $1E
    .text " the other"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "teams better watch out!@"
    .byte con_катсцена_задержка, $78
    
    
    
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
    .byte con_катсцена_FB, $01, $1F
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $3C
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
    .byte con_катсцена_затереть_все
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_комментатор, $FF
    .byte con_катсцена_задний_фон, $02
    .byte con_катсцена_FB, $01, $42
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $05
    .text "(That's just about"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "everyone,"
    .byte con_катсцена_задержка, $08
    .text " then -"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "the rest is in your"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "hands,"
    .byte con_катсцена_задержка, $1E
    .text " Katagiri.)"
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
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $06
    .text "(I know these young"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "men will rise to"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "the challenge"
    .byte con_катсцена_скорость_текста, $08
    .text "...)"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_задний_фон, $2F
    .byte con_катсцена_FB, $01, $1F
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
    .text "For now,"
    .byte con_катсцена_задержка, $0F
    .text " let's cross the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "ocean again,"
    .byte con_катсцена_задержка, $1E
    .text " back to South"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "America and the conclusion"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "of the Rio Cup"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задний_фон, $06
    .byte con_катсцена_FB, $01, $A3
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $25
    .byte con_катсцена_F5, $08
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_F7
    .byte con_катсцена_F5, $04
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $10
    .byte con_катсцена_FA, $11
    .byte con_катсцена_FB, $01, $4E
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $4D
    .byte con_катсцена_F5, $04
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
    
    
    
    .byte con_катсцена_FB, $01, $63
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
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
    
    
    
    .byte con_катсцена_FB, $01, $4E
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
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
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_FB, $01, $12
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $07
    .text "We need to talk!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_номер_звука, $01
    
    
    
    
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_F5, $FF
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_FA, $23
    .byte con_катсцена_FB, $01, $AE
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F5, $08
    .byte con_катсцена_номер_звука, $43
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_FA, $10
    .byte con_катсцена_FB, $01, $40
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $52
    .byte con_катсцена_задержка, $28
; требуется чтобы был нормальный задний фон для Йоко
    .byte con_катсцена_FA, $11
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
    .text "in Brazil,"
    .byte con_катсцена_задержка, $0F
    .text " right?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $03
    .text "@Japan's bid was confirmed."
    .byte con_катсцена_задержка, $1E
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
    .text "again,"
    .byte con_катсцена_задержка, $14
    .text " at position #10.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "@Can we count on", $3A, $3B, "@"
    .byte con_катсцена_F8, $02
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_F5, $08
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "@Now just a moment,"
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "brother!"
    .byte con_катсцена_задержка, $1E
    .text " He's a"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "player on "
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $08
    .text "MY"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .text " team!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $2A
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_FA, $10
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $0A
    .text "@Y-"
    .byte con_катсцена_задержка, $08
    .text "Yoko?!@"
    .byte con_катсцена_задержка, $3C
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
    .text "@Tsubasa,"
    .byte con_катсцена_задержка, $1E
    .text " before you even"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "think about leaving us,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Sao Paulo's playing the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Japan Cup in two weeks.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $11
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $04
    .byte con_катсцена_закрыть_рот
    .text " "
    .byte con_катсцена_закрыть_рот
    .text "@Uh"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .text "the Japan Cup?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $2A
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
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
    .byte con_катсцена_задержка, $14
    
    
    
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
    .byte con_катсцена_задержка, $14
    
    
    
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
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@You know,"
    .byte con_катсцена_задержка, $1E
    .text " Hamburger SV"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "and their goalkeeper,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "Wakabayashi,"
    .byte con_катсцена_задержка, $1E
    .text " are"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "already participating.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $03
    .text "@So"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .text "you all could test"
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
    
    
    
    .byte con_катсцена_FB, $01, $4E
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_смещение_текста, $04
    .text "@Against Wakabayashi and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "Misaki?"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_FB, $01, $11
    .text " Hold on!"
    .byte con_катсцена_задержка, $14
    .text " Yoko,"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "Katagiri", $3A, $3B
    .byte con_катсцена_задержка, $14
    .text "I can't"
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
    .text "made it as a pro"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FA, $0F
    .byte con_катсцена_FB, $01, $43
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "@Hey,"
    .byte con_катсцена_задержка, $0F
    .text " didn't we just"
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
    
    
    
    .byte con_катсцена_FA, $10
    .byte con_катсцена_FB, $01, $40
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_FA, $11
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $03
    .text "@Japan U-20 needs you and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "your skills."
    .byte con_катсцена_задержка, $1E
    .text " Tsubasa,"
    .byte con_катсцена_задержка, $14
    .text " you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "must go home to Japan and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "join the team!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $10
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $09
    .text "@Hey", $3A, $3B
    .byte con_катсцена_задержка, $14
    .text "guys"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $4D
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $02
    .text "@Tsubasa,"
    .byte con_катсцена_задержка, $1E
    .text " you'll always"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "have a place in Sao Paulo."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "But it looks like a lot of"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "other people need you.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $10
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $06
    .text "@Roberto"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_FB, $01, $09
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста, $04
    .text "if you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "feel"
    .byte con_катсцена_FB, $01, $10
    .byte con_катсцена_номер_звука, $31
    .text " that strongly"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "about it"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@..."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .text "then I'll return"
    .byte con_катсцена_номер_звука, $4C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "to my home team"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .text "and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "lead it to victory!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_F5, $04
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $4D
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $06
    .text "@Atta boy,"
    .byte con_катсцена_задержка, $14
    .text " Tsubasa.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $10
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $04
    .text "@But!"
    .byte con_катсцена_задержка, $28
    .text " Mister Katagiri,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_FB, $01, $09
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "until I do,"
    .byte con_катсцена_задержка, $1E
    .text " Sao Paulo"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "is my home team.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@That means we"
    .byte con_катсцена_скорость_текста, $08
    .text " WILL "
    .byte con_катсцена_скорость_текста, $04
    .text "be"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "taking the Japan Cup!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_FB, $01, $10
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $40
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $06
    .text "@Loyal to the team"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "as ever, "
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_скорость_текста, $03
    .text "h"
    .byte con_катсцена_F8, $02
    .text "uh"
    .byte con_катсцена_скорость_текста, $08
    .text "...?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $63
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "@Remember what I said,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "Tsubasa!"
    .byte con_катсцена_задержка, $1E
    .text " You and Japan"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "had better be here for"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "the U-20 World Cup!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $13
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $04
    .text "@Carlos"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_FB, $01, $11
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .text "I wouldn't"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "miss it for the world.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $63
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $04
    .text "@I'll hold you to that.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_F5, $FF
    .byte con_катсцена_FA, $0F
    .byte con_катсцена_FB, $01, $0C
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $06
    .text "@Then it's settled!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "@Lead on,"
    .byte con_катсцена_задержка, $14
    .text " captain!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $06
    .text "@Alright guys,"
    .byte con_катсцена_задержка, $14
    .text " we're"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "off to Japan!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $01
    .byte con_катсцена_смещение_текста, $0C
    .text "@Yeah!!@"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $0C
    .text "@Yeah!!@"
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_выход






.export off_0x040005_скрытая_катсцена_из_0F
off_0x040005_скрытая_катсцена_из_0F:
    .byte con_катсцена_E8, $01
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $43
    .byte con_катсцена_комментатор, $01
    .byte con_катсцена_смещение_текста, $09
    .text "Hey!"
    .byte con_катсцена_задержка, $1E
    .text " The music just"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "stopped"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Could it be"
    .byte con_катсцена_скорость_текста, $08
    .text "...?"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_FB, $01, $C2
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $27
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_комментатор, $05
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Oh,"
    .byte con_катсцена_задержка, $08
    .text " of course!"
    .byte con_катсцена_задержка, $50
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
    .byte con_катсцена_задержка, $14
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
    .text "him,"
    .byte con_катсцена_задержка, $14
    .text " and he loves"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "his fans!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "He's a good guy!"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .byte con_катсцена_комментатор, $04
    .text "Yo,"
    .byte con_катсцена_задержка, $0F
    .text " Japan's best!"
    .byte con_катсцена_мячик
    .byte con_катсцена_частично_затереть_текст
    
    
; изменена длительность полета джека 0x0147B8
    .byte con_катсцена_FB, $02, $C5, $C4
    .byte con_катсцена_номер_звука, $04
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_комментатор, $02
    .byte con_катсцена_смещение_текста, $09
    .text "That's a real"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "jumping Jack!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_новая_строка
    .byte con_катсцена_комментатор, $01
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Now,"
    .byte con_катсцена_задержка, $14
    .text " where did"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "he go"
    .byte con_катсцена_скорость_текста, $08
    .text "...?"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_комментатор, $00
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Oh,"
    .byte con_катсцена_задержка, $0F
    .text " there you are!"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_комментатор, $05
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Enough horsing"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "around,"
    .byte con_катсцена_задержка, $0F
    .text " Jack!"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Will you come down"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "here already?"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    
    
    
    .byte con_катсцена_задержка, $14
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
    .byte con_катсцена_F4, $07






off_A020_10_цубаса_и_вакабаяши_перед_матчем:
    .byte con_катсцена_E8, $01
    .byte con_катсцена_задний_фон, $24
    .byte con_катсцена_FB, $01, $34
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $53
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $05
    .text "(It's been three years"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "since I've seen you,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Tsubasa."
    .byte con_катсцена_задержка, $3C
    .text " You'd better"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "not have gone soft!)"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FA, $10
    .byte con_катсцена_FB, $01, $58
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $05
    .text "(Just like all those"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "years ago"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .text "I can"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "still get the ball"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "by you!)"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






off_A099_11_цубаса_и_вакабаяши_после_матча:
    .byte con_катсцена_E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte con_катсцена_FA, $10
    .byte con_катсцена_FB, $01, $34
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $47
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $04
    .text "@You just keep getting"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "better and better, "
    .byte con_катсцена_задержка, $08
    .text "eh?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $4E
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $02
    .text "@So do you."
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "You know we're gonna need"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "our @Guardian Deity@ for"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "the U-20 World Cup,"
    .byte con_катсцена_задержка, $0F
    .text " right?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $34
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $05
    .text "@Yeah,"
    .byte con_катсцена_задержка, $0F
    .text " I'll be there."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "We both need to do"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "our best for Japan.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $4E
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $05
    .text "@Let's go all the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "way around the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "world,"
    .byte con_катсцена_задержка, $1E
    .text " to Brazil"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "and the World Cup!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






off_A134_12_цубаса_и_мисаки_перед_матчем:
    .byte con_катсцена_E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte con_катсцена_FA, $10
    .byte con_катсцена_FB, $01, $3F
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_F5, $04
    .byte con_катсцена_номер_звука, $53
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $03
    .text "@Tsubasa,"
    .byte con_катсцена_задержка, $14
    .text " I never thought"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "we'd meet under these"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "circumstances.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $4E
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $05
    .text "@Misaki,"
    .byte con_катсцена_задержка, $14
    .text " just focus on"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "the game -"
    .byte con_катсцена_задержка, $1E
    .text " and on"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "keeping up with me!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_F5, $FF
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход
