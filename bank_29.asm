.segment "BANK_29"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

    .word off_A195_13_после_победы_над_японией
    .word off_A5D6_14_после_победы_над_китаем
    .word off_A703_15_после_победы_над_кореей






off_A195_13_после_победы_над_японией:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $0F
    .byte $FB, $01, $43
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
    
    
    
    .byte $FA, $2E
    .byte $FB, $01, $3B
    .byte $F7
    .byte $F3, $00
    .byte $F5, $04
    .byte $FA, $10
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
    .text "@That's it for us this"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "season."
    .byte con_катсцена_задержка, $3C
    .text " Now", $3A, $3B
    .byte con_катсцена_задержка, $14
    .text "go and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "join your friends.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $4E
    .byte $F7
    .byte $F3, $00
    .byte $FA, $11
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $04
    .text "@My friends"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .text " It's been"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "three years since I"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "started playing with"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "you all.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $50
    
    
    
    .byte $FB, $01, $11
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
    .text "Amaral and Dotil.@"
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
    
    
    
    .byte $FB, $01, $4E
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
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text " Sayonara,"
    .byte con_катсцена_задержка, $28
    .text " Roberto.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $3F
    .byte $F7
    .byte $F3, $00
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
    
    
    
    .byte $FB, $01, $4E
    .byte $F7
    .byte $F3, $00
    .byte $FA, $30
    .byte con_катсцена_смещение_текста, $06
    .text "@Yeah."
    .byte con_катсцена_задержка, $14
    .text " The Golden"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "Duo will"
    .byte con_катсцена_номер_звука, $01
    .byte $FB, $01, $12
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
    .byte $F5, $FF
    
    
    
    .byte $FB, $01, $26
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $03
    .text " "
    .byte $F8, $02
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
    .byte $FB, $02, $9C, $8E
    .byte con_катсцена_осветление_экрана
    .byte $F5, $05
    .byte $F4, $05
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
    .byte $F4, $04
    
    
    
    .byte $F8, $0B
    .byte con_катсцена_задержка, $F0
    .byte $F4, $05
    .byte con_катсцена_задержка, $78
    .byte $F8, $02
    .byte $F8, $0B
    .byte con_катсцена_затереть_текст
    .byte $F4, $04
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $03
    .text "@You'll be leaving for"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "the World Cup Qualifers"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
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
    .byte con_катсцена_задержка, $3C
    
    
    
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
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $32
    .byte $FA, $33
    .byte $FB, $01, $26
    .byte con_катсцена_осветление_экрана
    .byte $F5, $05
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
    
    
    
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "@Ah, "
    .byte con_катсцена_задержка, $0F
    .text "well"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte $FB, $01, $26
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $07
    .text "Sanae,"
    .byte con_катсцена_задержка, $0F
    .text " I'm s"
    .byte $FB, $01, $27
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
    
    
    
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $78
    .byte $FB, $01, $57
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
    
    
    
    .byte $FB, $01, $27
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $14
    .byte $FB, $01, $26
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
    
    
    
    .byte $FB, $01, $57
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_смещение_текста, $05
    .text "@When I"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .text " when all"
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
    
    
    
    .byte $FB, $01, $66
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $05
    .text "@Would you", $3A, $3B, "@"
    .byte $F5, $FF
    .byte $FA, $34
    .byte $F7
    .byte con_катсцена_номер_звука, $1E
    .byte $F8, $0E
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
    
    
    
    .byte $F8, $02
    .byte con_катсцена_номер_звука, $48
    .byte $FB, $01, $08
    .byte $F7
    .byte $F3, $00
    .byte $FA, $32
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $08
    .text "@Ish-"
    .byte con_катсцена_задержка, $0F
    .text "Ishizaki!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $28
    .byte $F7
    .byte $F3, $00
    .byte $FA, $33
    .byte $F5, $05
    .byte con_катсцена_задержка, $3C
    .byte $FB, $01, $27
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $04
    .text "@I can't join you along"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "the way,"
    .byte con_катсцена_задержка, $1E
    .byte $FB, $01, $26
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
    
    
    
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
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
    
    
    
    .byte $FB, $01, $24
    .byte $F7
    .byte $F3, $00
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
    .text " did I come"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "in at a bad time?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
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
    .byte $FB, $01, $1A
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $47
    .byte $F5, $05
    .byte $F8, $0C
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte $F8, $02
    .byte $F8, $0C
    .byte con_катсцена_задержка, $3C
    .byte $FB, $01, $2A
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $06
    .text "(So,"
    .byte con_катсцена_задержка, $1E
    .text " it's like that?"
    .byte con_катсцена_задержка, $3C
    .byte $FB, $01, $2B
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
    .byte $FB, $01, $A9
    .byte $F8, $0D
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
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $11
    .byte $FA, $10
    .byte $FB, $01, $22
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $47
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text "Li Han-ne: @Our Rising"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "Dragon was defeated"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "by your spirit! We"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "humbly admit defeat.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte $FB, $01, $33
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $28
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $1F    ; <ま>
    .byte $04    ; <え>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $A4    ; <ご>
    .byte $A0    ; <が>
    .byte $00
    .byte $1A    ; <は>
    .byte $15    ; <な>
    .byte $0E    ; <せ>
    .byte $29    ; <る>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $44
    .byte $F7
    .byte $F3, $FF, $00, $20
    .byte con_катсцена_закрыть_рот
    .byte $68    ; <リ>
    .byte $3F    ; <•>
    .byte $C3    ; <バ>
    .byte $6E    ; <ン>
    .byte $48    ; <ク>
    .byte $6E    ; <ン>
    .byte con_катсцена_закрыть_рот
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte $00
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $11    ; <ち>
    .byte $30    ; <ゃ>
    .byte $2E    ; <ん>
    .byte $1A    ; <は>
    .byte $00
    .byte $4A    ; <コ>
    .byte $6F    ; <ッ>
    .byte $48    ; <ク>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $11    ; <ち>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $A0    ; <が>
    .byte $02    ; <い>
    .byte $16    ; <に>
    .byte $00
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte con_катсцена_новая_строка
    .byte $16    ; <に>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $1D    ; <へ>
    .byte $1A    ; <は>
    .byte $00
    .byte $26    ; <よ>
    .byte $08    ; <く>
    .byte $00
    .byte $02    ; <い>
    .byte $08    ; <く>
    .byte $19    ; <の>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $68
    .byte $F7
    .byte $F3, $00
    .byte $40    ; <「>
    .byte $0C    ; <し>
    .byte $06    ; <か>
    .byte $0C    ; <し>
    .byte con_катсцена_задержка, $28
    .byte $00
    .byte $0A    ; <こ>
    .byte $03    ; <う>
    .byte $00
    .byte $0F    ; <そ>
    .byte $2F    ; <っ>
    .byte $08    ; <く>
    .byte $28    ; <り>
    .byte $AA    ; <だ>
    .byte $14    ; <と>
    .byte con_катсцена_новая_строка
    .byte $AE    ; <ど>
    .byte $2F    ; <っ>
    .byte $11    ; <ち>
    .byte $A0    ; <が>
    .byte $AE    ; <ど>
    .byte $2F    ; <っ>
    .byte $11    ; <ち>
    .byte $AA    ; <だ>
    .byte $06    ; <か>
    .byte $00
    .byte $2C    ; <わ>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $18    ; <ね>
    .byte $75    ; <ェ>
    .byte $24    ; <や>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $22
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_закрыть_рот
    .byte $68    ; <リ>
    .byte $3F    ; <•>
    .byte $5A    ; <ハ>
    .byte $6E    ; <ン>
    .byte $58    ; <ネ>
    .byte con_катсцена_закрыть_рот
    .byte $40    ; <「>
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $0A    ; <こ>
    .byte $08    ; <く>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $16    ; <に>
    .byte $23    ; <も>
    .byte $00
    .byte $4A    ; <コ>
    .byte $6E    ; <ン>
    .byte $C4    ; <ビ>
    .byte $CF    ; <プ>
    .byte $6A    ; <レ>
    .byte $42    ; <イ>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $12    ; <つ>
    .byte $06    ; <か>
    .byte $03    ; <う>
    .byte $24    ; <や>
    .byte $12    ; <つ>
    .byte $A0    ; <が>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $10    ; <た>
    .byte $10    ; <た>
    .byte $06    ; <か>
    .byte $03    ; <う>
    .byte $14    ; <と>
    .byte $07    ; <き>
    .byte $1A    ; <は>
    .byte $00
    .byte $07    ; <き>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $09    ; <け>
    .byte $2B    ; <ろ>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $66
    .byte $F7
    .byte $F3, $00
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $08    ; <く>
    .byte $00
    .byte $05    ; <お>
    .byte $B3    ; <ぼ>
    .byte $04    ; <え>
    .byte $13    ; <て>
    .byte $05    ; <お>
    .byte $08    ; <く>
    .byte $26    ; <よ>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $01    ; <あ>
    .byte $28    ; <り>
    .byte $A0    ; <が>
    .byte $14    ; <と>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход






off_A703_15_после_победы_над_кореей:
    .byte $E8, $01
    .byte con_катсцена_задний_фон, $0D
    .byte $FB, $01, $0E
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_номер_звука, $47
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $7D    ; <ー>
    .byte $0C    ; <し>
    .byte $00
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $11    ; <ち>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $23    ; <も>
    .byte $00
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $17    ; <ぬ>
    .byte $08    ; <く>
    .byte $A9    ; <ぞ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_скорость_текста, $02
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte $FA, $2E
    .byte $FB, $01, $2D
    .byte $F7
    .byte $F3, $00
    .byte $FA, $65
    .byte $F5, $04
    .byte con_катсцена_скорость_текста, $06
    .byte $40    ; <「>
    .byte $12    ; <つ>
    .byte $AF    ; <ば>
    .byte $0B    ; <さ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $14
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $1D    ; <へ>
    .byte $2E    ; <ん>
    .byte $26    ; <よ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $12
    .byte $F7
    .byte $F3, $FF, $13, $0C
    .byte $FA, $38
    .byte con_катсцена_номер_звука, $43
    .byte con_катсцена_скорость_текста, $00
    .byte $40    ; <「>
    .byte $04    ; <え>
    .byte $2F    ; <っ>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $3D
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $06
    .byte $05    ; <お>
    .byte $15    ; <な>
    .byte $A6    ; <じ>
    .byte $0A    ; <こ>
    .byte $2B    ; <ろ>
    .byte $00
    .byte $0E    ; <せ>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $08    ; <く>
    .byte $11    ; <ち>
    .byte $AD    ; <で>
    .byte $23    ; <も>
    .byte con_катсцена_новая_строка
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $1B    ; <ひ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $A0    ; <が>
    .byte $00
    .byte $12    ; <つ>
    .byte $A1    ; <ぎ>
    .byte $12    ; <つ>
    .byte $A1    ; <ぎ>
    .byte $14    ; <と>
    .byte con_катсцена_новая_строка
    .byte $06    ; <か>
    .byte $11    ; <ち>
    .byte $15    ; <な>
    .byte $19    ; <の>
    .byte $28    ; <り>
    .byte $2D    ; <を>
    .byte $01    ; <あ>
    .byte $A3    ; <げ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $10    ; <た>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $3C
    .byte $FB, $01, $95
    .byte con_катсцена_скорость_текста, $00
    .byte $00
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $B2    ; <べ>
    .byte $02    ; <い>
    .byte $26    ; <よ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte con_катсцена_новая_строка
    .byte $41    ; <ア>
    .byte $69    ; <ル>
    .byte $BC    ; <ゼ>
    .byte $6E    ; <ン>
    .byte $51    ; <チ>
    .byte $6E    ; <ン>
    .byte $00
    .byte $91    ; <V>
    .byte $8F    ; <S>
    .byte $00
    .byte $43    ; <ウ>
    .byte $69    ; <ル>
    .byte $B6    ; <グ>
    .byte $41    ; <ア>
    .byte $42    ; <イ>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $FA, $03
    .byte $FB, $01, $78
    .byte $F3, $FF, $14, $22
    .byte con_катсцена_номер_звука, $0B
    .byte con_катсцена_задержка, $14
    .byte $F5, $0C
    .byte con_катсцена_скорость_текста, $04
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $A0    ; <が>
    .byte $00
    .byte $13    ; <て>
    .byte $2E    ; <ん>
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $14
    .byte $5C    ; <フ>
    .byte $73    ; <ヮ>
    .byte $6E    ; <ン>
    .byte $3F    ; <•>
    .byte $C1    ; <デ>
    .byte $74    ; <ィ>
    .byte $41    ; <ア>
    .byte $4D    ; <ス>
    .byte $AA    ; <だ>
    .byte $7D    ; <ー>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $21
    .byte $FB, $02, $73, $74
    .byte $F7
    .byte $F3, $00
    .byte $F5, $03
    .byte con_катсцена_номер_звука, $0E
    .byte con_катсцена_задержка, $28
    .byte $F5, $FF
    .byte $FA, $5A
    .byte $FB, $01, $01
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $03
    .byte $FA, $20
    .byte $F7
    .byte con_катсцена_номер_звука, $04
    .byte con_катсцена_задержка
    .byte $35    ; <2>
    .byte $F7
    .byte con_катсцена_номер_звука, $05
    .byte $FA, $56
    .byte $FB, $03, $C0, $A0, $80
    .byte $F7
    .byte con_катсцена_номер_звука, $07
    .byte $FA, $39
    .byte $FB, $01, $85
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $5D
    .byte $F5, $04
    .byte con_катсцена_вид_окна_текста
    .byte $01    ; <あ>
    .byte $EC, $00
    .byte $07    ; <き>
    .byte $1F    ; <ま>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte $00
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte $EE
    .byte con_катсцена_затереть_текст
    .byte $FA, $3A
    .byte $FB, $01, $8B
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $66
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $28
    .byte $41    ; <ア>
    .byte $69    ; <ル>
    .byte $BC    ; <ゼ>
    .byte $6E    ; <ン>
    .byte $51    ; <チ>
    .byte $6E    ; <ン>
    .byte $A0    ; <が>
    .byte $00
    .byte $43    ; <ウ>
    .byte $69    ; <ル>
    .byte $B6    ; <グ>
    .byte $41    ; <ア>
    .byte $42    ; <イ>
    .byte $2D    ; <を>
    .byte con_катсцена_новая_строка
    .byte $08    ; <く>
    .byte $AA    ; <だ>
    .byte $0C    ; <し>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $EE
    .byte $EC, $FF
    .byte con_катсцена_задний_фон, $3C
    .byte $FB, $01, $96
    .byte con_катсцена_скорость_текста, $00
    .byte $00
    .byte $00
    .byte $00
    .byte $66    ; <ヨ>
    .byte $7D    ; <ー>
    .byte $6B    ; <ロ>
    .byte $6F    ; <ッ>
    .byte $CD    ; <パ>
    .byte $26    ; <よ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte con_катсцена_новая_строка
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $36    ; <3>
    .byte $B6    ; <グ>
    .byte $69    ; <ル>
    .byte $7D    ; <ー>
    .byte $CF    ; <プ>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte con_катсцена_новая_строка
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $00
    .byte $91    ; <V>
    .byte $8F    ; <S>
    .byte $00
    .byte $C1    ; <デ>
    .byte $6E    ; <ン>
    .byte $5F    ; <マ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $36
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte $EC, $00
    .byte con_катсцена_задний_фон, $01
    .byte $FB, $01, $6F
    .byte $F3, $00
    .byte $F8, $0A
    .byte $F5, $00
    .byte con_катсцена_номер_звука, $68
    .byte con_катсцена_скорость_текста, $06
    .byte $CE    ; <ピ>
    .byte $44    ; <エ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $00
    .byte $5F    ; <マ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $2C    ; <わ>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $14
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $2B    ; <ろ>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $00
    .byte $55    ; <ナ>
    .byte $D1    ; <ポ>
    .byte $6A    ; <レ>
    .byte $45    ; <オ>
    .byte $6E    ; <ン>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $5C    ; <フ>
    .byte $76    ; <ォ>
    .byte $6B    ; <ロ>
    .byte $7D    ; <ー>
    .byte $16    ; <に>
    .byte $00
    .byte $01    ; <あ>
    .byte $A0    ; <が>
    .byte $29    ; <る>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $E8, $01
    .byte $EE
    .byte $EC, $FF
    .byte con_катсцена_задний_фон, $3B
    .byte $FB, $01, $7A
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $26
    .byte $F5, $08
    .byte con_катсцена_скорость_текста, $04
    .byte $40    ; <「>
    .byte $02    ; <い>
    .byte $08    ; <く>
    .byte $A9    ; <ぞ>
    .byte $00
    .byte $55    ; <ナ>
    .byte $D1    ; <ポ>
    .byte $6A    ; <レ>
    .byte $45    ; <オ>
    .byte $6E    ; <ン>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $67    ; <ラ>
    .byte $4D    ; <ス>
    .byte $54    ; <ト>
    .byte $1A    ; <は>
    .byte $00
    .byte $01    ; <あ>
    .byte $19    ; <の>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $7B
    .byte $F7
    .byte $F3, $00
    .byte $F5, $08
    .byte con_катсцена_номер_звука, $26
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $00
    .byte $CE    ; <ピ>
    .byte $44    ; <エ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_затереть_текст
    .byte $FA, $09
    .byte $FB, $01, $43
    .byte $F7
    .byte $F3, $00
    .byte $F5, $0C
    .byte con_катсцена_вид_окна_текста
    .byte $01    ; <あ>
    .byte $EC, $01
    .byte $15    ; <な>
    .byte $7A    ; <、>
    .byte con_катсцена_номер_звука, $09
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_номер_звука, $09
    .byte $15    ; <な>
    .byte $2E    ; <ん>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte $00
    .byte $0A    ; <こ>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte con_катсцена_номер_звука, $0A
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $39
    .byte $FB, $01, $85
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $5D
    .byte $F5, $04
    .byte $01    ; <あ>
    .byte $01    ; <あ>
    .byte $2F    ; <っ>
    .byte $79    ; <!>
    .byte con_катсцена_задержка, $14
    .byte $00
    .byte $C7    ; <ボ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $A0    ; <が>
    .byte con_катсцена_новая_строка
    .byte $C1    ; <デ>
    .byte $6E    ; <ン>
    .byte $5F    ; <マ>
    .byte $7D    ; <ー>
    .byte $48    ; <ク>
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $16    ; <に>
    .byte $00
    .byte $1A    ; <は>
    .byte $02    ; <い>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte $EE
    .byte con_катсцена_затереть_текст
    .byte $FA, $3A
    .byte $FB, $01, $8B
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $66
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte $EC, $00
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $28
    .byte $5C    ; <フ>
    .byte $67    ; <ラ>
    .byte $6E    ; <ン>
    .byte $4D    ; <ス>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $A0    ; <が>
    .byte $00
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $1D    ; <へ>
    .byte con_катсцена_новая_строка
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $12    ; <つ>
    .byte $A6    ; <じ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $EE
    .byte $EC, $FF
    .byte con_катсцена_задний_фон, $3C
    .byte $FB, $03, $BD, $C8, $97
    .byte con_катсцена_скорость_текста, $00
    .byte $66    ; <ヨ>
    .byte $7D    ; <ー>
    .byte $6B    ; <ロ>
    .byte $6F    ; <ッ>
    .byte $CD    ; <パ>
    .byte $26    ; <よ>
    .byte $0E    ; <せ>
    .byte $2E    ; <ん>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte con_катсцена_новая_строка
    .byte $56    ; <ニ>
    .byte $4C    ; <シ>
    .byte $C2    ; <ド>
    .byte $42    ; <イ>
    .byte $52    ; <ツ>
    .byte $00
    .byte $91    ; <V>
    .byte $8F    ; <S>
    .byte $00
    .byte $D1    ; <ポ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $B4    ; <ガ>
    .byte $69    ; <ル>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $38
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_вид_окна_текста
    .byte $01    ; <あ>
    .byte $EC, $00
    .byte con_катсцена_задний_фон, $66
    .byte $FB, $03, $9E, $9F, $A5
    .byte con_катсцена_номер_звука, $6B
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_скорость_текста, $04
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $55    ; <ナ>
    .byte $42    ; <イ>
    .byte $BE    ; <ダ>
    .byte $7D    ; <ー>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $00
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $16    ; <に>
    .byte $02    ; <い>
    .byte $08    ; <く>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $28
    .byte $6B    ; <ロ>
    .byte $6E    ; <ン>
    .byte $B6    ; <グ>
    .byte $4C    ; <シ>
    .byte $71    ; <ュ>
    .byte $7D    ; <ー>
    .byte $54    ; <ト>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $D1    ; <ポ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $B4    ; <ガ>
    .byte $69    ; <ル>
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $2D    ; <を>
    .byte $18    ; <ね>
    .byte $27    ; <ら>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_номер_звука, $02
    .byte con_катсцена_затереть_текст
    .byte $EE
    .byte $EC, $FF
    .byte $FA, $05
    .byte $FB, $01, $79
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $30
    .byte $F5, $11
    .byte con_катсцена_скорость_текста, $02
    .byte $40    ; <「>
    .byte $5C    ; <フ>
    .byte $73    ; <ヮ>
    .byte $42    ; <イ>
    .byte $64    ; <ヤ>
    .byte $7D    ; <ー>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $F5, $FF
    .byte con_катсцена_затереть_текст
    .byte $FA, $21
    .byte $FB, $02, $73, $74
    .byte $F7
    .byte $F3, $00
    .byte $F5, $0F
    .byte con_катсцена_номер_звука, $0E
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_номер_звука, $10
    .byte $F5, $FF
    .byte $FA, $5A
    .byte $FB, $01, $00
    .byte $F7
    .byte $F3, $FF, $2D, $04
    .byte con_катсцена_номер_звука, $06
    .byte $FA, $20
    .byte $F7
    .byte con_катсцена_номер_звука, $07
    .byte con_катсцена_задержка
    .byte $1A    ; <は>
    .byte con_катсцена_номер_звука, $07
    .byte con_катсцена_задержка
    .byte $19    ; <の>
    .byte $F7
    .byte con_катсцена_номер_звука, $08
    .byte $FA, $56
    .byte $FB, $03, $C0, $A0, $80
    .byte $F7
    .byte con_катсцена_номер_звука, $07
    .byte $FA, $39
    .byte $FB, $01, $86
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $61
    .byte $F5, $04
    .byte con_катсцена_вид_окна_текста
    .byte $01    ; <あ>
    .byte $EC, $00
    .byte con_катсцена_скорость_текста, $04
    .byte $07    ; <き>
    .byte $1F    ; <ま>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte $79    ; <!>
    .byte $00
    .byte $B8    ; <ゴ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte $EE
    .byte con_катсцена_затереть_текст
    .byte $FA, $3A
    .byte $FB, $01, $8B
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $66
    .byte con_катсцена_вид_окна_текста
    .byte $00
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $31    ; <ゅ>
    .byte $03    ; <う>
    .byte $28    ; <り>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $28
    .byte $66    ; <ヨ>
    .byte $7D    ; <ー>
    .byte $6B    ; <ロ>
    .byte $6F    ; <ッ>
    .byte $CD    ; <パ>
    .byte $11    ; <ち>
    .byte $08    ; <く>
    .byte $19    ; <の>
    .byte $00
    .byte $AA    ; <だ>
    .byte $02    ; <い>
    .byte $1B    ; <ひ>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $56    ; <ニ>
    .byte $4C    ; <シ>
    .byte $C2    ; <ド>
    .byte $42    ; <イ>
    .byte $52    ; <ツ>
    .byte $16    ; <に>
    .byte $00
    .byte $09    ; <け>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка
    .byte $B4    ; <ガ>
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte $EE
    .byte $EC, $FF
    .byte con_катсцена_задний_фон, $1D
    .byte $FB, $03, $C9, $91, $99
    .byte con_катсцена_скорость_текста, $00
    .byte $0F    ; <そ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $00
    .byte $6C    ; <ワ>
    .byte $7D    ; <ー>
    .byte $69    ; <ル>
    .byte $C2    ; <ド>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $00
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte $00
    .byte $00
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $11    ; <ち>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $46
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $13
    .byte $FA, $12
    .byte $FB, $01, $46
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_скорость_текста, $08
    .byte con_катсцена_задержка, $3C
    .byte $40    ; <「>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $08    ; <く>
    .byte $2E    ; <ん>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $2C    ; <わ>
    .byte $A0    ; <が>
    .byte $00
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $16    ; <に>
    .byte con_катсцена_новая_строка
    .byte $10    ; <た>
    .byte $19    ; <の>
    .byte $23    ; <も>
    .byte $0C    ; <し>
    .byte $02    ; <い>
    .byte $20    ; <み>
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $A0    ; <が>
    .byte $00
    .byte $07    ; <き>
    .byte $13    ; <て>
    .byte $08    ; <く>
    .byte $2A    ; <れ>
    .byte $1F    ; <ま>
    .byte $0C    ; <し>
    .byte $10    ; <た>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $40    ; <「>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $19    ; <の>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $AA    ; <だ>
    .byte con_катсцена_новая_строка
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte $00
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $08    ; <く>
    .byte $2D    ; <を>
    .byte $12    ; <つ>
    .byte $14    ; <と>
    .byte $22    ; <め>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $10    ; <た>
    .byte $2D    ; <を>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $1F    ; <ま>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $48
    .byte $F7
    .byte $F3, $00
    .byte $F5, $08
    .byte con_катсцена_скорость_текста, $04
    .byte $40    ; <「>
    .byte $15    ; <な>
    .byte $79    ; <!>
    .byte con_катсцена_задержка, $28
    .byte $00
    .byte $15    ; <な>
    .byte $16    ; <に>
    .byte $74    ; <ィ>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_затереть_текст
    .byte $FA, $50
    .byte $FB, $01, $6C
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $52
    .byte con_катсцена_задержка, $78
    .byte $FA, $13
    .byte $FB, $01, $3D
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_закрыть_рот
    .byte $40    ; <「>
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $A4    ; <ご>
    .byte $03    ; <う>
    .byte con_катсцена_закрыть_рот
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte $FA, $12
    .byte $F4, $05
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $49
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $08
    .byte $F4, $04
    .byte $40    ; <「>
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $06    ; <か>
    .byte $27    ; <ら>
    .byte $00
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $08    ; <く>
    .byte $16    ; <に>
    .byte $15    ; <な>
    .byte $2F    ; <っ>
    .byte $10    ; <た>
    .byte con_катсцена_новая_строка
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $A4    ; <ご>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte $40    ; <「>
    .byte $2C    ; <わ>
    .byte $2A    ; <れ>
    .byte $2C    ; <わ>
    .byte $2A    ; <れ>
    .byte $A0    ; <が>
    .byte $00
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte $AD    ; <で>
    .byte con_катсцена_новая_строка
    .byte $22    ; <め>
    .byte $A5    ; <ざ>
    .byte $0D    ; <す>
    .byte $23    ; <も>
    .byte $19    ; <の>
    .byte $1A    ; <は>
    .byte $00
    .byte $10    ; <た>
    .byte $AA    ; <だ>
    .byte $1B    ; <ひ>
    .byte $14    ; <と>
    .byte $12    ; <つ>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $0F    ; <そ>
    .byte $2A    ; <れ>
    .byte $1A    ; <は>
    .byte con_катсцена_новая_строка
    .byte $C5    ; <ブ>
    .byte $67    ; <ラ>
    .byte $BA    ; <ジ>
    .byte $69    ; <ル>
    .byte $65    ; <ユ>
    .byte $7D    ; <ー>
    .byte $4D    ; <ス>
    .byte $19    ; <の>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $AA    ; <だ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $40    ; <「>
    .byte $07    ; <き>
    .byte $20    ; <み>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte $06    ; <か>
    .byte $12    ; <つ>
    .byte $24    ; <や>
    .byte $08    ; <く>
    .byte $16    ; <に>
    .byte $00
    .byte $07    ; <き>
    .byte $10    ; <た>
    .byte $02    ; <い>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte $02    ; <い>
    .byte $29    ; <る>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $3C
    .byte $14    ; <と>
    .byte $23    ; <も>
    .byte $16    ; <に>
    .byte $00
    .byte $25    ; <ゆ>
    .byte $03    ; <う>
    .byte $0C    ; <し>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $2D    ; <を>
    .byte $22    ; <め>
    .byte $A5    ; <ざ>
    .byte $0C    ; <し>
    .byte $13    ; <て>
    .byte con_катсцена_новая_строка
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2B    ; <ろ>
    .byte $03    ; <う>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte $FB, $01, $5A
    .byte $F7
    .byte $F3, $00
    .byte con_катсцена_задержка, $50
    .byte $40    ; <「>
    .byte $6B    ; <ロ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $54    ; <ト>
    .byte con_катсцена_номер_звука, $31
    .byte $1E    ; <ほ>
    .byte $2E    ; <ん>
    .byte $A4    ; <ご>
    .byte $03    ; <う>
    .byte $A0    ; <が>
    .byte $7A    ; <、>
    .byte con_катсцена_задержка, $28
    .byte $05    ; <お>
    .byte $2A    ; <れ>
    .byte $10    ; <た>
    .byte $11    ; <ち>
    .byte $19    ; <の>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_номер_звука, $57
    .byte $06    ; <か>
    .byte $2E    ; <ん>
    .byte $14    ; <と>
    .byte $08    ; <く>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte $3F    ; <•>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка
    .byte $B4    ; <ガ>
    .byte con_катсцена_затереть_текст
    .byte $FA, $50
    .byte $FB, $01, $6C
    .byte $F7
    .byte $F3, $00
    .byte $F8, $02
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход
