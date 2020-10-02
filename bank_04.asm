.segment "BANK_04"
.include "copy_bank_ram.inc"
; пустой банк, раньше тут были катсцены 00-0F


.export tbl_0x40004_вид_меню
tbl_0x40004_вид_меню:
- D - - - 0x0333DF 22:B3CF: 53 B4     .word off_B453_00_period_number_and_time          ; номер тайма и время
- D - - - 0x0333E1 22:B3D1: 64 B4     .word off_B464_01_team_names_and_score            ; сокращения команд и счет
- D - - - 0x0333E3 22:B3D3: 7D B4     .word off_B47D_02_окно_действия_игрока_с_мячом
- D - - - 0x0333E5 22:B3D5: 8A B4     .word off_B48A_03_player_dribble_pass_shoot
- D - - - 0x0333E7 22:B3D7: A7 B4     .word off_B4A7_04_player_trap_pass_shot
- D - - - 0x0333E9 22:B3D9: C4 B4     .word off_B4C4_05_player_trap_pass_clear
- D - - - 0x0333EB 22:B3DB: E1 B4     .word off_B4E1_06_gk_punch_catch
- D - - - 0x0333ED 22:B3DD: FA B4     .word off_B4FA_07
- D - - - 0x0333EF 22:B3DF: 07 B5     .word off_B507_08_кипер_counter_drib_shot
- D - - - 0x0333F1 22:B3E1: 28 B5     .word off_B528_09_две_опции_действия
- D - - - 0x0333F3 22:B3E3: 39 B5     .word off_B539_0A_три_опции_действия
- D - - - 0x0333F5 22:B3E5: 4E B5     .word off_B54E_0B_четыре_опции_действия
- D - - - 0x0333F7 22:B3E7: 67 B5     .word off_B567_0C_две_опции_нападения
- D - - - 0x0333F9 22:B3E9: 78 B5     .word off_B578_0D_кипер_jump
- - - - - 0x0333FB 22:B3EB: 8D B5     .word off_B58D_0E_0F_pass      ; unused
- D - - - 0x0333FD 22:B3ED: 8D B5     .word off_B58D_0E_0F_pass
- D - - - 0x0333FF 22:B3EF: A2 B5     .word off_B5A2_10_1_2_pass
- D - - - 0x033401 22:B3F1: B7 B5     .word off_B5B7_11_no_one_is_near_for_1_2_pass     ; не с кем перепасоваться, напарники далеко
- D - - - 0x033403 22:B3F3: C8 B5     .word off_B5C8_12_1_player_action
- D - - - 0x033405 22:B3F5: D9 B5     .word off_B5D9_13_2_players_action        ; действие нескольких игроков при нападении на соперника
- D - - - 0x033407 22:B3F7: EE B5     .word off_B5EE_14_3_players_action
- D - - - 0x033409 22:B3F9: 07 B6     .word off_B607_15_4_players_action
- D - - - 0x03340B 22:B3FB: 24 B6     .word off_B624_16_player_tackle_block_cut
- D - - - 0x03340D 22:B3FD: 41 B6     .word off_B641_17_player_compete_cut
- D - - - 0x03340F 22:B3FF: 5A B6     .word off_B65A_18_player_clear_cut
- D - - - 0x033411 22:B401: 73 B6     .word off_B673_19_show_2_teammates        ; показать напарников при перемещении курсора паса
- - - - - 0x033413 22:B403: 88 B6     .word off_B688_1A_show_3_teammates
- D - - - 0x033415 22:B405: A1 B6     .word off_B6A1_1B_show_4_teammates
- D - - - 0x033417 22:B407: BE B6     .word off_B6BE_1C_clear_reciever_stats_window         ; очистить окно статов принимаюшего
- D - - - 0x033419 22:B409: C7 B6     .word off_B6C7_1D_reciever_dribble_pass_shoot         ; отобразить статы принимающего
- - - - - 0x03341B 22:B40B: E4 B6     .word off_B6E4_1E_opponent_trap_clear_pass
- - - - - 0x03341D 22:B40D: 01 B7     .word off_B701_1F_opponent_trap_shot_pass
- D - - - 0x03341F 22:B40F: 1E B7     .word off_B71E_20_show_1_opponent         ; показать соперников при перемещении курсора паса
- D - - - 0x033421 22:B411: 2F B7     .word off_B72F_21_show_2_opponents
- - - - - 0x033423 22:B413: 44 B7     .word off_B744_22_show_3_opponents
- - - - - 0x033425 22:B415: 5D B7     .word off_B75D_23_show_4_opponents
- D - - - 0x033427 22:B417: 7A B7     .word off_B77A_24_select_1_of_2_teammates_for_pass        ; выбрать одного из напарников для паса
- - - - - 0x033429 22:B419: 8F B7     .word off_B78F_25_select_1_of_3_teammates_for_pass
- - - - - 0x03342B 22:B41B: A8 B7     .word off_B7A8_26_select_1_of_4_teammates_for_pass
- D - - - 0x03342D 22:B41D: C5 B7     .word off_B7C5_27_кто_бьет_штрафной
- D - - - 0x03342F 22:B41F: FE B7     .word off_B7FE_28_переместить_игроков
- D - - - 0x033431 22:B421: 13 B8     .word off_B813_29_продолжить_перемещение_игроков
- D - - - 0x033433 22:B423: 28 B8     .word off_B828_2A_штрафной_влево_вправо
- D - - - 0x033435 22:B425: 3D B8     .word off_B83D_2B_стенка_влево_вправо
- D - - - 0x033437 22:B427: 52 B8     .word off_B852_2C_пенальти_куда_ударить
- D - - - 0x033439 22:B429: 5F B8     .word off_B85F_2D_пенальти_куда_прыгнуть
- D - - - 0x03343B 22:B42B: 6C B8     .word off_B86C_2E_кто_подает_угловой
- D - - - 0x03343D 22:B42D: A5 B8     .word off_B8A5_2F_кто_бьет_нарушение
- D - - - 0x03343F 22:B42F: DE B8     .word off_B8DE_30_отображение_имени_и_энергии_слева_верху
- D - - - 0x033441 22:B431: EF B8     .word off_B8EF_31_номер_имя_управляемого_игрока
- D - - - 0x033443 22:B433: 00 B9     .word off_B900_32_имя_соперника
- D - - - 0x033445 22:B435: 0D B9     .word off_B90D_33_продолжить_меню_команды
- D - - - 0x033447 22:B437: 22 B9     .word off_B922_34_меню_команды_миникарта
- D - - - 0x033449 22:B439: 3F B9     .word off_B93F_35_formation
- D - - - 0x03344B 22:B43B: 5C B9     .word off_B95C_36_defense
- D - - - 0x03344D 22:B43D: 75 B9     .word off_B975_37_swap
- - - - - 0x03344F 22:B43F: 8A B9     .word off_B98A_38_no_subs_left
- D - - - 0x033451 22:B441: 9B B9     .word off_B99B_39_swap_main_players
- D - - - 0x033453 22:B443: F8 B9     .word off_B9F8_3A_swap_sub_players
- D - - - 0x033455 22:B445: 39 BA     .word off_BA39_3B_кого_отправить_на_скамейку
- D - - - 0x033457 22:B447: A2 BA     .word off_BAA2_3C_энергия_основного_состава
- - - - - 0x033459 22:B449: 03 BB     .word off_BB03_3D_энергия_запасного_состава
- D - - - 0x03345B 22:B44B: 5C BB     .word off_BB5C_3E_кто_бьет_пенальти
- D - - - 0x03345D 22:B44D: 69 BB     .word off_BB69_3F_выбор_игроков_на_пенальти
- D - - - 0x03345F 22:B44F: 9E BB     .word off_BB9E_40_выбранные_игроки_на_пенальти
- D - - - 0x033461 22:B451: BF BB     .word off_BBBF_41_пенальти_после_матча



con_plr_name_pos                        = $E0           ; позиция и имя игрока
con_stats_attack                        = $E1           ; статы нападающего при владении мячом у тебя + числовая величина параметра
    con_stamina_atk                         = $00
    con_shoot_atk                           = $01
    con_pass_atk                            = $02
    con_dribble_atk                         = $03
    con_air_shot                            = $07           ; удар в воздухе (volley, header)
    con_08                                  = $08
    con_trap_atk                            = $09
    con_clear_atk                           = $0B
con_teammate_name                           = $E2
con_stats_reciever                      = $E3
    con_stamina_rec                         = $00
    con_shoot_rec                           = $01
    con_pass_rec                            = $02
    con_dribble_rec                         = $03
    con_trap_rec                            = $09           ; unused
    con_clear_rec                           = $0B           ; unused
con_E4                                  = $E4           ; + 00-03 ???
con_defender_name_action                = $E5           ; + номер 00-03
con_E6                                  = $E6           ; + 00 (???) или 01 (???)
con_defender_name_stats                 = $E7
con_stats_defense                       = $E8           ; статы защитника при владении мячом у компьютера + числовая величина параметра
    con_stamina_def                         = $00
    con_01                                  = $01
    con_02                                  = $02
    con_03                                  = $03
    con_block                               = $04
    con_tackle                              = $05
    con_passcut                             = $06
con_pass_reciever_name_temmate          = $E9           ; + номер 00-04, имя принимающего пас напарника (для списка из нескольких игроков)
con_pass_reciever_name_opponent         = $EA           ; + номер 00-04, имя принимающего пас соперника (для списка из нескольких игроков)
con_gk_name                             = $EB
con_stats_gk                            = $EC
    con_stamina_gk                         = $00
    con_catch                              = $19
    con_punch                              = $1A
    con_1B_gk                              = $1B
    con_1C_gk                              = $1C
con_team_name                           = $ED           ; + 00 (имя команды слева) или 01 (имя команды справа)
con_score                               = $EE           ; + 00 (счет команды слева) или 01 (счет команды справа)
con_period_number                       = $EF           ; номер тайма, овертайма, пк
con_time                                = $F0           ; время тайма
con_name                       = $F1           ; 00-0A основные, 16-1F запасные
con_control_plr_name                    = $F2           ; имя управляемого игрока
con_plr_with_ball_name                  = $F4           ; имя игрока с мячом
con_plr_stamina                    = $F5           ; 00-0A основные, 16-1F запасные
con_F6                                  = $F6
con_control_plr_number                  = $F7           ; номер игрока с мячом
con_закончить                           = $FC



off_B453_00_period_number_and_time:
; адрес ppu
    .word $2220
; X * Y зачищаемой области (вне этой области текст не запишется)
; size of cleared space
    ; beyond this area nothing will be drawn later
    ; it's like allotting a fixed area for a window
    .byte $07
    .byte $04
; смещение окна X, Y        (window offset)
    ; окно по X должно быть минимум на 01 меньше очистки чтобы увидеть нижнюю границу
    ; а также X предположительно не может быть < 03
    .byte $00
    .byte $01
; размер окна X, Y          (window size)
    .byte $07
    .byte $03
; количество поинтеров      (number of following pointers)
    .byte $02
; смещение текста Y, X + поинтеры на текст      (text offset + pointers)
    .byte $01
    .byte $01
    .word @номер_тайма
    .byte $03
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
    .byte $07
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






off_B47D_02_окно_действия_игрока_с_мячом:
    .word $2247
; X * Y зачищаемой области
    .byte $0A
    .byte $07
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0A
    .byte $04
; количество поинтеров
    .byte $01
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt

@txt:
    .text "Action"
    .byte con_закончить






off_B48A_03_player_dribble_pass_shoot:
    .word $2231
