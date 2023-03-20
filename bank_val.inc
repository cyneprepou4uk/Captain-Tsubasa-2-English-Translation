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
        ; 0x003B20 3 таблицы
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
; con_B3CF_0E                               = $0E ; unused
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
con_s_id_00                                 = $00 ; сценарий дриблинга или когда игрок прыгает чтоб перехватить мяч
con_s_id_01                                 = $01 ; атакующий находится на чужой штрафной, и он только что выбрал желаемое действие. показывается анимация того, как он бежит/прыгает к мячу перед тем как его сделать
con_s_id_02                                 = $02 ; действие защитника на своей штрафной
; con_s_id_03                               = $03 ; unused полет мяча, затем игрок принимает его на ногу во время бега (аналогично заверщению спешал перепасовки)
con_s_id_04                                 = $04 ; белое мерцание со звуком сражения (oh), когда игроки сражаются на штрафной
con_s_id_05                                 = $05 ; попытка убийства атакующего, который проиграл действие на чужой штрафной (аналогично 10)
con_s_id_06                                 = $06 ; попытка убийства защитника, который проиграл действие на своей штрафной
con_s_id_07                                 = $07 ; 
con_s_id_08                                 = $08 ; действие атакующего на чужой штрафной
con_s_id_09                                 = $09 ; конечный полет удара и действие кипера, возможный гол
con_s_id_0A                                 = $0A ; кипер против атакующего на земле
con_s_id_0B                                 = $0B ; после того как игрок/комп дал пас, кто-то автоматически подлазит под мяч и пытается его перехватить. он также может подлезть перед завершением перепасовки
con_s_id_0C                                 = $0C ; конечный полет удара в пустые ворота, когда кипера нет на месте (в отличие от 09)
con_s_id_0D                                 = $0D ; игрок автоматически бьет когда обвел кипера
con_s_id_0E                                 = $0E ; игрок бежит/прыгает к мячу на штрафной и что-то делает
con_s_id_0F                                 = $0F ; действие атакующего на своей штрафной
con_s_id_10                                 = $10 ; попытка убийства атакующего, который проиграл действие на своей штрафной (аналогично 05)
con_s_id_11                                 = $11 ; попытка убийства защитника, который проиграл действие на чужой штрафной
con_s_id_12                                 = $12 ; результат сражения на своей штрафной, когда мяч у тебя
con_s_id_13                                 = $13 ; атакующему позволили совершить действие на своей штрафной. анимация как он делает это действие
con_s_id_14                                 = $14 ; полет мяча при ударе перед стенкой, затем мяч может обогнуть/защитник отобьет/словит/убьется
con_s_id_15                                 = $15 ; matsuyama базарит всем чтоб быстрее бежали
con_s_id_16                                 = $16 ; diaz базарит что делает ускорение
con_s_id_17                                 = $17 ; drive overhead озарение
con_s_id_18                                 = $18 ; игрок/комп дает пас с земли/со штафной
con_s_id_19                                 = $19 ; игрок начинает делать перепасовку и дает первый пас
con_s_id_1A                                 = $1A ; мяч летит, прилетел к напарнику и он возвращает перепасовку
con_s_id_1B                                 = $1B ; мяч летит, и прилетает к основному игроку после перепасовки
con_s_id_1C                                 = $1C ; мяч летит и прилетает к игроку, которому дали пас пас
con_s_id_1D                                 = $1D ; удар с земли (спешал тоже)
con_s_id_1E                                 = $1E ; игрок бежит по полю
; пенальти
con_s_id_1F                                 = $1F ; после нарушения сообщение о том, чья команда получает возможность пробить penalty kick
con_s_id_20                                 = $20 ; сообщение о том, кто будет пробивать пенальти во время матча
con_s_id_21                                 = $21 ; пробитие пенальти во время матча, затем результат удара и действия кипера
con_s_id_22                                 = $22 ; в пенальти после матча сообщение о пробивающем игроке, затем выбор действия игроку/киперу
con_s_id_23                                 = $23 ; пробитие пенальти после матча, затем результат удара и действия кипера (схоже с 20)
; нарушения
con_s_id_24                                 = $24 ; сообщение corner kick
con_s_id_25                                 = $25 ; сообщение goal kick
con_s_id_26                                 = $26 ; сообщение throw in
con_s_id_27                                 = $27 ; мяч улетает в аут (goal kick)
con_s_id_28                                 = $28 ; кипер пасует от своих ворот прямо (goal kick)
con_s_id_29                                 = $29 ; мяч улетает в аут (throw in)
con_s_id_2A                                 = $2A ; игрок делает throw in
con_s_id_2B                                 = $2B ; сообщение о свободном ударе (freekick)
con_s_id_2C                                 = $2C ; игрок принимает низкий мяч на ногу
con_s_id_2D                                 = $2D ; ничейный мяч ударяется об землю (предположительно только после обычного удара, когда слишком далеко)
con_s_id_2E                                 = $2E ; на игрока напали когда он находится на земле
con_s_id_2F                                 = $2F ; мяч прилетел к игроку, когда он находится на чужой штрафной (в отличие от 3F)
con_s_id_30                                 = $30 ; сообщение после гола
con_s_id_31                                 = $31 ; сообщение при нападении 1 на 1 на вратаря
con_s_id_32                                 = $32 ; экран действия кипера словить/отбить (там где рожа кипера)
con_s_id_33                                 = $33 ; сообщение о завершении тайма/матча/пк после того как время вышло/пенальти были пробиты полностью
con_s_id_34                                 = $34 ; ничейный мяч ударяется об землю (предположительно только после паса/clearing)
con_s_id_35                                 = $35 ; ожидание разводки
con_s_id_36                                 = $36 ; разводка
con_s_id_37                                 = $37 ; после гола/нарушения ворота вдали по центру, открывается меню resume/edit
con_s_id_38                                 = $38 ; выбор кому дать пас или с кем перепасоваться
con_s_id_39                                 = $39 ; сообщение о том что начались пенальти после матча
con_s_id_3A                                 = $3A ; кипер дает пас в поле после того как завладел мячом
; con_s_id_3B                               = $3B ; unused
; con_s_id_3C                               = $3C ; unused
con_s_id_3D                                 = $3D ; недостаточно энергии
con_s_id_3E                                 = $3E ; предположительно = 1C, но пас чужому игроку?
con_s_id_3F                                 = $3F ; мяч прилетел к игроку, когда он находится на своей штрафной (в отличие от 2F)
con_s_id_40                                 = $40 ; сообщение о пустых воротах, когда кипера нет на месте (goal open)
con_s_id_41                                 = $41 ; напоминание о том, насколько сильно кипер защитника наебан в данный момент (off balance, down)
con_s_id_42                                 = $42 ; когда игрок успешно сделал through, сообщение насколько сильно это наебало кипера (off balance, down)
con_s_id_43                                 = $43 ; сообщение о том, что основное время заканчивается (осталось 47 секунд)
con_s_id_44                                 = $44 ; игрок в меню выбора действия, находясь с мячом на земле
con_s_id_45                                 = $45 ; sudden death в пенальти
con_s_id_46                                 = $46 ; tsubasa первый раз делает cyclone
con_s_id_47                                 = $47 ; diaz выебывается после гола
; con_s_id_48                               = $48 ; unused
; con_s_id_49                               = $49 ; unused
; con_s_id_4A                               = $4A ; unused
; con_s_id_4B                               = $4B ; unused
; con_s_id_4C                               = $4C ; unused
; con_s_id_4D                               = $4D ; unused
; con_s_id_4E                               = $4E ; unused
; con_s_id_4F                               = $4F ; unused
con_s_id_50                                 = $50 ; credits face 22 p_tsubasa_my
con_s_id_51                                 = $51 ; credits face 18 p_misaki_my
con_s_id_52                                 = $52 ; credits face 20 p_hyuga_my
con_s_id_53                                 = $53 ; credits face 21 p_wakabayashi_my
con_s_id_54                                 = $54 ; credits face  8 p_matsuyama_furano
con_s_id_55                                 = $55 ; credits face  7 p_misugi_musashi
con_s_id_56                                 = $56 ; credits face  3 p_ishizaki_my
con_s_id_57                                 = $57 ; credits face  6 p_soda_tatsunami
con_s_id_58                                 = $58 ; credits face  9 p_nitta_my
con_s_id_59                                 = $59 ; credits face  4 p_jito_kunimi
con_s_id_5A                                 = $5A ; credits face  5 p_masao_akita
con_s_id_5B                                 = $5B ; credits face 19 p_wakashimazu_my
con_s_id_5C                                 = $5C ; credits face  1 p_carlos_flamengo
con_s_id_5D                                 = $5D ; credits face  2 p_meon_gremio
con_s_id_5E                                 = $5E ; credits face 11 p_kaltz_hamburger_sv
con_s_id_5F                                 = $5F ; credits face 12 p_pierre_france
con_s_id_60                                 = $60 ; credits face 13 p_napoleon_france
con_s_id_61                                 = $61 ; credits face 14 p_diaz_argentina
con_s_id_62                                 = $62 ; credits face 15 p_pascal_argentina
con_s_id_63                                 = $63 ; credits face 16 p_schneider_west_germany
con_s_id_64                                 = $64 ; credits face 10 p_victorino_uruguay
con_s_id_65                                 = $65 ; credits face 17 p_coimbra_brazil
con_s_id_66                                 = $66 ; credits полет мяча после нескольких суперок, рваная сетка и фотка японцев
; con_s_id_67                               = $67 ; unused
; con_s_id_68                               = $68 ; unused
con_s_id_69                                 = $69 ; credits  1 tsubasa shoot
con_s_id_6A                                 = $6A ; credits 11 tsubasa heel lift
con_s_id_6B                                 = $6B ; credits  3 soda razor tackle
con_s_id_6C                                 = $6C ; credits  4 ishizaki face block
con_s_id_6D                                 = $6D ; credits  5 tsubasa cyclone launch
con_s_id_6E                                 = $6E ; credits  6 tachibana skylab hurricane
con_s_id_6F                                 = $6F ; credits  7 wakashimazu triangle jump
con_s_id_70                                 = $70 ; credits  8 штанга + добивание urabe + мяч лопается
con_s_id_71                                 = $71 ; credits  9 кипер пропускает + matsuyama спасает ворота
con_s_id_72                                 = $72 ; credits 10 jito power block
con_s_id_73                                 = $73 ; credits 12 wakabayshi critical
con_s_id_74                                 = $74 ; credits 13 hyuga forcible dribble
con_s_id_75                                 = $75 ; credits 14 misaki jumping volley
con_s_id_76                                 = $76 ; credits 15 misaki overhead kick
con_s_id_77                                 = $77 ; credits 16 tsubasa крупным планом
con_s_id_78                                 = $78 ; credits  2 nitta high clear
; con_s_id_79                               = $79 ; unused
; con_s_id_7A                               = $7A ; unused
; con_s_id_7B                               = $7B ; unused
; con_s_id_7C                               = $7C ; unused
; con_s_id_7D                               = $7D ; unused
; con_s_id_7E                               = $7E ; unused
; con_s_id_7F                               = $7F ; unused
; con_s_id_80                               = $80 ; unused
; con_s_id_81                               = $81 ; unused
; con_s_id_82                               = $82 ; unused
; con_s_id_83                               = $83 ; unused
; con_s_id_84                               = $84 ; unused
; con_s_id_85                               = $85 ; unused
; con_s_id_86                               = $86 ; unused
; con_s_id_87                               = $87 ; unused
; con_s_id_88                               = $88 ; unused
; con_s_id_89                               = $89 ; unused
; con_s_id_8A                               = $8A ; unused
; con_s_id_8B                               = $8B ; unused
; con_s_id_8C                               = $8C ; unused
; con_s_id_8D                               = $8D ; unused
; con_s_id_8E                               = $8E ; unused
; con_s_id_8F                               = $8F ; unused
; con_s_id_90                               = $90 ; unused
; con_s_id_91                               = $91 ; unused
; con_s_id_92                               = $92 ; unused
; con_s_id_93                               = $93 ; unused
; con_s_id_94                               = $94 ; unused
; con_s_id_95                               = $95 ; unused
; con_s_id_96                               = $96 ; unused
; con_s_id_97                               = $97 ; unused
; con_s_id_98                               = $98 ; unused
; con_s_id_99                               = $99 ; unused
; con_s_id_9A                               = $9A ; unused
; con_s_id_9B                               = $9B ; unused
; con_s_id_9C                               = $9C ; unused
; con_s_id_9D                               = $9D ; unused
; con_s_id_9E                               = $9E ; unused
; con_s_id_9F                               = $9F ; unused
; con_s_id_A0                               = $A0 ; unused
; con_s_id_A1                               = $A1 ; unused
; con_s_id_A2                               = $A2 ; unused
; con_s_id_A3                               = $A3 ; unused
; con_s_id_A4                               = $A4 ; unused
; con_s_id_A5                               = $A5 ; unused
; con_s_id_A6                               = $A6 ; unused
; con_s_id_A7                               = $A7 ; unused
; con_s_id_A8                               = $A8 ; unused
; con_s_id_A9                               = $A9 ; unused
; con_s_id_AA                               = $AA ; unused
; con_s_id_AB                               = $AB ; unused
; con_s_id_AC                               = $AC ; unused
; con_s_id_AD                               = $AD ; unused
; con_s_id_AE                               = $AE ; unused
; con_s_id_AF                               = $AF ; unused
; con_s_id_B0                               = $B0 ; unused
; con_s_id_B1                               = $B1 ; unused
; con_s_id_B2                               = $B2 ; unused
; con_s_id_B3                               = $B3 ; unused
; con_s_id_B4                               = $B4 ; unused
; con_s_id_B5                               = $B5 ; unused
; con_s_id_B6                               = $B6 ; unused
; con_s_id_B7                               = $B7 ; unused
; con_s_id_B8                               = $B8 ; unused
; con_s_id_B9                               = $B9 ; unused
; con_s_id_BA                               = $BA ; unused
; con_s_id_BB                               = $BB ; unused
; con_s_id_BC                               = $BC ; unused
; con_s_id_BD                               = $BD ; unused
; con_s_id_BE                               = $BE ; unused
; con_s_id_BF                               = $BF ; unused
; con_s_id_C0                               = $C0 ; unused
; con_s_id_C1                               = $C1 ; unused
; con_s_id_C2                               = $C2 ; unused
; con_s_id_C3                               = $C3 ; unused
; con_s_id_C4                               = $C4 ; unused
; con_s_id_C5                               = $C5 ; unused
; con_s_id_C6                               = $C6 ; unused
; con_s_id_C7                               = $C7 ; unused
; con_s_id_C8                               = $C8 ; unused
; con_s_id_C9                               = $C9 ; unused
; con_s_id_CA                               = $CA ; unused
; con_s_id_CB                               = $CB ; unused
; con_s_id_CC                               = $CC ; unused
; con_s_id_CD                               = $CD ; unused
; con_s_id_CE                               = $CE ; unused
; con_s_id_CF                               = $CF ; unused
; con_s_id_D0                               = $D0 ; unused
; con_s_id_D1                               = $D1 ; unused
; con_s_id_D2                               = $D2 ; unused
; con_s_id_D3                               = $D3 ; unused
; con_s_id_D4                               = $D4 ; unused
; con_s_id_D5                               = $D5 ; unused
; con_s_id_D6                               = $D6 ; unused
; con_s_id_D7                               = $D7 ; unused
; con_s_id_D8                               = $D8 ; unused
; con_s_id_D9                               = $D9 ; unused
; con_s_id_DA                               = $DA ; unused
; con_s_id_DB                               = $DB ; unused
; con_s_id_DC                               = $DC ; unused
; con_s_id_DD                               = $DD ; unused
; con_s_id_DE                               = $DE ; unused
; con_s_id_DF                               = $DF ; unused
; con_s_id_E0                               = $E0 ; unused
; con_s_id_E1                               = $E1 ; unused
; con_s_id_E2                               = $E2 ; unused
; con_s_id_E3                               = $E3 ; unused
; con_s_id_E4                               = $E4 ; unused
; con_s_id_E5                               = $E5 ; unused
; con_s_id_E6                               = $E6 ; unused
; con_s_id_E7                               = $E7 ; unused
; con_s_id_E8                               = $E8 ; unused
; con_s_id_E9                               = $E9 ; unused
; con_s_id_EA                               = $EA ; unused
; con_s_id_EB                               = $EB ; unused
; con_s_id_EC                               = $EC ; unused
; con_s_id_ED                               = $ED ; unused
; con_s_id_EE                               = $EE ; unused
; con_s_id_EF                               = $EF ; unused
; con_s_id_F0                               = $F0 ; unused
; con_s_id_F1                               = $F1 ; unused
; con_s_id_F2                               = $F2 ; unused
; con_s_id_F3                               = $F3 ; unused
; con_s_id_F4                               = $F4 ; unused
; con_s_id_F5                               = $F5 ; unused
; con_s_id_F6                               = $F6 ; unused
; con_s_id_F7                               = $F7 ; unused
; con_s_id_F8                               = $F8 ; unused
; con_s_id_F9                               = $F9 ; unused
; con_s_id_FA                               = $FA ; unused
; con_s_id_FB                               = $FB ; unused
; con_s_id_FC                               = $FC ; unused
; con_s_id_FD                               = $FD ; unused
; con_s_id_FE                               = $FE ; unused
; con_s_id_FF                               = $FF ; unused



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
; con_s_bg_74                               = $74 ; unused
; con_s_bg_75                               = $75 ; unused
; con_s_bg_76                               = $76 ; unused
; con_s_bg_77                               = $77 ; unused
; con_s_bg_78                               = $78 ; unused
; con_s_bg_79                               = $79 ; unused
; con_s_bg_7A                               = $7A ; unused
; con_s_bg_7B                               = $7B ; unused
; con_s_bg_7C                               = $7C ; unused
; con_s_bg_7D                               = $7D ; unused
; con_s_bg_7E                               = $7E ; unused
; con_s_bg_7F                               = $7F ; unused
; con_s_bg_80                               = $80 ; unused
; con_s_bg_81                               = $81 ; unused
; con_s_bg_82                               = $82 ; unused
; con_s_bg_83                               = $83 ; unused
; con_s_bg_84                               = $84 ; unused
; con_s_bg_85                               = $85 ; unused
; con_s_bg_86                               = $86 ; unused
; con_s_bg_87                               = $87 ; unused
; con_s_bg_88                               = $88 ; unused
; con_s_bg_89                               = $89 ; unused
; con_s_bg_8A                               = $8A ; unused
; con_s_bg_8B                               = $8B ; unused
; con_s_bg_8C                               = $8C ; unused
; con_s_bg_8D                               = $8D ; unused
; con_s_bg_8E                               = $8E ; unused
; con_s_bg_8F                               = $8F ; unused
; con_s_bg_90                               = $90 ; unused
; con_s_bg_91                               = $91 ; unused
; con_s_bg_92                               = $92 ; unused
; con_s_bg_93                               = $93 ; unused
; con_s_bg_94                               = $94 ; unused
; con_s_bg_95                               = $95 ; unused
; con_s_bg_96                               = $96 ; unused
; con_s_bg_97                               = $97 ; unused
; con_s_bg_98                               = $98 ; unused
; con_s_bg_99                               = $99 ; unused
; con_s_bg_9A                               = $9A ; unused
; con_s_bg_9B                               = $9B ; unused
; con_s_bg_9C                               = $9C ; unused
; con_s_bg_9D                               = $9D ; unused
; con_s_bg_9E                               = $9E ; unused
; con_s_bg_9F                               = $9F ; unused
; con_s_bg_A0                               = $A0 ; unused
; con_s_bg_A1                               = $A1 ; unused
; con_s_bg_A2                               = $A2 ; unused
; con_s_bg_A3                               = $A3 ; unused
; con_s_bg_A4                               = $A4 ; unused
; con_s_bg_A5                               = $A5 ; unused
; con_s_bg_A6                               = $A6 ; unused
; con_s_bg_A7                               = $A7 ; unused
; con_s_bg_A8                               = $A8 ; unused
; con_s_bg_A9                               = $A9 ; unused
; con_s_bg_AA                               = $AA ; unused
; con_s_bg_AB                               = $AB ; unused
; con_s_bg_AC                               = $AC ; unused
; con_s_bg_AD                               = $AD ; unused
; con_s_bg_AE                               = $AE ; unused
; con_s_bg_AF                               = $AF ; unused
; con_s_bg_B0                               = $B0 ; unused
; con_s_bg_B1                               = $B1 ; unused
; con_s_bg_B2                               = $B2 ; unused
; con_s_bg_B3                               = $B3 ; unused
; con_s_bg_B4                               = $B4 ; unused
; con_s_bg_B5                               = $B5 ; unused
; con_s_bg_B6                               = $B6 ; unused
; con_s_bg_B7                               = $B7 ; unused
; con_s_bg_B8                               = $B8 ; unused
; con_s_bg_B9                               = $B9 ; unused
; con_s_bg_BA                               = $BA ; unused
; con_s_bg_BB                               = $BB ; unused
; con_s_bg_BC                               = $BC ; unused
; con_s_bg_BD                               = $BD ; unused
; con_s_bg_BE                               = $BE ; unused
; con_s_bg_BF                               = $BF ; unused
; con_s_bg_C0                               = $C0 ; unused
; con_s_bg_C1                               = $C1 ; unused
; con_s_bg_C2                               = $C2 ; unused
; con_s_bg_C3                               = $C3 ; unused
; con_s_bg_C4                               = $C4 ; unused
; con_s_bg_C5                               = $C5 ; unused
; con_s_bg_C6                               = $C6 ; unused
; con_s_bg_C7                               = $C7 ; unused
; con_s_bg_C8                               = $C8 ; unused
; con_s_bg_C9                               = $C9 ; unused
; con_s_bg_CA                               = $CA ; unused
; con_s_bg_CB                               = $CB ; unused
; con_s_bg_CC                               = $CC ; unused
; con_s_bg_CD                               = $CD ; unused
; con_s_bg_CE                               = $CE ; unused
; con_s_bg_CF                               = $CF ; unused
; con_s_bg_D0                               = $D0 ; unused
; con_s_bg_D1                               = $D1 ; unused
; con_s_bg_D2                               = $D2 ; unused
; con_s_bg_D3                               = $D3 ; unused
; con_s_bg_D4                               = $D4 ; unused
; con_s_bg_D5                               = $D5 ; unused
; con_s_bg_D6                               = $D6 ; unused
; con_s_bg_D7                               = $D7 ; unused
; con_s_bg_D8                               = $D8 ; unused
; con_s_bg_D9                               = $D9 ; unused
; con_s_bg_DA                               = $DA ; unused
; con_s_bg_DB                               = $DB ; unused
; con_s_bg_DC                               = $DC ; unused
; con_s_bg_DD                               = $DD ; unused
; con_s_bg_DE                               = $DE ; unused
; con_s_bg_DF                               = $DF ; unused
; con_s_bg_E0                               = $E0 ; unused
; con_s_bg_E1                               = $E1 ; unused
; con_s_bg_E2                               = $E2 ; unused
; con_s_bg_E3                               = $E3 ; unused
; con_s_bg_E4                               = $E4 ; unused
; con_s_bg_E5                               = $E5 ; unused
; con_s_bg_E6                               = $E6 ; unused
; con_s_bg_E7                               = $E7 ; unused
; con_s_bg_E8                               = $E8 ; unused
; con_s_bg_E9                               = $E9 ; unused
; con_s_bg_EA                               = $EA ; unused
; con_s_bg_EB                               = $EB ; unused
; con_s_bg_EC                               = $EC ; unused
; con_s_bg_ED                               = $ED ; unused
; con_s_bg_EE                               = $EE ; unused
; con_s_bg_EF                               = $EF ; unused
; con_s_bg_F0                               = $F0 ; unused
; con_s_bg_F1                               = $F1 ; unused
; con_s_bg_F2                               = $F2 ; unused
; con_s_bg_F3                               = $F3 ; unused
; con_s_bg_F4                               = $F4 ; unused
; con_s_bg_F5                               = $F5 ; unused
; con_s_bg_F6                               = $F6 ; unused
; con_s_bg_F7                               = $F7 ; unused
; con_s_bg_F8                               = $F8 ; unused
; con_s_bg_F9                               = $F9 ; unused
; con_s_bg_FA                               = $FA ; unused
; con_s_bg_FB                               = $FB ; unused
; con_s_bg_FC                               = $FC ; unused
; con_s_bg_FD                               = $FD ; unused
; con_s_bg_FE                               = $FE ; unused
con_s_bg_FF_skip                            = $FF ; управляющий байт, пропустить отображение фона



; индексы облаков с текстом для 0x031230
; поинтеры (и выбор банка 0x030027) в банке 18, текст облаков в банках 27 28 29
con_s_cloud_clear                           = $00 ; очистить
con_s_cloud_01                              = $01 ; вратаря отпиздили при попытке отобрать мяч у нападающего
con_s_cloud_02                              = $02 ; защитника отпиздили при попытке отобрать мяч у нападающего, или когда он напаривается на мяч
con_s_cloud_03                              = $03 ; игрока отпиздили подкатом и забрали мяч
con_s_cloud_04                              = $04 ; ней делает удар, и тониньо перебивает/братья делают удар с джедаем
con_s_cloud_05                              = $05 ; игрок забрал мяч подкатом/успешно перехватил мяч в воздухе/приклеил мяч к ноге
con_s_cloud_06                              = $06 ; кипер нападает на игрока с мячом 1 на 1
con_s_cloud_07                              = $07 ; игрок не дотянулся до мяча когда тот в полете поверху/понизу
con_s_cloud_08                              = $08 ; игрок напоролся на верхний/нижний летящий мяч, но не смог его остановить, а просто замедлил
con_s_cloud_09                              = $09 ; игрок напоролся на верхний/нижний летящий мяч и отбил его
con_s_cloud_0A                              = $0A ; игрок принимает высокий мяч на штрафной
con_s_cloud_0B                              = $0B ; вратарь сделал выпад и забрал мяч без давания пизды сопернику (убийство в E3)
con_s_cloud_0C                              = $0C ; вратарь делает выпад когда на него напали, но ему не удается словить
con_s_cloud_0D                              = $0D ; чарли без облака и ничего не говорит
con_s_cloud_0E                              = $0E ; втарарь пытается словить/отбить мяч, но полюбому отбивает, даже если хреново
con_s_cloud_0F                              = $0F ; защитник в воротах отбивает мяч
con_s_cloud_10                              = $10 ; игрок принимает низкий мяч на штрафной
con_s_cloud_11                              = $11 ; защитник в воротах промахивается по мячу
con_s_cloud_12                              = $12 ; жирный кипер rolling save
con_s_cloud_13                              = $13 ; лови мячи, третья фраза (брат)/ фраза мисаки во время синего удара
con_s_cloud_14                              = $14 ; игрок завладел мячом (после "тут никого")
con_s_cloud_15                              = $15 ; вратарь пытается отбить удар, и хреново отбивает
con_s_cloud_16                              = $16 ; игрок отобрал мяч гибридом при нападении на игрока или когда мяч в полете (приклеился к ноге)
con_s_cloud_17                              = $17 ; защитник на своей зоне победил соперника и сделал clear
con_s_cloud_18                              = $18 ; попадание в штангу во время удара с 11 метров (матерное)
con_s_cloud_19                              = $19 ; игрок сделал супер ежики и приклеил к себе удар
con_s_cloud_1A                              = $1A ; игрок проиграл борьбу на своей зоне, соперник выбивает мяч поверху
con_s_cloud_1B                              = $1B ; игрок сам подлез под мяч чтобы попытаться остановить
con_s_cloud_1C                              = $1C ; вакашимазу оттолкнулся от штанги, но получит пизды
con_s_cloud_1D                              = $1D ; игрок затоптал соперника, но сам же замедлился
con_s_cloud_1E                              = $1E ; вакашимазу оттолкнулся от штанги
con_s_cloud_1F                              = $1F ; гертис кастует темную иллюзию
con_s_cloud_20                              = $20 ; 
con_s_cloud_21                              = $21 ; 
con_s_cloud_22                              = $22 ; вратаря наебали после пропуска через ноги
; con_s_cloud_23                            = $23 ; игрок покалечен после стычки с игроком
con_s_cloud_24                              = $24 ; соперник выбивает мяч на своей штрафной
con_s_cloud_25                              = $25 ; недостаточно энергии
con_s_cloud_26                              = $26 ; 
con_s_cloud_27                              = $27 ; штанга
con_s_cloud_28                              = $28 ; гол!
con_s_cloud_29                              = $29 ; сообщение oops! на мигающем белом фоне
; con_s_cloud_2A                            = $2A ; unused
; con_s_cloud_2B                            = $2B ; unused
con_s_cloud_2C                              = $2C ; игроки столкнулись в воздухе, экран мигает, сообщение oh!
; con_s_cloud_2D                            = $2D ; unused
con_s_cloud_2E                              = $2E ; игрок в стеночке перехватил штрафной удар
con_s_cloud_2F                              = $2F ; вакашимазу отталкивается от штанги (анимация ног)
con_s_cloud_30                              = $30 ; нарушение
con_s_cloud_31                              = $31 ; игрок добивает отскок от штанги
con_s_cloud_32                              = $32 ; 2 сообщения о рваном мяче
con_s_cloud_33                              = $33 ; вратарь идеально словил/отбил мяч
con_s_cloud_34                              = $34 ; игрок выбил мяч подкатом
con_s_cloud_35                              = $35 ; игрок отбил штрафной удар, но тот серавно полетел в ворота (задета стенка)
con_s_cloud_36                              = $36 ; штрафной удар огибает стеночку
con_s_cloud_37                              = $37 ; соперник прыгает сразу после паса игрока
con_s_cloud_38                              = $38 ; игрок нажал перехват паса, соперник сделал пас по низу
con_s_cloud_39                              = $39 ; ? крит защиты
con_s_cloud_3A                              = $3A ; вратарь делает олвэйс нижний/верхний
con_s_cloud_3B                              = $3B ; первый игрок из списка прыгает для борьбы с нападающим в штрафной
con_s_cloud_3C                              = $3C ; четвертый игрок из списка прыгает для борьбы с нападающим в штрафной
con_s_cloud_3D                              = $3D ; второй/пятый игрок из списка прыгает для борьбы с нападающим в штрафной
con_s_cloud_3E                              = $3E ; третий игрок из списка прыгает для борьбы с нападающим в штрафной
con_s_cloud_3F                              = $3F ; игрок + "действие" (делает подкат)
con_s_cloud_40                              = $40 ; первый игрок из списка бежит для борьбы с нападающим в штрафной
con_s_cloud_41                              = $41 ; игрок делает перехват паса или блок, но игрок обводит, поэтому нападающий просто бежит
con_s_cloud_42                              = $42 ; второй/пятый игрок из списка бежит для борьбы с нападающим в штрафной
con_s_cloud_43                              = $43 ; четвертый игрок из списка бежит для борьбы с нападающим в штрафной
con_s_cloud_44                              = $44 ; третий игрок из списка бежит для борьбы с нападающим в штрафной
con_s_cloud_45                              = $45 ; игрок с трудом обводит
con_s_cloud_46                              = $46 ; игрок легко обводит
con_s_cloud_47                              = $47 ; игрок что-то делает (пасует)        !!! где-то тут неправильно прописаны комменты
con_s_cloud_48                              = $48 ; игрок прыгает в штрафной на мяч, перед тем как что-то сделать
con_s_cloud_49                              = $49 ; игрок что-то делает (делает супер)
con_s_cloud_4A                              = $4A ; цубаса первый раз делает циклон
con_s_cloud_4B                              = $4B ; джедай делает удар (лицо) за японию
con_s_cloud_4C                              = $4C ; игрок бежит в штрафной на мяч, перед тем как что-то сделать
con_s_cloud_4D                              = $4D ; игрок в любой штрафной traps мяч
; con_s_cloud_4E                            = $4E ; unused
con_s_cloud_4F                              = $4F ; мисуги жалуется на сердце (лицо)
con_s_cloud_50                              = $50 ; 
con_s_cloud_51                              = $51 ; нашей команде забили гол
con_s_cloud_52                              = $52 ; сообщение о забитом голе в ворота соперника
con_s_cloud_53                              = $53 ; соперник порвал тебе сетку
con_s_cloud_54                              = $54 ; наш игрок порвал сетку врагу
con_s_cloud_55                              = $55 ; наш игрок порвал сетку врагу японцами и чарли машет флагом
con_s_cloud_56                              = $56 ; ишизаки в процессе блокирования
con_s_cloud_57                              = $57 ; 
con_s_cloud_58                              = $58 ; игрок принимает мяч на грудь или на ногу, также принятие финального паса перепасовки
con_s_cloud_59                              = $59 ; перепасовка
con_s_cloud_5A                              = $5A ; возврат перепасовки напарником
con_s_cloud_5B                              = $5B ; сообщение о том, кто первым пробивает пенальти
con_s_cloud_5C                              = $5C ; вяч вылетел в аут
con_s_cloud_5D                              = $5D ; команде назначается corner kick
con_s_cloud_5E                              = $5E ; команде назначается goal kick
con_s_cloud_5F                              = $5F ; команде назначается throw in (вбрасывание из аута)
con_s_cloud_60                              = $60 ; вратарь выбивает мяч goal kick
con_s_cloud_61                              = $61 ; 
con_s_cloud_62                              = $62 ; игрок вбрасывает мяч из аута
con_s_cloud_63                              = $63 ; игрок бьет с углового
con_s_cloud_64                              = $64 ; игрок пасует из углового
con_s_cloud_65                              = $65 ; сообщение о свободном ударе (freekick)
con_s_cloud_66                              = $66 ; сообщение о нарушении пенальти (penalty kick)
con_s_cloud_67                              = $67 ; сообщение об игроке, пробивающем пенальти с 11м после нарушения
; con_s_cloud_68                            = $68 ; unused
con_s_cloud_69                              = $69 ; сообщение об игроке, пробивающем серию пенальти
con_s_cloud_6A                              = $6A ; 
con_s_cloud_6B                              = $6B ; звук бананового мяча
con_s_cloud_6C                              = $6C ; звук огненного удара
con_s_cloud_6D                              = $6D ; на игрока напали ?? соперников
con_s_cloud_6E                              = $6E ; игрок принял мяч на грудь / мяч потерян после попытки засейвить (когда я это написал?)
con_s_cloud_6F                              = $6F ; кто-то напал на вратаря 1 на 1
con_s_cloud_70                              = $70 ; время вышло
con_s_cloud_71                              = $71 ; сообщение о победе/поражении/ничье
con_s_cloud_72                              = $72 ; игрок делает удар на пенальти с 11м
con_s_cloud_73                              = $73 ; ожидание перед разводкой
con_s_cloud_74                              = $74 ; сообщение при разводке
con_s_cloud_75                              = $75 ; игрок получил мяч во время разводки
con_s_cloud_76                              = $76 ; ? мацуяма приказывает всем
con_s_cloud_77                              = $77 ; 
con_s_cloud_78                              = $78 ; диас выебывается что он гений после гола
con_s_cloud_79                              = $79 ; меон говорит что драйв бесполезен когда ему бьешь
con_s_cloud_7A                              = $7A ; меон злится
con_s_cloud_7B                              = $7B ; цубаса 1й раз злится после отбивания меона
con_s_cloud_7C                              = $7C ; фраза озарения цубасы против меона
con_s_cloud_7D                              = $7D ; фраза озарения цубасы против меона
con_s_cloud_7E                              = $7E ; фраза озарения цубасы против меона
con_s_cloud_7F                              = $7F ; фраза озарения цубасы против меона
con_s_cloud_80                              = $80 ; фраза озарения цубасы против меона
con_s_cloud_81                              = $81 ; фраза озарения цубасы против меона
con_s_cloud_82                              = $82 ; фраза озарения цубасы против меона
con_s_cloud_83                              = $83 ; фраза озарения цубасы против меона
con_s_cloud_84                              = $84 ; фраза озарения цубасы против меона
con_s_cloud_85                              = $85 ; фраза озарения цубасы против меона
con_s_cloud_86                              = $86 ; фраза озарения цубасы против меона
con_s_cloud_87                              = $87 ; фраза озарения цубасы против меона
; con_s_cloud_88                            = $88 ; unused
con_s_cloud_89                              = $89 ; шнайдер злится после гола
con_s_cloud_8A                              = $8A ; озарение франции, фраза 1
con_s_cloud_8B                              = $8B ; озарение франции, фраза 2
con_s_cloud_8C                              = $8C ; озарение франции, фраза 3
con_s_cloud_8D                              = $8D ; озарение франции, фраза 4
con_s_cloud_8E                              = $8E ; у серой забрали мяч/ругательство меона после гола
con_s_cloud_8F                              = $8F ; у пибика забрали мяч (лицо)
con_s_cloud_90                              = $90 ; у пибика забрали мяч (лицо)
con_s_cloud_91                              = $91 ; у кого-то забрали мяч (лицо)
con_s_cloud_92                              = $92 ; у брата забрали мяч (лицо)
con_s_cloud_93                              = $93 ; у кого-то забрали мяч (лицо)
con_s_cloud_94                              = $94 ; у кого-то забрали мяч (лицо)
con_s_cloud_95                              = $95 ; у кого-то забрали мяч (лицо)
con_s_cloud_96                              = $96 ; цубаса злится после отбивания кипером
con_s_cloud_97                              = $97 ; C'mon, "игрок!" (лицо)
con_s_cloud_98                              = $98 ; кто-то на кого-то напал (лицо)
con_s_cloud_99                              = $99 ; кто-то на кого-то напал (лицо)
con_s_cloud_9A                              = $9A ; кто-то на кого-то напал (лицо)
con_s_cloud_9B                              = $9B ; втарарь удивляется что мяч исчез после удара коимбры
con_s_cloud_9C                              = $9C ; комментатор объясняет драйв тигр
con_s_cloud_9D                              = $9D ; хюга в окружении ебашит третьим ударом и злится
con_s_cloud_9E                              = $9E ; джедай выебывается после гола
con_s_cloud_9F                              = $9F ; вакашимазу злится
con_s_cloud_A0                              = $A0 ; морисаки злится
con_s_cloud_A1                              = $A1 ; вакабаши злится
con_s_cloud_A2                              = $A2 ; kurae после подката
con_s_cloud_A3                              = $A3 ; цубаса бьет драйв удар/пибик делает свой удар (лицо)
con_s_cloud_A4                              = $A4 ; цубаса делает 3ю свиту (лицо)
con_s_cloud_A5                              = $A5 ; нитка бьет с земли (лицо)
con_s_cloud_sudden_death_в_пк               = $A6 ; ничья в пенальти (sudden death)
con_s_cloud_A7                              = $A7 ; рожа нападающего, который отвечает защитнику сразу после его нападения
con_s_cloud_A8                              = $A8 ; лови мячи, первая фраза (брат)
con_s_cloud_A9                              = $A9 ; брат делает удар головой, вторая фраза (лицо)
con_s_cloud_AA                              = $AA ; удар мисаки и цубасы (лицо цубасы)
con_s_cloud_AB                              = $AB ; удар мисаки и цубасы (лицо мисаки)
con_s_cloud_AC                              = $AC ; брат1 зовет брата2
con_s_cloud_AD                              = $AD ; брат делает двойной, вторая фраза (лицо)
con_s_cloud_AE                              = $AE ; лови мячи, вторая фраза (джедай)
con_s_cloud_AF                              = $AF ; звук полета драйв удара/лови мячи, четвертая фраза (брат)/цубаса базарит с хюгой
con_s_cloud_B0                              = $B0 ; лови мячи, пятая фраза (джедай)
con_s_cloud_B1                              = $B1 ; серая бьет тихим ударом (лицо)
con_s_cloud_B2                              = $B2 ; хюга делает тигриный удар (лицо)
con_s_cloud_B3                              = $B3 ; хюга делает нео тигриный удар (лицо)
con_s_cloud_B4                              = $B4 ; серая делает свиту (лицо)
con_s_cloud_B5                              = $B5 ; цубаса ударил циклоном, мяч полетел вверх
con_s_cloud_B6                              = $B6 ; цубаса бьет с девяткой (лицо цубасы до удара)
con_s_cloud_B7                              = $B7 ; цубаса бьет с девяткой (лицо хюги до удара)
con_s_cloud_B8                              = $B8 ; цубаса бьет с девяткой (лицо хюги после удара)
con_s_cloud_B9                              = $B9 ; джедай делает удар (лицо) за куними
con_s_cloud_BA                              = $BA ; карлос бьет удар (лицо)
con_s_cloud_BB                              = $BB ; 
con_s_cloud_BC                              = $BC ; 
con_s_cloud_BD                              = $BD ; 
con_s_cloud_BE                              = $BE ; 
con_s_cloud_BF                              = $BF ; 
con_s_cloud_C0                              = $C0 ; 
con_s_cloud_C1                              = $C1 ; 
con_s_cloud_C2                              = $C2 ; цубаса/пибик делает суперпас
con_s_cloud_C3                              = $C3 ; цубаса 2й раз злится после отбивания меона
con_s_cloud_C4                              = $C4 ; хюга злится и делает дриблинг (лицо)
con_s_cloud_C5                              = $C5 ; джедай злится и делает дриблинг (лицо)
con_s_cloud_C6                              = $C6 ; 
con_s_cloud_C7                              = $C7 ; карлос злится и делает дриблинг (лицо)
con_s_cloud_C8                              = $C8 ; дедок злится и делает дриблинг (лицо) 
con_s_cloud_C9                              = $C9 ; комментатор описывает дриблинг дедка
con_s_cloud_CA                              = $CA ; 
con_s_cloud_CB                              = $CB ; 
con_s_cloud_CC                              = $CC ; золотое комбо в исполнении
con_s_cloud_CD                              = $CD ; 
con_s_cloud_CE                              = $CE ; 
con_s_cloud_CF                              = $CF ; 
con_s_cloud_D0                              = $D0 ; савада зовет хюгу
con_s_cloud_D1                              = $D1 ; хюга зовет саваду
con_s_cloud_D2                              = $D2 ; комментатор описывает перепасовку тохо
con_s_cloud_D3                              = $D3 ; брат2 зовет брата1
con_s_cloud_D4                              = $D4 ; наполеон завет пьера
con_s_cloud_D5                              = $D5 ; пьер завет наполеона
con_s_cloud_D6                              = $D6 ; необычная комбинация (перепасовка братьев)
con_s_cloud_D7                              = $D7 ; ишизаки прыгает блоком и базарит, но пока не отбил
con_s_cloud_D8                              = $D8 ; джедай нападает блоком (лицо)
con_s_cloud_D9                              = $D9 ; джедай нападает подкатом (лицо)
con_s_cloud_DA                              = $DA ; пибик нападает подкатом (лицо)
con_s_cloud_DB                              = $DB ; хюга нападает подкатом (лицо)
; con_s_cloud_DC                            = $DC ; unused
con_s_cloud_DD                              = $DD ; вратарь угадывает сторону во время пенальти и отбивает
con_s_cloud_DE                              = $DE ; замах французов для удара
; con_s_cloud_DF                            = $DF ; unused
con_s_cloud_E0                              = $E0 ; звук полета мяча после удара нитки
con_s_cloud_E1                              = $E1 ; звук полета мяча после удара карлоса
con_s_cloud_E2                              = $E2 ; 
con_s_cloud_E3                              = $E3 ; вратарь дал пизды игроку и забрал мяч (без убийства в 0B)
con_s_cloud_E4                              = $E4 ; назначено дополнительное время
con_s_cloud_E5                              = $E5 ; кто-то на кого-то напал (лицо) джито
con_s_cloud_E6                              = $E6 ; тут никого нет (мяч проебан)
con_s_cloud_E7                              = $E7 ; вратарь решил не нападать и готовится к удару
con_s_cloud_E8                              = $E8 ; 
con_s_cloud_E9                              = $E9 ; в воротах нету вратаря
con_s_cloud_EA                              = $EA ; сообщение о наебанном вратаре
con_s_cloud_EB                              = $EB ; супер перепасовка завершилась удачно (игрок принял финальный пас перепасовки спешал перепасовки)
con_s_cloud_EC                              = $EC ; игрок применяет супер подкат
con_s_cloud_ED                              = $ED ; брат полетел после подсадки другого брата
con_s_cloud_EE                              = $EE ; комментатор во время попытки лови мячи
con_s_cloud_EF                              = $EF ; 
; con_s_cloud_F0                            = $F0 ; unused
; con_s_cloud_F1                            = $F1 ; unused
; con_s_cloud_F2                            = $F2 ; unused
; con_s_cloud_F3                            = $F3 ; unused
; con_s_cloud_F4                            = $F4 ; unused
; con_s_cloud_F5                            = $F5 ; unused
; con_s_cloud_F6                            = $F6 ; unused
; con_s_cloud_F7                            = $F7 ; unused
; con_s_cloud_F8                            = $F8 ; unused
; con_s_cloud_F9                            = $F9 ; unused
; con_s_cloud_FA                            = $FA ; unused
; con_s_cloud_FB                            = $FB ; unused
; con_s_cloud_FC                            = $FC ; unused
; con_s_cloud_FD                            = $FD ; unused
; con_s_cloud_FE                            = $FE ; unused
con_s_cloud_FF_skip                         = $FF ; управляющий байт, пропустить вывод облака



