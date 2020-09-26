.segment "BANK_32"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

    .word off_A43B_22_финальная_катсцена



off_A43B_22_финальная_катсцена:
    .byte con_катсцена_E8, $01
    .byte con_катсцена_задний_фон, $0D
    .byte con_катсцена_FB, $01, $43
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $4F
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $04
    .text "@We did it!"
    .byte con_катсцена_задержка, $0F
    .text " We did it!!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "@The World Cup is ours!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "@Japan is victorious!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FA, $10
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_FA, $2B
    .byte con_катсцена_F5, $04
    .byte con_катсцена_смещение_текста, $06
    .text "@Great job,"
    .byte con_катсцена_задержка, $0F
    .text " guys"
    .byte con_катсцена_скорость_текста, $08
    .byte con_катсцена_F8, $02
    .text "...@"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $43
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_FA, $11
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_вид_окна_текста, $01
    .byte con_катсцена_комментатор, $02
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "The Japanese players"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "begin their victory"
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "lap,"
    .byte con_катсцена_задержка, $14
    .text " with Captain"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Tsubasa at the lead!"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "Japan has truly"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "earned their spoils!"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_все
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_затереть_все
    .byte con_катсцена_комментатор, $FF
    .byte con_катсцена_F7
    .byte con_катсцена_F8, $0E
    .byte con_катсцена_смещение_текста, $06
    .text "@You brought us to"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "victory,"
    .byte con_катсцена_задержка, $0F
    .text " Tsubasa!@"
    .byte con_катсцена_F8, $02
    .byte con_катсцена_FA, $10
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $03
    .text "@No,"
    .byte con_катсцена_задержка, $0F
    .text " not just me."
    .byte con_катсцена_задержка, $1E
    .text " All"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "of us played a part in"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "this,"
    .byte con_катсцена_задержка, $14
    .text " working together!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $06
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_смещение_текста, $0A
    .text "@Together"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $39
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "@Tsubasa's right."
    .byte con_катсцена_задержка, $1E
    .text " We"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "couldn't have done this"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "without each other.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $20
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $C7
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_смещение_текста, $06
    .text "@Phew"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_скорость_текста, $04
    .text "it's taken"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "a lot to get here.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $1C
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $C8
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $06
    .text "@Yeah,"
    .byte con_катсцена_задержка, $14
    .text " everyone gave"
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "100"
    .byte con_катсцена_задержка, $14
    .text "%"
    .byte con_катсцена_задержка, $14
    .text " all the way!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $3F
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_смещение_текста, $07
    .text "@Every single one.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_FA, $2B
    .byte con_катсцена_FB, $01, $43
    .byte con_катсцена_F7
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_FA, $10
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_вид_окна_текста, $01
    .byte con_катсцена_комментатор, $02
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "The team really"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "acted as one to win"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "this tournament!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Congratulations to"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "the Japan squad!"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_комментатор, $04
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Let's celebrate!!"
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_все
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_комментатор, $FF
    .byte con_катсцена_FA, $11
    .byte con_катсцена_FB, $01, $0A
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_FA, $10
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $04
    .text "@That was one hell of a"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "second half,"
    .byte con_катсцена_задержка, $14
    .text " Coimbra.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $5F
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $07
    .text "(Dammit,"
    .byte con_катсцена_задержка, $0F
    .text " if only"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "he had let me"
    .byte con_катсцена_скорость_текста, $08
    .text "...)"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $06
    .byte con_катсцена_закрыть_рот
    .text " @A"
    .byte con_катсцена_закрыть_рот
    .text "h!"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text " Carlos?!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $0A
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $04
    .text "@You're a bit of an ass,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "but you really were on"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "fire out there."
    .byte con_катсцена_задержка, $28
    .text " I wish"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "we'd seen more of you.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_FB, $01, $63
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $04
    .text "@I'm not ashamed of"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "today's outcome."
    .byte con_катсцена_задержка, $1E
    .text " Our"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "battle doesn't end"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "here."
    .byte con_катсцена_задержка, $14
    .text " It's just begun.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $03
    .text "@To stand up to Japan and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "win the World Cup next"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "time,"
    .byte con_катсцена_задержка, $1E
    .text " we'll need our very"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "best working together.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $14
    
    
    
    .byte con_катсцена_FB, $01, $5F
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $03
    .text "@You're starting to sound"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "like the team's captain"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "yourself,"
    .byte con_катсцена_задержка, $14
    .text " Carlos.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $63
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $FF, $00, $0F
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_смещение_текста, $05
    .text "@I'd settle for being"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "a Super Striker!@"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_FA, $06
    .byte con_катсцена_FB, $01, $A3
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $C2
    .byte con_катсцена_номер_звука, $25
    .byte con_катсцена_F5, $08
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_F7
    .byte con_катсцена_F5, $04
    .byte con_катсцена_задержка, $B4
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_задний_фон, $1A
    .byte con_катсцена_FB, $01, $59
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_номер_звука, $51
    .byte con_катсцена_F5, $04
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_FA, $10
    .byte con_катсцена_смещение_текста, $03
    .text "@Well done,"
    .byte con_катсцена_задержка, $14
    .text " Tsubasa."
    .byte con_катсцена_задержка, $1E
    .text " Well"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "done indeed."
    .byte con_катсцена_задержка, $1E
    .text " That was a"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "fantastic display today.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "@I think Jairo would"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "be proud of how you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "used his technique.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $03
    .text "@It was your letter that"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "started it all,"
    .byte con_катсцена_задержка, $14
    .text " Roberto."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "I just took the ball"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "and ran with it.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $3B
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $04
    .byte con_катсцена_закрыть_рот
    .text "@He"
    .byte con_катсцена_закрыть_рот
    .text "h. "
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_FB, $01, $3C
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .text "Although"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text "your"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "Cyclone isn't quite"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "the same as Jairo's.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $FF, $00, $0C
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_FB, $01, $12
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $09
    .text "@Eh?@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $3B
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $03
    .text "@No,"
    .byte con_катсцена_задержка, $1E
    .text " rather,"
    .byte con_катсцена_задержка, $28
    .text " it'd be"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "better to say that nobody"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "besides Jairo can shoot"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "the"
    .byte con_катсцена_задержка, $08
    .text " @true@ "
    .byte con_катсцена_задержка, $0F
    .text "Cyclone.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $03
    .text "@It was created by a man"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "who lacked a critical"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "ability to score goals.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@To him,"
    .byte con_катсцена_задержка, $14
    .text " it was a way"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "to cover his weakness,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "and it came to define"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "his entire career.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $03
    .text "@The Cyclone isn't just a"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "technique:"
    .byte con_катсцена_задержка, $1E
    .text " it's Jairo's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "legacy -"
    .byte con_катсцена_задержка, $1E
    .text " to Brazil,"
    .byte con_катсцена_задержка, $14
    .text " and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "to football itself.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $04
    .text "@It's all that,"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_закрыть_рот
    .text " hu"
    .byte con_катсцена_закрыть_рот
    .text "h"
    .byte con_катсцена_скорость_текста, $08
    .text "...?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $3B
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $07
    .text "@Tsubasa,"
    .byte con_катсцена_задержка, $1E
    .text " you had"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "the same mindset"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "Jairo did.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $14
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "@You saw your need,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "and by your own hands"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "created what was"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "necessary to win.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $03
    .text "@But you approached it"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "with your own unique"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "twist,"
    .byte con_катсцена_задержка, $14
    .text " and came up with"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "a superb shot in the end.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "@And so"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text "that's why"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Japan has its own"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Super Striker now!@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_смещение_текста, $07
    .text "@Roberto"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $3C
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "@Jairo's time came and"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "went,"
    .byte con_катсцена_задержка, $1E
    .text " while the Cyclone"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "waited for someone"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "new to possess it.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@Someone who will build"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "a new legacy on the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "foundations of the old.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $57
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_смещение_текста, $05
    .text "@A legacy"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text "I'll do"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "it,"
    .byte con_катсцена_задержка, $14
    .text " Roberto!"
    .byte con_катсцена_задержка, $1E
    .text " Let's"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "build a new legacy!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $3B
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $05
    .text "@I'll help you do"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "just that,"
    .byte con_катсцена_задержка, $14
    .text " Tsubasa."
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "One day at a time"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_F5, $FF
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_FA, $0D
    .byte con_катсцена_FB, $01, $0E
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $08
    .text "@Guys!@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "@We'll chart our"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "own path,"
    .byte con_катсцена_задержка, $08
    .text " too!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $03
    .text "@Blazing with a light the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "entire world will see!@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $01
    .byte con_катсцена_смещение_текста, $0B
    .text "@BANZAI!!@"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $0B
    .text "@BANZAI!!@"
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $45
    .byte con_катсцена_FB, $01, $53
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_вид_окна_текста, $00
    .byte con_катсцена_комментатор, $04
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "And now,"
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_задержка, $14
    .text " Tsubasa"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "is carrying the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "winner's trophy"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "in his hands!"
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $09
    .text "Congratulations,"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "Japan,"
    .byte con_катсцена_задержка, $1E
    .text " the best"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "youth side in"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "the world!!"
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $F0
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_затереть_все
    .byte con_катсцена_комментатор, $FF
    .byte con_катсцена_задний_фон, $11
    .byte con_катсцена_FA, $10
    .byte con_катсцена_FB, $01, $42
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $47
    .byte con_катсцена_F5, $04
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $03
    .text "@They're one outstanding"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "team,"
    .byte con_катсцена_задержка, $14
    .text " Mikami.@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "@That they are,"
    .byte con_катсцена_задержка, $1E
    .text " Katagiri.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $40
    .byte con_катсцена_F7
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $05
    .text "@With players like"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "these,"
    .byte con_катсцена_задержка, $1E
    .text " Japan could"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "become a real World"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Cup contender one day.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $42
    .byte con_катсцена_F7
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $04
    .text "@If their goal reaches"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "that far,"
    .byte con_катсцена_задержка, $14
    .text " they'll face"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "even bigger challenges"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "in the future.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $40
    .byte con_катсцена_F7
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $05
    .byte con_катсцена_закрыть_рот
    .text "@Hm"
    .byte con_катсцена_закрыть_рот
    .text "m. "
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_скорость_текста, $04
    .text "I have faith in"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "them", $3A, $3B
    .byte con_катсцена_задержка, $1E
    .text "and I know you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "won't let them slack"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "off for a moment.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $42
    .byte con_катсцена_F7
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $05
    .text "@Well,"
    .byte con_катсцена_задержка, $08
    .text " now"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text "when you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "work hard,"
    .byte con_катсцена_задержка, $14
    .text " you have"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "to play hard.@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_вид_окна_текста, $00
    .byte con_катсцена_комментатор, $04
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $09
    .text "After having circled"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "around the field on"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "their victory lap,"
    .byte con_катсцена_номер_звука, $69
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_частично_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $09
    .text "Japan are going"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "back to the bench!"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_все
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_комментатор, $FF
    
    
    
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_смещение_текста, $07
    .text "@You've all done"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "awesomely,"
    .byte con_катсцена_задержка, $14
    .text " boys.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_смещение_текста, $05
    .text "@Let's get back to the"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "hotel and go wild!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $0C
    .text "@Yeah!@"
    .byte con_катсцена_номер_звука, $62
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $0B
    .text "@Alright!@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_FB, $01, $24
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_FA, $2E
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "@Hey,"
    .byte con_катсцена_задержка, $14
    .text " uh"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_FB, $01, $07
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text "where ya"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "goin',"
    .byte con_катсцена_задержка, $14
    .text " Tsubasa?@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "@I'll be back soon,"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "go on without me.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_смещение_текста, $04
    .text "@Hey,"
    .byte con_катсцена_задержка, $0F
    .text " c'mon"
    .byte con_катсцена_FB, $01, $65
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text "Tsubasa"
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $48
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_F3, $00
    .byte con_катсцена_FA, $4A
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $07
    .text "@You came...@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_FB, $01, $28
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F5, $04
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $06
    .text "@Ah", $3A, $3B
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_FA, $57
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $04
    .text "Tsubasa!@"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "@It's a long way just"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "to get here"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $26
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $03
    .text "@Yoko"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text "she was insistent"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "I come and cheer you on."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_FB, $01, $27
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "Very insistent.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $05
    .text "@I see."
    .byte con_катсцена_задержка, $3C
    .text " I'm surprised"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Yoko did that.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $27
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_смещение_текста, $02
    .text "@I'm super,"
    .byte con_катсцена_задержка, $1E
    .text " super glad she"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $03
    .text "did."
    .byte con_катсцена_задержка, $28
    .text " All so I could say"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_FB, $01, $26
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $03
    .text "congratulations,"
    .byte con_катсцена_задержка, $28
    .text " Tsubasa.@"
    .byte con_катсцена_F5, $FF
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FA, $46
    .byte con_катсцена_FB, $02, $90, $9D
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_FA, $4C
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_FB, $01, $68
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_FA, $47
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $04
    .text "@Yoko,"
    .byte con_катсцена_задержка, $1E
    .text " you're not only"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "team manager,"
    .byte con_катсцена_задержка, $14
    .text " but team"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "matchmaker?"
    .byte con_катсцена_задержка, $14
    .text " Na-"
    .byte con_катсцена_задержка, $08
    .text "ha-"
    .byte con_катсцена_задержка, $08
    .text "ha"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $2B
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $07
    .text "@Oh,"
    .byte con_катсцена_задержка, $0F
    .text " hush."
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "It was worth it.@"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $33
    .byte con_катсцена_FB, $01, $56
    .byte con_катсцена_F3, $FF, $20, $3F
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $06
    .text "@Eh?!"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text " So I'll be"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "in Brazil for"
    .byte con_катсцена_скорость_текста, $08
    .text "...?@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_FA, $32
    .byte con_катсцена_затереть_текст
    
    
    
    .byte con_катсцена_FB, $01, $2A
    .byte con_катсцена_F7
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $03
    .text "@Yes,"
    .byte con_катсцена_задержка, $1E
    .text " but you can't tell"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "a soul about this until"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "after the finals.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $4F
; рот автоматически закрыт в таймере анимации
    .byte con_катсцена_F7
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_смещение_текста, $08
    .text "@Can I trust you"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "with this?@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $08
    .text "@Of"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .text "of course!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $14
    
    
    
    .byte con_катсцена_FB, $01, $2A
    .byte con_катсцена_F7
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_FB, $01, $2B
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_смещение_текста, $07
    .text "@Glad to hear it.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_F4, $02
    .byte con_катсцена_задний_фон, $47
    .byte con_катсцена_FA, $4C
    .byte con_катсцена_F4, $03
    .byte con_катсцена_FB, $01, $2B
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $04
    .text "@And so,"
    .byte con_катсцена_задержка, $1E
    .text " I came up with"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "the play that someone"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "else scored with"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_FB, $01, $2A
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text "@I've played my role,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "but it's a bit lonely"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "on the sidelines"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "...@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_FB, $01, $2B
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_FB, $01, $68
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $03
    .text "@Y'"
    .byte con_катсцена_задержка, $08
    .text "know,"
    .byte con_катсцена_задержка, $1E
    .text " Yoko"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_скорость_текста, $04
    .text "if you're"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "serious about @scoring@,"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_FB, $01, $2B
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $04
    .text "then you and I could", $3A, $3B, "@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $0A
    .byte con_катсцена_смещение_текста, $09
    .text "@Ishizaki"
    .byte con_катсцена_закрыть_рот
    .text "..."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_FB, $01, $2A
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $01
    .text "!@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $09
    .text "@NO GOOD!!@"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FA, $62
    .byte con_катсцена_FB, $01, $6B
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F5, $0C
    .byte con_катсцена_F8, $15
    .byte con_катсцена_скорость_текста, $00
    .byte con_катсцена_смещение_текста, $08
    .text "@OW!"
    .byte con_катсцена_номер_звука, $0E
    .byte con_катсцена_задержка, $14
    .text "-OW!"
    .byte con_катсцена_номер_звука, $0E
    .byte con_катсцена_задержка, $14
    .text "-OW!"
    .byte con_катсцена_номер_звука, $0E
    .byte con_катсцена_задержка, $14
    .text "-OW!@"
    .byte con_катсцена_номер_звука, $0E
    .byte con_катсцена_задержка, $08
    .byte con_катсцена_новая_строка
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $0B
    .text "@BANZAI!!@"
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_номер_звука, $30
    .byte con_катсцена_F8, $15
    .byte con_катсцена_F5, $FF
    .byte con_катсцена_F3, $FF, $25, $43
    .byte con_катсцена_задержка, $F0
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задний_фон, $47
    .byte con_катсцена_FB, $01, $2B
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_номер_звука, $48
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text "@Well!"
    .byte con_катсцена_задержка, $14
    .text " I'm feeling"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "much better now."
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_FB, $01, $2A
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "Let's be on our way"
    .byte con_катсцена_FB, $01, $2C
    .text ".@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FA, $69
    .byte con_катсцена_FB, $01, $25
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_смещение_текста, $05
    .text "@How can you hit"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "harder than a ball?!@"
    .byte con_катсцена_задержка, $78
    
    
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_задний_фон, $4F
    .byte con_катсцена_FA, $52
    .byte con_катсцена_FB, $01, $66
    .byte con_катсцена_номер_звука, $55
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $06
    .text "@Sanae,"
    .byte con_катсцена_задержка, $28
    .text " everyone is"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "waiting for me,"
    .byte con_катсцена_задержка, $28
    .text " I"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "should get going.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FB, $01, $29
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .byte con_катсцена_смещение_текста, $05
    .text "@..."
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_FB, $01, $26
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_скорость_текста, $04
    .text "take"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .text "take care.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FA, $02
    .byte con_катсцена_FB, $01, $47
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $09
    .text "@You too"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $0A
    .text "Well,"
    .byte con_катсцена_задержка, $14
    .text " then", $3A, $3B, "@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_FB, $01, $69
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_FA, $52
    .byte con_катсцена_FB, $01, $29
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F8, $02
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_FA, $02
    .byte con_катсцена_FB, $01, $55
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $0A
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $0F
    .text "@Tsubasa!@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_номер_звука, $50
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_FA, $4B
    .byte con_катсцена_FB, $01, $B7
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $06
    .text "@Tsubasa"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .text "when will"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "we meet again?!@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $0A
    
    
    
    .byte con_катсцена_FA, $02
    .byte con_катсцена_FB, $01, $55
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_смещение_текста, $06
    .text "@The whole reason I"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "came to Brazil was"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $07
    .text "to become a pro.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $50
    
    
    
    .byte con_катсцена_смещение_текста, $04
    .text "@I can't leave until I"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "reach this goal."
    .byte con_катсцена_задержка, $1E
    .text " I've"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "staked my life on it.@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $3C
    
    
    
    .byte con_катсцена_FA, $4B
    .byte con_катсцена_FB, $01, $B7
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_смещение_текста, $06
    .text "@Then"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_скорость_текста, $04
    .text "then what", $3A, $3B, "@"
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_FA, $02
    .byte con_катсцена_FB, $01, $02
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_смещение_текста, $04
    .text "@Sanae."
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_номер_звука, $19
    .byte con_катсцена_задержка, $28
    .text " When I become"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "a big league pro"
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_скорость_текста, $08
    .text "..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_FA, $4B
    .byte con_катсцена_FB, $01, $B7
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F8, $02
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $05
    .text "I want you by my side.@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_новая_строка
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_смещение_текста, $04
    .byte con_катсцена_FB, $01, $B8
    .text "@...!@"
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $14
    
    
    
    .byte con_катсцена_FA, $23
    .byte con_катсцена_FB, $01, $AD
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_скорость_текста, $04
    .byte con_катсцена_смещение_текста, $04
    .text "@Until then,"
    .byte con_катсцена_задержка, $3C
    .text " can you", $3A, $3B
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $05
    .text "will you wait for me?@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $14
    
    
    
    .byte con_катсцена_FA, $4B
    .byte con_катсцена_FB, $01, $B7
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_скорость_текста, $08
    .byte con_катсцена_смещение_текста, $05
    .byte con_катсцена_закрыть_рот
    .text "@..."
    .byte con_катсцена_закрыть_рот
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_скорость_текста, $04
    .text "yes."
    .byte con_катсцена_задержка, $3C
    .text " Tsubasa,"
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "follow your dreams,"
    .byte con_катсцена_задержка, $1E
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "and I'll be waiting"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_смещение_текста, $06
    .text "for you at the goal!@"
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_задержка, $1E
    
    
    
    .byte con_катсцена_FA, $4D
    .byte con_катсцена_FB, $03, $B9, $BD, $B0
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F8, $14
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $4E
    .byte con_катсцена_FB, $02, $BD, $04
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F8, $05
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_задержка, $F0
    .byte con_катсцена_F8, $06
    .byte con_катсцена_F8, $16
    .byte con_катсцена_номер_звука, $6A
    .byte con_катсцена_F8, $01, $04
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $05
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_F8, $01, $08
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_F8, $01, $0A
    .byte con_катсцена_задержка, $3C
    .byte con_катсцена_F8, $01, $0C
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $0E
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $10
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $12
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $14
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $16
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $18
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $1A
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $1C
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $1E
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_F8, $01, $1C
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $1A
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $18
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $16
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $14
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $12
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $10
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $0E
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_FB, $01, $B4
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F8, $01, $0C
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $0A
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $08
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $06
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $04
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $01, $02
    .byte con_катсцена_задержка, $28
    .byte con_катсцена_F8, $02
    .byte con_катсцена_F8, $05
    .byte con_катсцена_задержка, $50
    .byte con_катсцена_номер_звука, $59
    .byte con_катсцена_F8, $0F
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_F0, $8E, $22
    .byte con_катсцена_скорость_текста, $00
    .text "CAST"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $78
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход
