.segment "BANK_29"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485



con_clear_3                 = $E5   ; для окна совета тренера, не стирает первые 2 тайла слева
con_clear_2                 = $E6   ; для окна диалога комментатора, не стирает первые 8 тайлов слева
con_offset                  = $E7   ; + количество тайлов для смещения вправо
con_E8                      = $E8   ; везде 01, кроме экрана перед Presented by Tecmo
con_screen_on               = $E9
con_screen_off              = $EA
con_ball                    = $EB
con_announcer               = $EC   ; 00 - обычные глаза
                                    ; 01 - маленькие глаза
                                    ; 02 - обычный радостный
                                    ; 03 - радостный с пальцами
                                    ; 04 - радостный с флагом
                                    ; 05 - с микрофоном
                                    ; FF - отключить комментатора (но не удаляет его с экрана)
con_sound                   = $ED   ; + номер звука
con_clear_all               = $EE   ; полностью затереть нижнюю часть экрана
con_toggle_mouth            = $EF   ; переключатель, при включении срабатывает не сразу, желательно ставить перед задержкой
con_base_offset             = $F0   ; начальное положение текста + low 2006 + high 2006
con_window                  = $F1
con_speed                   = $F2
con_F3                      = $F3   ; либо .byte $F3, $00,  либо .byte $F3, $FF, $??, $??
con_F4                      = $F4   ; 04 - скрыть текст
                                    ; 05 - показать скрытый текст
                                    ; 06 - мячик скрытой катсцены + номер катсцены
con_F5                      = $F5
con_pause                   = $F6   ; + доп. байт, чем больше тем дольше
con_F7                      = $F7
con_F8                      = $F8   ; 02 - зафризить движение рта персонажа
                                    ; 17 - в скрытой катсцене со шнайдером выводит количество забитых голов
con_bg_1                    = $F9   ; background
con_bg_2                    = $FA   ; background
con_animation               = $FB   ; количество + номера анимаций
con_line                    = $FC   ; new line
con_clear_1                 = $FD   ; очистка текста для обычных диалогов
con_jump                    = $FE   ; jump to a location
con_exit                    = $FF   ; end of the cutscene



    .word off_A195_13_после_победы_над_японией
    .word off_A5D6_14_после_победы_над_китаем
    .word off_A703_15_после_победы_над_кореей
    .word off_AC95_16_разговор_репортеров



