.segment "BANK_A2"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x044010-0x04600F



; данные катсцен
; поинтеры в 0x000485



    .word _off014_A195_13_после_победы_над_японией
    .word _off014_A5D6_14_после_победы_над_китаем
    .word _off014_A703_15_после_победы_над_кореей
    .word _off014_AC95_16_разговор_репортеров



_off014_A195_13_после_победы_над_японией:
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $0F
    .byte con_8545_animation, $01, $43
    .byte con_8545_sound, $01
    .byte con_8545_pause, $78
    .byte con_8545_sound, $69
    .byte con_8545_pause, $3C
    .byte con_8545_screen_on
    .byte con_8545_sound, $4D
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $02
    .byte con_8545_offset, $03
    .text "@Hooray!"
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text " We've done it!@"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $03
    .text "@We've won the Japan Cup!@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_bg_2, $2E
    .byte con_8545_animation, $01, $3B
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_F5, $04
    .byte con_8545_bg_2, $10
    .byte con_8545_pause, $3C
    .byte con_8545_offset, $07
    .text "@We couldn't have"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "done this without"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "you,"
    .byte con_8545_pause, $1E
    .text " Tsubasa.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_offset, $05
    .text "@That's it for us"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "this season."
    .byte con_8545_pause, $1E
    .text " You're"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "free to join the"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Japan squad again.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $4E
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_bg_2, $11
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $03
    .text "@It's been three years"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "since I started playing"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "with Sao Paulo,"
    .byte con_8545_pause, $0F
    .text " you know?@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $50
    
    
    
    .byte con_8545_animation, $01, $11
    .byte con_8545_pause, $0A
    .byte con_8545_offset, $05
    .text "@Now Babington's going"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "to Argentina,"
    .byte con_8545_pause, $1E
    .text " and"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Brazil are getting"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Amaral and Dotor.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_offset, $06
    .text "@If Japan are my"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "friends,"
    .byte con_8545_pause, $1E
    .text " it's like"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "South America's"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "my enemy"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_animation, $01, $4E
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .byte con_8545_offset, $04
    .text "@Still,"
    .byte con_8545_pause, $1E
    .text " I'll be fine."
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "The ball is my friend,"
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "and I'll make you and"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "everyone else proud"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $06
    .text "by winning the World"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Cup."
    .byte con_8545_pause, $3C
    .text " For now"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $28
    .byte con_8545_new_line
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $04
    .byte con_8545_offset, $06
    .text "Sayonara,"
    .byte con_8545_pause, $28
    .text " Roberto.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $3F
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $06
    .text "@Tsubasa,"
    .byte con_8545_pause, $14
    .text " I'm glad"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "you'll be playing"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "for Japan again.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $4E
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_bg_2, $30
    .byte con_8545_offset, $06
    .text "@Yeah."
    .byte con_8545_pause, $14
    .text " The Golden"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "Duo will"
    .byte con_8545_pause, $14
    .byte con_8545_sound, $01
    .byte con_8545_animation, $01, $12
    .text "_"
    .byte con_8545_pause, $50
    .byte con_8545_speed, $08
    .text "will...@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_speed, $04
    .byte con_8545_offset, $05
    .text "@Tsubasa"
    .byte con_8545_speed, $08
    .text "...?"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_speed, $04
    .byte con_8545_offset, $06
    .text "What's the matter?@"
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_speed, $08
    .byte con_8545_offset, $05
    .byte con_8545_sound, $48
    .byte con_8545_pause, $14
    .text "@I_@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    .byte con_8545_F5, $FF
    
    
    
    .byte con_8545_animation, $01, $26
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $06
    .byte con_8545_offset, $03
    .text " "
    .byte con_8545_F8, con_A491_02
    .byte con_8545_pause, $3C
    .text "@Sanae,"
    .byte con_8545_pause, $3C
    .text " you're here"
    .byte con_8545_speed, $06
    .text "...@"
    .byte con_8545_pause, $F0
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    .byte con_8545_bg_1, $31
    .byte con_8545_animation, $02, $9C, $8E
    .byte con_8545_screen_on
    .byte con_8545_F5, $05
    .byte con_8545_F4, con_86C6_показать_текст
    .byte con_8545_speed, $01
    .byte con_8545_offset, $07
    .text "Several days later,"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "in a park near"
    .byte con_8545_new_line
    .byte con_8545_offset, $0A
    .text "Japan U-20's"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "training camp."
    .byte con_8545_F4, con_86C6_скрыть_текст
    
    
    
    .byte con_8545_F8, con_A491_0B
    .byte con_8545_pause, $F0
    .byte con_8545_F4, con_86C6_показать_текст
    .byte con_8545_pause, $78
    .byte con_8545_F8, con_A491_02
    .byte con_8545_F8, con_A491_0B
    .byte con_8545_clear_1
    .byte con_8545_F4, con_86C6_скрыть_текст
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .byte con_8545_offset, $05
    .text "@You'll be leaving for"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "the Asia Qualifers"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "soon,"
    .byte con_8545_pause, $0F
    .text " won't you?@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $04
    .text "@Yeah,"
    .byte con_8545_pause, $14
    .text " and I can hardly"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "wait!"
    .byte con_8545_pause, $1E
    .text " There's gonna be"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "a lot of players"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "around my age,"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $07
    .text "and a lot of"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "pro-levels,"
    .byte con_8545_pause, $0F
    .text " and_@"
    .byte con_8545_pause, $0F
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "@Tsubasa,"
    .byte con_8545_pause, $28
    .text " you"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "haven't changed.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $05
    .text "@You still sound like"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "when you were young,"
    .byte con_8545_pause, $0F
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "you know?@"
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_speed, $02
    .byte con_8545_offset, $05
    .text "@Huh?"
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text " How's that?@"
    .byte con_8545_pause, $50
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $32
    .byte con_8545_bg_2, $33
    .byte con_8545_animation, $01, $26
    .byte con_8545_screen_on
    .byte con_8545_F5, $05
    .byte con_8545_pause, $50
    .byte con_8545_offset, $03
    .text "@Your mind always thinking"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "about football,"
    .byte con_8545_pause, $1E
    .text " and how"
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "you'd be a superstar"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .byte con_8545_offset, $06
    .text "@Ah, "
    .byte con_8545_pause, $0F
    .text "well"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_animation, $01, $26
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $04
    .byte con_8545_offset, $07
    .text "Sanae,"
    .byte con_8545_pause, $0F
    .text " I'm s"
    .byte con_8545_animation, $01, $27
    .byte con_8545_toggle_mouth
    .text "_@"
    .byte con_8545_pause, $0F
    .byte con_8545_new_line
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $06
    .text "@I wouldn't have it"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "any other way.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $78
    .byte con_8545_animation, $01, $57
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .byte con_8545_offset, $06
    .text "@..."
    .byte con_8545_pause, $3C
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $04
    .text "Sanae,"
    .byte con_8545_pause, $1E
    .text " listen.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_animation, $01, $27
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_animation, $01, $26
    .byte con_8545_pause, $50
    .byte con_8545_offset, $07
    .text "@What is it?"
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "You're serious"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "all of a sudden.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $57
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $78
    .byte con_8545_offset, $05
    .text "@When I"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $3C
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $04
    .text "when all"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "this is done,"
    .byte con_8545_pause, $3C
    .text " I'm"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "returning to Brazil.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_animation, $01, $66
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $05
    .text "@Would you_@"
    .byte con_8545_F5, $FF
    .byte con_8545_bg_2, $34
    .byte con_8545_toggle_cam
    .byte con_8545_sound, $1E
    .byte con_8545_F8, con_A491_0E
    .byte con_8545_sound, $52
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "@Ey,"
    .byte con_8545_pause, $0F
    .text " Tsubasa_"
    .byte con_8545_pause, $14
    .text "time for"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "the team meeting!@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_F8, con_A491_02
    .byte con_8545_sound, $48
    .byte con_8545_animation, $01, $08
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_bg_2, $32
    .byte con_8545_pause, $14
    .byte con_8545_speed, $02
    .byte con_8545_offset, $08
    .text "@Ish_"
    .byte con_8545_pause, $0F
    .byte con_8545_speed, $03
    .text "Ishizaki!@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $28
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_bg_2, $33
    .byte con_8545_F5, $05
    .byte con_8545_pause, $3C
    .byte con_8545_animation, $01, $27
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .byte con_8545_offset, $04
    .text "@I can't join you along"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "the way,"
    .byte con_8545_pause, $1E
    .byte con_8545_animation, $01, $26
    .byte con_8545_pause, $0F
    .text " but I'll be"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "wishing you the very"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "best of luck.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $3C
    .byte con_8545_offset, $05
    .text "@I"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $28
    .byte con_8545_new_line
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $04
    .byte con_8545_offset, $05
    .text " That's great,"
    .byte con_8545_pause, $1E
    .text " Sanae."
    .byte con_8545_pause, $28
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Be seeing you"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $24
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .byte con_8545_offset, $06
    .text "@Uh"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $1E
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $04
    .text "did I come"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "in at a bad time?@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .byte con_8545_offset, $05
    .text "@..."
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $04
    .text "no."
    .byte con_8545_pause, $3C
    .text " No,"
    .byte con_8545_pause, $0F
    .text " Ishizaki,"
    .byte con_8545_pause, $0F
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "it's fine."
    .byte con_8545_pause, $14
    .text " Let's go.@"
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_sound, $31
    .byte con_8545_pause, $78
    .byte con_8545_sound, $01
    .byte con_8545_pause, $3C
    .byte con_8545_clear_1
    .byte con_8545_bg_1, $35
    .byte con_8545_animation, $01, $1A
    .byte con_8545_screen_on
    .byte con_8545_sound, $47
    .byte con_8545_F5, $05
    .byte con_8545_F8, con_A491_0C
    .byte con_8545_pause, $F0
    .byte con_8545_pause, $F0
    .byte con_8545_F8, con_A491_02
    .byte con_8545_F8, con_A491_0C
    .byte con_8545_pause, $3C
    .byte con_8545_animation, $01, $2A
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $06
    .text "(So,"
    .byte con_8545_pause, $1E
    .text " it's like that?"
    .byte con_8545_pause, $3C
    .byte con_8545_animation, $01, $2B
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $06
    .byte con_8545_offset, $07
    .text "Interesting"
    .byte con_8545_speed, $08
    .text "...)"
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_pause, $3C
    .byte con_8545_clear_1
    .byte con_8545_bg_1, $37
    .byte con_8545_animation, $01, $A9
    .byte con_8545_F8, con_A491_0D
    .byte con_8545_screen_on
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $03
    .byte con_8545_offset, $07
    .text "Several days later,"
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Tsubasa and the rest"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "of the team are on"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "the plane to Seoul,"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $08
    .text "where the Asian"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "Qualifiers for"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "the U-20 World"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "Cup will be held."
    .byte con_8545_pause, $F0
    .byte con_8545_sound, $31
    .byte con_8545_screen_off
    .byte con_8545_pause, $78
    .byte con_8545_sound, $01
    .byte con_8545_exit






