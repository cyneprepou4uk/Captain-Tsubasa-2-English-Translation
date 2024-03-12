.segment "BANK_28"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000
; 0x050010-0x05200F



; текст облаков


.export _cloud_0x000073_73



; начальные байты
con_start_line                  = $00 ; 
con_pause                       = $00 ; 
con_window                      = $00 ; 
con_charlie                     = $00 ; 

; управляющие байты 0x030097
con_F0_exit                     = $F0 ; 
; con_F1                        = $F1 ; 
con_F2_очистить_облако          = $F2 ; 
con_F3_jump                     = $F3 ; 
con_F4_выбор_облака             = $F4 ; 
con_F5                          = $F5 ; очистить облако и записать таймер
con_F6_рандомный_выбор_облака   = $F6 ; new

; байты в тексте 0x03036E
con_действие_атаки              = $E0 ; 
con_действие_защиты             = $E1 ; 
con_крит_атаки                  = $E2 ; 
con_крит_защиты                 = $E3 ; 
con_игрок_с_мячом               = $E4 ; 
con_команда_без_мяча            = $E5 ; 
con_команда_с_мячом             = $E6 ; 
con_количество_нападающих       = $E7 ; 
con_нападающий_1                = $E8 ; 
con_нападающий_2                = $E9 ; 
con_нападающий_3                = $EA ; 
con_нападающий_4                = $EB ; 
con_действие_кипера             = $EC ; 
con_голкипер                    = $ED ; 
con_игрок_без_мяча              = $EE ; 
; con_EF                        = $EF ; 
; con_F0                        = $F0 ; 
con_команда_слева               = $F1 ; 
con_команда_справа              = $F2 ; 
con_F3_возраст_хз               = $F3 ; возраст ХЗ
con_F4_возраст_хз               = $F4 ; возраст ХЗ
con_слово_ball                  = $F5 ; ボール
con_слово_goal                  = $F6 ; ゴール
con_тильда                      = $F7 ; указывается количество символов
con_слово_okay                  = $F8 ; タイ
; con_F9                        = $F9 ; 
; con_FA                        = $FA ; 
; con_FB                        = $FB ; 
con_line                        = $FC ; если байт после линии читается, то это уже новое облако
; con_FD                        = $FD ; 
; con_FE                        = $FE ; 
; con_FF                        = $FF ; 



_cloud_0x000073_73:
    .byte con_F4_выбор_облака, $04    ; зависимость от команды в прохе
    .word off_9F52_ожидание_1
    .word off_9FE1_ожидание_2
    .word off_A08B_ожидание_3
    .word off_A12A_ожидание_4
    .word off_A225_ожидание_5
    .word off_A292_ожидание_6
    .word off_A302_ожидание_7

off_9F52_ожидание_1:
    .byte con_F5, $02
    .byte con_pause + $E8
    .byte con_charlie + $08
    .byte con_window + $00
    .byte con_start_line + $01
    .text "                    ", con_line
    .text "     *cough*        ", con_line
    .text "                    ", con_line

    .byte con_pause + $E0
    .byte con_charlie + $0B
    .byte con_window + $01
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "    Hit the @A@     ", con_line
    .text "  button, already!  ", con_line
    .text "                    ", con_line

    .byte con_pause + $B4
    .byte con_charlie + $01
    .byte con_window + $02
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "  This booth's so   ", con_line
    .text " quiet...and hot... ", con_line
    .text "                    ", con_line

    .byte con_pause + $B4
    .byte con_charlie + $02
    .byte con_window + $01
    .byte con_start_line + $01
    .text "      *sigh*        ", con_line
    .text "   Are we really    ", con_line
    .text "    doing this?     ", con_line

    .byte con_pause + $B4
    .byte con_charlie + $00
    .byte con_window + $02
    .byte con_start_line + $01
    .text "                    ", con_line
    .text " Uuh, so sleepy...  ", con_line
    .text "                    ", con_line

    .byte con_pause + $78
    .byte con_charlie + $07
    .byte con_window + $00
    .byte con_start_line + $01
    .text "                    ", con_line
    .text "   Good night...    ", con_line
    .text "                    ", con_line
off_9FBF_храп_чарли:
    .byte con_pause + $50
    .byte con_charlie + $07
    .byte con_window + $04
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "   *snore*          ", con_line
    .text "        *snore*     ", con_line
    .text "                    ", con_line

    .byte con_pause + $80
    .byte con_charlie + $07
    .byte con_window + $04
    .byte con_start_line + $01
    .text "                    ", con_line
    .text "     *snoooore*     ", con_line
    .text "                    ", con_line
    .byte con_F3_jump
    .word off_9FBF_храп_чарли



off_9FE1_ожидание_2:
    .byte con_F5, $02
    .byte con_pause + $E8
    .byte con_charlie + $0C
    .byte con_window + $02
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "      Alrighty!     ", con_line
    .text "   Let's kick off.  ", con_line
    .text "                    ", con_line
    
    .byte con_pause + $E0
    .byte con_charlie + $0B
    .byte con_window + $01
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "   C'mon, c'mon!    ", con_line
    .text "Press @A@, will ya? ", con_line
    .text "                    ", con_line

    .byte con_pause + $B4
    .byte con_charlie + $01
    .byte con_window + $00
    .byte con_start_line + $01
    .text "You're being really ", con_line
    .text " stubborn. Are you  ", con_line
    .text "a kid or something? ", con_line

    .byte con_pause + $B4
    .byte con_charlie + $02
    .byte con_window + $03
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "   Oh, for crying   ", con_line
    .text "     out loud!      ", con_line
    .text "                    ", con_line

    .byte con_pause + $B4
    .byte con_charlie + $01
    .byte con_window + $01
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "  Trying to stare   ", con_line
    .text "     me down?       ", con_line
    .text "                    ", con_line

    .byte con_pause + $B4
    .byte con_charlie + $0B
    .byte con_window + $00
    .byte con_start_line + $01
    .text "  Fine - since I'm  ", con_line
    .text "    so popular,     ", con_line
    .text "   I'll help you.   ", con_line
off_A06C_peace_чарли_полное:
    .byte con_pause + $B4
    
    .byte con_charlie + $05
    .byte con_window + $02
    .byte con_start_line + $01
    .text "                    ", con_line
    .text "      Peace!        ", con_line
    .text "                    ", con_line
off_A06D_peace_чарли_частичное:
    .byte con_pause + $45
    
    .byte con_charlie + $05
    .byte con_window + $01
    .byte con_start_line + $01
    .text "                    ", con_line
    .text "       Peace!       ", con_line
    .text "                    ", con_line
    .byte con_pause + $45
    
    .byte con_charlie + $05
    .byte con_window + $02
    .byte con_start_line + $01
    .text "                    ", con_line
    .text "      Peace!        ", con_line
    .text "                    ", con_line
    
    .byte con_F3_jump
    .word off_A06D_peace_чарли_частичное



off_A08B_ожидание_3:
    .byte con_F5, $02
    .byte con_pause + $E8
    .byte con_charlie + $04
    .byte con_window + $00
    .byte con_start_line + $01
    .text "    Press @A@,      ", con_line
    .text "    press @A@,      ", con_line
    .text "    press @A@...    ", con_line
    
    .byte con_pause + $E0
    .byte con_charlie + $02
    .byte con_window + $03
    .byte con_start_line + $01
    .text "  Oh, my stomach's  ", con_line
    .text "   growling...Ok_  ", con_line
    .text " where's that menu? ", con_line

    .byte con_pause + $B4
    .byte con_charlie + $0A
    .byte con_window + $00
    .byte con_start_line + $00
    .text " Hello, Raiken? I'd ", con_line
    .text "  like to place an  ", con_line
    .text " order of gyoza and ", con_line
    .text " fried rice, please.", con_line

    .byte con_pause + $B4
    .byte con_charlie + $0A
    .byte con_window + $01
    .byte con_start_line + $00
    .text "   Oh, and a side   ", con_line
    .text "  order of ramen _ ", con_line
    .text "    it'll be for    ", con_line
    .text " @Charlie@. Thanks! ", con_line

    .byte con_pause + $B4
    .byte con_charlie + $04
    .byte con_window + $02
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "   Getting hungry   ", con_line
    .text "      too, huh?     ", con_line
    .text "                    ", con_line

    .byte con_pause + $B4
    .byte con_charlie + $02
    .byte con_window + $00
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "  Too bad - I only  ", con_line
    .text "  ordered for one.  ", con_line
    .text "                    ", con_line

    .byte con_pause + $B4
    .byte con_charlie + $0B
    .byte con_window + $01
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "   Quit trying to   ", con_line
    .text "    mooch off me!   ", con_line
    .text "                    ", con_line
    
    .byte con_F3_jump
    .word off_A06C_peace_чарли_полное



off_A12A_ожидание_4:
    .byte con_F5, $02
    .byte con_pause + $E8
    
    .byte con_charlie + $0C
    .byte con_window + $00
    .byte con_start_line + $00
    .text "   Test one, test   ", con_line
    .text "  two_is this on?  ", con_line
    .text "    Ok! Time for    ", con_line
    .text "    some karaoke!   ", con_line
off_A159_цикл_караоке:
    .byte con_pause + $B4
    
    .byte con_charlie + $0A
    .byte con_window + $01
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "      Hey hey-      ", con_line
    .text "     Japan U-20~    ", con_line
    .text "                    ", con_line
    .byte con_pause + $80
    
    .byte con_charlie + $0A
    .byte con_window + $02
    .byte con_start_line + $01
    .text "                    ", con_line
    .text " Our shooting star~ ", con_line
    .text "                    ", con_line
    .byte con_pause + $80
    
    .byte con_charlie + $0A
    .byte con_window + $01
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "     Your skill     ", con_line
    .text "    and teamwork~   ", con_line
    .text "                    ", con_line
    .byte con_pause + $78
    
    .byte con_charlie + $0A
    .byte con_window + $02
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "    Brought you     ", con_line
    .text "     this far!      ", con_line
    .text "                    ", con_line
    .byte con_pause + $68
    
    .byte con_charlie + $0A
    .byte con_window + $01
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "    Lead by your    ", con_line
    .text "      captain~      ", con_line
    .text "                    ", con_line
    .byte con_pause + $78
    
    .byte con_charlie + $0A
    .byte con_window + $02
    .byte con_start_line + $01
    .text "                    ", con_line
    .text "     Tsu-ba-sa!     ", con_line
    .text "                    ", con_line
    .byte con_pause + $88
    
    .byte con_charlie + $05
    .byte con_window + $00
    .byte con_start_line + $01
    .text "                    ", con_line
    .text "       Yay!         ", con_line
    .text "                    ", con_line
    .byte con_pause + $3C
    
    .byte con_charlie + $05
    .byte con_window + $00
    .byte con_start_line + $01
    .text "                    ", con_line
    .text "      Alright!      ", con_line
    .text "                    ", con_line
    .byte con_pause + $88
    
    .byte con_charlie + $02
    .byte con_window + $01
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "    Hmm? You want   ", con_line
    .text "     an encore?     ", con_line
    .text "                    ", con_line
    .byte con_pause + $70
    
    .byte con_charlie + $03
    .byte con_window + $02
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "    Well, if you    ", con_line
    .text "       insist!      ", con_line
    .text "                    ", con_line
    .byte con_pause + $70
    
    .byte con_charlie + $0C
    .byte con_window + $03
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "     And-a one!     ", con_line
    .text "     And-a two!     ", con_line
    .text "                    ", con_line
    .byte con_pause + $70
    
    .byte con_charlie + $0C
    .byte con_window + $03
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "  And-a One! Two!   ", con_line
    .text "    Three! Four!    ", con_line
    .text "                    ", con_line

    .byte con_F3_jump
    .word off_A159_цикл_караоке



off_A225_ожидание_5:
    .byte con_F5, $02
    .byte con_pause + $E8
    
    .byte con_charlie + $09
    .byte con_window + $01
    .byte con_start_line + $01
    .text "  Good job! You've  ", con_line
    .text "  done well making  ", con_line
    .text "  it to this point. ", con_line
    .byte con_pause + $B4
    
    .byte con_charlie + $00
    .byte con_window + $00
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "     In a video     ", con_line
    .text "   game...I mean.   ", con_line
    .text "                    ", con_line
    .byte con_pause + $B4
    
    .byte con_charlie + $0B
    .byte con_window + $03
    .byte con_start_line + $01
    .text " I hope THIS isn't  ", con_line
    .text "   your biggest     ", con_line
    .text "  accomplishment!   ", con_line
    .byte con_pause + $B4
    
    .byte con_charlie + $0A
    .byte con_window + $00
    .byte con_start_line + $01
    .text "    Charlie says:   ", con_line
    .text " @Relax! Don't take ", con_line
    .text "   it personally.@. ", con_line

    .byte con_F3_jump
    .word off_A06C_peace_чарли_полное



