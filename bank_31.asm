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
    .byte con_катсцена_номер_звука, $01
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
    .text "see if they can give you"
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
    .byte con_катсцена_смещение_текста, $03
    .text "(So,"
    .byte con_катсцена_задержка, $28
    .text " my letter didn't go"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "to waste."
    .byte con_катсцена_задержка, $3C
    .text " You figured"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "out the secret to being"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "a @Super Striker@.)"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "(Nicely done"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $10
    .byte $FB, $01, $62
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text "I won't"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "let you rest on your"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "laurels,"
    .byte con_катсцена_задержка, $08
    .text " though.)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "(There will always be"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "someone out there to"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "test your mettle.)"
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $11
    .byte $FB, $01, $36
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $03
    .text "(Someone on this very"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "field,"
    .byte con_катсцена_задержка, $14
    .text " in fact."
    .byte con_катсцена_задержка, $3C
    .text " You see,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Brazil has it's own"
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    
    
    
    .byte $FA, $50
    .byte $FB, $01, $6C
    .byte $F7
    .byte $F3, $00
    .byte $F5, $0C
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_скорость_текста, $03
    .byte con_катсцена_смещение_текста, $07
    .text "...Super Striker!!)"
    .byte $F5, $FF
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затереть_текст
    
    
    
    .byte $F4, $05
    .byte $FA, $44
    .byte $FB, $01, $81
    .byte $F7
    .byte $F3, $00
    .byte $FA, $10
    .byte $F4, $04
    .byte con_катсцена_номер_звука, $54
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $03
    .text "@Your attention,"
    .byte con_катсцена_задержка, $08
    .text " please!"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Brazil are substituting"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Main Foward,"
    .byte con_катсцена_задержка, $14
    .text " Riverio"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    

    .byte $FB, $01, $60
    .byte $F7
    .byte $F3, $00
    .byte $FA, $11
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "...with their Captain"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "at position"
    .byte con_катсцена_задержка, $0F
    .text " #"
    .byte con_катсцена_задержка, $0F
    .text "10,"
    .byte con_катсцена_задержка, $3C
    .byte $F4, $03
    .byte $FB, $01, $5F
    .byte con_катсцена_номер_звука, $15
    .byte con_катсцена_задержка, $14
    .byte $F4, $01
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Arthur Antines Coimbra!@"
    .byte $F5, $04
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    .byte $F5, $FF
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $4C
    .byte $F7
    .byte $F3, $00
    .byte $F5, $08
;   .byte con_катсцена_задержка, $14
;   .byte $F5, $04
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $05
    .text "(Aah,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text " that", $3A, $3B
    .byte con_катсцена_задержка, $14
    .text "that jerk"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "from the Rio Cup!)"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_задний_фон, $63
    .byte $FB, $01, $5E
    .byte con_катсцена_осветление_экрана
    .byte $FA, $4A
    .byte $F3, $FF, $21, $40
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $05
    .text "@That Ozora Tsubasa"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "he's got even more"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "potential than he"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "realizes.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@If he actually becomes"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "a @Super Striker@,"
    .byte con_катсцена_задержка, $1E
    .text " you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "don't stand a chance.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $61
    .byte $F7
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $06
    .text "@A @Super Striker@?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $5E
    .byte $F7
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "@If you want to stand"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "up to him,"
    .byte con_катсцена_задержка, $3C
    .text " you'd"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "better train like your"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "life depended on it"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte $F4, $03
    .byte $F4, $05
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
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "(That's just what I did,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "you bastard."
    .byte con_катсцена_задержка, $3C
    .text " But did"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "you mean so I wouldn't"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "slow you down?!)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte $FB, $01, $6A
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $05
    .text "(Roberto"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .text "what's your"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "strategy?"
    .byte con_катсцена_задержка, $50
    .text " Is this"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "new guy some kind"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "of secret weapon?)"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход
