.segment "BANK_29"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

    .word off_A195_13_после_победы_над_японией






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
    .byte con_катсцена_смещение_текста, $07
    .text "@Would you", $3A, $3B, "@"
    .byte $F5, $FF
    .byte $FA, $34
    .byte $F7
    .byte con_катсцена_номер_звука, $1E
    .byte $F8, $0E
    .byte con_катсцена_номер_звука, $52
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "@Ey,"
    .byte con_катсцена_задержка, $0F
    .text " Tsubasa", $3A, $3B
    .byte con_катсцена_задержка, $14
    .text "time"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "for the meeting!@"
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
    .text "@Ish", $3A, $3B
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
    .byte con_катсцена_смещение_текста, $06
    .text "@So,"
    .byte con_катсцена_задержка, $1E
    .text " it's like that?"
    .byte con_катсцена_задержка, $3C
    .byte $FB, $01, $2B
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $06
    .byte con_катсцена_смещение_текста, $07
    .text "Interesting"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
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
