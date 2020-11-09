.segment "BANK_35"
.include "copy_bank_ram.inc"
; текст облаков

; начальные байты
con_start_line                  = $00
con_pause                       = $00
con_window                      = $00
con_charlie                     = $00
con_exit                        = $F0
; unused                        = $F1
con_очистить_облако             = $F2
con_jump                        = $F3
con_выбор_облака                = $F4

; байты в тексте
con_действие_атаки              = $E0
con_действие_защиты             = $E1
con_крит_атаки                  = $E2
con_крит_защиты                 = $E3
con_игрок_с_мячом               = $E4
con_команда_без_мяча            = $E5
con_команда_с_мячом             = $E6
con_количество_нападающих       = $E7
con_нападающий_1                = $E8
con_нападающий_2                = $E9
con_нападающий_3                = $EA
con_нападающий_4                = $EB
con_действие_кипера             = $EC
con_голкипер                    = $ED
con_игрок_без_мяча              = $EE
; unused                        = $EF
; unused                        = $F0
con_команда_слева               = $F1
con_команда_справа              = $F2
con_F3                          = $F3       ; возраст ХЗ
con_F4                          = $F4       ; возраст ХЗ
con_слово_ball                  = $F5       ; ボール
con_слово_goal                  = $F6       ; ゴール
con_тильда                      = $F7       ; указывается количество символов
con_слово_okay                  = $F8       ; タイ
; unused                        = $F9
; unused                        = $FA
; unused                        = $FB
con_line                        = $FC       ; если байт после линии читается, то это уже новое облако

.export _cloud_0x00073_73
_cloud_0x00073_73:
- D - I - 0x031F52 22:9F42: F4        .byte con_выбор_облака, $04
- D - I - 0x031F54 22:9F44: 52 9F     .word off_9F52_ожидание_1
- D - I - 0x031F56 22:9F46: E1 9F     .word off_9FE1_ожидание_2
- D - I - 0x031F58 22:9F48: 8B A0     .word off_A08B_ожидание_3
- D - I - 0x031F5A 22:9F4A: 2A A1     .word off_A12A_ожидание_4
- D - I - 0x031F5C 22:9F4C: 25 A2     .word off_A225_ожидание_5
- D - I - 0x031F5E 22:9F4E: 92 A2     .word off_A292_ожидание_6
- D - I - 0x031F60 22:9F50: 02 A3     .word off_A302_ожидание_7

off_9F52_ожидание_1:
    .byte $F5, $02
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
    .byte con_jump
    .word off_9FBF_храп_чарли



off_9FE1_ожидание_2:
    .byte $F5, $02
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
    
    .byte con_jump
    .word off_A06D_peace_чарли_частичное



off_A08B_ожидание_3:
    .byte $F5, $02
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
    
    .byte con_jump
    .word off_A06C_peace_чарли_полное



off_A12A_ожидание_4:
    .byte $F5, $02
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

    .byte con_jump
    .word off_A159_цикл_караоке



off_A225_ожидание_5:
    .byte $F5, $02
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

    .byte con_jump
    .word off_A06C_peace_чарли_полное



off_A292_ожидание_6:
    .byte $F5, $02
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

    .byte con_jump
    .word off_9FBF_храп_чарли



off_A302_ожидание_7:
    .byte $F5, $02
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
off_A3A6_цикл:
    .byte con_pause + $B4
    
    .byte con_charlie + $09
    .byte con_window + $00
    .byte con_start_line + $00
    .text "                    ", con_line
    .text "     Go Ja-pan!     ", con_line
    .text "    Cha-cha-cha!    ", con_line
    .text "                    ", con_line

    .byte con_jump
    .word off_A3A6_цикл