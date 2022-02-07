.segment "BANK_30"
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



    .word off_AF35_17_цубаса_читает_письмо
    .word off_B159_18_мисаки_и_пьер_перед_матчем
    .word off_B1CE_19_цубаса_после_победы_над_францией
    .word off_B398_1A_цубаса_планирует_циклон_1
    .word off_B4F1_1B_цубаса_планирует_циклон_2
    .word off_B71E_1C_цубаса_изучил_циклон
    .word off_BA74_1D_после_победы_над_аргентиной
    .word off_BDD6_1E_цубаса_и_шнайдер_перед_матчем



off_AF35_17_цубаса_читает_письмо:
    .byte con_E8, $01
    .byte con_pause, $78
    .byte con_bg_1, $12
    .byte con_bg_2, $13
    .byte con_animation, $01, $16
    .byte con_screen_on
    .byte con_sound, $48
    .byte con_offset, $08
    .byte con_pause, $14
    .text "@Hi Tsubasa!@"
    .byte con_pause, $3C
    .byte con_animation, $01, $66
    .byte con_pause, $14
    .byte con_animation, $01, $12
    .byte con_palette, $FF, $00, $0C
    .byte con_F5, $08
    .byte con_line
    .byte con_offset, $08
    .text "@Ah,"
    .byte con_pause, $1E
    .byte con_animation, $01, $66
    .byte con_pause, $0A
    .text " Yoko!@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $2B
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_animation, $01, $2A
    .byte con_pause, $1E
    .byte con_offset, $07
    .text "@It seems you've"
    .byte con_line
    .byte con_offset, $08
    .text "been doing well.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $66
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_offset, $05
    .text "@Mikami said you flew"
    .byte con_line
    .byte con_offset, $06
    .text "home."
    .byte con_pause, $1E
    .text " What on earth"
    .byte con_line
    .byte con_offset, $06
    .text "have you been up"
    .byte con_line
    .byte con_offset, $06
    .text "to until now?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $2A
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_offset, $05
    .byte con_toggle_mouth
    .byte con_pause, $01
    .byte con_toggle_mouth
    .text " @O"
    .byte con_toggle_mouth
    .text "h, "
    .byte con_toggle_mouth
    .byte con_pause, $14
    .text "I can't say"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "..."
    .byte con_toggle_mouth
    .byte con_pause, $0A
    .byte con_animation, $01, $2B
    .byte con_pause, $1E
    .byte con_line
    .byte con_speed, $08
    .byte con_offset, $07
    .text "yet."
    .byte con_pause, $1E
    .byte con_speed, $04
    .text " But you'll"
    .byte con_line
    .byte con_offset, $07
    .text "sure be surprised"
    .byte con_line
    .byte con_offset, $07
    .text "when you find out~@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_toggle_cam
    .byte con_palette, $8C
    .byte con_animation, $01, $66
    .byte con_pause, $14
    .byte con_animation, $01, $12
    .byte con_offset, $07
    .text "@Uh..."
    .byte con_pause, $3C
    .byte con_animation, $01, $66
    .byte con_pause, $28
    .byte con_speed, $08
    .text "OK,"
    .byte con_pause, $08
    .byte con_speed, $04
    .text " then.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $14
    
    
    
    .byte con_animation, $01, $2B
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_bg_2, $2C
    .byte con_pause, $3C
    .byte con_animation, $01, $2A
    .byte con_pause, $14
    .byte con_offset, $02
    .byte con_toggle_mouth
    .byte con_pause, $01
    .byte con_toggle_mouth
    .text " @A"
    .byte con_toggle_mouth
    .text "h, "
    .byte con_toggle_mouth
    .byte con_pause, $0F
    .text "and one other thing."
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $04
    .text "You see,"
    .byte con_pause, $28
    .text " I met Roberto"
    .byte con_line
    .byte con_offset, $04
    .text "a while back."
    .byte con_pause, $3C
    .text " And so"
    .byte con_speed, $08
    .byte con_toggle_mouth
    .text "...@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $02, $B6, $8A
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_speed, $04
    .byte con_offset, $03
    .text "@Here,"
    .byte con_pause, $1E
    .text " this is for you"
    .byte con_speed, $08
    .text "...@"
    .byte con_pause, $3C
    .byte con_sound, $31
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_pause, $3C
    .byte con_clear_1
    .byte con_bg_1, $65
    .byte con_animation, $01, $3E
    .byte con_screen_on
    .byte con_sound, $55
    .byte con_pause, $78
    .byte con_speed, $04
    .byte con_offset, $02
    .text "@Tsubasa,"
    .byte con_pause, $1E
    .text " by now you may"
    .byte con_line
    .byte con_offset, $03
    .text "know I'm coaching Brazil's"
    .byte con_line
    .byte con_offset, $03
    .text "U-20 squad."
    .byte con_pause, $28
    .text " That puts"
    .byte con_line
    .byte con_offset, $03
    .text "us on opposing sides.@"
    .byte con_ball
    .byte con_clear_1
    
    
    
    .byte con_offset, $06
    .text "@But you're still"
    .byte con_line
    .byte con_offset, $07
    .text "my student,"
    .byte con_pause, $1E
    .text " so I'm"
    .byte con_line
    .byte con_offset, $07
    .text "going to tell you"
    .byte con_line
    .byte con_offset, $07
    .text "just one thing.@"
    .byte con_ball
    .byte con_clear_1
    
    

    .byte con_offset, $05
    .text "@Tsubasa,"
    .byte con_pause, $14
    .text " you say you"
    .byte con_line
    .byte con_offset, $06
    .text "want to become a pro."
    .byte con_pause, $3C
    .byte con_animation, $01, $3D
    .byte con_pause, $0F
    .byte con_toggle_mouth
    .byte con_line
    .byte con_offset, $06
    .text "Prove it to me"
    .byte con_speed, $02
    .text "..."
    .byte con_pause, $3C
    .byte con_clear_1
    
    
    
    .byte con_bg_2, $50
    .byte con_animation, $01, $6C
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_F5, $0C
    .byte con_sound, $30
    .byte con_speed, $02
    .byte con_offset, $08
    .text "...by becoming a"
    .byte con_line
    .byte con_offset, $08
    .text "Super Striker!!@"
    .byte con_pause, $B3
    .byte con_screen_off
    .byte con_clear_1
    .byte con_pause, $3C
    .byte con_palette, $00
    .byte con_line
    .byte con_line
    .byte con_speed, $02
    .byte con_offset, $0C
    .byte "_"
    .byte con_pause, $14
    .text " Roberto Hongo"
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_clear_1
    
    
    
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_sound, $01
    .byte con_bg_1, $12
    .byte con_animation, $01, $6A
    .byte con_pause, $78
    .byte con_screen_on
    .byte con_sound, $49
    .byte con_pause, $78
    .byte con_speed, $06
    .byte con_offset, $07
    .text "(@Super Striker?@"
    .byte con_pause, $50
    .byte con_line
    .byte con_speed, $05
    .byte con_offset, $08
    .text "Roberto,"
    .byte con_pause, $3C
    .text " what's"
    .byte con_line
    .byte con_offset, $08
    .text "gotten into you?)"
    .byte con_pause, $F0
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit






off_B159_18_мисаки_и_пьер_перед_матчем:
    .byte con_E8, $01
    .byte con_bg_1, $11
    .byte con_bg_2, $10
    .byte con_animation, $01, $5C
    .byte con_pause, $78
    .byte con_sound, $69
    .byte con_screen_on
    .byte con_F5, $04
    .byte con_sound, $53
    .byte con_pause, $50
    .byte con_offset, $03
    .text "(It's been three years,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $04
    .text "Misaki."
    .byte con_pause, $3C
    .byte con_speed, $06
    .text " Three years"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $04
    .text "and now you appear before"
    .byte con_line
    .byte con_offset, $04
    .text "me,"
    .byte con_pause, $1E
    .text " to meet my challenge.)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_animation, $01, $1E
    .byte con_toggle_cam
    .byte con_palette, $FF, $00, $0C
    .byte con_pause, $50
    .byte con_offset, $04
    .text "(Pierre,"
    .byte con_pause, $1E
    .text " this is where"
    .byte con_line
    .byte con_offset, $05
    .text "we settle things."
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $05
    .text "Not just you and me_"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $05
    .text "but Japan and France!)"
    .byte con_pause, $50
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit






off_B1CE_19_цубаса_после_победы_над_францией:
    .byte con_E8, $01
    .byte con_bg_1, $11
    .byte con_bg_2, $10
    .byte con_sound, $01
    .byte con_pause, $78
    .byte con_sound, $69
    .byte con_screen_on
    .byte con_sound, $47
    .byte con_F5, $04
    .byte con_F8, $0E
    .byte con_pause, $1E
    .byte con_offset, $05
    .text "@That was a super"
    .byte con_line
    .byte con_offset, $06
    .text "game,"
    .byte con_pause, $0F
    .text " eh?"
    .byte con_pause, $28
    .text " France's"
    .byte con_line
    .byte con_offset, $06
    .text "techniques were"
    .byte con_line
    .byte con_offset, $06
    .text "making my head spin!@ "
    .byte con_F8, $02
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $66
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $14
    .byte con_offset, $04
    .text "@No kidding,"
    .byte con_sound, $31
    .byte con_pause, $0F
    .text " Ishi_@ "
    .byte con_F8, $02
    .byte con_pause, $50
    .byte con_animation, $01, $6A
    .byte con_sound, $43
    .byte con_pause, $3C
    .byte con_line
    .byte con_speed, $06
    .byte con_offset, $04
    .text "(Super?"
    .byte con_pause, $50
    .text " Why does that"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $50
    .byte con_animation, $01, $08
    .byte con_F5, $FF
    .byte con_pause, $0F
    
    
    
    .byte con_bg_2, $23
    .byte con_animation, $01, $AE
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_F5, $08
    .byte con_pause, $14
    .byte con_sound, $52
    .byte con_speed, $02
    .byte con_offset, $0C
    .text "*gasp*"
    .byte con_pause, $78
    .byte con_clear_1
    
    
    
    .byte con_bg_2, $10
    .byte con_animation, $01, $66
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_bg_2, $11
    .byte con_F5, $04
    .byte con_pause, $78
    .byte con_sound, $53
    .byte con_pause, $3C
    .byte con_speed, $08
    .byte con_offset, $05
    .text "@Super"
    .byte con_toggle_mouth
    .text "..."
    .byte con_toggle_mouth
    .byte con_pause, $78
    .byte con_speed, $04
    .text "so"
    .byte con_pause, $08
    .byte con_speed, $08
    .text " THAT'S "
    .byte con_pause, $0F
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $06
    .text "what Roberto meant!@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $24
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $14
    .byte con_speed, $02
    .byte con_offset, $0C
    .text "@Huh?!@"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_pause, $3C
    .byte con_clear_1
    .byte con_bg_1, $19
    .byte con_animation, $01, $14
    .byte con_sound, $69
    .byte con_screen_on
    .byte con_F5, $04
    .byte con_palette, $FF, $00, $0C
    .byte con_pause, $78
    .byte con_speed, $04
    .byte con_offset, $05
    .text "(That was always your"
    .byte con_line
    .byte con_offset, $06
    .text "goal,"
    .byte con_pause, $14
    .text " Roberto -"
    .byte con_pause, $1E
    .text " to"
    .byte con_line
    .byte con_offset, $06
    .text "push me to not only"
    .byte con_line
    .byte con_offset, $06
    .text "be a striker,"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $08
    .text "but a playmaker"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $28
    .byte con_line
    .byte con_speed, $06
    .byte con_offset, $08
    .text "a Super Striker.)"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $10
    .byte con_animation, $01, $6A
    .byte con_screen_on
    .byte con_F5, $04
    .byte con_pause, $3C
    .byte con_speed, $04
    .byte con_offset, $06
    .text "(That was why you"
    .byte con_line
    .byte con_offset, $07
    .text "were so insistent"
    .byte con_line
    .byte con_offset, $07
    .text "in your message.)"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $2E
    .byte con_animation, $01, $52
    .byte con_screen_on
    .byte con_F5, $04
    .byte con_pause, $3C
    .byte con_speed, $04
    .byte con_offset, $05
    .text "(Knowing you,"
    .byte con_pause, $1E
    .text " the only"
    .byte con_line
    .byte con_offset, $06
    .text "player like that would"
    .byte con_line
    .byte con_offset, $06
    .text "be the 1,000-"
    .byte con_pause, $0F
    .text "goal"
    .byte con_line
    .byte con_offset, $06
    .text "legend,"
    .byte con_pause, $28
    .text " Jairo"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_speed, $04
    .byte con_offset, $04
    .text "..."
    .byte con_speed, $04
    .text "and what he had that"
    .byte con_line
    .byte con_offset, $04
    .text "enabled him to get them"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $50
    .byte con_sound, $01
    .byte con_pause, $3C
    .byte con_F5, $FF
    .byte con_clear_1
    
    
    
    .byte con_bg_2, $23
    .byte con_animation, $01, $AD
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_sound, $30
    .byte con_sound, $57
    .byte con_F5, $08
    .byte con_pause, $0F
    .byte con_speed, $03
    .byte con_offset, $03
    .text "...the Cyclone technique!)"
    .byte con_pause, $F0
    .byte con_pause, $F0
    .byte con_screen_off
    .byte con_exit






