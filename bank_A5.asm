.segment "BANK_A5"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x04A010-0x04C00F



; данные катсцен
; поинтеры в 0x000485



    .word _off014_A43B_22_финальная_катсцена



_off014_A43B_22_финальная_катсцена:
;   .byte con_8545_sound, $59
;   .byte con_8545_exit
    
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $0D
    .byte con_8545_animation, $01, $43
    .byte con_8545_pause, $78
    .byte con_8545_screen_on
    .byte con_8545_sound, $4F
    .byte con_8545_pause, $3C
    .byte con_8545_offset, $04
    .text "@We did it!"
    .byte con_8545_pause, $0F
    .text " We did it!!@"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "@The World Cup is ours!@"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "@Japan is victorious!@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_bg_2, $10
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_bg_2, $2B
    .byte con_8545_F5, $04
    .byte con_8545_offset, $06
    .text "@Great job,"
    .byte con_8545_pause, $0F
    .text " guys"
    .byte con_8545_speed, $08
    .byte con_8545_F8, $02
    .text "...@"
    .byte con_8545_pause, $28
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $43
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_bg_2, $11
    .byte con_8545_sound, $62
    .byte con_8545_pause, $50
    .byte con_8545_window, $01
    .byte con_8545_charlie, $02
    .byte con_8545_speed, $04
    .byte con_8545_offset, $09
    .text "The Japanese players"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "begin their victory"
    .byte con_8545_sound, $69
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "lap,"
    .byte con_8545_pause, $14
    .text " with Captain"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "Tsubasa at the lead!"
    .byte con_8545_pause, $28
    .byte con_8545_sound, $69
    .byte con_8545_pause, $28
    .byte con_8545_clear_2
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $09
    .text "Japan has truly"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "earned their spoils!"
    .byte con_8545_pause, $3C
    .byte con_8545_sound, $69
    .byte con_8545_pause, $78
    .byte con_8545_clear_all
    .byte con_8545_clear_1
    
    
    
    .byte con_8545_sound, $62
    .byte con_8545_clear_all
    .byte con_8545_charlie, $FF
    .byte con_8545_toggle_cam
    .byte con_8545_F8, $0E
    .byte con_8545_offset, $06
    .text "@You brought us to"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "victory,"
    .byte con_8545_pause, $0F
    .text " Tsubasa!@"
    .byte con_8545_F8, $02
    .byte con_8545_bg_2, $10
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_offset, $03
    .text "@No,"
    .byte con_8545_pause, $0F
    .text " not just me."
    .byte con_8545_pause, $1E
    .text " All"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "of us played a part in"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "this,"
    .byte con_8545_pause, $14
    .text " working together!@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $06
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $0A
    .byte con_8545_offset, $0A
    .text "@Together"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $39
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .byte con_8545_offset, $04
    .text "@Tsubasa's right."
    .byte con_8545_pause, $1E
    .text " We"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "couldn't have done this"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "without each other.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $20
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $C7
    .byte con_8545_pause, $0A
    .byte con_8545_offset, $06
    .text "@Phew"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $28
    .byte con_8545_speed, $04
    .text "it's taken"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "a lot to get here.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $1C
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $C8
    .byte con_8545_pause, $14
    .byte con_8545_offset, $06
    .text "@Yeah,"
    .byte con_8545_pause, $14
    .text " everyone gave"
    .byte con_8545_pause, $08
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "100"
    .byte con_8545_pause, $14
    .text "%"
    .byte con_8545_pause, $14
    .text " all the way!@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $3F
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $0A
    .byte con_8545_offset, $07
    .text "@Every single one.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    
    
    
    .byte con_8545_bg_2, $2B
    .byte con_8545_animation, $01, $43
    .byte con_8545_toggle_cam
    .byte con_8545_sound, $62
    .byte con_8545_bg_2, $10
    .byte con_8545_pause, $14
    .byte con_8545_window, $01
    .byte con_8545_charlie, $02
    .byte con_8545_speed, $04
    .byte con_8545_offset, $09
    .text "The team really"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "acted as one to win"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "this tournament!"
    .byte con_8545_pause, $50
    .byte con_8545_clear_2
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_speed, $04
    .byte con_8545_offset, $09
    .text "Congratulations to"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "the Japan squad!"
    .byte con_8545_pause, $28
    .byte con_8545_charlie, $04
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "Let's celebrate!!"
    .byte con_8545_sound, $62
    .byte con_8545_pause, $78
    .byte con_8545_clear_all
    .byte con_8545_clear_1
    
    
    
    .byte con_8545_charlie, $FF
    .byte con_8545_bg_2, $11
    .byte con_8545_animation, $01, $0A
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_bg_2, $10
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $04
    .text "@That was one hell of a"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "second half,"
    .byte con_8545_pause, $14
    .text " Coimbra.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $5F
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $0A
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $07
    .text "(Dammit,"
    .byte con_8545_pause, $0F
    .text " if only"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "he had let me"
    .byte con_8545_speed, $08
    .text "...)"
    .byte con_8545_pause, $28
    .byte con_8545_new_line
    .byte con_8545_speed, $02
    .byte con_8545_offset, $06
    .byte con_8545_toggle_mouth
    .text " @A"
    .byte con_8545_toggle_mouth
    .text "h!"
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text " Carlos?!@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $0A
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_offset, $04
    .text "@You're a bit of an ass,"
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "but you really were on"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "fire out there."
    .byte con_8545_pause, $28
    .text " I wish"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "we'd seen more of you.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_animation, $01, $63
    .byte con_8545_pause, $14
    .byte con_8545_offset, $04
    .text "@I'm not ashamed of"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "today's outcome."
    .byte con_8545_pause, $1E
    .text " Our"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "battle doesn't end"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "here."
    .byte con_8545_pause, $14
    .text " It's just begun.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $03
    .text "@To stand up to Japan and"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "win the World Cup next"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "time,"
    .byte con_8545_pause, $1E
    .text " we'll need our very"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "best working together.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $14
    
    
    
    .byte con_8545_animation, $01, $5F
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $03
    .text "@You're starting to sound"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "like the team's captain"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "yourself,"
    .byte con_8545_pause, $14
    .text " Carlos.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $63
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $FF, $00, $0F
    .byte con_8545_pause, $0A
    .byte con_8545_offset, $05
    .text "@I'd settle for being"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "a Super Striker!@"
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_bg_2, $06
    .byte con_8545_animation, $01, $A3
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $C2
    .byte con_8545_sound, $25
    .byte con_8545_F5, $08
    .byte con_8545_pause, $14
    .byte con_8545_sound, $62
    .byte con_8545_toggle_cam
    .byte con_8545_F5, $04
    .byte con_8545_pause, $B4
    .byte con_8545_sound, $31
    .byte con_8545_pause, $3C
    .byte con_8545_screen_off
    .byte con_8545_pause, $78
    .byte con_8545_sound, $01
    .byte con_8545_pause, $3C
    .byte con_8545_bg_1, $1A
    .byte con_8545_animation, $01, $59
    .byte con_8545_sound, $69
    .byte con_8545_screen_on
    .byte con_8545_sound, $51
    .byte con_8545_F5, $04
    .byte con_8545_pause, $78
    .byte con_8545_pause, $F0
    .byte con_8545_pause, $F0
    .byte con_8545_bg_2, $10
    .byte con_8545_offset, $03
    .text "@Well done,"
    .byte con_8545_pause, $14
    .text " Tsubasa."
    .byte con_8545_pause, $1E
    .text " Well"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "done indeed."
    .byte con_8545_pause, $1E
    .text " That was a"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "fantastic display today.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $05
    .text "@I think Jairo would"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "be proud of how you"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "used his technique.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_offset, $03
    .text "@It was your letter that"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "started it all,"
    .byte con_8545_pause, $14
    .text " Roberto."
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "I just took the ball"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "and ran with it.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $3B
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $14
    .byte con_8545_speed, $02
    .byte con_8545_offset, $04
    .byte con_8545_toggle_mouth
    .text "@He"
    .byte con_8545_toggle_mouth
    .text "h. "
    .byte con_8545_pause, $3C
    .byte con_8545_animation, $01, $3C
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .text "Although"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text "your"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "Cyclone isn't quite"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "the same as Jairo's.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $FF, $00, $0C
    .byte con_8545_pause, $14
    .byte con_8545_animation, $01, $12
    .byte con_8545_speed, $02
    .byte con_8545_offset, $09
    .text "@Eh?@"
    .byte con_8545_pause, $1E
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $3B
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $28
    .byte con_8545_speed, $04
    .byte con_8545_offset, $03
    .text "@No,"
    .byte con_8545_pause, $1E
    .text " rather,"
    .byte con_8545_pause, $28
    .text " it'd be"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "better to say that nobody"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "besides Jairo can shoot"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "the"
    .byte con_8545_pause, $08
    .text " @true@ "
    .byte con_8545_pause, $0F
    .text "Cyclone.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $03
    .text "@It was created by a man"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "who lacked a critical"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "ability to score goals.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $04
    .text "@To him,"
    .byte con_8545_pause, $14
    .text " it was a way"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "to cover his weakness,"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "and it came to define"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "his entire career.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $03
    .text "@The Cyclone isn't just a"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "technique:"
    .byte con_8545_pause, $1E
    .text " it's Jairo's"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "legacy -"
    .byte con_8545_pause, $1E
    .text " to Brazil,"
    .byte con_8545_pause, $14
    .text " and"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "to football itself.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_offset, $04
    .text "@It's all that,"
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $14
    .byte con_8545_speed, $02
    .byte con_8545_toggle_mouth
    .text " hu"
    .byte con_8545_toggle_mouth
    .text "h"
    .byte con_8545_speed, $08
    .text "...?@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $3B
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .byte con_8545_offset, $07
    .text "@Tsubasa,"
    .byte con_8545_pause, $1E
    .text " you had"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "the same mindset"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "Jairo did.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $14
    
    
    
    .byte con_8545_offset, $05
    .text "@You saw your need,"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "and by your own hands"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "created what was"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "necessary to win.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $03
    .text "@But you approached it"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "with your own unique"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "twist,"
    .byte con_8545_pause, $14
    .text " and came up with"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "a superb shot in the end.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_offset, $05
    .text "@And so"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text "that's why"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Japan has its own"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Super Striker now!@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $28
    .byte con_8545_offset, $07
    .text "@Roberto"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $3C
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $28
    .byte con_8545_speed, $04
    .byte con_8545_offset, $04
    .text "@Jairo's time came and"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "went,"
    .byte con_8545_pause, $1E
    .text " while the Cyclone"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "waited for someone"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "new to possess it.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $04
    .text "@Someone who will build"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "a new legacy on the"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "foundations of the old.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $57
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $28
    .byte con_8545_offset, $05
    .text "@A legacy"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $3C
    .byte con_8545_animation, $01, $66
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text "I'll do"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "it,"
    .byte con_8545_pause, $14
    .text " Roberto!"
    .byte con_8545_pause, $1E
    .text " Let's"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "build a new legacy!@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $3B
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $05
    .text "@I'll help you do"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "just that,"
    .byte con_8545_pause, $14
    .text " Tsubasa."
    .byte con_8545_pause, $28
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "One day at a time"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $50
    
    
    
    .byte con_8545_F5, $FF
    .byte con_8545_clear_1
    .byte con_8545_bg_2, $0D
    .byte con_8545_animation, $01, $0E
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .byte con_8545_offset, $08
    .text "@Guys!@"
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "@We'll chart our"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "own path,"
    .byte con_8545_pause, $08
    .text " too!@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $03
    .text "@Blazing with a light the"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "entire world will see!@"
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_speed, $01
    .byte con_8545_offset, $0B
    .text "@BANZAI!!@"
    .byte con_8545_new_line
    .byte con_8545_offset, $0B
    .text "@BANZAI!!@"
    .byte con_8545_sound, $62
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_bg_1, $45
    .byte con_8545_animation, $01, $53
    .byte con_8545_screen_on
    .byte con_8545_window, $00
    .byte con_8545_charlie, $04
    .byte con_8545_speed, $04
    .byte con_8545_offset, $09
    .text "And now,"
    .byte con_8545_sound, $69
    .byte con_8545_pause, $14
    .text " Tsubasa"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "is carrying the"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "winner's trophy"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "in his hands!"
    .byte con_8545_sound, $62
    .byte con_8545_pause, $50
    .byte con_8545_clear_2
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_speed, $04
    .byte con_8545_offset, $09
    .text "Congratulations,"
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "Japan,"
    .byte con_8545_pause, $1E
    .text " the best"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "youth side in"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "the world!!"
    .byte con_8545_sound, $62
    .byte con_8545_pause, $F0
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_sound, $31
    .byte con_8545_pause, $78
    .byte con_8545_sound, $01
    .byte con_8545_pause, $3C
    .byte con_8545_clear_1
    .byte con_8545_clear_all
    .byte con_8545_charlie, $FF
    .byte con_8545_bg_1, $11
    .byte con_8545_bg_2, $10
    .byte con_8545_animation, $01, $42
    .byte con_8545_palette, $00
    .byte con_8545_sound, $47
    .byte con_8545_F5, $04
    .byte con_8545_pause, $3C
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $03
    .text "@They're one outstanding"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "team,"
    .byte con_8545_pause, $14
    .text " Mikami.@"
    .byte con_8545_pause, $3C
    .byte con_8545_toggle_mouth
    .byte con_8545_new_line
    .byte con_8545_offset, $03
    .text "@That they are,"
    .byte con_8545_pause, $1E
    .text " Katagiri.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $40
    .byte con_8545_toggle_cam
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $05
    .text "@With players like"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "these,"
    .byte con_8545_pause, $1E
    .text " Japan could"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "become a real World"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Cup contender one day.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $42
    .byte con_8545_toggle_cam
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $04
    .text "@If their goal reaches"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "that far,"
    .byte con_8545_pause, $14
    .text " they'll face"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "even bigger challenges"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "in the future.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $40
    .byte con_8545_toggle_cam
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $14
    .byte con_8545_speed, $02
    .byte con_8545_offset, $05
    .byte con_8545_toggle_mouth
    .text "@Hm"
    .byte con_8545_toggle_mouth
    .text "m. "
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $28
    .byte con_8545_speed, $04
    .text "I have faith in"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "them_"
    .byte con_8545_pause, $1E
    .text "and I know you"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "won't let them slack"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "off for a moment.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $42
    .byte con_8545_toggle_cam
    .byte con_8545_pause, $14
    .byte con_8545_offset, $05
    .text "@Well,"
    .byte con_8545_pause, $08
    .text " now"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text "when you"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "work hard,"
    .byte con_8545_pause, $14
    .text " you have"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "to play hard.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $50
    
    
    
    .byte con_8545_sound, $69
    .byte con_8545_pause, $1E
    .byte con_8545_window, $00
    .byte con_8545_charlie, $04
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $09
    .text "After having circled"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "around the field on"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "their victory lap,"
    .byte con_8545_sound, $69
    .byte con_8545_pause, $50
    .byte con_8545_clear_2
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $09
    .text "Japan are going"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "back to the bench!"
    .byte con_8545_pause, $50
    .byte con_8545_clear_all
    .byte con_8545_clear_1
    .byte con_8545_charlie, $FF
    
    
    
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $28
    .byte con_8545_offset, $07
    .text "@You've all done"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "awesomely,"
    .byte con_8545_pause, $14
    .text " boys.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $05
    .text "@Let's get back to the"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "hotel and go wild!@"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $02
    .byte con_8545_offset, $0C
    .text "@Yeah!@"
    .byte con_8545_sound, $62
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $0B
    .text "@Alright!@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_animation, $01, $24
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_bg_2, $2E
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .byte con_8545_offset, $06
    .text "@Hey,"
    .byte con_8545_pause, $14
    .text " uh"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $28
    .byte con_8545_animation, $01, $07
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text "where ya"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "goin',"
    .byte con_8545_pause, $14
    .text " Tsubasa?@"
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "@I'll be back soon,"
    .byte con_8545_pause, $28
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "go on without me.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $04
    .text "@Hey,"
    .byte con_8545_pause, $0F
    .text " c'mon"
    .byte con_8545_animation, $01, $65
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text "Tsubasa"
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_sound, $31
    .byte con_8545_pause, $78
    .byte con_8545_sound, $01
    .byte con_8545_pause, $78
    .byte con_8545_sound, $48
    .byte con_8545_pause, $3C
    .byte con_8545_palette, $00
    .byte con_8545_bg_2, $4A
    .byte con_8545_speed, $04
    .byte con_8545_offset, $07
    .text "@You came...@"
    .byte con_8545_pause, $3C
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_animation, $01, $28
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_F5, $04
    .byte con_8545_pause, $0A
    .byte con_8545_speed, $02
    .byte con_8545_offset, $06
    .text "@Ah_"
    .byte con_8545_pause, $28
    .byte con_8545_bg_2, $57
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $28
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $04
    .text "Tsubasa!@"
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $50
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "@It's a long way just"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "to get here"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $26
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .byte con_8545_offset, $03
    .text "@Yoko"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text "she was insistent"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "I come and cheer you on."
    .byte con_8545_pause, $3C
    .byte con_8545_animation, $01, $27
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "Very insistent.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $05
    .text "@I see."
    .byte con_8545_pause, $3C
    .text " I'm surprised"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Yoko did that.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $27
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_offset, $02
    .text "@I'm super,"
    .byte con_8545_pause, $1E
    .text " super glad she"
    .byte con_8545_new_line
    .byte con_8545_offset, $03
    .text "did."
    .byte con_8545_pause, $28
    .text " All so I could say"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $3C
    .byte con_8545_animation, $01, $26
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_speed, $04
    .byte con_8545_offset, $03
    .text "congratulations,"
    .byte con_8545_pause, $28
    .text " Tsubasa.@"
    .byte con_8545_F5, $FF
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_bg_2, $46
    .byte con_8545_animation, $02, $90, $9D
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_bg_2, $4C
    .byte con_8545_pause, $F0
    .byte con_8545_animation, $01, $68
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_bg_2, $47
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $04
    .text "@Yoko,"
    .byte con_8545_pause, $1E
    .text " you're not only"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "team manager,"
    .byte con_8545_pause, $14
    .text " but team"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "matchmaker?"
    .byte con_8545_pause, $14
    .text " Na-"
    .byte con_8545_pause, $08
    .text "ha-"
    .byte con_8545_pause, $08
    .text "ha"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $2B
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .byte con_8545_offset, $07
    .text "@Oh,"
    .byte con_8545_pause, $0F
    .text " hush."
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "It was worth it.@"
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_pause, $3C
    .byte con_8545_clear_1
    .byte con_8545_bg_1, $33
    .byte con_8545_animation, $01, $56
    .byte con_8545_palette, $FF, $20, $3F
    .byte con_8545_pause, $14
    .byte con_8545_speed, $02
    .byte con_8545_offset, $06
    .text "@Eh?!"
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text " So I'll be"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "in Brazil for"
    .byte con_8545_speed, $08
    .text "...?@"
    .byte con_8545_pause, $50
    .byte con_8545_bg_2, $32
    .byte con_8545_clear_1
    
    
    
    .byte con_8545_animation, $01, $2A
    .byte con_8545_toggle_cam
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .byte con_8545_offset, $03
    .text "@Yes,"
    .byte con_8545_pause, $1E
    .text " but you can't tell"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "a soul about this until"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "after the finals.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $4F
; рот автоматически закрыт в таймере анимации
    .byte con_8545_toggle_cam
    .byte con_8545_pause, $28
    .byte con_8545_offset, $08
    .text "@Can I trust you"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "with this?@"
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "@Of"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .text "of course!@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $14
    
    
    
    .byte con_8545_animation, $01, $2A
    .byte con_8545_toggle_cam
    .byte con_8545_pause, $1E
    .byte con_8545_animation, $01, $2B
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $07
    .text "@Glad to hear it.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_F4, $02
    .byte con_8545_bg_1, $47
    .byte con_8545_bg_2, $4C
    .byte con_8545_F4, $03
    .byte con_8545_animation, $01, $2B
    .byte con_8545_screen_on
    .byte con_8545_pause, $3C
    .byte con_8545_offset, $04
    .text "@And so,"
    .byte con_8545_pause, $1E
    .text " I came up with"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "the play that someone"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "else scored with"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_animation, $01, $2A
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .byte con_8545_offset, $05
    .text "@I've played my role,"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "but it's a bit lonely"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "on the sidelines"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    .byte con_8545_animation, $01, $2B
    .byte con_8545_pause, $50
    
    
    
    .byte con_8545_animation, $01, $68
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .byte con_8545_offset, $03
    .text "@Y'"
    .byte con_8545_pause, $08
    .text "know,"
    .byte con_8545_pause, $1E
    .text " Yoko"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $50
    .byte con_8545_speed, $04
    .text "if you're"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "serious about @scoring@,"
    .byte con_8545_pause, $28
    .byte con_8545_animation, $01, $2B
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $28
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "then you and I could_@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $50
    
    
    
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $0A
    .byte con_8545_offset, $09
    .text "@Ishizaki"
    .byte con_8545_toggle_mouth
    .text "..."
    .byte con_8545_pause, $3C
    .byte con_8545_animation, $01, $2A
    .byte con_8545_sound, $01
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $01
    .text "!@"
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "@NO GOOD!!@"
    .byte con_8545_pause, $1E
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_bg_2, $62
    .byte con_8545_animation, $01, $6B
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_F5, $0C
    .byte con_8545_F8, $15
    .byte con_8545_speed, $00
    .byte con_8545_offset, $08
    .text "@OW!"
    .byte con_8545_sound, $0E
    .byte con_8545_pause, $14
    .text "-OW!"
    .byte con_8545_sound, $0E
    .byte con_8545_pause, $14
    .text "-OW!"
    .byte con_8545_sound, $0E
    .byte con_8545_pause, $14
    .text "-OW!@"
    .byte con_8545_sound, $0E
    .byte con_8545_pause, $08
    .byte con_8545_new_line
    .byte con_8545_new_line
    .byte con_8545_offset, $0B
    .text "@BANZAI!!@"
    .byte con_8545_pause, $14
    .byte con_8545_sound, $30
    .byte con_8545_F8, $15
    .byte con_8545_F5, $FF
    .byte con_8545_palette, $FF, $25, $43
    .byte con_8545_pause, $F0
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_bg_1, $47
    .byte con_8545_animation, $01, $2B
    .byte con_8545_pause, $28
    .byte con_8545_sound, $48
    .byte con_8545_screen_on
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .byte con_8545_offset, $05
    .text "@Well!"
    .byte con_8545_pause, $14
    .text " I'm feeling"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "much better now."
    .byte con_8545_pause, $14
    .byte con_8545_animation, $01, $2A
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Let's be on our way"
    .byte con_8545_animation, $01, $2C
    .text ".@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_bg_2, $69
    .byte con_8545_animation, $01, $25
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $28
    .byte con_8545_offset, $05
    .text "@How can you hit"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "harder than a ball?!@"
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_sound, $31
    .byte con_8545_pause, $78
    .byte con_8545_sound, $01
    .byte con_8545_pause, $78
    .byte con_8545_bg_1, $4F
    .byte con_8545_bg_2, $52
    .byte con_8545_animation, $01, $66
    .byte con_8545_sound, $55
    .byte con_8545_pause, $3C
    .byte con_8545_screen_on
    .byte con_8545_pause, $50
    .byte con_8545_offset, $06
    .text "@Sanae,"
    .byte con_8545_pause, $28
    .text " everyone is"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "waiting for me,"
    .byte con_8545_pause, $28
    .text " I"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "should get going.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $29
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $28
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .byte con_8545_offset, $05
    .text "@..."
    .byte con_8545_pause, $28
    .byte con_8545_animation, $01, $26
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .text "take"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text "take care.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_bg_2, $02
    .byte con_8545_animation, $01, $47
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $3C
    .byte con_8545_offset, $09
    .text "@You too"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_speed, $04
    .byte con_8545_offset, $0A
    .text "Well,"
    .byte con_8545_pause, $14
    .text " then_@"
    .byte con_8545_pause, $3C
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_animation, $01, $69
    .byte con_8545_pause, $14
    .byte con_8545_bg_2, $52
    .byte con_8545_animation, $01, $29
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_F8, $02
    .byte con_8545_sound, $31
    .byte con_8545_pause, $78
    .byte con_8545_sound, $01
    .byte con_8545_pause, $50
    .byte con_8545_bg_2, $02
    .byte con_8545_animation, $01, $55
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $0A
    .byte con_8545_speed, $02
    .byte con_8545_offset, $0F
    .text "@Tsubasa!@"
    .byte con_8545_pause, $3C
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_sound, $50
    .byte con_8545_pause, $3C
    .byte con_8545_bg_2, $4B
    .byte con_8545_animation, $01, $B7
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .byte con_8545_offset, $06
    .text "@Tsubasa"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .text "when will"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "we meet again?!@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_bg_2, $02
    .byte con_8545_animation, $01, $55
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $78
    .byte con_8545_offset, $06
    .text "@The whole reason I"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "came to Brazil was"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "to become a pro.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $50
    
    
    
    .byte con_8545_offset, $04
    .text "@I can't leave until I"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "reach this goal."
    .byte con_8545_pause, $1E
    .text " I've"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "staked my life on it.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_bg_2, $4B
    .byte con_8545_animation, $01, $B7
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $3C
    .byte con_8545_offset, $06
    .text "@Then"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $28
    .byte con_8545_speed, $04
    .text "then what_@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_bg_2, $02
    .byte con_8545_animation, $01, $02
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $50
    .byte con_8545_offset, $04
    .text "@Sanae."
    .byte con_8545_pause, $3C
    .byte con_8545_sound, $19
    .byte con_8545_pause, $28
    .text " When I become"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "a big league pro"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $3C
    .byte con_8545_bg_2, $4B
    .byte con_8545_animation, $01, $B7
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_F8, $02
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_speed, $04
    .byte con_8545_offset, $05
    .text "I want you by my side.@"
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_speed, $02
    .byte con_8545_offset, $04
    .byte con_8545_animation, $01, $B8
    .text "@...!@"
    .byte con_8545_pause, $3C
    .byte con_8545_clear_1
    .byte con_8545_pause, $14
    
    
    
    .byte con_8545_bg_2, $23
    .byte con_8545_animation, $01, $AD
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .byte con_8545_offset, $04
    .text "@Until then,"
    .byte con_8545_pause, $3C
    .text " can you_"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "will you wait for me?@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $14
    
    
    
    .byte con_8545_bg_2, $4B
    .byte con_8545_animation, $01, $B7
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $78
    .byte con_8545_speed, $08
    .byte con_8545_offset, $05
    .byte con_8545_toggle_mouth
    .text "@..."
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .text "yes."
    .byte con_8545_pause, $3C
    .text " Tsubasa,"
    .byte con_8545_pause, $28
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "follow your dreams,"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "and I'll be waiting"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "for you at the goal!@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_bg_2, $4D
    .byte con_8545_animation, $03, $B9, $BD, $B0
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_F8, $14
    .byte con_8545_pause, $F0
    .byte con_8545_screen_off
    .byte con_8545_bg_1, $4E
    .byte con_8545_animation, $02, $BD, $04
    .byte con_8545_palette, $00
    .byte con_8545_F8, $05
    .byte con_8545_pause, $F0
    .byte con_8545_pause, $F0
    .byte con_8545_F8, $06
    .byte con_8545_F8, $16
    .byte con_8545_sound, $6A
    .byte con_8545_F8, $01, $04
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $05
    .byte con_8545_pause, $3C
    .byte con_8545_F8, $01, $08
    .byte con_8545_pause, $3C
    .byte con_8545_F8, $01, $0A
    .byte con_8545_pause, $3C
    .byte con_8545_F8, $01, $0C
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $0E
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $10
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $12
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $14
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $16
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $18
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $1A
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $1C
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $1E
    .byte con_8545_pause, $78
    .byte con_8545_F8, $01, $1C
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $1A
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $18
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $16
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $14
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $12
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $10
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $0E
    .byte con_8545_pause, $28
    .byte con_8545_animation, $01, $B4
    .byte con_8545_palette, $00
    .byte con_8545_F8, $01, $0C
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $0A
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $08
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $06
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $04
    .byte con_8545_pause, $28
    .byte con_8545_F8, $01, $02
    .byte con_8545_pause, $28
    .byte con_8545_F8, $02
    .byte con_8545_F8, $05
    .byte con_8545_pause, $50
    .byte con_8545_sound, $59
    .byte con_8545_F8, $0F
    .byte con_8545_pause, $78
    .byte con_8545_base_offset
    .word $22AE
    .byte con_8545_speed, $00
    .text "CAST"
    .byte con_8545_new_line
    .byte con_8545_pause, $78
    .byte con_8545_screen_off
    .byte con_8545_exit



.out .sprintf("Free bytes in bank A5: 0x%04X [%d]", ($C000 - *), ($C000 - *))



