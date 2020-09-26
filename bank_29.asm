.segment "BANK_29"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

    .word off_A195_13_после_победы_над_японией
    .word off_A5D6_14_после_победы_над_китаем
    .word off_A703_15_после_победы_над_кореей
    .word off_AC95_16_разговор_репортеров





off_A195_13_после_победы_над_японией:
    .byte con_катсцена_E8, $01
    .byte con_катсцена_задний_фон, $0F
    .byte con_катсцена_FB, $01, $43
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $4D
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $03
    .text "@Hooray!"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text " We've done it!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "@We've won the Japan Cup!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FA, $2E
    .byte con_катсцена_FB, $01, $3B
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F5, $04
    .byte con_катсцена_FA, $10
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $07
    .text "@We couldn't have"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "done this without"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "you,"
    .byte con_катсцена_задержка, $1E
    .text " Tsubasa.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "@That's it for us"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "this season."
    .byte con_катсцена_задержка, $1E
    .text " You're"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "free to join the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Japan squad again.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $4E
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_FA, $11
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $03
    .text "@It's been three years"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "since I started playing"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "with Sao Paulo,"
    .byte con_катсцена_задержка, $0F
    .text " you know?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_FB, $01, $11
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_смещение_текста, $05
    .text "@Now Babington's going"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "to Argentina,"
    .byte con_катсцена_задержка, $1E
    .text " and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Brazil are getting"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Amaral and Dotor.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $06
    .text "@If Japan are my"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "friends,"
    .byte con_катсцена_задержка, $1E
    .text " it's like"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "South America's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "my enemy"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_FB, $01, $4E
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "@Still,"
    .byte con_катсцена_задержка, $1E
    .text " I'll be fine."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "The ball is my friend,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "and I'll make you and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "everyone else proud"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $06
    .text "by winning the World"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Cup."
    .byte con_катсцена_задержка, $3C
    .text " For now"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "Sayonara,"
    .byte con_катсцена_задержка, $28
    .text " Roberto.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $3F
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $06
    .text "@Tsubasa,"
    .byte con_катсцена_задержка, $14
    .text " I'm glad"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "you'll be playing"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "for Japan again.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $4E
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_FA, $30
    .byte con_катсцена_смещение_текста, $06
    .text "@Yeah."
    .byte con_катсцена_задержка, $14
    .text " The Golden"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "Duo will"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_FB, $01, $12
    .byte $3A, $3B
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_скорость_текста, $08
    .text "will...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text "@Tsubasa"
    .byte con_катсцена_скорость_текста, $08
    .text "...?"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "What's the matter?@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $08
    .byte con_катсцена_смещение_текста, $05
    .byte con_катсцена_номер_звука, $48
    .byte con_катсцена_задержка, $14
    .text "@I", $3A, $3B, "@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_F5, $FF
    
    
    
    .byte con_катсцена_FB, $01, $26
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $03
    .text " "
    .byte con_катсцена_F8, $02
    .byte con_катсцена_задержка, $3C
    .text "@Sanae,"
    .byte con_катсцена_задержка, $3C
    .text " you're here"
    .byte con_катсцена_скорость_текста, $06
    .text "...@"
    .byte con_катсцена_задержка, $F0
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_задний_фон, $31
    .byte con_катсцена_FB, $02, $9C, $8E
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_F5, $05
    .byte con_катсцена_F4, $05
    .byte con_катсцена_скорость_текста, $01
    .byte con_катсцена_смещение_текста, $07
    .text "Several days later,"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "in a park near"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $0A
    .text "Japan U-20's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "training camp."
    .byte con_катсцена_F4, $04
    
    
    
    .byte con_катсцена_F8, $0B
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_F4, $05
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_F8, $02
    .byte con_катсцена_F8, $0B
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_F4, $04
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text "@You'll be leaving for"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "the Asia Qualifers"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "soon,"
    .byte con_катсцена_задержка, $0F
    .text " won't you?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@Yeah,"
    .byte con_катсцена_задержка, $14
    .text " and I can hardly"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "wait!"
    .byte con_катсцена_задержка, $1E
    .text " There's gonna be"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "a lot of players"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "around my age,"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $07
    .text "and a lot of"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "pro-levels,"
    .byte con_катсцена_задержка, $0F
    .text " and", $3A, $3B, "@"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "@Tsubasa,"
    .byte con_катсцена_задержка, $28
    .text " you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "haven't changed.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "@You still sound like"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "when you were young,"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "you know?@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $05
    .text "@Huh?"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text " How's that?@"
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_E8, $01
    .byte con_катсцена_задний_фон, $32
    .byte con_катсцена_FA, $33
    .byte con_катсцена_FB, $01, $26
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_F5, $05
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $03
    .text "@Your mind always thinking"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "about football,"
    .byte con_катсцена_задержка, $1E
    .text " and how"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "you'd be a superstar"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "@Ah, "
    .byte con_катсцена_задержка, $0F
    .text "well"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_FB, $01, $26
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $07
    .text "Sanae,"
    .byte con_катсцена_задержка, $0F
    .text " I'm s"
    .byte con_катсцена_FB, $01, $27
    .byte con_катсцена_закрыть_рот
    .text $3A, $3B, "@"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_новая_строка
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $06
    .text "@I wouldn't have it"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "any other way.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_FB, $01, $57
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .byte con_катсцена_смещение_текста, $06
    .text "@..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .text "Sanae,"
    .byte con_катсцена_задержка, $1E
    .text " listen.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_FB, $01, $27
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_FB, $01, $26
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $07
    .text "@What is it?"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "You're serious"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "all of a sudden.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $57
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_смещение_текста, $05
    .text "@When I"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .text "when all"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "this is done,"
    .byte con_катсцена_задержка, $3C
    .text " I'm"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "returning to Brazil.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $05
    .text "@Would you", $3A, $3B, "@"
    .byte con_катсцена_F5, $FF
    .byte con_катсцена_FA, $34
    .byte con_катсцена_F7
    .byte con_катсцена_номер_звука, $1E
    .byte con_катсцена_F8, $0E
    .byte con_катсцена_номер_звука, $52
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "@Ey,"
    .byte con_катсцена_задержка, $0F
    .text " Tsubasa", $3A, $3B
    .byte con_катсцена_задержка, $14
    .text "time for"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "the team meeting!@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_F8, $02
    .byte con_катсцена_номер_звука, $48
    .byte con_катсцена_FB, $01, $08
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_FA, $32
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $08
    .text "@Ish", $3A, $3B
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_скорость_текста, $03
    .text "Ishizaki!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $28
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_FA, $33
    .byte con_катсцена_F5, $05
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_FB, $01, $27
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "@I can't join you along"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "the way,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_FB, $01, $26
    .byte con_катсцена_задержка, $0F
    .text " but I'll be"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "wishing you the very"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "best of luck.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $05
    .text "@I"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text " That's great,"
    .byte con_катсцена_задержка, $1E
    .text " Sanae."
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Be seeing you"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $24
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "@Uh"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .text "did I come"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "in at a bad time?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .byte con_катсцена_смещение_текста, $05
    .text "@..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .text "no."
    .byte con_катсцена_задержка, $3C
    .text " No,"
    .byte con_катсцена_задержка, $0F
    .text " Ishizaki,"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "it's fine."
    .byte con_катсцена_задержка, $14
    .text " Let's go.@"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $35
    .byte con_катсцена_FB, $01, $1A
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $47
    .byte con_катсцена_F5, $05
    .byte con_катсцена_F8, $0C
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_F8, $02
    .byte con_катсцена_F8, $0C
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_FB, $01, $2A
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $06
    .text "(So,"
    .byte con_катсцена_задержка, $1E
    .text " it's like that?"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_FB, $01, $2B
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $07
    .text "Interesting"
    .byte con_катсцена_скорость_текста, $08
    .text "...)"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $37
    .byte con_катсцена_FB, $01, $A9
    .byte con_катсцена_F8, $0D
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $03
    .byte con_катсцена_смещение_текста, $07
    .text "Several days later,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Tsubasa and the rest"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "of the team are on"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "the plane to Seoul,"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $08
    .text "where the Asian"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "Qualifiers for"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "the U-20 World"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "Cup will be held."
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_выход






