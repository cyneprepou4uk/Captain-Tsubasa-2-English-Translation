.segment "BANK_85"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x00A010-0x00C00F



; данные катсцен (тренер и мелкие диалоги)
; поинтеры в 0x000485

; для замены
; .byte $D9 - .byte con_8545_pause, $0A
; .byte $DA - .byte con_8545_pause, $14
; .byte $DB - .byte con_8545_pause, $28
; .byte $DC - .byte con_8545_pause, $3C
; .byte $DD - .byte con_8545_pause, $50
; .byte $DE - .byte con_8545_pause, $78
; .byte $DF - .byte con_8545_pause, $F0
; удалять .byte $E0-E7 - для старого смещения текста



    .word _off014_BFD0_47_обезьянка_после_проигрыша
    .word _off014_BFD1_48_экран_с_музыкой
    .word _off014_BFD2_49_перерыв_йоко_меню
    .word _off014_BFD3_4A_перерыв_йоко_ничья
    .word _off014_BFD4_4B_перерыв_йоко_выигрыш
    .word _off014_BFD5_4C_перерыв_йоко_проигрыш
    .word _off014_BFD6_4D_перерыв_санае_меню
    .word _off014_BFD7_4E_перерыв_санае_ничья
    .word _off014_BFD8_4F_перерыв_санае_выигрыш
    .word _off014_BFD9_50_перерыв_санае_проигрыш
    .word _off014_BFDA_51_перерыв_ишизаки_меню
    .word _off014_BFDB_52_перерыв_ишизаки_ничья
    .word _off014_BFDC_53_перерыв_ишизаки_выигрыш
    .word _off014_BFDD_54_перерыв_ишизаки_проигрыш
    .word _off014_BF54_55_пароль_йоко
    .word _off014_BF7D_56_удачи_после_пароля_йоко
    .word _off014_BF5A_57_пароль_санае
    .word _off014_BF7D_58_удачи_после_пароля_санае
    .word _off014_BF60_59_пароль_ишизаки
    .word _off014_BF7D_5A_удачи_после_пароля_ишизаки
    .word _off014_BF90_5B_новый_уровень_йоко
    .word _off014_BF96_5C_новый_уровень_санае
    .word _off014_BF9C_5D_новый_уровень_ишизаки
    .word _off014_BFBA_5E_перед_матчем_sao_paulo
    .word _off014_BFC4_5F_перед_матчем_nankatsu
    .word _off014_BFCE_60_перед_матчем_japan



_off014_BFD0_47_обезьянка_после_проигрыша:
    .byte con_8545_E8, con_BF00_00
    .byte con_8545_bg_1, $16
    .byte con_8545_animation, $02, $BA, $BB
    .byte con_8545_palette, $00
    .byte con_8545_sound, $56
    .byte con_8545_pause, $A0
    .byte con_8545_exit



_off014_BFD1_48_экран_с_музыкой:
    .byte con_8545_E8, con_BF00_00
    .byte con_8545_bg_1, $18
    .byte con_8545_animation, $02, $BC, $CA
    .byte con_8545_palette, $00
    .byte con_8545_F5, $0B
    .byte con_8545_exit



_off014_BFD2_49_перерыв_йоко_меню:
    .byte con_8545_bg_1, $61
    .byte con_8545_window, $05
    .byte con_8545_animation, $01, $2A
off_BFD2_йоко_меню:
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_speed, $00
    .byte con_8545_offset, $06
    .text "@What do you need?@", con_8545_new_line
    .byte con_8545_offset, $29
    .text "Manage our Team", con_8545_new_line
    .byte con_8545_offset, $29
    .text "All set!"
    .byte con_8545_palette, $00
    .byte con_8545_exit



_off014_BFD3_4A_перерыв_йоко_ничья:
    .byte con_8545_animation, $01, $2A
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $61
    .byte con_8545_window, $05
    .byte con_8545_screen_on
    .byte con_8545_speed, $02
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $07
    .text "@We're dead even...", con_8545_new_line
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $08
    .text "Let's push ahead", con_8545_new_line
    .byte con_8545_offset, $08
    .text "and clear the", con_8545_new_line
    .byte con_8545_offset, $08
    .text "gap for good!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    .byte con_8545_jump
    .word off_BFD2_йоко_меню



_off014_BFD4_4B_перерыв_йоко_выигрыш:
    .byte con_8545_animation, $01, $2A
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $61
    .byte con_8545_window, $05
    .byte con_8545_screen_on
    .byte con_8545_speed, $02
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $08
    .text "@Let's keep up", con_8545_new_line
    .byte con_8545_offset, $09
    .text "the pace, just", con_8545_new_line
    .byte con_8545_offset, $09
    .text "like that!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    .byte con_8545_jump
    .word off_BFD2_йоко_меню



_off014_BFD5_4C_перерыв_йоко_проигрыш:
    .byte con_8545_animation, $01, $2A
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $61
    .byte con_8545_window, $05
    .byte con_8545_screen_on
    .byte con_8545_speed, $02
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $04
    .text "@We need to turn this", con_8545_new_line
    .byte con_8545_offset, $05
    .text "around,"
    .byte con_8545_pause, $14
    .text " NOW."
    .byte con_8545_pause, $1E
    .text " Should we", con_8545_new_line
    .byte con_8545_offset, $05
    .text "re-think our strategy?@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    .byte con_8545_jump
    .word off_BFD2_йоко_меню



_off014_BFD6_4D_перерыв_санае_меню:
    .byte con_8545_bg_1, $61
    .byte con_8545_window, $05
    .byte con_8545_animation, $01, $26
off_BFD6_санае_меню:
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_speed, $00
    .byte con_8545_offset, $05
    .text "@Need to fix anything?@", con_8545_new_line
    .byte con_8545_offset, $29
    .text "Manage our Team", con_8545_new_line
    .byte con_8545_offset, $29
    .text "Let's get 'em!"
    .byte con_8545_palette, $00
    .byte con_8545_exit



_off014_BFD7_4E_перерыв_санае_ничья:
    .byte con_8545_animation, $01, $26
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $61
    .byte con_8545_window, $05
    .byte con_8545_screen_on
    .byte con_8545_speed, $02
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $06
    .text "@You guys will break", con_8545_new_line
    .byte con_8545_offset, $07
    .text "this tie in the", con_8545_new_line
    .byte con_8545_offset, $07
    .text "next half, right?!", con_8545_new_line
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $04
    .text "Nan-"
    .byte con_8545_pause, $0F
    .text "kat-"
    .byte con_8545_pause, $0F
    .text "su!"
    .byte con_8545_pause, $1E
    .text " Nan-"
    .byte con_8545_pause, $0F
    .text "kat-"
    .byte con_8545_pause, $0F
    .text "su!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    .byte con_8545_jump
    .word off_BFD6_санае_меню



_off014_BFD8_4F_перерыв_санае_выигрыш:
    .byte con_8545_animation, $01, $26
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $61
    .byte con_8545_window, $05
    .byte con_8545_screen_on
    .byte con_8545_speed, $02
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $05
    .text "@You're all doing", con_8545_new_line
    .byte con_8545_offset, $06
    .text "great so far!", con_8545_new_line
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $06
    .text "Hooray for Nankatsu!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    .byte con_8545_jump
    .word off_BFD6_санае_меню



_off014_BFD9_50_перерыв_санае_проигрыш:
    .byte con_8545_animation, $01, $26
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $61
    .byte con_8545_window, $05
    .byte con_8545_screen_on
    .byte con_8545_speed, $02
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $05
    .text "@Why are we losing?!", con_8545_new_line
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $06
    .text "Do you think Tsubasa", con_8545_new_line
    .byte con_8545_offset, $06
    .text "would be happy", con_8545_new_line
    .byte con_8545_offset, $06
    .text "with this?!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    .byte con_8545_jump
    .word off_BFD6_санае_меню



_off014_BFDA_51_перерыв_ишизаки_меню:
    .byte con_8545_bg_1, $61
    .byte con_8545_window, $05
    .byte con_8545_animation, $01, $24
off_BFDA_ишизаки_меню:
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_speed, $00
    .byte con_8545_offset, $06
    .text "@How's our lineup?@", con_8545_new_line
    .byte con_8545_offset, $29
    .text "Manage our Team", con_8545_new_line
    .byte con_8545_offset, $29
    .text "Let's hit the field!"
    .byte con_8545_palette, $00
    .byte con_8545_exit