; X * Y зачищаемой области
    .byte $0F
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $0F
    .byte $09
; количество текста
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word off_BC21_позиция_и_имя_игрока
    .byte $03
    .byte $01
    .word off_BC23_stamina_attack_и_количество
    .byte $05
    .byte $01
    .word @дриблинг
    .byte $07
    .byte $01
    .word @пас
    .byte $09
    .byte $01
    .word @удар

@дриблинг:
    .text "Dribble     "
    .byte con_stats_attack, con_dribble_atk
    .byte con_закончить

@пас:
    .text "Pass        "
    .byte con_stats_attack, con_pass_atk
    .byte con_закончить

@удар:
    .text "Shoot       "
    .byte con_stats_attack, con_shoot_atk
    .byte con_закончить






off_B4A7_04_player_trap_pass_shot:
; не зависит от низкого и высокого мяча, видимо статы вычисляются отдельно
    .word $2231
; X * Y зачищаемой области
    .byte $0F
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $0F
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word off_BC21_позиция_и_имя_игрока
    .byte $03
    .byte $01
    .word off_BC23_stamina_attack_и_количество
    .byte $05
    .byte $01
    .word off_BC4F_trap_и_величина
    .byte $07
    .byte $01
    .word off_BC5A_pass_и_величина
    .byte $09
    .byte $01
    .word off_BC65_air_shot_и_величина






off_B4C4_05_player_trap_pass_clear:
    .word $2231
; X * Y зачищаемой области
    .byte $0F
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $0F
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word off_BC21_позиция_и_имя_игрока
    .byte $03
    .byte $01
    .word off_BC23_stamina_attack_и_количество
    .byte $05
    .byte $01
    .word off_BC4F_trap_и_величина
    .byte $07
    .byte $01
    .word off_BC5A_pass_и_величина
    .byte $09
    .byte $01
    .word off_BC70_clear_и_величина






off_B4E1_06_gk_punch_catch:
    .word $2231
; X * Y зачищаемой области
    .byte $0F
    .byte $08
; смещение окна X, Y
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $0F
    .byte $07
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word off_BD53_имя_и_позиция_кипера
    .byte $03
    .byte $01
    .word off_BD55_энергия_кипера
    .byte $05
    .byte $01
    .word off_BD60_punch
    .byte $07
    .byte $01
    .word off_BD6B_catch






off_B4FA_07:
- D - I - 0x03350A 22:B4FA: 4A 22     .word $224A

- D - I - 0x03350C 22:B4FC: 08        .byte $08
- D - I - 0x03350D 22:B4FD: 06        .byte $06

- D - I - 0x03350E 22:B4FE: 00        .byte $00
- D - I - 0x03350F 22:B4FF: 00        .byte $00

- D - I - 0x033510 22:B500: 08        .byte $08
- D - I - 0x033511 22:B501: 06        .byte $06

- D - I - 0x033512 22:B502: 01        .byte $01

- D - I - 0x033513 22:B503: 02        .byte $02
- D - I - 0x033514 22:B504: 01        .byte $01
- D - I - 0x033515 22:B505: E6 BB     .word @txt

@txt:
    .text "Action"
    .byte con_закончить






off_B507_08_кипер_counter_drib_shot:
- D - I - 0x033517 22:B507: 32 22     .word $2232

- D - I - 0x033519 22:B509: 0C        .byte $0C
- D - I - 0x03351A 22:B50A: 0A        .byte $0A

- D - I - 0x03351B 22:B50B: 00        .byte $00
- D - I - 0x03351C 22:B50C: 01        .byte $01

- D - I - 0x03351D 22:B50D: 0C        .byte $0C
- D - I - 0x03351E 22:B50E: 09        .byte $09

- D - I - 0x03351F 22:B50F: 06        .byte $06

- D - I - 0x033520 22:B510: 01        .byte $01
- D - I - 0x033521 22:B511: 02        .byte $02
- D - I - 0x033522 22:B512: 53 BD     .word off_BD53_имя_и_позиция_кипера
- D - I - 0x033524 22:B514: 03        .byte $03
- D - I - 0x033525 22:B515: 01        .byte $01
- D - I - 0x033526 22:B516: 55 BD     .word off_BD55_энергия_кипера
- D - I - 0x033528 22:B518: 05        .byte $05
- D - I - 0x033529 22:B519: 01        .byte $01
- D - I - 0x03352A 22:B51A: 81 BD     .word off_BD81
- D - I - 0x03352C 22:B51C: 06        .byte $06
- D - I - 0x03352D 22:B51D: 01        .byte $01
- D - I - 0x03352E 22:B51E: 97 BD     .word off_BD97
- D - I - 0x033530 22:B520: 08        .byte $08
- D - I - 0x033531 22:B521: 01        .byte $01
- D - I - 0x033532 22:B522: 8C BD     .word off_BD8C
- D - I - 0x033534 22:B524: 09        .byte $09
- D - I - 0x033535 22:B525: 01        .byte $01
- D - I - 0x033536 22:B526: 97 BD     .word off_BD97






off_B528_09_две_опции_действия:
- D - I - 0x033538 22:B528: 48 22     .word $2248

- D - I - 0x03353A 22:B52A: 0F        .byte $0F
- D - I - 0x03353B 22:B52B: 05        .byte $05

- D - I - 0x03353C 22:B52C: 00        .byte $00
- D - I - 0x03353D 22:B52D: 00        .byte $00

- D - I - 0x03353E 22:B52E: 0F        .byte $0F
- D - I - 0x03353F 22:B52F: 05        .byte $05

- D - I - 0x033540 22:B530: 02        .byte $02

- D - I - 0x033541 22:B531: 02        .byte $02
- D - I - 0x033542 22:B532: 02        .byte $02
- D - I - 0x033543 22:B533: 7C BC     .word off_BC7C
- D - I - 0x033545 22:B535: 04        .byte $04
- D - I - 0x033546 22:B536: 02        .byte $02
- D - I - 0x033547 22:B537: 7F BC     .word off_BC7F






off_B539_0A_три_опции_действия:
- D - I - 0x033549 22:B539: 48 22     .word $2248

- D - I - 0x03354B 22:B53B: 0F        .byte $0F
- D - I - 0x03354C 22:B53C: 07        .byte $07

- D - I - 0x03354D 22:B53D: 00        .byte $00
- D - I - 0x03354E 22:B53E: 00        .byte $00

- D - I - 0x03354F 22:B53F: 0F        .byte $0F
- D - I - 0x033550 22:B540: 07        .byte $07

- D - I - 0x033551 22:B541: 03        .byte $03

- D - I - 0x033552 22:B542: 02        .byte $02
- D - I - 0x033553 22:B543: 02        .byte $02
- D - I - 0x033554 22:B544: 7C BC     .word off_BC7C
- D - I - 0x033556 22:B546: 04        .byte $04
- D - I - 0x033557 22:B547: 02        .byte $02
- D - I - 0x033558 22:B548: 7F BC     .word off_BC7F
- D - I - 0x03355A 22:B54A: 06        .byte $06
- D - I - 0x03355B 22:B54B: 02        .byte $02
- D - I - 0x03355C 22:B54C: 82 BC     .word off_BC82






off_B54E_0B_четыре_опции_действия:
- D - I - 0x03355E 22:B54E: 48 22     .word $2248

- D - I - 0x033560 22:B550: 0F        .byte $0F
- D - I - 0x033561 22:B551: 09        .byte $09

- D - I - 0x033562 22:B552: 00        .byte $00
- D - I - 0x033563 22:B553: 00        .byte $00

- D - I - 0x033564 22:B554: 0F        .byte $0F
- D - I - 0x033565 22:B555: 09        .byte $09

- D - I - 0x033566 22:B556: 04        .byte $04

- D - I - 0x033567 22:B557: 02        .byte $02
- D - I - 0x033568 22:B558: 02        .byte $02
- D - I - 0x033569 22:B559: 7C BC     .word off_BC7C
- D - I - 0x03356B 22:B55B: 04        .byte $04
- D - I - 0x03356C 22:B55C: 02        .byte $02
- D - I - 0x03356D 22:B55D: 7F BC     .word off_BC7F
- D - I - 0x03356F 22:B55F: 06        .byte $06
- D - I - 0x033570 22:B560: 02        .byte $02
- D - I - 0x033571 22:B561: 82 BC     .word off_BC82
- D - I - 0x033573 22:B563: 08        .byte $08
- D - I - 0x033574 22:B564: 02        .byte $02
- D - I - 0x033575 22:B565: 85 BC     .word off_BC85






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






off_B578_0D_кипер_jump:
- D - I - 0x033588 22:B578: 34 22     .word $2234

- D - I - 0x03358A 22:B57A: 0C        .byte $0C
- D - I - 0x03358B 22:B57B: 0A        .byte $0A

- D - I - 0x03358C 22:B57C: 00        .byte $00
- D - I - 0x03358D 22:B57D: 01        .byte $01

- D - I - 0x03358E 22:B57E: 0C        .byte $0C
- D - I - 0x03358F 22:B57F: 05        .byte $05

- D - I - 0x033590 22:B580: 03        .byte $03

- D - I - 0x033591 22:B581: 01        .byte $01
- D - I - 0x033592 22:B582: 02        .byte $02
- D - I - 0x033593 22:B583: 53 BD     .word off_BD53_имя_и_позиция_кипера
- D - I - 0x033595 22:B585: 03        .byte $03
- D - I - 0x033596 22:B586: 01        .byte $01
- D - I - 0x033597 22:B587: 55 BD     .word off_BD55_энергия_кипера
- D - I - 0x033599 22:B589: 05        .byte $05
- D - I - 0x03359A 22:B58A: 01        .byte $01
- D - I - 0x03359B 22:B58B: 76 BD     .word off_BD76






off_B58D_0E_0F_pass:
    .word $2227
; X * Y зачищаемой области
    .byte $19
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $0B
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word @txt_1
    .byte $03
    .byte $01
    .word @txt_2
    .byte $05
    .byte $01
    .word @txt_3

@txt_1:
    .text "Where?"
    .byte con_закончить

@txt_2:
    .text "Use D-Pad"
    .byte con_закончить

@txt_3:
    .text "A selects"
    .byte con_закончить






off_B5A2_10_1_2_pass:
- D - I - 0x0335B2 22:B5A2: 28 22     .word $2228

- D - I - 0x0335B4 22:B5A4: 0A        .byte $0A
- D - I - 0x0335B5 22:B5A5: 06        .byte $06

- D - I - 0x0335B6 22:B5A6: 00        .byte $00
- D - I - 0x0335B7 22:B5A7: 01        .byte $01

- D - I - 0x0335B8 22:B5A8: 0A        .byte $0A
- D - I - 0x0335B9 22:B5A9: 05        .byte $05

- D - I - 0x0335BA 22:B5AA: 03        .byte $03

- D - I - 0x0335BB 22:B5AB: 01        .byte $01
- D - I - 0x0335BC 22:B5AC: 01        .byte $01
- D - I - 0x0335BD 22:B5AD: 02 BC     .word off_BC02_txt_перепасовка
- D - I - 0x0335BF 22:B5AF: 03        .byte $03
- D - I - 0x0335C0 22:B5B0: 01        .byte $01
- D - I - 0x0335C1 22:B5B1: F4 BB     .word @txt_2
- D - I - 0x0335C3 22:B5B3: 05        .byte $05
- D - I - 0x0335C4 22:B5B4: 01        .byte $01
- D - I - 0x0335C5 22:B5B5: 0B BC     .word off_BC0B_txt_с_кем

