.segment "BANK_27"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; данные катсцен
; поинтеры в 0x000485



con_clear_3                 = $E5   ; для окна совета тренера, не стирает первые 2 тайла слева
con_clear_2                 = $E6   ; для окна диалога комментатора, не стирает первые 8 тайлов слева
con_offset                  = $E7   ; смещение вправо (+00) или влево (+80) + размер смещения
con_E8                      = $E8   ; везде 01, кроме экрана перед Presented by Tecmo
con_screen_on               = $E9
con_screen_off              = $EA
con_ball                    = $EB
con_charlie                 = $EC   ; 00 - обычные глаза
                                    ; 01 - маленькие глаза
                                    ; 02 - обычный радостный
                                    ; 03 - радостный с пальцами
                                    ; 04 - радостный с флагом
                                    ; 05 - с микрофоном
                                    ; FF - отключить чарли (но не удаляет его с экрана)
con_sound                   = $ED   ; + номер звука
con_clear_all               = $EE   ; полностью затереть нижнюю часть экрана
con_toggle_mouth            = $EF   ; переключатель, при включении срабатывает не сразу, желательно ставить перед задержкой
con_base_offset             = $F0   ; начальное положение текста + low 2006 + high 2006
con_window                  = $F1
con_speed                   = $F2   ; + интервал между буквами, если 00 то текст выводится сразу
con_palette                 = $F3   ; если + FF, то ???, иначе ???
con_F4                      = $F4   ; 04 - скрыть текст
                                    ; 05 - показать скрытый текст
                                    ; 06 - мячик скрытой катсцены + номер катсцены
                                    ; 07 - возврат из скрытой катсцены
con_F5                      = $F5
con_pause                   = $F6   ; + доп. байт, чем больше тем дольше
con_toggle_cam              = $F7   ; мгновенно сдвигает положение камеры в ту или иную сторону
con_F8                      = $F8   ; 02 - зафризить движение рта персонажа
                                    ; 17 - в скрытой катсцене со шнайдером выводит количество забитых голов
con_bg_1                    = $F9   ; background
con_bg_2                    = $FA   ; background
con_animation               = $FB   ; количество + номера анимаций
con_line                    = $FC   ; new line
con_clear_1                 = $FD   ; очистка текста для обычных диалогов
con_jump                    = $FE   ; jump to a location
con_exit                    = $FF   ; end of the cutscene



    .word off_AE6D_07_цубаса_и_карлос_перед_матчем
    .word off_AEEA_08_цубаса_победил_карлоса
    .word $0000     ; раньше это была катсцена 09, вторая часть 08
    .word off_B327_0A_мисуги_во_втором_тайме
    .word off_B3EE_0B_мисуги_после_матча
    .word off_B506_0C_мацуяма_перед_матчем
    .word off_B590_0D_мацуяма_после_матча
    .word off_B6C8_0E_мисаки_и_хюга_перед_матчем



off_AE6D_07_цубаса_и_карлос_перед_матчем:
    .byte con_E8, $01
    .byte con_bg_1, $11
    .byte con_bg_2, $10
    .byte con_animation, $01, $15
    .byte con_pause, $78
    .byte con_sound, $69
    .byte con_screen_on
    .byte con_F5, $04
    .byte con_sound, $53
    .byte con_pause, $1E
    .byte con_window, $00
    .byte con_charlie, $00
    .byte con_offset, $09
    .text "Just seconds before"
    .byte con_line
    .byte con_offset, $09
    .text "the whistle blows,"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $09
    .text "all players are"
    .byte con_line
    .byte con_offset, $09
    .text "in position -"
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $09
    .text "eagerly awaiting"
    .byte con_line
    .byte con_offset, $09
    .text "the start of the"
    .byte con_line
    .byte con_offset, $09
    .text "match."
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $58
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_offset, $09
    .text "The stadium is"
    .byte con_line
    .byte con_offset, $09
    .text "packed with"
    .byte con_line
    .byte con_offset, $09
    .text "cheering fans,"
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $09
    .text "as the final match"
    .byte con_line
    .byte con_offset, $09
    .text "of the Rio Cup is"
    .byte con_line
    .byte con_offset, $09
    .text "about to kick off!"
    .byte con_pause, $50
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_F5, $FF
    .byte con_screen_off
    .byte con_exit






