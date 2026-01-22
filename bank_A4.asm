.segment "BANK_A4"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x048010-0x04A00F



; данные катсцен
; поинтеры в 0x000485



.export off_0x040005_скрытая_катсцена_из_1F



    .word _off014_BE49_1F_перед_матчем_с_бразилией
    .word _off014_A080_20_цубаса_видит_санае_перед_матчем
    .word _off014_A1A1_21_коимбра_вступает_в_игру



_off014_BE49_1F_перед_матчем_с_бразилией:
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $02
    .byte con_8545_animation, $01, $0A
    .byte con_8545_sound, $01
    .byte con_8545_pause, $78
    .byte con_8545_sound, $69
    .byte con_8545_screen_on
    .byte con_8545_sound, $49
    .byte con_8545_pause, $78
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $08
    .text "(So,"
    .byte con_8545_pause, $3C
    .text " you've made"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "it this far"
    .byte con_8545_speed, $08
    .text "...)"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_bg_2, $11
    .byte con_8545_animation, $01, $16
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_speed, $00
    .byte con_8545_offset, $0A
    .text "(!?)"
    .byte con_8545_F5, $08
    .byte con_8545_pause, $28
    .byte con_8545_clear_1
    .byte con_8545_pause, $14
    .byte con_8545_F5, $04
    .byte con_8545_pause, $3C
    .byte con_8545_animation, $01, $11
    .byte con_8545_pause, $78
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $04
    .byte con_8545_offset, $06
    .text "(I keep my"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "promises,"
    .byte con_8545_pause, $28
    .text " Carlos.)"
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_bg_1, $2A
    .byte con_8545_animation, $01, $B5
    .byte con_8545_screen_on
    .byte con_8545_F5, $04
    .byte con_8545_pause, $F0
    .byte con_8545_pause, $F0
    .byte con_8545_pause, $78
    .byte con_8545_speed, $06
    .byte con_8545_offset, $07
    .text "(It's been a long"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "road to get here.)"
    .byte con_8545_pause, $F0
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_sound, $31
    .byte con_8545_pause, $78
    .byte con_8545_sound, $01
    .byte con_8545_pause, $3C
    .byte con_8545_clear_all
    .byte con_8545_bg_1, $28
    .byte con_8545_screen_on
    .byte con_8545_base_offset
    .word $21A0
    .byte con_8545_speed, $04
    .byte con_8545_offset, $09
    .text "On the day of"
    .byte con_8545_new_line
    .byte con_8545_offset, $0A
    .text "the final"
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_sound, $4C
    .byte con_8545_pause, $78
    .byte con_8545_bg_1, $2B
    .byte con_8545_bg_2, $11
    .byte con_8545_sound, $69
    .byte con_8545_screen_on
    .byte con_8545_F5, $04
    .byte con_8545_pause, $3C
    .byte con_8545_window, $00
    .byte con_8545_charlie, $05
    .byte con_8545_base_offset
    .word $2260
    .byte con_8545_speed, $04
    .byte con_8545_offset, $09
    .text "After so many"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "trials,"
    .byte con_8545_pause, $14
    .text " surprises,"
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "and upsets,"
    .byte con_8545_pause, $50
    .byte con_8545_clear_2
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $09
    .text "we've reached"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "the final match"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "of the World Cup!"
    .byte con_8545_sound, $62
    .byte con_8545_pause, $78
    .byte con_8545_clear_2
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $09
    .text "As the clock ticks"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "down,"
    .byte con_8545_pause, $14
    .text " both teams are"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "getting ready on"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "the sideline."
    .byte con_8545_pause, $50
    .byte con_8545_clear_2
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_sound, $62
    .byte con_8545_animation, $01, $63
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $FF, $00, $0F
    .byte con_8545_bg_2, $10
    .byte con_8545_pause, $1E
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $09
    .text "The first finalist"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "is Brazil U-20,"
    .byte con_8545_pause, $14
    .text " who"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "as the host country"
    .byte con_8545_pause, $50
    .byte con_8545_clear_2
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $09
    .text "and largely favored"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "to win,"
    .byte con_8545_pause, $1E
    .text " have an"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "especially great"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "stake in this match!"
    .byte con_8545_ball
    .byte con_8545_clear_2
    
    
    
    .byte con_8545_sound, $62
    .byte con_8545_animation, $01, $67
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $3C
    .byte con_8545_offset, $09
    .text "But on the other"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "side we have their"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "worthy opponents -"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "Japan U-20!"
    .byte con_8545_pause, $50
    .byte con_8545_clear_2
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $09
    .text "They advanced this"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "far by putting up"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "a hard fight with"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "excellent teamwork!"
    .byte con_8545_ball
    .byte con_8545_clear_2
    
    
    
    .byte con_8545_F5, $FF
    .byte con_8545_bg_2, $43
    .byte con_8545_animation, $01, $B1
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_offset, $09
    .text "Who will Lady Fortune"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "smile upon today?"
    .byte con_8545_pause, $50
    .byte con_8545_clear_2
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $09
    .text "Just five minutes"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "'till the fateful"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "kick-"
    .byte con_8545_pause, $0F
    .text "off!"
    .byte con_8545_sound, $62
; скрытая катсцена
    .byte con_8545_F4, con_86C6_ожидание_перехода_к_скрытому_диалогу, $03   ; номер скрытой катсцены
    .byte con_8545_screen_off
    .byte con_8545_exit






off_0x040005_скрытая_катсцена_из_1F:
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_clear_2
    .byte con_8545_charlie, $00
    .byte con_8545_speed, $02
    .byte con_8545_offset, $09
    .text "Oh!"
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .text " Looks like"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "something's"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "happening by"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "Japan's bench"
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $50
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_clear_all
    .byte con_8545_charlie, $FF ; выключить чарли
    .byte con_8545_bg_1, $10
    .byte con_8545_bg_2, $11
    .byte con_8545_animation, $01, $66
    .byte con_8545_screen_on
    .byte con_8545_F5, $04
    .byte con_8545_palette, $FF, $00, $0C
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .byte con_8545_offset, $06
    .text "@We're about to"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "start the meeting."
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "What is it?@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $21
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $3C
    .byte con_8545_offset, $04
    .text "@It won't take long."
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "You know,"
    .byte con_8545_pause, $1E
    .text " that was"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .byte con_8545_pause, $0F
    .byte con_8545_speed, $06
    .text "TWICE "
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .text "now Japan have"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "gotten one over on us.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_offset, $07
    .text "@But I'm not mad."
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "Here,"
    .byte con_8545_pause, $14
    .text " take this.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $28
    .byte con_8545_animation, $01, $57
    .byte con_8545_pause, $28
    .byte con_8545_speed, $0A
    .byte con_8545_offset, $06
    .text "@03-"
    .byte con_8545_pause, $14
    .text "222-"
    .byte con_8545_pause, $14
    .text "7550"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $50
    .byte con_8545_animation, $01, $66
    .byte con_8545_pause, $14
    .byte con_8545_speed, $02
    .text "h"
    .byte con_8545_toggle_mouth
    .text "ey,"
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_speed, $04
    .byte con_8545_offset, $07
    .text "this number seems"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "familiar. "
    .byte con_8545_pause, $50
    .byte con_8545_animation, $01, $12
    .byte con_8545_speed, $02
    .text "What_@"
    .byte con_8545_sound, $01
    .byte con_8545_pause, $28
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $21
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .byte con_8545_offset, $03
    .text "@Yeah,"
    .byte con_8545_pause, $14
    .text " it's for the Tecmo"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "Hotline."
    .byte con_8545_pause, $28
    .text " You've got time -"
    .byte con_8545_pause, $28
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_animation, $01, $12
    .byte con_8545_pause, $28
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "see if they can give you"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "some"
    .byte con_8545_pause, $14
    .text " advice. "
    .byte con_8545_pause, $50
    .byte con_8545_animation, $01, $21
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $1E
    .text "H"
    .byte con_8545_F8, con_A491_02
    .text "eh.@"
    .byte con_8545_pause, $28
    .byte con_8545_clear_1
    .byte con_8545_pause, $28
    
    
    
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_animation, $01, $12
    .byte con_8545_pause, $1E
    .byte con_8545_sound, $4C
    .byte con_8545_pause, $1E
    .byte con_8545_animation, $01, $11
    .byte con_8545_pause, $50
    .byte con_8545_speed, $02
    .byte con_8545_offset, $02
    .byte con_8545_toggle_mouth
    .text " "
    .byte con_8545_toggle_mouth
    .text "@Wo"
    .byte con_8545_toggle_mouth
    .text "w,"
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .text " thanks,"
    .byte con_8545_pause, $1E
    .text " Schneider!"
    .byte con_8545_pause, $28
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "After we beat Brazil and"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "win the World Cup,"
    .byte con_8545_pause, $1E
    .text " that's"
    .byte con_8545_pause, $14
    .byte con_8545_animation, $01, $66
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "the"
    .byte con_8545_pause, $14
    .byte con_8545_speed, $06
    .text " FIRST THING "
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .text "I'll do!@"
    .byte con_8545_pause, $1E
    .byte con_8545_animation, $01, $11
    .byte con_8545_pause, $3C
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_toggle_cam
    .byte con_8545_sound, $1E
    .byte con_8545_F8, con_A491_0E
    .byte con_8545_pause, $0A
    .byte con_8545_speed, $04
    .byte con_8545_offset, $06
    .text "@Is he just"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "screwing with us?!@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $42
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_offset, $03
    .text "@That's it,"
    .byte con_8545_pause, $0A
    .text " lads_"
    .byte con_8545_pause, $14
    .text "enough"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "goofing around."
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "Get your game faces on!@"
    .byte con_8545_sound, $62
    .byte con_8545_pause, $78
    .byte con_8545_sound, $31
    .byte con_8545_pause, $3C
    .byte con_8545_screen_off
    .byte con_8545_F5, $FF
    .byte con_8545_F4, con_86C6_возврат_из_скрытой_катсцены






_off014_A080_20_цубаса_видит_санае_перед_матчем:
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $43
    .byte con_8545_animation, $01, $B2
    .byte con_8545_pause, $78
    .byte con_8545_sound, $69
    .byte con_8545_screen_on
    .byte con_8545_sound, $53
    .byte con_8545_pause, $3C
    .byte con_8545_window, $00
    .byte con_8545_charlie, $05
    .byte con_8545_offset, $09
    .text "Shrouded by the"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "loud cheers from"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "the stands,"
    .byte con_8545_sound, $69
    .byte con_8545_pause, $50
    .byte con_8545_clear_2
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $09
    .text "the players are"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "lining up for the"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "big final!"
    .byte con_8545_pause, $28
    .text " Time"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "for kick-"
    .byte con_8545_pause, $0F
    .text "off!"
    .byte con_8545_sound, $62
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_sound, $31
    .byte con_8545_clear_all
    .byte con_8545_clear_1
    .byte con_8545_charlie, $FF ; выключить чарли
    .byte con_8545_bg_2, $11
    .byte con_8545_animation, $01, $07
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $08
    .byte con_8545_speed, $08
    .byte con_8545_offset, $0C
    .text "@Tsuba"
    .byte con_8545_speed, $0C
    .text "~~~"
    .byte con_8545_pause, $14
    .byte con_8545_speed, $03
    .text "sa!!@"
    .byte con_8545_pause, $28
    .byte con_8545_clear_1
    .byte con_8545_pause, $14
    .byte con_8545_animation, $01, $66
    .byte con_8545_pause, $14
    .byte con_8545_animation, $01, $08
    .byte con_8545_F5, $08
    .byte con_8545_speed, $00
    .byte con_8545_offset, $0A
    .text "@!!@"
    .byte con_8545_pause, $28
    .byte con_8545_clear_1
    .byte con_8545_bg_2, $09
    .byte con_8545_pause, $50
    
    
    
    .byte con_8545_animation, $01, $43
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $50
    .byte con_8545_screen_off
    .byte con_8545_bg_1, $02
    .byte con_8545_animation, $01, $26
    .byte con_8545_screen_on
    .byte con_8545_sound, $55
    .byte con_8545_pause, $50
    .byte con_8545_offset, $04
    .byte con_8545_speed, $06
    .text " "
    .byte con_8545_F8, con_A491_02
    .byte con_8545_pause, $08
    .text "(I made it,"
    .byte con_8545_pause, $3C
    .text " Tsubasa"
    .byte con_8545_speed, $08
    .text "...)"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    
    
    
    .byte con_8545_bg_2, $23
    .byte con_8545_animation, $01, $AE
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .byte con_8545_offset, $06
    .text "(That's_"
    .byte con_8545_pause, $3C
    .text "no,"
    .byte con_8545_pause, $14
    .text " it"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "can't be"
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $06
    .text "Sanae?!)"
    .byte con_8545_pause, $3C
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_bg_2, $51
    .byte con_8545_animation, $01, $AB
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $78
    .byte con_8545_speed, $04
    .byte con_8545_offset, $05
    .text "(Sanae's_"
    .byte con_8545_pause, $1E
    .text "she's here!"
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "She's here and she's"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "cheering for me!)"
    .byte con_8545_pause, $F0
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_bg_1, $29
    .byte con_8545_animation, $01, $54
    .byte con_8545_palette, $00
    .byte con_8545_sound, $5F
    .byte con_8545_speed, $04
    .byte con_8545_offset, $09
    .byte con_8545_pause, $50
    .text "(I'm fired up!)"
    .byte con_8545_pause, $28
    .byte con_8545_clear_1
    .byte con_8545_bg_2, $23
    .byte con_8545_animation, $01, $AD
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_F5, $08
    .byte con_8545_sound, $01
    .byte con_8545_pause, $08
    .byte con_8545_speed, $02
    .byte con_8545_offset, $0A
    .byte con_8545_sound, $6E
    .text "(I'm ready!)"
    .byte con_8545_bg_2, $43
    .byte con_8545_animation, $01, $B3
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $02
    .byte con_8545_clear_1
    .byte con_8545_sound, $6E
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $06
    .byte con_8545_offset, $07
    .byte con_8545_sound, $6C
    .byte con_8545_pause, $14
    .text "(Let's get it on!)"
    .byte con_8545_pause, $78
    .byte con_8545_screen_off
    .byte con_8545_exit






