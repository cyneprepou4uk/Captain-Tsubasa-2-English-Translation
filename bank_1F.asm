.segment "BANK_1F"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000
; 0x03E010-0x04000F



; данные катсцен
; поинтеры в 0x000485



.export off_0x040005_скрытая_катсцена_из_01



con_clear_3                 = $E5   ; для окна совета тренера, не стирает первые 2 тайла слева
con_clear_2                 = $E6   ; для окна диалога комментатора, не стирает первые 8 тайлов слева
con_offset                  = $E7   ; смещение вправо (+00) или влево (+80) + размер смещения
con_E8                      = $E8   ; везде 01, кроме экрана перед Presented by Tecmo
con_screen_on               = $E9
con_screen_off              = $EA
con_ball                    = $EB
con_charlie                 = $EC   ; 00 = обычные глаза
                                    ; 01 = маленькие глаза
                                    ; 02 = обычный радостный
                                    ; 03 = радостный с пальцами
                                    ; 04 = радостный с флагом
                                    ; 05 = с микрофоном
                                    ; FF = отключить чарли (но не удаляет его с экрана)
con_sound                   = $ED   ; + номер звука
con_clear_all               = $EE   ; полностью затереть нижнюю часть экрана
con_toggle_mouth            = $EF   ; переключатель, при включении срабатывает не сразу, желательно ставить перед задержкой
con_base_offset             = $F0   ; начальное положение текста + low 2006 + high 2006
con_window                  = $F1
con_speed                   = $F2   ; + интервал между буквами, если 00 то текст выводится сразу
con_palette                 = $F3   ; если + FF, то ???, иначе ???
con_F4                      = $F4   ; 04 = скрыть текст
                                    ; 05 = показать скрытый текст
                                    ; 06 = мячик скрытой катсцены + номер катсцены
                                    ; 07 = возврат из скрытой катсцены
con_F5                      = $F5
con_pause                   = $F6   ; + доп. байт, чем больше тем дольше
con_toggle_cam              = $F7   ; мгновенно сдвигает положение камеры в ту или иную сторону
con_F8                      = $F8   ; 02 = зафризить движение рта персонажа
                                    ; 17 = в скрытой катсцене со шнайдером выводит количество забитых голов
con_bg_1                    = $F9   ; background
con_bg_2                    = $FA   ; background
con_animation               = $FB   ; количество + номера анимаций
con_line                    = $FC   ; new line
con_clear_1                 = $FD   ; очистка текста для обычных диалогов
con_jump                    = $FE   ; jump to a location
con_exit                    = $FF   ; end of the cutscene



    .word _off014_A020_00_самая_первая_заставка
    .word _off014_A2A1_01_история_цубасы
    .word _off014_A626_02_карлос_перед_первым_матчем
    .word _off014_A6B4_03_карлос_после_первого_матча
    .word _off014_A6DC_04_цубаса_и_меон
    .word _off014_A968_05_карлос_и_коимбра
    .word _off014_AB61_06_роберто_говорит_о_джаиро