off_B398_1A_цубаса_планирует_циклон_1:
    .byte con_E8, $01
    .byte con_bg_1, $27
    .byte con_animation, $01, $6A
    .byte con_pause, $78
    .byte con_screen_on
    .byte con_F5, $0E
    .byte con_sound, $46
    .byte con_pause, $50
    .byte con_offset, $06
    .text "(To become a Super"
    .byte con_line
    .byte con_offset, $07
    .text "Striker,"
    .byte con_pause, $14
    .text " I'll need"
    .byte con_line
    .byte con_offset, $07
    .text "to master the"
    .byte con_line
    .byte con_offset, $07
    .text "Cyclone technique.)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    .byte con_offset, $06
    .text "(But only Jairo ever"
    .byte con_line
    .byte con_offset, $07
    .text "pulled it off"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $64
    .byte con_animation, $02, $BD, $9B
    .byte con_screen_on
    .byte con_pause, $3C
    .byte con_sound, $04
    .byte con_F8, $10
    .byte con_pause, $50
    .byte con_speed, $02
    .byte con_offset, $02
    .text "(OK -"
    .byte con_pause, $1E
    .byte con_speed, $04
    .text " the Drive Shot puts a"
    .byte con_line
    .byte con_offset, $03
    .text "fast top spin on the ball"
    .byte con_line
    .byte con_offset, $03
    .text "as it's rising,"
    .byte con_pause, $1E
    .text " followed"
    .byte con_line
    .byte con_offset, $03
    .text "by a sudden dip"
    .byte con_speed, $08
    .text "..."
    .byte con_ball
    .byte con_clear_1
    
    
    
    .byte con_sound, $06
    .byte con_F8, $10
    .byte con_pause, $50
    .byte con_speed, $04
    .byte con_offset, $06
    .text "...but Roberto said"
    .byte con_line
    .byte con_offset, $06
    .text "that the Cyclone's"
    .byte con_line
    .byte con_offset, $06
    .text "dip is even faster"
    .byte con_speed, $08
    .text "...)"
    .byte con_ball
    .byte con_clear_1
    
    
    
    .byte con_F5, $0D
    .byte con_pause, $78
    .byte con_speed, $04
    .byte con_offset, $02
    .text "(What if the Cyclone is"
    .byte con_line
    .byte con_offset, $03
    .text "like a Drive Shot,"
    .byte con_pause, $3C
    .text " only"
    .byte con_line
    .byte con_offset, $03
    .text "it must be struck using a"
    .byte con_line
    .byte con_offset, $03
    .text "peculiar rotation effect?)"
    .byte con_ball
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $27
    .byte con_animation, $01, $6A
    .byte con_screen_on
    .byte con_F5, $0E
    .byte con_pause, $78
    .byte con_speed, $04
    .byte con_offset, $05
    .text "(Well,"
    .byte con_pause, $1E
    .text " it won't come"
    .byte con_line
    .byte con_offset, $06
    .text "to me in a single"
    .byte con_line
    .byte con_offset, $06
    .text "night."
    .byte con_pause, $3C
    .text " Still,"
    .byte con_pause, $28
    .text " where"
    .byte con_line
    .byte con_offset, $06
    .text "do I even start?)"
    .byte con_pause, $50
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit






off_B4F1_1B_цубаса_планирует_циклон_2:
    .byte con_E8, $01
    .byte con_bg_1, $11
    .byte con_animation, $01, $52
    .byte con_pause, $78
    .byte con_screen_on
    .byte con_sound, $5A
    .byte con_pause, $50
    .byte con_offset, $06
    .text "(I haven't figured"
    .byte con_line
    .byte con_offset, $07
    .text "out the Cyclone's"
    .byte con_line
    .byte con_offset, $07
    .text "secret"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $28
    .byte con_speed, $04
    .text "yet.)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $14
    
    
    
    .byte con_offset, $03
    .text "(It's not about changing"
    .byte con_line
    .byte con_offset, $04
    .text "the Drive Shot by itself."
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $04
    .text "It just can't be -"
    .byte con_pause, $1E
    .text " the"
    .byte con_line
    .byte con_offset, $04
    .text "angle's still too broad.)"
    .byte con_pause, $78
    .byte con_sound, $31
    .byte con_screen_off
    .byte con_clear_1
    .byte con_pause, $78
    .byte con_sound, $01
    
    
    
    .byte con_bg_1, $26
    .byte con_animation, $01, $6A
    .byte con_screen_on
    .byte con_F5, $0E
    .byte con_sound, $55
    .byte con_pause, $78
    .byte con_speed, $06
    .byte con_offset, $05
    .text "(Jairo"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_speed, $04
    .text "you scored"
    .byte con_line
    .byte con_offset, $06
    .text "1,000 goals without"
    .byte con_line
    .byte con_offset, $06
    .text "using headers."
    .byte con_pause, $3C
    .text " Were"
    .byte con_line
    .byte con_offset, $06
    .text "you just that good?)"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $50
    
    
    
    .byte con_offset, $06
    .text "(No,"
    .byte con_pause, $14
    .text " that's not it"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $07
    .text "Your headers were"
    .byte con_line
    .byte con_offset, $07
    .text "weak,"
    .byte con_pause, $1E
    .text " so you had"
    .byte con_line
    .byte con_offset, $07
    .text "to compensate.)"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_offset, $05
    .text "(That's why you had"
    .byte con_line
    .byte con_offset, $06
    .text "to create the"
    .byte con_line
    .byte con_offset, $06
    .text "Cyclone technique"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $50
    
    
    
    .byte con_animation, $01, $67
    .byte con_pause, $14
    .byte con_offset, $07
    .text "(..."
    .byte con_speed, $02
    .text "Hmm,"
    .byte con_pause, $3C
    .byte con_speed, $06
    .text " HAD"
    .byte con_pause, $0F
    .byte con_speed, $04
    .text " to."
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $08
    .text "Just like when"
    .byte con_line
    .byte con_offset, $08
    .text "Meon stopped my"
    .byte con_line
    .byte con_offset, $08
    .text "Drive Shot,"
    .byte con_pause, $1E
    .text " I"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
; уменьшен тайминг падающей звезды
    .byte con_animation, $02, $6A, $92
    .byte con_pause, $B4
    .byte con_animation, $01, $08
    .byte con_F5, $FF
    
    
    
    .byte con_bg_2, $23
    .byte con_animation, $01, $AE
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_F5, $09
    .byte con_sound, $43
    .byte con_pause, $78
    .byte con_sound, $49
    .byte con_speed, $03
    .byte con_offset, $03
    .text "(Wait a moment!"
    .byte con_pause, $3C
    .byte con_speed, $04
    .text " The cross"
    .byte con_line
    .byte con_offset, $04
    .text "pass is one of the most"
    .byte con_line
    .byte con_offset, $04
    .text "basic strategies on"
    .byte con_line
    .byte con_offset, $04
    .text "the field.)"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $04
    .text "(What were you doing"
    .byte con_line
    .byte con_offset, $05
    .text "when one came at you?"
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $05
    .text "If floating the ball"
    .byte con_line
    .byte con_offset, $05
    .text "with your head is out,"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $05
    .text "then getting to 1,000"
    .byte con_line
    .byte con_offset, $05
    .text "goals with only long"
    .byte con_line
    .byte con_offset, $05
    .text "shots should be"
    .byte con_line
    .byte con_offset, $05
    .text "nearly impossible"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_speed, $04
    .byte con_offset, $04
    .text "(It's something you"
    .byte con_line
    .byte con_offset, $05
    .text "could also do at close"
    .byte con_line
    .byte con_offset, $05
    .text "range,"
    .byte con_pause, $1E
    .text " even inside the"
    .byte con_line
    .byte con_offset, $05
    .text "penalty area"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $50
    
    
    
    .byte con_speed, $04
    .byte con_offset, $03
    .text "(So"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_speed, $04
    .text "if whatever the"
    .byte con_line
    .byte con_offset, $04
    .text "Cyclone was"
    .byte con_pause, $08
    .byte con_speed, $06
    .text " ACTED "
    .byte con_pause, $0F
    .byte con_speed, $04
    .text "like"
    .byte con_line
    .byte con_offset, $04
    .text "a header in some way,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $04
    .text "your handicap disappears!)"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_offset, $06
    .text "(Yes,"
    .byte con_pause, $14
    .text " I can almost"
    .byte con_line
    .byte con_offset, $07
    .text "see it!"
    .byte con_pause, $1E
    .text " I'm going"
    .byte con_line
    .byte con_offset, $07
    .text "to make this work!)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_animation, $01, $AD
    .byte con_F5, $09
    .byte con_sound, $57
    .byte con_pause, $0F
    .byte con_offset, $03
    .text "(I"
    .byte con_pause, $08
    .byte con_speed, $06
    .text " WILL "
    .byte con_pause, $0F
    .byte con_speed, $04
    .text "figure this out!"
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $04
    .text "For Roberto,"
    .byte con_pause, $1E
    .text " for Jairo"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $28
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $04
    .text "and for me!)"
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit






off_B71E_1C_цубаса_изучил_циклон:
    .byte con_E8, $01
    .byte con_pause, $78
    .byte con_bg_1, $3F
    .byte con_animation, $01, $AC
    .byte con_sound, $70
    .byte con_pause, $78
    .byte con_F8, $11
    .byte con_screen_on
    .byte con_pause, $F0
    .byte con_palette, $27
    .byte con_pause, $03
    .byte con_palette, $0C
    .byte con_pause, $02
    .byte con_palette, $27
    .byte con_pause, $03
    .byte con_palette, $0C
    .byte con_pause, $0A
    .byte con_palette, $11
    .byte con_pause, $06
    .byte con_palette, $0C
    .byte con_pause, $03
    .byte con_palette, $11
    .byte con_pause, $06
    .byte con_palette, $0C
    .byte con_sound, $30
    .byte con_pause, $F0
    .byte con_palette, $11
    .byte con_pause, $03
    .byte con_palette, $0C
    .byte con_pause, $02
    .byte con_palette, $11
    .byte con_pause, $03
    .byte con_palette, $0C
    .byte con_pause, $0A
    .byte con_palette, $11
    .byte con_pause, $06
    .byte con_palette, $0C
    .byte con_pause, $02
    .byte con_palette, $11
    .byte con_pause, $06
    .byte con_palette, $0C
    .byte con_pause, $78
    .byte con_palette, $27
    .byte con_pause, $03
    .byte con_palette, $0C
    .byte con_pause, $02
    .byte con_palette, $27
    .byte con_pause, $03
    .byte con_palette, $0C
    .byte con_sound, $30
    .byte con_palette, $11
    .byte con_pause, $06
    .byte con_palette, $0C
    .byte con_pause, $02
    .byte con_palette, $11
    .byte con_pause, $06
    .byte con_palette, $0C
    .byte con_sound, $30
    .byte con_pause, $78
    .byte con_sound, $4B
    .byte con_pause, $F0
    .byte con_offset, $04
    .text "(I thought the Cyclone"
    .byte con_line
    .byte con_offset, $05
    .text "used the Drive Shot's"
    .byte con_line
    .byte con_offset, $05
    .text "topspin,"
    .byte con_pause, $28
    .text " but my head"
    .byte con_line
    .byte con_offset, $05
    .text "was on backwards"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $14
    
    
    
    .byte con_speed, $04
    .byte con_offset, $06
    .text "...because the"
    .byte con_line
    .byte con_offset, $06
    .text "Cyclone's secret is"
    .byte con_line
    .byte con_offset, $06
    .text "in how it starts.)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $50
    
    
    
    .byte con_speed, $04
    .byte con_offset, $05
    .text "(I can see what made"
    .byte con_line
    .byte con_offset, $06
    .text "you a legend,"
    .byte con_pause, $1E
    .text " Jairo.)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_speed, $04
    .byte con_offset, $04
    .text "(Even without headers,"
    .byte con_pause, $28
    .byte con_line
    .byte con_offset, $05
    .text "what you had could"
    .byte con_line
    .byte con_offset, $05
    .text "turn a match around.)"
    .byte con_ball
    .byte con_clear_1
    
    
    
    .byte con_palette, $27
    .byte con_pause, $03
    .byte con_palette, $0C
    .byte con_pause, $02
    .byte con_palette, $27
    .byte con_pause, $03
    .byte con_palette, $0C
    .byte con_sound, $30
    .byte con_pause, $0A
    .byte con_palette, $11
    .byte con_pause, $06
    .byte con_palette, $0C
    .byte con_pause, $02
    .byte con_palette, $11
    .byte con_sound, $30
    .byte con_pause, $50
    .byte con_screen_off
    .byte con_bg_1, $36
    .byte con_animation, $02, $73, $74
    .byte con_palette, $00
    .byte con_F5, $03
    .byte con_sound, $0E
    .byte con_pause, $28
    .byte con_sound, $10
    .byte con_F5, $FF
    .byte con_animation, $02, $88, $87
    .byte con_palette, $00
    .byte con_pause, $28
    .byte con_sound, $5F
    .byte con_pause, $50
    .byte con_speed, $04
    .byte con_offset, $03
    .text "(You'd start by kicking"
    .byte con_line
    .byte con_offset, $04
    .text "the ball high up to"
    .byte con_line
    .byte con_offset, $04
    .text "apply enough backspin"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_speed, $04
    .byte con_offset, $05
    .text "...and as the ball"
    .byte con_line
    .byte con_offset, $05
    .text "fell,"
    .byte con_pause, $3C
    .byte con_speed, $06
    .text " THEN "
    .byte con_pause, $14
    .byte con_speed, $04
    .text "you hit it"
    .byte con_line
    .byte con_offset, $05
    .text "with the Drive Shot!)"
    .byte con_ball
    .byte con_clear_1
    
    
    
    .byte con_animation, $02, $BE, $72
    .byte con_sound, $10
    .byte con_screen_off
    .byte con_bg_1, $68
    .byte con_animation, $03, $89, $AA, $BF
    .byte con_sound, $09
    .byte con_screen_on
    .byte con_offset, $04
    .text "(The combination of"
    .byte con_line
    .byte con_offset, $05
    .text "the intense backspin,"
    .byte con_sound, $6B
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $05
    .text "the fast drop speed,"
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $05
    .text "and the"
    .byte con_sound, $11
    .text " Drive Shot"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_sound, $6B
    .byte con_pause, $1E
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_speed, $04
    .byte con_offset, $03
    .text "..."
    .byte con_pause, $0F
    .byte con_speed, $06
    .text "THAT'S "
    .byte con_pause, $14
    .byte con_speed, $04
    .text "what makes"
    .byte con_line
    .byte con_offset, $03
    .text "the Cyclone unstoppable!)"
    .byte con_ball
    
    
    
    .byte con_palette, $FF, $25, $43
    .byte con_sound, $30
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_2, $48
    .byte con_animation, $01, $35
    .byte con_screen_on
    .byte con_pause, $F0
    .byte con_pause, $F0
    .byte con_offset, $03
    .text "(Tsubasa,"
    .byte con_pause, $28
    .text " you're training"
    .byte con_line
    .byte con_offset, $04
    .text "in this kind of weather?)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_bg_2, $53
    .byte con_animation, $01, $AB
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_F8, $11
    .byte con_pause, $78
    .byte con_offset, $04
    .text "(It works"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $50
    .byte con_speed, $04
    .text "in my mind."
    .byte con_pause, $78
    .byte con_line
    .byte con_offset, $05
    .text "Time to make it work_)"
    .byte con_palette, $27
    .byte con_pause, $03
    .byte con_palette, $0C
    .byte con_pause, $02
    .byte con_palette, $27
    .byte con_pause, $03
    .byte con_palette, $0C
    .byte con_sound, $30
    .byte con_pause, $0A
    .byte con_palette, $11
    .byte con_pause, $06
    .byte con_palette, $0C
    .byte con_pause, $02
    .byte con_palette, $11
    .byte con_sound, $30
    .byte con_pause, $3C
    .byte con_bg_2, $05
    .byte con_animation, $01, $A4
    .byte con_toggle_cam
    .byte con_palette, $FF, $13, $01
    
    
    
    .byte con_F5, $09
    .byte con_pause, $0A
    .byte con_line
    .byte con_speed, $02
    .byte con_offset, $08
    .text "@on"
    .byte con_sound, $01
    .text " this ball!!@"
    .byte con_line
    .byte con_pause, $3C
    .byte con_clear_1
    
    
    
    .byte con_bg_2, $21
    .byte con_animation, $02, $73, $74
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_F5, $03
    .byte con_sound, $0E
    .byte con_pause, $28
    .byte con_sound, $10
    .byte con_F5, $FF
    .byte con_bg_2, $02
    .byte con_animation, $01, $5B
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_speed, $02
    .byte con_offset, $07
    .text "@What the_?!@"
    .byte con_pause, $1E
    .byte con_clear_1
    
    
    
    .byte con_bg_2, $09
    .byte con_animation, $01, $43
    .byte con_toggle_cam
    .byte con_palette, $FF, $03, $11
    .byte con_F5, $07
    .byte con_sound, $0E
    .byte con_pause, $0A
    .byte con_sound, $0B
    .byte con_pause, $14
    .byte con_sound, $09
    .byte con_pause, $3C
    .byte con_F5, $FF
    .byte con_palette, $FF, $25, $43
    .byte con_sound, $60
    .byte con_pause, $0A
    .byte con_sound, $61
    .byte con_pause, $14
    .byte con_sound, $24
    .byte con_pause, $14
    .byte con_sound, $24
    .byte con_pause, $78
    .byte con_pause, $F0
    .byte con_bg_2, $3E
    .byte con_animation, $02, $A7, $A8
    .byte con_F8, $12
    .byte con_toggle_cam
    .byte con_bg_2, $41
    .byte con_F8, $11
    .byte con_palette, $FF, $28, $44
    .byte con_pause, $50
    .byte con_palette, $FF, $29, $45
    .byte con_pause, $50
    .byte con_sound, $70
    .byte con_palette, $FF, $2A, $1E
    .byte con_pause, $F0
    .byte con_pause, $F0
    .byte con_pause, $F0
    .byte con_speed, $08
    .byte con_offset, $09
    .text "@I..."
    .byte con_pause, $78
    .byte con_speed, $06
    .text "did it."
    .byte con_pause, $78
    .byte con_line
    .byte con_line
    .byte con_speed, $02
    .byte con_offset, $0A
    .text "I DID IT!@"
    .byte con_pause, $1E
    .byte con_sound, $45
    .byte con_pause, $3C
    .byte con_palette, $2B
    .byte con_pause, $03
    .byte con_palette, $2A
    .byte con_pause, $02
    .byte con_palette, $2B
    .byte con_pause, $03
    .byte con_palette, $2A
    .byte con_screen_off
    .byte con_clear_1
    
    
    
    .byte con_bg_2, $23
    .byte con_animation, $01, $AD
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_F5, $09
    .byte con_sound, $30
    .byte con_pause, $1E
    .byte con_speed, $04
    .byte con_offset, $08
    .text "@I've mastered"
    .byte con_line
    .byte con_offset, $09
    .text "the Cyclone!!@"
    .byte con_F5, $09
    .byte con_sound, $30
    .byte con_pause, $F0
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit






off_BA74_1D_после_победы_над_аргентиной:
    .byte con_E8, $01
    .byte con_pause, $78
    .byte con_bg_1, $06
    .byte con_animation, $01, $A3
    .byte con_palette, $00
    .byte con_sound, $25
    .byte con_F5, $08
    .byte con_pause, $14
    .byte con_toggle_cam
    .byte con_F5, $04
    .byte con_pause, $3C
    .byte con_sound, $47
    .byte con_pause, $14
    .byte con_offset, $05
    .text "@Japan's number one,"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $06
    .text "man!"
    .byte con_pause, $14
    .text " We're takin' on"
    .byte con_line
    .byte con_offset, $06
    .text "the world and kicking"
    .byte con_line
    .byte con_offset, $06
    .text "some serious ass!@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $14
    
    
    
    .byte con_offset, $08
    .text "@You've got that"
    .byte con_line
    .byte con_offset, $09
    .text "right,"
    .byte con_pause, $14
    .text " Hyuga.@"
    .byte con_pause, $50
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $11
    .byte con_bg_2, $10
    .byte con_animation, $01, $06
    .byte con_sound, $62
    .byte con_screen_on
    .byte con_F5, $04
    .byte con_pause, $3C
    .byte con_offset, $05
    .text "@I can't believe you"
    .byte con_pause, $08
    .byte con_line
    .byte con_speed, $06
    .byte con_offset, $06
    .text "ACTUALLY "
    .byte con_pause, $14
    .byte con_speed, $04
    .text "revived the"
    .byte con_line
    .byte con_offset, $06
    .text "Cyclone,"
    .byte con_pause, $14
    .text " you crazy"
    .byte con_pause, $08
    .byte con_line
    .byte con_offset, $06
    .text "son-"
    .byte con_pause, $08
    .text "of-"
    .byte con_pause, $08
    .text "a-"
    .byte con_pause, $08
    .text "bitch!@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $66
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $14
    .byte con_speed, $02
    .byte con_offset, $07
    .byte con_toggle_mouth
    .text " "
    .byte con_toggle_mouth
    .text "@He"
    .byte con_F8, $02
    .text "h.@"
    .byte con_pause, $3C
    .byte con_clear_1
    .byte con_pause, $14
    .byte con_animation, $01, $66
    .text " "
    .byte con_clear_1
    .byte con_pause, $14
    
    
    
    .byte con_speed, $04
    .byte con_offset, $03
    .text "@It wasn't easy,"
    .byte con_pause, $1E
    .text " I'll say"
    .byte con_line
    .byte con_offset, $04
    .text "that much."
    .byte con_pause, $3C
    .text " But no time to"
    .byte con_line
    .byte con_offset, $04
    .text "rest,"
    .byte con_pause, $14
    .text " let's stay focused"
    .byte con_line
    .byte con_offset, $04
    .text "and win the World Cup!@"
    .byte con_pause, $1E
    
    
    
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_sound, $53
    .byte con_pause, $78
    .byte con_toggle_mouth
    .byte con_speed, $03
    .byte con_offset, $07
    .text "Through their hard"
    .byte con_line
    .byte con_offset, $08
    .text "work,"
    .byte con_pause, $1E
    .text " Japan U-20"
    .byte con_line
    .byte con_offset, $07
    .text "has advanced to the"
    .byte con_line
    .byte con_offset, $06
    .text "World Cup Semifinals."
    .byte con_ball
    .byte con_clear_1
    
    
    
    .byte con_pause, $1E
    .byte con_speed, $04
    .byte con_offset, $07
    .text "Joining them are"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $50
    
    
    
    .byte con_screen_off
    .byte con_pause, $3C
    .byte con_clear_1
    .byte con_bg_1, $11
    .byte con_animation, $01, $5C
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_speed, $02
    .byte con_offset, $0F
    .text "France,"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $10
    .byte con_animation, $01, $5A
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_offset, $0B
    .text "Brazil,"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $2E
    .byte con_animation, $01, $21
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_toggle_mouth
    .byte con_speed, $06
    .byte con_offset, $07
    .text "and"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_speed, $03
    .text "West Germany!"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_sound, $01
    .byte con_clear_1
    .byte con_bg_1, $42
    .byte con_animation, $02, $98, $8F
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_sound, $30
    .byte con_speed, $02
    .byte con_offset, $02
    .text "It's down to the final four!"
    .byte con_pause, $F0
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_clear_all
    .byte con_bg_1, $28
    .byte con_screen_on
    .byte con_sound, $3E
    .byte con_speed, $03
    .byte con_base_offset
    .word $2100
    .byte con_offset, $0A
    .text "The next day"
    .byte con_pause, $28
    .byte con_line
    .byte con_line
    .byte con_offset, $09
    .text "U-20 World Cup,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $09
    .text "Knockout Stage"
    .byte con_pause, $28
    .byte con_line
    .byte con_line
    .byte con_offset, $07
    .text "Semifinals:"
    .byte con_pause, $0F
    .text " Block A"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $08
    .text "France VS Brazil"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_all
    .byte con_clear_1
    .byte con_bg_1, $01
    .byte con_animation, $01, $6F
    .byte con_sound, $62
    .byte con_F8, $0A
    .byte con_palette, $00
    .byte con_F5, $00
    .byte con_base_offset
    .word $2260
    .byte con_pause, $28
    .byte con_window, $00
    .byte con_charlie, $00
    .byte con_speed, $04
    .byte con_offset, $09
    .text "In the last minutes"
    .byte con_line
    .byte con_offset, $09
    .text "of the match,"
    .byte con_pause, $14
    .text " the"
    .byte con_line
    .byte con_offset, $09
    .text "score of France vs"
    .byte con_line
    .byte con_offset, $09
    .text "Brazil is"
    .byte con_pause, $08
    .text " 0"
    .byte con_pause, $08
    .text " to"
    .byte con_pause, $08
    .text " 3!"
    .byte con_pause, $50
    .byte con_clear_2
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $09
    .text "France are in big"
    .byte con_line
    .byte con_offset, $09
    .text "trouble,"
    .byte con_pause, $14
    .text " as there"
    .byte con_line
    .byte con_offset, $09
    .text "is barely any time"
    .byte con_line
    .byte con_offset, $09
    .text "left on the clock!"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_E8, $01
    .byte con_clear_all
    .byte con_charlie, $FF
    .byte con_bg_1, $3B
    .byte con_animation, $01, $7A
    .byte con_palette, $00
    .byte con_F5, $08
    .byte con_sound, $26
    .byte con_speed, $03
    .byte con_offset, $05
    .text "@France has not"
    .byte con_line
    .byte con_offset, $06
    .text "fallen yet!"
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $06
    .text "Let's go,"
    .byte con_pause, $0F
    .text " Napoleon!!@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $7B
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_F5, $08
    .byte con_sound, $26
    .byte con_offset, $08
    .text "@Honneur et patrie!@"
    .byte con_pause, $3C
    .byte con_clear_1
    
    
    
    .byte con_bg_2, $59
    .byte con_animation, $01, $83
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_sound, $09
    .byte con_F5, $01
    .byte con_window, $01
    .byte con_charlie, $00
    .byte con_speed, $04
    .byte con_offset, $09
    .text "The duo unleash their"
    .byte con_line
    .byte con_offset, $09
    .text "gracefully powerful"
    .byte con_line
    .byte con_offset, $09
    .text "Slider Cannon Shot!"
    .byte con_pause, $50
    .byte con_bg_2, $40
    .byte con_F5, $FF
    
    
    
    .byte con_clear_2
    .byte con_animation, $03, $C0, $7E, $94
    .byte con_palette, $00
    .byte con_sound, $0B
    .byte con_pause, $0F
    .byte con_charlie, $05
    .byte con_speed, $03
    .byte con_offset, $09
    .text "But"
    .byte con_sound, $01
    .byte con_pause, $01
    .byte con_sound, $2A
    .byte con_palette, $1E
    .text " Gertise makes a"
    .byte con_line
    .byte con_offset, $09
    .text "stunning one-"
    .byte con_pause, $08
    .text "handed"
    .byte con_line
    .byte con_offset, $09
    .text "save like it was"
    .byte con_line
    .byte con_offset, $09
    .text "nothing!!"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_2
    .byte con_window, $00
    .byte con_charlie, $01
    .byte con_bg_1, $3A
    .byte con_animation, $01, $8B
    .byte con_palette, $00
    .byte con_F5, $04
    .byte con_sound, $66
    .byte con_speed, $04
    .byte con_offset, $09
    .text "The match is ov"
    .byte con_sound, $62
    .text "er!"
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $09
    .text "France is out and"
    .byte con_line
    .byte con_offset, $09
    .text "Brazil are through"
    .byte con_line
    .byte con_offset, $09
    .text "to "
    .byte con_sound, $69
    .text "the final!"
    .byte con_pause, $F0
    
    
    
    .byte con_screen_off
    .byte con_pause, $3C
    .byte con_clear_1
    .byte con_clear_all
    .byte con_charlie, $FF
    .byte con_bg_1, $02
    .byte con_animation, $01, $4B
    .byte con_screen_on
    .byte con_sound, $46
    .byte con_pause, $3C
    .byte con_offset, $07
    .text "@They're out?"
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $08
    .text "Just like that?!@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_bg_2, $10
    .byte con_animation, $01, $5D
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_F5, $04
    .byte con_pause, $50
    .byte con_speed, $08
    .byte con_offset, $06
    .text "(Mon..."
    .byte con_pause, $50
    .text "dieu...)"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_F5, $FF
    .byte con_bg_2, $02
    .byte con_animation, $01, $32
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_speed, $04
    .byte con_offset, $05
    .text "@We had such a close"
    .byte con_line
    .byte con_offset, $06
    .text "game against France,"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_offset, $06
    .text "yet Brazil just went"
    .byte con_line
    .byte con_offset, $06
    .text "out and shut them"
    .byte con_line
    .byte con_offset, $06
    .text "down with three"
    .byte con_line
    .byte con_offset, $06
    .text "goals in the sack"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "...@"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $5B
    .byte con_animation, $01, $4A
    .byte con_sound, $69
    .byte con_screen_on
    .byte con_pause, $1E
    .byte con_window, $00
    .byte con_charlie, $00
    .byte con_speed, $04
    .byte con_offset, $09
    .text "Brazil has secured a"
    .byte con_line
    .byte con_offset, $09
    .text "place in the final"
    .byte con_line
    .byte con_offset, $09
    .text "thanks to their"
    .byte con_pause, $14
    .byte con_line
    .byte con_speed, $05
    .byte con_offset, $09
    .text "@Keeper Machine@,"
    .byte con_ball
    .byte con_clear_2
    
    
    
    .byte con_speed, $04
    .byte con_offset, $09
    .text "the Inter Milan"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $09
    .text "#"
    .byte con_pause, $0F
    .text "1"
    .byte con_pause, $14
    .text " and Brazilian"
    .byte con_line
    .byte con_offset, $09
    .text "wonder goalie -"
    .byte con_pause, $3C
    .byte con_F4, $03
    .byte con_animation, $01, $3A
    .byte con_sound, $15
    .byte con_toggle_mouth
    .byte con_F4, $01
    .byte con_pause, $3C
    .byte con_charlie, $05
    .byte con_line
    .byte con_offset, $09
    .text "Elzo Gertise!"
    .byte con_sound, $62
    .byte con_ball
    .byte con_clear_2
    
    
    
    .byte con_charlie, $00
    .byte con_offset, $09
    .text "We'll be right back"
    .byte con_line
    .byte con_offset, $09
    .text "with the Block B"
    .byte con_line
    .byte con_offset, $09
    .text "Semifinal match!"
    .byte con_pause, $50
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit






off_BDD6_1E_цубаса_и_шнайдер_перед_матчем:
    .byte con_E8, $01
    .byte con_bg_1, $11
    .byte con_bg_2, $10
    .byte con_animation, $01, $21
    .byte con_pause, $78
    .byte con_sound, $69
    .byte con_screen_on
    .byte con_F5, $04
    .byte con_sound, $53
    .byte con_pause, $50
    .byte con_toggle_mouth
    .byte con_offset, $03
    .text "(Tsubasa,"
    .byte con_pause, $1E
    .text " this is where we"
    .byte con_line
    .byte con_offset, $04
    .text "pay you back for our last"
    .byte con_line
    .byte con_offset, $04
    .text "defeat."
    .byte con_pause, $1E
    .text " You_"
    .byte con_pause, $3C
    .text "and that"
    .byte con_line
    .byte con_offset, $04
    .text "traitor Wakabayashi!)"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $6A
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $50
    .byte con_offset, $06
    .text "(Once again,"
    .byte con_pause, $1E
    .text " West"
    .byte con_line
    .byte con_offset, $07
    .text "Germany's standing"
    .byte con_line
    .byte con_offset, $07
    .text "between us and"
    .byte con_line
    .byte con_offset, $07
    .text "the World Cup.)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_offset, $05
    .text "(Schneider,"
    .byte con_pause, $1E
    .text " Japan"
    .byte con_line
    .byte con_offset, $06
    .text "are taking your team"
    .byte con_line
    .byte con_offset, $06
    .text "down as many times"
    .byte con_line
    .byte con_offset, $06
    .text "as we have to!)"
    .byte con_pause, $50
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_F5, $FF
    .byte con_screen_off
    .byte con_exit