@txt_2:
    .text "Use D-Pad"
    .byte con_закончить






off_B5B7_11_no_one_is_near_for_1_2_pass:
    .word $2247
    
    .byte $09
    .byte $07
    
    .byte $00
    .byte $00
    
    .byte $09
    .byte $07
    
    .byte $03
    
    .byte $02
    .byte $01
    .word @no
    .byte $04
    .byte $01
    .word @players
    .byte $06
    .byte $01
    .word @nearby

@no:
    .text "No"
    .byte con_закончить
    
@players:
    .text "players"
    .byte con_закончить
    
@nearby:
    .text "nearby!"
    .byte con_закончить






off_B5C8_12_1_player_action:
- D - I - 0x0335D8 22:B5C8: 28 22     .word $2228

- D - I - 0x0335DA 22:B5CA: 0C        .byte $0C
- D - I - 0x0335DB 22:B5CB: 04        .byte $04

- D - I - 0x0335DC 22:B5CC: 00        .byte $00
- D - I - 0x0335DD 22:B5CD: 01        .byte $01

- D - I - 0x0335DE 22:B5CE: 0C        .byte $0C
- D - I - 0x0335DF 22:B5CF: 03        .byte $03

- D - I - 0x0335E0 22:B5D0: 02        .byte $02

- D - I - 0x0335E1 22:B5D1: 01        .byte $01
- D - I - 0x0335E2 22:B5D2: 03        .byte $03
- D - I - 0x0335E3 22:B5D3: E6 BB     .word @txt
- D - I - 0x0335E5 22:B5D5: 03        .byte $03
- D - I - 0x0335E6 22:B5D6: 01        .byte $01
- D - I - 0x0335E7 22:B5D7: 88 BC     .word off_BC88_defender_1

@txt:
    .text "Action"
    .byte con_закончить






off_B5D9_13_2_players_action:
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $06
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $06
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word @txt
    .byte $01
    .byte $01
    .word off_BC88_defender_1
    .byte $03
    .byte $01
    .word off_BC8B_defender_2

@txt:
    .text "Action"
    .byte con_закончить






off_B5EE_14_3_players_action:
- D - I - 0x0335FE 22:B5EE: 28 22     .word $2228

- D - I - 0x033600 22:B5F0: 0C        .byte $0C
- D - I - 0x033601 22:B5F1: 08        .byte $08

- D - I - 0x033602 22:B5F2: 00        .byte $00
- D - I - 0x033603 22:B5F3: 01        .byte $01

- D - I - 0x033604 22:B5F4: 0C        .byte $0C
- D - I - 0x033605 22:B5F5: 07        .byte $07

- D - I - 0x033606 22:B5F6: 04        .byte $04

- D - I - 0x033607 22:B5F7: 01        .byte $01
- D - I - 0x033608 22:B5F8: 03        .byte $03
- D - I - 0x033609 22:B5F9: E6 BB     .word @txt
- D - I - 0x03360B 22:B5FB: 03        .byte $03
- D - I - 0x03360C 22:B5FC: 01        .byte $01
- D - I - 0x03360D 22:B5FD: 88 BC     .word off_BC88_defender_1
- D - I - 0x03360F 22:B5FF: 05        .byte $05
- D - I - 0x033610 22:B600: 01        .byte $01
- D - I - 0x033611 22:B601: 8B BC     .word off_BC8B_defender_2
- D - I - 0x033613 22:B603: 07        .byte $07
- D - I - 0x033614 22:B604: 01        .byte $01
- D - I - 0x033615 22:B605: 8E BC     .word off_BC8E_defender_3

@txt:
    .text "Action"
    .byte con_закончить






off_B607_15_4_players_action:
- D - I - 0x033617 22:B607: 28 22     .word $2228

- D - I - 0x033619 22:B609: 0C        .byte $0C
- D - I - 0x03361A 22:B60A: 0A        .byte $0A

- D - I - 0x03361B 22:B60B: 00        .byte $00
- D - I - 0x03361C 22:B60C: 01        .byte $01

- D - I - 0x03361D 22:B60D: 0C        .byte $0C
- D - I - 0x03361E 22:B60E: 09        .byte $09

- D - I - 0x03361F 22:B60F: 05        .byte $05

- D - I - 0x033620 22:B610: 01        .byte $01
- D - I - 0x033621 22:B611: 03        .byte $03
- D - I - 0x033622 22:B612: E6 BB     .word @txt
- D - I - 0x033624 22:B614: 03        .byte $03
- D - I - 0x033625 22:B615: 01        .byte $01
- D - I - 0x033626 22:B616: 88 BC     .word off_BC88_defender_1
- D - I - 0x033628 22:B618: 05        .byte $05
- D - I - 0x033629 22:B619: 01        .byte $01
- D - I - 0x03362A 22:B61A: 8B BC     .word off_BC8B_defender_2
- D - I - 0x03362C 22:B61C: 07        .byte $07
- D - I - 0x03362D 22:B61D: 01        .byte $01
- D - I - 0x03362E 22:B61E: 8E BC     .word off_BC8E_defender_3
- D - I - 0x033630 22:B620: 09        .byte $09
- D - I - 0x033631 22:B621: 01        .byte $01
- D - I - 0x033632 22:B622: 91 BC     .word off_BC91_defender_4

@txt:
    .text "Action"
    .byte con_закончить






off_B624_16_player_tackle_block_cut:
    .word $2232
; X * Y зачищаемой области
    .byte $0E
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $0E
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word off_BC9A
    .byte $03
    .byte $01
    .word off_BC9C_stamina_def
    .byte $05
    .byte $01
    .word off_BCA7_tackle
    .byte $07
    .byte $01
    .word off_BCB2_block
    .byte $09
    .byte $01
    .word off_BCBD_passcut






off_B641_17_player_compete_cut:
- D - I - 0x033651 22:B641: 34 22     .word $2234

- D - I - 0x033653 22:B643: 0C        .byte $0C
- D - I - 0x033654 22:B644: 0A        .byte $0A

- D - I - 0x033655 22:B645: 00        .byte $00
- D - I - 0x033656 22:B646: 01        .byte $01

- D - I - 0x033657 22:B647: 0C        .byte $0C
- D - I - 0x033658 22:B648: 07        .byte $07

- D - I - 0x033659 22:B649: 04        .byte $04

- D - I - 0x03365A 22:B64A: 01        .byte $01
- D - I - 0x03365B 22:B64B: 02        .byte $02
- D - I - 0x03365C 22:B64C: 9A BC     .word off_BC9A
- D - I - 0x03365E 22:B64E: 03        .byte $03
- D - I - 0x03365F 22:B64F: 01        .byte $01
- D - I - 0x033660 22:B650: 9C BC     .word off_BC9C_stamina_def
- D - I - 0x033662 22:B652: 05        .byte $05
- D - I - 0x033663 22:B653: 01        .byte $01
- D - I - 0x033664 22:B654: C8 BC     .word off_BCC8
- D - I - 0x033666 22:B656: 07        .byte $07
- D - I - 0x033667 22:B657: 01        .byte $01
- D - I - 0x033668 22:B658: D3 BC     .word off_BCD3






off_B65A_18_player_clear_cut:
- D - I - 0x03366A 22:B65A: 34 22     .word $2234

- D - I - 0x03366C 22:B65C: 0C        .byte $0C
- D - I - 0x03366D 22:B65D: 0A        .byte $0A

- D - I - 0x03366E 22:B65E: 00        .byte $00
- D - I - 0x03366F 22:B65F: 01        .byte $01

- D - I - 0x033670 22:B660: 0C        .byte $0C
- D - I - 0x033671 22:B661: 07        .byte $07

- D - I - 0x033672 22:B662: 04        .byte $04

- D - I - 0x033673 22:B663: 01        .byte $01
- D - I - 0x033674 22:B664: 02        .byte $02
- D - I - 0x033675 22:B665: 9A BC     .word off_BC9A
- D - I - 0x033677 22:B667: 03        .byte $03
- D - I - 0x033678 22:B668: 01        .byte $01
- D - I - 0x033679 22:B669: 9C BC     .word off_BC9C_stamina_def
- D - I - 0x03367B 22:B66B: 05        .byte $05
- D - I - 0x03367C 22:B66C: 01        .byte $01
- D - I - 0x03367D 22:B66D: DE BC     .word off_BCDE
- D - I - 0x03367F 22:B66F: 07        .byte $07
- D - I - 0x033680 22:B670: 01        .byte $01
- D - I - 0x033681 22:B671: D3 BC     .word off_BCD3






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
    .byte con_pass_reciever_name_temmate, $00
    .byte con_закончить

@reciever_2:
    .byte con_pass_reciever_name_temmate, $01
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
    .byte con_pass_reciever_name_temmate, $00
    .byte con_закончить

@reciever_2:
    .byte con_pass_reciever_name_temmate, $01
    .byte con_закончить

@reciever_3:
    .byte con_pass_reciever_name_temmate, $02
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
    .byte con_pass_reciever_name_temmate, $00
    .byte con_закончить

@reciever_2:
    .byte con_pass_reciever_name_temmate, $01
    .byte con_закончить

@reciever_3:
    .byte con_pass_reciever_name_temmate, $02
    .byte con_закончить

@reciever_4:
    .byte con_pass_reciever_name_temmate, $03
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
    .word $2232
; X * Y зачищаемой области
    .byte $0E
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $0E
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word off_BCF9_позиция_и_имя_принимающего
    .byte $03
    .byte $01
    .word off_BCFB_энергия_принимающего
    .byte $05
    .byte $01
    .word off_BD11_dribble_принимающего
    .byte $07
    .byte $01
    .word off_BD1C_pass_принимающего
    .byte $09
    .byte $01
    .word off_BD06_shoot_принимающего






off_B6E4_1E_opponent_trap_clear_pass:
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
    .byte con_pass_reciever_name_opponent, $00
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
    .byte con_pass_reciever_name_opponent, $00
    .byte con_закончить

@opponent_2:
    .byte con_pass_reciever_name_opponent, $01
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
    .byte con_pass_reciever_name_opponent, $00
    .byte con_закончить

@opponent_2:
    .byte con_pass_reciever_name_opponent, $01
    .byte con_закончить

@opponent_3:
    .byte con_pass_reciever_name_opponent, $02
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
    .byte con_pass_reciever_name_opponent, $00
    .byte con_закончить

@opponent_2:
    .byte con_pass_reciever_name_opponent, $01
    .byte con_закончить

@opponent_3:
    .byte con_pass_reciever_name_opponent, $02
    .byte con_закончить

@opponent_4:
    .byte con_pass_reciever_name_opponent, $03
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
    .word off_BD4C_txt_to_whom
    .byte $02
    .byte $02
    .word @reciever_1
    .byte $04
    .byte $02
    .word @reciever_2

@reciever_1:
    .byte con_pass_reciever_name_temmate, $00
    .byte con_закончить

@reciever_2:
    .byte con_pass_reciever_name_temmate, $01
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
    .word off_BD4C_txt_to_whom
    .byte $02
    .byte $02
    .word @reciever_1
    .byte $04
    .byte $02
    .word @reciever_2
    .byte $06
    .byte $02
    .word @reciever_3

@reciever_1:
    .byte con_pass_reciever_name_temmate, $00
    .byte con_закончить

@reciever_2:
    .byte con_pass_reciever_name_temmate, $01
    .byte con_закончить

@reciever_3:
    .byte con_pass_reciever_name_temmate, $02
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
    .word off_BD4C_txt_to_whom
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

@reciever_1:
    .byte con_pass_reciever_name_temmate, $00
    .byte con_закончить

@reciever_2:
    .byte con_pass_reciever_name_temmate, $01
    .byte con_закончить

@reciever_3:
    .byte con_pass_reciever_name_temmate, $02
    .byte con_закончить

@reciever_4:
    .byte con_pass_reciever_name_temmate, $03
    .byte con_закончить






off_B7C5_27_кто_бьет_штрафной:
- D - I - 0x0337D5 22:B7C5: 28 22     .word $2228

- D - I - 0x0337D7 22:B7C7: 18        .byte $18
- D - I - 0x0337D8 22:B7C8: 0A        .byte $0A

- D - I - 0x0337D9 22:B7C9: 00        .byte $00
- D - I - 0x0337DA 22:B7CA: 01        .byte $01

- D - I - 0x0337DB 22:B7CB: 17        .byte $17
- D - I - 0x0337DC 22:B7CC: 09        .byte $09

- D - I - 0x0337DD 22:B7CD: 0C        .byte $0C

- D - I - 0x0337DE 22:B7CE: 01        .byte $01
- D - I - 0x0337DF 22:B7CF: 03        .byte $03
- D - I - 0x0337E0 22:B7D0: A2 BD     .word off_BDA2
- D - I - 0x0337E2 22:B7D2: 01        .byte $01
- D - I - 0x0337E3 22:B7D3: 0D        .byte $0D
- D - I - 0x0337E4 22:B7D4: C3 BD     .word off_BDC3
- D - I - 0x0337E6 22:B7D6: 03        .byte $03
- D - I - 0x0337E7 22:B7D7: 03        .byte $03
- D - I - 0x0337E8 22:B7D8: CE BD     .word off_BDCE
- D - I - 0x0337EA 22:B7DA: 05        .byte $05
- D - I - 0x0337EB 22:B7DB: 03        .byte $03
- D - I - 0x0337EC 22:B7DC: D1 BD     .word off_BDD1
- D - I - 0x0337EE 22:B7DE: 07        .byte $07
- D - I - 0x0337EF 22:B7DF: 03        .byte $03
- D - I - 0x0337F0 22:B7E0: D4 BD     .word off_BDD4
- D - I - 0x0337F2 22:B7E2: 09        .byte $09
- D - I - 0x0337F3 22:B7E3: 03        .byte $03
- D - I - 0x0337F4 22:B7E4: D7 BD     .word off_BDD7
- D - I - 0x0337F6 22:B7E6: 03        .byte $03
- D - I - 0x0337F7 22:B7E7: 0A        .byte $0A
- D - I - 0x0337F8 22:B7E8: DA BD     .word off_BDDA
- D - I - 0x0337FA 22:B7EA: 05        .byte $05
- D - I - 0x0337FB 22:B7EB: 0A        .byte $0A
- D - I - 0x0337FC 22:B7EC: DD BD     .word off_BDDD
- D - I - 0x0337FE 22:B7EE: 07        .byte $07
- D - I - 0x0337FF 22:B7EF: 0A        .byte $0A
- D - I - 0x033800 22:B7F0: E0 BD     .word off_BDE0
- D - I - 0x033802 22:B7F2: 09        .byte $09
- D - I - 0x033803 22:B7F3: 0A        .byte $0A
- D - I - 0x033804 22:B7F4: E3 BD     .word off_BDE3
- D - I - 0x033806 22:B7F6: 03        .byte $03
- D - I - 0x033807 22:B7F7: 11        .byte $11
- D - I - 0x033808 22:B7F8: E6 BD     .word off_BDE6
- D - I - 0x03380A 22:B7FA: 05        .byte $05
- D - I - 0x03380B 22:B7FB: 11        .byte $11
- D - I - 0x03380C 22:B7FC: E9 BD     .word off_BDE9






off_B7FE_28_переместить_игроков:
- D - I - 0x03380E 22:B7FE: 28 22     .word $2228

- D - I - 0x033810 22:B800: 18        .byte $18
- D - I - 0x033811 22:B801: 0A        .byte $0A

- D - I - 0x033812 22:B802: 03        .byte $03
- D - I - 0x033813 22:B803: 03        .byte $03

- D - I - 0x033814 22:B804: 09        .byte $09
- D - I - 0x033815 22:B805: 05        .byte $05

- D - I - 0x033816 22:B806: 03        .byte $03

- D - I - 0x033817 22:B807: 01        .byte $01
- D - I - 0x033818 22:B808: 01        .byte $01
- D - I - 0x033819 22:B809: EC BD     .word off_BDEC
- D - I - 0x03381B 22:B80B: 05        .byte $05
- D - I - 0x03381C 22:B80C: 06        .byte $06
- D - I - 0x03381D 22:B80D: 01 BE     .word off_BE01
- D - I - 0x03381F 22:B80F: 07        .byte $07
- D - I - 0x033820 22:B810: 06        .byte $06
- D - I - 0x033821 22:B811: 06 BE     .word off_BE06






off_B813_29_продолжить_перемещение_игроков:
- D - I - 0x033823 22:B813: 28 22     .word $2228

- D - I - 0x033825 22:B815: 18        .byte $18
- D - I - 0x033826 22:B816: 0A        .byte $0A

- D - I - 0x033827 22:B817: 00        .byte $00
- D - I - 0x033828 22:B818: 01        .byte $01

- D - I - 0x033829 22:B819: 0A        .byte $0A
- D - I - 0x03382A 22:B81A: 05        .byte $05

- D - I - 0x03382B 22:B81B: 03        .byte $03

- D - I - 0x03382C 22:B81C: 01        .byte $01
- D - I - 0x03382D 22:B81D: 01        .byte $01
- D - I - 0x03382E 22:B81E: 0A BE     .word off_BE0A
- D - I - 0x033830 22:B820: 03        .byte $03
- D - I - 0x033831 22:B821: 03        .byte $03
- D - I - 0x033832 22:B822: 13 BE     .word off_BE13
- D - I - 0x033834 22:B824: 05        .byte $05
- D - I - 0x033835 22:B825: 03        .byte $03
- D - I - 0x033836 22:B826: 18 BE     .word off_BE18






off_B828_2A_штрафной_влево_вправо:
- D - I - 0x033838 22:B828: 28 22     .word $2228

- D - I - 0x03383A 22:B82A: 18        .byte $18
- D - I - 0x03383B 22:B82B: 0A        .byte $0A

- D - I - 0x03383C 22:B82C: 00        .byte $00
- D - I - 0x03383D 22:B82D: 03        .byte $03

- D - I - 0x03383E 22:B82E: 0A        .byte $0A
- D - I - 0x03383F 22:B82F: 05        .byte $05

- D - I - 0x033840 22:B830: 03        .byte $03

- D - I - 0x033841 22:B831: 01        .byte $01
- D - I - 0x033842 22:B832: 00        .byte $00
- D - I - 0x033843 22:B833: 1C BE     .word off_BE1C
- D - I - 0x033845 22:B835: 05        .byte $05
- D - I - 0x033846 22:B836: 03        .byte $03
- D - I - 0x033847 22:B837: 27 BE     .word off_BE27
- D - I - 0x033849 22:B839: 07        .byte $07
- D - I - 0x03384A 22:B83A: 03        .byte $03
- D - I - 0x03384B 22:B83B: 2C BE     .word off_BE2C






off_B83D_2B_стенка_влево_вправо:
- D - I - 0x03384D 22:B83D: 28 22     .word $2228

- D - I - 0x03384F 22:B83F: 18        .byte $18
- D - I - 0x033850 22:B840: 0A        .byte $0A

- D - I - 0x033851 22:B841: 03        .byte $03
- D - I - 0x033852 22:B842: 03        .byte $03

- D - I - 0x033853 22:B843: 09        .byte $09
- D - I - 0x033854 22:B844: 05        .byte $05

- D - I - 0x033855 22:B845: 03        .byte $03

- D - I - 0x033856 22:B846: 01        .byte $01
- D - I - 0x033857 22:B847: 03        .byte $03
- D - I - 0x033858 22:B848: 32 BE     .word off_BE32
- D - I - 0x03385A 22:B84A: 05        .byte $05
- D - I - 0x03385B 22:B84B: 05        .byte $05
- D - I - 0x03385C 22:B84C: 3C BE     .word off_BE3C
- D - I - 0x03385E 22:B84E: 07        .byte $07
- D - I - 0x03385F 22:B84F: 05        .byte $05
- D - I - 0x033860 22:B850: 42 BE     .word off_BE42






off_B852_2C_пенальти_куда_ударить:
; также используется при нарушении во время игры
- D - I - 0x033862 22:B852: 28 22     .word $2228

- D - I - 0x033864 22:B854: 18        .byte $18
- D - I - 0x033865 22:B855: 0A        .byte $0A

- D - I - 0x033866 22:B856: 00        .byte $00
- D - I - 0x033867 22:B857: 01        .byte $01

- D - I - 0x033868 22:B858: 0A        .byte $0A
- D - I - 0x033869 22:B859: 05        .byte $05

- D - I - 0x03386A 22:B85A: 01        .byte $01

- D - I - 0x03386B 22:B85B: 03        .byte $03
- D - I - 0x03386C 22:B85C: 01        .byte $01
- D - I - 0x03386D 22:B85D: 47 BE     .word off_BE47






off_B85F_2D_пенальти_куда_прыгнуть:
- D - I - 0x03386F 22:B85F: 28 22     .word $2228

- D - I - 0x033871 22:B861: 18        .byte $18
- D - I - 0x033872 22:B862: 0A        .byte $0A

- D - I - 0x033873 22:B863: 00        .byte $00
- D - I - 0x033874 22:B864: 01        .byte $01

- D - I - 0x033875 22:B865: 0A        .byte $0A
- D - I - 0x033876 22:B866: 05        .byte $05

- D - I - 0x033877 22:B867: 01        .byte $01

- D - I - 0x033878 22:B868: 03        .byte $03
- D - I - 0x033879 22:B869: 01        .byte $01
- D - I - 0x03387A 22:B86A: 50 BE     .word off_BE50






off_B86C_2E_кто_подает_угловой:
- D - I - 0x03387C 22:B86C: 28 22     .word $2228

- D - I - 0x03387E 22:B86E: 18        .byte $18
- D - I - 0x03387F 22:B86F: 0A        .byte $0A

- D - I - 0x033880 22:B870: 00        .byte $00
- D - I - 0x033881 22:B871: 01        .byte $01

- D - I - 0x033882 22:B872: 17        .byte $17
- D - I - 0x033883 22:B873: 09        .byte $09

- D - I - 0x033884 22:B874: 0C        .byte $0C

- D - I - 0x033885 22:B875: 01        .byte $01
- D - I - 0x033886 22:B876: 03        .byte $03
- D - I - 0x033887 22:B877: AD BD     .word off_BDAD
- D - I - 0x033889 22:B879: 01        .byte $01
- D - I - 0x03388A 22:B87A: 0D        .byte $0D
- D - I - 0x03388B 22:B87B: C3 BD     .word off_BDC3
- D - I - 0x03388D 22:B87D: 03        .byte $03
- D - I - 0x03388E 22:B87E: 03        .byte $03
- D - I - 0x03388F 22:B87F: CE BD     .word off_BDCE
- D - I - 0x033891 22:B881: 05        .byte $05
- D - I - 0x033892 22:B882: 03        .byte $03
- D - I - 0x033893 22:B883: D1 BD     .word off_BDD1
- D - I - 0x033895 22:B885: 07        .byte $07
- D - I - 0x033896 22:B886: 03        .byte $03
- D - I - 0x033897 22:B887: D4 BD     .word off_BDD4
- D - I - 0x033899 22:B889: 09        .byte $09
- D - I - 0x03389A 22:B88A: 03        .byte $03
- D - I - 0x03389B 22:B88B: D7 BD     .word off_BDD7
- D - I - 0x03389D 22:B88D: 03        .byte $03
- D - I - 0x03389E 22:B88E: 0A        .byte $0A
- D - I - 0x03389F 22:B88F: DA BD     .word off_BDDA
- D - I - 0x0338A1 22:B891: 05        .byte $05
- D - I - 0x0338A2 22:B892: 0A        .byte $0A
- D - I - 0x0338A3 22:B893: DD BD     .word off_BDDD
- D - I - 0x0338A5 22:B895: 07        .byte $07
- D - I - 0x0338A6 22:B896: 0A        .byte $0A
- D - I - 0x0338A7 22:B897: E0 BD     .word off_BDE0
- D - I - 0x0338A9 22:B899: 09        .byte $09
- D - I - 0x0338AA 22:B89A: 0A        .byte $0A
- D - I - 0x0338AB 22:B89B: E3 BD     .word off_BDE3
- D - I - 0x0338AD 22:B89D: 03        .byte $03
- D - I - 0x0338AE 22:B89E: 11        .byte $11
- D - I - 0x0338AF 22:B89F: E6 BD     .word off_BDE6
- D - I - 0x0338B1 22:B8A1: 05        .byte $05
- D - I - 0x0338B2 22:B8A2: 11        .byte $11
- D - I - 0x0338B3 22:B8A3: E9 BD     .word off_BDE9






off_B8A5_2F_кто_бьет_нарушение:
- D - I - 0x0338B5 22:B8A5: 28 22     .word $2228

- D - I - 0x0338B7 22:B8A7: 18        .byte $18
- D - I - 0x0338B8 22:B8A8: 0A        .byte $0A

- D - I - 0x0338B9 22:B8A9: 00        .byte $00
- D - I - 0x0338BA 22:B8AA: 01        .byte $01

- D - I - 0x0338BB 22:B8AB: 17        .byte $17
- D - I - 0x0338BC 22:B8AC: 09        .byte $09

- D - I - 0x0338BD 22:B8AD: 0C        .byte $0C

- D - I - 0x0338BE 22:B8AE: 01        .byte $01
- D - I - 0x0338BF 22:B8AF: 03        .byte $03
- D - I - 0x0338C0 22:B8B0: B8 BD     .word off_BDB8
- D - I - 0x0338C2 22:B8B2: 01        .byte $01
- D - I - 0x0338C3 22:B8B3: 0D        .byte $0D
- D - I - 0x0338C4 22:B8B4: C3 BD     .word off_BDC3
- D - I - 0x0338C6 22:B8B6: 03        .byte $03
- D - I - 0x0338C7 22:B8B7: 03        .byte $03
- D - I - 0x0338C8 22:B8B8: CE BD     .word off_BDCE
- D - I - 0x0338CA 22:B8BA: 05        .byte $05
- D - I - 0x0338CB 22:B8BB: 03        .byte $03
- D - I - 0x0338CC 22:B8BC: D1 BD     .word off_BDD1
- D - I - 0x0338CE 22:B8BE: 07        .byte $07
- D - I - 0x0338CF 22:B8BF: 03        .byte $03
- D - I - 0x0338D0 22:B8C0: D4 BD     .word off_BDD4
- D - I - 0x0338D2 22:B8C2: 09        .byte $09
- D - I - 0x0338D3 22:B8C3: 03        .byte $03
- D - I - 0x0338D4 22:B8C4: D7 BD     .word off_BDD7
- D - I - 0x0338D6 22:B8C6: 03        .byte $03
- D - I - 0x0338D7 22:B8C7: 0A        .byte $0A
- D - I - 0x0338D8 22:B8C8: DA BD     .word off_BDDA
- D - I - 0x0338DA 22:B8CA: 05        .byte $05
- D - I - 0x0338DB 22:B8CB: 0A        .byte $0A
- D - I - 0x0338DC 22:B8CC: DD BD     .word off_BDDD
- D - I - 0x0338DE 22:B8CE: 07        .byte $07
- D - I - 0x0338DF 22:B8CF: 0A        .byte $0A
- D - I - 0x0338E0 22:B8D0: E0 BD     .word off_BDE0
- D - I - 0x0338E2 22:B8D2: 09        .byte $09
- D - I - 0x0338E3 22:B8D3: 0A        .byte $0A
- D - I - 0x0338E4 22:B8D4: E3 BD     .word off_BDE3
- D - I - 0x0338E6 22:B8D6: 03        .byte $03
- D - I - 0x0338E7 22:B8D7: 11        .byte $11
- D - I - 0x0338E8 22:B8D8: E6 BD     .word off_BDE6
- D - I - 0x0338EA 22:B8DA: 05        .byte $05
- D - I - 0x0338EB 22:B8DB: 11        .byte $11
- D - I - 0x0338EC 22:B8DC: E9 BD     .word off_BDE9






off_B8DE_30_отображение_имени_и_энергии_слева_верху:
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
    .byte con_stats_attack, con_stamina_atk
    .byte con_закончить






off_B8EF_31_номер_имя_управляемого_игрока:
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






off_B900_32_имя_соперника:
; когда мяч у соперника и тот бежит по полю
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






off_B90D_33_продолжить_меню_команды:
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






off_B922_34_меню_команды_миникарта:
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
    .byte con_name, $01
    .byte con_закончить

@name_3:
    .text "3 "
    .byte con_name, $02
    .byte con_закончить

@name_4:
    .text "4 "
    .byte con_name, $03
    .byte con_закончить

@name_5:
    .text "5 "
    .byte con_name, $04
    .byte con_закончить

@name_6:
    .text "6 "
    .byte con_name, $05
    .byte con_закончить

@name_7:
    .text "7 "
    .byte con_name, $06
    .byte con_закончить

@name_8:
    .text "8 "
    .byte con_name, $07
    .byte con_закончить

@name_9:
    .text "9 "
    .byte con_name, $08
    .byte con_закончить

@name_10:
    .text "10 "
    .byte con_name, $09
    .byte con_закончить

@name_11:
    .text "11 "
    .byte con_name, $0A
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
    .byte con_name, $16
    .byte con_закончить

@sub_plr_2_name:
    .byte con_name, $17
    .byte con_закончить

@sub_plr_3_name:
    .byte con_name, $18
    .byte con_закончить

@sub_plr_4_name:
    .byte con_name, $19
    .byte con_закончить

@sub_plr_5_name:
    .byte con_name, $1A
    .byte con_закончить

@sub_plr_6_name:
    .byte con_name, $1B
    .byte con_закончить

@sub_plr_7_name:
    .byte con_name, $1C
    .byte con_закончить

@sub_plr_8_name:
    .byte con_name, $1D
    .byte con_закончить

@sub_plr_gk1_name:
    .byte con_name, $1E
    .byte con_закончить

@sub_plr_gk2_name:
    .byte con_name, $1F
    .byte con_закончить






off_BA39_3B_кого_отправить_на_скамейку:
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
    .byte con_name, $01
    .byte con_закончить

@name_3:
    .text "3 "
    .byte con_name, $02
    .byte con_закончить

@name_4:
    .text "4 "
    .byte con_name, $03
    .byte con_закончить

@name_5:
    .text "5 "
    .byte con_name, $04
    .byte con_закончить

@name_6:
    .text "6 "
    .byte con_name, $05
    .byte con_закончить

@name_7:
    .text "7 "
    .byte con_name, $06
    .byte con_закончить

@name_8:
    .text "8 "
    .byte con_name, $07
    .byte con_закончить

@name_9:
    .text "9 "
    .byte con_name, $08
    .byte con_закончить

@name_10:
    .text "10 "
    .byte con_name, $09
    .byte con_закончить

@name_11:
    .text "11 "
    .byte con_name, $0A
    .byte con_закончить

@name_gk:
    .text "GK "
    .byte con_name, $00
    .byte con_закончить






off_BAA2_3C_энергия_основного_состава:
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
    .byte con_name, $01
    .byte con_закончить

@main_plr_2_stamina:
    .byte con_plr_stamina, $01
    .byte con_закончить

@main_plr_3_name:
    .byte con_name, $02
    .byte con_закончить

@main_plr_3_stamina:
    .byte con_plr_stamina, $02
    .byte con_закончить

@main_plr_4_name:
    .byte con_name, $03
    .byte con_закончить

@main_plr_4_stamina:
    .byte con_plr_stamina, $03
    .byte con_закончить

@main_plr_5_name:
    .byte con_name, $04
    .byte con_закончить

@main_plr_5_stamina:
    .byte con_plr_stamina, $04
    .byte con_закончить

@main_plr_6_name:
    .byte con_name, $05
    .byte con_закончить

@main_plr_6_stamina:
    .byte con_plr_stamina, $05
    .byte con_закончить

@main_plr_7_name:
    .byte con_name, $06
    .byte con_закончить

@main_plr_7_stamina:
    .byte con_plr_stamina, $06
    .byte con_закончить

@main_plr_8_name:
    .byte con_name, $07
    .byte con_закончить

@main_plr_8_stamina:
    .byte con_plr_stamina, $07
    .byte con_закончить

@main_plr_9_name:
    .byte con_name, $08
    .byte con_закончить

@main_plr_9_stamina:
    .byte con_plr_stamina, $08
    .byte con_закончить

@main_plr_10_name:
    .byte con_name, $09
    .byte con_закончить

@main_plr_10_stamina:
    .byte con_plr_stamina, $09
    .byte con_закончить

@main_plr_11_name:
    .byte con_name, $0A
    .byte con_закончить

@main_plr_11_stamina:
    .byte con_plr_stamina, $0A
    .byte con_закончить

@main_plr_gk_name:
    .byte con_name, $00
    .byte con_закончить

@main_plr_gk_stamina:
    .byte con_plr_stamina, $00
    .byte con_закончить





off_BB03_3D_энергия_запасного_состава:
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
    .byte con_name, $16
    .byte con_закончить

@sub_plr_1_stamina:
    .byte con_plr_stamina, $16
    .byte con_закончить

@sub_plr_2_name:
    .byte con_name, $17
    .byte con_закончить

@sub_plr_2_stamina:
    .byte con_plr_stamina, $17
    .byte con_закончить

@sub_plr_3_name:
    .byte con_name, $18
    .byte con_закончить

@sub_plr_3_stamina:
    .byte con_plr_stamina, $18
    .byte con_закончить

@sub_plr_4_name:
    .byte con_name, $19
    .byte con_закончить

@sub_plr_4_stamina:
    .byte con_plr_stamina, $19
    .byte con_закончить

@sub_plr_5_name:
    .byte con_name, $1A
    .byte con_закончить

@sub_plr_5_stamina:
    .byte con_plr_stamina, $1A
    .byte con_закончить

@sub_plr_6_name:
    .byte con_name, $1B
    .byte con_закончить

@sub_plr_6_stamina:
    .byte con_plr_stamina, $1B
    .byte con_закончить

@sub_plr_7_name:
    .byte con_name, $1C
    .byte con_закончить

@sub_plr_7_stamina:
    .byte con_plr_stamina, $1C
    .byte con_закончить

@sub_plr_8_name:
    .byte con_name, $1D
    .byte con_закончить

@sub_plr_8_stamina:
    .byte con_plr_stamina, $1D
    .byte con_закончить

@sub_plr_gk1_name:
    .byte con_name, $1E
    .byte con_закончить

@sub_plr_gk1_stamina:
    .byte con_plr_stamina, $1E
    .byte con_закончить

@sub_plr_gk2_name:
    .byte con_name, $1F
    .byte con_закончить

@sub_plr_gk2_stamina:
    .byte con_plr_stamina, $1F
    .byte con_закончить






off_BB5C_3E_кто_бьет_пенальти:
- D - I - 0x033B6C 22:BB5C: 00 20     .word $2000

- D - I - 0x033B6E 22:BB5E: 20        .byte $20
- D - I - 0x033B6F 22:BB5F: 1D        .byte $1D

- D - I - 0x033B70 22:BB60: 00        .byte $00
- D - I - 0x033B71 22:BB61: 00        .byte $00

- D - I - 0x033B72 22:BB62: 03        .byte $03
- D - I - 0x033B73 22:BB63: 02        .byte $02

- D - I - 0x033B74 22:BB64: 01        .byte $01

- D - I - 0x033B75 22:BB65: 04        .byte $04
- D - I - 0x033B76 22:BB66: 07        .byte $07
- D - I - 0x033B77 22:BB67: 95 BF     .word off_BF95






off_BB69_3F_выбор_игроков_на_пенальти:
- D - I - 0x033B79 22:BB69: A3 20     .word $20A3

- D - I - 0x033B7B 22:BB6B: 0B        .byte $0B
- D - I - 0x033B7C 22:BB6C: 16        .byte $16

- D - I - 0x033B7D 22:BB6D: 00        .byte $00
- D - I - 0x033B7E 22:BB6E: 00        .byte $00

- D - I - 0x033B7F 22:BB6F: 0B        .byte $0B
- D - I - 0x033B80 22:BB70: 16        .byte $16

- D - I - 0x033B81 22:BB71: 0B        .byte $0B

- D - I - 0x033B82 22:BB72: 01        .byte $01
- D - I - 0x033B83 22:BB73: 07        .byte $07
- D - I - 0x033B84 22:BB74: B0 BF     .word off_BFB0
- D - I - 0x033B86 22:BB76: 03        .byte $03
- D - I - 0x033B87 22:BB77: 01        .byte $01
- D - I - 0x033B88 22:BB78: B5 BF     .word off_BFB5
- D - I - 0x033B8A 22:BB7A: 05        .byte $05
- D - I - 0x033B8B 22:BB7B: 01        .byte $01
- D - I - 0x033B8C 22:BB7C: B5 BF     .word off_BFB5
- D - I - 0x033B8E 22:BB7E: 07        .byte $07
- D - I - 0x033B8F 22:BB7F: 01        .byte $01
- D - I - 0x033B90 22:BB80: B5 BF     .word off_BFB5
- D - I - 0x033B92 22:BB82: 09        .byte $09
- D - I - 0x033B93 22:BB83: 01        .byte $01
- D - I - 0x033B94 22:BB84: B5 BF     .word off_BFB5
- D - I - 0x033B96 22:BB86: 0B        .byte $0B
- D - I - 0x033B97 22:BB87: 01        .byte $01
- D - I - 0x033B98 22:BB88: B5 BF     .word off_BFB5
- D - I - 0x033B9A 22:BB8A: 0D        .byte $0D
- D - I - 0x033B9B 22:BB8B: 01        .byte $01
- D - I - 0x033B9C 22:BB8C: B5 BF     .word off_BFB5
- D - I - 0x033B9E 22:BB8E: 0F        .byte $0F
- D - I - 0x033B9F 22:BB8F: 01        .byte $01
- D - I - 0x033BA0 22:BB90: B5 BF     .word off_BFB5
- D - I - 0x033BA2 22:BB92: 11        .byte $11
- D - I - 0x033BA3 22:BB93: 01        .byte $01
- D - I - 0x033BA4 22:BB94: B5 BF     .word off_BFB5
- D - I - 0x033BA6 22:BB96: 13        .byte $13
- D - I - 0x033BA7 22:BB97: 01        .byte $01
- D - I - 0x033BA8 22:BB98: B5 BF     .word off_BFB5
- D - I - 0x033BAA 22:BB9A: 15        .byte $15
- D - I - 0x033BAB 22:BB9B: 01        .byte $01
- D - I - 0x033BAC 22:BB9C: B5 BF     .word off_BFB5






off_BB9E_40_выбранные_игроки_на_пенальти:
- D - I - 0x033BAE 22:BB9E: 0F 21     .word $210F

- D - I - 0x033BB0 22:BBA0: 0D        .byte $0D
- D - I - 0x033BB1 22:BBA1: 0E        .byte $0E

- D - I - 0x033BB2 22:BBA2: 00        .byte $00
- D - I - 0x033BB3 22:BBA3: 00        .byte $00

- D - I - 0x033BB4 22:BBA4: 0D        .byte $0D
- D - I - 0x033BB5 22:BBA5: 0E        .byte $0E

- D - I - 0x033BB6 22:BBA6: 06        .byte $06

- D - I - 0x033BB7 22:BBA7: 02        .byte $02
- D - I - 0x033BB8 22:BBA8: 03        .byte $03
- D - I - 0x033BB9 22:BBA9: A9 BF     .word off_BFA9
- D - I - 0x033BBB 22:BBAB: 04        .byte $04
- D - I - 0x033BBC 22:BBAC: 03        .byte $03
- D - I - 0x033BBD 22:BBAD: B7 BF     .word off_BFB7
- D - I - 0x033BBF 22:BBAF: 06        .byte $06
- D - I - 0x033BC0 22:BBB0: 03        .byte $03
- D - I - 0x033BC1 22:BBB1: BC BF     .word off_BFBC
- D - I - 0x033BC3 22:BBB3: 08        .byte $08
- D - I - 0x033BC4 22:BBB4: 03        .byte $03
- D - I - 0x033BC5 22:BBB5: C1 BF     .word off_BFC1
- D - I - 0x033BC7 22:BBB7: 0A        .byte $0A
- D - I - 0x033BC8 22:BBB8: 03        .byte $03
- D - I - 0x033BC9 22:BBB9: C6 BF     .word off_BFC6
- D - I - 0x033BCB 22:BBBB: 0C        .byte $0C
- D - I - 0x033BCC 22:BBBC: 03        .byte $03
- D - I - 0x033BCD 22:BBBD: CB BF     .word off_BFCB






off_BBBF_41_пенальти_после_матча:
- D - I - 0x033BCF 22:BBBF: 20 22     .word $2220

- D - I - 0x033BD1 22:BBC1: 08        .byte $08
- D - I - 0x033BD2 22:BBC2: 06        .byte $06

- D - I - 0x033BD3 22:BBC3: 01        .byte $01
- D - I - 0x033BD4 22:BBC4: 01        .byte $01

- D - I - 0x033BD5 22:BBC5: 07        .byte $07
- D - I - 0x033BD6 22:BBC6: 05        .byte $05

- D - I - 0x033BD7 22:BBC7: 05        .byte $05

- D - I - 0x033BD8 22:BBC8: 01        .byte $01
- D - I - 0x033BD9 22:BBC9: 02        .byte $02
- D - I - 0x033BDA 22:BBCA: D0 BF     .word off_BFD0_надпись_PK
- D - I - 0x033BDC 22:BBCC: 03        .byte $03
- D - I - 0x033BDD 22:BBCD: 02        .byte $02
- D - I - 0x033BDE 22:BBCE: E0 BB     .word @team_left
- D - I - 0x033BE0 22:BBD0: 05        .byte $05
- D - I - 0x033BE1 22:BBD1: 02        .byte $02
- D - I - 0x033BE2 22:BBD2: E3 BB     .word @team_right
- D - I - 0x033BE4 22:BBD4: 03        .byte $03
- D - I - 0x033BE5 22:BBD5: 06        .byte $06
- D - I - 0x033BE6 22:BBD6: 9C BD     .word @score_left
- D - I - 0x033BE8 22:BBD8: 05        .byte $05
- D - I - 0x033BE9 22:BBD9: 06        .byte $06
- D - I - 0x033BEA 22:BBDA: 9F BD     .word @score_right

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

off_BC02_txt_перепасовка:
- D - I - 0x033C12 22:BC02: 6C        .byte $6C
- D - I - 0x033C13 22:BC03: 6E        .byte $6E
- D - I - 0x033C14 22:BC04: 52        .byte $52
- D - I - 0x033C15 22:BC05: 7D        .byte $7D
- D - I - 0x033C16 22:BC06: 68        .byte $68
- D - I - 0x033C17 22:BC07: 50        .byte $50
- D - I - 0x033C18 22:BC08: 7D        .byte $7D
- D - I - 0x033C19 22:BC09: 6E        .byte $6E
- D - I - 0x033C1A 22:BC0A: FC        .byte con_закончить
off_BC0B_txt_с_кем:
- D - I - 0x033C1B 22:BC0B: 20        .byte $20
- D - I - 0x033C1C 22:BC0C: 06        .byte $06
- D - I - 0x033C1D 22:BC0D: 10        .byte $10
- D - I - 0x033C1E 22:BC0E: 2D        .byte $2D
- D - I - 0x033C1F 22:BC0F: 0E        .byte $0E
- D - I - 0x033C20 22:BC10: 2E        .byte $2E
- D - I - 0x033C21 22:BC11: 10        .byte $10
- D - I - 0x033C22 22:BC12: 08        .byte $08
- D - I - 0x033C23 22:BC13: FC        .byte con_закончить

off_BC21_позиция_и_имя_игрока:
    .byte con_plr_name_pos
    .byte con_закончить

off_BC23_stamina_attack_и_количество:
    .text "Stamina     "
    .byte con_stats_attack, con_stamina_atk
    .byte con_закончить

off_BC4F_trap_и_величина:
    .text "Trap        "
    .byte con_stats_attack, con_trap_atk
    .byte con_закончить

off_BC5A_pass_и_величина:
    .text "Pass        "
    .byte con_stats_attack, con_08
    .byte con_закончить

off_BC65_air_shot_и_величина:
    .text "Shoot       "
    .byte con_stats_attack, con_air_shot
    .byte con_закончить

off_BC70_clear_и_величина:
    .text "Clear       "
    .byte con_stats_attack, con_clear_atk
    .byte con_закончить

off_BC7C:
    .byte con_E4, $00
    .byte con_закончить

off_BC7F:
    .byte con_E4, $01
    .byte con_закончить

off_BC82:
    .byte con_E4, $02
    .byte con_закончить

off_BC85:
    .byte con_E4, $03
    .byte con_закончить

off_BC88_defender_1:
    .byte con_defender_name_action, $00
    .byte con_закончить

off_BC8B_defender_2:
    .byte con_defender_name_action, $01
    .byte con_закончить

off_BC8E_defender_3:
    .byte con_defender_name_action, $02
    .byte con_закончить

off_BC91_defender_4:
    .byte con_defender_name_action, $03
    .byte con_закончить

off_BC94:
    .byte con_E6, $00
    .byte con_закончить

off_BC97:
    .byte con_E6, $01
    .byte con_закончить

off_BC9A:
    .byte con_defender_name_stats
    .byte con_закончить

off_BC9C_stamina_def:
    .text "Stamina    "
    .byte con_stats_defense, con_stamina_def
    .byte con_закончить

off_BCA7_tackle:
    .text "Tackle     "
    .byte con_stats_defense, con_tackle
    .byte con_закончить

off_BCB2_block:
    .text "Block      "
    .byte con_stats_defense, con_block
    .byte con_закончить

off_BCBD_passcut:
    .text "Passcut    "
    .byte con_stats_defense, con_passcut
    .byte con_закончить

off_BCC8:
- D - I - 0x033CD8 22:BCC8: 0E        .byte $0E
- D - I - 0x033CD9 22:BCC9: 28        .byte $28
- D - I - 0x033CDA 22:BCCA: 01        .byte $01
- D - I - 0x033CDB 22:BCCB: 03        .byte $03
- D - I - 0x033CDC 22:BCCC: 00        .byte $00
- D - I - 0x033CDD 22:BCCD: 00        .byte $00
- D - I - 0x033CDE 22:BCCE: 00        .byte $00
- D - I - 0x033CDF 22:BCCF: 00        .byte $00
- D - I - 0x033CE0 22:BCD0: E8        .byte $E8
- D - I - 0x033CE1 22:BCD1: 0D        .byte $0D
- D - I - 0x033CE2 22:BCD2: FC        .byte con_закончить

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
    .byte con_teammate_name
    .byte con_закончить

off_BCFB_энергия_принимающего:
    .text "Stamina    "
    .byte con_stats_reciever, con_stamina_rec
    .byte con_закончить

off_BD06_shoot_принимающего:
    .text "Shoot      "
    .byte con_stats_reciever, con_shoot_rec
    .byte con_закончить

off_BD11_dribble_принимающего:
    .text "Dribble    "
    .byte con_stats_reciever, con_dribble_rec
    .byte con_закончить

off_BD1C_pass_принимающего:
    .text "Pass       "
    .byte con_stats_reciever, con_pass_rec
    .byte con_закончить

off_BD27:       ; unused
- - - - - 0x033D37 22:BD27: 54        .byte $54
- - - - - 0x033D38 22:BD28: 67        .byte $67
- - - - - 0x033D39 22:BD29: 6F        .byte $6F
- - - - - 0x033D3A 22:BD2A: CF        .byte $CF
- - - - - 0x033D3B 22:BD2B: 00        .byte $00
- - - - - 0x033D3C 22:BD2C: 00        .byte $00
- - - - - 0x033D3D 22:BD2D: 00        .byte $00
- - - - - 0x033D3E 22:BD2E: 00        .byte $00
- - - - - 0x033D3F 22:BD2F: E3        .byte con_stats_reciever, con_trap_rec
- - - - - 0x033D41 22:BD31: FC        .byte con_закончить

off_BD32:       ; unused
- - - - - 0x033D42 22:BD32: 48        .byte $48
- - - - - 0x033D43 22:BD33: 68        .byte $68
- - - - - 0x033D44 22:BD34: 41        .byte $41
- - - - - 0x033D45 22:BD35: 7D        .byte $7D
- - - - - 0x033D46 22:BD36: 00        .byte $00
- - - - - 0x033D47 22:BD37: 00        .byte $00
- - - - - 0x033D48 22:BD38: 00        .byte $00
- - - - - 0x033D49 22:BD39: 00        .byte $00
- - - - - 0x033D4A 22:BD3A: E3        .byte con_stats_reciever, con_clear_rec
- - - - - 0x033D4C 22:BD3C: FC        .byte con_закончить

off_BD4C_txt_to_whom:
    .text "To whom?"
    .byte con_закончить

off_BD53_имя_и_позиция_кипера:
    .byte con_gk_name
    .byte con_закончить

off_BD55_энергия_кипера:
    .text "Stamina     "
    .byte con_stats_gk, con_stamina_gk
    .byte con_закончить

off_BD60_punch:
    .text "Punch       "
    .byte con_stats_gk, con_punch
    .byte con_закончить

off_BD6B_catch:
    .text "Catch       "
    .byte con_stats_gk, con_catch
    .byte con_закончить

off_BD76:
- D - I - 0x033D86 22:BD76: 14        .byte $14
- D - I - 0x033D87 22:BD77: B0        .byte $B0
- D - I - 0x033D88 22:BD78: AA        .byte $AA
- D - I - 0x033D89 22:BD79: 0D        .byte $0D
- D - I - 0x033D8A 22:BD7A: 00        .byte $00
- D - I - 0x033D8B 22:BD7B: 00        .byte $00
- D - I - 0x033D8C 22:BD7C: 00        .byte $00
- D - I - 0x033D8D 22:BD7D: 00        .byte $00
- D - I - 0x033D8E 22:BD7E: EC        .byte con_stats_gk, con_catch
- D - I - 0x033D90 22:BD80: FC        .byte con_закончить

off_BD81:
- D - I - 0x033D91 22:BD81: 4C        .byte $4C
- D - I - 0x033D92 22:BD82: 71        .byte $71
- D - I - 0x033D93 22:BD83: 7D        .byte $7D
- D - I - 0x033D94 22:BD84: 54        .byte $54
- D - I - 0x033D95 22:BD85: 16        .byte $16
- D - I - 0x033D96 22:BD86: 00        .byte $00
- D - I - 0x033D97 22:BD87: 00        .byte $00
- D - I - 0x033D98 22:BD88: 00        .byte $00
- D - I - 0x033D99 22:BD89: EC        .byte con_stats_gk, con_1B_gk
- D - I - 0x033D9B 22:BD8B: FC        .byte con_закончить

off_BD8C:
- D - I - 0x033D9C 22:BD8C: C2        .byte $C2
- D - I - 0x033D9D 22:BD8D: 68        .byte $68
- D - I - 0x033D9E 22:BD8E: C5        .byte $C5
- D - I - 0x033D9F 22:BD8F: 69        .byte $69
- D - I - 0x033DA0 22:BD90: 16        .byte $16
- D - I - 0x033DA1 22:BD91: 00        .byte $00
- D - I - 0x033DA2 22:BD92: 00        .byte $00
- D - I - 0x033DA3 22:BD93: 00        .byte $00
- D - I - 0x033DA4 22:BD94: EC        .byte con_stats_gk, con_1C_gk
- D - I - 0x033DA6 22:BD96: FC        .byte con_закончить

off_BD97:
- D - I - 0x033DA7 22:BD97: 0F        .byte $0F
- D - I - 0x033DA8 22:BD98: 15        .byte $15
- D - I - 0x033DA9 22:BD99: 04        .byte $04
- D - I - 0x033DAA 22:BD9A: 29        .byte $29
- D - I - 0x033DAB 22:BD9B: FC        .byte con_закончить

off_BDA2:
- D - I - 0x033DB2 22:BDA2: 5C        .byte $5C
- D - I - 0x033DB3 22:BDA3: 68        .byte $68
- D - I - 0x033DB4 22:BDA4: 7D        .byte $7D
- D - I - 0x033DB5 22:BDA5: 47        .byte $47
- D - I - 0x033DB6 22:BDA6: 6F        .byte $6F
- D - I - 0x033DB7 22:BDA7: 48        .byte $48
- D - I - 0x033DB8 22:BDA8: 00        .byte $00
- D - I - 0x033DB9 22:BDA9: 00        .byte $00
- D - I - 0x033DBA 22:BDAA: 00        .byte $00
- D - I - 0x033DBB 22:BDAB: 00        .byte $00
- D - I - 0x033DBC 22:BDAC: FC        .byte con_закончить

off_BDAD:
- D - I - 0x033DBD 22:BDAD: 4A        .byte $4A
- D - I - 0x033DBE 22:BDAE: 7D        .byte $7D
- D - I - 0x033DBF 22:BDAF: 55        .byte $55
- D - I - 0x033DC0 22:BDB0: 7D        .byte $7D
- D - I - 0x033DC1 22:BDB1: 47        .byte $47
- D - I - 0x033DC2 22:BDB2: 6F        .byte $6F
- D - I - 0x033DC3 22:BDB3: 48        .byte $48
- D - I - 0x033DC4 22:BDB4: 00        .byte $00
- D - I - 0x033DC5 22:BDB5: 00        .byte $00
- D - I - 0x033DC6 22:BDB6: 00        .byte $00
- D - I - 0x033DC7 22:BDB7: FC        .byte con_закончить

off_BDB8:
- D - I - 0x033DC8 22:BDB8: 8D        .byte $8D
- D - I - 0x033DC9 22:BDB9: 7E        .byte $7E
- D - I - 0x033DCA 22:BDBA: 8B        .byte $8B
- D - I - 0x033DCB 22:BDBB: 00        .byte $00
- D - I - 0x033DCC 22:BDBC: 00        .byte $00
- D - I - 0x033DCD 22:BDBD: 00        .byte $00
- D - I - 0x033DCE 22:BDBE: 00        .byte $00
- D - I - 0x033DCF 22:BDBF: 00        .byte $00
- D - I - 0x033DD0 22:BDC0: 00        .byte $00
- D - I - 0x033DD1 22:BDC1: 00        .byte $00
- D - I - 0x033DD2 22:BDC2: FC        .byte con_закончить

off_BDC3:
- D - I - 0x033DD3 22:BDC3: 47        .byte $47
- D - I - 0x033DD4 22:BDC4: 6F        .byte $6F
- D - I - 0x033DD5 22:BDC5: 46        .byte $46
- D - I - 0x033DD6 22:BDC6: 7D        .byte $7D
- D - I - 0x033DD7 22:BDC7: 1A        .byte $1A
- D - I - 0x033DD8 22:BDC8: 00        .byte $00
- D - I - 0x033DD9 22:BDC9: 78        .byte $78
- D - I - 0x033DDA 22:BDCA: FC        .byte con_закончить

off_BDCE:
    .byte con_name, $01
    .byte con_закончить

off_BDD1:
    .byte con_name, $02
    .byte con_закончить

off_BDD4:
    .byte con_name, $03
    .byte con_закончить

off_BDD7:
    .byte con_name, $04
    .byte con_закончить

off_BDDA:
    .byte con_name, $05
    .byte con_закончить

off_BDDD:
    .byte con_name, $06
    .byte con_закончить

off_BDE0:
    .byte con_name, $07
    .byte con_закончить

off_BDE3:
    .byte con_name, $08
    .byte con_закончить

off_BDE6:
    .byte con_name, $09
    .byte con_закончить

off_BDE9:
    .byte con_name, $0A
    .byte con_закончить

off_BDEC:
- D - I - 0x033DFC 22:BDEC: 0E        .byte $0E
- D - I - 0x033DFD 22:BDED: 2E        .byte $2E
- D - I - 0x033DFE 22:BDEE: 0C        .byte $0C
- D - I - 0x033DFF 22:BDEF: 31        .byte $31
- D - I - 0x033E00 22:BDF0: 19        .byte $19
- D - I - 0x033E01 22:BDF1: 00        .byte $00
- D - I - 0x033E02 22:BDF2: D1        .byte $D1
- D - I - 0x033E03 22:BDF3: BA        .byte $BA
- D - I - 0x033E04 22:BDF4: 4C        .byte $4C
- D - I - 0x033E05 22:BDF5: 72        .byte $72
- D - I - 0x033E06 22:BDF6: 6E        .byte $6E
- D - I - 0x033E07 22:BDF7: 2D        .byte $2D
- D - I - 0x033E08 22:BDF8: 00        .byte $00
- D - I - 0x033E09 22:BDF9: 06        .byte $06
- D - I - 0x033E0A 22:BDFA: 04        .byte $04
- D - I - 0x033E0B 22:BDFB: 1F        .byte $1F
- D - I - 0x033E0C 22:BDFC: 0D        .byte $0D
- D - I - 0x033E0D 22:BDFD: 06        .byte $06
- D - I - 0x033E0E 22:BDFE: 00        .byte $00
- D - I - 0x033E0F 22:BDFF: 78        .byte $78
- D - I - 0x033E10 22:BE00: FC        .byte con_закончить

off_BE01:
- D - I - 0x033E11 22:BE01: 06        .byte $06
- D - I - 0x033E12 22:BE02: 04        .byte $04
- D - I - 0x033E13 22:BE03: 15        .byte $15
- D - I - 0x033E14 22:BE04: 02        .byte $02
- D - I - 0x033E15 22:BE05: FC        .byte con_закончить

off_BE06:
- D - I - 0x033E16 22:BE06: 06        .byte $06
- D - I - 0x033E17 22:BE07: 04        .byte $04
- D - I - 0x033E18 22:BE08: 29        .byte $29
- D - I - 0x033E19 22:BE09: FC        .byte con_закончить

off_BE0A:
- D - I - 0x033E1A 22:BE0A: D1        .byte $D1
- D - I - 0x033E1B 22:BE0B: BA        .byte $BA
- D - I - 0x033E1C 22:BE0C: 4C        .byte $4C
- D - I - 0x033E1D 22:BE0D: 72        .byte $72
- D - I - 0x033E1E 22:BE0E: 6E        .byte $6E
- D - I - 0x033E1F 22:BE0F: 02        .byte $02
- D - I - 0x033E20 22:BE10: AE        .byte $AE
- D - I - 0x033E21 22:BE11: 03        .byte $03
- D - I - 0x033E22 22:BE12: FC        .byte con_закончить

off_BE13:
- D - I - 0x033E23 22:BE13: 51        .byte $51
- D - I - 0x033E24 22:BE14: 75        .byte $75
- D - I - 0x033E25 22:BE15: 6E        .byte $6E
- D - I - 0x033E26 22:BE16: BA        .byte $BA
- D - I - 0x033E27 22:BE17: FC        .byte con_закончить

off_BE18:
- D - I - 0x033E28 22:BE18: 05        .byte $05
- D - I - 0x033E29 22:BE19: 2C        .byte $2C
- D - I - 0x033E2A 22:BE1A: 28        .byte $28
- D - I - 0x033E2B 22:BE1B: FC        .byte con_закончить

off_BE1C:
- D - I - 0x033E2C 22:BE1C: 4C        .byte $4C
- D - I - 0x033E2D 22:BE1D: 71        .byte $71
- D - I - 0x033E2E 22:BE1E: 7D        .byte $7D
- D - I - 0x033E2F 22:BE1F: 54        .byte $54
- D - I - 0x033E30 22:BE20: 4A        .byte $4A
- D - I - 0x033E31 22:BE21: 7D        .byte $7D
- D - I - 0x033E32 22:BE22: 4D        .byte $4D
- D - I - 0x033E33 22:BE23: 1A        .byte $1A
- D - I - 0x033E34 22:BE24: 00        .byte $00
- D - I - 0x033E35 22:BE25: 78        .byte $78
- D - I - 0x033E36 22:BE26: FC        .byte con_закончить

off_BE27:
- D - I - 0x033E37 22:BE27: 20        .byte $20
- D - I - 0x033E38 22:BE28: A1        .byte $A1
- D - I - 0x033E39 22:BE29: 4D        .byte $4D
- D - I - 0x033E3A 22:BE2A: 60        .byte $60
- D - I - 0x033E3B 22:BE2B: FC        .byte con_закончить

off_BE2C:
- D - I - 0x033E3C 22:BE2C: 1B        .byte $1B
- D - I - 0x033E3D 22:BE2D: AA        .byte $AA
- D - I - 0x033E3E 22:BE2E: 28        .byte $28
- D - I - 0x033E3F 22:BE2F: 4D        .byte $4D
- D - I - 0x033E40 22:BE30: 60        .byte $60
- D - I - 0x033E41 22:BE31: FC        .byte con_закончить

off_BE32:
- D - I - 0x033E42 22:BE32: 46        .byte $46
- D - I - 0x033E43 22:BE33: C6        .byte $C6
- D - I - 0x033E44 22:BE34: 19        .byte $19
- D - I - 0x033E45 22:BE35: 00        .byte $00
- D - I - 0x033E46 22:BE36: 02        .byte $02
- D - I - 0x033E47 22:BE37: 11        .byte $11
- D - I - 0x033E48 22:BE38: 1A        .byte $1A
- D - I - 0x033E49 22:BE39: 00        .byte $00
- D - I - 0x033E4A 22:BE3A: 78        .byte $78
- D - I - 0x033E4B 22:BE3B: FC        .byte con_закончить

off_BE3C:
- D - I - 0x033E4C 22:BE3C: 1B        .byte $1B
- D - I - 0x033E4D 22:BE3D: AA        .byte $AA
- D - I - 0x033E4E 22:BE3E: 28        .byte $28
- D - I - 0x033E4F 22:BE3F: 26        .byte $26
- D - I - 0x033E50 22:BE40: 28        .byte $28
- D - I - 0x033E51 22:BE41: FC        .byte con_закончить

off_BE42:
- D - I - 0x033E52 22:BE42: 20        .byte $20
- D - I - 0x033E53 22:BE43: A1        .byte $A1
- D - I - 0x033E54 22:BE44: 26        .byte $26
- D - I - 0x033E55 22:BE45: 28        .byte $28
- D - I - 0x033E56 22:BE46: FC        .byte con_закончить

off_BE47:
- D - I - 0x033E57 22:BE47: AE        .byte $AE
- D - I - 0x033E58 22:BE48: 0A        .byte $0A
- D - I - 0x033E59 22:BE49: 16        .byte $16
- D - I - 0x033E5A 22:BE4A: 00        .byte $00
- D - I - 0x033E5B 22:BE4B: 09        .byte $09
- D - I - 0x033E5C 22:BE4C: 29        .byte $29
- D - I - 0x033E5D 22:BE4D: 00        .byte $00
- D - I - 0x033E5E 22:BE4E: 78        .byte $78
- D - I - 0x033E5F 22:BE4F: FC        .byte con_закончить

off_BE50:
- D - I - 0x033E60 22:BE50: AE        .byte $AE
- D - I - 0x033E61 22:BE51: 0A        .byte $0A
- D - I - 0x033E62 22:BE52: 16        .byte $16
- D - I - 0x033E63 22:BE53: 00        .byte $00
- D - I - 0x033E64 22:BE54: 14        .byte $14
- D - I - 0x033E65 22:BE55: B1        .byte $B1
- D - I - 0x033E66 22:BE56: 00        .byte $00
- D - I - 0x033E67 22:BE57: 78        .byte $78
- D - I - 0x033E68 22:BE58: FC        .byte con_закончить

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

off_BF95:
- D - I - 0x033FA5 22:BF95: 8D        .byte $8D
- D - I - 0x033FA6 22:BF96: 8B        .byte $8B
- D - I - 0x033FA7 22:BF97: 0E        .byte $0E
- D - I - 0x033FA8 22:BF98: 2E        .byte $2E
- D - I - 0x033FA9 22:BF99: 19        .byte $19
- D - I - 0x033FAA 22:BF9A: 62        .byte $62
- D - I - 0x033FAB 22:BF9B: 6E        .byte $6E
- D - I - 0x033FAC 22:BF9C: C3        .byte $C3
- D - I - 0x033FAD 22:BF9D: 7D        .byte $7D
- D - I - 0x033FAE 22:BF9E: 2D        .byte $2D
- D - I - 0x033FAF 22:BF9F: 00        .byte $00
- D - I - 0x033FB0 22:BFA0: 04        .byte $04
- D - I - 0x033FB1 22:BFA1: 27        .byte $27
- D - I - 0x033FB2 22:BFA2: 2E        .byte $2E
- D - I - 0x033FB3 22:BFA3: AD        .byte $AD
- D - I - 0x033FB4 22:BFA4: 08        .byte $08
- D - I - 0x033FB5 22:BFA5: AA        .byte $AA
- D - I - 0x033FB6 22:BFA6: 0B        .byte $0B
- D - I - 0x033FB7 22:BFA7: 02        .byte $02
- D - I - 0x033FB8 22:BFA8: FC        .byte con_закончить

off_BFA9:
- D - I - 0x033FB9 22:BFA9: 8D        .byte $8D
- D - I - 0x033FBA 22:BFAA: 8B        .byte $8B
- D - I - 0x033FBB 22:BFAB: 62        .byte $62
- D - I - 0x033FBC 22:BFAC: 6E        .byte $6E
- D - I - 0x033FBD 22:BFAD: C3        .byte $C3
- D - I - 0x033FBE 22:BFAE: 7D        .byte $7D
- D - I - 0x033FBF 22:BFAF: FC        .byte con_закончить

off_BFB0:
- D - I - 0x033FC0 22:BFB0: 4C        .byte $4C
- D - I - 0x033FC1 22:BFB1: 71        .byte $71
- D - I - 0x033FC2 22:BFB2: 7D        .byte $7D
- D - I - 0x033FC3 22:BFB3: 54        .byte $54
- D - I - 0x033FC4 22:BFB4: FC        .byte con_закончить

off_BFB5:
- D - I - 0x033FC5 22:BFB5: F6        .byte con_F6
- D - I - 0x033FC6 22:BFB6: FC        .byte con_закончить

off_BFB7:
- D - I - 0x033FC7 22:BFB7: 34        .byte $34
- D - I - 0x033FC8 22:BFB8: 00        .byte $00
- D - I - 0x033FC9 22:BFB9: E9        .byte con_pass_reciever_name_temmate, $00
- D - I - 0x033FCB 22:BFBB: FC        .byte con_закончить

off_BFBC:
- D - I - 0x033FCC 22:BFBC: 35        .byte $35
- D - I - 0x033FCD 22:BFBD: 00        .byte $00
- D - I - 0x033FCE 22:BFBE: E9        .byte con_pass_reciever_name_temmate, $01
- D - I - 0x033FD0 22:BFC0: FC        .byte con_закончить

off_BFC1:
- D - I - 0x033FD1 22:BFC1: 36        .byte $36
- D - I - 0x033FD2 22:BFC2: 00        .byte $00
- D - I - 0x033FD3 22:BFC3: E9        .byte con_pass_reciever_name_temmate, $02
- D - I - 0x033FD5 22:BFC5: FC        .byte con_закончить

off_BFC6:
- D - I - 0x033FD6 22:BFC6: 37        .byte $37
- D - I - 0x033FD7 22:BFC7: 00        .byte $00
- D - I - 0x033FD8 22:BFC8: E9        .byte con_pass_reciever_name_temmate, $03
- D - I - 0x033FDA 22:BFCA: FC        .byte con_закончить

off_BFCB:
- D - I - 0x033FDB 22:BFCB: 38        .byte $38
- D - I - 0x033FDC 22:BFCC: 00        .byte $00
- D - I - 0x033FDD 22:BFCD: E9        .byte con_pass_reciever_name_temmate, $04
- D - I - 0x033FDF 22:BFCF: FC        .byte con_закончить

off_BFD0_надпись_PK:
- D - I - 0x033FE0 22:BFD0: 8D        .byte $8D
- D - I - 0x033FE1 22:BFD1: 8B        .byte $8B
- D - I - 0x033FE2 22:BFD2: 0E        .byte $0E
- D - I - 0x033FE3 22:BFD3: 2E        .byte $2E
- D - I - 0x033FE4 22:BFD4: FC        .byte con_закончить