_off014_A020_00_самая_первая_заставка:
    .byte con_E8, $01
    .byte con_bg_1, $00
    .byte con_animation, $01, $8D
    .byte con_screen_on
    .byte con_pause, $F0
    .byte con_screen_off
    .byte con_sound, $58
    .byte con_pause, $3C
    .byte con_window, $01
    .byte con_charlie, $00
    .byte con_bg_1, $01
    .byte con_animation, $01, $6E
    .byte con_F8, $0A
    .byte con_palette, $00
    .byte con_F5, $00
    .byte con_sound, $68
    .byte con_offset, $09
    .byte con_speed, $02
    .text "So fast! "
    .byte con_pause, $28
    .byte con_speed, $04
    .text "Closing"
    .byte con_line
    .byte con_offset, $09
    .text "down on Brazil's goal"
    .byte con_line
    .byte con_offset, $09
    .text "is Japan's captain,"
    .byte con_pause, $0A
    .byte con_line
    .byte con_offset, $09
    .text "Ozora Tsubasa!"
    .byte con_pause, $3C
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_clear_all
    .byte con_E8, $01
    .byte con_charlie, $FF
    .byte con_bg_2, $03
    .byte con_animation, $01, $75
    .byte con_palette, $00
    .byte con_pause, $28
    .byte con_offset, $0A
    .byte con_speed, $01
    .text "Ozora Tsubasa"
    .byte con_line
    .byte con_line
    .byte con_offset, $06
    .text "Sao Paulo FC, Brazil"
    .byte con_line
    .byte con_offset, $0B
    .text "Midfielder"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $08
    .byte con_animation, $02, $C1, $82
    .byte con_palette, $00
    .byte con_F5, $10
    .byte con_sound, $28
    .byte con_pause, $14
    .byte con_sound, $28
    .byte con_pause, $14
    .byte con_sound, $28
    .byte con_pause, $14
    .byte con_sound, $0E
    .byte con_window, $01
    .byte con_charlie, $05
    .byte con_speed, $04
    .byte con_offset, $09
    .text "Hyuga"
    .byte con_sound, $6B
    .text " throws down"
    .byte con_line
    .byte con_offset, $09
    .text "with his powerful"
    .byte con_line
    .byte con_offset, $09
    .text "Tiger Tackle!!"
    .byte con_pause, $14
    .text " He's"
    .byte con_line
    .byte con_offset, $09
    .text "like a wild beast!"
    .byte con_pause, $3C
    .byte con_sound, $02
    
    
    
    .byte con_screen_off
    .byte con_clear_all
    .byte con_clear_1
    .byte con_charlie, $FF
    .byte con_bg_2, $07
    .byte con_animation, $01, $76
    .byte con_palette, $00
    .byte con_pause, $28
    .byte con_speed, $01
    .byte con_offset, $0A
    .text "Hyuga Kojiro"
    .byte con_line
    .byte con_line
    .byte con_offset, $07
    .text "Toho Academy, Japan"
    .byte con_line
    .byte con_offset, $0A
    .text "Center foward"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_window, $01
    .byte con_charlie, $02
    .byte con_bg_1, $09
    .byte con_animation, $01, $84
    .byte con_palette, $00
    .byte con_F5, $01
    .byte con_sound, $0E
    .byte con_speed, $04
    .byte con_offset, $09
    .text "Wow,"
    .byte con_pause, $0F
    .text " look"
    .byte con_sound, $09
    .text " at that"
    .byte con_line
    .byte con_offset, $09
    .text "Golden Combo!"
    .byte con_pause, $14
    .byte con_sound, $30
    .text " Their"
    .byte con_line
    .byte con_offset, $09
    .text "super Twin Shot!"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $09
    .text "Perfect coordination!"
    .byte con_pause, $3C
    
    
    
    .byte con_screen_off
    .byte con_clear_all
    .byte con_clear_1
    .byte con_charlie, $FF
    .byte con_bg_2, $03
    .byte con_animation, $01, $77
    .byte con_palette, $00
    .byte con_pause, $28
    .byte con_speed, $01
    .byte con_offset, $0A
    .text "Misaki Taro"
    .byte con_line
    .byte con_line
    .byte con_offset, $06
    .text "Nankatsu High, Japan"
    .byte con_line
    .byte con_offset, $0B
    .text "Midfielder"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_window, $01
    .byte con_charlie, $04
    .byte con_bg_1, $0A
    .byte con_animation, $03, $C0, $A2, $7D
    .byte con_palette, $00
    .byte con_sound, $07
    .byte con_speed, $04
    .byte con_offset, $09
    .text "A one-hand"
    .byte con_sound, $12
    .text "ed save!"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $09
    .text "As expected from"
    .byte con_line
    .byte con_offset, $09
    .text "Wakabayashi,"
    .byte con_pause, $0F
    .text " Japan's"
    .byte con_line
    .byte con_offset, $09
    .text "own Guardian Deity!"
    .byte con_pause, $3C
    
    
    
    .byte con_screen_off
    .byte con_clear_all
    .byte con_clear_1
    .byte con_charlie, $FF
    .byte con_bg_2, $0B
    .byte con_animation, $01, $7C
    .byte con_palette, $00
    .byte con_pause, $28
    .byte con_speed, $01
    .byte con_offset, $08
    .text "Wakabayashi Genzo"
    .byte con_line
    .byte con_line
    .byte con_offset, $06
    .text "Hamburger SV, Germany"
    .byte con_line
    .byte con_offset, $0B
    .text "Goalkeeper"
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_clear_all
    .byte con_clear_1
    .byte con_charlie, $FF
    .byte con_animation, $01, $0D
    .byte con_speed, $00
    .byte con_offset, $03
    .text "Facing down our strongest"
    .byte con_line
    .byte con_offset, $03
    .text "foe, Brazil, our dream and"
    .byte con_line
    .byte con_offset, $02
    .text "goal: to be #1 in the world."
    .byte con_line
    .byte con_offset, $05
    .text "We stand as one team,"
    .byte con_line
    .byte con_offset, $03
    .text "awaiting the final battle."
    .byte con_screen_on
    .byte con_pause, $F0
    .byte con_pause, $B4
    .byte con_F4, $05
    .byte con_clear_1
    .byte con_F8, $00
    .byte con_jump
    .word _off014_A020_00_самая_первая_заставка







_off014_A2A1_01_история_цубасы:
    .byte con_E8, $01
    .byte con_bg_1, $5C
    .byte con_animation, $01, $6D
    .byte con_pause, $1E
    .byte con_screen_on
    .byte con_sound, $55
    .byte con_pause, $3C
    .byte con_speed, $03
    .byte con_offset, $09
    .text "Nothing beats"
    .byte con_line
    .byte con_offset, $08
    .text "Ozora Tsubasa's"
    .byte con_line
    .byte con_offset, $08
    .text "love of football."
    .byte con_ball
    .byte con_clear_1
    
    
    
    .byte con_offset, $07
    .text "His ultimate dream"
    .byte con_line
    .byte con_offset, $07
    .text "is to win the World"
    .byte con_line
    .byte con_offset, $09
    .text "Cup with Japan."
    .byte con_ball
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $5D
    .byte con_animation, $01, $17
    .byte con_screen_on
    .byte con_pause, $14
    .byte con_offset, $04
    .text "They conquered the world!"
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $08
    .text "Japan made it to"
    .byte con_line
    .byte con_offset, $08
    .text "the finals of the"
    .byte con_line
    .byte con_offset, $09
    .text "U-16 World Cup,"
    .byte con_ball
    .byte con_clear_1
    
    
    
    .byte con_offset, $04
    .text "where they hammered West"
    .byte con_line
    .byte con_offset, $05
    .text "Germany. "
    .byte con_pause, $3C
    .text "At last,"
    .byte con_pause, $1E
    .text " they"
    .byte con_line
    .byte con_offset, $06
    .text "were world champions!"
    .byte con_ball
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $04
    .byte con_animation, $01, $50
    .byte con_screen_on
    .byte con_pause, $1E
    .byte con_offset, $07
    .text "After this victory"
    .byte con_line
    .byte con_offset, $05
    .text "overseas,"
    .byte con_pause, $14
    .text " Tsubasa was"
    .byte con_line
    .byte con_offset, $07
    .text "reunited with his"
    .byte con_line
    .byte con_offset, $05
    .text "former coach,"
    .byte con_pause, $0F
    .text " Roberto."
    .byte con_ball
    .byte con_clear_1
    
    
    
    .byte con_offset, $09
    .text "Finally he had"
    .byte con_line
    .byte con_offset, $07
    .text "realized his dream"
    .byte con_line
    .byte con_offset, $06
    .text "of playing in Brazil!"
    .byte con_ball
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $5E
    .byte con_animation, $01, $51
    .byte con_screen_on
    .byte con_pause, $1E
    .byte con_speed, $04
    .byte con_offset, $08
    .text "3 years later"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_palette, $FF, $23, $41
    .byte con_pause, $01
    .byte con_palette, $FF, $24, $42
    .byte con_pause, $06
    .byte con_palette, $FF, $00, $17
    .byte con_pause, $3C
    .byte con_speed, $03
    .byte con_line
    .byte con_offset, $06
    .text "A new journey begins"
    .byte con_line
    .byte con_offset, $04
    .text "for Tsubasa in Sao Paulo!"
; скрытая катсцена
    .byte con_F4, $06, $00
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_sound, $01
    .byte con_pause, $3C
    .byte con_bg_1, $2D
    .byte con_animation, $01, $0B
    .byte con_screen_on
    .byte con_sound, $51
    .byte con_pause, $3C
    .byte con_F4, $05
    .byte con_speed, $00
    .byte con_offset, $06
    .text "Brazil, Sao Paulo FC"
    .byte con_F4, $04
    .byte con_pause, $F0
    .byte con_pause, $50
    .byte con_F4, $05
    .byte con_clear_1
    .byte con_F4, $04
    .byte con_pause, $F0
    .byte con_pause, $3C
    .byte con_bg_2, $12
    
    
    
    .byte con_speed, $04
    .byte con_offset, $04
    .text "@Alright,"
    .byte con_pause, $0A
    .text " everyone."
    .byte con_pause, $1E
    .text " The"
    .byte con_line
    .byte con_offset, $05
    .text "Rio Cup Youth Division"
    .byte con_line
    .byte con_offset, $05
    .text "begins tomorrow.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $05
    .text "@Flamengo's ranked #1"
    .byte con_line
    .byte con_offset, $06
    .text "in the nation,"
    .byte con_pause, $1E
    .text " so"
    .byte con_line
    .byte con_offset, $06
    .text "we'll definitely be"
    .byte con_line
    .byte con_offset, $06
    .text "seeing them there.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $3C
    .byte con_pause, $0F
    .byte con_offset, $04
    .text "@Their captain,"
    .byte con_pause, $1E
    .text " Carlos,"
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $05
    .text "has bagged a hat trick"
    .byte con_line
    .byte con_offset, $05
    .text "in every match in"
    .byte con_line
    .byte con_offset, $05
    .text "the Qualifiers.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $08
    .text "@We need to keep"
    .byte con_line
    .byte con_offset, $09
    .text "tabs on him.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_pause, $1E
    .byte con_offset, $03
    .text "@I also want you to"
    .byte con_line
    .byte con_offset, $04
    .text "examine the other teams.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $04
    .text "@Here."
    .byte con_pause, $1E
    .text " Take a look at"
    .byte con_line
    .byte con_offset, $05
    .text "their rosters,"
    .byte con_pause, $0F
    .text " skills,"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $05
    .text "and positions.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_pause, $30
    .byte con_animation, $01, $3B
    .byte con_pause, $1E
    .byte con_offset, $02
    .text "@By the way,"
    .byte con_pause, $14
    .text " we're taking on"
    .byte con_line
    .byte con_offset, $03
    .text "a new trainee manager,"
    .byte con_pause, $14
    .text " sent"
    .byte con_line
    .byte con_offset, $03
    .text "to us from the Japanese"
    .byte con_line
    .byte con_offset, $03
    .text "Football Organization.@"
    .byte con_pause, $50
    .byte con_screen_off
    .byte con_clear_1
    
    
    
    .byte con_bg_1, $13
    .byte con_bg_2, $12
    .byte con_animation, $01, $2A
    .byte con_screen_on
    .byte con_pause, $3C
    .byte con_offset, $03
    .text "@My name is Yoko Katagiri."
    .byte con_pause, $28
    .byte con_line
    .byte con_offset, $04
    .byte con_animation, $01, $2B
    .byte con_pause, $14
    .text "Good to meet you all!@"
    .byte con_sound, $62
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_animation, $01, $2A
    .byte con_pause, $1E
    .byte con_offset, $05
    .text "@Starting today,"
    .byte con_pause, $14
    .text " I'll"
    .byte con_line
    .byte con_offset, $06
    .text "be your manager for"
    .byte con_line
    .byte con_offset, $06
    .text "a while,"
    .byte con_pause, $14
    .byte con_animation, $01, $2B
    .byte con_pause, $0A
    .text " so thank you"
    .byte con_line
    .byte con_offset, $06
    .text "for your patience.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $1E
    
    
    
    .byte con_animation, $01, $2A
    .byte con_pause, $3C
    .byte con_offset, $06
    .text "@Tsubasa,"
    .byte con_pause, $14
    .text " right?"
    .byte con_pause, $28
    .byte con_animation, $01, $4E
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $28
    .byte con_toggle_mouth
    .byte con_line
    .byte con_offset, $07
    .text "My brother's told"
    .byte con_line
    .byte con_offset, $07
    .text "me a lot about you.@"
    .byte con_pause, $1E
    .byte con_animation, $01, $12
    .byte con_line
    .byte con_speed, $02
    .byte con_offset, $06
    .text "@Oh?@"
    .byte con_pause, $3C
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $2B
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_speed, $04
    .byte con_offset, $06
    .text "@Yep -"
    .byte con_pause, $1E
    .text " my brother,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $07
    .text "Munemasa,"
    .byte con_pause, $14
    .text " from the"
    .byte con_line
    .byte con_speed, $0A
    .byte con_offset, $07
    .text "JFO."
    .byte con_speed, $00
    .text " "
    .byte con_pause, $1E
    .byte con_animation, $01, $2A
    .byte con_pause, $1E
    .byte con_speed, $0C
    .text "No pressure~"
    .byte con_animation, $01, $2C
    .byte con_speed, $00
    .text "@"
    .byte con_pause, $3C
    .byte con_sound, $31
    .byte con_pause, $60
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $2B
    .byte con_F4, $05
    .byte con_pause, $3C
    .byte con_clear_1
    .byte con_offset, $08
    .text "The next step in"
    .byte con_line
    .byte con_offset, $04
    .text "Tsubasa's journey starts"
    .byte con_line
    .byte con_offset, $06
    .text "in Brazil, beginning"
    .byte con_line
    .byte con_offset, $08
    .text "with the Rio Cup."
    .byte con_F4, $04
    .byte con_pause, $78
    .byte con_pause, $F0
    .byte con_screen_off
    .byte con_clear_1
    
    
    
    .byte con_bg_1, $14
    .byte con_screen_on
    .byte con_pause, $B4
    .byte con_screen_off
    .byte con_E8, $00
    .byte con_bg_1, $15
    .byte con_animation, $02, $C7, $C6
    .byte con_sound, $45
    .byte con_screen_on
    .byte con_pause, $B4
    .byte con_animation, $01, $CB
    .byte con_palette, $00
    .byte con_F5, $06
    .byte con_sound, $30
    .byte con_pause, $3C
    .byte con_pause, $F0
    .byte con_exit





off_0x040005_скрытая_катсцена_из_01:
    .byte con_clear_1
    .byte con_E8, $01
    .byte con_palette, $FF, $24, $42
    .byte con_pause, $06
    .byte con_palette, $FF, $23, $41
    .byte con_pause, $01
    .byte con_palette, $FF, $20, $3F
    .byte con_pause, $3C
    .byte con_offset, $03
    .byte con_speed, $03
    .text "But before that,"
    .byte con_pause, $0F
    .text " let's take"
    .byte con_line
    .byte con_offset, $04
    .text "a look at Tsubasa's first"
    .byte con_line
    .byte con_offset, $07
    .text "day on the team"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $78
    .byte con_screen_off
    
    
    
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_sound, $01
    .byte con_clear_1
    .byte con_pause, $3C
    .byte con_bg_1, $2D
    .byte con_animation, $01, $0B
    .byte con_screen_on
    .byte con_sound, $51
    .byte con_pause, $3C
    .byte con_F4, $05
    .byte con_speed, $00
    .byte con_offset, $04
    .text "Brazil, 3 years earlier"
    .byte con_line
    .byte con_F4, $04
    .byte con_pause, $F0
    .byte con_pause, $50
    .byte con_F4, $05
    .byte con_clear_1
    .byte con_F4, $04
    .byte con_pause, $F0
    .byte con_pause, $3C
    .byte con_bg_2, $12
    
    
    
    .byte con_speed, $04
    .byte con_offset, $06
    .text "@Welcome to Brazil,"
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $07
    .text "Tsubasa.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $4E
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_speed, $06
    .byte con_offset, $06
    .byte con_pause, $1E
    .byte con_toggle_mouth
    .text " "
    .byte con_toggle_mouth
    .text "@Wo"
    .byte con_toggle_mouth
    .text "w"
    .byte con_speed, $08
    .text "..."
    .byte con_toggle_mouth
    .byte con_pause, $3C
    .byte con_speed, $04
    .text "I'm really"
    .byte con_line
    .byte con_offset, $08
    .text "here at last.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $3B
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $14
    .byte con_offset, $06
    .text "@That's right."
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $07
    .text "Sao Paulo FC's"
    .byte con_line
    .byte con_offset, $07
    .text "your home team now.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $3C
    .byte con_offset, $05
    .text "@I'm expecting you to"
    .byte con_line
    .byte con_offset, $06
    .text "give it your all.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $11
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $14
    .byte con_offset, $06
    .text "@Right,"
    .byte con_pause, $1E
    .text " of course.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $3B
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_offset, $07
    .text "@Given your age,"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $08
    .text "you'll be in the"
    .byte con_line
    .byte con_offset, $08
    .text "Youth Division.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $3C
    .byte con_offset, $05
    .text "@Still,"
    .byte con_pause, $14
    .text " it has a lot"
    .byte con_line
    .byte con_offset, $06
    .text "of high-"
    .byte con_pause, $08
    .text "level teams.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $06
    .text "@Flamengo FC seems"
    .byte con_line
    .byte con_offset, $07
    .text "to be our strongest"
    .byte con_line
    .byte con_offset, $07
    .text "opponents.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $11
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $14
    .byte con_offset, $06
    .text "@Flamengo FC?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $3C
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_bg_2, $10
    .byte con_pause, $14
    .byte con_offset, $06
    .text "@Yes."
    .byte con_pause, $3C
    .byte con_animation, $01, $5A
    .byte con_toggle_cam
    .byte con_palette, $8E
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $07
    .text "Carlos Santana's"
    .byte con_line
    .byte con_offset, $07
    .text "their top striker.@"
    .byte con_line
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $04
    .text "@His skills might make"
    .byte con_line
    .byte con_offset, $05
    .text "him the biggest talent"
    .byte con_line
    .byte con_offset, $05
    .text "in the entire Youth"
    .byte con_line
    .byte con_offset, $05
    .text "Division.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $03
    .text "@Besides you,"
    .byte con_pause, $0A
    .text " of course.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $05
    .text "@He's been practicing"
    .byte con_line
    .byte con_offset, $06
    .text "his new move,"
    .byte con_pause, $1E
    .text " the"
    .byte con_line
    .byte con_offset, $06
    .text "Mirage Shot,"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $05
    .text "which might just make"
    .byte con_line
    .byte con_offset, $05
    .text "him unstoppable.@"
    .byte con_pause, $78
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $13
    .byte con_bg_2, $12
    .byte con_animation, $01, $3B
    .byte con_screen_on
    .byte con_pause, $1E
    .byte con_offset, $05
    .text "@You'll face Carlos"
    .byte con_line
    .byte con_offset, $06
    .text "eventually."
    .byte con_pause, $3C
    .text " In the"
    .byte con_line
    .byte con_offset, $06
    .text "meantime,"
    .byte con_pause, $0F
    .text " I will work"
    .byte con_line
    .byte con_offset, $06
    .text "you hard in training.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $4E
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_offset, $05
    .byte con_toggle_mouth
    .text "(The Youth Division's"
    .byte con_line
    .byte con_offset, $06
    .text "biggest talent"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_animation, $01, $11
    .byte con_pause, $14
    .byte con_line
    .byte con_toggle_mouth
    .byte con_speed, $04
    .byte con_offset, $06
    .text "I want to face him"
    .byte con_line
    .byte con_offset, $06
    .text "and see for myself!)"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $3B
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $78
    .byte con_speed, $04
    .byte con_offset, $04
    .text "@Hey -"
    .byte con_pause, $14
    .text " it's time to meet"
    .byte con_line
    .byte con_offset, $05
    .text "your teammates!"
    .byte con_pause, $1E
    .text " Don't"
    .byte con_line
    .byte con_offset, $05
    .text "space out on me now.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    .byte con_animation, $01, $11
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_speed, $06
    .byte con_offset, $05
    .byte con_toggle_mouth
    .text " "
    .byte con_toggle_mouth
    .text " @A"
    .byte con_toggle_mouth
    .text "h"
    .byte con_speed, $08
    .text "...?"
    .byte con_pause, $3C
    .byte con_animation, $01, $12
    .byte con_speed, $04
    .text "_"
    .byte con_pause, $1E
    .byte con_animation, $01, $4E
    .byte con_pause, $10
    .text "Right."
    .byte con_pause, $28
    .byte con_line
    .byte con_offset, $08
    .text "Right!"
    .byte con_pause, $14
    .text " Let's go!@"
    .byte con_pause, $1E
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_pause, $3C
    .byte con_palette, $FF, $24, $42
    .byte con_pause, $06
    .byte con_palette, $FF, $23, $41
    .byte con_pause, $01
    .byte con_palette, $FF, $20, $3F
    .byte con_F4, $05
    .byte con_clear_1
    .byte con_pause, $3C
    .byte con_speed, $00
    .byte con_offset, $04
    .text "Ozora Tsubasa - Age: 15"
    .byte con_line
    .byte con_offset, $03
    .text "Three years from now, two"
    .byte con_line
    .byte con_offset, $02
    .text "@Super Strikers@ will face"
    .byte con_line
    .byte con_offset, $02
    .text "each other in the World Cup!"
    .byte con_sound, $45
    .byte con_F4, $04
    .byte con_pause, $F0
    .byte con_pause, $F0
    .byte con_screen_off
    .byte con_F4, $07






_off014_A626_02_карлос_перед_первым_матчем:
    .byte con_E8, $01
    .byte con_bg_1, $02
    .byte con_animation, $01, $15
    .byte con_pause, $3C
    .byte con_screen_on
    .byte con_sound, $53
    .byte con_pause, $3C
    .byte con_speed, $00
    .byte con_F4, $05
    .byte con_offset, $09
    .text "Carlos Santana,"
    .byte con_line
    .byte con_offset, $05
    .text "Captain of Flamengo FC"
    .byte con_F4, $04
    .byte con_pause, $B4
    .byte con_F4, $05
    .byte con_clear_1
    .byte con_F4, $04
    .byte con_pause, $3C
    
    
    
    .byte con_speed, $04
    .byte con_offset, $04
    .text "(The rumors say someone"
    .byte con_line
    .byte con_offset, $05
    .text "remarkable has joined"
    .byte con_line
    .byte con_offset, $05
    .text "Sao Paulo.)"
    .byte con_line
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $04
    .text "(I guess we'll see how"
    .byte con_line
    .byte con_offset, $05
    .text "good you really are"
    .byte con_speed, $08
    .text "...)"
    .byte con_line
    .byte con_pause, $50
    .byte con_screen_off
    .byte con_clear_1
    
    
    
    .byte con_bg_1, $19
    .byte con_animation, $01, $14
    .byte con_sound, $69
    .byte con_screen_on
    .byte con_F5, $04
    .byte con_pause, $0F
    .byte con_speed, $01
    .byte con_offset, $04
    .text "@...O-"
    .byte con_pause, $14
    .text "zo-"
    .byte con_pause, $14
    .text "ra! "
    .byte con_pause, $28
    .text "Tsu-"
    .byte con_pause, $14
    .text "ba-"
    .byte con_pause, $14
    .text "sa!!@"
    .byte con_pause, $28
    .byte con_line
    .byte con_offset, $04
    .text "@...O-"
    .byte con_pause, $14
    .text "zo-"
    .byte con_pause, $14
    .text "ra! "
    .byte con_pause, $28
    .text "Tsu-"
    .byte con_pause, $14
    .text "ba-"
    .byte con_sound, $31
    .byte con_pause, $14
    .text "sa!!@"
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit





_off014_A6B4_03_карлос_после_первого_матча:
    .byte con_E8, $01
    .byte con_bg_1, $02
    .byte con_animation, $01, $15
    .byte con_pause, $3C
    .byte con_screen_on
    .byte con_sound, $5A
    .byte con_pause, $50
    .byte con_offset, $06
    .text "(So,"
    .byte con_pause, $3C
    .text " the rumor"
    .byte con_line
    .byte con_offset, $07
    .text "really was true"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $50
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit






_off014_A6DC_04_цубаса_и_меон:
    .byte con_E8, $01
    .byte con_bg_1, $02
    .byte con_animation, $01, $38
    .byte con_pause, $3C
    .byte con_screen_on
    .byte con_sound, $57
    .byte con_pause, $50
    .byte con_toggle_mouth
    .byte con_offset, $07
    .text "(Let's just see"
    .byte con_line
    .byte con_offset, $08
    .text "how good you are,"
    .byte con_pause, $1E
    .byte con_line
    .byte con_speed, $05
    .byte con_offset, $08
    .text "Ozora Tsubasa"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $D0
    
    
    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $1B
    .byte con_screen_on
    .byte con_sound, $46
    .byte con_pause, $3C
    .byte con_speed, $03
    .byte con_offset, $06
    .text "Tsubasa and the rest"
    .byte con_line
    .byte con_offset, $04
    .text "of the team are training"
    .byte con_line
    .byte con_offset, $07
    .text "to face Gremio the"
    .byte con_line
    .byte con_offset, $08
    .text "following day"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $F0
    
    
    
    .byte con_screen_off
    .byte con_pause, $1E
    .byte con_clear_1
    .byte con_bg_2, $12
    .byte con_animation, $01, $07
    .byte con_toggle_cam
    .byte con_palette, $FF, $00, $17
    .byte con_speed, $02
    .byte con_offset, $05
    .byte con_pause, $0A
    .text "@You!"
    .byte con_pause, $1E
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $06
    .text "You're Tsubasa,"
    .byte con_pause, $04
    .text " huh?@"
    .byte con_pause, $50
    
    
    
    .byte con_clear_1
    .byte con_bg_2, $58
    .byte con_animation, $01, $43
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_bg_1, $1C
    .byte con_F8, $05
    .byte con_pause, $0A
    .byte con_F8, $06
    .byte con_pause, $0A
    .byte con_speed, $03
    .byte con_offset, $06
    .text "@Who's asking?@"
    .byte con_pause, $3C
    
    
    
    .byte con_clear_1
    .byte con_pause, $1E
    .byte con_bg_2, $3D
    .byte con_animation, $01, $38
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_bg_2, $12
    .byte con_pause, $14
    .byte con_speed, $04
    .byte con_offset, $05
    .text "@Name's Claudio Meon,"
    .byte con_pause, $0F
    .byte con_line
    .byte con_offset, $06
    .text "Gremio's goalkeeper."
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $06
    .text "I watched you play"
    .byte con_line
    .byte con_offset, $06
    .text "yesterday.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_offset, $04
    .text "@How about a test before"
    .byte con_line
    .byte con_offset, $05
    .text "tomorrow's match?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $11
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_offset, $06
    .text "@What for?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $38
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_offset, $02
    .text "@Well"
    .byte con_speed, $08
    .byte con_toggle_mouth
    .text "..."
    .byte con_toggle_mouth
    .byte con_pause, $3C
    .byte con_speed, $04
    .text "you just might end"
    .byte con_line
    .byte con_offset, $03
    .text "up suprised"
    .byte con_speed, $08
    .byte con_toggle_mouth
    .text "..."
    .byte con_toggle_mouth
    .byte con_pause, $3C
    .byte con_speed, $06
    .text "captain.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $11
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $78
    .byte con_speed, $02
    .byte con_offset, $05
    .text "@OK,"
    .byte con_pause, $0F
    .byte con_speed, $04
    .text " Meon."
    .byte con_pause, $14
    .text " I'll take"
    .byte con_line
    .byte con_offset, $06
    .text "your challenge on!@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $38
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $1E
    .byte con_offset, $04
    .text "@That's why you're the"
    .byte con_line
    .byte con_offset, $05
    .text "captain,"
    .byte con_pause, $0F
    .text " right?"
    .byte con_pause, $1E
    .text " C'mon!@"
    .byte con_pause, $50
    .byte con_screen_off
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_bg_1, $1E
    .byte con_animation, $01, $8C
    .byte con_screen_on
    .byte con_pause, $1E
    .byte con_speed, $03
    .byte con_offset, $05
    .text "@Take your best shot!@"
    .byte con_pause, $50
    .byte con_screen_off
    .byte con_clear_1
    
    
    
    .byte con_bg_1, $67
    .byte con_animation, $03, $70, $71, $9A
    .byte con_sound, $6B
    .byte con_screen_on
    .byte con_pause, $50
    .byte con_offset, $07
    .text "@Eat this,"
    .byte con_pause, $06
    .text " Meon!@"
    .byte con_pause, $1E
    .byte con_clear_1
    
    
    
    .byte con_bg_2, $21
    .byte con_animation, $02, $73, $74
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_F5, $03
    .byte con_sound, $0E
    .byte con_pause, $28
    .byte con_F5, $FF
    .byte con_bg_2, $1F
    .byte con_animation, $01, $01
    .byte con_toggle_cam
    .byte con_palette, $FF, $00, $12
    .byte con_sound, $03
    .byte con_bg_2, $20
    .byte con_toggle_cam
    .byte con_sound, $04
    .byte con_pause, $35
    .byte con_toggle_cam
    .byte con_sound, $05
    .byte con_bg_2, $56
    .byte con_animation, $03, $C0, $A6, $7F
    .byte con_toggle_cam
    .byte con_sound, $03
    .byte con_pause, $1C
    .byte con_sound, $03
    .byte con_pause, $1C
    .byte con_sound, $03
    .byte con_pause, $1C
    .byte con_sound, $2A
    .byte con_pause, $28
    .byte con_bg_2, $23
    .byte con_animation, $01, $AE
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_sound, $52
    .byte con_F5, $08
    .byte con_speed, $01
    .byte con_offset, $06
    ; дополнительные пробелы, иначе сбивается тайминг мерцания цвета и серого экрана
    .text "@What the_?!@  "
    .byte con_palette, $2E
    .byte con_pause, $F0
    .byte con_pause, $3C
    
    
    
    .byte con_clear_1
    .byte con_bg_2, $24
    .byte con_animation, $01, $37
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_sound, $49
    .byte con_pause, $78
    .byte con_speed, $04
    .byte con_offset, $05
    .text "@Your Drive Shot won't"
    .byte con_line
    .byte con_offset, $06
    .text "get past me,"
    .byte con_pause, $1E
    .text " Tsubasa."
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $06
    .text "I'm looking forward"
    .byte con_line
    .byte con_offset, $06
    .text "to tomorrow's match.@"
    .byte con_pause, $78
    
    

    
    .byte con_screen_off
    .byte con_clear_1
    .byte con_bg_1, $22
    .byte con_animation, $01, $AF
    .byte con_screen_on
    .byte con_pause, $F0
    .byte con_speed, $06
    .byte con_offset, $06
    .text "@The Drive Shot"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_line
    .byte con_speed, $06
    .byte con_offset, $07
    .text "won't work?!@"
    .byte con_sound, $57
    .byte con_pause, $F0
    .byte con_pause, $F0
    .byte con_screen_off
    .byte con_exit






_off014_A968_05_карлос_и_коимбра:
    .byte con_E8, $01
    .byte con_bg_1, $55
    .byte con_animation, $01, $63 
    .byte con_pause, $3C
    .byte con_screen_on
    .byte con_sound, $54
    .byte con_pause, $3C
    .byte con_offset, $05
    .text "@I guess we'll be"
    .byte con_line
    .byte con_offset, $06
    .text "seeing each other in"
    .byte con_line
    .byte con_offset, $06
    .text "the finals,"
    .byte con_pause, $14
    .text " Tsubasa.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $50
    
    
    
    .byte con_toggle_mouth
    .byte con_speed, $03
    .byte con_offset, $04
    .text "@You'd better start"
    .byte con_line
    .byte con_offset, $05
    .text "taking this seriously!@"
    .byte con_pause, $1E
    .byte con_animation, $01, $64
    .byte con_line
    .byte con_speed, $02
    .byte con_offset, $04
    .text "@Huh?@"
    .byte con_pause, $1E
    .byte con_bg_2, $25
    .byte con_clear_1
    .byte con_pause, $50
    .byte con_F8, $0F
    .byte con_pause, $3C
    .byte con_sound, $15
    .byte con_F4, $03
    .byte con_animation, $01, $45
    .byte con_pause, $14
    .byte con_F4, $01
    .byte con_pause, $50
    .byte con_speed, $04
    .byte con_offset, $03
    .text "@Meon thought the Drive"
    .byte con_line
    .byte con_offset, $04
    .text "Shot was all Tsubasa had."
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $04
    .text "See where that got him?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_bg_2, $4A
    .byte con_animation, $01, $61
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_bg_2, $49
    .byte con_pause, $3C
    .byte con_offset, $05
    .text "@What's your point?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $60
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_offset, $03
    .text "@Listen up,"
    .byte con_pause, $1E
    .text " Carlos."
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $04
    .text "Flamengo's good,"
    .byte con_pause, $3C
    .text " but"
    .byte con_line
    .byte con_offset, $04
    .text "taking the Rio Cup might"
    .byte con_line
    .byte con_offset, $04
    .text "be out of your reach.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    
    
    
    .byte con_animation, $01, $61
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_offset, $06
    .text "@And how's that?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $60
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_offset, $05
    .text "@That Ozora Tsubasa"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "..."
    .byte con_toggle_mouth
    .byte con_pause, $50
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $06
    .text "he's got even more"
    .byte con_line
    .byte con_offset, $06
    .text "potential than he"
    .byte con_line
    .byte con_offset, $06
    .text "realizes.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_offset, $04
    .text "@If he actually becomes"
    .byte con_line
    .byte con_offset, $05
    .text "a @Super Striker@,"
    .byte con_pause, $1E
    .text " you"
    .byte con_line
    .byte con_offset, $05
    .text "don't stand a chance.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $61
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_speed, $06
    .byte con_offset, $06
    .text "@A @Super Striker@?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $60
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_speed, $04
    .byte con_offset, $04
    .text "@If you want to stand"
    .byte con_line
    .byte con_offset, $05
    .text "up to him,"
    .byte con_pause, $3C
    .text " you'd"
    .byte con_line
    .byte con_offset, $05
    .text "better train like your"
    .byte con_line
    .byte con_offset, $05
    .text "life depended on it"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "...@"
    .byte con_pause, $78
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    .byte con_sound, $16
    .byte con_F4, $03
    .byte con_F4, $05
    .byte con_pause, $78
    .byte con_bg_2, $54
    .byte con_animation, $01, $05
    .byte con_F4, $01
    .byte con_sound, $46 
    .byte con_F4, $04
    .byte con_pause, $F0
    .byte con_pause, $F0
    .byte con_speed, $06
    .byte con_offset, $05
    .text "(This guy"
    .byte con_speed, $08
    .text "..."
    .byte con_pause, $3C
    .byte con_speed, $04
    .text "What"
    .byte con_line
    .byte con_offset, $06
    .text "gives him the right"
    .byte con_line
    .byte con_offset, $06
    .text "to act like he knows"
    .byte con_line
    .byte con_offset, $06
    .text "it all"
    .byte con_speed, $08
    .text "...)"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $3C
    
    
    
    
    .byte con_speed, $08
    .byte con_offset, $06
    .text "(..."
    .byte con_pause, $0A
    .byte con_speed, $04
    .text "and what the"
    .byte con_line
    .byte con_offset, $07
    .text "hell even is a"
    .byte con_pause, $14
    .byte con_line
    .byte con_speed, $05
    .byte con_offset, $07
    .text "@Super Striker@?)"
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit






_off014_AB61_06_роберто_говорит_о_джаиро:
    .byte con_E8, $01
    .byte con_bg_1, $26
    .byte con_bg_2, $27
    .byte con_animation, $01, $3B
    .byte con_pause, $78
    .byte con_screen_on
    .byte con_F5, $0E
    .byte con_sound, $47
    .byte con_pause, $50
    .byte con_offset, $04
    .text "@Tomorrow's the big day.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $4E
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_offset, $05
    .text "@Yeah"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "..."
    .byte con_toggle_mouth
    .byte con_pause, $3C
    .byte con_speed, $04
    .text "the final"
    .byte con_line
    .byte con_offset, $06
    .text "against Flamengo."
    .byte con_pause, $3C
    .byte con_line
    .byte con_offset, $06
    .text "It'll be me and"
    .byte con_line
    .byte con_offset, $06
    .text "Carlos,"
    .byte con_pause, $14
    .text " face-"
    .byte con_pause, $08
    .text "to-"
    .byte con_pause, $08
    .text "face.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $3B
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_animation, $01, $3C
    .byte con_pause, $0A
    .byte con_speed, $04
    .byte con_offset, $07
    .text "@Listen,"
    .byte con_pause, $1E
    .text " Tsubasa"
    .byte con_toggle_mouth
    .byte con_speed, $08
    .text "..."
    .byte con_toggle_mouth
    .byte con_pause, $3C
    .byte con_line
    .byte con_speed, $04
    .byte con_offset, $08
    .text "Carlos is really,"
    .byte con_pause, $1E
    .byte con_line
    .byte con_offset, $08
    .text "really good.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $07
    .text "@Much better than"
    .byte con_line
    .byte con_offset, $08
    .text "I anticipated.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $06
    .text "@He's even being"
    .byte con_line
    .byte con_offset, $07
    .text "called"
    .byte con_pause, $14
    .text " @The Second"
    .byte con_line
    .byte con_offset, $07
    .text "Coming of Jairo@.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $11
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_offset, $05
    .text "@I've never heard"
    .byte con_line
    .byte con_offset, $06
    .text "of Jairo before."
    .byte con_pause, $3C
    .byte con_animation, $01, $4E
    .byte con_pause, $0A
    .byte con_line
    .byte con_offset, $06
    .text "Who was he,"
    .byte con_pause, $0A
    .text " Roberto?@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $3B
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $3C
    .byte con_offset, $03
    .text "@Well,"
    .byte con_pause, $1E
    .text " if you'd grown up"
    .byte con_line
    .byte con_offset, $04
    .text "around here,"
    .byte con_pause, $14
    .text " you'd know.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $05
    .text "@Jairo was one of the"
    .byte con_line
    .byte con_offset, $06
    .text "greats in Brazilian"
    .byte con_line
    .byte con_offset, $06
    .text "football,"
    .byte con_pause, $1E
    .text " even before"
    .byte con_line
    .byte con_offset, $06
    .text "Pele's time"
    .byte con_toggle_mouth
    .byte con_speed, $04
    .text "...@"
    .byte con_ball
    .byte con_screen_off
    .byte con_clear_1
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_clear_1
    
    
    
    .byte con_sound, $69
    .byte con_pause, $3C
    .byte con_sound, $3E
    .byte con_bg_1, $01
    .byte con_animation, $01, $A1
    .byte con_F8, $0A
    .byte con_screen_on
    .byte con_F5, $00
    .byte con_pause, $50
    .byte con_offset, $05
    .text "@See,"
    .byte con_pause, $0F
    .text " his headers were"
    .byte con_line
    .byte con_offset, $06
    .text "weak,"
    .byte con_pause, $14
    .text " but he didn't"
    .byte con_line
    .byte con_offset, $06
    .text "let that stop him.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $03
    .text "@You wouldn't have"
    .byte con_line
    .byte con_offset, $04
    .text "thought it,"
    .byte con_pause, $0F
    .text " but the"
    .byte con_line
    .byte con_offset, $04
    .text "man had - "
    .byte con_pause, $14
    .text "unofficially -"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $06
    .text "a record of scoring"
    .byte con_line
    .byte con_offset, $06
    .text "around 1,000 goals"
    .byte con_line
    .byte con_offset, $06
    .text "during his career.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    .byte con_screen_off
    
    
    