off_A195_13_после_победы_над_японией:
    .byte con_E8, $01
    .byte con_bg_1, $0F
    .byte con_animation, $01, $43
    .byte con_sound, $01
    .byte con_pause, $78
    .byte con_sound, $69
    .byte con_pause, $3C
    .byte con_screen_on
    .byte con_sound, $4D
    .byte con_pause, $3C
    .byte con_speed, $02
    .byte con_offset, $03
    .text "@Hooray!"
    .byte con_pause, $1E
    .byte con_speed, $04
    .text " We've done it!@"
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $03
    .text "@We've won the Japan Cup!@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_bg_2, $2E
    .byte con_animation, $01, $3B
    .byte con_F7
    .byte con_F3, $00
    .byte con_F5, $04
    .byte con_bg_2, $10
    .byte con_pause, $3C
    .byte con_offset, $07
    .text "@We couldn't have"
    .byte con_line
    .byte con_offset, $08
    .text "done this without"
    .byte con_line
    .byte con_offset, $08
    .text "you,"
    .byte con_pause, $1E
    .text " Tsubasa.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_offset, $05
    .text "@That's it for us"
    .byte con_line
    .byte con_offset, $06
    .text "this season."
    .byte con_pause, $1E
    .text " You're"
    .byte con_line
    .byte con_offset, $06
    .text "free to join the"
    .byte con_line
    .byte con_offset, $06
    .text "Japan squad again.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $4E
    .byte con_F7
    .byte con_F3, $00
    .byte con_bg_2, $11
    .byte con_pause, $1E
    .byte con_offset, $03
    .text "@It's been three years"
    .byte con_line
    .byte con_offset, $04
    .text "since I started playing"
    .byte con_line
    .byte con_offset, $04
    .text "with Sao Paulo,"
    .byte con_pause, $0F
    .text " you know?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $50
    
    
    
    .byte con_animation, $01, $11
    .byte con_pause, $0A
    .byte con_offset, $05
    .text "@Now Babington's going"
    .byte con_line
    .byte con_offset, $06
    .text "to Argentina,"
    .byte con_pause, $1E
    .text " and"
    .byte con_line
    .byte con_offset, $06
    .text "Brazil are getting"
    .byte con_line
    .byte con_offset, $06
    .text "Amaral and Dotor.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_offset, $06
    .text "@If Japan are my"
    .byte con_line
    .byte con_offset, $07
    .text "friends,"
    .byte con_pause, $1E
    .text " it's like"
    .byte con_line
    .byte con_offset, $07
    .text "South America's"
    .byte con_line
    .byte con_offset, $07
    .text "my enemy"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "...@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_animation, $01, $4E
    .byte con_pause, $1E
    .byte con_speed, $04
    .byte con_offset, $04
    .text "@Still,"
    .byte con_pause, $1E
    .text " I'll be fine."
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $05
    .text "The ball is my friend,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $05
    .text "and I'll make you and"
    .byte con_line
    .byte con_offset, $05
    .text "everyone else proud"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $06
    .text "by winning the World"
    .byte con_line
    .byte con_offset, $06
    .text "Cup."
    .byte con_pause, $3C
    .text " For now"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $28
    .byte con_line
    .byte con_toggle_mouth
    .byte con_speed, $04
    .byte con_offset, $06
    .text "Sayonara,"
    .byte con_pause, $28
    .text " Roberto.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $3F
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $1E
    .byte con_offset, $06
    .text "@Tsubasa,"
    .byte con_pause, $14
    .text " I'm glad"
    .byte con_line
    .byte con_offset, $07
    .text "you'll be playing"
    .byte con_line
    .byte con_offset, $07
    .text "for Japan again.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $4E
    .byte con_F7
    .byte con_F3, $00
    .byte con_bg_2, $30
    .byte con_offset, $06
    .text "@Yeah."
    .byte con_pause, $14
    .text " The Golden"
    .byte con_line
    .byte con_offset, $07
    .text "Duo will"
    .byte con_pause, $14
    .byte con_sound, $01
    .byte con_animation, $01, $12
    .byte $3A, $3B
    .byte con_pause, $50
    .byte con_speed, $08
    .text "will...@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_speed, $04
    .byte con_offset, $05
    .text "@Tsubasa"
    .byte con_speed, $08
    .text "...?"
    .byte con_pause, $1E
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $06
    .text "What's the matter?@"
    .byte con_pause, $3C
    .byte con_line
    .byte con_speed, $08
    .byte con_offset, $05
    .byte con_sound, $48
    .byte con_pause, $14
    .text "@I", $3A, $3B, "@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    .byte con_F5, $FF
    
    
    
    .byte con_animation, $01, $26
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $3C
    .byte con_speed, $06
    .byte con_offset, $03
    .text " "
    .byte con_F8, $02
    .byte con_pause, $3C
    .text "@Sanae,"
    .byte con_pause, $3C
    .text " you're here"
    .byte con_speed, $06
    .text "...@"
    .byte con_pause, $F0
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_pause, $3C
    .byte con_bg_1, $31
    .byte con_animation, $02, $9C, $8E
    .byte con_screen_on
    .byte con_F5, $05
    .byte con_F4, $05
    .byte con_speed, $01
    .byte con_offset, $07
    .text "Several days later,"
    .byte con_line
    .byte con_offset, $09
    .text "in a park near"
    .byte con_line
    .byte con_offset, $0A
    .text "Japan U-20's"
    .byte con_line
    .byte con_offset, $09
    .text "training camp."
    .byte con_F4, $04
    
    
    
    .byte con_F8, $0B
    .byte con_pause, $F0
    .byte con_F4, $05
    .byte con_pause, $78
    .byte con_F8, $02
    .byte con_F8, $0B
    .byte con_clear_1
    .byte con_F4, $04
    .byte con_pause, $3C
    .byte con_speed, $04
    .byte con_offset, $05
    .text "@You'll be leaving for"
    .byte con_line
    .byte con_offset, $06
    .text "the Asia Qualifers"
    .byte con_line
    .byte con_offset, $06
    .text "soon,"
    .byte con_pause, $0F
    .text " won't you?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_offset, $04
    .text "@Yeah,"
    .byte con_pause, $14
    .text " and I can hardly"
    .byte con_line
    .byte con_offset, $05
    .text "wait!"
    .byte con_pause, $1E
    .text " There's gonna be"
    .byte con_line
    .byte con_offset, $05
    .text "a lot of players"
    .byte con_line
    .byte con_offset, $05
    .text "around my age,"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $07
    .text "and a lot of"
    .byte con_line
    .byte con_offset, $07
    .text "pro-levels,"
    .byte con_pause, $0F
    .text " and", $3A, $3B, "@"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $06
    .text "@Tsubasa,"
    .byte con_pause, $28
    .text " you"
    .byte con_line
    .byte con_offset, $07
    .text "haven't changed.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_offset, $05
    .text "@You still sound like"
    .byte con_line
    .byte con_offset, $06
    .text "when you were young,"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $06
    .text "you know?@"
    .byte con_pause, $3C
    .byte con_line
    .byte con_speed, $02
    .byte con_offset, $05
    .text "@Huh?"
    .byte con_pause, $1E
    .byte con_speed, $04
    .text " How's that?@"
    .byte con_pause, $50
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_E8, $01
    .byte con_bg_1, $32
    .byte con_bg_2, $33
    .byte con_animation, $01, $26
    .byte con_screen_on
    .byte con_F5, $05
    .byte con_pause, $50
    .byte con_offset, $03
    .text "@Your mind always thinking"
    .byte con_line
    .byte con_offset, $04
    .text "about football,"
    .byte con_pause, $1E
    .text " and how"
    .byte con_line
    .byte con_offset, $04
    .text "you'd be a superstar"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "...@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $66
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $3C
    .byte con_speed, $04
    .byte con_offset, $06
    .text "@Ah, "
    .byte con_pause, $0F
    .text "well"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "..."
    .byte con_animation, $01, $26
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $14
    .byte con_line
    .byte con_toggle_mouth
    .byte con_speed, $04
    .byte con_offset, $07
    .text "Sanae,"
    .byte con_pause, $0F
    .text " I'm s"
    .byte con_animation, $01, $27
    .byte con_toggle_mouth
    .text $3A, $3B, "@"
    .byte con_pause, $0F
    .byte con_line
    .byte con_toggle_mouth
    .byte con_offset, $06
    .text "@I wouldn't have it"
    .byte con_line
    .byte con_offset, $07
    .text "any other way.@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_animation, $01, $66
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $78
    .byte con_animation, $01, $57
    .byte con_toggle_mouth
    .byte con_speed, $08
    .byte con_offset, $06
    .text "@..."
    .byte con_pause, $3C
    .byte con_toggle_mouth
    .byte con_speed, $04
    .text "Sanae,"
    .byte con_pause, $1E
    .text " listen.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_animation, $01, $27
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $14
    .byte con_animation, $01, $26
    .byte con_pause, $50
    .byte con_offset, $07
    .text "@What is it?"
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $08
    .text "You're serious"
    .byte con_line
    .byte con_offset, $08
    .text "all of a sudden.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $57
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $78
    .byte con_offset, $05
    .text "@When I"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_toggle_mouth
    .byte con_speed, $04
    .text "when all"
    .byte con_line
    .byte con_offset, $06
    .text "this is done,"
    .byte con_pause, $3C
    .text " I'm"
    .byte con_line
    .byte con_offset, $06
    .text "returning to Brazil.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_animation, $01, $66
    .byte con_pause, $1E
    .byte con_offset, $05
    .text "@Would you", $3A, $3B, "@"
    .byte con_F5, $FF
    .byte con_bg_2, $34
    .byte con_F7
    .byte con_sound, $1E
    .byte con_F8, $0E
    .byte con_sound, $52
    .byte con_line
    .byte con_offset, $05
    .text "@Ey,"
    .byte con_pause, $0F
    .text " Tsubasa", $3A, $3B
    .byte con_pause, $14
    .text "time for"
    .byte con_line
    .byte con_offset, $06
    .text "the team meeting!@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_F8, $02
    .byte con_sound, $48
    .byte con_animation, $01, $08
    .byte con_F7
    .byte con_F3, $00
    .byte con_bg_2, $32
    .byte con_pause, $14
    .byte con_speed, $02
    .byte con_offset, $08
    .text "@Ish", $3A, $3B
    .byte con_pause, $0F
    .byte con_speed, $03
    .text "Ishizaki!@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $28
    .byte con_F7
    .byte con_F3, $00
    .byte con_bg_2, $33
    .byte con_F5, $05
    .byte con_pause, $3C
    .byte con_animation, $01, $27
    .byte con_pause, $3C
    .byte con_speed, $04
    .byte con_offset, $04
    .text "@I can't join you along"
    .byte con_line
    .byte con_offset, $05
    .text "the way,"
    .byte con_pause, $1E
    .byte con_animation, $01, $26
    .byte con_pause, $0F
    .text " but I'll be"
    .byte con_line
    .byte con_offset, $05
    .text "wishing you the very"
    .byte con_line
    .byte con_offset, $05
    .text "best of luck.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $66
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $3C
    .byte con_offset, $05
    .text "@I"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $28
    .byte con_line
    .byte con_toggle_mouth
    .byte con_speed, $04
    .byte con_offset, $05
    .text " That's great,"
    .byte con_pause, $1E
    .text " Sanae."
    .byte con_pause, $28
    .byte con_line
    .byte con_offset, $06
    .text "Be seeing you"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "...@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $24
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $14
    .byte con_speed, $04
    .byte con_offset, $06
    .text "@Uh"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $1E
    .byte con_toggle_mouth
    .byte con_speed, $04
    .text "did I come"
    .byte con_line
    .byte con_offset, $07
    .text "in at a bad time?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $66
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $14
    .byte con_toggle_mouth
    .byte con_speed, $08
    .byte con_offset, $05
    .text "@..."
    .byte con_toggle_mouth
    .byte con_speed, $04
    .text "no."
    .byte con_pause, $3C
    .text " No,"
    .byte con_pause, $0F
    .text " Ishizaki,"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $06
    .text "it's fine."
    .byte con_pause, $14
    .text " Let's go.@"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_sound, $01
    .byte con_pause, $3C
    .byte con_clear_1
    .byte con_bg_1, $35
    .byte con_animation, $01, $1A
    .byte con_screen_on
    .byte con_sound, $47
    .byte con_F5, $05
    .byte con_F8, $0C
    .byte con_pause, $F0
    .byte con_pause, $F0
    .byte con_F8, $02
    .byte con_F8, $0C
    .byte con_pause, $3C
    .byte con_animation, $01, $2A
    .byte con_toggle_mouth
    .byte con_offset, $06
    .text "(So,"
    .byte con_pause, $1E
    .text " it's like that?"
    .byte con_pause, $3C
    .byte con_animation, $01, $2B
    .byte con_pause, $14
    .byte con_line
    .byte con_toggle_mouth
    .byte con_speed, $06
    .byte con_offset, $07
    .text "Interesting"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_pause, $3C
    .byte con_clear_1
    .byte con_bg_1, $37
    .byte con_animation, $01, $A9
    .byte con_F8, $0D
    .byte con_screen_on
    .byte con_pause, $3C
    .byte con_speed, $03
    .byte con_offset, $07
    .text "Several days later,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $06
    .text "Tsubasa and the rest"
    .byte con_line
    .byte con_offset, $07
    .text "of the team are on"
    .byte con_line
    .byte con_offset, $07
    .text "the plane to Seoul,"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $08
    .text "where the Asian"
    .byte con_line
    .byte con_offset, $08
    .text "Qualifiers for"
    .byte con_line
    .byte con_offset, $08
    .text "the U-20 World"
    .byte con_line
    .byte con_offset, $07
    .text "Cup will be held."
    .byte con_pause, $F0
    .byte con_sound, $31
    .byte con_screen_off
    .byte con_pause, $78
    .byte con_sound, $01
    .byte con_exit






