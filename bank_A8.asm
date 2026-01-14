.segment "BANK_A8"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x050010-0x05200F



; текст облаков


.export _cloud_0x000073_73



_cloud_0x000073_73:
    .byte con_8087_F4_выбор_облака, $04    ; зависимость от команды в прохе
    .word off_9F52_ожидание_1
    .word off_9FE1_ожидание_2
    .word off_A08B_ожидание_3
    .word off_A12A_ожидание_4
    .word off_A225_ожидание_5
    .word off_A292_ожидание_6
    .word off_A302_ожидание_7

off_9F52_ожидание_1:
    .byte con_8087_F5, $02
    .byte con_cloud_pause + $E8
    .byte con_cloud_charlie + $08
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text "     *cough*        ", con_835E_line
    .text "                    ", con_835E_line

    .byte con_cloud_pause + $E0
    .byte con_cloud_charlie + $0B
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "    Hit the @A@     ", con_835E_line
    .text "  button, already!  ", con_835E_line
    .text "                    ", con_835E_line

    .byte con_cloud_pause + $B4
    .byte con_cloud_charlie + $01
    .byte con_cloud_window + $02
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "  This booth's so   ", con_835E_line
    .text " quiet...and hot... ", con_835E_line
    .text "                    ", con_835E_line

    .byte con_cloud_pause + $B4
    .byte con_cloud_charlie + $02
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $01
    .text "      *sigh*        ", con_835E_line
    .text "   Are we really    ", con_835E_line
    .text "    doing this?     ", con_835E_line

    .byte con_cloud_pause + $B4
    .byte con_cloud_charlie + $00
    .byte con_cloud_window + $02
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text " Uuh, so sleepy...  ", con_835E_line
    .text "                    ", con_835E_line

    .byte con_cloud_pause + $78
    .byte con_cloud_charlie + $07
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text "   Good night...    ", con_835E_line
    .text "                    ", con_835E_line
off_9FBF_храп_чарли:
    .byte con_cloud_pause + $50
    .byte con_cloud_charlie + $07
    .byte con_cloud_window + $04
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "   *snore*          ", con_835E_line
    .text "        *snore*     ", con_835E_line
    .text "                    ", con_835E_line

    .byte con_cloud_pause + $80
    .byte con_cloud_charlie + $07
    .byte con_cloud_window + $04
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text "     *snoooore*     ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_8087_F3_jmp
    .word off_9FBF_храп_чарли



off_9FE1_ожидание_2:
    .byte con_8087_F5, $02
    .byte con_cloud_pause + $E8
    .byte con_cloud_charlie + $0C
    .byte con_cloud_window + $02
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "      Alrighty!     ", con_835E_line
    .text "   Let's kick off.  ", con_835E_line
    .text "                    ", con_835E_line
    
    .byte con_cloud_pause + $E0
    .byte con_cloud_charlie + $0B
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "   C'mon, c'mon!    ", con_835E_line
    .text "Press @A@, will ya? ", con_835E_line
    .text "                    ", con_835E_line

    .byte con_cloud_pause + $B4
    .byte con_cloud_charlie + $01
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $01
    .text "You're being really ", con_835E_line
    .text " stubborn. Are you  ", con_835E_line
    .text "a kid or something? ", con_835E_line

    .byte con_cloud_pause + $B4
    .byte con_cloud_charlie + $02
    .byte con_cloud_window + $03
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "   Oh, for crying   ", con_835E_line
    .text "     out loud!      ", con_835E_line
    .text "                    ", con_835E_line

    .byte con_cloud_pause + $B4
    .byte con_cloud_charlie + $01
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "  Trying to stare   ", con_835E_line
    .text "     me down?       ", con_835E_line
    .text "                    ", con_835E_line

    .byte con_cloud_pause + $B4
    .byte con_cloud_charlie + $0B
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $01
    .text "  Fine - since I'm  ", con_835E_line
    .text "    so popular,     ", con_835E_line
    .text "   I'll help you.   ", con_835E_line
off_A06C_peace_чарли_полное:
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $05
    .byte con_cloud_window + $02
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text "      Peace!        ", con_835E_line
    .text "                    ", con_835E_line
off_A06D_peace_чарли_частичное:
    .byte con_cloud_pause + $45
    
    .byte con_cloud_charlie + $05
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text "       Peace!       ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $45
    
    .byte con_cloud_charlie + $05
    .byte con_cloud_window + $02
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text "      Peace!        ", con_835E_line
    .text "                    ", con_835E_line
    
    .byte con_8087_F3_jmp
    .word off_A06D_peace_чарли_частичное



off_A08B_ожидание_3:
    .byte con_8087_F5, $02
    .byte con_cloud_pause + $E8
    .byte con_cloud_charlie + $04
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $01
    .text "    Press @A@,      ", con_835E_line
    .text "    press @A@,      ", con_835E_line
    .text "    press @A@...    ", con_835E_line
    
    .byte con_cloud_pause + $E0
    .byte con_cloud_charlie + $02
    .byte con_cloud_window + $03
    .byte con_cloud_start_line + $01
    .text "  Oh, my stomach's  ", con_835E_line
    .text "   growling...Ok_  ", con_835E_line
    .text " where's that menu? ", con_835E_line

    .byte con_cloud_pause + $B4
    .byte con_cloud_charlie + $0A
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $00
    .text " Hello, Raiken? I'd ", con_835E_line
    .text "  like to place an  ", con_835E_line
    .text " order of gyoza and ", con_835E_line
    .text " fried rice, please.", con_835E_line

    .byte con_cloud_pause + $B4
    .byte con_cloud_charlie + $0A
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $00
    .text "   Oh, and a side   ", con_835E_line
    .text "  order of ramen _ ", con_835E_line
    .text "    it'll be for    ", con_835E_line
    .text " @Charlie@. Thanks! ", con_835E_line

    .byte con_cloud_pause + $B4
    .byte con_cloud_charlie + $04
    .byte con_cloud_window + $02
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "   Getting hungry   ", con_835E_line
    .text "      too, huh?     ", con_835E_line
    .text "                    ", con_835E_line

    .byte con_cloud_pause + $B4
    .byte con_cloud_charlie + $02
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "  Too bad - I only  ", con_835E_line
    .text "  ordered for one.  ", con_835E_line
    .text "                    ", con_835E_line

    .byte con_cloud_pause + $B4
    .byte con_cloud_charlie + $0B
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "   Quit trying to   ", con_835E_line
    .text "    mooch off me!   ", con_835E_line
    .text "                    ", con_835E_line
    
    .byte con_8087_F3_jmp
    .word off_A06C_peace_чарли_полное



off_A12A_ожидание_4:
    .byte con_8087_F5, $02
    .byte con_cloud_pause + $E8
    
    .byte con_cloud_charlie + $0C
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $00
    .text "   Test one, test   ", con_835E_line
    .text "  two_is this on?  ", con_835E_line
    .text "    Ok! Time for    ", con_835E_line
    .text "    some karaoke!   ", con_835E_line
off_A159_цикл_караоке:
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $0A
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "      Hey hey-      ", con_835E_line
    .text "     Japan U-20~    ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $80
    
    .byte con_cloud_charlie + $0A
    .byte con_cloud_window + $02
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text " Our shooting star~ ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $80
    
    .byte con_cloud_charlie + $0A
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "     Your skill     ", con_835E_line
    .text "    and teamwork~   ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $78
    
    .byte con_cloud_charlie + $0A
    .byte con_cloud_window + $02
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "    Brought you     ", con_835E_line
    .text "     this far!      ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $68
    
    .byte con_cloud_charlie + $0A
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "    Lead by your    ", con_835E_line
    .text "      captain~      ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $78
    
    .byte con_cloud_charlie + $0A
    .byte con_cloud_window + $02
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text "     Tsu-ba-sa!     ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $88
    
    .byte con_cloud_charlie + $05
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text "       Yay!         ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $3C
    
    .byte con_cloud_charlie + $05
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text "      Alright!      ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $88
    
    .byte con_cloud_charlie + $02
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "    Hmm? You want   ", con_835E_line
    .text "     an encore?     ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $70
    
    .byte con_cloud_charlie + $03
    .byte con_cloud_window + $02
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "    Well, if you    ", con_835E_line
    .text "       insist!      ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $70
    
    .byte con_cloud_charlie + $0C
    .byte con_cloud_window + $03
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "     And-a one!     ", con_835E_line
    .text "     And-a two!     ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $70
    
    .byte con_cloud_charlie + $0C
    .byte con_cloud_window + $03
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "  And-a One! Two!   ", con_835E_line
    .text "    Three! Four!    ", con_835E_line
    .text "                    ", con_835E_line

    .byte con_8087_F3_jmp
    .word off_A159_цикл_караоке



