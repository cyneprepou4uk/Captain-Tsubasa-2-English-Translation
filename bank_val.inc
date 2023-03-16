; todo
    ; предположительно неправильное название ram
        ; 0x036170 какой-то стремный индекс расстановки и защиты
            ; проверить X по логу
    ; проверить некоторые места по логу
        ; 0x032CA9
        ; 0x031672
        ; 0x0391FF
        ; 0x038F25
        ; 0x038587
        ; 0x0352DD
        ; 0x03082F
        ; 0x030501
        ; 0x0270DF
        ; 0x0213EF
        ; 0x021F4E
        ; off_case_30_00_00_02_00_01:
        ; off_case_9CF3_03_02:
        ; off_case_0B_01_04_00:
        ; off_case_0B_00_04_00:
        ; off_case_00_02_01_01_00:
        ; 0x02033B
        ; 0x02001F
        ; 0x01DAF6
        ; 0x01852A
        ; 0x0044F3
        ; 0x002C91
        ; 0x0017BD
        ; con_s_id_50 и выше, выяснить где пишется
        ; 0x03CC03 выяснить как часто нужен был этот цикл, неужели дохера звуков в очереди?
        ; 0x0023AD
    ; подправить комменты
        ; ram_команда_с_мячом
        ; off_case_9C5B_01_01:
        ; off_case_00_01_01_01_00:
    ; добавить con
        ; 0x028978 вместо con_animation в банке 10
        ; ram_звук 0x03CC03
    ; разобрать таблицы
        ; 0x028274 возможно палитра
        ; 0x0166FE
        ; 0x016B74
        ; 0x017BF4
        ; 0x002DAE (чуть ниже) выяснить зачем первый байт
        ; 0x003833
        ; 0x003B20
        ; 0x003B3E
        ; 0x024010 0x026010
    ; проверить работоспособность
        ; 0x01664A
        ; 0x020612 con_bra_40
    ; добавить читы
        ; начальная команда
        ; уровень игроков равен номеру команды
    ; выяснить что за херня
        ; 0x0024FD
        ; 0x03E761
        ; 0x030A6F
        ; off_case_0A_00_01_00:
        ; off_case_00_02_01_02_03:
        ; off_case_00_01_01_02_03:
        ; 0x0204C9
        ; 0x0202C1
        ; 0x0040E7
        ; 0x001C29
        ; 0x001694
        ; 0x001319
        ; 0x001100
        ; 0x00080D



; MISC
con_prg_bank                                = $00 ; номер prg банка
con_chr_bank                                = $00 ; номер chr банка
con_cutscene                                = $00 ; номер катсцены



; параметры игроков
con_plr_id                                  = $00 ; уникальный номер игрока. если 00, значит это обычный клон
con_plr_guts_lo                             = $01 ; энергия (предположительно для соперников что-то другое 0x035071)
con_plr_guts_hi                             = $02 ; энергия
con_plr_lvl                                 = $03 ; текущий уровень игрока
; con_plr_04                                = $04 ; unused
con_plr_pos_X_lo                            = $05 ; 
con_plr_pos_X_hi                            = $06 ; 
con_plr_pos_Y_lo                            = $07 ; 
con_plr_pos_Y_hi                            = $08 ; 
con_plr_09                                  = $09 ; какой-то параметр ???
con_plr_stun                                = $0A ; stunlock, таймер, во время которого игрок не может двигаться автоматически и нападать (также для киперов)
con_plr_0B                                  = $0B ; какой-то параметр ??? видимо не используется



; особые параметры киперов
; в теории у кипера может быть Y_lo в 0x03E5B0, но это скорее баг
con_таймер_наебки                           = $05 ; при наебке кипера (вероятно при постоянных отбиваниях тоже)
con_кипер_параметр_06                       = $06 ; 
con_величина_наебки                         = $07 ; при наебке кипера (вероятно при постоянных отбиваниях тоже)



; особые параметры ботов
con_бот_флаг_1_ХЗ                           = $01 ; флаг злого шнайдера если 80, пишется в 0x020467
con_бот_флаг_2_ХЗ                           = $02 ; ??? сила злого шнайдера



; ram_btn_hold
; ram_btn_press
con_btn_Right                               = $01 ; 
con_btn_Left                                = $02 ; 
con_btn_Down                                = $04 ; 
con_btn_Up                                  = $08 ; 
con_btn_Start                               = $10 ; 
con_btn_Select                              = $20 ; 
con_btn_B                                   = $40 ; 
con_btn_A                                   = $80 ; 

con_btns_Dpad                               = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F



; меню для 0x0333DF
; нужны комменты 0x03D3FC 0x03D500 0x03D5F7 (чуть ниже)
; 0x03D6C3 0x03D87E 0x03D96D 0x03D984
con_B3CF_00                                 = $00 ; period_number_and_time
con_B3CF_01                                 = $01 ; team_names_and_score
con_B3CF_02                                 = $02 ; player_action_window
con_B3CF_03                                 = $03 ; player_dribble_pass_shoot
con_B3CF_04                                 = $04 ; player_trap_pass_shot
con_B3CF_05                                 = $05 ; player_trap_pass_clearing
con_B3CF_06                                 = $06 ; gk_punch_catch
con_B3CF_07                                 = $07 ; gk_action_window_vs_player
con_B3CF_08                                 = $08 ; gk_counter_drib_shot
con_B3CF_09                                 = $09 ; 2_specials
con_B3CF_0A                                 = $0A ; 3_specials
con_B3CF_0B                                 = $0B ; 4_specials
con_B3CF_0C                                 = $0C ; 2_defensive_specials
con_B3CF_0D                                 = $0D ; gk_dive
; con_B3CF_0E                               = $0E ; 
con_B3CF_0F                                 = $0F ; pass_select_a_teammate
con_B3CF_10                                 = $10 ; 1_2_pass_choose_a_partner
con_B3CF_11                                 = $11 ; no_players_nearby
con_B3CF_12                                 = $12 ; 1_player_action_window
con_B3CF_13                                 = $13 ; 2_players_action_window
con_B3CF_14                                 = $14 ; 3_players_action_window
con_B3CF_15                                 = $15 ; 4_players_action_window
con_B3CF_16                                 = $16 ; defender_tackle_block_passcut
con_B3CF_17                                 = $17 ; player_interfere_passcut
con_B3CF_18                                 = $18 ; player_clearing_passcut
con_B3CF_19                                 = $19 ; show_2_teammates
con_B3CF_1A                                 = $1A ; show_3_teammates
con_B3CF_1B                                 = $1B ; show_4_teammates
con_B3CF_1C                                 = $1C ; clear_receiver_stats_window
con_B3CF_1D                                 = $1D ; receiver_dribble_pass_shoot
con_B3CF_1E                                 = $1E ; opponent_trap_clearing_pass
con_B3CF_1F                                 = $1F ; opponent_trap_shot_pass
con_B3CF_20                                 = $20 ; show_1_opponent
con_B3CF_21                                 = $21 ; show_2_opponents
con_B3CF_22                                 = $22 ; show_3_opponents
con_B3CF_23                                 = $23 ; show_4_opponents
con_B3CF_24                                 = $24 ; select_1_of_2_teammates_for_pass
con_B3CF_25                                 = $25 ; select_1_of_3_teammates_for_pass
con_B3CF_26                                 = $26 ; select_1_of_4_teammates_for_pass
con_B3CF_27                                 = $27 ; free_kick_taker
con_B3CF_28                                 = $28 ; rearrange_players_no_yes
con_B3CF_29                                 = $29 ; rearrange_select_done
con_B3CF_2A                                 = $2A ; aim_left_right
con_B3CF_2B                                 = $2B ; wall_left_right
con_B3CF_2C                                 = $2C ; pk_aim
con_B3CF_2D                                 = $2D ; pk_dive
con_B3CF_2E                                 = $2E ; corner_kick_taker
con_B3CF_2F                                 = $2F ; select_penalty_taker
con_B3CF_30                                 = $30 ; display_name_stamina_at_the_top
con_B3CF_31                                 = $31 ; display_name_number_at_the_top
con_B3CF_32                                 = $32 ; display_name_opponent_at_the_top
con_B3CF_33                                 = $33 ; resume_play_edit_team_data
con_B3CF_34                                 = $34 ; formation_defense_swap_status_done
con_B3CF_35                                 = $35 ; formation
con_B3CF_36                                 = $36 ; defense
con_B3CF_37                                 = $37 ; swap
con_B3CF_38                                 = $38 ; no_subs_left
con_B3CF_39                                 = $39 ; swap_main_players
con_B3CF_3A                                 = $3A ; swap_sub_players
con_B3CF_3B                                 = $3B ; whom_to_sub
con_B3CF_3C                                 = $3C ; stamina_fielded_players
con_B3CF_3D                                 = $3D ; stamina_substitutes_bench
con_B3CF_3E                                 = $3E ; pk_shootout_select_taker
con_B3CF_3F                                 = $3F ; pk_players_list
con_B3CF_40                                 = $40 ; pk_order
con_B3CF_41                                 = $41 ; pk_score
con_B3CF_42                                 = $42 ; booth_for_charlie_time_score_period_number
con_B3CF_43                                 = $43 ; booth_for_charlie_pk_period_number
con_B3CF_44                                 = $44 ; show_1_defender
con_B3CF_45                                 = $45 ; show_2_defenders
con_B3CF_46                                 = $46 ; show_3_defenders
con_B3CF_47                                 = $47 ; show_4_defenders



; палитра для 0x03FBDC
; нужны комменты 0x03ECDA 0x02816F
con_FBCC_00                                 = $00 ; 
con_FBCC_01                                 = $01 ; 
con_FBCC_02                                 = $02 ; 
con_FBCC_03                                 = $03 ; 
con_FBCC_04                                 = $04 ; 
con_FBCC_05                                 = $05 ; 
con_FBCC_06                                 = $06 ; 
con_FBCC_07                                 = $07 ; 
con_FBCC_08                                 = $08 ; 
con_FBCC_09                                 = $09 ; 
con_FBCC_0A                                 = $0A ; 
con_FBCC_0B                                 = $0B ; 
con_FBCC_0C                                 = $0C ; 
con_FBCC_0D                                 = $0D ; 
con_FBCC_0E                                 = $0E ; 
con_FBCC_0F                                 = $0F ; 
con_FBCC_10                                 = $10 ; 
con_FBCC_11                                 = $11 ; 
con_FBCC_12                                 = $12 ; 
con_FBCC_13                                 = $13 ; 
con_FBCC_14                                 = $14 ; 
con_FBCC_15                                 = $15 ; 
con_FBCC_16                                 = $16 ; 
; con_FBCC_17                               = $17 ; хз где, но данные по индексу читались в новых логах
; con_FBCC_18                               = $18 ; хз где, но данные по индексу читались в новых логах
; con_FBCC_19                               = $19 ; хз где, но данные по индексу читались в новых логах
con_FBCC_1A                                 = $1A ; 



; название действия для 0x03E9EA
con_E9DA_dribble                            = $00 ; 
con_E9DA_pass                               = $01 ; 
con_E9DA_shoot                              = $02 ; 
con_E9DA_1_2_pass                           = $03 ; 
con_E9DA_trap                               = $04 ; 
con_E9DA_through                            = $05 ; 
con_E9DA_clearing_atk                       = $06 ; для атакующих
con_E9DA_tackle                             = $07 ; 
con_E9DA_skylab_tackle                      = $08 ; 
con_E9DA_razor_tackle                       = $09 ; 
con_E9DA_power_tackle                       = $0A ; 
con_E9DA_tiger_tackle                       = $0B ; 
con_E9DA_block                              = $0C ; 
con_E9DA_skylab_block                       = $0D ; 
con_E9DA_face_block                         = $0E ; 
con_E9DA_power_block                        = $0F ; 
con_E9DA_passcut                            = $10 ; 
con_E9DA_skylab_passcut                     = $11 ; 
con_E9DA_wait                               = $12 ; 
con_E9DA_mark                               = $13 ; 
con_E9DA_interfere                          = $14 ; 
con_E9DA_clearing_def                       = $15 ; для защитников
con_E9DA_punch                              = $16 ; 
con_E9DA_catch                              = $17 ; 
con_E9DA_triangle_catch                     = $18 ; 
con_E9DA_dive                               = $19 ; 
con_E9DA_stay                               = $1A ; 
con_E9DA_stop_shot                          = $1B ; 
con_E9DA_stop_dribble                       = $1C ; 
con_E9DA_________lines                      = $1D ; 
con_E9DA_left                               = $1E ; 
con_E9DA_center                             = $1F ; 
con_E9DA_right                              = $20 ; 



; для 0x00DF11
; нужны комменты 0x000586
con_BF00_00                                 = $00 ; 
con_BF00_01                                 = $01 ; 
con_BF00_02                                 = $02 ; 
con_BF00_03                                 = $03 ; 
con_BF00_04                                 = $04 ; 
con_BF00_05                                 = $05 ; 
con_BF00_06                                 = $06 ; 
con_BF00_07                                 = $07 ; 
con_BF00_08                                 = $08 ; 
con_BF00_09                                 = $09 ; 



; индексы сценариев для 0x0209CF
con_s_id_00                                 = $00 ; 
con_s_id_01                                 = $01 ; 
con_s_id_02                                 = $02 ; 
; con_s_id_03                               = $03 ; 
con_s_id_04                                 = $04 ; 
con_s_id_05                                 = $05 ; 
con_s_id_06                                 = $06 ; 
con_s_id_07                                 = $07 ; 
con_s_id_08                                 = $08 ; 
con_s_id_09                                 = $09 ; 
con_s_id_0A                                 = $0A ; 
con_s_id_0B                                 = $0B ; 
con_s_id_0C                                 = $0C ; 
con_s_id_0D                                 = $0D ; 
con_s_id_0E                                 = $0E ; 
con_s_id_0F                                 = $0F ; 
con_s_id_10                                 = $10 ; 
con_s_id_11                                 = $11 ; 
con_s_id_12                                 = $12 ; 
con_s_id_13                                 = $13 ; 
con_s_id_14                                 = $14 ; 
con_s_id_15                                 = $15 ; 
con_s_id_16                                 = $16 ; 
con_s_id_17                                 = $17 ; 
con_s_id_18                                 = $18 ; 
con_s_id_19                                 = $19 ; 
con_s_id_1A                                 = $1A ; 
con_s_id_1B                                 = $1B ; 
con_s_id_1C                                 = $1C ; 
con_s_id_1D                                 = $1D ; 
con_s_id_1E                                 = $1E ; 
con_s_id_1F                                 = $1F ; 
con_s_id_20                                 = $20 ; 
con_s_id_21                                 = $21 ; 
con_s_id_22                                 = $22 ; 
con_s_id_23                                 = $23 ; 
con_s_id_24                                 = $24 ; 
con_s_id_25                                 = $25 ; 
con_s_id_26                                 = $26 ; 
con_s_id_27                                 = $27 ; 
con_s_id_28                                 = $28 ; 
con_s_id_29                                 = $29 ; 
con_s_id_2A                                 = $2A ; 
con_s_id_2B                                 = $2B ; 
con_s_id_2C                                 = $2C ; 
con_s_id_2D                                 = $2D ; 
con_s_id_2E                                 = $2E ; 
con_s_id_2F                                 = $2F ; 
con_s_id_30                                 = $30 ; 
con_s_id_31                                 = $31 ; 
con_s_id_32                                 = $32 ; экран действия кипера словить/отбить (там где рожа кипера)
con_s_id_33                                 = $33 ; 
con_s_id_34                                 = $34 ; 
con_s_id_35                                 = $35 ; 
con_s_id_36                                 = $36 ; 
con_s_id_37                                 = $37 ; 
con_s_id_38                                 = $38 ; 
con_s_id_39                                 = $39 ; 
con_s_id_3A                                 = $3A ; 
; con_s_id_3B                               = $3B ; 
; con_s_id_3C                               = $3C ; 
con_s_id_3D                                 = $3D ; 
con_s_id_3E                                 = $3E ; 
con_s_id_3F                                 = $3F ; 
con_s_id_40                                 = $40 ; 
con_s_id_41                                 = $41 ; 
con_s_id_42                                 = $42 ; 
con_s_id_43                                 = $43 ; 
con_s_id_44                                 = $44 ; 
con_s_id_45                                 = $45 ; 
con_s_id_46                                 = $46 ; 
con_s_id_47                                 = $47 ; 
; con_s_id_48                               = $48 ; unused
; con_s_id_49                               = $49 ; unused
; con_s_id_4A                               = $4A ; unused
; con_s_id_4B                               = $4B ; unused
; con_s_id_4C                               = $4C ; unused
; con_s_id_4D                               = $4D ; unused
; con_s_id_4E                               = $4E ; unused
; con_s_id_4F                               = $4F ; unused

; для финальной катсцены, хз где оно пишется
; con_s_id_50                               = $50 ; 
; con_s_id_51                               = $51 ; 
; con_s_id_52                               = $52 ; 
; con_s_id_53                               = $53 ; 
; con_s_id_54                               = $54 ; 
; con_s_id_55                               = $55 ; 
; con_s_id_56                               = $56 ; 
; con_s_id_57                               = $57 ; 
; con_s_id_58                               = $58 ; 
; con_s_id_59                               = $59 ; 
; con_s_id_5A                               = $5A ; 
; con_s_id_5B                               = $5B ; 
; con_s_id_5C                               = $5C ; 
; con_s_id_5D                               = $5D ; 
; con_s_id_5E                               = $5E ; 
; con_s_id_5F                               = $5F ; 
; con_s_id_60                               = $60 ; 
; con_s_id_61                               = $61 ; 
; con_s_id_62                               = $62 ; 
; con_s_id_63                               = $63 ; 
; con_s_id_64                               = $64 ; 
; con_s_id_65                               = $65 ; 
; con_s_id_66                               = $66 ; 
; con_s_id_67                               = $67 ; индекс не существует, в новых логах данные по индексу не читались
; con_s_id_68                               = $68 ; индекс не существует, в новых логах данные по индексу не читались
; con_s_id_69                               = $69 ; 
; con_s_id_6A                               = $6A ; 
; con_s_id_6B                               = $6B ; 
; con_s_id_6C                               = $6C ; 
; con_s_id_6D                               = $6D ; 
; con_s_id_6E                               = $6E ; 
; con_s_id_6F                               = $6F ; 
; con_s_id_70                               = $70 ; 
; con_s_id_71                               = $71 ; 
; con_s_id_72                               = $72 ; 
; con_s_id_73                               = $73 ; 
; con_s_id_74                               = $74 ; 
; con_s_id_75                               = $75 ; 
; con_s_id_76                               = $76 ; 
; con_s_id_77                               = $77 ; 
; con_s_id_78                               = $78 ; 



; индексы фона анимации для 0x016806
con_s_bg_00                                 = $00 ; 
con_s_bg_01                                 = $01 ; 
con_s_bg_02                                 = $02 ; 
con_s_bg_03                                 = $03 ; 
con_s_bg_04                                 = $04 ; 
con_s_bg_05                                 = $05 ; 
con_s_bg_06                                 = $06 ; 
con_s_bg_07                                 = $07 ; 
con_s_bg_08                                 = $08 ; 
con_s_bg_09                                 = $09 ; 
con_s_bg_0A                                 = $0A ; 
con_s_bg_0B                                 = $0B ; 
con_s_bg_0C                                 = $0C ; 
con_s_bg_0D                                 = $0D ; 
con_s_bg_0E                                 = $0E ; 
con_s_bg_0F                                 = $0F ; 
con_s_bg_10                                 = $10 ; 
con_s_bg_11                                 = $11 ; 
con_s_bg_12                                 = $12 ; 
con_s_bg_13                                 = $13 ; 
con_s_bg_14                                 = $14 ; 
con_s_bg_15                                 = $15 ; 
con_s_bg_16                                 = $16 ; 
con_s_bg_17                                 = $17 ; 
con_s_bg_18                                 = $18 ; 
con_s_bg_19                                 = $19 ; 
con_s_bg_1A                                 = $1A ; 
con_s_bg_1B                                 = $1B ; 
con_s_bg_1C                                 = $1C ; 
con_s_bg_1D                                 = $1D ; 
con_s_bg_1E                                 = $1E ; 
con_s_bg_1F                                 = $1F ; 
con_s_bg_20                                 = $20 ; 
con_s_bg_21                                 = $21 ; 
con_s_bg_22                                 = $22 ; 
con_s_bg_23                                 = $23 ; 
con_s_bg_24                                 = $24 ; 
con_s_bg_25                                 = $25 ; 
con_s_bg_26                                 = $26 ; 
con_s_bg_27                                 = $27 ; 
con_s_bg_28                                 = $28 ; 
con_s_bg_29                                 = $29 ; 
con_s_bg_2A                                 = $2A ; 
con_s_bg_2B                                 = $2B ; 
con_s_bg_2C                                 = $2C ; 
con_s_bg_2D                                 = $2D ; 
con_s_bg_2E                                 = $2E ; 
con_s_bg_2F                                 = $2F ; 
con_s_bg_30                                 = $30 ; 
con_s_bg_31                                 = $31 ; 
con_s_bg_32                                 = $32 ; 
con_s_bg_33                                 = $33 ; 
con_s_bg_34                                 = $34 ; 
con_s_bg_35                                 = $35 ; 
con_s_bg_36                                 = $36 ; 
con_s_bg_37                                 = $37 ; 
con_s_bg_38                                 = $38 ; 
con_s_bg_39                                 = $39 ; 
con_s_bg_3A                                 = $3A ; 
con_s_bg_3B                                 = $3B ; 
con_s_bg_3C                                 = $3C ; 
con_s_bg_3D                                 = $3D ; 
con_s_bg_3E                                 = $3E ; 
con_s_bg_3F                                 = $3F ; 
con_s_bg_40                                 = $40 ; 
con_s_bg_41                                 = $41 ; 
con_s_bg_42                                 = $42 ; 
con_s_bg_43                                 = $43 ; 
con_s_bg_44                                 = $44 ; 
con_s_bg_45                                 = $45 ; 
con_s_bg_46                                 = $46 ; 
con_s_bg_47                                 = $47 ; 
con_s_bg_48                                 = $48 ; 
con_s_bg_49                                 = $49 ; 
con_s_bg_4A                                 = $4A ; 
con_s_bg_4B                                 = $4B ; 
con_s_bg_4C                                 = $4C ; 
con_s_bg_4D                                 = $4D ; 
con_s_bg_4E                                 = $4E ; 
con_s_bg_4F                                 = $4F ; 
con_s_bg_50                                 = $50 ; 
con_s_bg_51                                 = $51 ; 
con_s_bg_52                                 = $52 ; 
con_s_bg_53                                 = $53 ; 
con_s_bg_54                                 = $54 ; 
con_s_bg_55                                 = $55 ; 
con_s_bg_56                                 = $56 ; 
con_s_bg_57                                 = $57 ; 
con_s_bg_58                                 = $58 ; 
con_s_bg_59                                 = $59 ; 
con_s_bg_5A                                 = $5A ; 
con_s_bg_5B                                 = $5B ; 
con_s_bg_5C                                 = $5C ; 
con_s_bg_5D                                 = $5D ; 
con_s_bg_5E                                 = $5E ; 
con_s_bg_5F                                 = $5F ; 
con_s_bg_60                                 = $60 ; 
con_s_bg_61                                 = $61 ; 
con_s_bg_62                                 = $62 ; 
con_s_bg_63                                 = $63 ; 
con_s_bg_64                                 = $64 ; 
con_s_bg_65                                 = $65 ; 
con_s_bg_66                                 = $66 ; 
con_s_bg_67                                 = $67 ; 
con_s_bg_68                                 = $68 ; 
con_s_bg_69                                 = $69 ; 
con_s_bg_6A                                 = $6A ; 
con_s_bg_6B                                 = $6B ; 
con_s_bg_6C                                 = $6C ; 
con_s_bg_6D                                 = $6D ; 
con_s_bg_6E                                 = $6E ; 
con_s_bg_6F                                 = $6F ; 
con_s_bg_70                                 = $70 ; 
con_s_bg_71                                 = $71 ; 
con_s_bg_72                                 = $72 ; 
con_s_bg_73                                 = $73 ; 
; con_s_bg_74                               = $74 ; 
; con_s_bg_75                               = $75 ; 
; con_s_bg_76                               = $76 ; 
; con_s_bg_77                               = $77 ; 
; con_s_bg_78                               = $78 ; 
; con_s_bg_79                               = $79 ; 
; con_s_bg_7A                               = $7A ; 
; con_s_bg_7B                               = $7B ; 
; con_s_bg_7C                               = $7C ; 
; con_s_bg_7D                               = $7D ; 
; con_s_bg_7E                               = $7E ; 
; con_s_bg_7F                               = $7F ; 
; con_s_bg_80                               = $80 ; 
; con_s_bg_81                               = $81 ; 
; con_s_bg_82                               = $82 ; 
; con_s_bg_83                               = $83 ; 
; con_s_bg_84                               = $84 ; 
; con_s_bg_85                               = $85 ; 
; con_s_bg_86                               = $86 ; 
; con_s_bg_87                               = $87 ; 
; con_s_bg_88                               = $88 ; 
; con_s_bg_89                               = $89 ; 
; con_s_bg_8A                               = $8A ; 
; con_s_bg_8B                               = $8B ; 
; con_s_bg_8C                               = $8C ; 
; con_s_bg_8D                               = $8D ; 
; con_s_bg_8E                               = $8E ; 
; con_s_bg_8F                               = $8F ; 
; con_s_bg_90                               = $90 ; 
; con_s_bg_91                               = $91 ; 
; con_s_bg_92                               = $92 ; 
; con_s_bg_93                               = $93 ; 
; con_s_bg_94                               = $94 ; 
; con_s_bg_95                               = $95 ; 
; con_s_bg_96                               = $96 ; 
; con_s_bg_97                               = $97 ; 
; con_s_bg_98                               = $98 ; 
; con_s_bg_99                               = $99 ; 
; con_s_bg_9A                               = $9A ; 
; con_s_bg_9B                               = $9B ; 
; con_s_bg_9C                               = $9C ; 
; con_s_bg_9D                               = $9D ; 
; con_s_bg_9E                               = $9E ; 
; con_s_bg_9F                               = $9F ; 
; con_s_bg_A0                               = $A0 ; 
; con_s_bg_A1                               = $A1 ; 
; con_s_bg_A2                               = $A2 ; 
; con_s_bg_A3                               = $A3 ; 
; con_s_bg_A4                               = $A4 ; 
; con_s_bg_A5                               = $A5 ; 
; con_s_bg_A6                               = $A6 ; 
; con_s_bg_A7                               = $A7 ; 
; con_s_bg_A8                               = $A8 ; 
; con_s_bg_A9                               = $A9 ; 
; con_s_bg_AA                               = $AA ; 
; con_s_bg_AB                               = $AB ; 
; con_s_bg_AC                               = $AC ; 
; con_s_bg_AD                               = $AD ; 
; con_s_bg_AE                               = $AE ; 
; con_s_bg_AF                               = $AF ; 
; con_s_bg_B0                               = $B0 ; 
; con_s_bg_B1                               = $B1 ; 
; con_s_bg_B2                               = $B2 ; 
; con_s_bg_B3                               = $B3 ; 
; con_s_bg_B4                               = $B4 ; 
; con_s_bg_B5                               = $B5 ; 
; con_s_bg_B6                               = $B6 ; 
; con_s_bg_B7                               = $B7 ; 
; con_s_bg_B8                               = $B8 ; 
; con_s_bg_B9                               = $B9 ; 
; con_s_bg_BA                               = $BA ; 
; con_s_bg_BB                               = $BB ; 
; con_s_bg_BC                               = $BC ; 
; con_s_bg_BD                               = $BD ; 
; con_s_bg_BE                               = $BE ; 
; con_s_bg_BF                               = $BF ; 
; con_s_bg_C0                               = $C0 ; 
; con_s_bg_C1                               = $C1 ; 
; con_s_bg_C2                               = $C2 ; 
; con_s_bg_C3                               = $C3 ; 
; con_s_bg_C4                               = $C4 ; 
; con_s_bg_C5                               = $C5 ; 
; con_s_bg_C6                               = $C6 ; 
; con_s_bg_C7                               = $C7 ; 
; con_s_bg_C8                               = $C8 ; 
; con_s_bg_C9                               = $C9 ; 
; con_s_bg_CA                               = $CA ; 
; con_s_bg_CB                               = $CB ; 
; con_s_bg_CC                               = $CC ; 
; con_s_bg_CD                               = $CD ; 
; con_s_bg_CE                               = $CE ; 
; con_s_bg_CF                               = $CF ; 
; con_s_bg_D0                               = $D0 ; 
; con_s_bg_D1                               = $D1 ; 
; con_s_bg_D2                               = $D2 ; 
; con_s_bg_D3                               = $D3 ; 
; con_s_bg_D4                               = $D4 ; 
; con_s_bg_D5                               = $D5 ; 
; con_s_bg_D6                               = $D6 ; 
; con_s_bg_D7                               = $D7 ; 
; con_s_bg_D8                               = $D8 ; 
; con_s_bg_D9                               = $D9 ; 
; con_s_bg_DA                               = $DA ; 
; con_s_bg_DB                               = $DB ; 
; con_s_bg_DC                               = $DC ; 
; con_s_bg_DD                               = $DD ; 
; con_s_bg_DE                               = $DE ; 
; con_s_bg_DF                               = $DF ; 
; con_s_bg_E0                               = $E0 ; 
; con_s_bg_E1                               = $E1 ; 
; con_s_bg_E2                               = $E2 ; 
; con_s_bg_E3                               = $E3 ; 
; con_s_bg_E4                               = $E4 ; 
; con_s_bg_E5                               = $E5 ; 
; con_s_bg_E6                               = $E6 ; 
; con_s_bg_E7                               = $E7 ; 
; con_s_bg_E8                               = $E8 ; 
; con_s_bg_E9                               = $E9 ; 
; con_s_bg_EA                               = $EA ; 
; con_s_bg_EB                               = $EB ; 
; con_s_bg_EC                               = $EC ; 
; con_s_bg_ED                               = $ED ; 
; con_s_bg_EE                               = $EE ; 
; con_s_bg_EF                               = $EF ; 
; con_s_bg_F0                               = $F0 ; 
; con_s_bg_F1                               = $F1 ; 
; con_s_bg_F2                               = $F2 ; 
; con_s_bg_F3                               = $F3 ; 
; con_s_bg_F4                               = $F4 ; 
; con_s_bg_F5                               = $F5 ; 
; con_s_bg_F6                               = $F6 ; 
; con_s_bg_F7                               = $F7 ; 
; con_s_bg_F8                               = $F8 ; 
; con_s_bg_F9                               = $F9 ; 
; con_s_bg_FA                               = $FA ; 
; con_s_bg_FB                               = $FB ; 
; con_s_bg_FC                               = $FC ; 
; con_s_bg_FD                               = $FD ; 
; con_s_bg_FE                               = $FE ; 
con_s_bg_FF_skip                            = $FF ; управляющий байт, пропустить отображение фона



; индексы облаков с текстом для 0x031230
; облака в банке 18 (оригинал), 28 и 29
    ; выбор банка в 0x030027
con_s_cloud_clear                           = $00 ; очистить облако
con_s_cloud_01                              = $01 ; 
con_s_cloud_02                              = $02 ; 
con_s_cloud_03                              = $03 ; 
con_s_cloud_04                              = $04 ; 
con_s_cloud_05                              = $05 ; 
con_s_cloud_06                              = $06 ; 
con_s_cloud_07                              = $07 ; 
con_s_cloud_08                              = $08 ; 
con_s_cloud_09                              = $09 ; 
con_s_cloud_0A                              = $0A ; 
con_s_cloud_0B                              = $0B ; 
con_s_cloud_0C                              = $0C ; 
con_s_cloud_0D                              = $0D ; 
con_s_cloud_0E                              = $0E ; 
con_s_cloud_0F                              = $0F ; 
con_s_cloud_10                              = $10 ; 
con_s_cloud_11                              = $11 ; 
con_s_cloud_12                              = $12 ; 
con_s_cloud_13                              = $13 ; 
con_s_cloud_14                              = $14 ; 
con_s_cloud_15                              = $15 ; 
con_s_cloud_16                              = $16 ; 
con_s_cloud_17                              = $17 ; 
con_s_cloud_18                              = $18 ; 
con_s_cloud_19                              = $19 ; 
con_s_cloud_1A                              = $1A ; 
con_s_cloud_1B                              = $1B ; 
con_s_cloud_1C                              = $1C ; 
con_s_cloud_1D                              = $1D ; 
con_s_cloud_1E                              = $1E ; 
con_s_cloud_1F                              = $1F ; 
con_s_cloud_20                              = $20 ; 
con_s_cloud_21                              = $21 ; 
con_s_cloud_22                              = $22 ; 
; con_s_cloud_23                            = $23 ; 
con_s_cloud_24                              = $24 ; 
con_s_cloud_25                              = $25 ; 
con_s_cloud_26                              = $26 ; 
con_s_cloud_27                              = $27 ; 
con_s_cloud_28                              = $28 ; 
con_s_cloud_29                              = $29 ; 
; con_s_cloud_2A                            = $2A ; 
; con_s_cloud_2B                            = $2B ; 
con_s_cloud_2C                              = $2C ; 
; con_s_cloud_2D                            = $2D ; 
con_s_cloud_2E                              = $2E ; 
con_s_cloud_2F                              = $2F ; 
con_s_cloud_30                              = $30 ; 
con_s_cloud_31                              = $31 ; 
con_s_cloud_32                              = $32 ; 
con_s_cloud_33                              = $33 ; 
con_s_cloud_34                              = $34 ; 
con_s_cloud_35                              = $35 ; 
con_s_cloud_36                              = $36 ; 
con_s_cloud_37                              = $37 ; 
con_s_cloud_38                              = $38 ; 
con_s_cloud_39                              = $39 ; 
con_s_cloud_3A                              = $3A ; 
con_s_cloud_3B                              = $3B ; 
con_s_cloud_3C                              = $3C ; 
con_s_cloud_3D                              = $3D ; 
con_s_cloud_3E                              = $3E ; 
con_s_cloud_3F                              = $3F ; 
con_s_cloud_40                              = $40 ; 
con_s_cloud_41                              = $41 ; 
con_s_cloud_42                              = $42 ; 
con_s_cloud_43                              = $43 ; 
con_s_cloud_44                              = $44 ; 
con_s_cloud_45                              = $45 ; 
con_s_cloud_46                              = $46 ; 
con_s_cloud_47                              = $47 ; 
con_s_cloud_48                              = $48 ; 
con_s_cloud_49                              = $49 ; 
con_s_cloud_4A                              = $4A ; 
con_s_cloud_4B                              = $4B ; 
con_s_cloud_4C                              = $4C ; 
con_s_cloud_4D                              = $4D ; 
; con_s_cloud_4E                            = $4E ; 
con_s_cloud_4F                              = $4F ; 
con_s_cloud_50                              = $50 ; 
con_s_cloud_51                              = $51 ; 
con_s_cloud_52                              = $52 ; 
con_s_cloud_53                              = $53 ; 
con_s_cloud_54                              = $54 ; 
con_s_cloud_55                              = $55 ; 
con_s_cloud_56                              = $56 ; 
con_s_cloud_57                              = $57 ; 
con_s_cloud_58                              = $58 ; 
con_s_cloud_59                              = $59 ; 
con_s_cloud_5A                              = $5A ; 
con_s_cloud_5B                              = $5B ; 
con_s_cloud_5C                              = $5C ; 
con_s_cloud_5D                              = $5D ; 
con_s_cloud_5E                              = $5E ; 
con_s_cloud_5F                              = $5F ; 
con_s_cloud_60                              = $60 ; 
con_s_cloud_61                              = $61 ; 
con_s_cloud_62                              = $62 ; 
con_s_cloud_63                              = $63 ; 
con_s_cloud_64                              = $64 ; 
con_s_cloud_65                              = $65 ; 
con_s_cloud_66                              = $66 ; 
con_s_cloud_67                              = $67 ; 
; con_s_cloud_68                            = $68 ; 
con_s_cloud_69                              = $69 ; 
con_s_cloud_6A                              = $6A ; 
con_s_cloud_6B                              = $6B ; 
con_s_cloud_6C                              = $6C ; 
con_s_cloud_6D                              = $6D ; 
con_s_cloud_6E                              = $6E ; 
con_s_cloud_6F                              = $6F ; 
con_s_cloud_70                              = $70 ; 
con_s_cloud_71                              = $71 ; 
con_s_cloud_72                              = $72 ; 
con_s_cloud_73                              = $73 ; 
con_s_cloud_74                              = $74 ; 
con_s_cloud_75                              = $75 ; 
con_s_cloud_76                              = $76 ; 
con_s_cloud_77                              = $77 ; 
con_s_cloud_78                              = $78 ; 
con_s_cloud_79                              = $79 ; 
con_s_cloud_7A                              = $7A ; 
con_s_cloud_7B                              = $7B ; 
con_s_cloud_7C                              = $7C ; 
con_s_cloud_7D                              = $7D ; 
con_s_cloud_7E                              = $7E ; 
con_s_cloud_7F                              = $7F ; 
con_s_cloud_80                              = $80 ; 
con_s_cloud_81                              = $81 ; 
con_s_cloud_82                              = $82 ; 
con_s_cloud_83                              = $83 ; 
con_s_cloud_84                              = $84 ; 
con_s_cloud_85                              = $85 ; 
con_s_cloud_86                              = $86 ; 
con_s_cloud_87                              = $87 ; 
; con_s_cloud_88                            = $88 ; 
con_s_cloud_89                              = $89 ; 
con_s_cloud_8A                              = $8A ; 
con_s_cloud_8B                              = $8B ; 
con_s_cloud_8C                              = $8C ; 
con_s_cloud_8D                              = $8D ; 
con_s_cloud_8E                              = $8E ; 
con_s_cloud_8F                              = $8F ; 
con_s_cloud_90                              = $90 ; 
con_s_cloud_91                              = $91 ; 
con_s_cloud_92                              = $92 ; 
con_s_cloud_93                              = $93 ; 
con_s_cloud_94                              = $94 ; 
con_s_cloud_95                              = $95 ; 
con_s_cloud_96                              = $96 ; 
con_s_cloud_97                              = $97 ; 
con_s_cloud_98                              = $98 ; 
con_s_cloud_99                              = $99 ; 
con_s_cloud_9A                              = $9A ; 
con_s_cloud_9B                              = $9B ; 
con_s_cloud_9C                              = $9C ; 
con_s_cloud_9D                              = $9D ; 
con_s_cloud_9E                              = $9E ; 
con_s_cloud_9F                              = $9F ; 
con_s_cloud_A0                              = $A0 ; 
con_s_cloud_A1                              = $A1 ; 
con_s_cloud_A2                              = $A2 ; 
con_s_cloud_A3                              = $A3 ; 
con_s_cloud_A4                              = $A4 ; 
con_s_cloud_A5                              = $A5 ; 
con_s_cloud_sudden_death_в_пк               = $A6 ; 
con_s_cloud_A7                              = $A7 ; 
con_s_cloud_A8                              = $A8 ; 
con_s_cloud_A9                              = $A9 ; 
con_s_cloud_AA                              = $AA ; 
con_s_cloud_AB                              = $AB ; 
con_s_cloud_AC                              = $AC ; 
con_s_cloud_AD                              = $AD ; 
con_s_cloud_AE                              = $AE ; 
con_s_cloud_AF                              = $AF ; 
con_s_cloud_B0                              = $B0 ; 
con_s_cloud_B1                              = $B1 ; 
con_s_cloud_B2                              = $B2 ; 
con_s_cloud_B3                              = $B3 ; 
con_s_cloud_B4                              = $B4 ; 
con_s_cloud_B5                              = $B5 ; 
con_s_cloud_B6                              = $B6 ; 
con_s_cloud_B7                              = $B7 ; 
con_s_cloud_B8                              = $B8 ; 
con_s_cloud_B9                              = $B9 ; 
con_s_cloud_BA                              = $BA ; 
con_s_cloud_BB                              = $BB ; 
con_s_cloud_BC                              = $BC ; 
con_s_cloud_BD                              = $BD ; 
con_s_cloud_BE                              = $BE ; 
con_s_cloud_BF                              = $BF ; 
con_s_cloud_C0                              = $C0 ; 
con_s_cloud_C1                              = $C1 ; 
con_s_cloud_C2                              = $C2 ; 
con_s_cloud_C3                              = $C3 ; 
con_s_cloud_C4                              = $C4 ; 
con_s_cloud_C5                              = $C5 ; 
con_s_cloud_C6                              = $C6 ; 
con_s_cloud_C7                              = $C7 ; 
con_s_cloud_C8                              = $C8 ; 
con_s_cloud_C9                              = $C9 ; 
con_s_cloud_CA                              = $CA ; 
con_s_cloud_CB                              = $CB ; 
con_s_cloud_CC                              = $CC ; 
con_s_cloud_CD                              = $CD ; 
con_s_cloud_CE                              = $CE ; 
con_s_cloud_CF                              = $CF ; 
con_s_cloud_D0                              = $D0 ; 
con_s_cloud_D1                              = $D1 ; 
con_s_cloud_D2                              = $D2 ; 
con_s_cloud_D3                              = $D3 ; 
con_s_cloud_D4                              = $D4 ; 
con_s_cloud_D5                              = $D5 ; 
con_s_cloud_D6                              = $D6 ; 
con_s_cloud_D7                              = $D7 ; 
con_s_cloud_D8                              = $D8 ; 
con_s_cloud_D9                              = $D9 ; 
con_s_cloud_DA                              = $DA ; 
con_s_cloud_DB                              = $DB ; 
; con_s_cloud_DC                            = $DC ; 
con_s_cloud_DD                              = $DD ; 
con_s_cloud_DE                              = $DE ; 
; con_s_cloud_DF                            = $DF ; 
con_s_cloud_E0                              = $E0 ; 
con_s_cloud_E1                              = $E1 ; 
con_s_cloud_E2                              = $E2 ; 
con_s_cloud_E3                              = $E3 ; 
con_s_cloud_E4                              = $E4 ; 
con_s_cloud_E5                              = $E5 ; 
con_s_cloud_E6                              = $E6 ; 
con_s_cloud_E7                              = $E7 ; 
con_s_cloud_E8                              = $E8 ; 
con_s_cloud_E9                              = $E9 ; 
con_s_cloud_EA                              = $EA ; 
con_s_cloud_EB                              = $EB ; 
con_s_cloud_EC                              = $EC ; 
con_s_cloud_ED                              = $ED ; 
con_s_cloud_EE                              = $EE ; 
con_s_cloud_EF                              = $EF ; 
; con_s_cloud_F0                            = $F0 ; 
; con_s_cloud_F1                            = $F1 ; 
; con_s_cloud_F2                            = $F2 ; 
; con_s_cloud_F3                            = $F3 ; 
; con_s_cloud_F4                            = $F4 ; 
; con_s_cloud_F5                            = $F5 ; 
; con_s_cloud_F6                            = $F6 ; 
; con_s_cloud_F7                            = $F7 ; 
; con_s_cloud_F8                            = $F8 ; 
; con_s_cloud_F9                            = $F9 ; 
; con_s_cloud_FA                            = $FA ; 
; con_s_cloud_FB                            = $FB ; 
; con_s_cloud_FC                            = $FC ; 
; con_s_cloud_FD                            = $FD ; 
; con_s_cloud_FE                            = $FE ; 
con_s_cloud_FF_skip                         = $FF ; управляющий байт, пропустить вывод облака



; номер анимации сценария 0x028978
con_s_animation_00                          = $00 ; 
con_s_animation_01                          = $01 ; 
con_s_animation_02                          = $02 ; 
con_s_animation_03                          = $03 ; 
con_s_animation_04                          = $04 ; 
con_s_animation_05                          = $05 ; 
con_s_animation_06                          = $06 ; 
con_s_animation_07                          = $07 ; 
con_s_animation_08                          = $08 ; 
con_s_animation_09                          = $09 ; 
con_s_animation_0A                          = $0A ; 
con_s_animation_0B                          = $0B ; 
con_s_animation_0C                          = $0C ; 
con_s_animation_0D                          = $0D ; 
con_s_animation_0E                          = $0E ; 
con_s_animation_0F                          = $0F ; 
con_s_animation_10                          = $10 ; 
con_s_animation_11                          = $11 ; 
con_s_animation_12                          = $12 ; 
con_s_animation_13                          = $13 ; 
con_s_animation_14                          = $14 ; 
con_s_animation_15                          = $15 ; 
con_s_animation_16                          = $16 ; 
con_s_animation_17                          = $17 ; 
con_s_animation_18                          = $18 ; 
con_s_animation_19                          = $19 ; 
con_s_animation_1A                          = $1A ; 
con_s_animation_1B                          = $1B ; 
con_s_animation_1C                          = $1C ; 
con_s_animation_1D                          = $1D ; 
con_s_animation_1E                          = $1E ; 
con_s_animation_1F                          = $1F ; 
con_s_animation_20                          = $20 ; 
con_s_animation_21                          = $21 ; 
con_s_animation_22                          = $22 ; 
con_s_animation_23                          = $23 ; 
con_s_animation_24                          = $24 ; 
con_s_animation_25                          = $25 ; 
con_s_animation_26                          = $26 ; 
con_s_animation_27                          = $27 ; 
con_s_animation_28                          = $28 ; 
con_s_animation_29                          = $29 ; 
con_s_animation_2A                          = $2A ; 
con_s_animation_2B                          = $2B ; 
con_s_animation_2C                          = $2C ; 
con_s_animation_2D                          = $2D ; 
con_s_animation_2E                          = $2E ; 
con_s_animation_2F                          = $2F ; 
con_s_animation_30                          = $30 ; 
con_s_animation_31                          = $31 ; 
con_s_animation_32                          = $32 ; 
con_s_animation_33                          = $33 ; 
con_s_animation_34                          = $34 ; 
con_s_animation_35                          = $35 ; 
con_s_animation_36                          = $36 ; 
con_s_animation_37                          = $37 ; 
con_s_animation_38                          = $38 ; 
con_s_animation_39                          = $39 ; 
con_s_animation_3A                          = $3A ; 
con_s_animation_3B                          = $3B ; 
con_s_animation_3C                          = $3C ; 
con_s_animation_3D                          = $3D ; 
con_s_animation_3E                          = $3E ; 
con_s_animation_3F                          = $3F ; 
con_s_animation_40                          = $40 ; 
con_s_animation_41                          = $41 ; 
con_s_animation_42                          = $42 ; 
con_s_animation_43                          = $43 ; 
con_s_animation_44                          = $44 ; 
con_s_animation_45                          = $45 ; 
con_s_animation_46                          = $46 ; 
con_s_animation_47                          = $47 ; 
con_s_animation_48                          = $48 ; 
con_s_animation_49                          = $49 ; 
con_s_animation_4A                          = $4A ; 
con_s_animation_4B                          = $4B ; 
con_s_animation_4C                          = $4C ; 
con_s_animation_4D                          = $4D ; 
con_s_animation_4E                          = $4E ; 
con_s_animation_4F                          = $4F ; 
con_s_animation_50                          = $50 ; 
con_s_animation_51                          = $51 ; 
con_s_animation_52                          = $52 ; 
con_s_animation_53                          = $53 ; 
con_s_animation_54                          = $54 ; 
con_s_animation_55                          = $55 ; 
con_s_animation_56                          = $56 ; 
con_s_animation_57                          = $57 ; 
con_s_animation_58                          = $58 ; 
con_s_animation_59                          = $59 ; 
con_s_animation_5A                          = $5A ; 
con_s_animation_5B                          = $5B ; 
con_s_animation_5C                          = $5C ; 
con_s_animation_5D                          = $5D ; 
con_s_animation_5E                          = $5E ; 
con_s_animation_5F                          = $5F ; 
con_s_animation_60                          = $60 ; 
con_s_animation_61                          = $61 ; 
con_s_animation_62                          = $62 ; 
con_s_animation_63                          = $63 ; 
con_s_animation_64                          = $64 ; 
con_s_animation_65                          = $65 ; 
con_s_animation_66                          = $66 ; 
con_s_animation_67                          = $67 ; 
con_s_animation_68                          = $68 ; 
con_s_animation_69                          = $69 ; 
con_s_animation_6A                          = $6A ; 
con_s_animation_6B                          = $6B ; 
con_s_animation_6C                          = $6C ; 
con_s_animation_6D                          = $6D ; 
con_s_animation_6E                          = $6E ; 
con_s_animation_6F                          = $6F ; 
con_s_animation_70                          = $70 ; 
con_s_animation_71                          = $71 ; 
con_s_animation_72                          = $72 ; 
con_s_animation_73                          = $73 ; 
con_s_animation_74                          = $74 ; 
con_s_animation_75                          = $75 ; 
con_s_animation_76                          = $76 ; 
con_s_animation_77                          = $77 ; 
con_s_animation_78                          = $78 ; 
con_s_animation_79                          = $79 ; 
con_s_animation_7A                          = $7A ; 
con_s_animation_7B                          = $7B ; 
con_s_animation_7C                          = $7C ; 
con_s_animation_7D                          = $7D ; 
con_s_animation_7E                          = $7E ; 
con_s_animation_7F                          = $7F ; 
con_s_animation_80                          = $80 ; 
con_s_animation_81                          = $81 ; 
con_s_animation_82                          = $82 ; 
con_s_animation_83                          = $83 ; 
con_s_animation_84                          = $84 ; 
con_s_animation_85                          = $85 ; 
con_s_animation_86                          = $86 ; 
con_s_animation_87                          = $87 ; 
con_s_animation_88                          = $88 ; 
con_s_animation_89                          = $89 ; 
con_s_animation_8A                          = $8A ; 
con_s_animation_8B                          = $8B ; 
con_s_animation_8C                          = $8C ; 
con_s_animation_8D                          = $8D ; 
con_s_animation_8E                          = $8E ; 
con_s_animation_8F                          = $8F ; 
con_s_animation_90                          = $90 ; 
con_s_animation_91                          = $91 ; 
con_s_animation_92                          = $92 ; 
con_s_animation_93                          = $93 ; 
con_s_animation_94                          = $94 ; 
con_s_animation_95                          = $95 ; 
con_s_animation_96                          = $96 ; 
con_s_animation_97                          = $97 ; 
con_s_animation_98                          = $98 ; 
con_s_animation_99                          = $99 ; 
con_s_animation_9A                          = $9A ; 
con_s_animation_9B                          = $9B ; 
con_s_animation_9C                          = $9C ; 
con_s_animation_9D                          = $9D ; 
con_s_animation_9E                          = $9E ; 
con_s_animation_9F                          = $9F ; 
con_s_animation_A0                          = $A0 ; 
con_s_animation_A1                          = $A1 ; 
con_s_animation_A2                          = $A2 ; 
con_s_animation_A3                          = $A3 ; 
con_s_animation_A4                          = $A4 ; 
con_s_animation_A5                          = $A5 ; 
con_s_animation_A6                          = $A6 ; 
con_s_animation_A7                          = $A7 ; 
con_s_animation_A8                          = $A8 ; 
con_s_animation_A9                          = $A9 ; 
con_s_animation_AA                          = $AA ; 
con_s_animation_AB                          = $AB ; 
con_s_animation_AC                          = $AC ; 
con_s_animation_AD                          = $AD ; 
con_s_animation_AE                          = $AE ; 
con_s_animation_AF                          = $AF ; 
con_s_animation_B0                          = $B0 ; 
con_s_animation_B1                          = $B1 ; 
con_s_animation_B2                          = $B2 ; 
con_s_animation_B3                          = $B3 ; 
con_s_animation_B4                          = $B4 ; 
con_s_animation_B5                          = $B5 ; 
con_s_animation_B6                          = $B6 ; 
con_s_animation_B7                          = $B7 ; 
con_s_animation_B8                          = $B8 ; 
con_s_animation_B9                          = $B9 ; 
con_s_animation_BA                          = $BA ; 
con_s_animation_BB                          = $BB ; 
con_s_animation_BC                          = $BC ; 
con_s_animation_BD                          = $BD ; 
con_s_animation_BE                          = $BE ; 
con_s_animation_BF                          = $BF ; 
con_s_animation_C0                          = $C0 ; 
con_s_animation_C1                          = $C1 ; 
con_s_animation_C2                          = $C2 ; 
con_s_animation_C3                          = $C3 ; 
con_s_animation_C4                          = $C4 ; 
con_s_animation_C5                          = $C5 ; 
con_s_animation_C6                          = $C6 ; 
con_s_animation_C7                          = $C7 ; 
con_s_animation_C8                          = $C8 ; 
con_s_animation_C9                          = $C9 ; 
con_s_animation_CA                          = $CA ; 
con_s_animation_CB                          = $CB ; 
con_s_animation_CC                          = $CC ; 
con_s_animation_CD                          = $CD ; 
con_s_animation_CE                          = $CE ; 
con_s_animation_CF                          = $CF ; 
con_s_animation_D0                          = $D0 ; 
con_s_animation_D1                          = $D1 ; 
con_s_animation_D2                          = $D2 ; 
con_s_animation_D3                          = $D3 ; 
con_s_animation_D4                          = $D4 ; 
con_s_animation_D5                          = $D5 ; 
con_s_animation_D6                          = $D6 ; 
con_s_animation_D7                          = $D7 ; 
con_s_animation_D8                          = $D8 ; 
con_s_animation_D9                          = $D9 ; 
con_s_animation_DA                          = $DA ; 
con_s_animation_DB                          = $DB ; 
con_s_animation_DC                          = $DC ; 
con_s_animation_DD                          = $DD ; 
con_s_animation_DE                          = $DE ; 
con_s_animation_DF                          = $DF ; 
con_s_animation_E0                          = $E0 ; 
con_s_animation_E1                          = $E1 ; 
con_s_animation_E2                          = $E2 ; 
con_s_animation_E3                          = $E3 ; 
con_s_animation_E4                          = $E4 ; 
con_s_animation_E5                          = $E5 ; 
con_s_animation_E6                          = $E6 ; 
con_s_animation_E7                          = $E7 ; 
con_s_animation_E8                          = $E8 ; 
con_s_animation_E9                          = $E9 ; 
con_s_animation_EA                          = $EA ; 
con_s_animation_EB                          = $EB ; 
con_s_animation_EC                          = $EC ; 
con_s_animation_ED                          = $ED ; 
con_s_animation_EE                          = $EE ; 
con_s_animation_EF                          = $EF ; 
; con_s_animation_F0                        = $F0 ; 
; con_s_animation_F1                        = $F1 ; 
; con_s_animation_F2                        = $F2 ; 
; con_s_animation_F3                        = $F3 ; 
; con_s_animation_F4                        = $F4 ; 
; con_s_animation_F5                        = $F5 ; 
; con_s_animation_F6                        = $F6 ; 
; con_s_animation_F7                        = $F7 ; 
; con_s_animation_F8                        = $F8 ; 
; con_s_animation_F9                        = $F9 ; 
; con_s_animation_FA                        = $FA ; 
; con_s_animation_FB                        = $FB ; 
; con_s_animation_FC                        = $FC ; 
con_s_animation_FD_attacker                 = $FD ; управляющий байт, выбрать рожу нападающего по таблице
con_s_animation_FE_defender                 = $FE ; управляющий байт, выбрать рожу защитника по таблице
con_s_animation_FF_skip                     = $FF ; управляющий байт, пропустить вывод анимации



; ram_звук                                  = $0700
con_музыка_выключить_все                    = $01 ; 
con_музыка_добавочное_время                 = $32 ; 



; con_plr_id
; _my означает игрока нашей команды, который также может быть нашим японцем
; если указано _japan, значит это японцы-соперники
; для поиска ссылок на игроков нужно искать без con_
con_p_clone                                 = $00 ; 
con_p_tsubasa_my                            = $01 ; Цубаса
con_p_renato_my                             = $02 ; Ренато
con_p_lima_my                               = $03 ; Лима
con_p_marini_my                             = $04 ; Марини
con_p_amaral_my                             = $05 ; Амарал
con_p_dotor_my                              = $06 ; Дотор
con_p_batista_my                            = $07 ; Батиста
con_p_tahamata_my                           = $08 ; Тахамата
con_p_babington_my                          = $09 ; 
con_p_gil_my                                = $0A ; Гил
con_p_platon_my                             = $0B ; Платон
con_p_urabe_my                              = $0C ; 
con_p_kishida_my                            = $0D ; Кишида
con_p_nakayama_my                           = $0E ; Накаяма
con_p_morisaki_my                           = $0F ; Морисаки
con_p_takasugi_my                           = $10 ; Такасуги
con_p_misaki_my                             = $11 ; Мисаки
con_p_izawa_my                              = $12 ; Изава
con_p_taki_my                               = $13 ; Таки
con_p_ishizaki_my                           = $14 ; Ишизаки
con_p_nitta_my                              = $15 ; Нитта
con_p_kisugi_my                             = $16 ; Кисуги
con_p_masao_my                              = $17 ; Масао
con_p_kazuo_my                              = $18 ; Казуо
con_p_sano_my                               = $19 ; Сано
con_p_hyuga_my                              = $1A ; Хюга
con_p_soda_my                               = $1B ; Сода
con_p_jito_my                               = $1C ; Джито
con_p_matsuyama_my                          = $1D ; Мацуяма
con_p_sorimachi_my                          = $1E ; Соримачи
con_p_sawada_my                             = $1F ; Савада
con_p_misugi_my                             = $20 ; Мисуги
con_p_wakabayashi_my                        = $21 ; Вакабаяши
con_p_wakashimazu_my                        = $22 ; Вакашимазу
con_p_satrustegui_corinthians               = $23 ; 
con_p_ribeiro_corinthians                   = $24 ; Рибейро, Риберу
con_p_da_silva_gremio                       = $25 ; Да Силва, Да Сильва
con_p_meon_gremio                           = $26 ; Меон
con_p_toninho_palmeiras                     = $27 ; Тониньо
con_p_nei_palmeiras                         = $28 ; Ней, Неи
con_p_zagallo_santos                        = $29 ; Загалло
con_p_dirceu_santos                         = $2A ; Дирсеу
con_p_carlos_flamengo                       = $2B ; Карлос
con_p_santamaria_flamengo                   = $2C ; Сантамария
con_p_jetorio_flamengo                      = $2D ; Джеторио
con_p_jito_kunimi                           = $2E ; Джито
con_p_sano_kunimi                           = $2F ; Сано
con_p_masao_akita                           = $30 ; Масао
con_p_kazuo_akita                           = $31 ; Казуо
con_p_soda_tatsunami                        = $32 ; Сода
con_p_nakanishi_tatsunami                   = $33 ; Наканиши
con_p_misugi_musashi                        = $34 ; Мисуги
con_p_matsuyama_furano                      = $35 ; Мацуяма
con_p_hyuga_toho                            = $36 ; Хюга
con_p_sorimachi_toho                        = $37 ; Соримачи
con_p_sawada_toho                           = $38 ; Савада
con_p_wakashimazu_toho                      = $39 ; Вакашимазу
con_p_rampion_as_roma                       = $3A ; Рампион
con_p_victorino_uruguay                     = $3B ; Викторино
con_p_da_silva_uruguay                      = $3C ; Да Силва, Да Сильва
con_p_kappelman_hamburger_sv                = $3D ; 
con_p_kaltz_hamburger_sv                    = $3E ; Кальц
con_p_metza_hamburger_sv                    = $3F ; 
con_p_wakabayashi_hamburger_sv              = $40 ; Вакабаяши
con_p_hyuga_japan                           = $41 ; Хюга
con_p_nitta_japan                           = $42 ; Нитта
con_p_sano_japan                            = $43 ; Сано
con_p_misaki_japan                          = $44 ; Мисаки
con_p_misugi_japan                          = $45 ; Мисуги
con_p_masao_japan                           = $46 ; Масао
con_p_kazuo_japan                           = $47 ; Казуо
con_p_jito_japan                            = $48 ; Джито
con_p_ishizaki_japan                        = $49 ; Ишизаки
con_p_soda_japan                            = $4A ; Сода
con_p_matsuyama_japan                       = $4B ; Мацуяма
con_p_wakashimazu_japan                     = $4C ; Вакашимазу
con_p_li_han_ne_china                       = $4D ; 
con_p_li_ban_kun_china                      = $4E ; 
con_p_sha_south_korea                       = $4F ; Ша
con_p_kim_south_korea                       = $50 ; Ким
con_p_macher_poland                         = $51 ; Мачер, Махер
con_p_djazic_poland                         = $52 ; Джазик
con_p_lorimar_england                       = $53 ; Лоримар
con_p_robson_england                        = $54 ; Робсон
con_p_belyaev_soviet_union                  = $55 ; Беляев
con_p_rashin_soviet_union                   = $56 ; Рашин
con_p_napoleon_france                       = $57 ; Наполеон
con_p_pierre_france                         = $58 ; Пьер
con_p_espana_mexico                         = $59 ; Эспана
con_p_rampion_italy                         = $5A ; Рампион
con_p_hernandez_italy                       = $5B ; Хернандез, Хернандэз
con_p_islas_netherlands                     = $5C ; Ислас
con_p_libuta_netherlands                    = $5D ; Либута
con_p_pascal_argentina                      = $5E ; Паскаль
con_p_satrustegui_argentina                 = $5F ; 
con_p_diaz_argentina                        = $60 ; Диаз
con_p_babington_argentina                   = $61 ; 
con_p_galvan_argentina                      = $62 ; Гальван
con_p_schneider_west_germany                = $63 ; Шнайдер
con_p_margus_west_germany                   = $64 ; Маргус
con_p_kaltz_west_germany                    = $65 ; Кальц
con_p_metza_west_germany                    = $66 ; Метца
con_p_schester_west_germany                 = $67 ; Честер, Шестер
con_p_kappelman_west_germany                = $68 ; 
con_p_muller_west_germany                   = $69 ; Мюллер
con_p_carlos_brazil                         = $6A ; Карлос
con_p_zagallo_brazil                        = $6B ; Загалло
con_p_ribeiro_brazil                        = $6C ; Рибейро, Рибейру
con_p_nei_brazil                            = $6D ; Ней
con_p_santamaria_brazil                     = $6E ; Сантамария
con_p_toninho_brazil                        = $6F ; Тониньо
con_p_dotor_brazil                          = $70 ; Дотор
con_p_amaral_brazil                         = $71 ; Амарал
con_p_dirceu_brazil                         = $72 ; Дирсеу
con_p_jetorio_brazil                        = $73 ; Джеторио
con_p_gertise_brazil                        = $74 ; Гертис
con_p_coimbra_brazil                        = $75 ; Коимбра





; действие и подтип действия атаки
; 00 = shoot
    ; 00 = shot
    ; 01 = header
    ; 02 = volley
    ; 03 = drive shot
    ; 04 = drive overhead
    ; 05 = falcon shot
    ; 06 = falcon volley
    ; 07 = razor shot
    ; 08 = skylab hurricane
    ; 09 = twin shot
    ; 0A = skylab x2 twin shot
    ; 0B = eagle shot
    ; 0C = tiger shot
    ; 0D = neo tiger shot
    ; 0E = overhead
    ; 0F = hyper overhead
    ; 10 = jumping volley
    ; 11 = drive tiger
    ; 12 = cyclone
    ; 13 = sano combo
    ; 14 = banana shot
    ; 15 = booster shot
    ; 16 = mirage shot
    ; 17 = mach shot
    ; 18 = sidewinder shot
    ; 19 = slider shot
    ; 1A = cannon shot
    ; 1B = fire shot
    ; 1C = dynamite header
    ; 1D = cannon header
    ; 1E = rocket header
    ; 1F = rising dragon kick
    ; 20 = foward somersault
    ; 21 = slider cannon
    ; 22 = double eel
; 01 = pass
    ; 00 = pass
    ; 01 = drive pass
    ; 02 = razor pass
    ; 03 = topspin pass
; 02 = dribble
    ; 00 = dribble
    ; 01 = heel lift
    ; 02 = forcible dribble
    ; 03 = vanishing feint
    ; 04 = clone dribble
    ; 05 = high speed dribble
    ; 06 = hedgehog dribble
; 03 = 1-2 pass
    ; 00 = pass
    ; 01 = golden combo
    ; 02 = toho combo
    ; 03 = gemini combo
    ; 04 = eiffel tower
; 04 = trap
; 05 = through
; 06 = clear
; 07 = shoot left (pk)
; 08 = shoot center (pk)
; 09 = shoot right (pk)





; действие и подтип действия защиты
; 00 = block / catch
    ; block
        ; 00 = block
        ; 01 = face block
        ; 02 = skylab block
        ; 03 = power block
    ; catch
        ; 00 = catch
        ; 01 = rolling save
        ; 02 = clone save
        ; 03 = dark illusion
; 01 = tackle / punch
    ; tackle
        ; 00 = tackle
        ; 01 = skylab tackle
        ; 02 = razor tackle
        ; 03 = power tackle
        ; 04 = tiger tackle
; 02 = pass cut / triangle jump
    ; pass cut
        ; 00 = pass cut
        ; 01 = skylab pass cut
; 03 = interfere / dive
    ; interfere
        ; 01 = interfere
        ; 02 = killing interfere
; 04 = clearing / wait (gk)
; 05 = mark / through
; 06 = idle (вообще не нападать)