off_A5D6_14_после_победы_над_китаем:
    .byte con_E8, $01
    .byte con_bg_1, $11
    .byte con_bg_2, $10
    .byte con_animation, $01, $22
    .byte con_pause, $78
    .byte con_screen_on
    .byte con_sound, $47
    .byte con_pause, $3C
    .byte con_toggle_mouth
    .byte con_speed, $02
    .byte con_offset, $04
    .text "Li Han-ne:"
    .byte con_pause, $14
    .byte con_toggle_mouth
    .byte con_speed, $06
    .text " @Our Rising"
    .byte con_line
    .byte con_offset, $06
    .text "Dragon was defeated"
    .byte con_line
    .byte con_offset, $06
    .text "by your spirit!"
    .byte con_pause, $28
    .text " We"
    .byte con_line
    .byte con_offset, $06
    .text "humbly admit defeat.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $33
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $3C
    .byte con_speed, $04
    .byte con_offset, $07
    .text "@Your Japanese"
    .byte con_line
    .byte con_offset, $08
    .text "is pretty good.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $44
    .byte con_F7
    .byte con_F3, $FF, $00, $20
    .byte con_pause, $14
    .byte con_toggle_mouth
    .byte con_speed, $02
    .byte con_offset, $04
    .text "Li Ban-kun:"
    .byte con_pause, $14
    .byte con_toggle_mouth
    .byte con_speed, $06
    .text " @Thank you."
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $06
    .text "Our uncle cooks in"
    .byte con_line
    .byte con_offset, $06
    .text "Yokohama,"
    .byte con_pause, $1E
    .text " so we are"
    .byte con_line
    .byte con_offset, $06
    .text "often in your country.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $68
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $1E
    .byte con_speed, $04
    .byte con_offset, $05
    .text "@It's like staring in"
    .byte con_line
    .byte con_offset, $06
    .text "a mirror!"
    .byte con_pause, $1E
    .text " I couldn't"
    .byte con_line
    .byte con_offset, $06
    .text "tell you two apart.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $22
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $14
    .byte con_toggle_mouth
    .byte con_speed, $02
    .byte con_offset, $04
    .text "Li Han-ne:"
    .byte con_pause, $14
    .byte con_toggle_mouth
    .byte con_speed, $06
    .text " @The Korean"
    .byte con_line
    .byte con_offset, $06
    .text "team also uses Combi"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $08
    .byte con_line
    .byte con_toggle_mouth
    .byte con_speed, $06
    .byte con_offset, $04
    .text "  combination plays"
    .byte con_line
    .byte con_offset, $06
    .text "very well.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $14
    
    
    
    .byte con_offset, $07
    .text "@Watch your backs"
    .byte con_line
    .byte con_offset, $08
    .text "when you play"
    .byte con_line
    .byte con_offset, $08
    .text "with them,"
    .byte con_pause, $14
    .byte con_speed, $08
    .text " OK?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $66
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $14
    .byte con_speed, $04
    .byte con_offset, $08
    .text "@We will."
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $09
    .text "Thank you for"
    .byte con_line
    .byte con_offset, $09
    .text "the warning.@"
    .byte con_pause, $50
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit






off_A703_15_после_победы_над_кореей:
    .byte con_E8, $01
    .byte con_bg_1, $0D
    .byte con_animation, $01, $0E
    .byte con_sound, $01
    .byte con_pause, $78
    .byte con_sound, $69
    .byte con_screen_on
    .byte con_pause, $3C
    .byte con_sound, $47
    .byte con_speed, $04
    .byte con_offset, $08
    .text "@Let's keep the"
    .byte con_line
    .byte con_offset, $09
    .text "momentum going"
    .byte con_line
    .byte con_offset, $09
    .text "and win it all!@"
    .byte con_pause, $1E
    .byte con_line
    .byte con_speed, $02
    .byte con_offset, $0C
    .text "@Yeah!!@"
    .byte con_pause, $50
    .byte con_clear_1
    
    
    
    .byte con_bg_2, $2E
    .byte con_animation, $01, $2D
    .byte con_F7
    .byte con_F3, $00
    .byte con_bg_2, $65
    .byte con_F5, $04
    .byte con_speed, $04
    .byte con_offset, $06
    .text "@Tsubasa,"
    .byte con_pause, $0F
    .text " it's a"
    .byte con_line
    .byte con_offset, $07
    .text "disaster!!"
    .byte con_pause, $14
    .text " Brazil's"
    .byte con_line
    .byte con_offset, $07
    .text "new coach is", $3A, $3B, "@"
    .byte con_F8, $02
    .byte con_pause, $1E
    
    
    
    .byte con_F5, $FF
    .byte con_animation, $01, $12
    .byte con_F7
    .byte con_F3, $FF, $13, $0C
    .byte con_bg_2, $38
    .byte con_sound, $43
    .byte con_line
    .byte con_speed, $02
    .byte con_offset, $06
    .text "@What?!@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $0A
    .byte con_sound, $3D
    
    
    
    .byte con_pause, $3C
    .byte con_speed, $03
    .byte con_offset, $08
    .text "Japan had earned"
    .byte con_line
    .byte con_offset, $0A
    .text "the right to"
    .byte con_line
    .byte con_offset, $07
    .text "represent Asia in"
    .byte con_line
    .byte con_offset, $07
    .text "the U-20 World Cup."
    .byte con_ball
    .byte con_clear_1
    
    
    
    .byte con_offset, $08
    .text "In the meantime,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $06
    .text "other countries were"
    .byte con_line
    .byte con_offset, $09
    .text "securing their"
    .byte con_line
    .byte con_offset, $09
    .text "own positions"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $3C
    .byte con_animation, $01, $95
    .byte con_screen_on
    .byte con_F4, $05
    .byte con_speed, $00
    .byte con_offset, $09
    .text "South American"
    .byte con_line
    .byte con_offset, $08
    .text "Qualifiers Final"
    .byte con_line
    .byte con_line
    .byte con_offset, $06
    .text "Argentina VS Uruguay"
    .byte con_pause, $1E
    .byte con_F4, $04
    .byte con_pause, $F0
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_2, $03
    .byte con_animation, $01, $78
    .byte con_F3, $FF, $14, $22
    .byte con_sound, $0B
    .byte con_pause, $1E
    .byte con_F5, $0C
    .byte con_speed, $03
    .byte con_offset, $06
    .text "@I'm Juan Diaz!"
    .byte con_pause, $14
    .text " On"
    .byte con_line
    .byte con_offset, $07
    .text "and off the pitch,"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $07
    .text "nobody matches"
    .byte con_pause, $08
    .byte con_line
    .byte con_speed, $06
    .byte con_offset, $07
    .text "MY "
    .byte con_pause, $08
    .byte con_speed, $03
    .text "genius!@"
; скорректировать задержку чтобы портрет остался на белом фоне перед сменой экрана
    .byte con_pause, $50
    
    
    
    .byte con_F5, $FF
    .byte con_clear_1
    .byte con_bg_2, $21
    .byte con_animation, $02, $73, $74
    .byte con_F7
    .byte con_F3, $00
    .byte con_F5, $03
    .byte con_sound, $0E
    .byte con_pause, $28
    .byte con_F5, $FF
    .byte con_bg_2, $5A
    .byte con_animation, $01, $01
    .byte con_F7
    .byte con_F3, $00
    .byte con_sound, $03
    .byte con_bg_2, $20
    .byte con_F7
    .byte con_sound, $04
    .byte con_pause, $35
    .byte con_F7
    .byte con_sound, $05
    .byte con_bg_2, $56
    .byte con_animation, $03, $C0, $A0, $80
    .byte con_F7
    .byte con_sound, $07
    .byte con_bg_2, $39
    .byte con_animation, $01, $85
    .byte con_F7
    .byte con_F3, $00
    .byte con_sound, $5D
    .byte con_F5, $04
    
    
    
    .byte con_pause, $28
    .byte con_window, $01
    .byte con_announcer, $00
    .byte con_speed, $04
    .byte con_offset, $09
    .text "It's buried in the"
    .byte con_line
    .byte con_offset, $09
    .text "back of the net!"
    .byte con_pause, $14
    .text " Juan"
    .byte con_line
    .byte con_offset, $09
    .text "Diaz and Argentina"
    .byte con_line
    .byte con_offset, $09
    .text "are"
    .byte con_speed, $06
    .text " UNSTOPPABLE!"
    .byte con_pause, $50
    .byte con_clear_all
; требуется чтобы следующий текст начался как обычно вверху экрана
    .byte con_clear_2
    
    
    
    .byte con_bg_2, $3A
    .byte con_animation, $01, $8B
    .byte con_F7
    .byte con_F3, $00
    .byte con_sound, $66
    .byte con_pause, $14
    .byte con_window, $00
    .byte con_announcer, $01
    .byte con_speed, $04
    .byte con_offset, $09
    .text "It's"
    .byte con_sound, $62
    .text " decided!"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $09
    .text "Argentina has"
    .byte con_line
    .byte con_offset, $09
    .text "defeated Uruguay!!"
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $09
    .text "They have won"
    .byte con_line
    .byte con_offset, $09
    .text "their ticket"
    .byte con_line
    .byte con_offset, $09
    .text "to this year's"
    .byte con_line
    .byte con_offset, $09
    .text "U-20 World Cup!"
    .byte con_sound, $31
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_sound, $01
    .byte con_clear_2
    .byte con_clear_all
    .byte con_announcer, $FF
    .byte con_bg_1, $3C
    .byte con_animation, $01, $96
    .byte con_sound, $36
    .byte con_screen_on
    .byte con_F4, $05
    .byte con_speed, $00
    .byte con_offset, $06
    .text "European Qualifiers"
    .byte con_line
    .byte con_offset, $08
    .text "Finals: Block A"
    .byte con_line
    .byte con_line
    .byte con_offset, $07
    .text "France VS Denmark"
    .byte con_pause, $1E
    .byte con_F4, $04
    .byte con_pause, $F0
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $01
    .byte con_animation, $01, $6F
    .byte con_F3, $00
    .byte con_F8, $0A
    .byte con_F5, $00
    .byte con_sound, $68
    .byte con_pause, $1E
    .byte con_window, $01
    .byte con_announcer, $00
    .byte con_speed, $04
    .byte con_offset, $09
    .text "Pierre is making his"
    .byte con_line
    .byte con_offset, $09
    .text "way around Denmark's"
    .byte con_line
    .byte con_offset, $09
    .text "defence!"
    .byte con_pause, $1E
    .text " Napoleon is"
    .byte con_line
    .byte con_offset, $09
    .text "right behind him!"
    .byte con_pause, $50
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_E8, $01
    .byte con_clear_all
    .byte con_announcer, $FF
    .byte con_bg_1, $3B
    .byte con_animation, $01, $7A
    .byte con_F3, $00
    .byte con_sound, $26
    .byte con_F5, $08
    .byte con_speed, $03
    .byte con_offset, $05
    .text "@Come,"
    .byte con_pause, $0F
    .text " Napoleon!"
    .byte con_pause, $1E
    .byte con_line
    .byte con_speed, $06
    .byte con_offset, $06
    .text "THIS "
    .byte con_pause, $0F
    .byte con_speed, $03
    .text "shot shall"
    .byte con_line
    .byte con_offset, $06
    .text "be decisive!@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $7B
    .byte con_F7
    .byte con_F3, $00
    .byte con_F5, $08
    .byte con_sound, $26
    .byte con_offset, $09
    .text "@Attaquer,"
    .byte con_pause, $0F
    .text " Pierre!@"
    .byte con_pause, $3C
    .byte con_clear_1
    
    
    
    .byte con_bg_2, $09
    .byte con_animation, $01, $43
    .byte con_F7
    .byte con_F3, $00
    .byte con_F5, $0C
    .byte con_window, $01
    .byte con_announcer, $05
    .byte con_speed, $04
    .byte con_offset, $09
    .text "Wh", $3A, $3B, "?!"
    .byte con_sound, $09
    .byte con_line
    .byte con_offset, $09
    .byte con_pause, $28
    .byte con_sound, $09
    .text "What's "
    .byte con_sound, $0A
    .text "this com", $3A, $3B, "?!"
    .byte con_pause, $3C
    .byte con_F5, $FF
    
    
    
    .byte con_bg_2, $39
    .byte con_animation, $01, $85
    .byte con_F7
    .byte con_F3, $00
    .byte con_sound, $5D
    .byte con_F5, $04
    .byte con_clear_2
    .byte con_pause, $14
    .byte con_announcer, $00
    .byte con_offset, $09
    .text "A truly impressive"
    .byte con_line
    .byte con_offset, $09
    .text "strike by France"
    .byte con_line
    .byte con_offset, $09
    .text "almost rips the"
    .byte con_line
    .byte con_offset, $09
    .text "netting to pieces!"
    .byte con_pause, $50
    .byte con_clear_all
    .byte con_clear_2
    
    
    
    .byte con_bg_2, $3A
    .byte con_animation, $01, $8B
    .byte con_F7
    .byte con_F3, $00
    .byte con_sound, $66
    .byte con_window, $00
    .byte con_announcer, $05
    .byte con_offset, $09
    .text "It's over!"
    .byte con_pause, $08
    .byte con_sound, $62
    .byte con_pause, $08
    .text " It's over!"
    .byte con_pause, $1E
    .byte con_announcer, $01
    .byte con_line
    .byte con_offset, $09
    .text "France qualifies for"
    .byte con_line
    .byte con_offset, $09
    .text "the U-20 World Cup!"
    .byte con_sound, $31
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_sound, $01
    .byte con_clear_1
    .byte con_clear_all
    .byte con_announcer, $FF
    .byte con_bg_1, $3C
    .byte con_animation, $03, $BD, $C8, $97
    .byte con_sound, $38
    .byte con_screen_on
    .byte con_F4, $05
    .byte con_speed, $00
    .byte con_offset, $06
    .text "European Qualifiers"
    .byte con_line
    .byte con_offset, $08
    .text "Finals: Block B"
    .byte con_line
    .byte con_line
    .byte con_offset, $04
    .text "West Germany VS Portugal"
    .byte con_pause, $1E
    .byte con_F4, $04
    .byte con_pause, $F0
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $66
    .byte con_animation, $03, $9E, $9F, $A5
    .byte con_sound, $6B
    .byte con_screen_on