; номер анимации сценария 0x028978
con_s_anim_00                               = $00 ; мерцающий экран (белый или красный)
con_s_anim_01                               = $01 ; полет drive shot
con_s_anim_02                               = $02 ; дохлый кипер в воздухе
con_s_anim_03                               = $03 ; кипер моментально ловит мяч и медленно движется
con_s_anim_04                               = $04 ; кипер делает нижний dive
con_s_anim_05                               = $05 ; после касания мяча ногой в воздухе, который летит дальше
con_s_anim_06                               = $06 ; игрок не дотягивается ногой до мяча в воздухе, который пролетает над ним
con_s_anim_07                               = $07 ; игрок не дотягивается ногой до мяча в воздухе, который пролетает под ним
con_s_anim_08                               = $08 ; мяч приклеивается к ноге игрока когда мяч был в полете
con_s_anim_09                               = $09 ; мяч летит и касается ноги игрока
; con_s_anim_0A                             = $0A ; unused, какой-то полет мяча
con_s_anim_0B                               = $0B ; после касания мяча телом в воздухе, который летит дальше
con_s_anim_0C                               = $0C ; игрок не дотягивается телом до мяча в воздухе, который пролетает под ним
con_s_anim_0D                               = $0D ; мяч приклеивается к телу игрока когда мяч был в полете
con_s_anim_0E                               = $0E ; полет drive shot / cyclone
con_s_anim_0F                               = $0F ; полет drive overhead / falcon volley / sano combo / volley / skylab hurricane
con_s_anim_10                               = $10 ; полет drive overhead / cyclone
con_s_anim_11                               = $11 ; полет удара, а также ??? jumping volley / booster shot / mach shot? / fire shot / falcon shot / falcon volley
con_s_anim_12                               = $12 ; полет falcon shot / dynamite header / foward somersault / tiger shot
con_s_anim_13                               = $13 ; дохлый игрок воздухе (большой)
con_s_anim_14                               = $14 ; дохлый игрок воздухе (поменьше)
con_s_anim_15                               = $15 ; игрок приклеивает мяч к ноге после подката
con_s_anim_16                               = $16 ; кипер моментально ловит мяч и быстро движется вниз (предположительно после нижнего dive)
con_s_anim_17                               = $17 ; кипер ловит летящий мяч (предположительно после верхнего dive и пк)
con_s_anim_18                               = $18 ; кипер пытается словить мяч но не дотягивается
con_s_anim_19                               = $19 ; игрок делает пас головой в воздухе
con_s_anim_1A                               = $1A ; полет header / cannon shot / razor shot / tiger shot
con_s_anim_1B                               = $1B ; кипер ловит летящий мяч (обычная ловля)
con_s_anim_1C                               = $1C ; игрок прыгает в воздух (вблизи, быстро)
con_s_anim_1D                               = $1D ; полет rocket header / razor shot / sidewinder shot
con_s_anim_1E                               = $1E ; полет twin shot / skylab twin shot
con_s_anim_1F                               = $1F ; полет twin shot / drive tiger
con_s_anim_20                               = $20 ; игрок прыгает в воздух (вблизи, медленно)
con_s_anim_21                               = $21 ; защитник в воротах отбивает мяч
con_s_anim_22                               = $22 ; защитник в воротах промахивается
con_s_anim_23                               = $23 ; rolling save
con_s_anim_24                               = $24 ; кипер пытается отбить мяч но не дотягивается
con_s_anim_25                               = $25 ; кипер пытается отбить мяч после спешала но не дотягивается
con_s_anim_26                               = $26 ; triangle jump не дотягивается
con_s_anim_27                               = $27 ; кипер легко отбивает мяч ближним кулаком
con_s_anim_28                               = $28 ; полет drive tiger / slider cannon / skylab twin shot
con_s_anim_29                               = $29 ; полет drive tiger
con_s_anim_2A                               = $2A ; кипер легко отбивает мяч дальним кулаком
con_s_anim_2B                               = $2B ; кипер вакашимазу легко отбивает мяч верхним прыжком
con_s_anim_2C                               = $2C ; кипер напаривается кулаком на мяч
con_s_anim_2D                               = $2D ; triangle jump ловит мяч
con_s_anim_2E                               = $2E ; мяч приклеивается к ноге игрока после отбора мяча у другого игрока блоком или перехватом
con_s_anim_2F                               = $2F ; полет drive tiger
con_s_anim_30                               = $30 ; мяч приклеивается к телу игрока при заборе спешал блоком когда мяч был в полете
con_s_anim_31                               = $31 ; игрок не дотягивается телом до мяча в воздухе, который пролетает над ним
con_s_anim_32                               = $32 ; полет eagle shot
con_s_anim_33                               = $33 ; игрок делает нижний clear ногой
con_s_anim_34                               = $34 ; игрок делает верхний clear головой
con_s_anim_35                               = $35 ; игрок делает нижний clear телом
con_s_anim_36                               = $36 ; полет tiger shot / neo-tiger shot
con_s_anim_37                               = $37 ; игрок бежит для перехвата нижнего мяча
con_s_anim_38                               = $38 ; игрок делает нижний clear ногой (почти аналогично 33)
con_s_anim_39                               = $39 ; игрок делает верхний clear головой (почти аналогично 34)
con_s_anim_3A                               = $3A ; clone save
con_s_anim_3B                               = $3B ; удар головой header
con_s_anim_3C                               = $3C ; полет mach shot / slider shot / fire shot / jumping volley / booster shot
con_s_anim_3D                               = $3D ; полет mach shot / cannon shot
con_s_anim_3E                               = $3E ; дохлый игрок воздухе (большой, зеркально 13)
con_s_anim_3F                               = $3F ; дохлый игрок воздухе (поменьше, зеркально 14)
con_s_anim_40                               = $40 ; полет rising dragon kick / sano kombo
con_s_anim_41                               = $41 ; полет banana shot
con_s_anim_42                               = $42 ; отскок от штанги
con_s_anim_43                               = $43 ; попадание в штангу
con_s_anim_44                               = $44 ; мяч в сетке
con_s_anim_45                               = $45 ; мяч рвет сетку
con_s_anim_46                               = $46 ; куски тел портрета сан-паулу после гола
con_s_anim_47                               = $47 ; куски тел портрета нанкацу после гола
con_s_anim_48                               = $48 ; куски тел портрета японии после гола
con_s_anim_49                               = $49 ; игрок прыгает к летящему мячу
con_s_anim_4A                               = $4A ; игрок в стеночке приклеивает к себе мяч
con_s_anim_4B                               = $4B ; полет masao / kazuo с тонкими ногами
con_s_anim_4C                               = $4C ; полет паса
con_s_anim_4D                               = $4D ; вакашимазу отталкивается ногами от штанги
con_s_anim_4E                               = $4E ; рефери поднимает руку и свистит
con_s_anim_4F                               = $4F ; рваный мяч падает на землю
con_s_anim_50                               = $50 ; анимация подката
con_s_anim_51                               = $51 ; полет cyclone
con_s_anim_52                               = $52 ; мяч улетает в сторону после выбивания откуда-то
; con_s_anim_53                             = $53 ; unused, какой-то полет мяча
con_s_anim_54                               = $54 ; полет мяча дальше после задевания стенки (мяч продолжает лететь в ворота)
con_s_anim_55                               = $55 ; полет мяча при огибании стеночки
con_s_anim_56                               = $56 ; полет мяча когда игрок делает пас/удар после нападения на него, и игроки собираются его перехватить
con_s_anim_57                               = $57 ; кипер делает верхний dive
con_s_anim_58                               = $58 ; игрок разгоняется для подката
con_s_anim_59                               = $59 ; кипер не может словить мяч в пк
con_s_anim_5A                               = $5A ; ХЗ игрок бежит
con_s_anim_5B                               = $5B ; игрок медленно бежит (когда он нападает на игрока с мячом)
con_s_anim_5C                               = $5C ; игрок завис вблизи с мячом на земле в режиме выбора действия
con_s_anim_5D                               = $5D ; полет sidewinder shot / double eel
con_s_anim_5E                               = $5E ; полет slider shot
con_s_anim_5F                               = $5F ; полет drive overhead
con_s_anim_60                               = $60 ; dribble
con_s_anim_61                               = $61 ; игрок замахивается для обычного удара / удара с красным экраном
con_s_anim_62                               = $62 ; удар по мячу обычным ударом
con_s_anim_63                               = $63 ; мяч улетает от игрока после удара по нему
con_s_anim_64                               = $64 ; игрок прыгает в воздух (вблизи, средняя скорость)
; con_s_anim_65                             = $65 ; unused, какой-то полет мяча
con_s_anim_66                               = $66 ; игрок делает пас с земли
con_s_anim_67                               = $67 ; полет eagle shot
con_s_anim_68                               = $68 ; игрок подлетает к мячу для замаха volley
con_s_anim_69                               = $69 ; удар по мячу volley
con_s_anim_6A                               = $6A ; игрок уже ударил volley, мяч улетает от него
con_s_anim_6B                               = $6B ; ХЗ игрок бежит / tsubasa бежит к drive tiger / masao kazuo бежит для skylb twin shot
con_s_anim_6C                               = $6C ; игрок принимает ничейный низкий мяч на ногу
con_s_anim_6D                               = $6D ; игрок принимает ничейный высокий мяч на тело
con_s_anim_6E                               = $6E ; игрок делает верхний through
con_s_anim_6F                               = $6F ; игрок делает нижний through
con_s_anim_70                               = $70 ; ХЗ полет мяча
con_s_anim_71                               = $71 ; игрок прыгает в воздух (вблизи, средняя скорость, почти идентично 64)
con_s_anim_72                               = $72 ; какой-то полет мяча
con_s_anim_73                               = $73 ; полет rising dragon kick
con_s_anim_74                               = $74 ; полет foward somersault
con_s_anim_75                               = $75 ; лицо вакабаяши во время крита
con_s_anim_76                               = $76 ; подкат masao / kazuo
con_s_anim_77                               = $77 ; кипер делает пас после ловли мяча
con_s_anim_78                               = $78 ; игрок принимает возвращаемую перепасовку на ногу
con_s_anim_79                               = $79 ; глаза tsubasa в одной точке
con_s_anim_7A                               = $7A ; игрок принимает верхний пас на грудь
con_s_anim_7B                               = $7B ; мяч быстро летит во время перепасовки
con_s_anim_7C                               = $7C ; игрок возвращает перепасовку
con_s_anim_7D                               = $7D ; dark illusion
con_s_anim_7E                               = $7E ; мяч закатывается в аут
con_s_anim_7F                               = $7F ; кипер делает пас во время goal kick
con_s_anim_80                               = $80 ; мяч отскакивает от земли
con_s_anim_81                               = $81 ; игрок выбрасывает мяч руками во время throw in
con_s_anim_82                               = $82 ; игрок бьет крученый удар во время corner kick
con_s_anim_83                               = $83 ; игрок делает пас во время corner kick
con_s_anim_84                               = $84 ; полет shoot финальный
con_s_anim_85                               = $85 ; мяч стоит перед кипером на 11м penalty kick
con_s_anim_86                               = $86 ; в пк кипер прыгает в сторону мяча влево/вправо
con_s_anim_87                               = $87 ; в пк кипер прыгает в сторону, мяч летит совсем в другой угол
con_s_anim_88                               = $88 ; в пк кипер прыгает в сторону, мяч летит прямо
con_s_anim_89                               = $89 ; в пк кипер стоит прямо, мяч после удара летит влево / вправо
con_s_anim_8A                               = $8A ; в пк кипер стоит прямо, мяч после удара летит прямо
con_s_anim_8B                               = $8B ; игрок завис вдалеке с мячом на земле когда на него напали
con_s_anim_8C                               = $8C ; удар по мячу спешалом
con_s_anim_8D                               = $8D ; игрок завис вдалеке с мячом в воздухе на штрафнойц
con_s_anim_8E                               = $8E ; замах drive shot
con_s_anim_8F                               = $8F ; рефери смотрит на часы
con_s_anim_90                               = $90 ; бег игрока с мячом по полю во время передвижения
con_s_anim_face_p_tsubasa_my                = $91 ; p_tsubasa_my
con_s_anim_92                               = $92 ; tsubasa возвращает перепасовку
con_s_anim_face_p_renato_my                 = $93 ; p_renato_my
con_s_anim_face_p_morisaki_my               = $94 ; p_morisaki_my
con_s_anim_95                               = $95 ; misaki возвращает перепасовку
con_s_anim_face_p_misaki_my                 = $96 ; p_misaki_my
con_s_anim_face_p_misaki_japan              = $97 ; p_misaki_japan
con_s_anim_face_p_ishizaki_my               = $98 ; p_ishizaki_my
con_s_anim_face_p_ishizaki_japan            = $99 ; p_ishizaki_japan
con_s_anim_face_p_nitta_my                  = $9A ; p_nitta_my
con_s_anim_face_p_nitta_japan               = $9B ; p_nitta_japan
con_s_anim_face_p_masao_my                  = $9C ; p_masao_my, p_masao_japan, p_kazuo_my, p_kazuo_japan
con_s_anim_9D                               = $9D ; замах slider shot / razor shot
con_s_anim_face_p_hyuga_my                  = $9E ; p_hyuga_my, p_hyuga_japan
con_s_anim_face_p_soda_my                   = $9F ; p_soda_my, p_soda_japan
con_s_anim_face_p_jito_my                   = $A0 ; p_jito_my, p_jito_japan
con_s_anim_face_p_matsuyama_my              = $A1 ; p_matsuyama_my, p_matsuyama_japan
con_s_anim_face_p_sawada_my                 = $A2 ; p_sawada_my
con_s_anim_face_p_misugi_my                 = $A3 ; p_misugi_my, p_misugi_japan
con_s_anim_face_p_wakabayashi_my            = $A4 ; p_wakabayashi_my, p_wakabayashi_hamburger_sv
con_s_anim_A5                               = $A5 ; hyuga возвращает перепасовку
con_s_anim_face_p_wakashimazu_my            = $A6 ; p_wakashimazu_my, p_wakashimazu_toho, p_wakashimazu_japan
con_s_anim_A7                               = $A7 ; sawada / napoleon возвращает перепасовку
con_s_anim_face_p_meon_gremio               = $A8 ; p_meon_gremio
con_s_anim_face_p_carlos_flamengo           = $A9 ; p_carlos_flamengo
con_s_anim_face_p_jito_kunimi               = $AA ; p_jito_kunimi
con_s_anim_face_p_masao_akita               = $AB ; p_masao_akita, p_kazuo_akita
con_s_anim_AC                               = $AC ; игрок прыгает в воздух (вблизи, средняя скорость, чуть правее 64 и 71)
con_s_anim_face_p_soda_tatsunami            = $AD ; p_soda_tatsunami
con_s_anim_face_p_misugi_musashi            = $AE ; p_misugi_musashi
con_s_anim_face_p_matsuyama_furano          = $AF ; p_matsuyama_furano
con_s_anim_face_p_hyuga_toho                = $B0 ; p_hyuga_toho
con_s_anim_face_p_sawada_toho               = $B1 ; p_sawada_toho
con_s_anim_face_p_victorino_uruguay         = $B2 ; p_victorino_uruguay
con_s_anim_face_p_kaltz_hamburger_sv        = $B3 ; p_kaltz_hamburger_sv
con_s_anim_face_p_napoleon_france           = $B4 ; p_napoleon_france
con_s_anim_face_p_pierre_france             = $B5 ; p_pierre_france
con_s_anim_face_p_pascal_argentina          = $B6 ; p_pascal_argentina
con_s_anim_face_p_diaz_argentina            = $B7 ; p_diaz_argentina
con_s_anim_face_p_schneider_west_germany    = $B8 ; p_schneider_west_germany
con_s_anim_face_p_kaltz_west_germany        = $B9 ; p_kaltz_west_germany
con_s_anim_face_p_schester_west_germany     = $BA ; p_schester_west_germany
con_s_anim_face_p_carlos_brazil             = $BB ; p_carlos_brazil
con_s_anim_face_p_coimbra_brazil            = $BC ; p_coimbra_brazil
con_s_anim_BD                               = $BD ; лицо ishizaki face block 
con_s_anim_BE                               = $BE ; diaz возвращает перепасовку
con_s_anim_BF                               = $BF ; overhead
con_s_anim_C0                               = $C0 ; masao kazuo стоят один на другом
con_s_anim_C1                               = $C1 ; полет masao / kazuo с тонкими ногами (аналогично 4B)
con_s_anim_C2                               = $C2 ; masao kazuo стоят на jito
con_s_anim_C3                               = $C3 ; masao kazuo летят вдвоем
con_s_anim_C4                               = $C4 ; замах jumping volley
con_s_anim_C5                               = $C5 ; мяч улетает от игрока после jumping volley / booster shot
con_s_anim_C6                               = $C6 ; tsubasa подкидывает грудью мяч перед cyclone
con_s_anim_C7                               = $C7 ; замах cyclone
con_s_anim_C8                               = $C8 ; замах booster shot toninho
con_s_anim_C9                               = $C9 ; замах rising dragon kick
con_s_anim_CA                               = $CA ; замах rocket header
con_s_anim_CB                               = $CB ; li brothers стоят перед rising dragon kick
con_s_anim_CC                               = $CC ; diaz перед foward somersault
con_s_anim_CD                               = $CD ; foward somersault
con_s_anim_CE                               = $CE ; замах razor pass / pazor shot / razor tackle (палка пибика)
con_s_anim_CF                               = $CF ; ishizaki летит перед face block
con_s_anim_D0                               = $D0 ; forcible dribble
con_s_anim_D1                               = $D1 ; high speed dribble / vanishing feint / hedgehog dribble
con_s_anim_D2                               = $D2 ; high speed dribble / vanishing feint / hedgehog dribble
con_s_anim_D3                               = $D3 ; meon не может отбить drove overhead
con_s_anim_D4                               = $D4 ; лицо pierre перед slider cannon (озарение)
con_s_anim_D5                               = $D5 ; лицо napoleon перед slider cannon (озарение)
con_s_anim_D6                               = $D6 ; golden twin shot
con_s_anim_D7                               = $D7 ; drive tiger twin shot
con_s_anim_D8                               = $D8 ; skylab twin shot
con_s_anim_D9                               = $D9 ; korea twin shot
con_s_anim_DA                               = $DA ; кипер ждет в воротах вместо dive
con_s_anim_DB                               = $DB ; замах slider cannon
con_s_anim_DC                               = $DC ; после удара twin shot
con_s_anim_DD                               = $DD ; clone dribble
con_s_anim_DE                               = $DE ; глаза tsubasa в медленном движении
con_s_anim_DF                               = $DF ; pascal возвращает перепасовку
con_s_anim_E0                               = $E0 ; tsubasa стоит спиной
con_s_anim_E1                               = $E1 ; masao kazuo зеленые один на другом
con_s_anim_E2                               = $E2 ; heel lift
con_s_anim_E3                               = $E3 ; ? бег игрока перед power block
con_s_anim_E4                               = $E4 ; heel lift мяч приземляется к tsubasa
con_s_anim_E5                               = $E5 ; мяч подлетает вверх перед ударом по нему cyclone
con_s_anim_E6                               = $E6 ; игрок принимает нижний пас на ногу (почти идентично 78)
con_s_anim_E7                               = $E7 ; hyuga бежит к drive tiger
con_s_anim_E8                               = $E8 ; sano бьет головой в sano combo
con_s_anim_E9                               = $E9 ; удар booster shot toninho
con_s_anim_EA                               = $EA ; jito готовится делать skylab twin shot
con_s_anim_EB                               = $EB ; pierre прыгает для slider cannon
con_s_anim_EC                               = $EC ; napoleon прыгает для slider cannon
con_s_anim_ED                               = $ED ; tsubasa прыгает для drive overhead
con_s_anim_EE                               = $EE ; pierre возвращает перепасовку
con_s_anim_EF                               = $EF ; masao kazuo возвращает перепасовку
; con_s_anim_F0                             = $F0 ; unused
; con_s_anim_F1                             = $F1 ; unused
; con_s_anim_F2                             = $F2 ; unused
; con_s_anim_F3                             = $F3 ; unused
; con_s_anim_F4                             = $F4 ; unused
; con_s_anim_F5                             = $F5 ; unused
; con_s_anim_F6                             = $F6 ; unused
; con_s_anim_F7                             = $F7 ; unused
; con_s_anim_F8                             = $F8 ; unused
; con_s_anim_F9                             = $F9 ; unused
; con_s_anim_FA                             = $FA ; unused
; con_s_anim_FB                             = $FB ; unused
; con_s_anim_FC                             = $FC ; unused
con_s_anim_FD_attacker                      = $FD ; управляющий байт, выбрать рожу нападающего по таблице
con_s_anim_FE_defender                      = $FE ; управляющий байт, выбрать рожу защитника по таблице
con_s_anim_FF_skip                          = $FF ; управляющий байт, пропустить вывод анимации



; ram_звук                                  = $0700
con_музыка_выключить_все                    = $01 ; 
con_музыка_добавочное_время                 = $32 ; 



; con_plr_id
; _my = игрок нашей команды, который также может быть нашим японцем
; _japan = японцы-соперники
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



; для 0x0380A3
; нужны комменты в 0x030CE0
con_skill_stamina                           = $00 ; 
con_skill_prl___shoot                       = $01 ; 
con_skill_prl___pass                        = $02 ; 
con_skill_prl_dribble                       = $03 ; 
con_skill_prl_block                         = $04 ; 
con_skill_prl_tackle                        = $05 ; 
con_skill_06                                = $06 ; con_def_passcut_1
con_skill_prl_shoot_low                     = $07 ; 
con_skill_plr_pass_low                      = $08 ; 
con_skill_prl_trap_low                      = $09 ; 
con_skill_prl_through_low                   = $0A ; 
con_skill_0B                                = $0B ; con_atk_clearing
con_skill_prl_clearance_low                 = $0C ; 
con_skill_prl_interfere_low                 = $0D ; 
con_skill_0E                                = $0E ; con_def_passcut_2
con_skill_prl_shoot_high                    = $0F ; 
con_skill_10                                = $10 ; 
con_skill_prl_trap_high                     = $11 ; 
con_skill_prl_through_high                  = $12 ; 
con_skill_13                                = $13 ; 
con_skill_prl_clearance_high                = $14 ; 
con_skill_prl_interfere_high                = $15 ; 
con_skill_16                                = $16 ; 
; con_skill_17                              = $17 ; возможно используется в 0x030CE0
con_skill_gk_pass                           = $18 ; 
con_skill_gk_catch                          = $19 ; 
con_skill_gk_punch                          = $1A ; 
con_skill_gk_stop_shot                      = $1B ; возможно shot и dribble надо поменять местами
con_skill_gk_stop_dribble                   = $1C ; возможно shot и dribble надо поменять местами
con_skill_gk_dive_low                       = $1D ; 
con_skill_gk_dive_high                      = $1E ; 
con_skill_1F                                = $1F ; 
con_skill_20                                = $20 ; 
con_skill_21                                = $21 ; 
con_skill_22                                = $22 ; 
con_skill_23                                = $23 ; 
con_skill_24                                = $24 ; 
con_skill_25                                = $25 ; 
con_skill_26                                = $26 ; 



; для 0x03CEA6 подпрограммы в банке 1C
con_bsw_1C_00                               = $00 ; 
con_bsw_1C_01                               = $01 ; 
con_bsw_1C_02                               = $02 ; 
con_bsw_1C_03                               = $03 ; 
con_bsw_1C_04                               = $04 ; 
con_bsw_1C_05                               = $05 ; 
con_bsw_1C_рандом_стороны_кипера_в_пк       = $06 ; 
con_bsw_1C_07                               = $07 ; 



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
    ; 0A = skylab twin shot
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
; 06 = wait (для полевых)