off_A225_ожидание_5:
    .byte con_8087_F5, $02
    .byte con_cloud_pause + $E8
    
    .byte con_cloud_charlie + $09
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $01
    .text "  Good job! You've  ", con_835E_line
    .text "  done well making  ", con_835E_line
    .text "  it to this point. ", con_835E_line
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $00
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "     In a video     ", con_835E_line
    .text "   game...I mean.   ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $0B
    .byte con_cloud_window + $03
    .byte con_cloud_start_line + $01
    .text " I hope THIS isn't  ", con_835E_line
    .text "   your biggest     ", con_835E_line
    .text "  accomplishment!   ", con_835E_line
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $0A
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $01
    .text "    Charlie says:   ", con_835E_line
    .text " @Relax! Don't take ", con_835E_line
    .text "   it personally.@. ", con_835E_line

    .byte con_8087_F3_jmp
    .word off_A06C_peace_чарли_полное



off_A292_ожидание_6:
    .byte con_8087_F5, $02
    .byte con_cloud_pause + $E8
    
    .byte con_cloud_charlie + $01
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $00
    .text "    Hey, I think    ", con_835E_line
    .text "  the referee just  ", con_835E_line
    .text "     nodded off.    ", con_835E_line
    .text "     What nerve!    ", con_835E_line
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $0C
    .byte con_cloud_window + $03
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text "    WAAAAKE UP!     ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $02
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text " So much for that...", con_835E_line
    .text "    Well then...    ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $0B
    .byte con_cloud_window + $02
    .byte con_cloud_start_line + $01
    .text "   I guess we'll    ", con_835E_line
    .text "  BOTH sleep until  ", con_835E_line
    .text " this thing starts! ", con_835E_line
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $0B
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text "   Sweet dreams!    ", con_835E_line
    .text "                    ", con_835E_line

    .byte con_8087_F3_jmp
    .word off_9FBF_храп_чарли



off_A302_ожидание_7:
    .byte con_8087_F5, $02
    .byte con_cloud_pause + $E8
    
    .byte con_cloud_charlie + $0C
    .byte con_cloud_window + $02
    .byte con_cloud_start_line + $00
    .text "   We've reached    ", con_835E_line
    .text "    the climax!     ", con_835E_line
    .text "  Everyone's glued  ", con_835E_line
    .text "   to their seats!  ", con_835E_line
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $09
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $01
    .text "   I'm rooting for  ", con_835E_line
    .text "  you to win so you ", con_835E_line
    .text " can see the ending!", con_835E_line
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $03
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $01
    .text "   See? I can be    ", con_835E_line
    .text "  a nice guy when   ", con_835E_line
    .text "     I want to!     ", con_835E_line
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $02
    .byte con_cloud_window + $03
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "   ...you don't     ", con_835E_line
    .text "     think so?      ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $05
    .byte con_cloud_window + $02
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text "   Anyway_charge!  ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $05
    .byte con_cloud_window + $01
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "    Go forth and    ", con_835E_line
    .text " claim the victory! ", con_835E_line
    .text "                    ", con_835E_line
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $0A
    .byte con_cloud_window + $02
    .byte con_cloud_start_line + $01
    .text "                    ", con_835E_line
    .text "     Kick off!!     ", con_835E_line
    .text "                    ", con_835E_line
off_A3A6_loop:
    .byte con_cloud_pause + $B4
    
    .byte con_cloud_charlie + $09
    .byte con_cloud_window + $00
    .byte con_cloud_start_line + $00
    .text "                    ", con_835E_line
    .text "     Go Ja-pan!     ", con_835E_line
    .text "    Cha-cha-cha!    ", con_835E_line
    .text "                    ", con_835E_line

    .byte con_8087_F3_jmp
    .word off_A3A6_loop



.out .sprintf("Free bytes in bank A8: 0x%04X [%d]", ($E000 - *), ($E000 - *))