; таймер замаха удара шнайдера 0x0144DE
    .byte con_window, $01
    .byte con_announcer, $00
    .byte con_speed, $04
    .byte con_offset, $09
    .text "Schneider intends to"
    .byte con_line
    .byte con_offset, $09
    .text "blast the ball"
    .byte con_line
    .byte con_offset, $09
    .text "straight across the"
    .byte con_line
    .byte con_offset, $09
    .text "field!"
    .byte con_pause, $14
    .byte con_announcer, $05
    .byte con_speed, $03
    .text " Watch out!!"
    .byte con_pause, $50
    .byte con_clear_all
    .byte con_clear_2
    .byte con_pause, $14
    
    
    
    .byte con_sound, $02
    .byte con_announcer, $FF
    .byte con_bg_2, $05
    .byte con_animation, $01, $79
    .byte con_F7
    .byte con_F3, $00
    .byte con_sound, $30
    .byte con_F5, $11
    .byte con_speed, $02
    .byte con_offset, $09
    .text "@FEUERSCHUSS!@"
    .byte con_pause, $50
    .byte con_F5, $FF
    .byte con_clear_1
    
    
    
    .byte con_bg_2, $21
    .byte con_animation, $02, $73, $74
    .byte con_F7
    .byte con_F3, $00
    .byte con_F5, $0F
    .byte con_sound, $0E
    .byte con_pause, $28
    .byte con_sound, $10
    .byte con_F5, $FF
    .byte con_bg_2, $5A
    .byte con_animation, $01, $00
    .byte con_F7
    .byte con_F3, $FF, $2D, $04
    .byte con_sound, $06
    .byte con_bg_2, $20
    .byte con_F7
    .byte con_sound, $07
    .byte con_pause, $1A
    .byte con_sound, $07
    .byte con_pause, $19
    .byte con_F7
    .byte con_sound, $08
    .byte con_bg_2, $56
    .byte con_animation, $03, $C0, $A0, $80
    .byte con_F7
    .byte con_sound, $07
    .byte con_bg_2, $39
    .byte con_animation, $01, $86
    .byte con_F7
    .byte con_F3, $00
    .byte con_sound, $61
    .byte con_F5, $04
    
    
    
    .byte con_pause, $0F
    .byte con_window, $01
    .byte con_announcer, $05
    .byte con_speed, $02
    .byte con_offset, $09
    .text "WHO~~~"
    .byte con_pause, $08
    .text "A!"
    .byte con_pause, $1E
    .byte con_speed, $04
    .text " That shot"
    .byte con_line
    .byte con_offset, $09
    .text "has set the whole"
    .byte con_line
    .byte con_offset, $09
    .text "crowd on fire!"
    .byte con_pause, $78
    .byte con_clear_all
    .byte con_clear_2
    
    
    
    .byte con_bg_2, $3A
    .byte con_animation, $01, $8B
    .byte con_F7
    .byte con_F3, $00
    .byte con_sound, $66
    .byte con_pause, $14
    .byte con_window, $00
    .byte con_announcer, $01
    .byte con_offset, $09
    .text "With t"
    .byte con_sound, $69
    .text "he final"
    .byte con_line
    .byte con_offset, $09
    .text "whistle,"
    .byte con_pause, $14
    .text " West"
    .byte con_line
    .byte con_offset, $09
    .text "Germany joins France"
    .byte con_pause, $3C
    .byte con_sound, $69
    .byte con_pause, $14
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $09
    .text "in representing"
    .byte con_line
    .byte con_offset, $09
    .text "Europe for the"
    .byte con_line
    .byte con_offset, $09
    .text "U-20 World Cup!"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_clear_all
    .byte con_announcer, $FF
    .byte con_bg_1, $1D
    .byte con_pause, $3C
    .byte con_animation, $03, $C9, $91, $99
    .byte con_sound, $46
    .byte con_screen_on
    .byte con_speed, $03
    .byte con_offset, $06
    .byte con_pause, $78
    .text "Meanwhile in Brazil,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $06
    .text "host nation for the"
    .byte con_line
    .byte con_offset, $08
    .text "U-20 World Cup"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_pause, $3C
    .byte con_clear_1
    .byte con_bg_1, $13
    .byte con_bg_2, $12
    .byte con_animation, $01, $46
    .byte con_screen_on
    .byte con_pause, $50
    .byte con_speed, $04
    .byte con_offset, $04
    .text "@Alright lads,"
    .byte con_pause, $1E
    .text " we've got"
    .byte con_line
    .byte con_offset, $05
    .text "a pro from our national"
    .byte con_line
    .byte con_offset, $05
    .text "team to help prepare"
    .byte con_line
    .byte con_offset, $05
    .text "for the World Cup.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_offset, $04
    .text "@He will be acting as"
    .byte con_line
    .byte con_offset, $05
    .text "your new coach during"
    .byte con_line
    .byte con_offset, $05
    .text "the tournament.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $08
    .text "@His name is"
    
    
    
    .byte con_animation, $01, $48
    .byte con_F7
    .byte con_F3, $00
    .byte con_speed, $08
    .text "...@"
    .byte con_pause, $0F
    .byte con_F5, $08
    .byte con_line
    .byte con_speed, $03
    .byte con_offset, $08
    .text "(Un-"
    .byte con_pause, $14
    .text "unreal!)"
    .byte con_sound, $01
    .byte con_pause, $50
    .byte con_clear_1
    
    
    
    .byte con_bg_2, $50
    .byte con_animation, $01, $6C
    .byte con_F7
    .byte con_F3, $00
    .byte con_sound, $52
    .byte con_pause, $78
    
    
    
    .byte con_bg_2, $12
    .byte con_animation, $01, $3D
    .byte con_F7
    .byte con_F3, $00
    .byte con_sound, $30
    .byte con_toggle_mouth
    .byte con_offset, $05
    .text "@It's Roberto Hongo!!@"
    .byte con_toggle_mouth
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_sound, $49
    .byte con_pause, $3C
    .byte con_speed, $04
    .byte con_offset, $08
    .text "@I'm glad I'm"
    .byte con_line
    .byte con_offset, $09
    .text "not completely"
    .byte con_line
    .byte con_offset, $09
    .text "forgotten.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_offset, $04
    .text "@Brazil's always had"
    .byte con_line
    .byte con_offset, $05
    .text "the drive to be number"
    .byte con_line
    .byte con_offset, $05
    .text "one in the world,"
    .byte con_pause, $14
    .text " when"
    .byte con_line
    .byte con_offset, $05
    .text "it comes to football.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_offset, $06
    .text "@Even though you're"
    .byte con_line
    .byte con_offset, $07
    .text "young,"
    .byte con_pause, $1E
    .text " I can see"
    .byte con_line
    .byte con_offset, $07
    .text "the same spark"
    .byte con_line
    .byte con_offset, $07
    .text "in all of you.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_offset, $05
    .text "@Now", $3A, $3B
    .byte con_pause, $0F
    .text "let's keep the"
    .byte con_line
    .byte con_offset, $06
    .text "World Cup in Brazil!@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_bg_2, $13
    .byte con_animation, $01, $5A
    .byte con_F7
    .byte con_F3, $00
    .byte con_pause, $50
    .byte con_speed, $02
    .byte con_offset, $04
    .text "(Wow,"
    .byte con_pause, $3C
    .byte con_speed, $06
    .text " THE "
    .byte con_pause, $08
    .byte con_speed, $04
    .text "Roberto Hongo,"
    .byte con_sound, $31
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $05
    .text "from our national team,"
    .byte con_sound, $57
    .byte con_pause, $3C
    
    
    
    .byte con_bg_2, $50
    .byte con_animation, $01, $6C
    .byte con_F7
    .byte con_F3, $00
    .byte con_F8, $02
    .byte con_pause, $3C
    .byte con_line
    .byte con_speed, $06
    .byte con_offset, $05
    .text "as our coach"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $F0
    .byte con_pause, $3C
    .byte con_screen_off
    .byte con_exit






