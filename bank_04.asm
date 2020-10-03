.segment "BANK_04"
.include "copy_bank_ram.inc"
; пустой банк, раньше тут были катсцены 00-0F


.export tbl_0x40004_вид_меню
tbl_0x40004_вид_меню:
    .word off_B453_00_period_number_and_time                    ; номер тайма и время
    .word off_B464_01_team_names_and_score                      ; сокращения команд и счет
    .word off_B47D_02_player_action_window                           ; обычный набор действий для полевого и кипера
    .word off_B48A_03_player_dribble_pass_shoot
    .word off_B4A7_04_player_trap_pass_shot
    .word off_B4C4_05_player_trap_pass_clearing
    .word off_B4E1_06_gk_punch_catch
    .word off_B4FA_07_gk_action_window_vs_player                ; действие когда ты на штрафной соперника и нападаешь на него
    .word off_B507_08_gk_counter_drib_shot
    .word off_B528_09_2_specials
    .word off_B539_0A_3_specials
    .word off_B54E_0B_4_specials
    .word off_B567_0C_две_опции_нападения
    .word off_B578_0D_gk_dive
    .word $0000      ; unused, тут была копия 0F
    .word off_B58D_0F_pass_select_a_teammate
    .word off_B5A2_10_1_2_pass_choose_a_partner
    .word off_B5B7_11_no_players_nearby                         ; не с кем перепасоваться, напарники далеко
    .word off_B5C8_12_1_player_action_window
    .word off_B5D9_13_2_players_action_window                   ; действие нескольких игроков при нападении на соперника
    .word off_B5EE_14_3_players_action_window
    .word off_B607_15_4_players_action_window
    .word off_B624_16_defender_tackle_block_passcut
    .word off_B641_17_player_interfere_passcut
    .word off_B65A_18_player_clearing_passcut
    .word off_B673_19_show_2_teammates                          ; показать напарников при перемещении курсора паса
    .word off_B688_1A_show_3_teammates
    .word off_B6A1_1B_show_4_teammates
    .word off_B6BE_1C_clear_reciever_stats_window               ; очистить окно статов принимаюшего
    .word off_B6C7_1D_reciever_dribble_pass_shoot               ; отобразить статы принимающего
    .word off_B6E4_1E_opponent_trap_clearing_pass      ; unused
    .word off_B701_1F_opponent_trap_shot_pass       ; unused
    .word off_B71E_20_show_1_opponent                           ; показать соперников при перемещении курсора паса
    .word off_B72F_21_show_2_opponents
    .word off_B744_22_show_3_opponents
    .word off_B75D_23_show_4_opponents
    .word off_B77A_24_select_1_of_2_teammates_for_pass          ; выбрать одного из напарников для паса
    .word off_B78F_25_select_1_of_3_teammates_for_pass
    .word off_B7A8_26_select_1_of_4_teammates_for_pass
    .word off_B7C5_27_free_kick_taker
    .word off_B7FE_28_rearrange_players_no_yes
    .word off_B813_29_rearrange_select_done
    .word off_B828_2A_aim_left_right
    .word off_B83D_2B_wall_left_right
    .word off_B852_2C_pk_aim
    .word off_B85F_2D_pk_dive
    .word off_B86C_2E_corner_kick_taker
    .word off_B8A5_2F_select_penalty_taker
    .word off_B8DE_30_display_name_stamina_at_the_top
    .word off_B8EF_31_display_name_number_at_the_top
    .word off_B900_32_display_name_opponent_at_the_top          ; когда мяч у соперника и тот бежит по полю
    .word off_B90D_33_resume_play_edit_team_data
    .word off_B922_34_formation_defense_swap_status_done
    .word off_B93F_35_formation
    .word off_B95C_36_defense
    .word off_B975_37_swap
    .word off_B98A_38_no_subs_left
    .word off_B99B_39_swap_main_players
    .word off_B9F8_3A_swap_sub_players
    .word off_BA39_3B_whom_to_sub
    .word off_BAA2_3C_stamina_fielded_players
    .word off_BB03_3D_stamina_substitutes_bench
    .word off_BB5C_3E_pk_shootout_select_taker
    .word off_BB69_3F_pk_players_list
    .word off_BB9E_40_pk_order
    .word off_BBBF_41_pk_and_score



; код в 0x030996
con_plr_name_pos                        = $E0           ; позиция и имя игрока
con_stats_attack                        = $E1           ; статы нападающего при владении мячом у тебя + числовая величина параметра
    con_atk_stamina                         = $00
    con_atk_shoot                           = $01           ; на поле
    con_atk_pass                            = $02           ; на поле
    con_atk_dribble                         = $03
    con_atk_air_shoot                       = $07           ; на штрафной
    con_atk_air_pass                        = $08           ; на штрафной
    con_atk_trap                            = $09
    con_atk_clearing                        = $0B
con_rec_name_pos                        = $E2           ; позиция и имя принимающего
con_stats_reciever                      = $E3
    con_rec_stamina                         = $00
    con_rec_shoot                           = $01
    con_rec_pass                            = $02
    con_rec_dribble                         = $03
    con_rec_trap                            = $09           ; unused
    con_rec_clearing                        = $0B           ; unused
con_specials_list                       = $E4           ; список спешалов (00-03)
con_defender_actions                    = $E5           ; действия игроков защиты (00-03)
con_E6                                  = $E6           ; + 00 (???) или 01 (???)
con_def_name_pos                        = $E7           ; позиция и имя защитника
con_stats_defense                       = $E8           ; статы защитника при владении мячом у компьютера + числовая величина параметра
    con_def_stamina                         = $00
    con_def_block                           = $04
    con_def_tackle                          = $05
    con_def_passcut_1                       = $06           ; на поле
    con_def_clearing                        = $0C
    con_def_interfere                       = $0D
    con_def_passcut_2                       = $0E           ; на штрафной
con_rec_name_teammate                   = $E9           ; + номер 00-04, имя принимающего пас напарника (для списка из нескольких игроков)
con_rec_name_opponent                   = $EA           ; + номер 00-04, имя принимающего пас соперника (для списка из нескольких игроков)
con_gk_name_pos                         = $EB
con_stats_gk                            = $EC
    con_gk_stamina                         = $00
    con_gk_pass                            = $18            ; unused
    con_gk_catch                           = $19
    con_gk_punch                           = $1A
    con_gk_stop_dribble                    = $1B
    con_gk_stop_shot                       = $1C
    con_gk_dive_lo                         = $1D
    con_gk_dive_hi                         = $1E            ; unused
con_team_name                           = $ED           ; + 00 (имя команды слева) или 01 (имя команды справа)
con_score                               = $EE           ; + 00 (счет команды слева) или 01 (счет команды справа)
con_period_number                       = $EF           ; номер тайма, овертайма, пк
con_time                                = $F0           ; время тайма
con_menu_name                           = $F1           ; имена из меню, 00-0A основные, 16-1F запасные
con_control_plr_name                    = $F2           ; имя управляемого игрока
; unused                                = $F3
con_plr_with_ball_name                  = $F4           ; имя игрока с мячом
con_plr_stamina                         = $F5           ; 00-0A основные, 16-1F запасные
con_pk_players_list                     = $F6
con_control_plr_number                  = $F7           ; номер игрока с мячом
; unused                                = $F8
; unused                                = $F9
; unused                                = $FA
; unused                                = $FB
con_закончить                           = $FC
; unused                                = $FD
; unused                                = $FE
; unused                                = $FF



off_B453_00_period_number_and_time:
; адрес ppu
    .word $2240
; X * Y зачищаемой области (вне этой области текст не запишется)
; size of cleared space
    ; beyond this area nothing will be drawn later
    ; it's like allotting a fixed area for a window
    .byte $07
    .byte $03
; смещение окна X, Y        (window offset)
    ; окно по X должно быть минимум на 01 меньше очистки чтобы увидеть нижнюю границу
    ; а также X предположительно не может быть < 03
    .byte $00
    .byte $00
; размер окна X, Y          (window size)
    .byte $07
    .byte $03
; количество поинтеров      (number of following pointers)
    .byte $02
; смещение текста Y, X + поинтеры на текст      (text offset + pointers)
    .byte $00
    .byte $01
    .word @номер_тайма
    .byte $02
    .byte $05
    .word @время_тайма

@номер_тайма:
    .byte con_period_number
    .byte con_закончить

@время_тайма:
    .byte con_time
    .byte con_закончить






off_B464_01_team_names_and_score:
    .word $22C0
; X * Y зачищаемой области
    .byte $07
    .byte $04
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $07
    .byte $04
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $01
    .word @team_left
    .byte $01
    .byte $05
    .word @score_left
    .byte $03
    .byte $01
    .word @team_right
    .byte $03
    .byte $05
    .word @score_right

@team_left:
    .byte con_team_name, $00
    .byte con_закончить

@team_right:
    .byte con_team_name, $01
    .byte con_закончить

@score_left:
    .byte con_score, $00
    .byte con_закончить

@score_right:
    .byte con_score, $01
    .byte con_закончить






off_B47D_02_player_action_window:
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $07
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $04
; количество поинтеров
    .byte $01
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt

@txt:
    .byte $80, $81, $82, $83, $84, $85, $86     ; Action
    .byte con_закончить






off_B48A_03_player_dribble_pass_shoot:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $09
; количество текста
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @name_pos
    .byte $02
    .byte $01
    .word @stamina
    .byte $04
    .byte $01
    .word @dribble
    .byte $06
    .byte $01
    .word @pass
    .byte $08
    .byte $01
    .word @shoot

@name_pos:
    .byte con_plr_name_pos
    .byte con_закончить

@stamina:
    .text "Stamina    "
    .byte con_stats_attack, con_atk_stamina
    .byte con_закончить

@dribble:
    .text "Dribble    "
    .byte con_stats_attack, con_atk_dribble
    .byte con_закончить

@pass:
    .text "Pass       "
    .byte con_stats_attack, con_atk_pass
    .byte con_закончить

@shoot:
    .text "Shoot      "
    .byte con_stats_attack, con_atk_shoot
    .byte con_закончить






off_B4A7_04_player_trap_pass_shot:
; не зависит от низкого и высокого мяча, видимо статы вычисляются отдельно
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @name_pos
    .byte $02
    .byte $01
    .word @stamina
    .byte $04
    .byte $01
    .word @trap
    .byte $06
    .byte $01
    .word @pass
    .byte $08
    .byte $01
    .word @shot

@name_pos:
    .byte con_plr_name_pos
    .byte con_закончить

@stamina:
    .text "Stamina    "
    .byte con_stats_attack, con_atk_stamina
    .byte con_закончить

@trap:
    .text "Trap       "
    .byte con_stats_attack, con_atk_trap
    .byte con_закончить

@pass:
    .text "Pass       "
    .byte con_stats_attack, con_atk_air_pass
    .byte con_закончить

@shot:
    .text "Shoot      "
    .byte con_stats_attack, con_atk_air_shoot
    .byte con_закончить






off_B4C4_05_player_trap_pass_clearing:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @name_pos
    .byte $02
    .byte $01
    .word @stamina
    .byte $04
    .byte $01
    .word @trap
    .byte $06
    .byte $01
    .word @pass
    .byte $08
    .byte $01
    .word @clearing

@name_pos:
    .byte con_plr_name_pos
    .byte con_закончить

@stamina:
    .text "Stamina    "
    .byte con_stats_attack, con_atk_stamina
    .byte con_закончить

@trap:
    .text "Trap       "
    .byte con_stats_attack, con_atk_trap
    .byte con_закончить

@pass:
    .text "Pass       "
    .byte con_stats_attack, con_atk_air_pass
    .byte con_закончить

@clearing:
    .text "Clearing   "
    .byte con_stats_attack, con_atk_clearing
    .byte con_закончить






off_B4E1_06_gk_punch_catch:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $07
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $07
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @name_pos
    .byte $02
    .byte $01
    .word @stamina
    .byte $04
    .byte $01
    .word @punch
    .byte $06
    .byte $01
    .word @catch

@name_pos:
    .byte con_gk_name_pos
    .byte con_закончить

@stamina:
    .text "Stamina    "
    .byte con_stats_gk, con_gk_stamina
    .byte con_закончить

@punch:
    .text "Punch      "
    .byte con_stats_gk, con_gk_punch
    .byte con_закончить

@catch:
    .text "Catch      "
    .byte con_stats_gk, con_gk_catch
    .byte con_закончить






off_B4FA_07_gk_action_window_vs_player:
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $07
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $04
; количество поинтеров
    .byte $01
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt

@txt:
    .byte $86, $81, $82, $83, $84, $85, $86     ; Action
    .byte con_закончить






off_B507_08_gk_counter_drib_shot:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $09
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $09
; количество поинтеров
    .byte $06
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @name_pos
    .byte $02
    .byte $01
    .word @stamina
    .byte $04
    .byte $01
    .word @stop_dribble_1
    .byte $05
    .byte $01
    .word @stop_dribble_2
    .byte $07
    .byte $01
    .word @stop_shot_1
    .byte $08
    .byte $01
    .word @stop_shot_2

@name_pos:
    .byte con_gk_name_pos
    .byte con_закончить

@stamina:
    .text "Stamina    "
    .byte con_stats_gk, con_gk_stamina
    .byte con_закончить

@stop_dribble_1:
    .text "Stop"
    .byte con_закончить

@stop_dribble_2:
    .text " dribble   "
    .byte con_stats_gk, con_gk_stop_dribble
    .byte con_закончить

@stop_shot_1:
    .text "Stop"
    .byte con_закончить

@stop_shot_2:
    .text " shot      "
    .byte con_stats_gk, con_gk_stop_shot
    .byte con_закончить






off_B528_09_2_specials:
    .word $2268
; X * Y зачищаемой области
    .byte $13
    .byte $05
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $13
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $02
    .word @special_1
    .byte $04
    .byte $02
    .word @special_2

@txt:
    .text " Specials "
    .byte con_закончить

@special_1:
    .byte con_specials_list, $00
    .byte con_закончить

@special_2:
    .byte con_specials_list, $01
    .byte con_закончить






off_B539_0A_3_specials:
    .word $2268
; X * Y зачищаемой области
    .byte $13
    .byte $07
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $13
    .byte $07
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $02
    .word @special_1
    .byte $04
    .byte $02
    .word @special_2
    .byte $06
    .byte $02
    .word @special_3

@txt:
    .text " Specials "
    .byte con_закончить

@special_1:
    .byte con_specials_list, $00
    .byte con_закончить

@special_2:
    .byte con_specials_list, $01
    .byte con_закончить

@special_3:
    .byte con_specials_list, $02
    .byte con_закончить






off_B54E_0B_4_specials:
    .word $2268
; X * Y зачищаемой области
    .byte $13
    .byte $09
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $13
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $02
    .word @special_1
    .byte $04
    .byte $02
    .word @special_2
    .byte $06
    .byte $02
    .word @special_3
    .byte $08
    .byte $02
    .word @special_4

@txt:
    .text " Specials "
    .byte con_закончить

@special_1:
    .byte con_specials_list, $00
    .byte con_закончить

@special_2:
    .byte con_specials_list, $01
    .byte con_закончить

@special_3:
    .byte con_specials_list, $02
    .byte con_закончить

@special_4:
    .byte con_specials_list, $03
    .byte con_закончить






off_B567_0C_две_опции_нападения:
; подкат, перехват, блок
- D - I - 0x033577 22:B567: 28 22     .word $2228

- D - I - 0x033579 22:B569: 10        .byte $10
- D - I - 0x03357A 22:B56A: 06        .byte $06

- D - I - 0x03357B 22:B56B: 00        .byte $00
- D - I - 0x03357C 22:B56C: 01        .byte $01

- D - I - 0x03357D 22:B56D: 10        .byte $10
- D - I - 0x03357E 22:B56E: 05        .byte $05

- D - I - 0x03357F 22:B56F: 02        .byte $02

- D - I - 0x033580 22:B570: 03        .byte $03
- D - I - 0x033581 22:B571: 02        .byte $02
- D - I - 0x033582 22:B572: 94 BC     .word off_BC94
- D - I - 0x033584 22:B574: 05        .byte $05
- D - I - 0x033585 22:B575: 02        .byte $02
- D - I - 0x033586 22:B576: 97 BC     .word off_BC97






off_B578_0D_gk_dive:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $05
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @name_pos
    .byte $02
    .byte $01
    .word @stamina
    .byte $04
    .byte $01
    .word @dive

@name_pos:
    .byte con_gk_name_pos
    .byte con_закончить

@stamina:
    .text "Stamina    "
    .byte con_stats_gk, con_gk_stamina
    .byte con_закончить

@dive:
    .text "Dive       "
    .byte con_stats_gk, con_gk_dive_lo
    .byte con_закончить






off_B58D_0F_pass_select_a_teammate:
    .word $2247
; X * Y зачищаемой области
    .byte $19
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt_1
    .byte $02
    .byte $01
    .word @txt_2
    .byte $04
    .byte $01
    .word @txt_3

@txt_1:
    .text " Pass "
    .byte con_закончить

@txt_2:
    .text "Select a"
    .byte con_закончить

@txt_3:
    .text "teammate"
    .byte con_закончить






off_B5A2_10_1_2_pass_choose_a_partner:
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $05
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $01
    .word @txt_1
    .byte $02
    .byte $01
    .word @txt_2
    .byte $04
    .byte $02
    .word @txt_3

@txt_1:
    .text "1-2 Pass"
    .byte con_закончить

@txt_2:
    .text "Choose a"
    .byte con_закончить

@txt_3:
    .text "partner"
    .byte con_закончить






off_B5B7_11_no_players_nearby:
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $07
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $07
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $01
    .word @txt_1
    .byte $02
    .byte $04
    .word @txt_2
    .byte $04
    .byte $02
    .word @txt_3
    .byte $06
    .byte $02
    .word @txt_4

@txt_1:
    .text "1-2 Pass"
    .byte con_закончить

@txt_2:
    .text "No"
    .byte con_закончить
    
@txt_3:
    .text "players"
    .byte con_закончить
    
@txt_4:
    .text "nearby!"
    .byte con_закончить