_off014_A5D6_14_после_победы_над_китаем:
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $11
    .byte con_8545_bg_2, $10
    .byte con_8545_animation, $01, $22
    .byte con_8545_pause, $78
    .byte con_8545_screen_on
    .byte con_8545_sound, $47
    .byte con_8545_pause, $3C
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $02
    .byte con_8545_offset, $04
    .text "Li Han-ne:"
    .byte con_8545_pause, $14
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $06
    .text " @Our Rising"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Dragon was defeated"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "by your spirit!"
    .byte con_8545_pause, $28
    .text " We"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "humbly admit defeat.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $33
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .byte con_8545_offset, $07
    .text "@Your Japanese"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "is pretty good.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $44
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $FF, $00, $20
    .byte con_8545_pause, $14
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $02
    .byte con_8545_offset, $04
    .text "Li Ban-kun:"
    .byte con_8545_pause, $14
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $06
    .text " @Thank you."
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Our uncle cooks in"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Yokohama,"
    .byte con_8545_pause, $1E
    .text " so we are"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "often in your country.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $68
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .byte con_8545_offset, $05
    .text "@It's like staring in"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "a mirror!"
    .byte con_8545_pause, $1E
    .text " I couldn't"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "tell you two apart.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $22
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $02
    .byte con_8545_offset, $04
    .text "Li Han-ne:"
    .byte con_8545_pause, $14
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $06
    .text " @The Korean"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "team also uses Combi"
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $08
    .byte con_8545_new_line
    .byte con_8545_toggle_mouth
    .byte con_8545_speed, $06
    .byte con_8545_offset, $04
    .text "  combination plays"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "very well.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $14
    
    
    
    .byte con_8545_offset, $07
    .text "@Watch your backs"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "when you play"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "with them,"
    .byte con_8545_pause, $14
    .byte con_8545_speed, $08
    .text " OK?@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $66
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .byte con_8545_offset, $08
    .text "@We will."
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "Thank you for"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "the warning.@"
    .byte con_8545_pause, $50
    .byte con_8545_sound, $31
    .byte con_8545_pause, $78
    .byte con_8545_screen_off
    .byte con_8545_exit






_off014_A703_15_после_победы_над_кореей:
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $0D
    .byte con_8545_animation, $01, $0E
    .byte con_8545_sound, $01
    .byte con_8545_pause, $78
    .byte con_8545_sound, $69
    .byte con_8545_screen_on
    .byte con_8545_pause, $3C
    .byte con_8545_sound, $47
    .byte con_8545_speed, $04
    .byte con_8545_offset, $08
    .text "@Let's keep the"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "momentum going"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "and win it all!@"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_speed, $02
    .byte con_8545_offset, $0C
    .text "@Yeah!!@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    
    
    
    .byte con_8545_bg_2, $2E
    .byte con_8545_animation, $01, $2D
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_bg_2, $65
    .byte con_8545_F5, $04
    .byte con_8545_speed, $04
    .byte con_8545_offset, $06
    .text "@Tsubasa,"
    .byte con_8545_pause, $0F
    .text " it's a"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "disaster!!"
    .byte con_8545_pause, $14
    .text " Brazil's"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "new coach is_@"
    .byte con_8545_F8, con_A491_02
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_F5, $FF
    .byte con_8545_animation, $01, $12
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $FF, $13, $0C
    .byte con_8545_bg_2, $38
    .byte con_8545_sound, $43
    .byte con_8545_new_line
    .byte con_8545_speed, $02
    .byte con_8545_offset, $06
    .text "@What?!@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    .byte con_8545_sound, $3D
    
    
    
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $03
    .byte con_8545_offset, $08
    .text "Japan had earned"
    .byte con_8545_new_line
    .byte con_8545_offset, $0A
    .text "the right to"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "represent Asia in"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "the U-20 World Cup."
    .byte con_8545_ball
    .byte con_8545_clear_1
    
    
    
    .byte con_8545_offset, $08
    .text "In the meantime,"
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "other countries were"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "securing their"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "own positions"
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_bg_1, $3C
    .byte con_8545_animation, $01, $95
    .byte con_8545_screen_on
    .byte con_8545_F4, con_86C6_показать_текст
    .byte con_8545_speed, $00
    .byte con_8545_offset, $09
    .text "South American"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "Qualifiers Final"
    .byte con_8545_new_line
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Argentina VS Uruguay"
    .byte con_8545_pause, $1E
    .byte con_8545_F4, con_86C6_скрыть_текст
    .byte con_8545_pause, $F0
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_bg_2, $03
    .byte con_8545_animation, $01, $78
    .byte con_8545_palette, $FF, $14, $22
    .byte con_8545_sound, $0B
    .byte con_8545_pause, $1E
    .byte con_8545_F5, $0C
    .byte con_8545_speed, $03
    .byte con_8545_offset, $06
    .text "@I'm Juan Diaz!"
    .byte con_8545_pause, $14
    .text " On"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "and off the pitch,"
    .byte con_8545_pause, $0F
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "nobody matches"
    .byte con_8545_pause, $08
    .byte con_8545_new_line
    .byte con_8545_speed, $06
    .byte con_8545_offset, $07
    .text "MY "
    .byte con_8545_pause, $08
    .byte con_8545_speed, $03
    .text "genius!@"
; скорректировать задержку чтобы портрет остался на белом фоне перед сменой экрана
    .byte con_8545_pause, $50
    
    
    
    .byte con_8545_F5, $FF
    .byte con_8545_clear_1
    .byte con_8545_bg_2, $21
    .byte con_8545_animation, $02, $73, $74
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_F5, $03
    .byte con_8545_sound, $0E
    .byte con_8545_pause, $28
    .byte con_8545_F5, $FF
    .byte con_8545_bg_2, $5A
    .byte con_8545_animation, $01, $01
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_sound, $03
    .byte con_8545_bg_2, $20
    .byte con_8545_toggle_cam
    .byte con_8545_sound, $04
    .byte con_8545_pause, $35
    .byte con_8545_toggle_cam
    .byte con_8545_sound, $05
    .byte con_8545_bg_2, $56
    .byte con_8545_animation, $03, $C0, $A0, $80
    .byte con_8545_toggle_cam
    .byte con_8545_sound, $07
    .byte con_8545_bg_2, $39
    .byte con_8545_animation, $01, $85
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_sound, $5D
    .byte con_8545_F5, $04
    
    
    
    .byte con_8545_pause, $28
    .byte con_8545_window, $01
    .byte con_8545_charlie, $00
    .byte con_8545_speed, $04
    .byte con_8545_offset, $09
    .text "It's buried in the"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "back of the net!"
    .byte con_8545_pause, $14
    .text " Juan"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "Diaz and Argentina"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "are"
    .byte con_8545_speed, $06
    .text " UNSTOPPABLE!"
    .byte con_8545_pause, $50
    .byte con_8545_clear_all
; требуется чтобы следующий текст начался как обычно вверху экрана
    .byte con_8545_clear_2
    
    
    
    .byte con_8545_bg_2, $3A
    .byte con_8545_animation, $01, $8B
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_sound, $66
    .byte con_8545_pause, $14
    .byte con_8545_window, $00
    .byte con_8545_charlie, $01
    .byte con_8545_speed, $04
    .byte con_8545_offset, $09
    .text "It's"
    .byte con_8545_sound, $62
    .text " decided!"
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "Argentina has"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "defeated Uruguay!!"
    .byte con_8545_pause, $50
    .byte con_8545_clear_2
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $09
    .text "They have won"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "their ticket"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "to this year's"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "U-20 World Cup!"
    .byte con_8545_sound, $31
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_sound, $01
    .byte con_8545_clear_2
    .byte con_8545_clear_all
    .byte con_8545_charlie, $FF ; выключить чарли
    .byte con_8545_bg_1, $3C
    .byte con_8545_animation, $01, $96
    .byte con_8545_sound, $36
    .byte con_8545_screen_on
    .byte con_8545_F4, con_86C6_показать_текст
    .byte con_8545_speed, $00
    .byte con_8545_offset, $06
    .text "European Qualifiers"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "Finals: Block A"
    .byte con_8545_new_line
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "France VS Denmark"
    .byte con_8545_pause, $1E
    .byte con_8545_F4, con_86C6_скрыть_текст
    .byte con_8545_pause, $F0
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_bg_1, $01
    .byte con_8545_animation, $01, $6F
    .byte con_8545_palette, $00
    .byte con_8545_F8, con_A491_0A
    .byte con_8545_F5, $00
    .byte con_8545_sound, $68
    .byte con_8545_pause, $1E
    .byte con_8545_window, $01
    .byte con_8545_charlie, $00
    .byte con_8545_speed, $04
    .byte con_8545_offset, $09
    .text "Pierre is making his"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "way around Denmark's"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "defence!"
    .byte con_8545_pause, $1E
    .text " Napoleon is"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "right behind him!"
    .byte con_8545_pause, $50
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_clear_all
    .byte con_8545_charlie, $FF ; выключить чарли
    .byte con_8545_bg_1, $3B
    .byte con_8545_animation, $01, $7A
    .byte con_8545_palette, $00
    .byte con_8545_sound, $26
    .byte con_8545_F5, $08
    .byte con_8545_speed, $03
    .byte con_8545_offset, $05
    .text "@Come,"
    .byte con_8545_pause, $0F
    .text " Napoleon!"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_speed, $06
    .byte con_8545_offset, $06
    .text "THIS "
    .byte con_8545_pause, $0F
    .byte con_8545_speed, $03
    .text "shot shall"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "be decisive!@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_animation, $01, $7B
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_F5, $08
    .byte con_8545_sound, $26
    .byte con_8545_offset, $09
    .text "@Attaquer,"
    .byte con_8545_pause, $0F
    .text " Pierre!@"
    .byte con_8545_pause, $3C
    .byte con_8545_clear_1
    
    
    
    .byte con_8545_bg_2, $09
    .byte con_8545_animation, $01, $43
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_F5, $0C
    .byte con_8545_window, $01
    .byte con_8545_charlie, $05
    .byte con_8545_speed, $04
    .byte con_8545_offset, $09
    .text "Wh_?!"
    .byte con_8545_sound, $09
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .byte con_8545_pause, $28
    .byte con_8545_sound, $09
    .text "What's "
    .byte con_8545_sound, $0A
    .text "this com_?!"
    .byte con_8545_pause, $3C
    .byte con_8545_F5, $FF
    
    
    
    .byte con_8545_bg_2, $39
    .byte con_8545_animation, $01, $85
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_sound, $5D
    .byte con_8545_F5, $04
    .byte con_8545_clear_2
    .byte con_8545_pause, $14
    .byte con_8545_charlie, $00
    .byte con_8545_offset, $09
    .text "A truly impressive"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "strike by France"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "almost rips the"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "netting to pieces!"
    .byte con_8545_pause, $50
    .byte con_8545_clear_all
    .byte con_8545_clear_2
    
    
    
    .byte con_8545_bg_2, $3A
    .byte con_8545_animation, $01, $8B
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_sound, $66
    .byte con_8545_window, $00
    .byte con_8545_charlie, $05
    .byte con_8545_offset, $09
    .text "It's over!"
    .byte con_8545_pause, $08
    .byte con_8545_sound, $62
    .byte con_8545_pause, $08
    .text " It's over!"
    .byte con_8545_pause, $1E
    .byte con_8545_charlie, $01
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "France qualifies for"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "the U-20 World Cup!"
    .byte con_8545_sound, $31
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_sound, $01
    .byte con_8545_clear_1
    .byte con_8545_clear_all
    .byte con_8545_charlie, $FF ; выключить чарли
    .byte con_8545_bg_1, $3C
    .byte con_8545_animation, $03, $BD, $C8, $97
    .byte con_8545_sound, $38
    .byte con_8545_screen_on
    .byte con_8545_F4, con_86C6_показать_текст
    .byte con_8545_speed, $00
    .byte con_8545_offset, $06
    .text "European Qualifiers"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "Finals: Block B"
    .byte con_8545_new_line
    .byte con_8545_new_line
    .byte con_8545_offset, $04
    .text "West Germany VS Portugal"
    .byte con_8545_pause, $1E
    .byte con_8545_F4, con_86C6_скрыть_текст
    .byte con_8545_pause, $F0
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_bg_1, $66
    .byte con_8545_animation, $03, $9E, $9F, $A5
    .byte con_8545_sound, $6B
    .byte con_8545_screen_on
; таймер замаха удара шнайдера 0x0144DE
    .byte con_8545_window, $01
    .byte con_8545_charlie, $00
    .byte con_8545_speed, $04
    .byte con_8545_offset, $09
    .text "Schneider intends to"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "blast the ball"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "straight across the"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "field!"
    .byte con_8545_pause, $14
    .byte con_8545_charlie, $05
    .byte con_8545_speed, $03
    .text " Watch out!!"
    .byte con_8545_pause, $50
    .byte con_8545_clear_all
    .byte con_8545_clear_2
    .byte con_8545_pause, $14
    
    
    
    .byte con_8545_sound, $02
    .byte con_8545_charlie, $FF ; выключить чарли
    .byte con_8545_bg_2, $05
    .byte con_8545_animation, $01, $79
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_sound, $30
    .byte con_8545_F5, $11
    .byte con_8545_speed, $02
    .byte con_8545_offset, $09
    .text "@FEUERSCHUSS!@"
    .byte con_8545_pause, $50
    .byte con_8545_F5, $FF
    .byte con_8545_clear_1
    
    
    
    .byte con_8545_bg_2, $21
    .byte con_8545_animation, $02, $73, $74
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_F5, $0F
    .byte con_8545_sound, $0E
    .byte con_8545_pause, $28
    .byte con_8545_sound, $10
    .byte con_8545_F5, $FF
    .byte con_8545_bg_2, $5A
    .byte con_8545_animation, $01, $00
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $FF, $2D, $04
    .byte con_8545_sound, $06
    .byte con_8545_bg_2, $20
    .byte con_8545_toggle_cam
    .byte con_8545_sound, $07
    .byte con_8545_pause, $1A
    .byte con_8545_sound, $07
    .byte con_8545_pause, $19
    .byte con_8545_toggle_cam
    .byte con_8545_sound, $08
    .byte con_8545_bg_2, $56
    .byte con_8545_animation, $03, $C0, $A0, $80
    .byte con_8545_toggle_cam
    .byte con_8545_sound, $07
    .byte con_8545_bg_2, $39
    .byte con_8545_animation, $01, $86
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_sound, $61
    .byte con_8545_F5, $04
    
    
    
    .byte con_8545_pause, $0F
    .byte con_8545_window, $01
    .byte con_8545_charlie, $05
    .byte con_8545_speed, $02
    .byte con_8545_offset, $09
    .text "WHO~~~"
    .byte con_8545_pause, $08
    .text "A!"
    .byte con_8545_pause, $1E
    .byte con_8545_speed, $04
    .text " That shot"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "has set the whole"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "crowd on fire!"
    .byte con_8545_pause, $78
    .byte con_8545_clear_all
    .byte con_8545_clear_2
    
    
    
    .byte con_8545_bg_2, $3A
    .byte con_8545_animation, $01, $8B
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_sound, $66
    .byte con_8545_pause, $14
    .byte con_8545_window, $00
    .byte con_8545_charlie, $01
    .byte con_8545_offset, $09
    .text "With t"
    .byte con_8545_sound, $69
    .text "he final"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "whistle,"
    .byte con_8545_pause, $14
    .text " West"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "Germany joins France"
    .byte con_8545_pause, $3C
    .byte con_8545_sound, $69
    .byte con_8545_pause, $14
    .byte con_8545_clear_2
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $09
    .text "in representing"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "Europe for the"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "U-20 World Cup!"
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_clear_all
    .byte con_8545_charlie, $FF ; выключить чарли
    .byte con_8545_bg_1, $1D
    .byte con_8545_pause, $3C
    .byte con_8545_animation, $03, $C9, $91, $99
    .byte con_8545_sound, $46
    .byte con_8545_screen_on
    .byte con_8545_speed, $03
    .byte con_8545_offset, $06
    .byte con_8545_pause, $78
    .text "Meanwhile in Brazil,"
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "host nation for the"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "U-20 World Cup"
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_pause, $3C
    .byte con_8545_clear_1
    .byte con_8545_bg_1, $13
    .byte con_8545_bg_2, $12
    .byte con_8545_animation, $01, $46
    .byte con_8545_screen_on
    .byte con_8545_pause, $50
    .byte con_8545_speed, $04
    .byte con_8545_offset, $04
    .text "@Alright lads,"
    .byte con_8545_pause, $1E
    .text " we've got"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "a pro from our national"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "team to help prepare"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "for the World Cup.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $04
    .text "@He will be acting as"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "your new coach during"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "the tournament.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $08
    .text "@His name is"
    
    
    
    .byte con_8545_animation, $01, $48
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $0F
    .byte con_8545_F5, $08
    .byte con_8545_new_line
    .byte con_8545_speed, $03
    .byte con_8545_offset, $08
    .text "(Un-"
    .byte con_8545_pause, $14
    .text "unreal!)"
    .byte con_8545_sound, $01
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    
    
    
    .byte con_8545_bg_2, $50
    .byte con_8545_animation, $01, $6C
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_sound, $52
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_bg_2, $12
    .byte con_8545_animation, $01, $3D
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_sound, $30
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $05
    .text "@It's Roberto Hongo!!@"
    .byte con_8545_toggle_mouth
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_sound, $49
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .byte con_8545_offset, $08
    .text "@I'm glad I'm"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "not completely"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "forgotten.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $04
    .text "@Brazil's always had"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "the drive to be number"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "one in the world,"
    .byte con_8545_pause, $14
    .text " when"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "it comes to football.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $06
    .text "@Even though you're"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "young,"
    .byte con_8545_pause, $1E
    .text " I can see"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "the same spark"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "in all of you.@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_offset, $05
    .text "@Now_"
    .byte con_8545_pause, $0F
    .text "let's keep the"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "World Cup in Brazil!@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_bg_2, $13
    .byte con_8545_animation, $01, $5A
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_pause, $50
    .byte con_8545_speed, $02
    .byte con_8545_offset, $04
    .text "(Wow,"
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $06
    .text " THE "
    .byte con_8545_pause, $08
    .byte con_8545_speed, $04
    .text "Roberto Hongo,"
    .byte con_8545_sound, $31
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "from our national team,"
    .byte con_8545_sound, $57
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_bg_2, $50
    .byte con_8545_animation, $01, $6C
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_F8, con_A491_02
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_speed, $06
    .byte con_8545_offset, $05
    .text "as our coach"
    .byte con_8545_speed, $08
    .text "...)"
    .byte con_8545_pause, $F0
    .byte con_8545_pause, $3C
    .byte con_8545_screen_off
    .byte con_8545_exit






_off014_AC95_16_разговор_репортеров:
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_bg_1, $1B
    .byte con_8545_animation, $01, $43
    .byte con_8545_pause, $78
    .byte con_8545_screen_on
    .byte con_8545_sound, $47
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $02
    .byte con_8545_offset, $02
    .text "Reporter A:"
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .text " @Looks like"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "the lineup for the"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "tournament's been"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "finalized.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_speed, $02
    .byte con_8545_offset, $02
    .text "Reporter B:"
    .byte con_8545_pause, $14
    .byte con_8545_speed, $08
    .text " @Mmm-hmm,"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_speed, $04
    .byte con_8545_offset, $08
    .text "it all begins in"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "two days."
    .byte con_8545_pause, $3C
    .text " Any"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "idea who'll win?@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_speed, $02
    .byte con_8545_offset, $02
    .text "Reporter C:"
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .text " @Japan's"
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "coming along,"
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $08
    .text "could be them.@"
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_offset, $02
    .text "A: @Japan?"
    .byte con_8545_pause, $3C
    .text " I don't know"
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_speed, $04
    .byte con_8545_offset, $02
    .text "B: @After this last match?"
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Wouldn't surprise me.@"
    .byte con_8545_pause, $50
    .byte con_8545_new_line
    .byte con_8545_offset, $02
    .text "C: @Think it's a lock?@"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $02
    .text "A: @Not me.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_offset, $02
    .text "A: @Not just yet,"
    .byte con_8545_pause, $0F
    .text " anyway"
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $3C
    .byte con_8545_new_line
    .byte con_8545_speed, $04
    .byte con_8545_offset, $06
    .text "Something needs to fall"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "into place that tips"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "the scales for them.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $50
    
    
    
    .byte con_8545_offset, $02
    .text "B: @Ok,"
    .byte con_8545_pause, $08
    .text " then."
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "How about West"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Germany,"
    .byte con_8545_pause, $1E
    .text " or Brazil?@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_offset, $02
    .text "C: @Brazil would need a"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "skilled goalkeeper,"
    .byte con_8545_pause, $1E
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "which they don't have.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $3C
    
    
    
    .byte con_8545_offset, $02
    .text "A: @Y'"
    .byte con_8545_pause, $08
    .text "know"
    .byte con_8545_speed, $08
    .text "..."
    .byte con_8545_pause, $3C
    .byte con_8545_speed, $04
    .text "funny that"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "should come up.@"
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_sound, $31
    .byte con_8545_pause, $78
    .byte con_8545_bg_1, $64
    .byte con_8545_animation, $01, $3A
    .byte con_8545_palette, $FF, $10, $29
    .byte con_8545_sound, $46
    .byte con_8545_pause, $50
    .byte con_8545_toggle_mouth
    .byte con_8545_offset, $02
    .text "A: @I've been hearing"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "rumors about a certain"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "pro goalkeeper,"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $0A
    
    
    
    .byte con_8545_offset, $05
    .text "coming over from Italy"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "back home just to"
    .byte con_8545_new_line
    .byte con_8545_offset, $05
    .text "join up with Brazil"
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_speed, $04
    .byte con_8545_offset, $02
    .text "B: @The so-"
    .byte con_8545_pause, $08
    .text "called"
    .byte con_8545_pause, $0F
    .byte con_8545_new_line
    .byte con_8545_speed, $06
    .byte con_8545_offset, $06
    .text "@Keeper Machine@"
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .text " of"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Inter Milan in the"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Italian league,"
    .byte con_8545_pause, $0F
    .text " yeah?@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $14
    
    
    
    .byte con_8545_offset, $08
    .text "@Funny how fast"
    .byte con_8545_new_line
    .byte con_8545_offset, $09
    .text "rumors spread.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $02
    .text "A: @Yeah,"
    .byte con_8545_pause, $0F
    .text " funny."
    .byte con_8545_pause, $14
    .text " Anyway,"
    .byte con_8545_pause, $28
    .byte con_8545_screen_off
    .byte con_8545_bg_1, $12
    .byte con_8545_animation, $01, $62
    .byte con_8545_screen_on
    .byte con_8545_pause, $28
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Roberto Hongo himself"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "called up to have"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "the guy come over.@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $06
    .text "@That's how much he"
    .byte con_8545_new_line
    .byte con_8545_offset, $07
    .text "wants the victory.@"
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_bg_1, $2E
    .byte con_8545_animation, $01, $47
    .byte con_8545_screen_on
    .byte con_8545_F8, con_A491_02
    .byte con_8545_pause, $3C
    .byte con_8545_offset, $02
    .text "B: @Must be rough on"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Roberto's foreign"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "exchange student,"
    .byte con_8545_pause, $0F
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "you think?@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $02
    .text "C: @No kidding."
    .byte con_8545_pause, $1E
    .text " It'll"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "come down to teacher"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "and pupil in the"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "finals,"
    .byte con_8545_pause, $14
    .text " for sure.@"
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_screen_off
    .byte con_8545_clear_1
    .byte con_8545_bg_1, $1B
    .byte con_8545_screen_on
    .byte con_8545_pause, $1E
    .byte con_8545_offset, $02
    .text "A:"
    .byte con_8545_speed, $08
    .text " @..."
    .byte con_8545_pause, $14
    .byte con_8545_speed, $04
    .text "I wasn't finished."
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "There's still one"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "more thing"
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $78
    
    
    
    .byte con_8545_speed, $04
    .byte con_8545_offset, $02
    .text "B: @Then quit drawing"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "it out and"
    .byte con_8545_pause, $0F
    .text " TELL"
    .byte con_8545_pause, $0F
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "us,"
    .byte con_8545_pause, $08
    .text " already!@"
    .byte con_8545_pause, $78
    .byte con_8545_clear_1
    .byte con_8545_pause, $50
    
    
    
    .byte con_8545_offset, $02
    .text "A: @Oh,"
    .byte con_8545_pause, $08
    .text " look at the time!"
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "Gotta make the deadline,"
    .byte con_8545_pause, $14
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "can't stay,"
    .byte con_8545_pause, $0F
    .text " see ya!@"
    .byte con_8545_pause, $50
    .byte con_8545_clear_1
    .byte con_8545_pause, $1E
    .byte con_8545_sound, $27
    .byte con_8545_pause, $1E
    
    
    
    .byte con_8545_offset, $02
    .text "B: @That guy runs just about"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "as fast as his mouth.@"
    .byte con_8545_pause, $50
    .byte con_8545_new_line
    .byte con_8545_offset, $02
    .text "C: @He's gonna stumble over"
    .byte con_8545_new_line
    .byte con_8545_offset, $06
    .text "his own tongue one day"
    .byte con_8545_speed, $08
    .text "...@"
    .byte con_8545_pause, $78
    .byte con_8545_sound, $31
    .byte con_8545_pause, $78
    .byte con_8545_screen_off
    .byte con_8545_exit



.out .sprintf("Free bytes in bank A2: 0x%04X [%d]", ($C000 - *), ($C000 - *))