off_A5D6_14_после_победы_над_китаем:
    .byte con_катсцена_E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte con_катсцена_FA, $10
    .byte con_катсцена_FB, $01, $22
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $47
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $04
    .text "Li Han-ne:"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $06
    .text " @Our Rising"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Dragon was defeated"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "by your spirit!"
    .byte con_катсцена_задержка, $28
    .text " We"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "humbly admit defeat.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $33
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $07
    .text "@Your Japanese"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "is pretty good.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $44
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $FF, $00, $20
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $04
    .text "Li Ban-kun:"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $06
    .text " @Thank you."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Our uncle cooks in"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Yokohama,"
    .byte con_катсцена_задержка, $1E
    .text " so we are"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "often in your country.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $68
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text "@It's like staring in"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "a mirror!"
    .byte con_катсцена_задержка, $1E
    .text " I couldn't"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "tell you two apart.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $22
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $04
    .text "Li Han-ne:"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $06
    .text " @The Korean"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "team also uses Combi"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_новая_строка
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $04
    .text "  combination plays"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "very well.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $14
    
    
    
    .byte con_катсцена_смещение_текста, $07
    .text "@Watch your backs"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "when you play"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "with them,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $08
    .text " OK?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $08
    .text "@We will."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Thank you for"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "the warning.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






off_A703_15_после_победы_над_кореей:
    .byte con_катсцена_E8, $01
    .byte con_катсцена_задний_фон, $0D
    .byte con_катсцена_FB, $01, $0E
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_номер_звука, $47
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $08
    .text "@Let's keep the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "momentum going"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "and win it all!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $0C
    .text "@Yeah!!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_FA, $2E
    .byte con_катсцена_FB, $01, $2D
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_FA, $65
    .byte con_катсцена_F5, $04
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "@Tsubasa,"
    .byte con_катсцена_задержка, $0F
    .text " it's a"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "disaster!!"
    .byte con_катсцена_задержка, $14
    .text " Brazil's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "new coach is", $3A, $3B, "@"
    .byte con_катсцена_F8, $02
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_F5, $FF
    .byte con_катсцена_FB, $01, $12
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $FF, $13, $0C
    .byte con_катсцена_FA, $38
    .byte con_катсцена_номер_звука, $43
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $06
    .text "@What?!@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_номер_звука, $3D
    
    
    
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $03
    .byte con_катсцена_смещение_текста, $08
    .text "Japan had earned"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $0A
    .text "the right to"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "represent Asia in"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "the U-20 World Cup."
    .byte con_катсцена_мячик
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_смещение_текста, $08
    .text "In the meantime,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "other countries were"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "securing their"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "own positions"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $3C
    .byte con_катсцена_FB, $01, $95
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_F4, $05
    .byte con_катсцена_скорость_текста, $00
    .byte con_катсцена_смещение_текста, $09
    .text "South American"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "Qualifiers Final"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Argentina VS Uruguay"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_F4, $04
    .byte con_катсцена_задержка, $F0
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_FA, $03
    .byte con_катсцена_FB, $01, $78
    .byte con_катсцена_F3, $FF, $14, $22
    .byte con_катсцена_номер_звука, $0B
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_F5, $0C
    .byte con_катсцена_скорость_текста, $03
    .byte con_катсцена_смещение_текста, $06
    .text "@I'm Juan Diaz!"
    .byte con_катсцена_задержка, $14
    .text " On"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "and off the pitch,"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "nobody matches"
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $07
    .text "MY "
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_скорость_текста, $03
    .text "genius!@"
; скорректировать задержку чтобы портрет остался на белом фоне перед сменой экрана
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_F5, $FF
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_FA, $21
    .byte con_катсцена_FB, $02, $73, $74
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F5, $03
    .byte con_катсцена_номер_звука, $0E
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F5, $FF
    .byte con_катсцена_FA, $5A
    .byte con_катсцена_FB, $01, $01
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $03
    .byte con_катсцена_FA, $20
    .byte con_катсцена_F7
    .byte con_катсцена_номер_звука, $04
    .byte con_катсцена_задержка, $35
    .byte con_катсцена_F7
    .byte con_катсцена_номер_звука, $05
    .byte con_катсцена_FA, $56
    .byte con_катсцена_FB, $03, $C0, $A0, $80
    .byte con_катсцена_F7
    .byte con_катсцена_номер_звука, $07
    .byte con_катсцена_FA, $39
    .byte con_катсцена_FB, $01, $85
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $5D
    .byte con_катсцена_F5, $04
    
    
    
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_вид_окна_текста, $01
    .byte con_катсцена_комментатор, $00
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "It's buried in the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "back of the net!"
    .byte con_катсцена_задержка, $14
    .text " Juan"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Diaz and Argentina"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "are"
    .byte con_катсцена_скорость_текста, $06
    .text " UNSTOPPABLE!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_все
; требуется чтобы следующий текст начался как обычно вверху экрана
    .byte con_катсцена_частично_затереть_текст
    
    
    
    .byte con_катсцена_FA, $3A
    .byte con_катсцена_FB, $01, $8B
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $66
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_вид_окна_текста, $00
    .byte con_катсцена_комментатор, $01
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "It's"
    .byte con_катсцена_номер_звука, $62
    .text " decided!"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Argentina has"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "defeated Uruguay!!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "They have won"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "their ticket"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "to this year's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "U-20 World Cup!"
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_затереть_все
    .byte con_катсцена_комментатор, $FF
    .byte con_катсцена_задний_фон, $3C
    .byte con_катсцена_FB, $01, $96
    .byte con_катсцена_номер_звука, $36
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_F4, $05
    .byte con_катсцена_скорость_текста, $00
    .byte con_катсцена_смещение_текста, $06
    .text "European Qualifiers"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "Finals: Block A"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "France VS Denmark"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_F4, $04
    .byte con_катсцена_задержка, $F0
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $01
    .byte con_катсцена_FB, $01, $6F
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F8, $0A
    .byte con_катсцена_F5, $00
    .byte con_катсцена_номер_звука, $68
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_вид_окна_текста, $01
    .byte con_катсцена_комментатор, $00
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Pierre is making his"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "way around Denmark's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "defence!"
    .byte con_катсцена_задержка, $1E
    .text " Napoleon is"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "right behind him!"
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_E8, $01
    .byte con_катсцена_затереть_все
    .byte con_катсцена_комментатор, $FF
    .byte con_катсцена_задний_фон, $3B
    .byte con_катсцена_FB, $01, $7A
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $26
    .byte con_катсцена_F5, $08
    .byte con_катсцена_скорость_текста, $03
    .byte con_катсцена_смещение_текста, $05
    .text "@Come,"
    .byte con_катсцена_задержка, $0F
    .text " Napoleon!"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $06
    .text "THIS "
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_скорость_текста, $03
    .text "shot shall"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "be decisive!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $7B
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F5, $08
    .byte con_катсцена_номер_звука, $26
    .byte con_катсцена_смещение_текста, $09
    .text "@Attaquer,"
    .byte con_катсцена_задержка, $0F
    .text " Pierre!@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_FA, $09
    .byte con_катсцена_FB, $01, $43
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F5, $0C
    .byte con_катсцена_вид_окна_текста, $01
    .byte con_катсцена_комментатор, $05
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Wh", $3A, $3B, "?!"
    .byte con_катсцена_номер_звука, $09
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_номер_звука, $09
    .text "What's "
    .byte con_катсцена_номер_звука, $0A
    .text "this com", $3A, $3B, "?!"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_F5, $FF
    
    
    
    .byte con_катсцена_FA, $39
    .byte con_катсцена_FB, $01, $85
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $5D
    .byte con_катсцена_F5, $04
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_комментатор, $00
    .byte con_катсцена_смещение_текста, $09
    .text "A truly impressive"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "strike by France"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "almost rips the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "netting to pieces!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_все
    .byte con_катсцена_частично_затереть_текст
    
    
    
    .byte con_катсцена_FA, $3A
    .byte con_катсцена_FB, $01, $8B
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $66
    .byte con_катсцена_вид_окна_текста, $00
    .byte con_катсцена_комментатор, $05
    .byte con_катсцена_смещение_текста, $09
    .text "It's over!"
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $08
    .text " It's over!"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_комментатор, $01
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "France qualifies for"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "the U-20 World Cup!"
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_затереть_все
    .byte con_катсцена_комментатор, $FF
    .byte con_катсцена_задний_фон, $3C
    .byte con_катсцена_FB, $03, $BD, $C8, $97
    .byte con_катсцена_номер_звука, $38
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_F4, $05
    .byte con_катсцена_скорость_текста, $00
    .byte con_катсцена_смещение_текста, $06
    .text "European Qualifiers"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "Finals: Block B"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "West Germany VS Portugal"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_F4, $04
    .byte con_катсцена_задержка, $F0
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $66
    .byte con_катсцена_FB, $03, $9E, $9F, $A5
    .byte con_катсцена_номер_звука, $6B
    .byte con_катсцена_осветление_экрана
