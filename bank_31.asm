.segment "BANK_31"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

    .word off_BE49_1F_перед_матчем_с_бразилией
    .word off_A080_20_цубаса_видит_санае_перед_матчем
    .word off_A1A1_21_коимбра_вступает_в_игру



off_BE49_1F_перед_матчем_с_бразилией:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $02
    .byte $FB, $01, $0A
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $49
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $08
    .text "(So,"
    .byte con_катсцена_задержка, $3C
    .text " you've made"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "it this far"
    .byte con_катсцена_скорость_текста, $08
    .text "...)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FA, $11
    .byte $FB, $01, $16
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_скорость_текста, $00
    .byte con_катсцена_смещение_текста, $0A
    .text "(!?)"
    .byte $F5, $08
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $14
    .byte $F5, $04
    .byte con_катсцена_задержка, $3C
    .byte $FB, $01, $11
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "(I keep my"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "promises,"
    .byte con_катсцена_задержка, $28
    .text " Carlos.)"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $2A
    .byte $FB, $01, $B5
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $07
    .text "(It's been a long"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "road to get here.)"
    .byte con_катсцена_задержка, $F0
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_все
    .byte con_катсцена_задний_фон, $28
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_F0, $80, $21
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "On the day of"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $0A
    .text "the final"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $4C
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_задний_фон, $2B
    .byte $FA, $11
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_вид_окна_текста, $00
    .byte con_катсцена_комментатор, $05
    .byte con_катсцена_F0, $40, $22
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "After so many"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "trials,"
    .byte con_катсцена_задержка, $14
    .text " surprises,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "and upsets,"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "we've reached"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "the final match"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "of the World Cup!"
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "As the clock ticks"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "down,"
    .byte con_катсцена_задержка, $14
    .text " both teams are"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "getting ready on"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "the sideline."
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_номер_звука, $62
    .byte $FB, $01, $63
    .byte $F7
    .byte $F3, $FF, $00, $0F
    .byte $FA, $10
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $09
    .text "The first finalist"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "is Brazil U-20,"
    .byte con_катсцена_задержка, $14
    .text " who"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "as the host country"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "and largely favored"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "to win,"
    .byte con_катсцена_задержка, $1E
    .text " have an"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "especially great"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "stake in this match!"
    .byte con_катсцена_мячик
    .byte con_катсцена_частично_затереть_текст
    
    
    
    .byte con_катсцена_номер_звука, $62
    .byte $FB, $01, $67
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $09
    .text "But on the other"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "side we have their"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "worthy opponents -"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Japan U-20!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "They advanced this"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "far by putting up"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "a hard fight with"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "excellent teamwork!"
    .byte con_катсцена_мячик
    .byte con_катсцена_частично_затереть_текст
    
    
    
    .byte $F5, $FF
    .byte $FA, $43
    .byte $FB, $01, $B1
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $09
    .text "Who will Lady Fortune"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "smile upon today?"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "Just five minutes"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "'till the fateful"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "kick-"
    .byte con_катсцена_задержка, $0F
    .text "off!"
    .byte con_катсцена_номер_звука, $62
; скрытая катсцена
    .byte $F4, $06, $05
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






.export off_0x040005_скрытая_катсцена_из_1F
off_0x040005_скрытая_катсцена_из_1F:
    .byte $E8, $01
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_комментатор, $00
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $09
    .text "Oh!"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .text " Looks like"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "something's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "happening by"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Japan's bench"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_затереть_все
    .byte con_катсцена_комментатор, $FF
    .byte con_катсцена_задний_фон, $10
    .byte $FA, $11
    .byte $FB, $01, $66
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte $F3, $FF, $00, $0C
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "@We're about to"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "start the meeting."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "What is it?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $21
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $04
    .text "@It won't take long."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "You know,"
    .byte con_катсцена_задержка, $1E
    .text " that was"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_скорость_текста, $06
    .text "TWICE "
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .text "now Japan have"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "gotten one over on us.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $07
    .text "@But I'm not mad."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "Here,"
    .byte con_катсцена_задержка, $14
    .text " take this.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $28
    .byte $FB, $01, $57
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_скорость_текста, $0A
    .byte con_катсцена_смещение_текста, $06
    .text "@03-"
    .byte con_катсцена_задержка, $14
    .text "222-"
    .byte con_катсцена_задержка, $14
    .text "7550"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $50
    .byte $FB, $01, $66
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $02
    .text "h"
    .byte con_катсцена_закрыть_рот
    .text "ey,"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $07
    .text "this number seems"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "familiar. "
    .byte con_катсцена_задержка, $50
    .byte $FB, $01, $12
    .byte con_катсцена_скорость_текста, $02
    .text "What", $3A, $3B, "@"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $21
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $03
    .text "@Yeah,"
    .byte con_катсцена_задержка, $14
    .text " it's for the Tecmo"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Hotline."
    .byte con_катсцена_задержка, $28
    .text " You've got time -"
    .byte con_катсцена_задержка, $28
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $FB, $01, $12
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "see"
    .byte con_катсцена_номер_звука, $01
    .text " if they can give you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "some"
    .byte con_катсцена_задержка, $14
    .text " advice. "
    .byte con_катсцена_задержка, $50
    .byte $FB, $01, $21
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $1E
    .text "H"
    .byte $F8, $02
    .text "eh.@"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $28
    
    
    
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $FB, $01, $12
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_номер_звука, $4C
    .byte con_катсцена_задержка, $1E
    .byte $FB, $01, $11
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $02
    .byte con_катсцена_закрыть_рот
    .text " "
    .byte con_катсцена_закрыть_рот
    .text "@Wo"
    .byte con_катсцена_закрыть_рот
    .text "w,"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .text " thanks,"
    .byte con_катсцена_задержка, $1E
    .text " Schneider!"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "After we beat Brazil and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "win the World Cup,"
    .byte con_катсцена_задержка, $1E
    .text " that's"
    .byte con_катсцена_задержка, $14
    .byte $FB, $01, $66
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "the"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $06
    .text " FIRST THING "
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .text "I'll do!@"
    .byte con_катсцена_задержка, $1E
    .byte $FB, $01, $11
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $F7
    .byte con_катсцена_номер_звука, $1E
    .byte $F8, $0E
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "@Is he just"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "screwing with us?!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $42
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $03
    .text "@That's it,"
    .byte con_катсцена_задержка, $0A
    .text " lads", $3A, $3B
    .byte con_катсцена_задержка, $14
    .text "enough"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "goofing around."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Get your game faces on!@"
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затемнение_экрана
    .byte $F5, $FF
    .byte $F4, $07






off_A080_20_цубаса_видит_санае_перед_матчем:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $43
    .byte $FB, $01, $B2
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $53
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_вид_окна_текста, $00
    .byte con_катсцена_комментатор, $05
    .byte con_катсцена_смещение_текста, $09
    .text "Shrouded by the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "loud cheers from"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "the stands,"
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "the players are"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "lining up for the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "big final!"
    .byte con_катсцена_задержка, $28
    .text " Time"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "for kick-"
    .byte con_катсцена_задержка, $0F
    .text "off!"
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_затереть_все
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_комментатор, $FF
    .byte $FA, $11
    .byte $FB, $01, $07
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_скорость_текста, $08
    .byte con_катсцена_смещение_текста, $0C
    .text "@Tsuba"
    .byte con_катсцена_скорость_текста, $0C
    .text "~~~"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $03
    .text "sa!!@"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $14
    .byte $FB, $01, $66
    .byte con_катсцена_задержка, $14
    .byte $FB, $01, $08
    .byte $F5, $08
    .byte con_катсцена_скорость_текста, $00
    .byte con_катсцена_смещение_текста, $0A
    .text "@!!@"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_затереть_текст
    .byte $FA, $09
    .byte con_катсцена_задержка, $50
    
    
    
    .byte $FB, $01, $43
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $02
    .byte $FB, $01, $26
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $55
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $04
    .byte con_катсцена_скорость_текста, $06
    .text " "
    .byte $F8, $02
    .byte con_катсцена_задержка, $08
    .text "(I made it,"
    .byte con_катсцена_задержка, $3C
    .text " Tsubasa"
    .byte con_катсцена_скорость_текста, $08
    .text "...)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    
    
    
    .byte $FA, $23
    .byte $FB, $01, $AE
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "(That's", $3A, $3B
    .byte con_катсцена_задержка, $3C
    .text "no,"
    .byte con_катсцена_задержка, $14
    .text " it"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "can't be"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $06
    .text "Sanae?!)"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FA, $51
    .byte $FB, $01, $AB
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text "(Sanae's", $3A, $3B
    .byte con_катсцена_задержка, $1E
    .text "she's here!"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "She's here and she's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "cheering for me!)"
    .byte con_катсцена_задержка, $F0
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $29
    .byte $FB, $01, $54
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $5F
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .byte con_катсцена_задержка, $50
    .text "(I'm fired up!)"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_затереть_текст
    .byte $FA, $23
    .byte $FB, $01, $AD
    .byte $F7
    .byte $F3, $00
    .byte $F5, $08
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $0A
    .byte con_катсцена_номер_звука, $6E
    .text "(I'm ready!)"
    .byte $FA, $43
    .byte $FB, $01, $B3
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $02
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $6E
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $07
    .byte con_катсцена_номер_звука, $6C
    .byte con_катсцена_задержка, $14
    .text "(Let's get it on!)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






off_A1A1_21_коимбра_вступает_в_игру:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte $FB, $01, $3E
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $46
    .byte con_катсцена_задержка, $50
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $A4    ; <ご>
    .byte $14    ; <と>
    .byte $AA    ; <だ>
    .byte $00
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $19    ; <の>
    .byte $CF    ; <プ>
    .byte $6A    ; <レ>
    .byte $42    ; <イ>
    .byte $1A    ; <は>
    .byte $00
    .byte $10    ; <た>
    .byte $0C    ; <し>
    .byte $06    ; <か>
    .byte $16    ; <に>
    .byte $0D    ; <す>
    .byte $A4    ; <ご>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
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
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $0E    ; <せ>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $12    ; <つ>
    .byte $12    ; <つ>
    .byte $00
    .byte $01    ; <あ>
    .byte $29    ; <る>
    .byte $26    ; <よ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $10
    .byte $FB, $01, $62
    .byte con_катсцена_осветление_экрана
    .byte $40    ; <「>
    .byte $AA    ; <だ>
    .byte $A0    ; <が>
    .byte $00
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $03    ; <う>
    .byte $04    ; <え>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $00
    .byte $03    ; <う>
    .byte $04    ; <え>
    .byte $A0    ; <が>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $0C    ; <し>
    .byte $27    ; <ら>
    .byte $0B    ; <さ>
    .byte $15    ; <な>
    .byte $09    ; <け>
    .byte $2A    ; <れ>
    .byte $AF    ; <ば>
    .byte $00
    .byte $15    ; <な>
    .byte $27    ; <ら>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $11
    .byte $FB, $01, $36
    .byte con_катсцена_осветление_экрана
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $7A    ; <、>
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $28
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $16    ; <に>
    .byte $1A    ; <は>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $78
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $0E    ; <せ>
    .byte $02    ; <い>
    .byte $0B    ; <さ>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte $FA, $50
    .byte $FB, $01, $6C
    .byte $F7
    .byte $F3, $00
    .byte $F5, $0C
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_скорость_текста
    .byte $02    ; <い>
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
    .byte $A0    ; <が>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte $F5, $FF
    .byte con_катсцена_задержка, $F0
    .byte $F4, $05
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_затереть_текст
    .byte $FA, $44
    .byte $FB, $01, $81
    .byte $F7
    .byte $F3, $00
    .byte $FA, $10
    .byte $F4, $04
    .byte con_катсцена_номер_звука, $54
    .byte con_катсцена_скорость_текста, $08
    .byte $40    ; <「>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $19    ; <の>
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $2D    ; <を>
    .byte $00
    .byte $05    ; <お>
    .byte $0C    ; <し>
    .byte $27    ; <ら>
    .byte $0E    ; <せ>
    .byte $0C    ; <し>
    .byte $1F    ; <ま>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $3F    ; <•>
    .byte con_катсцена_задержка, $28
    .byte $68    ; <リ>
    .byte $C6    ; <ベ>
    .byte $68    ; <リ>
    .byte $45    ; <オ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $2C    ; <わ>
    .byte $28    ; <り>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $60
    .byte $F7
    .byte $F3, $00
    .byte $FA, $11
    .byte con_катсцена_закрыть_рот
    .byte $40    ; <「>
    .byte $4A    ; <コ>
    .byte $42    ; <イ>
    .byte $6E    ; <ン>
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $F4, $03
    .byte $FB, $01, $5F
    .byte con_катсцена_номер_звука, $15
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_закрыть_рот
    .byte $F4, $01
    .byte con_катсцена_затереть_текст
    .byte $40    ; <「>
    .byte $4A    ; <コ>
    .byte $42    ; <イ>
    .byte $6E    ; <ン>
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte con_катсцена_задержка, $3C
    .byte $00
    .byte $0E    ; <せ>
    .byte $AF    ; <ば>
    .byte $2E    ; <ん>
    .byte $A4    ; <ご>
    .byte $03    ; <う>
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_скорость_текста, $00
    .byte $34    ; <1>
    .byte $33    ; <0>
    .byte con_катсцена_новая_строка
    .byte $F5, $04
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $78
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $4C
    .byte $F7
    .byte $F3, $00
    .byte $F5, $08
    .byte con_катсцена_задержка, $14
    .byte $F5, $04
    .byte con_катсцена_скорость_текста, $08
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $12    ; <つ>
    .byte $1A    ; <は>
    .byte con_катсцена_задержка, $28
    .byte $00
    .byte $68    ; <リ>
    .byte $45    ; <オ>
    .byte $46    ; <カ>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $19    ; <の>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $19    ; <の>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $63
    .byte $FB, $01, $5E
    .byte con_катсцена_осветление_экрана
    .byte $FA, $4A
    .byte $F3, $FF, $21, $40
    .byte $40    ; <「>
    .byte $52    ; <ツ>
    .byte $C3    ; <バ>
    .byte $4B    ; <サ>
    .byte $3F    ; <•>
    .byte $45    ; <オ>
    .byte $45    ; <オ>
    .byte $BD    ; <ゾ>
    .byte $67    ; <ラ>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
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
    .byte con_катсцена_новая_строка
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
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
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
    .byte con_катсцена_новая_строка
    .byte $22    ; <め>
    .byte $A5    ; <ざ>
    .byte $22    ; <め>
    .byte $10    ; <た>
    .byte $14    ; <と>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $27    ; <ら>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte con_катсцена_закрыть_рот
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
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
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $61
    .byte $F7
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
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $5E
    .byte $F7
    .byte con_катсцена_задержка, $3C
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
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
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
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte $F4, $03
    .byte $F4, $05
    .byte con_катсцена_затереть_текст
    .byte $FA, $54
    .byte $FB, $01, $05
    .byte $F4, $01
    .byte $F4, $04
    .byte $F3, $FF, $21, $40
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte $F4, $02
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte con_катсцена_номер_звука, $69
    .byte $F4, $03
    .byte $FB, $01, $0A
    .byte con_катсцена_осветление_экрана
    .byte $F5, $04
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_закрыть_рот
    .byte $40    ; <「>
    .byte $0F    ; <そ>
    .byte $03    ; <う>
    .byte $02    ; <い>
    .byte $03    ; <う>
    .byte $0A    ; <こ>
    .byte $14    ; <と>
    .byte $06    ; <か>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $6A
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $3C
    .byte $40    ; <「>
    .byte $01    ; <あ>
    .byte $19    ; <の>
    .byte $00
    .byte $4A    ; <コ>
    .byte $42    ; <イ>
    .byte $6E    ; <ン>
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $14    ; <と>
    .byte $02    ; <い>
    .byte $03    ; <う>
    .byte $00
    .byte $05    ; <お>
    .byte $14    ; <と>
    .byte $0A    ; <こ>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $1A    ; <は>
    .byte $2E    ; <ん>
    .byte $AD    ; <で>
    .byte $00
    .byte $1A    ; <は>
    .byte $A6    ; <じ>
    .byte $22    ; <め>
    .byte $13    ; <て>
    .byte $00
    .byte $AD    ; <で>
    .byte $29    ; <る>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $13    ; <て>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $AE    ; <ど>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $00
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход
