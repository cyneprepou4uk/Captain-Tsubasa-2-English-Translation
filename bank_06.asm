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
    .word off_BF7D_4E_удачи_после_пароля
    .word off_BF5A_4F_пароль_санае
    .word off_BF7D_4E_удачи_после_пароля
    .word off_BF60_51_пароль_ишизаки
    .word off_BF7D_4E_удачи_после_пароля
    .word off_BF90_53_новый_уровень_йоко
    .word off_BF96_54_новый_уровень_санае
    .word off_BF9C_55_новый_уровень_ишизаки
    .word off_BFBA_56_сан_паулу_перед_матчем
    .word off_BFC4_57_нанкацу_перед_матчем
    .word off_BFCE_58_япония_перед_матчем



off_BEDB_47_первый_перерыв_йоко:
    .byte con_animation, $01, $2A
    .byte con_jump
    .word off_BEFE



off_BEE1_48_перерыв_йоко:
    .byte con_window, $02
    .byte con_bg_1, $61
    .byte con_animation, $01, $2A
    .byte con_jump
    .word off_BF31



off_BEEB_49_первый_перерыв_санае:
    .byte con_animation, $01, $26
    .byte con_jump
    .word off_BEFE



off_BEF1_4A_перерыв_санае:
    .byte con_window, $02
    .byte con_bg_1, $61
    .byte con_animation, $01, $26
    .byte con_jump
    .word off_BF31



off_BEFB_4B_первый_перерыв_ишизаки:
    .byte con_animation, $01, $44
off_BEFE:
    .byte con_E8, $01
    .byte con_window, $02
    .byte con_bg_1, $61
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
    .byte con_clear_1
    .byte con_jump
    .word off_BF31



off_BF2A_4C_перерыв_ишизаки:
    .byte con_window, $02
    .byte con_bg_1, $61
    .byte con_animation, $01, $24
off_BF31:
    .byte con_E8, $01
    .byte con_speed, $00
    .byte $40    ; <「>
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $78    ; <?>
    .byte con_line
    .byte $00
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $C1    ; <デ>
    .byte $7D    ; <ー>
    .byte $50    ; <タ>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte con_line
    .byte $00
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte con_line
    .byte con_palette, $00
    .byte con_exit



off_BF54_4D_пароль_йоко:
    .byte con_animation, $01, $2B
    .byte con_jump
    .word off_BF63



off_BF5A_4F_пароль_санае:
    .byte con_animation, $01, $27
    .byte con_jump
    .word off_BF63



off_BF60_51_пароль_ишизаки:
    .byte con_animation, $01, $44
off_BF63:
    .byte con_window, $02
    .byte con_bg_1, $5F
    .byte con_palette, $00
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte $40    ; <「>
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $00
    .byte $4D    ; <ス>
    .byte $4A    ; <コ>
    .byte $41    ; <ア>
    .byte $62    ; <メ>
    .byte $63    ; <モ>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_line
    .byte con_pause, $14
    .byte con_clear_1
    .byte con_exit



off_BF7D_4E_удачи_после_пароля:
    .byte con_speed, $02
    .byte $40    ; <「>
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
    .byte con_exit



off_BF90_53_новый_уровень_йоко:
    .byte con_animation, $01, $2B
    .byte con_jump
    .word off_BF9F



off_BF96_54_новый_уровень_санае:
    .byte con_animation, $01, $27
    .byte con_jump
    .word off_BF9F



off_BF9C_55_новый_уровень_ишизаки:
    .byte con_animation, $01, $44
off_BF9F:
    .byte con_E8, $01
    .byte con_window, $02
    .byte con_bg_1, $5F
    .byte con_palette, $00
    .byte con_sound, $6F
    .byte con_speed, $02
    .byte con_toggle_mouth
    .byte $40    ; <「>
    .byte $6A    ; <レ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $41    ; <ア>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $AD    ; <で>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_line
    .byte con_pause, $14
    .byte con_clear_1
    .byte con_exit



off_BFBA_56_сан_паулу_перед_матчем:
    .byte con_window, $02
    .byte con_bg_2, $0F
    .byte con_animation, $01, $0C
    .byte con_jump
    .word off_BFD5



off_BFC4_57_нанкацу_перед_матчем:
    .byte con_window, $02
    .byte con_bg_2, $0E
    .byte con_animation, $01, $0F
    .byte con_jump
    .word off_BFD5



off_BFCE_58_япония_перед_матчем:
    .byte con_window, $02
    .byte con_bg_2, $0D
    .byte con_animation, $01, $0E
off_BFD5:
    .byte con_sound, $31
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_speed, $02
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $0C    ; <し>
    .byte $00
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $08    ; <く>
    .byte $A9    ; <ぞ>
    .byte $79    ; <!>
    .byte con_line
    .byte con_pause, $14
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_line
    .byte con_pause, $14
    .byte con_sound, $01
    .byte con_screen_off
    .byte con_exit