_off014_BFDB_52_перерыв_ишизаки_ничья:
    .byte con_8545_animation, $01, $44
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $61
    .byte con_8545_window, $05
    .byte con_8545_screen_on
    .byte con_8545_speed, $02
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $03
    .text "@Ok, we're tied up -"
    .byte con_8545_pause, $1E
    .text " but", con_8545_new_line
    .byte con_8545_offset, $04
    .text "we've got a full 'nother", con_8545_new_line
    .byte con_8545_offset, $04
    .text "half to take the win!", con_8545_new_line
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $04
    .text "We got this!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    .byte con_8545_jump
    .word off_BFDA_ишизаки_меню



_off014_BFDC_53_перерыв_ишизаки_выигрыш:
    .byte con_8545_animation, $01, $44
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $61
    .byte con_8545_window, $05
    .byte con_8545_screen_on
    .byte con_8545_speed, $02
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $03
    .text "@...oh, it's my line now?", con_8545_new_line
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $2B
    .text "Go, Japan!", con_8545_new_line
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $26
    .text "Let's keep winning!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    .byte con_8545_jump
    .word off_BFDA_ишизаки_меню



_off014_BFDD_54_перерыв_ишизаки_проигрыш:
    .byte con_8545_animation, $01, $44
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $61
    .byte con_8545_window, $05
    .byte con_8545_screen_on
    .byte con_8545_speed, $02
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $04
    .text "@Guys..."
    .byte con_8545_pause, $14
    .text "we gotta make", con_8545_new_line
    .byte con_8545_offset, $05
    .text "the World Cup,"
    .byte con_8545_pause, $1E
    .text " and to", con_8545_new_line
    .byte con_8545_offset, $05
    .text "do that, we gotta win!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_offset, $08
    .text "@I'll go at them", con_8545_new_line
    .byte con_8545_offset, $09
    .text "face-first if I", con_8545_new_line
    .byte con_8545_offset, $09
    .text "have to!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    .byte con_8545_jump
    .word off_BFDA_ишизаки_меню



_off014_BF54_55_пароль_йоко:
    .byte con_8545_animation, $01, $2B
    .byte con_8545_bg_1, $5F
    .byte con_8545_window, $04
    .byte con_8545_palette, $00
    .byte con_8545_speed, $02
    .byte con_8545_offset, $08
    .byte con_8545_toggle_mouth
    .text "@Here's today's", con_8545_new_line
    .byte con_8545_offset, $0A
    .text "score memo.@"
    .byte con_8545_pause, $1E
    .byte con_8545_clear_3
    .byte con_8545_exit



_off014_BF7D_56_удачи_после_пароля_йоко:
    .byte con_8545_speed, $02
    .byte con_8545_offset, $05
    .text "@Good luck out there.@"
    .byte con_8545_pause, $14
    .byte con_8545_exit



_off014_BF5A_57_пароль_санае:
    .byte con_8545_animation, $01, $27
    .byte con_8545_bg_1, $5F
    .byte con_8545_window, $04
    .byte con_8545_palette, $00
    .byte con_8545_speed, $02
    .byte con_8545_offset, $04
    .byte con_8545_toggle_mouth
    .text "@I've prepared the score", con_8545_new_line
    .byte con_8545_offset, $08
    .text "memo, everyone.@"
    .byte con_8545_pause, $1E
    .byte con_8545_clear_3
    .byte con_8545_exit



_off014_BF7D_58_удачи_после_пароля_санае:
    .byte con_8545_speed, $02
    .byte con_8545_offset, $09
    .text "@Do your best", con_8545_new_line
    .byte con_8545_offset, $0B
    .text "out there.@", con_8545_new_line
    .byte con_8545_pause, $14
    .byte con_8545_exit



_off014_BF60_59_пароль_ишизаки:
    .byte con_8545_animation, $01, $44
    .byte con_8545_bg_1, $5F
    .byte con_8545_window, $04
    .byte con_8545_palette, $00
    .byte con_8545_speed, $02
    .byte con_8545_offset, $07
    .byte con_8545_toggle_mouth
    .text "@Here's our score", con_8545_new_line
    .byte con_8545_offset, $0A
    .text "memo, guys.@"
    .byte con_8545_pause, $1E
    .byte con_8545_clear_3
    .byte con_8545_exit