; потребовалось заменить байт в 0x014427
; с E5 на E9 для таймера замаха джаиро
    .byte con_E8, $01
    .byte con_bg_1, $68
    .byte con_animation, $03, $9E, $93, $A5
    .byte con_sound, $6B
    .byte con_screen_on
    .byte con_palette, $94
    .byte con_offset, $05
    .text "@The reason for this"
    .byte con_line
    .byte con_offset, $06
    .text "was that he developed"
    .byte con_line
    .byte con_offset, $06
    .text "this miracle shooting"
    .byte con_line
    .byte con_offset, $06
    .text "technique,"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $09
    .text "which he named"
    .byte con_pause, $1E
    .byte con_line
    .byte con_speed, $06
    .byte con_offset, $09
    .text "the @Cyclone@.@"
    .byte con_pause, $30
    .byte con_clear_1
    
    
    
    .byte con_sound, $02
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
    .byte con_bg_2, $09
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_F5, $07
    .byte con_sound, $04
    .byte con_pause, $14
    .byte con_sound, $06
    .byte con_pause, $14
    .byte con_sound, $24
    .byte con_pause, $28
    .byte con_F5, $FF
    .byte con_palette, $FF, $25, $43
    .byte con_bg_2, $56
    .byte con_animation, $03, $C0, $A0, $80
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_sound, $24
    .byte con_bg_2, $39
    .byte con_animation, $01, $86
    .byte con_toggle_cam
    .byte con_palette, $FF, $21, $35
    .byte con_sound, $61
    .byte con_pause, $F0
    .byte con_screen_off
    
    
    
    .byte con_pause, $78
    .byte con_bg_1, $26
    .byte con_bg_2, $27
    .byte con_animation, $01, $3B
    .byte con_screen_on
    .byte con_F5, $0E
    .byte con_sound, $47
    .byte con_pause, $78
    .byte con_speed, $04
    .byte con_offset, $04
    .text "@It was so wild,"
    .byte con_pause, $3C
    .text " no"
    .byte con_line
    .byte con_offset, $05
    .text "keeper could stop it.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $03
    .text "@He's been an inspiration"
    .byte con_line
    .byte con_offset, $04
    .text "to a lot of aspiring"
    .byte con_line
    .byte con_offset, $04
    .text "footballers around here.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $05
    .text "@The Cyclone is one"
    .byte con_line
    .byte con_offset, $06
    .text "technique nobody"
    .byte con_line
    .byte con_offset, $06
    .text "has ever replicated.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_offset, $04
    .text "@It's only added to the"
    .byte con_line
    .byte con_offset, $05
    .text "man's legend of being"
    .byte con_line
    .byte con_offset, $05
    .text "a Super Striker"
    .byte con_toggle_mouth
    .byte con_speed, $06
    .text "...@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $50
    
    
    
    .byte con_animation, $01, $3C
    .byte con_pause, $0A
    .byte con_speed, $04
    .byte con_offset, $03
    .text "@Enough history."
    .byte con_pause, $1E
    .text " Tsubasa,"
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $04
    .text "you say you want to be a"
    .byte con_line
    .byte con_offset, $04
    .text "pro."
    .byte con_pause, $14
    .text " Prove it to me by"
    .byte con_line
    .byte con_offset, $04
    .text "winning tomorrow's final.@"
    .byte con_pause, $50
    .byte con_clear_1
    .byte con_pause, $0A
    
    
    
    .byte con_animation, $01, $4E
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_pause, $14
    .byte con_offset, $05
    .text "@Yeah,"
    .byte con_pause, $0A
    .text " I'll make sure"
    .byte con_line
    .byte con_offset, $06
    .text "we win tomorrow."
    .byte con_pause, $14
    .byte con_line
    .byte con_offset, $06
    .text "Just you watch!@"
    .byte con_pause, $50
    .byte con_sound, $31
    .byte con_pause, $78
    .byte con_screen_off
    .byte con_exit



.out .sprintf("Free bytes in bank 1F: 0x%04X [%d]", ($C000 - *), ($C000 - *))