off_A292_ожидание_6:
    .byte con_F5, $02
    .byte con_pause + $E8
    
    .byte con_charlie + $01
    .byte con_window + $01
    .byte con_start_line + $00
    .text "    Hey, I think    ", con_line
    .text "  the referee just  ", con_line
    .text "     nodded off.    ", con_line
    .text "     What nerve!    ", con_line
    .byte con_pause + $B4
    
    .byte con_charlie + $0C
    .byte con_window + $03
    .byte con_start_line + $01
    .text "                    ", con_line
    .text "    WAAAAKE UP!     ", con_line
    .text "                    ", con_line
    .byte con_pause + $B4
    
    .byte con_charlie + $02
    .byte con_window + $00
    .byte con_start_line + $00
    .text "                    ", con_line
    .text " So much for that...", con_line
    .text "    Well then...    ", con_line
    .text "                    ", con_line
    .byte con_pause + $B4
    
    .byte con_charlie + $0B
    .byte con_window + $02
    .byte con_start_line + $01
    .text "   I guess we'll    ", con_line
    .text "  BOTH sleep until  ", con_line
    .text " this thing starts! ", con_line
    .byte con_pause + $B4
    
    .byte con_charlie + $0B
    .byte con_window + $01
    .byte con_start_line + $01
    .text "                    ", con_line
    .text "   Sweet dreams!    ", con_line
    .text "                    ", con_line

    .byte con_F3_jump
    .word off_9FBF_храп_чарли



off_A302_ожидание_7:
    .byte con_F5, $02
    .byte con_pause + $E8
    
    .byte con_charlie + $0C
    .byte con_window + $02
    .byte con_start_line + $00
    .text "   We've reached    ", con_line
    .text "    the climax!     ", con_line
    .text "  Everyone's glued  ", con_line
    .text "   to their seats!  ", con_line
    .byte con_pause + $B4
    
    .byte con_charlie + $09
    .byte con_window + $01
    .byte con_start_line + $01
    .text "   I'm rooting for  ", con_line
    .text "  you to win so you ", con_line
    .text " can see the ending!", con_line
    .byte con_pause + $B4
    
    .byte con_charlie + $03
    .byte con_window + $00
    .byte con_start_line + $01
    .text "   See? I can be    ", con_line
    .text "  a nice guy when   ", con_line
    .text "     I want to!     ", con_line
    .byte con_pause + $B4
    
    .byte con_charlie + $02
    .byte con_window + $03
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "   ...you don't     ", con_line
    .text "     think so?      ", con_line
    .text "                    ", con_line
    .byte con_pause + $B4
    
    .byte con_charlie + $05
    .byte con_window + $02
    .byte con_start_line + $01
    .text "                    ", con_line
    .text "   Anyway_charge!  ", con_line
    .text "                    ", con_line
    .byte con_pause + $B4
    
    .byte con_charlie + $05
    .byte con_window + $01
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "    Go forth and    ", con_line
    .text " claim the victory! ", con_line
    .text "                    ", con_line
    .byte con_pause + $B4
    
    .byte con_charlie + $0A
    .byte con_window + $02
    .byte con_start_line + $01
    .text "                    ", con_line
    .text "     Kick off!!     ", con_line
    .text "                    ", con_line
off_A3A6_loop:
    .byte con_pause + $B4
    
    .byte con_charlie + $09
    .byte con_window + $00
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "     Go Ja-pan!     ", con_line
    .text "    Cha-cha-cha!    ", con_line
    .text "                    ", con_line

    .byte con_F3_jump
    .word off_A3A6_loop



.out .sprintf("Free bytes in bank 28: 0x%04X [%d]", ($E000 - *), ($E000 - *))