off_AEEA_08_цубаса_победил_карлоса:
    .byte con_pause, $78
    .byte con_E8, $01
    .byte con_bg_1, $2B
    .byte con_bg_2, $10
    .byte con_animation, $01, $43
    .byte con_sound, $69
    .byte con_screen_on
    .byte con_F5, $04
    .byte con_sound, $4D
    .byte con_pause, $3C
    .byte con_window, $00
    .byte con_charlie, $02
    .byte con_offset, $09
    .text "Sao Paulo has beaten"
    .byte con_line
    .byte con_offset, $09
    .text "Flamengo,"
    .byte con_pause, $14
    .text " and have"
    .byte con_line
    .byte con_offset, $09
    .text "against all odds,"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $09
    .text "won the Rio Cup!"
; скрытая катсцена
    .byte con_F4, $06, $01
    .byte con_sound, $62
    .byte con_charlie, $FF
    .byte con_clear_all
    .byte con_animation, $01, $2A
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_animation, $01, $2B
    .byte con_offset, $0A
    .text "@We did it!@"
    .byte con_pause, $50
    .byte con_clear_1
    
    
    
    .byte con_bg_2, $11
    .byte con_animation, $01, $3B
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_toggle_mouth
    .byte con_offset, $04
    .text "(Excellent job,"
    .byte con_pause, $14
    .text " Tsubasa."
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $05
    .text "You've lead your team"
    .byte con_line
    .byte con_offset, $05
    .text "to this victory,"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $05
    .text "and proven that you're"
    .byte con_line
    .byte con_offset, $05
    .text "the equal to any of"
    .byte con_line
    .byte con_offset, $05
    .text "this country's aces.)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_animation, $01, $3C
    .byte con_toggle_mouth
    .byte con_pause, $0A
    .byte con_offset, $04
    .text "(But if you truly want"
    .byte con_line
    .byte con_offset, $05
    .text "your name to be known,"
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $05
    .text "you can't be satisfied"
    .byte con_line
    .byte con_offset, $05
    .text "with just this.)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $05
    .text "(The entire world is"
    .byte con_line
    .byte con_offset, $06
    .text "waiting,"
    .byte con_pause, $14
    .text " filled with"
    .byte con_line
    .byte con_offset, $06
    .text "strong competitors.)"
    .byte con_pause, $50
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $0F
    .byte con_animation, $01, $0C
    .byte con_screen_on
    .byte con_sound, $62
    .byte con_pause, $1E
    .byte con_offset, $02
    .text "@We really did it,"
    .byte con_pause, $0F
    .text " Tsubasa!@"
    .byte con_line
    .byte con_pause, $1E
    .byte con_speed, $02
    .byte con_offset, $0A
    .text "@Yahoo~~~!!@"
    .byte con_line
    .byte con_pause, $3C
    .byte con_speed, $04
    .byte con_offset, $02
    .text "@You were all magnificent"
    .byte con_line
    .byte con_offset, $03
    .text "out there!@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_speed, $02
    .byte con_offset, $0F
    .text "@Tsubasa!@"
    .byte con_line
    .byte con_pause, $1E
    .byte con_clear_1
    
    
    
    .byte con_bg_2, $10
    .byte con_animation, $01, $13
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_F5, $04
    .byte con_pause, $14
    .byte con_speed, $02
    .byte con_offset, $08
    .text "@Huh?@"
    .byte con_pause, $28
    .byte con_clear_1
    .byte con_pause, $14
    
    
    
    .byte con_animation, $01, $4E
    .byte con_pause, $14
    .byte con_animation, $01, $12
    .byte con_speed, $02
    .byte con_offset, $07
    .text "@Oh_"
    .byte con_bg_2, $11
    
    
    
    .byte con_animation, $01, $15
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_speed, $04
    .text "Carlos"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $08
    .text "Good match.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $63
    .byte con_pause, $3C
    .byte con_offset, $05
    .text "@It was."
    .byte con_pause, $3C
    .text " This is the"
    .byte con_line
    .byte con_offset, $06
    .text "first time I've lost"
    .byte con_line
    .byte con_offset, $06
    .text "the Rio Cup final,"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $06
    .text "you know.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $03
    .text "@Congratulations -"
    .byte con_pause, $1E
    .text " if I"
    .byte con_line
    .byte con_offset, $04
    .text "had to lose,"
    .byte con_pause, $14
    .text " I'm glad I"
    .byte con_line
    .byte con_offset, $04
    .text "did to one of Roberto"
    .byte con_line
    .byte con_offset, $04
    .text "Hongo's pupils.@"
    .byte con_pause, $50
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $06
    .byte con_animation, $01, $A3
    .byte con_palette, $00
    .byte con_sound, $25
    .byte con_F5, $08
    .byte con_pause, $14
    .byte con_toggle_cam
    .byte con_F5, $04
    .byte con_sound, $62
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_bg_1, $10
    .byte con_bg_2, $11
    .byte con_animation, $01, $4E
    .byte con_screen_on
    
    
    .byte con_F5, $04
    .byte con_pause, $14
    .byte con_offset, $03
    .text "@Thanks,"
    .byte con_pause, $0F
    .text " Carlos."
    .byte con_pause, $14
    .text " He's the"
    .byte con_line
    .byte con_offset, $04
    .text "reason I'm here at all.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $63
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_offset, $04
    .text "@Hey."
    .byte con_pause, $1E
    .text " We'll meet again,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $05
    .text "you and I,"
    .byte con_pause, $14
    .text " in the pro"
    .byte con_line
    .byte con_offset, $05
    .text "leagues."
    .byte con_pause, $1E
    .text " But when that"
    .byte con_line
    .byte con_offset, $05
    .text "happens,"
    .byte con_pause, $1E
    .byte con_speed, $08
    .text " I'LL "
    .byte con_speed, $04
    .text "win.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $4E
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $14
    .byte con_offset, $06
    .text "@I'm looking"
    .byte con_line
    .byte con_offset, $07
    .text "forward to it.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_toggle_mouth
    .byte con_speed, $02
    .byte con_offset, $06
    .text "@Tsubasa!"
    .byte con_pause, $14
    .byte con_animation, $01, $12
    .byte con_pause, $14
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $07
    .text "We need to talk!@"
    .byte con_pause, $1E
    .byte con_sound, $01
    
    
    
    
    .byte con_pause, $3C
    .byte con_F5, $FF
    .byte con_clear_1
    .byte con_bg_2, $23
    .byte con_animation, $01, $AE
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_F5, $08
    .byte con_sound, $43
    .byte con_pause, $78
    
    
    
    .byte con_bg_2, $10
    .byte con_animation, $01, $40
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_sound, $52
    .byte con_pause, $28
    .byte con_toggle_mouth
    .byte con_offset, $05
    .text "@Mister Katagiri,"
    .byte con_pause, $14
    .text " what"
    .byte con_line
    .byte con_offset, $06
    .text "are you doing here?!@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_palette, $FF, $24, $42
    .byte con_pause, $06
    .byte con_palette, $FF, $23, $41
    .byte con_F4, $05
    .byte con_sound, $53
    .byte con_pause, $3C
    
    
    
    .byte con_F4, $04
    .byte con_speed, $03
    .byte con_offset, $03
    .text "Having brought victory to"
    .byte con_line
    .byte con_offset, $03
    .text "Sao Paulo in the Rio Cup,"
    .byte con_ball
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $04
    .text "Tsubasa's journey towards"
    .byte con_line
    .byte con_offset, $06
    .text "becoming a pro takes"
    .byte con_line
    .byte con_offset, $06
    .text "another step forward."
    .byte con_ball
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $03
    .text "But a face from the past,"
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $03
    .text "Munemasa Katagiri,"
    .byte con_pause, $1E
    .text " brings"
    .byte con_line
    .byte con_offset, $05
    .text "sudden word from home."
    .byte con_ball
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_speed, $06
    .byte con_offset, $09
    .text "One week ago,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $08
    .text "back in Japan"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $50
    .byte con_screen_off
    .byte con_clear_1
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_sound, $01
    
    
    
    .byte con_E8, $01
    .byte con_pause, $78
    .byte con_sound, $69
    .byte con_pause, $78
    .byte con_bg_1, $0C
    .byte con_animation, $01, $43
    .byte con_screen_on
    .byte con_F5, $04
    .byte con_sound, $51
    .byte con_pause, $3C
    
    
    
    .byte con_window, $00
    .byte con_charlie, $00
    .byte con_speed, $04
    .byte con_offset, $09
    .text "The high schools"
    .byte con_line
    .byte con_offset, $09
    .text "Nankatsu and Toho"
    .byte con_line
    .byte con_offset, $09
    .text "have dominated the"
    .byte con_line
    .byte con_offset, $09
    .text "National Football"
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $09
    .text "Tournament for the"
    .byte con_line
    .byte con_offset, $09
    .text "past two years,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $09
    .text "and they seem fated"
    .byte con_line
    .byte con_offset, $09
    .text "to meet once again."
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $09
    .text "The time has come"
    .byte con_line
    .byte con_offset, $09
    .text "for the High School"
    .byte con_line
    .byte con_offset, $09
    .text "Nationals to begin!"
    .byte con_bg_2, $11
    .byte con_ball
    .byte con_clear_2
    
    
    
    .byte con_sound, $62
    .byte con_animation, $01, $49
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_bg_2, $10
    .byte con_offset, $09
    .text "Toho,"
    .byte con_pause, $0F
    .text " led by captain"
    .byte con_line
    .byte con_offset, $09
    .text "Hyuga,"
    .byte con_pause, $0F
    .text " won the"
    .byte con_line
    .byte con_offset, $09
    .text "tournament two"
    .byte con_line
    .byte con_offset, $09
    .text "years ago."
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $09
    .text "They are huge"
    .byte con_line
    .byte con_offset, $09
    .text "favorites to claim"
    .byte con_line
    .byte con_offset, $09
    .text "the title as"
    .byte con_line
    .byte con_offset, $09
    .text "champions again."
    .byte con_ball
    .byte con_clear_2
    
    
    
    .byte con_sound, $62
    .byte con_animation, $01, $1E
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_bg_2, $2B
    .byte con_offset, $09
    .text "But having won the"
    .byte con_line
    .byte con_offset, $09
    .text "previous year,"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $09
    .text "Nankatsu,"
    .byte con_pause, $14
    .text " led by"
    .byte con_line
    .byte con_offset, $09
    .text "captain Misaki,"
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $09
    .text "are ready to lay"
    .byte con_line
    .byte con_offset, $09
    .text "down a fierce"
    .byte con_line
    .byte con_offset, $09
    .text "challenge for a"
    .byte con_line
    .byte con_offset, $09
    .text "second title."
    .byte con_ball
    .byte con_clear_2
    
    
    
    .byte con_animation, $01, $43
    .byte con_toggle_cam
    .byte con_charlie, $05
    .byte con_sound, $62
    .byte con_offset, $09
    .text "The stage is all set"
    .byte con_line
    .byte con_offset, $09
    .text "for an intense"
    .byte con_line
    .byte con_offset, $09
    .text "showdown here at"
    .byte con_line
    .byte con_offset, $09
    .text "the National Stadium!"
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $09
    .text "The battle for the"
    .byte con_line
    .byte con_offset, $09
    .text "pennant and glory"
    .byte con_line
    .byte con_offset, $09
    .text "is about to begin!"
    .byte con_pause, $50
    .byte con_sound, $31
    .byte con_pause, $50
    
    
    
    .byte con_F5, $FF
    .byte con_screen_off
    .byte con_pause, $78
    .byte con_sound, $01
    .byte con_exit




.export off_0x040005_скрытая_катсцена_из_08
off_0x040005_скрытая_катсцена_из_08:
    .byte con_clear_2
    .byte con_sound, $01
    .byte con_pause, $78
    .byte con_E8, $01
    .byte con_sound, $43
    .byte con_charlie, $01
    .byte con_speed, $01
    .byte con_offset, $09
    .text "Huh?"
    .byte con_pause, $50
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $09
    .text "Why'd the music stop?"
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $50
    
    
    
    .byte con_animation, $01, $C2
    .byte con_palette, $00
    .byte con_sound, $27
    .byte con_charlie, $05
    .byte con_pause, $1E
    .byte con_speed, $06
    .byte con_offset, $09
; доп пробел в конце чтобы комментатор закончил с открытым ртом
    .text "Oh my goodness! "
    .byte con_pause, $50
    .byte con_sound, $62
    .byte con_sound, $3C
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_charlie, $04
    .byte con_speed, $04
    .byte con_offset, $09
    .text "Running onto the"
    .byte con_line
    .byte con_offset, $09
    .text "field is the star"
    .byte con_line
    .byte con_offset, $09
    .text "of the hit game,"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $09
    .text "Mighty Bomb Jack!"
    .byte con_pause, $78
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_charlie, $02
    .byte con_offset, $09
    .text "He's shown up to"
    .byte con_line
    .byte con_offset, $09
    .text "celebrate Sao"
    .byte con_line
    .byte con_offset, $09
    .text "Paulo's victory,"
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    
    .byte con_offset, $09
    .text "shouting @Banzai@"
    .byte con_line
    .byte con_offset, $09
    .text "again and again!"
    .byte con_ball
    .byte con_sound, $62
    .byte con_clear_2
    .byte con_animation, $01, $C3
    .byte con_pause, $50
    
    
    
    .byte con_charlie, $04
    .byte con_offset, $09
    .text "Thank you and"
    .byte con_line
    .byte con_offset, $09
    .text "farewell,"
    .byte con_pause, $0F
    .text " mister"
    .byte con_line
    .byte con_offset, $09
    .text "Jack!"
    .byte con_pause, $3C
    .byte con_charlie, $02
    .text " Let's meet"
    .byte con_line
    .byte con_offset, $09
    .text "again somewhere!"
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $09
    .text "Now,"
    .byte con_pause, $1E
    .text " back to our"
    .byte con_line
    .byte con_offset, $09
    .text "regular celebration!"
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_bg_2, $10
    .byte con_F5, $04
    .byte con_sound, $4D
    .byte con_F4, $07