off_B5C8_12_1_player_action_window:
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $03
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $03
; количество поинтеров
    .byte $02
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $01
    .byte $01
    .word @name_1

@txt:
    .byte $80, $81, $82, $83, $84, $85, $86     ; Action
    .byte con_закончить

@name_1:
    .byte con_defender_actions, $00
    .byte con_закончить






off_B5D9_13_2_players_action_window:
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $05
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $01
    .byte $01
    .word @name_1
    .byte $03
    .byte $01
    .word @name_2

@txt:
    .byte $80, $81, $82, $83, $84, $85, $86     ; Action
    .byte con_закончить

@name_1:
    .byte con_defender_actions, $00
    .byte con_закончить

@name_2:
    .byte con_defender_actions, $01
    .byte con_закончить






off_B5EE_14_3_players_action_window:
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $07
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $07
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $01
    .byte $01
    .word @name_1
    .byte $03
    .byte $01
    .word @name_2
    .byte $05
    .byte $01
    .word @name_3

@txt:
    .byte $80, $81, $82, $83, $84, $85, $86     ; Action
    .byte con_закончить

@name_1:
    .byte con_defender_actions, $00
    .byte con_закончить

@name_2:
    .byte con_defender_actions, $01
    .byte con_закончить

@name_3:
    .byte con_defender_actions, $02
    .byte con_закончить






off_B607_15_4_players_action_window:
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $09
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $01
    .byte $01
    .word @name_1
    .byte $03
    .byte $01
    .word @name_2
    .byte $05
    .byte $01
    .word @name_3
    .byte $07
    .byte $01
    .word @name_4

@txt:
    .byte $80, $81, $82, $83, $84, $85, $86     ; Action
    .byte con_закончить

@name_1:
    .byte con_defender_actions, $00
    .byte con_закончить

@name_2:
    .byte con_defender_actions, $01
    .byte con_закончить

@name_3:
    .byte con_defender_actions, $02
    .byte con_закончить

@name_4:
    .byte con_defender_actions, $03
    .byte con_закончить






off_B624_16_defender_tackle_block_passcut:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $09
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @name
    .byte $02
    .byte $01
    .word @stamina
    .byte $04
    .byte $01
    .word @tackle
    .byte $06
    .byte $01
    .word @block
    .byte $08
    .byte $01
    .word @passcut

@name:
    .byte con_def_name_pos
    .byte con_закончить

@stamina:
    .text "Stamina    "
    .byte con_stats_defense, con_def_stamina
    .byte con_закончить

@tackle:
    .text "Tackle     "
    .byte con_stats_defense, con_def_tackle
    .byte con_закончить

@block:
    .text "Block      "
    .byte con_stats_defense, con_def_block
    .byte con_закончить

@passcut:
    .text "Pass cut   "
    .byte con_stats_defense, con_def_passcut_1
    .byte con_закончить






off_B641_17_player_interfere_passcut:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $07
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $07
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @name
    .byte $02
    .byte $01
    .word @stamina
    .byte $04
    .byte $01
    .word @interfere
    .byte $06
    .byte $01
    .word @passcut

@name:
    .byte con_def_name_pos
    .byte con_закончить

@stamina:
    .text "Stamina    "
    .byte con_stats_defense, con_def_stamina
    .byte con_закончить

@interfere:
    .text "Interfere  "
    .byte con_stats_defense, con_def_interfere
    .byte con_закончить

@passcut:
    .text "Pass cut   "
    .byte con_stats_defense, con_def_passcut_2
    .byte con_закончить






off_B65A_18_player_clearing_passcut:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $07
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $07
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @name
    .byte $02
    .byte $01
    .word @stamina
    .byte $04
    .byte $01
    .word @clearing
    .byte $06
    .byte $01
    .word @passcut

@name:
    .byte con_def_name_pos
    .byte con_закончить

@stamina:
    .text "Stamina    "
    .byte con_stats_defense, con_def_stamina
    .byte con_закончить

@clearing:
    .text "Clearing   "
    .byte con_stats_defense, con_def_clearing
    .byte con_закончить

@passcut:
    .text "Pass cut   "
    .byte con_stats_defense, con_def_passcut_2
    .byte con_закончить






off_B673_19_show_2_teammates:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $09
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0D
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $03
    .word @reciever_1
    .byte $04
    .byte $03
    .word @reciever_2

@txt:
    .text "Teammates"
    .byte con_закончить

@reciever_1:
    .byte con_rec_name_teammate, $00
    .byte con_закончить

@reciever_2:
    .byte con_rec_name_teammate, $01
    .byte con_закончить






off_B688_1A_show_3_teammates:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $09
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0D
    .byte $07
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $03
    .word @reciever_1
    .byte $04
    .byte $03
    .word @reciever_2
    .byte $06
    .byte $03
    .word @reciever_3

@txt:
    .text "Teammates"
    .byte con_закончить

@reciever_1:
    .byte con_rec_name_teammate, $00
    .byte con_закончить

@reciever_2:
    .byte con_rec_name_teammate, $01
    .byte con_закончить

@reciever_3:
    .byte con_rec_name_teammate, $02
    .byte con_закончить






off_B6A1_1B_show_4_teammates:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $09
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0D
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $03
    .word @reciever_1
    .byte $04
    .byte $03
    .word @reciever_2
    .byte $06
    .byte $03
    .word @reciever_3
    .byte $08
    .byte $03
    .word @reciever_4

@txt:
    .text "Teammates"
    .byte con_закончить

@reciever_1:
    .byte con_rec_name_teammate, $00
    .byte con_закончить

@reciever_2:
    .byte con_rec_name_teammate, $01
    .byte con_закончить

@reciever_3:
    .byte con_rec_name_teammate, $02
    .byte con_закончить

@reciever_4:
    .byte con_rec_name_teammate, $03
    .byte con_закончить






off_B6BE_1C_clear_reciever_stats_window:
; требуется когда перемещаешь курсор паса по полю и в курсоре никого нету
    .word $2232
; X * Y зачищаемой области
    .byte $0E
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $0A
; количество поинтеров
    .byte $00






off_B6C7_1D_reciever_dribble_pass_shoot:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @name_pos
    .byte $02
    .byte $01
    .word @stamina
    .byte $04
    .byte $01
    .word @dribble
    .byte $06
    .byte $01
    .word @pass
    .byte $08
    .byte $01
    .word @shoot

@name_pos:
    .byte con_rec_name_pos
    .byte con_закончить

@stamina:
    .text "Stamina    "
    .byte con_stats_reciever, con_rec_stamina
    .byte con_закончить

@dribble:
    .text "Dribble    "
    .byte con_stats_reciever, con_rec_dribble
    .byte con_закончить

@pass:
    .text "Pass       "
    .byte con_stats_reciever, con_rec_pass
    .byte con_закончить

@shoot:
    .text "Shoot      "
    .byte con_stats_reciever, con_rec_shoot
    .byte con_закончить






off_B6E4_1E_opponent_trap_clearing_pass:
- - - - - 0x0336F4 22:B6E4: 32 22     .word $2232

- - - - - 0x0336F6 22:B6E6: 0C        .byte $0C
- - - - - 0x0336F7 22:B6E7: 0A        .byte $0A

- - - - - 0x0336F8 22:B6E8: 00        .byte $00
- - - - - 0x0336F9 22:B6E9: 01        .byte $01

- - - - - 0x0336FA 22:B6EA: 0C        .byte $0C
- - - - - 0x0336FB 22:B6EB: 09        .byte $09

- - - - - 0x0336FC 22:B6EC: 05        .byte $05

- - - - - 0x0336FD 22:B6ED: 01        .byte $01
- - - - - 0x0336FE 22:B6EE: 02        .byte $02
- - - - - 0x0336FF 22:B6EF: F9 BC     .word off_BCF9_позиция_и_имя_принимающего
- - - - - 0x033701 22:B6F1: 03        .byte $03
- - - - - 0x033702 22:B6F2: 01        .byte $01
- - - - - 0x033703 22:B6F3: FB BC     .word off_BCFB_энергия_принимающего
- - - - - 0x033705 22:B6F5: 05        .byte $05
- - - - - 0x033706 22:B6F6: 01        .byte $01
- - - - - 0x033707 22:B6F7: 27 BD     .word off_BD27
- - - - - 0x033709 22:B6F9: 07        .byte $07
- - - - - 0x03370A 22:B6FA: 01        .byte $01
- - - - - 0x03370B 22:B6FB: 32 BD     .word off_BD32
- - - - - 0x03370D 22:B6FD: 09        .byte $09
- - - - - 0x03370E 22:B6FE: 01        .byte $01
- - - - - 0x03370F 22:B6FF: 1C BD     .word off_BD1C_pass_принимающего






off_B701_1F_opponent_trap_shot_pass:
- - - - - 0x033711 22:B701: 32 22     .word $2232

- - - - - 0x033713 22:B703: 0C        .byte $0C
- - - - - 0x033714 22:B704: 0A        .byte $0A

- - - - - 0x033715 22:B705: 00        .byte $00
- - - - - 0x033716 22:B706: 01        .byte $01

- - - - - 0x033717 22:B707: 0C        .byte $0C
- - - - - 0x033718 22:B708: 09        .byte $09

- - - - - 0x033719 22:B709: 05        .byte $05

- - - - - 0x03371A 22:B70A: 01        .byte $01
- - - - - 0x03371B 22:B70B: 02        .byte $02
- - - - - 0x03371C 22:B70C: F9 BC     .word off_BCF9_позиция_и_имя_принимающего
- - - - - 0x03371E 22:B70E: 03        .byte $03
- - - - - 0x03371F 22:B70F: 01        .byte $01
- - - - - 0x033720 22:B710: FB BC     .word off_BCFB_энергия_принимающего
- - - - - 0x033722 22:B712: 05        .byte $05
- - - - - 0x033723 22:B713: 01        .byte $01
- - - - - 0x033724 22:B714: 27 BD     .word off_BD27
- - - - - 0x033726 22:B716: 07        .byte $07
- - - - - 0x033727 22:B717: 01        .byte $01
- - - - - 0x033728 22:B718: 06 BD     .word off_BD06_shoot_принимающего
- - - - - 0x03372A 22:B71A: 09        .byte $09
- - - - - 0x03372B 22:B71B: 01        .byte $01
- - - - - 0x03372C 22:B71C: 1C BD     .word off_BD1C_pass_принимающего






off_B71E_20_show_1_opponent:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $09
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0D
    .byte $03
; количество поинтеров
    .byte $02
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $03
    .word @opponent_1

@txt:
    .text "Opponents"
    .byte con_закончить

@opponent_1:
    .byte con_rec_name_opponent, $00
    .byte con_закончить






off_B72F_21_show_2_opponents:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $09
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0D
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $03
    .word @opponent_1
    .byte $04
    .byte $03
    .word @opponent_2

@txt:
    .text "Opponents"
    .byte con_закончить

@opponent_1:
    .byte con_rec_name_opponent, $00
    .byte con_закончить

@opponent_2:
    .byte con_rec_name_opponent, $01
    .byte con_закончить






off_B744_22_show_3_opponents:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $09
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0D
    .byte $07
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $03
    .word @opponent_1
    .byte $04
    .byte $03
    .word @opponent_2
    .byte $06
    .byte $03
    .word @opponent_3

@txt:
    .text "Opponents"
    .byte con_закончить

@opponent_1:
    .byte con_rec_name_opponent, $00
    .byte con_закончить

@opponent_2:
    .byte con_rec_name_opponent, $01
    .byte con_закончить

@opponent_3:
    .byte con_rec_name_opponent, $02
    .byte con_закончить






off_B75D_23_show_4_opponents:
    .word $2252
; X * Y зачищаемой области
    .byte $0E
    .byte $09
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0D
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $03
    .word @opponent_1
    .byte $04
    .byte $03
    .word @opponent_2
    .byte $06
    .byte $03
    .word @opponent_3
    .byte $08
    .byte $03
    .word @opponent_4

@txt:
    .text "Opponents"
    .byte con_закончить

@opponent_1:
    .byte con_rec_name_opponent, $00
    .byte con_закончить

@opponent_2:
    .byte con_rec_name_opponent, $01
    .byte con_закончить

@opponent_3:
    .byte con_rec_name_opponent, $02
    .byte con_закончить

@opponent_4:
    .byte con_rec_name_opponent, $03
    .byte con_закончить






off_B77A_24_select_1_of_2_teammates_for_pass:
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $05
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $02
    .word @reciever_1
    .byte $04
    .byte $02
    .word @reciever_2

@txt:
    .text "To whom?"
    .byte con_закончить

@reciever_1:
    .byte con_rec_name_teammate, $00
    .byte con_закончить

@reciever_2:
    .byte con_rec_name_teammate, $01
    .byte con_закончить






off_B78F_25_select_1_of_3_teammates_for_pass:
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $07
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $07
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $02
    .word @reciever_1
    .byte $04
    .byte $02
    .word @reciever_2
    .byte $06
    .byte $02
    .word @reciever_3

@txt:
    .text "To whom?"
    .byte con_закончить

@reciever_1:
    .byte con_rec_name_teammate, $00
    .byte con_закончить

@reciever_2:
    .byte con_rec_name_teammate, $01
    .byte con_закончить

@reciever_3:
    .byte con_rec_name_teammate, $02
    .byte con_закончить






off_B7A8_26_select_1_of_4_teammates_for_pass:
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $09
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $02
    .word @reciever_1
    .byte $04
    .byte $02
    .word @reciever_2
    .byte $06
    .byte $02
    .word @reciever_3
    .byte $08
    .byte $02
    .word @reciever_4

@txt:
    .text "To whom?"
    .byte con_закончить

@reciever_1:
    .byte con_rec_name_teammate, $00
    .byte con_закончить

@reciever_2:
    .byte con_rec_name_teammate, $01
    .byte con_закончить

@reciever_3:
    .byte con_rec_name_teammate, $02
    .byte con_закончить

@reciever_4:
    .byte con_rec_name_teammate, $03
    .byte con_закончить






off_B7C5_27_free_kick_taker:
    .word $2228
; X * Y зачищаемой области
    .byte $17
    .byte $0B
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $17
    .byte $0B
; количество поинтеров
    .byte $0B
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $03
    .word @txt
    .byte $02
    .byte $03
    .word @name_2
    .byte $04
    .byte $03
    .word @name_3
    .byte $06
    .byte $03
    .word @name_4
    .byte $08
    .byte $03
    .word @name_5
    .byte $0A
    .byte $03
    .word @name_6
    .byte $02
    .byte $0D
    .word @name_7
    .byte $04
    .byte $0D
    .word @name_8
    .byte $06
    .byte $0D
    .word @name_9
    .byte $08
    .byte $0D
    .word @name_10
    .byte $0A
    .byte $0D
    .word @name_11

@txt:
    .text " Free Kick taker "
    .byte con_закончить

@name_2:
    .byte con_menu_name, $01
    .byte con_закончить

@name_3:
    .byte con_menu_name, $02
    .byte con_закончить

@name_4:
    .byte con_menu_name, $03
    .byte con_закончить

@name_5:
    .byte con_menu_name, $04
    .byte con_закончить

@name_6:
    .byte con_menu_name, $05
    .byte con_закончить

@name_7:
    .byte con_menu_name, $06
    .byte con_закончить

@name_8:
    .byte con_menu_name, $07
    .byte con_закончить

@name_9:
    .byte con_menu_name, $08
    .byte con_закончить

@name_10:
    .byte con_menu_name, $09
    .byte con_закончить

@name_11:
    .byte con_menu_name, $0A
    .byte con_закончить






off_B7FE_28_rearrange_players_no_yes:
    .word $2228
; X * Y зачищаемой области
    .byte $18
    .byte $0C
; смещение окна X, Y
    .byte $03
    .byte $05
; размер окна X, Y
    .byte $09
    .byte $04
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $03
    .word @txt_1
    .byte $03
    .byte $01
    .word @txt_2
    .byte $06
    .byte $07
    .word @txt_3
    .byte $08
    .byte $07
    .word @txt_4

@txt_1:
    .text "Rearrange"
    .byte con_закончить

@txt_2:
    .text "your players?"
    .byte con_закончить

@txt_3:
    .text "No"
    .byte con_закончить

@txt_4:
    .text "Yes"
    .byte con_закончить






off_B813_29_rearrange_select_done:
    .word $2247
; X * Y зачищаемой области
    .byte $0F
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $01
    .word @txt_1
    .byte $02
    .byte $03
    .word @txt_2
    .byte $04
    .byte $03
    .word @txt_3

@txt_1:
    .text "Rearrange"
    .byte con_закончить

@txt_2:
    .text "Select"
    .byte con_закончить

@txt_3:
    .text "Done"
    .byte con_закончить






off_B828_2A_aim_left_right:
    .word $2247
; X * Y зачищаемой области
    .byte $18
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $03
    .word @txt_1
    .byte $02
    .byte $03
    .word @txt_2
    .byte $04
    .byte $03
    .word @txt_3

@txt_1:
    .text " Aim "
    .byte con_закончить

@txt_2:
    .text "Left"
    .byte con_закончить

@txt_3:
    .text "Right"
    .byte con_закончить






off_B83D_2B_wall_left_right:
    .word $2247
; X * Y зачищаемой области
    .byte $19
    .byte $09
; смещение окна X, Y
    .byte $02
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $04
    .word @txt_1
    .byte $02
    .byte $05
    .word @txt_2
    .byte $04
    .byte $05
    .word @txt_3

@txt_1:
    .text " Wall "
    .byte con_закончить

@txt_2:
    .text "Left"
    .byte con_закончить

@txt_3:
    .text "Right"
    .byte con_закончить






off_B852_2C_pk_aim:
; также используется при нарушении во время игры
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $04
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $04
; количество поинтеров
    .byte $01
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $03
    .word @txt

@txt:
    .text " Aim "
    .byte con_закончить






off_B85F_2D_pk_dive:
; также используется при нарушении во время игры
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $04
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $04
; количество поинтеров
    .byte $02
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $03
    .word @txt

@txt:
    .text "Dive"
    .byte con_закончить






off_B86C_2E_corner_kick_taker:
    .word $2228
; X * Y зачищаемой области
    .byte $17
    .byte $0B
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $17
    .byte $0B
; количество поинтеров
    .byte $0B
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $03
    .word @name_2
    .byte $04
    .byte $03
    .word @name_3
    .byte $06
    .byte $03
    .word @name_4
    .byte $08
    .byte $03
    .word @name_5
    .byte $0A
    .byte $03
    .word @name_6
    .byte $02
    .byte $0D
    .word @name_7
    .byte $04
    .byte $0D
    .word @name_8
    .byte $06
    .byte $0D
    .word @name_9
    .byte $08
    .byte $0D
    .word @name_10
    .byte $0A
    .byte $0D
    .word @name_11

@txt:
    .text " Corner Kick taker "
    .byte con_закончить

@name_2:
    .byte con_menu_name, $01
    .byte con_закончить

@name_3:
    .byte con_menu_name, $02
    .byte con_закончить

@name_4:
    .byte con_menu_name, $03
    .byte con_закончить

@name_5:
    .byte con_menu_name, $04
    .byte con_закончить

@name_6:
    .byte con_menu_name, $05
    .byte con_закончить

@name_7:
    .byte con_menu_name, $06
    .byte con_закончить

@name_8:
    .byte con_menu_name, $07
    .byte con_закончить

@name_9:
    .byte con_menu_name, $08
    .byte con_закончить

@name_10:
    .byte con_menu_name, $09
    .byte con_закончить

@name_11:
    .byte con_menu_name, $0A
    .byte con_закончить






off_B8A5_2F_select_penalty_taker:
    .word $2228
; X * Y зачищаемой области
    .byte $17
    .byte $0B
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $17
    .byte $0B
; количество поинтеров
    .byte $0B
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $03
    .word @name_2
    .byte $04
    .byte $03
    .word @name_3
    .byte $06
    .byte $03
    .word @name_4
    .byte $08
    .byte $03
    .word @name_5
    .byte $0A
    .byte $03
    .word @name_6
    .byte $02
    .byte $0D
    .word @name_7
    .byte $04
    .byte $0D
    .word @name_8
    .byte $06
    .byte $0D
    .word @name_9
    .byte $08
    .byte $0D
    .word @name_10
    .byte $0A
    .byte $0D
    .word @name_11

@txt:
    .text "Select Penalty taker"
    .byte con_закончить

@name_2:
    .byte con_menu_name, $01
    .byte con_закончить

@name_3:
    .byte con_menu_name, $02
    .byte con_закончить

@name_4:
    .byte con_menu_name, $03
    .byte con_закончить

@name_5:
    .byte con_menu_name, $04
    .byte con_закончить

@name_6:
    .byte con_menu_name, $05
    .byte con_закончить

@name_7:
    .byte con_menu_name, $06
    .byte con_закончить

@name_8:
    .byte con_menu_name, $07
    .byte con_закончить

@name_9:
    .byte con_menu_name, $08
    .byte con_закончить

@name_10:
    .byte con_menu_name, $09
    .byte con_закончить

@name_11:
    .byte con_menu_name, $0A
    .byte con_закончить






off_B8DE_30_display_name_stamina_at_the_top:
    .word $2001
; X * Y зачищаемой области
    .byte $0F
    .byte $02
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0F
    .byte $02
; количество текста
    .byte $02
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $01
    .word @имя_игрока_с_мячом
    .byte $01
    .byte $0D
    .word @энергия

@имя_игрока_с_мячом:
    .byte con_plr_with_ball_name
    .byte con_закончить

@энергия:
    .byte con_stats_attack, con_atk_stamina
    .byte con_закончить






off_B8EF_31_display_name_number_at_the_top:
; когда мяч у соперника и тот бежит по полю
    .word $2001
; X * Y зачищаемой области
    .byte $0F
    .byte $02
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0F
    .byte $02
; количество текста
    .byte $02
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word @номер_управляемого_игрока
    .byte $01
    .byte $05
    .word @имя_управляемого_игрока

@номер_управляемого_игрока:
    .byte con_control_plr_number
    .byte con_закончить

@имя_управляемого_игрока:
    .byte con_control_plr_name
    .byte con_закончить






off_B900_32_display_name_opponent_at_the_top:
    .word $2011
; X * Y зачищаемой области
    .byte $0E
    .byte $02
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $02
; количество текста
    .byte $01
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word @имя_игрока_с_мячом

@имя_игрока_с_мячом:
    .byte con_plr_with_ball_name
    .byte con_закончить






off_B90D_33_resume_play_edit_team_data:
    .word $2248
; X * Y зачищаемой области
    .byte $18
    .byte $0B
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $13
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $05
    .word @txt_1
    .byte $02
    .byte $03
    .word @txt_2
    .byte $04
    .byte $03
    .word @txt_3

@txt_1:
    .text " Action "
    .byte con_закончить

@txt_2:
    .text "Resume Play"
    .byte con_закончить

@txt_3:
    .text "Edit Team Data"
    .byte con_закончить






off_B922_34_formation_defense_swap_status_done:
    .word $2227
; X * Y зачищаемой области
    .byte $0D
    .byte $0C
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0C
    .byte $0B
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $02
    .byte $02
    .word @txt_1
    .byte $04
    .byte $02
    .word @txt_2
    .byte $06
    .byte $02
    .word @txt_3
    .byte $08
    .byte $02
    .word @txt_4
    .byte $0A
    .byte $02
    .word @txt_5

@txt_1:
    .text "Formation"
    .byte con_закончить

@txt_2:
    .text "Defense"
    .byte con_закончить

@txt_3:
    .text "Swap"
    .byte con_закончить

@txt_4:
    .text "Status"
    .byte con_закончить

@txt_5:
    .text "Done"
    .byte con_закончить






off_B93F_35_formation:
    .word $2268
; X * Y зачищаемой области
    .byte $0C
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0C
    .byte $0A
; количество поинтеров
    .byte $06
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $01
    .word @txt_1
    .byte $02
    .byte $02
    .word @txt_2
    .byte $04
    .byte $02
    .word @txt_3
    .byte $06
    .byte $02
    .word @txt_4
    .byte $08
    .byte $02
    .word @txt_5
    .byte $09
    .byte $03
    .word @txt_6

@txt_1:
    .text "Formation"
    .byte con_закончить

@txt_2:
    .text "4:3:3"
    .byte con_закончить

@txt_3:
    .text "4:4:2"
    .byte con_закончить

@txt_4:
    .text "3:5:2"
    .byte con_закончить

@txt_5:
    .text "Brazil"
    .byte con_закончить

@txt_6:
    .text "tactics"
    .byte con_закончить






off_B95C_36_defense:
    .word $22A8
; X * Y зачищаемой области
    .byte $0C
    .byte $08
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0C
    .byte $07
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $01
    .word @txt_1
    .byte $02
    .byte $02
    .word @txt_2
    .byte $04
    .byte $02
    .word @txt_3
    .byte $06
    .byte $02
    .word @txt_4

@txt_1:
    .text "Defense"
    .byte con_закончить

@txt_2:
    .text "Normal"
    .byte con_закончить

@txt_3:
    .text "Press"
    .byte con_закончить

@txt_4:
    .text "Counter"
    .byte con_закончить






off_B975_37_swap:
    .word $22E8
; X * Y зачищаемой области
    .byte $0C
    .byte $06
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0C
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $01
    .word @txt_1
    .byte $02
    .byte $02
    .word @txt_2
    .byte $04
    .byte $02
    .word @txt_3

@txt_1:
    .text "Swap"
    .byte con_закончить

@txt_2:
    .text "Players"
    .byte con_закончить

@txt_3:
    .text "Positions"
    .byte con_закончить






off_B98A_38_no_subs_left:
    .word $22E7
; X * Y зачищаемой области
    .byte $0D
    .byte $05
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0D
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt_1
    .byte $02
    .byte $01
    .word @txt_2
    .byte $04
    .byte $02
    .word @txt_3

@txt_1:
    .text "Swap"
    .byte con_закончить

@txt_2:
    .text "Only 3 subs"
    .byte con_закончить

@txt_3:
    .text "per match!"
    .byte con_закончить






off_B99B_39_swap_main_players:
    .word $2220
; X * Y зачищаемой области
    .byte $20
    .byte $0B
; смещение окна X, Y
    .byte $01
    .byte $00
; размер окна X, Y
    .byte $1E
    .byte $0B
; количество поинтеров
    .byte $0B
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $07
    .word @txt
    .byte $02
    .byte $03
    .word @name_2
    .byte $04
    .byte $03
    .word @name_3
    .byte $06
    .byte $03
    .word @name_4
    .byte $08
    .byte $03
    .word @name_5
    .byte $0A
    .byte $03
    .word @name_6
    .byte $02
    .byte $13
    .word @name_7
    .byte $04
    .byte $13
    .word @name_8
    .byte $06
    .byte $13
    .word @name_9
    .byte $08
    .byte $12
    .word @name_10
    .byte $0A
    .byte $12
    .word @name_11

@txt:
    .text " Swap Positions "
    .byte con_закончить

@name_2:
    .text "2 "
    .byte con_menu_name, $01
    .byte con_закончить

@name_3:
    .text "3 "
    .byte con_menu_name, $02
    .byte con_закончить

@name_4:
    .text "4 "
    .byte con_menu_name, $03
    .byte con_закончить

@name_5:
    .text "5 "
    .byte con_menu_name, $04
    .byte con_закончить

@name_6:
    .text "6 "
    .byte con_menu_name, $05
    .byte con_закончить

@name_7:
    .text "7 "
    .byte con_menu_name, $06
    .byte con_закончить

@name_8:
    .text "8 "
    .byte con_menu_name, $07
    .byte con_закончить

@name_9:
    .text "9 "
    .byte con_menu_name, $08
    .byte con_закончить

@name_10:
    .text "10 "
    .byte con_menu_name, $09
    .byte con_закончить

@name_11:
    .text "11 "
    .byte con_menu_name, $0A
    .byte con_закончить






off_B9F8_3A_swap_sub_players:
    .word $2220
; X * Y зачищаемой области
    .byte $20
    .byte $0B
; смещение окна X, Y
    .byte $01
    .byte $00
; размер окна X, Y
    .byte $1E
    .byte $0B
; количество поинтеров
    .byte $0B
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $06
    .word @txt
    .byte $02
    .byte $03
    .word @sub_plr_1_name
    .byte $04
    .byte $03
    .word @sub_plr_2_name
    .byte $06
    .byte $03
    .word @sub_plr_3_name
    .byte $08
    .byte $03
    .word @sub_plr_4_name
    .byte $0A
    .byte $03
    .word @sub_plr_5_name
    .byte $02
    .byte $0D
    .word @sub_plr_6_name
    .byte $04
    .byte $0D
    .word @sub_plr_7_name
    .byte $06
    .byte $0D
    .word @sub_plr_8_name
    .byte $08
    .byte $15
    .word @sub_plr_gk1_name
    .byte $0A
    .byte $15
    .word @sub_plr_gk2_name

@txt:
    .text " Who will you use? "
    .byte con_закончить

@sub_plr_1_name:
    .byte con_menu_name, $16
    .byte con_закончить

@sub_plr_2_name:
    .byte con_menu_name, $17
    .byte con_закончить

@sub_plr_3_name:
    .byte con_menu_name, $18
    .byte con_закончить

@sub_plr_4_name:
    .byte con_menu_name, $19
    .byte con_закончить

@sub_plr_5_name:
    .byte con_menu_name, $1A
    .byte con_закончить

@sub_plr_6_name:
    .byte con_menu_name, $1B
    .byte con_закончить

@sub_plr_7_name:
    .byte con_menu_name, $1C
    .byte con_закончить

@sub_plr_8_name:
    .byte con_menu_name, $1D
    .byte con_закончить

@sub_plr_gk1_name:
    .byte con_menu_name, $1E
    .byte con_закончить

@sub_plr_gk2_name:
    .byte con_menu_name, $1F
    .byte con_закончить






off_BA39_3B_whom_to_sub:
    .word $2220
; X * Y зачищаемой области
    .byte $20
    .byte $0C
; смещение окна X, Y
    .byte $01
    .byte $00
; размер окна X, Y
    .byte $1E
    .byte $0C
; количество поинтеров
    .byte $0C
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $09
    .word @txt
    .byte $02
    .byte $03
    .word @name_2
    .byte $04
    .byte $03
    .word @name_3
    .byte $06
    .byte $03
    .word @name_4
    .byte $08
    .byte $03
    .word @name_5
    .byte $0A
    .byte $03
    .word @name_6
    .byte $02
    .byte $13
    .word @name_7
    .byte $04
    .byte $13
    .word @name_8
    .byte $06
    .byte $13
    .word @name_9
    .byte $08
    .byte $12
    .word @name_10
    .byte $0A
    .byte $12
    .word @name_11
    .byte $0B
    .byte $0B
    .word @name_gk

@txt:
    .text " Whom to sub? "
    .byte con_закончить

@name_2:
    .text "2 "
    .byte con_menu_name, $01
    .byte con_закончить

@name_3:
    .text "3 "
    .byte con_menu_name, $02
    .byte con_закончить

@name_4:
    .text "4 "
    .byte con_menu_name, $03
    .byte con_закончить

@name_5:
    .text "5 "
    .byte con_menu_name, $04
    .byte con_закончить

@name_6:
    .text "6 "
    .byte con_menu_name, $05
    .byte con_закончить

@name_7:
    .text "7 "
    .byte con_menu_name, $06
    .byte con_закончить

@name_8:
    .text "8 "
    .byte con_menu_name, $07
    .byte con_закончить

@name_9:
    .text "9 "
    .byte con_menu_name, $08
    .byte con_закончить

@name_10:
    .text "10 "
    .byte con_menu_name, $09
    .byte con_закончить

@name_11:
    .text "11 "
    .byte con_menu_name, $0A
    .byte con_закончить

@name_gk:
    .text "GK "
    .byte con_menu_name, $00
    .byte con_закончить






off_BAA2_3C_stamina_fielded_players:
    .word $2220
; X * Y зачищаемой области
    .byte $20
    .byte $0D
; смещение окна X, Y
    .byte $01
    .byte $00
; размер окна X, Y
    .byte $1E
    .byte $0C
; количество поинтеров
    .byte $17
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $07
    .word @txt
    .byte $01
    .byte $03
    .word @main_plr_2_name
    .byte $02
    .byte $06
    .word @main_plr_2_stamina
    .byte $04
    .byte $03
    .word @main_plr_3_name
    .byte $05
    .byte $06
    .word @main_plr_3_stamina
    .byte $07
    .byte $03
    .word @main_plr_4_name
    .byte $08
    .byte $06
    .word @main_plr_4_stamina
    .byte $0A
    .byte $03
    .word @main_plr_5_name
    .byte $0B
    .byte $06
    .word @main_plr_5_stamina
    .byte $01
    .byte $0C
    .word @main_plr_6_name
    .byte $02
    .byte $0F
    .word @main_plr_6_stamina
    .byte $04
    .byte $0C
    .word @main_plr_7_name
    .byte $05
    .byte $0F
    .word @main_plr_7_stamina
    .byte $07
    .byte $0C
    .word @main_plr_8_name
    .byte $08
    .byte $0F
    .word @main_plr_8_stamina
    .byte $0A
    .byte $0C
    .word @main_plr_9_name
    .byte $0B
    .byte $0F
    .word @main_plr_9_stamina
    .byte $01
    .byte $15
    .word @main_plr_10_name
    .byte $02
    .byte $18
    .word @main_plr_10_stamina
    .byte $04
    .byte $15
    .word @main_plr_11_name
    .byte $05
    .byte $18
    .word @main_plr_11_stamina
    .byte $0A
    .byte $15
    .word @main_plr_gk_name
    .byte $0B
    .byte $18
    .word @main_plr_gk_stamina

@txt:
    .text " Fielded Players "
    .byte con_закончить

@main_plr_2_name:
    .byte con_menu_name, $01
    .byte con_закончить

@main_plr_2_stamina:
    .byte con_plr_stamina, $01
    .byte con_закончить

@main_plr_3_name:
    .byte con_menu_name, $02
    .byte con_закончить

@main_plr_3_stamina:
    .byte con_plr_stamina, $02
    .byte con_закончить

@main_plr_4_name:
    .byte con_menu_name, $03
    .byte con_закончить

@main_plr_4_stamina:
    .byte con_plr_stamina, $03
    .byte con_закончить

@main_plr_5_name:
    .byte con_menu_name, $04
    .byte con_закончить

@main_plr_5_stamina:
    .byte con_plr_stamina, $04
    .byte con_закончить

@main_plr_6_name:
    .byte con_menu_name, $05
    .byte con_закончить

@main_plr_6_stamina:
    .byte con_plr_stamina, $05
    .byte con_закончить

@main_plr_7_name:
    .byte con_menu_name, $06
    .byte con_закончить

@main_plr_7_stamina:
    .byte con_plr_stamina, $06
    .byte con_закончить

@main_plr_8_name:
    .byte con_menu_name, $07
    .byte con_закончить

@main_plr_8_stamina:
    .byte con_plr_stamina, $07
    .byte con_закончить

@main_plr_9_name:
    .byte con_menu_name, $08
    .byte con_закончить

@main_plr_9_stamina:
    .byte con_plr_stamina, $08
    .byte con_закончить

@main_plr_10_name:
    .byte con_menu_name, $09
    .byte con_закончить

@main_plr_10_stamina:
    .byte con_plr_stamina, $09
    .byte con_закончить

@main_plr_11_name:
    .byte con_menu_name, $0A
    .byte con_закончить

@main_plr_11_stamina:
    .byte con_plr_stamina, $0A
    .byte con_закончить

@main_plr_gk_name:
    .byte con_menu_name, $00
    .byte con_закончить

@main_plr_gk_stamina:
    .byte con_plr_stamina, $00
    .byte con_закончить





off_BB03_3D_stamina_substitutes_bench:
    .word $2220
; X * Y зачищаемой области
    .byte $20
    .byte $0D
; смещение окна X, Y
    .byte $01
    .byte $00
; размер окна X, Y
    .byte $1E
    .byte $0C
; количество поинтеров
    .byte $15
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $06
    .word @txt
    .byte $01
    .byte $03
    .word @sub_plr_1_name
    .byte $02
    .byte $06
    .word @sub_plr_1_stamina
    .byte $04
    .byte $03
    .word @sub_plr_2_name
    .byte $05
    .byte $06
    .word @sub_plr_2_stamina
    .byte $07
    .byte $03
    .word @sub_plr_3_name
    .byte $08
    .byte $06
    .word @sub_plr_3_stamina
    .byte $0A
    .byte $03
    .word @sub_plr_4_name
    .byte $0B
    .byte $06
    .word @sub_plr_4_stamina
    .byte $01
    .byte $0C
    .word @sub_plr_5_name
    .byte $02
    .byte $0F
    .word @sub_plr_5_stamina
    .byte $04
    .byte $0C
    .word @sub_plr_6_name
    .byte $05
    .byte $0F
    .word @sub_plr_6_stamina
    .byte $07
    .byte $0C
    .word @sub_plr_7_name
    .byte $08
    .byte $0F
    .word @sub_plr_7_stamina
    .byte $0A
    .byte $0C
    .word @sub_plr_8_name
    .byte $0B
    .byte $0F
    .word @sub_plr_8_stamina
    .byte $07
    .byte $15
    .word @sub_plr_gk1_name
    .byte $08
    .byte $18
    .word @sub_plr_gk1_stamina
    .byte $0A
    .byte $15
    .word @sub_plr_gk2_name
    .byte $0B
    .byte $18
    .word @sub_plr_gk2_stamina

@txt:
    .text " Substitute's Bench "
    .byte con_закончить

@sub_plr_1_name:
    .byte con_menu_name, $16
    .byte con_закончить

@sub_plr_1_stamina:
    .byte con_plr_stamina, $16
    .byte con_закончить

@sub_plr_2_name:
    .byte con_menu_name, $17
    .byte con_закончить

@sub_plr_2_stamina:
    .byte con_plr_stamina, $17
    .byte con_закончить

@sub_plr_3_name:
    .byte con_menu_name, $18
    .byte con_закончить

@sub_plr_3_stamina:
    .byte con_plr_stamina, $18
    .byte con_закончить

@sub_plr_4_name:
    .byte con_menu_name, $19
    .byte con_закончить

@sub_plr_4_stamina:
    .byte con_plr_stamina, $19
    .byte con_закончить

@sub_plr_5_name:
    .byte con_menu_name, $1A
    .byte con_закончить

@sub_plr_5_stamina:
    .byte con_plr_stamina, $1A
    .byte con_закончить

@sub_plr_6_name:
    .byte con_menu_name, $1B
    .byte con_закончить

@sub_plr_6_stamina:
    .byte con_plr_stamina, $1B
    .byte con_закончить

@sub_plr_7_name:
    .byte con_menu_name, $1C
    .byte con_закончить

@sub_plr_7_stamina:
    .byte con_plr_stamina, $1C
    .byte con_закончить

@sub_plr_8_name:
    .byte con_menu_name, $1D
    .byte con_закончить

@sub_plr_8_stamina:
    .byte con_plr_stamina, $1D
    .byte con_закончить

@sub_plr_gk1_name:
    .byte con_menu_name, $1E
    .byte con_закончить

@sub_plr_gk1_stamina:
    .byte con_plr_stamina, $1E
    .byte con_закончить

@sub_plr_gk2_name:
    .byte con_menu_name, $1F
    .byte con_закончить

@sub_plr_gk2_stamina:
    .byte con_plr_stamina, $1F
    .byte con_закончить






off_BB5C_3E_pk_shootout_select_taker:
    .word $2060
; X * Y зачищаемой области
    .byte $20
    .byte $01
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $20
    .byte $01
; количество поинтеров
    .byte $01
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $03
    .word @txt

@txt:
    .text "PK Shootout - Select Taker"
    .byte con_закончить






off_BB69_3F_pk_players_list:
; 0x030C3C смещение для цифры
    .word $20C3
; X * Y зачищаемой области
    .byte $0C
    .byte $14
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0C
    .byte $14
; количество поинтеров
    .byte $0B
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $07
    .word @txt
    .byte $02
    .byte $00
    .word @list
    .byte $04
    .byte $00
    .word @list
    .byte $06
    .byte $00
    .word @list
    .byte $08
    .byte $00
    .word @list
    .byte $0A
    .byte $00
    .word @list
    .byte $0C
    .byte $00
    .word @list
    .byte $0E
    .byte $00
    .word @list
    .byte $10
    .byte $00
    .word @list
    .byte $12
    .byte $00
    .word @list
    .byte $14
    .byte $00
    .word @list

@txt:
    .text "Skill"
    .byte con_закончить

@list:
    .byte con_pk_players_list
    .byte con_закончить






off_BB9E_40_pk_order:
    .word $2111
; X * Y зачищаемой области
    .byte $0E
    .byte $0E
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $0E
; количество поинтеров
    .byte $06
; смещение текста Y, X + поинтеры на текст
    .byte $02
    .byte $03
    .word @txt
    .byte $04
    .byte $02
    .word @shooter_1
    .byte $06
    .byte $02
    .word @shooter_2
    .byte $08
    .byte $02
    .word @shooter_3
    .byte $0A
    .byte $02
    .word @shooter_4
    .byte $0C
    .byte $02
    .word @shooter_5

@txt:
    .text "PK Order"
    .byte con_закончить

@shooter_1:
    .text "1 "
    .byte con_rec_name_teammate, $00
    .byte con_закончить

@shooter_2:
    .text "2 "
    .byte con_rec_name_teammate, $01
    .byte con_закончить

@shooter_3:
    .text "3 "
    .byte con_rec_name_teammate, $02
    .byte con_закончить

@shooter_4:
    .text "4 "
    .byte con_rec_name_teammate, $03
    .byte con_закончить

@shooter_5:
    .text "5 "
    .byte con_rec_name_teammate, $04
    .byte con_закончить






off_BBBF_41_pk_and_score:
    .word $2240
; X * Y зачищаемой области
    .byte $07
    .byte $05
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $07
    .byte $05
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $02
    .byte $01
    .word @team_left
    .byte $02
    .byte $05
    .word @score_left
    .byte $04
    .byte $01
    .word @team_right
    .byte $04
    .byte $05
    .word @score_right

@txt:
    .byte $90, $91, $92     ; P.K.
    .byte con_закончить

@team_left:
    .byte con_team_name, $00
    .byte con_закончить

@score_left:
    .byte con_score, $00
    .byte con_закончить

@team_right:
    .byte con_team_name, $01
    .byte con_закончить

@score_right:
    .byte con_score, $01
    .byte con_закончить






off_BC94:
    .byte con_E6, $00
    .byte con_закончить

off_BC97:
    .byte con_E6, $01
    .byte con_закончить

off_BCD3:
- D - I - 0x033CE3 22:BCD3: CD        .byte $CD
- D - I - 0x033CE4 22:BCD4: 4D        .byte $4D
- D - I - 0x033CE5 22:BCD5: 46        .byte $46
- D - I - 0x033CE6 22:BCD6: 6F        .byte $6F
- D - I - 0x033CE7 22:BCD7: 54        .byte $54
- D - I - 0x033CE8 22:BCD8: 00        .byte $00
- D - I - 0x033CE9 22:BCD9: 00        .byte $00
- D - I - 0x033CEA 22:BCDA: 00        .byte $00
- D - I - 0x033CEB 22:BCDB: E8        .byte $E8
- D - I - 0x033CEC 22:BCDC: 0E        .byte $0E
- D - I - 0x033CED 22:BCDD: FC        .byte con_закончить

off_BCDE:
- D - I - 0x033CEE 22:BCDE: 48        .byte $48
- D - I - 0x033CEF 22:BCDF: 68        .byte $68
- D - I - 0x033CF0 22:BCE0: 41        .byte $41
- D - I - 0x033CF1 22:BCE1: 7D        .byte $7D
- D - I - 0x033CF2 22:BCE2: 00        .byte $00
- D - I - 0x033CF3 22:BCE3: 00        .byte $00
- D - I - 0x033CF4 22:BCE4: 00        .byte $00
- D - I - 0x033CF5 22:BCE5: 00        .byte $00
- D - I - 0x033CF6 22:BCE6: E8        .byte $E8
- D - I - 0x033CF7 22:BCE7: 0C        .byte $0C
- D - I - 0x033CF8 22:BCE8: FC        .byte con_закончить

off_BCF9_позиция_и_имя_принимающего:
    .byte con_rec_name_pos
    .byte con_закончить

off_BCFB_энергия_принимающего:
    .text "Stamina    "
    .byte con_stats_reciever, con_rec_stamina
    .byte con_закончить

off_BD06_shoot_принимающего:
    .text "Shoot      "
    .byte con_stats_reciever, con_rec_shoot
    .byte con_закончить

off_BD1C_pass_принимающего:
    .text "Pass       "
    .byte con_stats_reciever, con_rec_pass
    .byte con_закончить

off_BD27:       ; unused <トラップ>
- - - - - 0x033D37 22:BD27: 54        .byte $54
- - - - - 0x033D38 22:BD28: 67        .byte $67
- - - - - 0x033D39 22:BD29: 6F        .byte $6F
- - - - - 0x033D3A 22:BD2A: CF        .byte $CF
- - - - - 0x033D3B 22:BD2B: 00        .byte $00
- - - - - 0x033D3C 22:BD2C: 00        .byte $00
- - - - - 0x033D3D 22:BD2D: 00        .byte $00
- - - - - 0x033D3E 22:BD2E: 00        .byte $00
- - - - - 0x033D3F 22:BD2F: E3        .byte con_stats_reciever, con_rec_trap
- - - - - 0x033D41 22:BD31: FC        .byte con_закончить

off_BD32:       ; unused <クリアー>
- - - - - 0x033D42 22:BD32: 48        .byte $48
- - - - - 0x033D43 22:BD33: 68        .byte $68
- - - - - 0x033D44 22:BD34: 41        .byte $41
- - - - - 0x033D45 22:BD35: 7D        .byte $7D
- - - - - 0x033D46 22:BD36: 00        .byte $00
- - - - - 0x033D47 22:BD37: 00        .byte $00
- - - - - 0x033D48 22:BD38: 00        .byte $00
- - - - - 0x033D49 22:BD39: 00        .byte $00
- - - - - 0x033D4A 22:BD3A: E3        .byte con_stats_reciever, con_rec_clearing
- - - - - 0x033D4C 22:BD3C: FC        .byte con_закончить

off_BE6F:
- D - I - 0x033E7F 22:BE6F: 0C        .byte $0C
- D - I - 0x033E80 22:BE70: 01        .byte $01
- D - I - 0x033E81 22:BE71: 02        .byte $02
- D - I - 0x033E82 22:BE72: 0B        .byte $0B
- D - I - 0x033E83 22:BE73: 02        .byte $02
- D - I - 0x033E84 22:BE74: 06        .byte $06
- D - I - 0x033E85 22:BE75: 02        .byte $02
- D - I - 0x033E86 22:BE76: FC        .byte con_закончить

off_BE77:
- D - I - 0x033E87 22:BE77: 51        .byte $51
- D - I - 0x033E88 22:BE78: 7D        .byte $7D
- D - I - 0x033E89 22:BE79: 61        .byte $61
- D - I - 0x033E8A 22:BE7A: C1        .byte $C1
- D - I - 0x033E8B 22:BE7B: 7D        .byte $7D
- D - I - 0x033E8C 22:BE7C: 50        .byte $50
- D - I - 0x033E8D 22:BE7D: 2D        .byte $2D
- D - I - 0x033E8E 22:BE7E: 00        .byte $00
- D - I - 0x033E8F 22:BE7F: 06        .byte $06
- D - I - 0x033E90 22:BE80: 04        .byte $04
- D - I - 0x033E91 22:BE81: 29        .byte $29
- D - I - 0x033E92 22:BE82: FC        .byte con_закончить

off_BEEA:
- D - I - 0x033EFA 22:BEEA: 87        .byte $87
- D - I - 0x033EFB 22:BEEB: 8B        .byte $8B
- D - I - 0x033EFC 22:BEEC: FC        .byte con_закончить

off_BEED:
- D - I - 0x033EFD 22:BEED: 35        .byte $35
- D - I - 0x033EFE 22:BEEE: FC        .byte con_закончить

off_BEEF:
- D - I - 0x033EFF 22:BEEF: 36        .byte $36
- D - I - 0x033F00 22:BEF0: FC        .byte con_закончить

off_BEF1:
- D - I - 0x033F01 22:BEF1: 37        .byte $37
- D - I - 0x033F02 22:BEF2: FC        .byte con_закончить

off_BEF3:
- D - I - 0x033F03 22:BEF3: 38        .byte $38
- D - I - 0x033F04 22:BEF4: FC        .byte con_закончить

off_BEF5:
- D - I - 0x033F05 22:BEF5: 39        .byte $39
- D - I - 0x033F06 22:BEF6: FC        .byte con_закончить

off_BEF7:
- D - I - 0x033F07 22:BEF7: 3A        .byte $3A
- D - I - 0x033F08 22:BEF8: FC        .byte con_закончить

off_BEF9:
- D - I - 0x033F09 22:BEF9: 3B        .byte $3B
- D - I - 0x033F0A 22:BEFA: FC        .byte con_закончить

off_BEFB:
- D - I - 0x033F0B 22:BEFB: 3C        .byte $3C
- D - I - 0x033F0C 22:BEFC: FC        .byte con_закончить

off_BEFD:
- D - I - 0x033F0D 22:BEFD: 34        .byte $34
- D - I - 0x033F0E 22:BEFE: 33        .byte $33
- D - I - 0x033F0F 22:BEFF: FC        .byte con_закончить

off_BF00:
- D - I - 0x033F10 22:BF00: 34        .byte $34
- D - I - 0x033F11 22:BF01: 34        .byte $34
- D - I - 0x033F12 22:BF02: FC        .byte con_закончить

off_BF4D:
- D - I - 0x033F5D 22:BF4D: F5        .byte con_plr_stamina, $00
- D - I - 0x033F5F 22:BF4F: FC        .byte con_закончить

off_BF50:
- D - I - 0x033F60 22:BF50: F5        .byte con_plr_stamina, $01
- D - I - 0x033F62 22:BF52: FC        .byte con_закончить

off_BF53:
- D - I - 0x033F63 22:BF53: F5        .byte con_plr_stamina, $02
- D - I - 0x033F65 22:BF55: FC        .byte con_закончить

off_BF56:
- D - I - 0x033F66 22:BF56: F5        .byte con_plr_stamina, $03
- D - I - 0x033F68 22:BF58: FC        .byte con_закончить

off_BF59:
- D - I - 0x033F69 22:BF59: F5        .byte con_plr_stamina, $04
- D - I - 0x033F6B 22:BF5B: FC        .byte con_закончить

off_BF5C:
- D - I - 0x033F6C 22:BF5C: F5        .byte con_plr_stamina, $05
- D - I - 0x033F6E 22:BF5E: FC        .byte con_закончить

off_BF5F:
- D - I - 0x033F6F 22:BF5F: F5        .byte con_plr_stamina, $06
- D - I - 0x033F71 22:BF61: FC        .byte con_закончить

off_BF62:
- D - I - 0x033F72 22:BF62: F5        .byte con_plr_stamina, $07
- D - I - 0x033F74 22:BF64: FC        .byte con_закончить

off_BF65:
- D - I - 0x033F75 22:BF65: F5        .byte con_plr_stamina, $08
- D - I - 0x033F77 22:BF67: FC        .byte con_закончить

off_BF68:
- D - I - 0x033F78 22:BF68: F5        .byte con_plr_stamina, $09
- D - I - 0x033F7A 22:BF6A: FC        .byte con_закончить

off_BF6B:
- D - I - 0x033F7B 22:BF6B: F5        .byte con_plr_stamina, $0A
- D - I - 0x033F7D 22:BF6D: FC        .byte con_закончить

off_BF6E:       ; unused
- - - - - 0x033F7E 22:BF6E: F5        .byte con_plr_stamina, $16
- - - - - 0x033F80 22:BF70: FC        .byte con_закончить

off_BF71:       ; unused
- - - - - 0x033F81 22:BF71: F5        .byte con_plr_stamina, $17
- - - - - 0x033F83 22:BF73: FC        .byte con_закончить

off_BF74:       ; unused
- - - - - 0x033F84 22:BF74: F5        .byte con_plr_stamina, $18
- - - - - 0x033F86 22:BF76: FC        .byte con_закончить

off_BF77:       ; unused
- - - - - 0x033F87 22:BF77: F5        .byte con_plr_stamina, $19
- - - - - 0x033F89 22:BF79: FC        .byte con_закончить

off_BF7A:       ; unused
- - - - - 0x033F8A 22:BF7A: F5        .byte con_plr_stamina, $1A
- - - - - 0x033F8C 22:BF7C: FC        .byte con_закончить

off_BF7D:       ; unused
- - - - - 0x033F8D 22:BF7D: F5        .byte con_plr_stamina, $1B
- - - - - 0x033F8F 22:BF7F: FC        .byte con_закончить

off_BF80:       ; unused
- - - - - 0x033F90 22:BF80: F5        .byte con_plr_stamina, $1C
- - - - - 0x033F92 22:BF82: FC        .byte con_закончить

off_BF83:       ; unused
- - - - - 0x033F93 22:BF83: F5        .byte con_plr_stamina, $1D
- - - - - 0x033F95 22:BF85: FC        .byte con_закончить

off_BF86:       ; unused
- - - - - 0x033F96 22:BF86: F5        .byte con_plr_stamina, $1E
- - - - - 0x033F98 22:BF88: FC        .byte con_закончить

off_BF89:       ; unused
- - - - - 0x033F99 22:BF89: F5        .byte con_plr_stamina, $1F
- - - - - 0x033F9B 22:BF8B: FC        .byte con_закончить