_off014_A1A1_21_коимбра_вступает_в_игру:
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $11
    .byte con_8545_animation, $01, $3E
    .byte con_8545_sound, $01
    .byte con_8545_pause, $78
    .byte con_8545_screen_on
    .byte con_8545_sound, $46
    .byte con_8545_pause, $50
    .byte con_8545_offset, $03
    .text "(So,"
    .byte con_8545_pause, $28
    .text " my letter didn't go"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "to waste."
    .byte con_8545_pause, $3C
    .text " You figured"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "out the secret to being"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "a @Super Striker@.)"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $04
    .text "(Nicely done"
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $3C
    .byte con_8545_screen_off
    .byte con_8545_bg_1, $10
    .byte con_8545_animation, $01, $62
    .byte con_8545_screen_on
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text "I won't"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "let you rest on your"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "laurels,"
    .byte con_8545_pause, $08
    .text " though.)"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $05
    .text "(There will always be"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "someone out there to"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "test your mettle.)"
    .byte con_8545_pause, $50
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_bg_1, $11
    .byte con_8545_animation, $01, $36
    .byte con_8545_screen_on
    .byte con_8545_pause, $3C
    .byte con_8545_offset, $03
    .text "(Someone on this very"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "field,"
    .byte con_8545_pause, $14
    .text " in fact."
    .byte con_8545_pause, $3C
    .text " You see,"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "Brazil has its own"
    .byte con_8545_sound, $01
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $3C
    .byte con_8545_clear_1
    
    
    
    .byte con_8545_bg_2, $50
    .byte con_8545_animation, $01, $6C
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_F5, $0C
    .byte con_8545_sound, $30
    .byte con_8545_speed, $03
    .byte con_8545_offset, $07
    .text "...Super Striker!!)"
    .byte con_8545_F5, $FF
    .byte con_8545_pause, $F0
    .byte con_8545_clear_1
    
    
    
    .byte con_8545_F4, con_86C6_показать_текст
    .byte con_8545_bg_2, $44
    .byte con_8545_animation, $01, $81
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_bg_2, $10
    .byte con_8545_F4, con_86C6_скрыть_текст
    .byte con_8545_sound, $54
    .byte con_8545_speed, $04
    .byte con_8545_offset, $03
    .text "@Your attention,"
    .byte con_8545_pause, $08
    .text " please!"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "Brazil are substituting"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "Main Foward,"
    .byte con_8545_pause, $14
    .text " Ribeiro"
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    

    .byte con_8545_animation, $01, $60
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_bg_2, $11
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $04
    .byte con_8545_offset, $04
    .text "...with their Captain"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "at position"
    .byte con_8545_pause, $0F
    .text " #"
    .byte con_8545_pause, $0F
    .text "10,"
    .byte con_8545_pause, $3C
    .byte con_8545_F4, con_86C6_яркость_спрайтов_3
    .byte con_8545_animation, $01, $5F
    .byte con_8545_sound, $15
    .byte con_8545_pause, $14
    .byte con_8545_F4, con_86C6_яркость_спрайтов_1
    .byte con_8545_pause, $3C
    .byte con_8545_toggle_mouth
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "Arthur Antines Coimbra!@"
    .byte con_8545_F5, $04
    .byte con_8545_sound, $62
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    .byte con_8545_F5, $FF
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $4C
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_F5, $08
;   .byte con_8545_pause, $14
;   .byte con_8545_F5, $04
    .byte con_8545_speed, $02
    .byte con_8545_offset, $05
    .text "(Aah,"
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text " that_"
    .byte con_8545_pause, $14
    .text "that jerk"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "from the Rio Cup!)"
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    .byte con_8545_bg_1, $63
    .byte con_8545_animation, $01, $5E
    .byte con_8545_screen_on
    .byte con_8545_bg_2, $4A
    .byte con_8545_palette, $FF, $21, $40
    .byte con_8545_pause, $3C
    .byte con_8545_offset, $05
    .text "@That Ozora Tsubasa"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $50
    .byte con_8545_new_line
    .byte con_8545_speed, $04
    .byte con_8545_offset, $06
    .text "he's got even more"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "potential than he"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "realizes.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_offset, $04
    .text "@If he actually becomes"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "a @Super Striker@,"
    .byte con_8545_pause, $1E
    .text " you"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "don't stand a chance.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $61
    .byte con_8545_toggle_cam
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $06
    .byte con_8545_offset, $06
    .text "@A @Super Striker@?@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $5E
    .byte con_8545_toggle_cam
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .byte con_8545_offset, $04
    .text "@If you want to stand"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "up to him,"
    .byte con_8545_pause, $3C
    .text " you'd"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "better train like your"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "life depended on it"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_F4, con_86C6_яркость_спрайтов_3
    .byte con_8545_F4, con_86C6_показать_текст
    .byte con_8545_bg_2, $54
    .byte con_8545_animation, $01, $05
    .byte con_8545_F4, con_86C6_яркость_спрайтов_1
    .byte con_8545_F4, con_86C6_скрыть_текст
    .byte con_8545_palette, $FF, $21, $40
    .byte con_8545_pause, $F0
    .byte con_8545_pause, $F0
    .byte con_8545_F4, con_86C6_яркость_спрайтов_2
    .byte con_8545_bg_1, $11
    .byte con_8545_bg_2, $10
    .byte con_8545_sound, $69
    .byte con_8545_F4, con_86C6_яркость_спрайтов_3
    .byte con_8545_animation, $01, $0A
    .byte con_8545_screen_on
    .byte con_8545_F5, $04
    .byte con_8545_pause, $78
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $04
    .byte con_8545_offset, $04
    .text "(That's just what I did,"
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "you bastard."
    .byte con_8545_pause, $3C
    .text " But did"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "you mean so I wouldn't"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "slow you down?!)"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_animation, $01, $6A
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $50
    .byte con_8545_offset, $05
    .text "(Roberto"
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .text "what's your"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "strategy?"
    .byte con_8545_pause, $50
    .text " Is this"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "new guy some kind"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "of secret weapon?)"
    .byte con_8545_pause, $78
    .byte con_8545_sound, $31
    .byte con_8545_pause, $78
    .byte con_8545_screen_off
    .byte con_8545_exit



.out .sprintf("Free bytes in bank A4: 0x%04X [%d]", ($C000 - *), ($C000 - *))



