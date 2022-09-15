.segment "BANK_05"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000
; данные катсцен (тренер и мелкие диалоги)
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

; для замены
; .byte $D9 - .byte con_pause, $0A
; .byte $DA - .byte con_pause, $14
; .byte $DB - .byte con_pause, $28
; .byte $DC - .byte con_pause, $3C
; .byte $DD - .byte con_pause, $50
; .byte $DE - .byte con_pause, $78
; .byte $DF - .byte con_pause, $F0
; удалять .byte $E0-E7 - для старого смещения текста



    .word off_BFD0_47_обезьянка_после_проигрыша
    .word off_BFD1_48_экран_с_музыкой
    .word off_BFD2_49_перерыв_йоко_меню
    .word off_BFD3_4A_перерыв_йоко_ничья
    .word off_BFD4_4B_перерыв_йоко_выигрыш
    .word off_BFD5_4C_перерыв_йоко_проигрыш
    .word off_BFD6_4D_перерыв_санае_меню
    .word off_BFD7_4E_перерыв_санае_ничья
    .word off_BFD8_4F_перерыв_санае_выигрыш
    .word off_BFD9_50_перерыв_санае_проигрыш
    .word off_BFDA_51_перерыв_ишизаки_меню
    .word off_BFDB_52_перерыв_ишизаки_ничья
    .word off_BFDC_53_перерыв_ишизаки_выигрыш
    .word off_BFDD_54_перерыв_ишизаки_проигрыш
    .word off_BF54_55_пароль_йоко
    .word off_BF7D_56_удачи_после_пароля_йоко
    .word off_BF5A_57_пароль_санае
    .word off_BF7D_58_удачи_после_пароля_санае
    .word off_BF60_59_пароль_ишизаки
    .word off_BF7D_5A_удачи_после_пароля_ишизаки
    .word off_BF90_5B_новый_уровень_йоко
    .word off_BF96_5C_новый_уровень_санае
    .word off_BF9C_5D_новый_уровень_ишизаки
    .word off_BFBA_5E_перед_матчем_сан_паулу
    .word off_BFC4_5F_перед_матчем_нанкацу
    .word off_BFCE_60_перед_матчем_япония



off_BFD0_47_обезьянка_после_проигрыша:
    .byte con_E8, $00
    .byte con_bg_1, $16
    .byte con_animation, $02, $BA, $BB
    .byte con_palette, $00
    .byte con_sound, $56
    .byte con_pause, $A0
    .byte con_exit



off_BFD1_48_экран_с_музыкой:
    .byte con_E8, $00
    .byte con_bg_1, $18
    .byte con_animation, $02, $BC, $CA
    .byte con_palette, $00
    .byte con_F5, $0B
    .byte con_exit



off_BFD2_49_перерыв_йоко_меню:
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_animation, $01, $2A
off_BFD2_йоко_меню:
    .byte con_E8, $01
    .byte con_speed, $00
    .byte con_offset, $06
    .text "@What do you need?@", con_line
    .byte con_offset, $29
    .text "Manage our Team", con_line
    .byte con_offset, $29
    .text "All set!"
    .byte con_palette, $00
    .byte con_exit



off_BFD3_4A_перерыв_йоко_ничья:
    .byte con_animation, $01, $2A
    .byte con_E8, $01
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_screen_on
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $07
    .text "@We're dead even...", con_line
    .byte con_pause, $1E
    .byte con_offset, $08
    .text "Let's push ahead", con_line
    .byte con_offset, $08
    .text "and clear the", con_line
    .byte con_offset, $08
    .text "gap for good!@"
    .byte con_ball
    .byte con_clear_3
    .byte con_jump
    .word off_BFD2_йоко_меню



off_BFD4_4B_перерыв_йоко_выигрыш:
    .byte con_animation, $01, $2A
    .byte con_E8, $01
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_screen_on
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $08
    .text "@Let's keep up", con_line
    .byte con_offset, $09
    .text "the pace, just", con_line
    .byte con_offset, $09
    .text "like that!@"
    .byte con_ball
    .byte con_clear_3
    .byte con_jump
    .word off_BFD2_йоко_меню



off_BFD5_4C_перерыв_йоко_проигрыш:
    .byte con_animation, $01, $2A
    .byte con_E8, $01
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_screen_on
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $04
    .text "@We need to turn this", con_line
    .byte con_offset, $05
    .text "around,"
    .byte con_pause, $14
    .text " NOW."
    .byte con_pause, $1E
    .text " Should we", con_line
    .byte con_offset, $05
    .text "re-think our strategy?@"
    .byte con_ball
    .byte con_clear_3
    .byte con_jump
    .word off_BFD2_йоко_меню



off_BFD6_4D_перерыв_санае_меню:
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_animation, $01, $26
off_BFD6_санае_меню:
    .byte con_E8, $01
    .byte con_speed, $00
    .byte con_offset, $05
    .text "@Need to fix anything?@", con_line
    .byte con_offset, $29
    .text "Manage our Team", con_line
    .byte con_offset, $29
    .text "Let's get 'em!"
    .byte con_palette, $00
    .byte con_exit



off_BFD7_4E_перерыв_санае_ничья:
    .byte con_animation, $01, $26
    .byte con_E8, $01
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_screen_on
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $06
    .text "@You guys will break", con_line
    .byte con_offset, $07
    .text "this tie in the", con_line
    .byte con_offset, $07
    .text "next half, right?!", con_line
    .byte con_pause, $1E
    .byte con_offset, $04
    .text "Nan-"
    .byte con_pause, $0F
    .text "kat-"
    .byte con_pause, $0F
    .text "su!"
    .byte con_pause, $1E
    .text " Nan-"
    .byte con_pause, $0F
    .text "kat-"
    .byte con_pause, $0F
    .text "su!@"
    .byte con_ball
    .byte con_clear_3
    .byte con_jump
    .word off_BFD6_санае_меню



off_BFD8_4F_перерыв_санае_выигрыш:
    .byte con_animation, $01, $26
    .byte con_E8, $01
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_screen_on
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $05
    .text "@You're all doing", con_line
    .byte con_offset, $06
    .text "great so far!", con_line
    .byte con_pause, $1E
    .byte con_offset, $06
    .text "Hooray for Nankatsu!@"
    .byte con_ball
    .byte con_clear_3
    .byte con_jump
    .word off_BFD6_санае_меню



off_BFD9_50_перерыв_санае_проигрыш:
    .byte con_animation, $01, $26
    .byte con_E8, $01
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_screen_on
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $05
    .text "@Why are we losing?!", con_line
    .byte con_pause, $1E
    .byte con_offset, $06
    .text "Do you think Tsubasa", con_line
    .byte con_offset, $06
    .text "would be happy", con_line
    .byte con_offset, $06
    .text "with this?!@"
    .byte con_ball
    .byte con_clear_3
    .byte con_jump
    .word off_BFD6_санае_меню



off_BFDA_51_перерыв_ишизаки_меню:
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_animation, $01, $24
off_BFDA_ишизаки_меню:
    .byte con_E8, $01
    .byte con_speed, $00
    .byte con_offset, $06
    .text "@How's our lineup?@", con_line
    .byte con_offset, $29
    .text "Manage our Team", con_line
    .byte con_offset, $29
    .text "Let's hit the field!"
    .byte con_palette, $00
    .byte con_exit



off_BFDB_52_перерыв_ишизаки_ничья:
    .byte con_animation, $01, $44
    .byte con_E8, $01
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_screen_on
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $03
    .text "@Ok, we're tied up -"
    .byte con_pause, $1E
    .text " but", con_line
    .byte con_offset, $04
    .text "we've got a full 'nother", con_line
    .byte con_offset, $04
    .text "half to take the win!", con_line
    .byte con_pause, $1E
    .byte con_offset, $04
    .text "We got this!@"
    .byte con_ball
    .byte con_clear_3
    .byte con_jump
    .word off_BFDA_ишизаки_меню



off_BFDC_53_перерыв_ишизаки_выигрыш:
    .byte con_animation, $01, $44
    .byte con_E8, $01
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_screen_on
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $03
    .text "@...oh, it's my line now?", con_line
    .byte con_pause, $1E
    .byte con_offset, $2B
    .text "Go, Japan!", con_line
    .byte con_pause, $1E
    .byte con_offset, $26
    .text "Let's keep winning!@"
    .byte con_ball
    .byte con_clear_3
    .byte con_jump
    .word off_BFDA_ишизаки_меню



off_BFDD_54_перерыв_ишизаки_проигрыш:
    .byte con_animation, $01, $44
    .byte con_E8, $01
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_screen_on
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $04
    .text "@Guys..."
    .byte con_pause, $14
    .text "we gotta make", con_line
    .byte con_offset, $05
    .text "the World Cup,"
    .byte con_pause, $1E
    .text " and to", con_line
    .byte con_offset, $05
    .text "do that, we gotta win!@"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_offset, $08
    .text "@I'll go at them", con_line
    .byte con_offset, $09
    .text "face-first if I", con_line
    .byte con_offset, $09
    .text "have to!@"
    .byte con_ball
    .byte con_clear_3
    .byte con_jump
    .word off_BFDA_ишизаки_меню



off_BF54_55_пароль_йоко:
    .byte con_animation, $01, $2B
    .byte con_bg_1, $5F
    .byte con_window, $04
    .byte con_palette, $00
    .byte con_speed, $02
    .byte con_offset, $08
    .byte con_toggle_mouth
    .text "@Here's today's", con_line
    .byte con_offset, $0A
    .text "score memo.@"
    .byte con_pause, $1E
    .byte con_clear_3
    .byte con_exit



off_BF7D_56_удачи_после_пароля_йоко:
    .byte con_speed, $02
    .byte con_offset, $05
    .text "@Good luck out there.@"
    .byte con_pause, $14
    .byte con_exit



off_BF5A_57_пароль_санае:
    .byte con_animation, $01, $27
    .byte con_bg_1, $5F
    .byte con_window, $04
    .byte con_palette, $00
    .byte con_speed, $02
    .byte con_offset, $04
    .byte con_toggle_mouth
    .text "@I've prepared the score", con_line
    .byte con_offset, $08
    .text "memo, everyone.@"
    .byte con_pause, $1E
    .byte con_clear_3
    .byte con_exit



off_BF7D_58_удачи_после_пароля_санае:
    .byte con_speed, $02
    .byte con_offset, $09
    .text "@Do your best", con_line
    .byte con_offset, $0B
    .text "out there.@", con_line
    .byte con_pause, $14
    .byte con_exit



off_BF60_59_пароль_ишизаки:
    .byte con_animation, $01, $44
    .byte con_bg_1, $5F
    .byte con_window, $04
    .byte con_palette, $00
    .byte con_speed, $02
    .byte con_offset, $07
    .byte con_toggle_mouth
    .text "@Here's our score", con_line
    .byte con_offset, $0A
    .text "memo, guys.@"
    .byte con_pause, $1E
    .byte con_clear_3
    .byte con_exit



off_BF7D_5A_удачи_после_пароля_ишизаки:
    .byte con_speed, $02
    .byte con_offset, $07
    .text "@Let's keep it up!@"
    .byte con_pause, $14
    .byte con_exit



off_BF90_5B_новый_уровень_йоко:
    .byte con_animation, $01, $2B
    .byte con_E8, $01
    .byte con_bg_1, $5F
    .byte con_window, $04
    .byte con_palette, $00
    .byte con_sound, $6F
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $08
    .text "@I could really", con_line
    .byte con_offset, $08
    .text "see you improving", con_line
    .byte con_offset, $0B
    .text "out there!@"
    .byte con_ball
    .byte con_clear_3
    .byte con_exit



off_BF96_5C_новый_уровень_санае:
    .byte con_animation, $01, $27
    .byte con_E8, $01
    .byte con_bg_1, $5F
    .byte con_window, $04
    .byte con_palette, $00
    .byte con_sound, $6F
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $07
    .text "@Great job!"
    .byte con_pause, $1E
    .text " We'll", con_line
    .byte con_offset, $06
    .text "win the Championship", con_line
    .byte con_offset, $09
    .text "at this rate!@"
    .byte con_ball
    .byte con_clear_3
    .byte con_exit



off_BF9C_5D_новый_уровень_ишизаки:
    .byte con_animation, $01, $44
    .byte con_E8, $01
    .byte con_bg_1, $5F
    .byte con_window, $04
    .byte con_palette, $00
    .byte con_sound, $6F
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $0A
    .text "@We're good,", con_line
    .byte con_pause, $14
    .byte con_offset, $09
    .text "and we're only", con_line
    .byte con_offset, $09
    .text "getting better!@"
    .byte con_ball
    .byte con_clear_3
    .byte con_exit



off_BFBA_5E_перед_матчем_сан_паулу:
    .byte con_window, $02
    .byte con_bg_2, $0F
    .byte con_animation, $01, $0C
    .byte con_sound, $31
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_speed, $02
    .byte con_offset, $08
    .text "@For Sao Paulo!@", con_line
    .byte con_pause, $14
    .byte con_offset, $07
    .text "@NON DUCOR, DUCO!@"
    .byte con_pause, $1E
    .byte con_sound, $01
    .byte con_screen_off
    .byte con_exit



off_BFC4_5F_перед_матчем_нанкацу:
    .byte con_window, $02
    .byte con_bg_2, $0E
    .byte con_animation, $01, $0F
    .byte con_sound, $31
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_speed, $02
    .byte con_offset, $03
    .text "@Let's do Nankatsu proud!@", con_line
    .byte con_pause, $14
    .byte con_offset, $0C
    .text "@YEAH!!@"
    .byte con_pause, $1E
    .byte con_sound, $01
    .byte con_screen_off
    .byte con_exit



off_BFCE_60_перед_матчем_япония:
    .byte con_window, $02
    .byte con_bg_2, $0D
    .byte con_animation, $01, $0E
    .byte con_sound, $31
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_speed, $02
    .byte con_offset, $07
    .text "@Japan's counting", con_line
    .byte con_offset, $0A
    .text "on us, guys!@", con_line
    .byte con_pause, $14
    .byte con_offset, $0B
    .text "@BANZAI!!@"
    .byte con_pause, $1E
    .byte con_sound, $01
    .byte con_screen_off
    .byte con_exit