; таймер замаха удара шнайдера 0x0144DE
    .byte con_катсцена_вид_окна_текста, $01
    .byte con_катсцена_комментатор, $00
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Schneider intends to"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "blast the ball"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "straight across the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "field!"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_комментатор, $05
    .byte con_катсцена_скорость_текста, $03
    .text " Watch out!!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_все
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $14
    
    
    
    .byte con_катсцена_номер_звука, $02
    .byte con_катсцена_комментатор, $FF
    .byte con_катсцена_FA, $05
    .byte con_катсцена_FB, $01, $79
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_F5, $11
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $09
    .text "@FEUERSCHUSS!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_F5, $FF
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_FA, $21
    .byte con_катсцена_FB, $02, $73, $74
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F5, $0F
    .byte con_катсцена_номер_звука, $0E
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_номер_звука, $10
    .byte con_катсцена_F5, $FF
    .byte con_катсцена_FA, $5A
    .byte con_катсцена_FB, $01, $00
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $FF, $2D, $04
    .byte con_катсцена_номер_звука, $06
    .byte con_катсцена_FA, $20
    .byte con_катсцена_F7
    .byte con_катсцена_номер_звука, $07
    .byte con_катсцена_задержка, $1A
    .byte con_катсцена_номер_звука, $07
    .byte con_катсцена_задержка, $19
    .byte con_катсцена_F7
    .byte con_катсцена_номер_звука, $08
    .byte con_катсцена_FA, $56
    .byte con_катсцена_FB, $03, $C0, $A0, $80
    .byte con_катсцена_F7
    .byte con_катсцена_номер_звука, $07
    .byte con_катсцена_FA, $39
    .byte con_катсцена_FB, $01, $86
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $61
    .byte con_катсцена_F5, $04
    
    
    
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_вид_окна_текста, $01
    .byte con_катсцена_комментатор, $05
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $09
    .text "WHO~~~"
    .byte con_катсцена_задержка, $08
    .text "A!"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text " That shot"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "has set the whole"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "crowd on fire!"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_все
    .byte con_катсцена_частично_затереть_текст
    
    
    
    .byte con_катсцена_FA, $3A
    .byte con_катсцена_FB, $01, $8B
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $66
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_вид_окна_текста, $00
    .byte con_катсцена_комментатор, $01
    .byte con_катсцена_смещение_текста, $09
    .text "With t"
    .byte con_катсцена_номер_звука, $69
    .text "he final"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "whistle,"
    .byte con_катсцена_задержка, $14
    .text " West"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Germany joins France"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "in representing"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Europe for the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "U-20 World Cup!"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_затереть_все
    .byte con_катсцена_комментатор, $FF
    .byte con_катсцена_задний_фон, $1D
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_FB, $03, $C9, $91, $99
    .byte con_катсцена_номер_звука, $46
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_скорость_текста, $03
    .byte con_катсцена_смещение_текста, $06
    .byte con_катсцена_задержка, $78
    .text "Meanwhile in Brazil,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "host nation for the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "U-20 World Cup"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $13
    .byte con_катсцена_FA, $12
    .byte con_катсцена_FB, $01, $46
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "@Alright lads,"
    .byte con_катсцена_задержка, $1E
    .text " we've got"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "a pro from our national"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "team to help prepare"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "for the World Cup.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@He will be acting as"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "your new coach during"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "the tournament.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $08
    .text "@His name is"
    
    
    
    .byte con_катсцена_FB, $01, $48
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_F5, $08
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $03
    .byte con_катсцена_смещение_текста, $08
    .text "(Un-"
    .byte con_катсцена_задержка, $14
    .text "unreal!)"
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_FA, $50
    .byte con_катсцена_FB, $01, $6C
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $52
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_FA, $12
    .byte con_катсцена_FB, $01, $3D
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $05
    .text "@It's Roberto Hongo!!@"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_номер_звука, $49
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $08
    .text "@I'm glad I'm"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "not completely"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "forgotten.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@Brazil's always had"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "the drive to be number"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "one in the world,"
    .byte con_катсцена_задержка, $14
    .text " when"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "it comes to football.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $06
    .text "@Even though you're"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "young,"
    .byte con_катсцена_задержка, $1E
    .text " I can see"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "the same spark"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "in all of you.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "@Now", $3A, $3B
    .byte con_катсцена_задержка, $0F
    .text "let's keep the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "World Cup in Brazil!@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_FA, $13
    .byte con_катсцена_FB, $01, $5A
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $04
    .text "(Wow,"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $06
    .text " THE "
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_скорость_текста, $04
    .text "Roberto Hongo,"
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "from our national team,"
    .byte con_катсцена_номер_звука, $57
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_FA, $50
    .byte con_катсцена_FB, $01, $6C
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F8, $02
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $05
    .text "as our coach"
    .byte con_катсцена_скорость_текста, $08
    .text "...)"
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






off_AC95_16_разговор_репортеров:
    .byte con_катсцена_E8, $01
    .byte con_катсцена_задний_фон, $1B
    .byte con_катсцена_FB, $01, $43
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $47
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $02
    .text "Reporter A:"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .text " @Looks like"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "the lineup for the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "tournament's been"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "finalized.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $02
    .text "Reporter B:"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $08
    .text " @Mmm-hmm,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $08
    .text "it all begins in"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "two days."
    .byte con_катсцена_задержка, $3C
    .text " Any"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "idea who'll win?@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $02
    .text "Reporter C:"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .text " @Japan's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "coming along,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "could be them.@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $02
    .text "A: @Japan?"
    .byte con_катсцена_задержка, $3C
    .text " I don't know"
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $02
    .text "B: @After this last match?"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Wouldn't surprise me.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $02
    .text "C: @Think it's a lock?@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $02
    .text "A: @Not me.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $02
    .text "A: @Not just yet,"
    .byte con_катсцена_задержка, $0F
    .text " anyway"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "Something needs to fall"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "into place that tips"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "the scales for them.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_смещение_текста, $02
    .text "B: @Ok,"
    .byte con_катсцена_задержка, $08
    .text " then."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "How about West"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Germany,"
    .byte con_катсцена_задержка, $1E
    .text " or Brazil?@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $02
    .text "C: @Brazil would need a"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "skilled goalkeeper,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "which they don't have.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $02
    .text "A: @Y'"
    .byte con_катсцена_задержка, $08
    .text "know"
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .text "funny that"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "should come up.@"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_задний_фон, $64
    .byte con_катсцена_FB, $01, $3A
    .byte con_катсцена_F3, $FF, $10, $29
    .byte con_катсцена_номер_звука, $46
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $02
    .text "A: @I've been hearing"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "rumors about a certain"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "pro goalkeeper,"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "coming over from Italy"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "back home just to"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "join up with Brazil"
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $02
    .text "B: @The so-"
    .byte con_катсцена_задержка, $08
    .text "called"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $06
    .text "@Keeper Machine@"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .text " of"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Inter Milan in the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Italian league,"
    .byte con_катсцена_задержка, $0F
    .text " yeah?@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $14
    
    
    
    .byte con_катсцена_смещение_текста, $08
    .text "@Funny how fast"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "rumors spread.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $02
    .text "A: @Yeah,"
    .byte con_катсцена_задержка, $0F
    .text " funny."
    .byte con_катсцена_задержка, $14
    .text " Anyway,"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $12
    .byte con_катсцена_FB, $01, $62
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Roberto Hongo himself"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "called up to have"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "the guy come over.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $06
    .text "@That's how much he"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "wants the victory.@"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $2E
    .byte con_катсцена_FB, $01, $47
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_F8, $02
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $02
    .text "B: @Must be rough on"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Roberto's foreign"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "exchange student,"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "you think?@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $02
    .text "C: @No kidding."
    .byte con_катсцена_задержка, $1E
    .text " It'll"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "come down to teacher"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "and pupil in the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "finals,"
    .byte con_катсцена_задержка, $14
    .text " for sure.@"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $1B
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $02
    .text "A:"
    .byte con_катсцена_скорость_текста, $08
    .text " @..."
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .text "I wasn't finished."
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "There's still one"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "more thing"
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $02
    .text "B: @Then quit drawing"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "it out and"
    .byte con_катсцена_задержка, $0F
    .text " TELL"
    .byte con_катсцена_задержка, $0F
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "us,"
    .byte con_катсцена_задержка, $08
    .text " already!@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_смещение_текста, $02
    .text "A: @Oh,"
    .byte con_катсцена_задержка, $08
    .text " look at the time!"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Gotta make the deadline,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "can't stay,"
    .byte con_катсцена_задержка, $0F
    .text " see ya!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_номер_звука, $27
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $02
    .text "B: @That guy runs just about"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "as fast as his mouth.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $02
    .text "C: @He's gonna stumble over"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "his own tongue one day"
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход


