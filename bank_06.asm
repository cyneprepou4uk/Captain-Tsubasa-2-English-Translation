.segment "BANK_06"
.include "copy_bank_ram.inc"
; данные катсцен (тренер и мелкие диалоги)
; поинтеры в 0x000485



con_clear_3                 = $E5   ; для окна совета тренера, не стирает первые 2 тайла слева
con_clear_2                 = $E6   ; для окна диалога комментатора, не стирает первые 8 тайлов слева
con_offset                  = $E7   ; + количество тайлов для смещения вправо
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



    .word off_BEDB_47_первый_перерыв_йоко
    .word off_BEE1_48_перерыв_йоко
    .word off_BEEB_49_первый_перерыв_санае
    .word off_BEF1_4A_перерыв_санае
    .word off_BEFB_4B_первый_перерыв_ишизаки
    .word off_BF2A_4C_перерыв_ишизаки
    .word off_BF54_4D_пароль_йоко
    .word off_BF7D_4E_удачи_после_пароля_йоко
    .word off_BF5A_4F_пароль_санае
    .word off_BF7D_50_удачи_после_пароля_санае
    .word off_BF60_51_пароль_ишизаки
    .word off_BF7D_52_удачи_после_пароля_ишизаки
    .word off_BF90_53_новый_уровень_йоко
    .word off_BF96_54_новый_уровень_санае
    .word off_BF9C_55_новый_уровень_ишизаки
    .word off_BFBA_56_сан_паулу_перед_матчем
    .word off_BFC4_57_нанкацу_перед_матчем
    .word off_BFCE_58_япония_перед_матчем
    .word off_BFD0_59_обезьянка_после_проигрыша
    .word off_BFD1_5A_экран_с_музыкой



off_BEDB_47_первый_перерыв_йоко:
    .byte con_animation, $01, $2A
    .byte con_jump
    .word off_BEFE



off_BEE1_48_перерыв_йоко:
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_animation, $01, $2A
    .byte con_jump
    .word off_BF31



off_BEEB_49_первый_перерыв_санае:
    .byte con_animation, $01, $26
    .byte con_jump
    .word off_BEFE



off_BEF1_4A_перерыв_санае:
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_animation, $01, $26
    .byte con_jump
    .word off_BF31



off_BEFB_4B_первый_перерыв_ишизаки:
    .byte con_animation, $01, $44
off_BEFE:
    .byte con_E8, $01
    .byte con_bg_1, $61
    .byte con_window, $05
    .byte con_screen_on
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $00
    .byte $05    ; <お>
    .byte $12    ; <つ>
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $0B    ; <さ>
    .byte $1F    ; <ま>
    .byte $7A    ; <、>
    .byte con_line
    .byte con_pause, $14
    .byte $00
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $01    ; <あ>
    .byte $14    ; <と>
    .byte $23    ; <も>
    .byte $00
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_line
    .byte con_pause, $14
    .byte con_clear_3
    .byte con_jump
    .word off_BF31



off_BF2A_4C_перерыв_ишизаки:
    .byte con_window, $02
    .byte con_bg_1, $61
    .byte con_animation, $01, $24
off_BF31:
    .byte con_E8, $01
    .byte con_speed, $00
    .byte con_offset, $06
    .text "@What do you need?@", con_line
    .byte con_offset, $08
    .text "Manage our Team", con_line
    .byte con_offset, $08
    .text "All set!"
    .byte con_palette, $00
    .byte con_exit



off_BF54_4D_пароль_йоко:
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



off_BF7D_4E_удачи_после_пароля_йоко:
    .byte con_speed, $02
    .byte con_offset, $05
    .text "@Good luck out there.@"
    .byte con_pause, $14
    .byte con_exit



off_BF5A_4F_пароль_санае:
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



off_BF7D_50_удачи_после_пароля_санае:
    .byte con_speed, $02
    .byte con_offset, $09
    .text "@Do your best", con_line
    .byte con_offset, $0B
    .text "out there.@", con_line
    .byte con_pause, $14
    .byte con_exit



off_BF60_51_пароль_ишизаки:
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



off_BF7D_52_удачи_после_пароля_ишизаки:
    .byte con_speed, $02
    .byte con_offset, $07
    .text "@Let's keep it up!@"
    .byte con_pause, $14
    .byte con_exit



off_BF90_53_новый_уровень_йоко:
    .byte con_animation, $01, $2B
    .byte con_E8, $01
    .byte con_window, $02
    .byte con_bg_1, $5F
    .byte con_palette, $00
    .byte con_sound, $6F
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $04
    .text "@I could really see you", con_line
    .byte con_offset, $06
    .text "improving out there.@"
    .byte con_pause, $28
    .byte con_clear_3
    .byte con_exit



off_BF96_54_новый_уровень_санае:
    .byte con_animation, $01, $27
    .byte con_E8, $01
    .byte con_window, $02
    .byte con_bg_1, $5F
    .byte con_palette, $00
    .byte con_sound, $6F
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $07
    .text "@Great job! We'll", con_line
    .byte con_offset, $06
    .text "win the Championship", con_line
    .byte con_offset, $09
    .text "at this rate!@"
    .byte con_pause, $28
    .byte con_clear_3
    .byte con_exit



off_BF9C_55_новый_уровень_ишизаки:
    .byte con_animation, $01, $44
    .byte con_E8, $01
    .byte con_window, $02
    .byte con_bg_1, $5F
    .byte con_palette, $00
    .byte con_sound, $6F
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte con_offset, $05
    .text "@We're good, and we're", con_line
    .byte con_offset, $06
    .text "only getting better!@"
    .byte con_pause, $28
    .byte con_clear_3
    .byte con_exit



off_BFBA_56_сан_паулу_перед_матчем:
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



off_BFC4_57_нанкацу_перед_матчем:
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



off_BFCE_58_япония_перед_матчем:
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



off_BFD0_59_обезьянка_после_проигрыша:
    .byte con_E8, $00
    .byte con_bg_1, $16
    .byte con_animation, $02, $BA, $BB
    .byte con_palette, $00
    .byte con_sound, $56
    .byte con_pause, $A0
    .byte con_exit



off_BFD1_5A_экран_с_музыкой:
    .byte con_E8, $00
    .byte con_bg_1, $18
    .byte con_animation, $02, $BC, $CA
    .byte con_palette, $00
    .byte con_F5, $0B
    .byte con_exit