_off014_BF7D_5A_удачи_после_пароля_ишизаки:
    .byte con_8545_speed, $02
    .byte con_8545_offset, $07
    .text "@Let's keep it up!@"
    .byte con_8545_pause, $14
    .byte con_8545_exit



_off014_BF90_5B_новый_уровень_йоко:
    .byte con_8545_animation, $01, $2B
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $5F
    .byte con_8545_window, $04
    .byte con_8545_palette, $00
    .byte con_8545_sound, $6F
    .byte con_8545_speed, $02
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $08
    .text "@I could really", con_8545_new_line
    .byte con_8545_offset, $08
    .text "see you improving", con_8545_new_line
    .byte con_8545_offset, $0B
    .text "out there!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    .byte con_8545_exit



_off014_BF96_5C_новый_уровень_санае:
    .byte con_8545_animation, $01, $27
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $5F
    .byte con_8545_window, $04
    .byte con_8545_palette, $00
    .byte con_8545_sound, $6F
    .byte con_8545_speed, $02
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $07
    .text "@Great job!"
    .byte con_8545_pause, $1E
    .text " We'll", con_8545_new_line
    .byte con_8545_offset, $06
    .text "win the Championship", con_8545_new_line
    .byte con_8545_offset, $09
    .text "at this rate!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    .byte con_8545_exit



_off014_BF9C_5D_новый_уровень_ишизаки:
    .byte con_8545_animation, $01, $44
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $5F
    .byte con_8545_window, $04
    .byte con_8545_palette, $00
    .byte con_8545_sound, $6F
    .byte con_8545_speed, $02
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $0A
    .text "@We're good,", con_8545_new_line
    .byte con_8545_pause, $14
    .byte con_8545_offset, $09
    .text "and we're only", con_8545_new_line
    .byte con_8545_offset, $09
    .text "getting better!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    .byte con_8545_exit



_off014_BFBA_5E_перед_матчем_sao_paulo:
    .byte con_8545_window, $02
    .byte con_8545_bg_2, $0F
    .byte con_8545_animation, $01, $0C
    .byte con_8545_sound, $31
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_speed, $02
    .byte con_8545_offset, $08
    .text "@For Sao Paulo!@", con_8545_new_line
    .byte con_8545_pause, $14
    .byte con_8545_offset, $07
    .text "@NON DUCOR, DUCO!@"
    .byte con_8545_pause, $1E
    .byte con_8545_sound, $01
    .byte con_8545_screen_off
    .byte con_8545_exit



_off014_BFC4_5F_перед_матчем_nankatsu:
    .byte con_8545_window, $02
    .byte con_8545_bg_2, $0E
    .byte con_8545_animation, $01, $0F
    .byte con_8545_sound, $31
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_speed, $02
    .byte con_8545_offset, $03
    .text "@Let's do Nankatsu proud!@", con_8545_new_line
    .byte con_8545_pause, $14
    .byte con_8545_offset, $0C
    .text "@YEAH!!@"
    .byte con_8545_pause, $1E
    .byte con_8545_sound, $01
    .byte con_8545_screen_off
    .byte con_8545_exit



_off014_BFCE_60_перед_матчем_japan:
    .byte con_8545_window, $02
    .byte con_8545_bg_2, $0D
    .byte con_8545_animation, $01, $0E
    .byte con_8545_sound, $31
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_speed, $02
    .byte con_8545_offset, $07
    .text "@Japan's counting", con_8545_new_line
    .byte con_8545_offset, $0A
    .text "on us, guys!@", con_8545_new_line
    .byte con_8545_pause, $14
    .byte con_8545_offset, $0B
    .text "@BANZAI!!@"
    .byte con_8545_pause, $1E
    .byte con_8545_sound, $01
    .byte con_8545_screen_off
    .byte con_8545_exit



.out .sprintf("Free bytes in bank 85: 0x%04X [%d]", ($C000 - *), ($C000 - *))