off_B327_0A_мисуги_во_втором_тайме:
    .byte con_E8, $01
    .byte con_sound, $01
    .byte con_pause, $78
    .byte con_sound, $69
    .byte con_pause, $3C
    .byte con_bg_1, $19
    .byte con_animation, $01, $18
    .byte con_screen_on
    .byte con_sound, $53
    .byte con_F5, $04
    .byte con_pause, $3C
    .byte con_window, $00
    .byte con_charlie, $05
    .byte con_offset, $09
    .text "Musashi's finally"
    .byte con_line
    .byte con_offset, $09
    .text "decided to play"
    .byte con_line
    .byte con_offset, $09
    .text "Misugi in the"
    .byte con_line
    .byte con_offset, $09
    .text "second half!"
    .byte con_pause, $50
    .byte con_bg_2, $30
    .byte con_F5, $FF
    .byte con_clear_all
    .byte con_clear_1
    .byte con_charlie, $FF
    
    
    
    .byte con_animation, $01, $2E
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_bg_2, $11
    .byte con_offset, $02
    .text "Yayoi: "
    .byte con_pause, $0F
    .text "(Dear God,"
    .byte con_pause, $1E
    .text " please"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $0A
    .text "don't let Jun push"
    .byte con_line
    .byte con_offset, $0A
    .text "himself too far"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $20
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_F5, $04
    .byte con_pause, $78
    .byte con_toggle_mouth
    .byte con_speed, $04
    .byte con_offset, $06
    .text "(I'm finally back on"
    .byte con_line
    .byte con_offset, $07
    .text "the field again"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_speed, $04
    .byte con_offset, $04
    .text "(Misaki,"
    .byte con_pause, $0F
    .text " everyone -"
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $05
    .text "you've shown your stuff."
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $05
    .text "Now it's my turn!)"
    .byte con_pause, $50
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit






off_B3EE_0B_мисуги_после_матча:
    .byte con_E8, $01
    .byte con_bg_1, $10
    .byte con_bg_2, $11
    .byte con_animation, $01, $1B
    .byte con_pause, $78
    .byte con_screen_on
    .byte con_sound, $47
    .byte con_pause, $50
    .byte con_offset, $06
    .text "@But Misugi,"
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $07
    .text "your condition"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "...@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $20
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_speed, $04
    .byte con_offset, $05
    .text "@You mean my heart,"
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $06
    .text "Misaki."
    .byte con_pause, $3C
    .text " I won't hide"
    .byte con_line
    .byte con_offset, $06
    .text "it from you,"
    .byte con_pause, $14
    .text " it's in"
    .byte con_line
    .byte con_offset, $06
    .text "a bad shape.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $05
    .text "@But as I play,"
    .byte con_pause, $1E
    .text " little"
    .byte con_line
    .byte con_offset, $06
    .text "by little,"
    .byte con_pause, $1E
    .text " it's"
    .byte con_line
    .byte con_offset, $06
    .text "getting stronger.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_offset, $05
    .text "@Even if it's only for"
    .byte con_line
    .byte con_offset, $06
    .text "a minute or two,"
    .byte con_pause, $14
    .text " I'm"
    .byte con_line
    .byte con_offset, $06
    .text "not coming off this"
    .byte con_line
    .byte con_offset, $06
    .text "pitch yet.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $05
    .text "@And someday"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "..."
    .byte con_toggle_mouth
    .byte con_pause, $1E
    .byte con_speed, $04
    .text "I"
    .byte con_line
    .byte con_offset, $06
    .text "will beat this heart"
    .byte con_line
    .byte con_offset, $06
    .text "disease."
    .byte con_pause, $1E
    .text " Because"
    .byte con_line
    .byte con_offset, $06
    .text "football is my life.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $19
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_bg_2, $30
    .byte con_pause, $1E
    .byte con_offset, $04
    .text "@You can do it,"
    .byte con_pause, $0F
    .text " Misugi.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $2E
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_offset, $08
    .text "(Jun,"
    .byte con_pause, $1E
    .text " be safe"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $50
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit






off_B506_0C_мацуяма_перед_матчем:
    .byte con_E8, $01
    .byte con_bg_1, $11
    .byte con_bg_2, $10
    .byte con_animation, $01, $1D
    .byte con_pause, $78
    .byte con_screen_on
    .byte con_sound, $53
    .byte con_pause, $50
    .byte con_offset, $04
    .text "@Misaki,"
    .byte con_pause, $14
    .text " we're the ones"
    .byte con_line
    .byte con_offset, $05
    .text "going on to the final,"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $05
    .text "you hear?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $1B
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_offset, $04
    .text "@We've come too far to"
    .byte con_line
    .byte con_offset, $05
    .text "stop now,"
    .byte con_pause, $14
    .text " Matsuyama!@"
    .byte con_pause, $50
    
    
    
    .byte con_bg_2, $30
    .byte con_clear_1
    .byte con_animation, $01, $2F
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_bg_2, $10
    .byte con_pause, $3C
    .byte con_offset, $03
    .text "(Matsuyama,"
    .byte con_pause, $1E
    .text " good luck"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $1C
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_toggle_mouth
    .byte con_speed, $06
    .byte con_offset, $05
    .text "(Fujisawa,"
    .byte con_pause, $1E
    .text " watch me"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $06
    .text "this one's for you.)"
    .byte con_pause, $50
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit






off_B590_0D_мацуяма_после_матча:
    .byte con_E8, $01
    .byte con_bg_1, $11
    .byte con_bg_2, $10
    .byte con_animation, $01, $1D
    .byte con_pause, $78
    .byte con_screen_on
    .byte con_sound, $47
    .byte con_pause, $50
    .byte con_offset, $04
    .text "@It looks like Nankatsu"
    .byte con_line
    .byte con_offset, $05
    .text "was the better team"
    .byte con_line
    .byte con_offset, $05
    .text "after all."
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $05
    .text "Good game,"
    .byte con_pause, $14
    .text " Misaki.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $19
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_offset, $04
    .text "@Good game,"
    .byte con_pause, $14
    .text " Matsuyama.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $1D
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_offset, $03
    .text "@I'm glad we could face"
    .byte con_line
    .byte con_offset, $04
    .text "off like this."
    .byte con_pause, $3C
    .text " Do me"
    .byte con_line
    .byte con_offset, $04
    .text "a favor and win"
    .byte con_line
    .byte con_offset, $04
    .text "tomorrow's final,"
    .byte con_pause, $0F
    .text " yeah?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $19
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_offset, $06
    .text "@Sure thing.@"
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_sound, $37
    .byte con_pause, $78
    .byte con_bg_1, $0C
    .byte con_sound, $69
    .byte con_screen_on
    .byte con_F5, $04
    .byte con_pause, $3C
    .byte con_window, $00
    .byte con_charlie, $00
    .byte con_offset, $09
    .text "At last we've reached"
    .byte con_line
    .byte con_offset, $09
    .text "the final,"
    .byte con_pause, $14
    .text " where"
    .byte con_line
    .byte con_offset, $09
    .text "Nankatsu and Toho"
    .byte con_line
    .byte con_offset, $09
    .text "stand face-"
    .byte con_pause, $08
    .text "to-"
    .byte con_pause, $08
    .text "face"
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $09
    .text "for the honor of a"
    .byte con_line
    .byte con_offset, $09
    .text "2nd championship win."
    .byte con_pause, $1E
    .byte con_line
    .byte con_charlie, $05
    .byte con_offset, $09
    .text "This battle will"
    .byte con_line
    .byte con_offset, $09
    .text "close out the season!"
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $09
    .text "Who will take home"
    .byte con_line
    .byte con_offset, $09
    .text "the glory?"
    .byte con_pause, $3C
    .byte con_charlie, $03
    .byte con_sound, $62
    .text " Ahh,"
    .byte con_pause, $14
    .text " I"
    .byte con_line
    .byte con_offset, $09
    .text "can hardly wait!"
    .byte con_ball
    
    
    
    .byte con_F5, $FF
    .byte con_clear_all
    .byte con_charlie, $FF
    .byte con_bg_2, $02
    .byte con_animation, $01, $49
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $50
    .byte con_offset, $03
    .text "(I figured it'd be you,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $04
    .text "Misaki."
    .byte con_pause, $3C
    .text " But your winning"
    .byte con_line
    .byte con_offset, $04
    .text "streak ends here!)"
    .byte con_pause, $50
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit






off_B6C8_0E_мисаки_и_хюга_перед_матчем:
    .byte con_E8, $01
    .byte con_bg_1, $11
    .byte con_bg_2, $10
    .byte con_animation, $01, $49
    .byte con_pause, $78
    .byte con_sound, $69
    .byte con_screen_on
    .byte con_F5, $04
    .byte con_sound, $53
    .byte con_pause, $50
    .byte con_offset, $05
    .text "(Misaki,"
    .byte con_pause, $14
    .text " I'll make the"
    .byte con_line
    .byte con_offset, $06
    .text "score sheet and win"
    .byte con_line
    .byte con_offset, $06
    .text "the final,"
    .byte con_pause, $1E
    .text " just wait"
    .byte con_line
    .byte con_offset, $06
    .text "and see!)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $1E
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_offset, $04
    .text "(Hyuga,"
    .byte con_pause, $14
    .text " we're bringing"
    .byte con_line
    .byte con_offset, $05
    .text "the pennant back with"
    .byte con_line
    .byte con_offset, $05
    .text "us again,"
    .byte con_pause, $1E
    .text " no matter"
    .byte con_line
    .byte con_offset, $05
    .text "what!)"
    .byte con_pause, $50
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_F5, $FF
    .byte con_screen_off
    .byte con_exit