off_AC95_16_разговор_репортеров:
    .byte con_E8, $01
    .byte con_bg_1, $1B
    .byte con_animation, $01, $43
    .byte con_pause, $78
    .byte con_screen_on
    .byte con_sound, $47
    .byte con_pause, $3C
    .byte con_speed, $02
    .byte con_offset, $02
    .text "Reporter A:"
    .byte con_pause, $14
    .byte con_speed, $04
    .text " @Looks like"
    .byte con_line
    .byte con_offset, $07
    .text "the lineup for the"
    .byte con_line
    .byte con_offset, $07
    .text "tournament's been"
    .byte con_line
    .byte con_offset, $07
    .text "finalized.@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_speed, $02
    .byte con_offset, $02
    .text "Reporter B:"
    .byte con_pause, $14
    .byte con_speed, $08
    .text " @Mmm-hmm,"
    .byte con_pause, $1E
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $08
    .text "it all begins in"
    .byte con_line
    .byte con_offset, $08
    .text "two days."
    .byte con_pause, $3C
    .text " Any"
    .byte con_line
    .byte con_offset, $08
    .text "idea who'll win?@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_speed, $02
    .byte con_offset, $02
    .text "Reporter C:"
    .byte con_pause, $14
    .byte con_speed, $04
    .text " @Japan's"
    .byte con_line
    .byte con_offset, $08
    .text "coming along,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $08
    .text "could be them.@"
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $02
    .text "A: @Japan?"
    .byte con_pause, $3C
    .text " I don't know"
    .byte con_speed, $08
    .text "...@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_speed, $04
    .byte con_offset, $02
    .text "B: @After this last match?"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $06
    .text "Wouldn't surprise me.@"
    .byte con_pause, $50
    .byte con_line
    .byte con_offset, $02
    .text "C: @Think it's a lock?@"
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $02
    .text "A: @Not me.@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_offset, $02
    .text "A: @Not just yet,"
    .byte con_pause, $0F
    .text " anyway"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $06
    .text "Something needs to fall"
    .byte con_line
    .byte con_offset, $06
    .text "into place that tips"
    .byte con_line
    .byte con_offset, $06
    .text "the scales for them.@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $50
    
    
    
    .byte con_offset, $02
    .text "B: @Ok,"
    .byte con_pause, $08
    .text " then."
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $06
    .text "How about West"
    .byte con_line
    .byte con_offset, $06
    .text "Germany,"
    .byte con_pause, $1E
    .text " or Brazil?@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_offset, $02
    .text "C: @Brazil would need a"
    .byte con_line
    .byte con_offset, $06
    .text "skilled goalkeeper,"
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $06
    .text "which they don't have.@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_offset, $02
    .text "A: @Y'"
    .byte con_pause, $08
    .text "know"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_speed, $04
    .text "funny that"
    .byte con_line
    .byte con_offset, $06
    .text "should come up.@"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_bg_1, $64
    .byte con_animation, $01, $3A
    .byte con_F3, $FF, $10, $29
    .byte con_sound, $46
    .byte con_pause, $50
    .byte con_toggle_mouth
    .byte con_offset, $02
    .text "A: @I've been hearing"
    .byte con_line
    .byte con_offset, $06
    .text "rumors about a certain"
    .byte con_line
    .byte con_offset, $06
    .text "pro goalkeeper,"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $05
    .text "coming over from Italy"
    .byte con_line
    .byte con_offset, $05
    .text "back home just to"
    .byte con_line
    .byte con_offset, $05
    .text "join up with Brazil"
    .byte con_speed, $08
    .text "...@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_speed, $04
    .byte con_offset, $02
    .text "B: @The so-"
    .byte con_pause, $08
    .text "called"
    .byte con_pause, $0F
    .byte con_line
    .byte con_speed, $06
    .byte con_offset, $06
    .text "@Keeper Machine@"
    .byte con_pause, $14
    .byte con_speed, $04
    .text " of"
    .byte con_line
    .byte con_offset, $06
    .text "Inter Milan in the"
    .byte con_line
    .byte con_offset, $06
    .text "Italian league,"
    .byte con_pause, $0F
    .text " yeah?@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $14
    
    
    
    .byte con_offset, $08
    .text "@Funny how fast"
    .byte con_line
    .byte con_offset, $09
    .text "rumors spread.@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_offset, $02
    .text "A: @Yeah,"
    .byte con_pause, $0F
    .text " funny."
    .byte con_pause, $14
    .text " Anyway,"
    .byte con_pause, $28
    .byte con_screen_off
    .byte con_bg_1, $12
    .byte con_animation, $01, $62
    .byte con_screen_on
    .byte con_pause, $28
    .byte con_line
    .byte con_offset, $06
    .text "Roberto Hongo himself"
    .byte con_line
    .byte con_offset, $06
    .text "called up to have"
    .byte con_line
    .byte con_offset, $06
    .text "the guy come over.@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_offset, $06
    .text "@That's how much he"
    .byte con_line
    .byte con_offset, $07
    .text "wants the victory.@"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $2E
    .byte con_animation, $01, $47
    .byte con_screen_on
    .byte con_F8, $02
    .byte con_pause, $3C
    .byte con_offset, $02
    .text "B: @Must be rough on"
    .byte con_line
    .byte con_offset, $06
    .text "Roberto's foreign"
    .byte con_line
    .byte con_offset, $06
    .text "exchange student,"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $06
    .text "you think?@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_offset, $02
    .text "C: @No kidding."
    .byte con_pause, $1E
    .text " It'll"
    .byte con_line
    .byte con_offset, $06
    .text "come down to teacher"
    .byte con_line
    .byte con_offset, $06
    .text "and pupil in the"
    .byte con_line
    .byte con_offset, $06
    .text "finals,"
    .byte con_pause, $14
    .text " for sure.@"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $1B
    .byte con_screen_on
    .byte con_pause, $1E
    .byte con_offset, $02
    .text "A:"
    .byte con_speed, $08
    .text " @..."
    .byte con_pause, $14
    .byte con_speed, $04
    .text "I wasn't finished."
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $06
    .text "There's still one"
    .byte con_line
    .byte con_offset, $06
    .text "more thing"
    .byte con_speed, $08
    .text "...@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $78
    
    
    
    .byte con_speed, $04
    .byte con_offset, $02
    .text "B: @Then quit drawing"
    .byte con_line
    .byte con_offset, $06
    .text "it out and"
    .byte con_pause, $0F
    .text " TELL"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $06
    .text "us,"
    .byte con_pause, $08
    .text " already!@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $50
    
    
    
    .byte con_offset, $02
    .text "A: @Oh,"
    .byte con_pause, $08
    .text " look at the time!"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $06
    .text "Gotta make the deadline,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $06
    .text "can't stay,"
    .byte con_pause, $0F
    .text " see ya!@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $1E
    .byte con_sound, $27
    .byte con_pause, $1E
    
    
    
    .byte con_offset, $02
    .text "B: @That guy runs just about"
    .byte con_line
    .byte con_offset, $06
    .text "as fast as his mouth.@"
    .byte con_pause, $50
    .byte con_line
    .byte con_offset, $02
    .text "C: @He's gonna stumble over"
    .byte con_line
    .byte con_offset, $06
    .text "his own tongue one day"
    .byte con_speed, $08
    .text "...@"
    .byte con_pause, $78
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit


