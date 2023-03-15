; todo
    ; предположительно неправильное название ram
        ; 0x036170 какой-то стремный индекс расстановки и защиты
            ; проверить X по логу
    ; проверить некоторые места по логу
        ; 0x030835
        ; 0x030C2C
        ; 0x03EA04
        ; 0x028337
        ; 0x01871B
        ; 0x017CF4
        ; 0x001F76
        ; 0x0023AB
        ; 0x001C38 выяснить под какими индексами поинтеры
        ; 0x0001D9
        ; 0x03E217
        ; 0x03D0E0
        ; 0x03C907
        ; 0x032CA9
        ; 0x031672
        ; 0x0391FF
        ; 0x038F25
        ; 0x038587
        ; 0x0352DD
        ; 0x030835
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
        ; 0x004B2F
        ; 0x0044F3
        ; 0x002C91
        ; 0x0017BD
        ; 0x00127C
        ; 0x001000
        ; 0x000A96
        ; 0x0007ED
        ; 0x0001D9
        ; 0x0209D5
        ; con_scenario_50 и выше, выяснить где пишется
        ; 0x03CC03 выяснить как часто нужен был этот цикл, неужели дохера звуков в очереди?
        ; 0x03EECC
        ; 0x03FCF0
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
        ; 0x0016EA
        ; 0x0016BB
        ; 0x001694
        ; 0x0014A6
        ; 0x001319
        ; 0x0012BB
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
con_plr_04                                  = $04 ; видимо не используется
con_plr_pos_X_lo                            = $05 ; 
con_plr_pos_X_hi                            = $06 ; 
con_plr_pos_Y_lo                            = $07 ; 
con_plr_pos_Y_hi                            = $08 ; 
con_plr_09                                  = $09 ; какой-то параметр ???
con_plr_stun                                = $0A ; stunlock, таймер, во время которого игрок не может двигаться автоматически и нападать
con_plr_0B                                  = $0B ; какой-то параметр ??? видимо не используется



; особые параметры киперов
; bzk заменить константы на киперские в некоторых местах
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
; con_FBCC_17                               = $17 ; bzk optimize
; con_FBCC_18                               = $18 ; bzk optimize
; con_FBCC_19                               = $19 ; bzk optimize
con_FBCC_1A                                 = $1A ; bzk optimize, поменять на 17



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



; сценарии для 0x0209CF
con_scenario_00                             = $00 ; 
con_scenario_01                             = $01 ; 
con_scenario_02                             = $02 ; 
; con_scenario_03                           = $03 ; 
con_scenario_04                             = $04 ; 
con_scenario_05                             = $05 ; 
con_scenario_06                             = $06 ; 
con_scenario_07                             = $07 ; 
con_scenario_08                             = $08 ; 
con_scenario_09                             = $09 ; 
con_scenario_0A                             = $0A ; 
con_scenario_0B                             = $0B ; 
con_scenario_0C                             = $0C ; 
con_scenario_0D                             = $0D ; 
con_scenario_0E                             = $0E ; 
con_scenario_0F                             = $0F ; 
con_scenario_10                             = $10 ; 
con_scenario_11                             = $11 ; 
con_scenario_12                             = $12 ; 
con_scenario_13                             = $13 ; 
con_scenario_14                             = $14 ; 
con_scenario_15                             = $15 ; 
con_scenario_16                             = $16 ; 
con_scenario_17                             = $17 ; 
con_scenario_18                             = $18 ; 
con_scenario_19                             = $19 ; 
con_scenario_1A                             = $1A ; 
con_scenario_1B                             = $1B ; 
con_scenario_1C                             = $1C ; 
con_scenario_1D                             = $1D ; 
con_scenario_1E                             = $1E ; 
con_scenario_1F                             = $1F ; 
con_scenario_20                             = $20 ; 
con_scenario_21                             = $21 ; 
con_scenario_22                             = $22 ; 
con_scenario_23                             = $23 ; 
con_scenario_24                             = $24 ; 
con_scenario_25                             = $25 ; 
con_scenario_26                             = $26 ; 
con_scenario_27                             = $27 ; 
con_scenario_28                             = $28 ; 
con_scenario_29                             = $29 ; 
con_scenario_2A                             = $2A ; 
con_scenario_2B                             = $2B ; 
con_scenario_2C                             = $2C ; 
con_scenario_2D                             = $2D ; 
con_scenario_2E                             = $2E ; 
con_scenario_2F                             = $2F ; 
con_scenario_30                             = $30 ; 
con_scenario_31                             = $31 ; 
con_scenario_32                             = $32 ; экран действия кипера словить/отбить (там где рожа кипера)
con_scenario_33                             = $33 ; 
con_scenario_34                             = $34 ; 
con_scenario_35                             = $35 ; 
con_scenario_36                             = $36 ; 
con_scenario_37                             = $37 ; 
con_scenario_38                             = $38 ; 
con_scenario_39                             = $39 ; 
con_scenario_3A                             = $3A ; 
; con_scenario_3B                           = $3B ; 
; con_scenario_3C                           = $3C ; 
con_scenario_3D                             = $3D ; 
con_scenario_3E                             = $3E ; 
con_scenario_3F                             = $3F ; 
con_scenario_40                             = $40 ; 
con_scenario_41                             = $41 ; 
con_scenario_42                             = $42 ; 
con_scenario_43                             = $43 ; 
con_scenario_44                             = $44 ; 
con_scenario_45                             = $45 ; 
con_scenario_46                             = $46 ; 
con_scenario_47                             = $47 ; 
; con_scenario_48                           = $48 ; unused
; con_scenario_49                           = $49 ; unused
; con_scenario_4A                           = $4A ; unused
; con_scenario_4B                           = $4B ; unused
; con_scenario_4C                           = $4C ; unused
; con_scenario_4D                           = $4D ; unused
; con_scenario_4E                           = $4E ; unused
; con_scenario_4F                           = $4F ; unused
; для финальной катсцены, хз где оно пишется
; con_scenario_50                           = $50 ; 
; con_scenario_51                           = $51 ; 
; con_scenario_52                           = $52 ; 
; con_scenario_53                           = $53 ; 
; con_scenario_54                           = $54 ; 
; con_scenario_55                           = $55 ; 
; con_scenario_56                           = $56 ; 
; con_scenario_57                           = $57 ; 
; con_scenario_58                           = $58 ; 
; con_scenario_59                           = $59 ; 
; con_scenario_5A                           = $5A ; 
; con_scenario_5B                           = $5B ; 
; con_scenario_5C                           = $5C ; 
; con_scenario_5D                           = $5D ; 
; con_scenario_5E                           = $5E ; 
; con_scenario_5F                           = $5F ; 
; con_scenario_60                           = $60 ; 
; con_scenario_61                           = $61 ; 
; con_scenario_62                           = $62 ; 
; con_scenario_63                           = $63 ; 
; con_scenario_64                           = $64 ; 
; con_scenario_65                           = $65 ; 
; con_scenario_66                           = $66 ; 
; con_scenario_67                           = $67 ; 
; con_scenario_68                           = $68 ; 
; con_scenario_69                           = $69 ; 
; con_scenario_6A                           = $6A ; 
; con_scenario_6B                           = $6B ; 
; con_scenario_6C                           = $6C ; 
; con_scenario_6D                           = $6D ; 
; con_scenario_6E                           = $6E ; 
; con_scenario_6F                           = $6F ; 
; con_scenario_70                           = $70 ; 
; con_scenario_71                           = $71 ; 
; con_scenario_72                           = $72 ; 
; con_scenario_73                           = $73 ; 
; con_scenario_74                           = $74 ; 
; con_scenario_75                           = $75 ; 
; con_scenario_76                           = $76 ; 
; con_scenario_77                           = $77 ; 
; con_scenario_78                           = $78 ; 



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
